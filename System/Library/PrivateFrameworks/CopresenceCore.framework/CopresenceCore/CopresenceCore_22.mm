void ActivitySessionHostConnection._isAppProcess.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40) + *(*a1 + 48);
  if ((a2 & 1) == 0)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v3;
    *(v14 + 24) = v4;
    v15 = *(v5 + 8);

    v16 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
    v17 = NSClassFromString(v16);

    if (v17 || (v18 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v19 = NSClassFromString(v18), v18, v19))
    {
      v20 = (v2[5] + v2[6]);
      *v20 = thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool)partial apply;
      v20[1] = v14;
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    return;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v7 = *(v5 + 8);

  v8 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v9 = NSClassFromString(v8);

  if (!v9)
  {
    v10 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v11 = NSClassFromString(v10);

    if (!v11)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  v12 = (v2[5] + v2[6]);
  *v12 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool);
  v12[1] = v6;
  v13 = v2[4];

LABEL_8:
  swift_endAccess();

  free(v2);
}

char *ActivitySessionHostConnection.init(connection:queue:)(void *a1, void *a2)
{
  swift_unknownObjectWeakInit();
  v5 = (v2 + direct field offset for ActivitySessionHostConnection.__isAppProcess);
  *v5 = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool);
  v5[1] = 0;

  return specialized XPCHostConnection.init(connection:queue:)(a1, a2);
}

uint64_t ActivitySessionHostConnection.__ivar_destroyer()
{
  MEMORY[0x1B27121C0](v0 + direct field offset for ActivitySessionHostConnection.delegate);
  v1 = *(v0 + direct field offset for ActivitySessionHostConnection.__isAppProcess + 8);
}

id ActivitySessionHostConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc ActivitySessionHostConnection.__ivar_destroyer(uint64_t a1)
{
  MEMORY[0x1B27121C0](a1 + direct field offset for ActivitySessionHostConnection.delegate);
  v2 = *(a1 + direct field offset for ActivitySessionHostConnection.__isAppProcess + 8);
}

uint64_t ActivitySessionHostConnection.join(audioSessionID:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = *&v3[direct field offset for XPCHostConnection.queue];
  v17 = swift_allocObject();
  v17[2] = v3;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = partial apply for closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_32;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  v20 = v3;
  static DispatchQoS.unspecified.getter();
  v22[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v16, v11, v18);
  _Block_release(v18);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

void closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:)(void *a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_1AEB26000, v10, v11, "activitySessionHostConnection: %@ request to join", v12, 0xCu);
    outlined destroy of NSObject?(v13);
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (a2)
    {
      static UInt32._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    (*((*MEMORY[0x1E69E7D40] & *v16) + 0x430))(0x100000000, a3, a4);
  }

  else
  {
    lazy protocol witness table accessor for type Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:)();
    v17 = swift_allocError();
    *v18 = 1;
    swift_willThrow();
    v19 = v17;
    a3(0, v17);
  }
}

uint64_t ActivitySessionHostConnection.leave(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v2[direct field offset for XPCHostConnection.queue];
  v16 = swift_allocObject();
  v16[2] = v2;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = partial apply for closure #1 in ActivitySessionHostConnection.leave(completion:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_20_0;
  v17 = _Block_copy(aBlock);
  v18 = v2;

  static DispatchQoS.unspecified.getter();
  v20[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v14, v9, v17);
  _Block_release(v17);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

uint64_t closure #1 in ActivitySessionHostConnection.leave(completion:)(void *a1, uint64_t (*a2)(void))
{
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
    _os_log_impl(&dword_1AEB26000, v6, v7, "activitySessionHostConnection: %@ request to leave", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x438))();
  }

  return a2(0);
}

void closure #1 in ActivitySessionHostConnection.end()(void *a1)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_1AEB26000, v4, v5, "activitySessionHostConnection %@ request to end", v6, 0xCu);
    outlined destroy of NSObject?(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x440))();
  }
}

void closure #1 in ActivitySessionHostConnection.postEvent(event:)(void *a1, void *a2)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.host);
  v5 = a1;
  v6 = a2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v5;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v5;
    v10[1] = v6;
    v11 = v5;
    v12 = v6;
    _os_log_impl(&dword_1AEB26000, v7, v8, "activitySessionHostConnection: %@ postEvent: %@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  if (*&v6[OBJC_IVAR___CPActivitySessionEvent_type] == 99)
  {
    v13 = *&v5[direct field offset for XPCHostConnection.connection];
    v14 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
    if (v14 == 2)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v15 = static EntitlementTestingOverrides.default;
      swift_beginAccess();
      if ((*(v15 + 1) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if ((v14 & 1) == 0)
    {
LABEL_10:
      v16 = v5;
      v17 = v6;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412546;
        *(v20 + 4) = v16;
        *(v20 + 12) = 2112;
        *(v20 + 14) = v17;
        *v21 = v16;
        v21[1] = v17;
        v22 = v16;
        v23 = v17;
        _os_log_impl(&dword_1AEB26000, v18, v19, "activitySessionHostConnection: %@ is not entitled to post event %@", v20, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x1B27120C0](v21, -1, -1);
        MEMORY[0x1B27120C0](v20, -1, -1);
      }

      goto LABEL_15;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v18 = Strong;
  (*((*MEMORY[0x1E69E7D40] & Strong->isa) + 0x458))(v6);
LABEL_15:
}

uint64_t ActivitySessionHostConnection.logAttachmentEvent(report:reportEvent:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = *&v3[direct field offset for XPCHostConnection.queue];
  v17 = swift_allocObject();
  v17[2] = v3;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a1;
  aBlock[4] = partial apply for closure #1 in ActivitySessionHostConnection.logAttachmentEvent(report:reportEvent:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_38;
  v18 = _Block_copy(aBlock);
  v19 = v3;

  v20 = a1;
  static DispatchQoS.unspecified.getter();
  v22[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v16, v11, v18);
  _Block_release(v18);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

void closure #1 in ActivitySessionHostConnection.logAttachmentEvent(report:reportEvent:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v15 = v9;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v18);
    _os_log_impl(&dword_1AEB26000, v10, v11, "activitySessionHostConnection: %@ logAttachmentEvent: %s", v12, 0x16u);
    outlined destroy of NSObject?(v13);
    MEMORY[0x1B27120C0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1B27120C0](v14, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x450))(a4, a2, a3);
  }
}

Swift::Void __swiftcall ActivitySessionHostConnection.requestEncryptionKeys(for:)(Swift::OpaquePointer_optional a1)
{
  rawValue = a1.value._rawValue;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v1[direct field offset for XPCHostConnection.queue];
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = rawValue;
  aBlock[4] = partial apply for closure #1 in ActivitySessionHostConnection.requestEncryptionKeys(for:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_44;
  v15 = _Block_copy(aBlock);

  v16 = v1;
  static DispatchQoS.unspecified.getter();
  v17[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v12, v7, v15);
  _Block_release(v15);
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

void closure #1 in ActivitySessionHostConnection.requestEncryptionKeys(for:)(void *a1, uint64_t a2)
{
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
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2080;
    v11 = v5;
    if (a2)
    {
      v12 = MEMORY[0x1B2710180](a2, MEMORY[0x1E69E76D8]);
      v14 = v13;
    }

    else
    {
      v14 = 0xE500000000000000;
      v12 = 0x3E6C696E3CLL;
    }

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v18);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1AEB26000, v6, v7, "activitySessionHostConnection: %@ requestEncryptionKeys participants: %s", v8, 0x16u);
    outlined destroy of NSObject?(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x460))(a2);
  }
}

uint64_t ActivitySessionHostConnection.requestParticipantTranslations(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = *&v3[direct field offset for XPCHostConnection.queue];
  v17 = swift_allocObject();
  v17[2] = v3;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = partial apply for closure #1 in ActivitySessionHostConnection.requestParticipantTranslations(for:completion:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_50_1;
  v18 = _Block_copy(aBlock);
  v19 = v3;

  static DispatchQoS.unspecified.getter();
  v21[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v16, v11, v18);
  _Block_release(v18);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

void closure #1 in ActivitySessionHostConnection.requestParticipantTranslations(for:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void), void *a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  if (one-time initialization token for host == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Log.host);
    v11 = a1;

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v80 = a3;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      aBlock = v78;
      *v14 = 138412546;
      *(v14 + 4) = v11;
      *v15 = v11;
      *(v14 + 12) = 2080;
      type metadata accessor for ParticipantTranslationRequest();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type ParticipantTranslationRequest and conformance NSObject, type metadata accessor for ParticipantTranslationRequest);
      v16 = a4;
      v17 = v11;
      v18 = Set.description.getter();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &aBlock);

      *(v14 + 14) = v20;
      a4 = v16;
      _os_log_impl(&dword_1AEB26000, v12, v13, "[Translation] activitySessionHostConnection: %@ translationRequests: %s", v14, 0x16u);
      outlined destroy of NSObject?(v15);
      MEMORY[0x1B27120C0](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x1B27120C0](v78, -1, -1);
      v21 = v14;
      a3 = v80;
      MEMORY[0x1B27120C0](v21, -1, -1);
    }

    v22 = [objc_allocWithZone(CPFeatureFlags) init];
    v23 = [v22 gameCenterFastSyncTransport];

    if (v23)
    {
      v24 = *&v11[direct field offset for XPCHostConnection.connection];
      v23 = specialized EntitlementValueProviding.isEntitledToUseGameCenter.getter();
    }

    v25 = *&v11[direct field offset for XPCHostConnection.connection];
    v26 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
    if (v26 == 2)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v27 = static EntitlementTestingOverrides.default;
      swift_beginAccess();
      v26 = *(v27 + 1);
    }

    v28 = v26 | v23;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = v11;
      v31 = Strong;
      v32 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x3D8))(Strong);
      v34 = v33;

      if (v32)
      {
        ObjectType = swift_getObjectType();
        v36 = (*(v34 + 40))(ObjectType, v34);
        swift_unknownObjectRelease();
        LODWORD(v32) = [v36 nearbyFaceTimeEnabled];
        swift_unknownObjectRelease();
      }

      v11 = v30;
      if (((v28 | v32) & 1) == 0)
      {
LABEL_18:
        v48 = v11;
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *v51 = 138412290;
          *(v51 + 4) = v48;
          *v52 = v48;
          v53 = v48;
          v54 = "[Translation] activitySessionHostConnection: Skipping translation. %@ is not allowed to request translated participants.";
          goto LABEL_22;
        }

LABEL_23:

        if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
        {
          _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC14CopresenceCore30ParticipantTranslationResponseC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          v57 = v72;
        }

        else
        {
          v57 = MEMORY[0x1E69E7CD0];
        }

        a3(v57);

        return;
      }
    }

    else
    {
      LOBYTE(v32) = 0;
      if ((v28 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v75 = v32;
    v37 = swift_unknownObjectWeakLoadStrong();
    if (!v37)
    {
      v55 = v11;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v51 = 138412290;
        *(v51 + 4) = v55;
        *v52 = v55;
        v56 = v55;
        v54 = "[Translation] activitySessionHostConnection: %@ No session exists";
LABEL_22:
        _os_log_impl(&dword_1AEB26000, v49, v50, v54, v51, 0xCu);
        outlined destroy of NSObject?(v52);
        MEMORY[0x1B27120C0](v52, -1, -1);
        MEMORY[0x1B27120C0](v51, -1, -1);
      }

      goto LABEL_23;
    }

    v38 = v37;
    v73 = v11;
    v79 = dispatch_group_create();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyShy14CopresenceCore30ParticipantTranslationResponseCGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyShy14CopresenceCore30ParticipantTranslationResponseCGSo16os_unfair_lock_sVGMR);
    v39 = swift_allocObject();
    *(v39 + 24) = 0;
    *(v39 + 16) = MEMORY[0x1E69E7CD0];
    v40 = swift_allocObject();
    v40[2] = a2;
    v40[3] = v39;
    v40[4] = a3;
    v40[5] = a4;
    v90 = partial apply for closure #1 in closure #1 in ActivitySessionHostConnection.requestParticipantTranslations(for:completion:);
    v91 = v40;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v89 = &block_descriptor_172;
    _Block_copy(&aBlock);
    v85 = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);

    v77 = v39;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v41 = type metadata accessor for DispatchWorkItem();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    DispatchWorkItem.init(flags:block:)();

    v81 = v38;
    v76 = (*((*MEMORY[0x1E69E7D40] & *v38) + 0x480))(v44);
    if ((a2 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for ParticipantTranslationRequest();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type ParticipantTranslationRequest and conformance NSObject, type metadata accessor for ParticipantTranslationRequest);
      Set.Iterator.init(_cocoa:)();
      a2 = aBlock;
      v45 = v87;
      a1 = v88;
      v46 = v89;
      v47 = v90;
    }

    else
    {
      v58 = -1 << *(a2 + 32);
      v45 = a2 + 56;
      a1 = ~v58;
      v59 = -v58;
      v60 = v59 < 64 ? ~(-1 << v59) : -1;
      v47 = v60 & *(a2 + 56);

      v46 = 0;
    }

    v61 = (a1 + 64) >> 6;
    v74 = v28 & 1;
    v82 = a2;
    if (a2 < 0)
    {
      break;
    }

    while (1)
    {
      v65 = v46;
      v66 = v47;
      v63 = v46;
      if (!v47)
      {
        break;
      }

LABEL_38:
      v64 = (v66 - 1) & v66;
      v62 = *(*(a2 + 48) + ((v63 << 9) | (8 * __clz(__rbit64(v66)))));
      if (!v62)
      {
        goto LABEL_41;
      }

LABEL_39:
      dispatch_group_enter(v79);
      v83 = *&v62[OBJC_IVAR___CPParticipantTranslationRequest_aliasedIdentifier];
      v67 = swift_allocObject();
      v84 = v64;
      a4 = v81;
      *(v67 + 16) = v79;
      *(v67 + 24) = v75;
      *(v67 + 32) = v62;
      *(v67 + 40) = v76;
      *(v67 + 48) = v74;
      *(v67 + 56) = v77;
      a3 = *((*MEMORY[0x1E69E7D40] & *v81) + 0x478);

      v68 = v79;
      v69 = v62;
      v70 = v76;
      a1 = v81;
      (a3)(v83, 0, partial apply for closure #1 in closure #2 in closure #1 in ActivitySessionHostConnection.requestParticipantTranslations(for:completion:), v67);

      a2 = v82;

      v46 = v63;
      v47 = v84;
      if (v82 < 0)
      {
        goto LABEL_31;
      }
    }

    while (1)
    {
      v63 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      if (v63 >= v61)
      {
        goto LABEL_41;
      }

      v66 = *(v45 + 8 * v63);
      ++v65;
      if (v66)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
  }

LABEL_31:
  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for ParticipantTranslationRequest();
    swift_dynamicCast();
    v62 = v85;
    v63 = v46;
    v64 = v47;
    if (v85)
    {
      goto LABEL_39;
    }
  }

LABEL_41:
  outlined consume of Set<String>.Iterator._Variant();
  v71 = *&v73[direct field offset for XPCHostConnection.queue];
  OS_dispatch_group.notify(queue:work:)();
}

uint64_t closure #1 in closure #1 in ActivitySessionHostConnection.requestParticipantTranslations(for:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.host);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    type metadata accessor for ParticipantTranslationRequest();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type ParticipantTranslationRequest and conformance NSObject, type metadata accessor for ParticipantTranslationRequest);
    v10 = Set.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1AEB26000, v6, v7, "[Translation] Retrieved all translations for %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  os_unfair_lock_lock((a2 + 24));
  v13 = *(a2 + 16);

  os_unfair_lock_unlock((a2 + 24));
  a3(v13);
}

void closure #1 in closure #2 in closure #1 in ActivitySessionHostConnection.requestParticipantTranslations(for:completion:)(void *a1, NSObject *a2, char a3, uint64_t a4, void *a5, char a6, os_unfair_lock_s *a7)
{
  if ((a3 & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((*(a4 + OBJC_IVAR___CPParticipantTranslationRequest_isLocalParticipant) & 1) == 0)
  {
    if (a5)
    {
      v10 = a6;
      v11 = a1;
      v12 = a4;
      v13 = a5;
      if ([v13 type] == 1 && (v14 = objc_msgSend(v11, sel_cluster)) != 0)
      {
        v15 = v14;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipantCluster, 0x1E69D8B98);
        v9 = static NSObject.== infix(_:_:)();

        v13 = v15;
      }

      else
      {
        v9 = 0;
      }

      a4 = v12;
      a1 = v11;
      a6 = v10;
      if (v11)
      {
        goto LABEL_11;
      }

LABEL_4:
      if ((a6 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

LABEL_10:
    v9 = 0;
    if (a1)
    {
      goto LABEL_11;
    }

    goto LABEL_4;
  }

  v9 = 1;
  if (!a1)
  {
    goto LABEL_4;
  }

LABEL_11:
  if ((a6 & 1) == 0)
  {
LABEL_16:
    v33 = *(a4 + OBJC_IVAR___CPParticipantTranslationRequest_aliasedIdentifier);
    v34 = type metadata accessor for ParticipantTranslationResponse();
    v35 = objc_allocWithZone(v34);
    *&v35[OBJC_IVAR___CPParticipantTranslation_aliasedIdentifier] = v33;
    v36 = &v35[OBJC_IVAR___CPParticipantTranslation_unaliasedIdentifier];
    *v36 = 0;
    v36[8] = 1;
    v37 = &v35[OBJC_IVAR___CPParticipantTranslation_handle];
    *v37 = 0;
    v37[1] = 0;
    v38 = &v35[OBJC_IVAR___CPParticipantTranslation_stableDeviceIdentifier];
    *v38 = 0;
    v38[1] = 0;
    v35[OBJC_IVAR___CPParticipantTranslation_isNearby] = v9 & 1;
    v48.receiver = v35;
    v48.super_class = v34;
    v32 = objc_msgSendSuper2(&v48, sel_init);
    goto LABEL_18;
  }

  if (*(a4 + OBJC_IVAR___CPParticipantTranslationRequest_isSaltVerified) != 1)
  {
LABEL_17:
    v39 = *(a4 + OBJC_IVAR___CPParticipantTranslationRequest_aliasedIdentifier);
    v40 = type metadata accessor for ParticipantTranslationResponse();
    v41 = objc_allocWithZone(v40);
    *&v41[OBJC_IVAR___CPParticipantTranslation_aliasedIdentifier] = v39;
    v42 = &v41[OBJC_IVAR___CPParticipantTranslation_unaliasedIdentifier];
    *v42 = 0;
    v42[8] = 1;
    v43 = &v41[OBJC_IVAR___CPParticipantTranslation_handle];
    *v43 = 0;
    v43[1] = 0;
    v44 = &v41[OBJC_IVAR___CPParticipantTranslation_stableDeviceIdentifier];
    *v44 = 0;
    v44[1] = 0;
    v41[OBJC_IVAR___CPParticipantTranslation_isNearby] = v9 & 1;
    v47.receiver = v41;
    v47.super_class = v40;
    v32 = objc_msgSendSuper2(&v47, sel_init);
    goto LABEL_18;
  }

  v16 = a4;
  v17 = a1;
  v18 = [v17 handle];
  v19 = [v18 normalizedValue];

  if (!v19)
  {
    v20 = [v17 handle];
    v19 = [v20 value];
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = *(v16 + OBJC_IVAR___CPParticipantTranslationRequest_aliasedIdentifier);
  v25 = [v17 identifier];
  v26 = type metadata accessor for ParticipantTranslationResponse();
  v27 = objc_allocWithZone(v26);
  *&v27[OBJC_IVAR___CPParticipantTranslation_aliasedIdentifier] = v24;
  v28 = &v27[OBJC_IVAR___CPParticipantTranslation_unaliasedIdentifier];
  *v28 = v25;
  v28[8] = 0;
  v29 = &v27[OBJC_IVAR___CPParticipantTranslation_handle];
  *v29 = v21;
  v29[1] = v23;
  v30 = &v27[OBJC_IVAR___CPParticipantTranslation_stableDeviceIdentifier];
  *v30 = 0;
  v30[1] = 0;
  v27[OBJC_IVAR___CPParticipantTranslation_isNearby] = v9 & 1;
  v46.receiver = v27;
  v46.super_class = v26;
  v31 = objc_msgSendSuper2(&v46, sel_init);

  v32 = v31;
LABEL_18:
  v45 = MEMORY[0x1EEE9AC00](v32);
  os_unfair_lock_lock(a7 + 6);
  partial apply for closure #1 in closure #1 in closure #2 in closure #1 in ActivitySessionHostConnection.requestParticipantTranslations(for:completion:)();
  os_unfair_lock_unlock(a7 + 6);

  dispatch_group_leave(a2);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSSet) -> ()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ParticipantTranslationResponse();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type ParticipantTranslationResponse and conformance NSObject, type metadata accessor for ParticipantTranslationResponse);
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t ActivitySessionHostConnection.postEvent(event:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v13 = *(v23 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v4[direct field offset for XPCHostConnection.queue];
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a4;
  v18 = _Block_copy(aBlock);
  v19 = v4;
  v20 = a1;
  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v16, v12, v18);
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v23);
}

void closure #1 in ActivitySessionHostConnection.updateActivity(activity:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.host);
  v10 = a1;
  v11 = a2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412546;
    *(v14 + 4) = v10;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v11;
    *v15 = v10;
    v15[1] = v11;
    v16 = v10;
    v17 = v11;
    _os_log_impl(&dword_1AEB26000, v12, v13, "activitySessionHostConnection: %@ updateActivity %@", v14, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  v18 = [objc_opt_self() sharedInstance];
  if (!v18)
  {
    __break(1u);
    goto LABEL_26;
  }

  v19 = v18;
  v20 = [v18 currentServerTimeDate];

  if (!v20)
  {
LABEL_26:
    __break(1u);
    return;
  }

  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v8, v4);
  [v11 setTimestamp_];

  v22 = *&v10[direct field offset for XPCHostConnection.connection];
  v23 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v23 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v24 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    if ((*(v24 + 1) & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    v25 = [v11 bundleIdentifier];
    if (v25)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (v23)
  {
    goto LABEL_13;
  }

LABEL_14:
  v26 = NSXPCConnection.bundleIdentifier.getter();
  if (v27)
  {
    v25 = MEMORY[0x1B270FF70](v26);
  }

  else
  {
    v25 = 0;
  }

  [v11 setBundleIdentifier_];
LABEL_18:

  v28 = [v11 sanitizedCopy];
  if (v28)
  {
    v29 = v28;
    [v28 setTrustedFromHandle_];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v31 = Strong;
      ActivitySession.updateActivity(_:)(v29);
    }
  }

  else
  {
    v32 = v11;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v42[0] = v36;
      *v35 = 136315138;
      v42[3] = v32;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
      v37 = v32;
      v38 = String.init<A>(reflecting:)();
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v42);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_1AEB26000, v33, v34, "Dropping activity session update due to invalid activity: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x1B27120C0](v36, -1, -1);
      MEMORY[0x1B27120C0](v35, -1, -1);
    }
  }
}

void closure #1 in ActivitySessionHostConnection.updateParticipantsInfo(for:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x420))(a2);
  }
}

uint64_t ActivitySessionHostConnection.presentSessionDismissalAlert(allowingCancellation:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = *&v3[direct field offset for XPCHostConnection.queue];
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  aBlock[4] = partial apply for closure #1 in ActivitySessionHostConnection.presentSessionDismissalAlert(allowingCancellation:completion:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_68_1;
  v18 = _Block_copy(aBlock);
  v19 = v3;

  static DispatchQoS.unspecified.getter();
  v21[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v16, v11, v18);
  _Block_release(v18);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

void closure #1 in ActivitySessionHostConnection.presentSessionDismissalAlert(allowingCancellation:completion:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.host);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_1AEB26000, v10, v11, "activitySessionHostConnection: %@ got request to present session dismissal alert", v12, 0xCu);
    outlined destroy of NSObject?(v13);
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x488))(*&v9[direct field offset for XPCHostConnection.bundleIdentifier], *&v9[direct field offset for XPCHostConnection.bundleIdentifier + 8], a2 & 1, a3, a4);
  }
}

uint64_t ActivitySessionHostConnection.end()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = *&v3[direct field offset for XPCHostConnection.queue];
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a3;
  v17 = _Block_copy(aBlock);
  v18 = v3;
  static DispatchQoS.unspecified.getter();
  v20[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v15, v10, v17);
  _Block_release(v17);
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
}

void closure #1 in ActivitySessionHostConnection.requestForegroundPresentation()(void *a1)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.host);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_1AEB26000, v4, v5, "activitySessionHostConnection: %@ got request to present in foreground", v6, 0xCu);
    outlined destroy of NSObject?(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x4F8))();
  }
}

uint64_t ActivitySessionHostConnection.updateParticipantsInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *&v4[direct field offset for XPCHostConnection.queue];
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a4;
  v18 = _Block_copy(aBlock);
  v19 = v4;

  static DispatchQoS.unspecified.getter();
  v23 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v16, v12, v18);
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v22);
}

void closure #1 in ActivitySessionHostConnection.setGroupActivityAssociations(_:)(void *a1, Swift::OpaquePointer a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.host);
  v10 = a1;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v42 = v8;
    v15 = v14;
    v16 = swift_slowAlloc();
    v43 = v5;
    v41 = v16;
    v45 = v16;
    *v13 = 138412546;
    *(v13 + 4) = v10;
    *v15 = v10;
    *(v13 + 12) = 2080;
    v17 = type metadata accessor for GroupActivityAssociation();
    v18 = v10;
    v19 = MEMORY[0x1B2710180](a2._rawValue, v17);
    rawValue = a2._rawValue;
    v22 = v9;
    v23 = v4;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v45);

    *(v13 + 14) = v24;
    v4 = v23;
    v9 = v22;
    a2._rawValue = rawValue;
    _os_log_impl(&dword_1AEB26000, v11, v12, "activitySessionHostConnection: %@ setGroupActivityAssociations: %s", v13, 0x16u);
    outlined destroy of NSObject?(v15);
    v25 = v15;
    v8 = v42;
    MEMORY[0x1B27120C0](v25, -1, -1);
    v26 = v41;
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    v5 = v43;
    MEMORY[0x1B27120C0](v26, -1, -1);
    MEMORY[0x1B27120C0](v13, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v29 = *(Strong + OBJC_IVAR___CPActivitySession_sceneAssociationCoordinator);
    if (v29)
    {
      v30 = v29;
      ActivitySession.SceneAssociationCoordinator.setGroupActivityAssociations(_:)(a2);
    }

    else
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v9, static Log.default);
      v31 = v28;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v44 = v35;
        *v34 = 136315138;
        (*(v5 + 16))(v8, v31 + OBJC_IVAR___CPActivitySession_id, v4);
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v38 = v37;
        (*(v5 + 8))(v8, v4);
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v44);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_1AEB26000, v32, v33, "Attempted to set group activity associations on activity %s that does not have a scene association coordinator", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        MEMORY[0x1B27120C0](v35, -1, -1);
        MEMORY[0x1B27120C0](v34, -1, -1);
      }
    }
  }
}

uint64_t @objc ActivitySessionHostConnection.updateParticipantsInfo(for:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t))
{
  a4(0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a1;
  a5(v7);
}

uint64_t ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a4;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v12 - 8);
  v13 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v26 = *(v28 - 8);
  v16 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *&v6[direct field offset for XPCHostConnection.queue];
  v19 = swift_allocObject();
  v19[2] = v6;
  v19[3] = a1;
  v19[4] = a5;
  v19[5] = a6;
  v19[6] = a2;
  v19[7] = a3;
  v20 = v25;
  v19[8] = v25;
  aBlock[4] = partial apply for closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_86;
  v21 = _Block_copy(aBlock);
  v22 = v6;
  v23 = a1;

  outlined copy of Data._Representation(a3, v20);
  static DispatchQoS.unspecified.getter();
  v30 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v18, v15, v21);
  _Block_release(v21);
  (*(v29 + 8))(v15, v12);
  (*(v26 + 8))(v18, v28);
}

void closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:)(void *a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v55 = a5;
  v13 = type metadata accessor for URL();
  isa = v13[-1].isa;
  v58 = v13;
  v14 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = __swift_project_value_buffer(v17, static Log.host);
  v19 = a1;
  v56 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v53 = a7;
    v54 = a6;
    v23 = a3;
    v24 = v22;
    v25 = a2;
    v26 = a4;
    v27 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v19;
    *v27 = v19;
    v28 = v19;
    _os_log_impl(&dword_1AEB26000, v20, v21, "activitySessionHostConnection: %@ got request to send resource", v24, 0xCu);
    outlined destroy of NSObject?(v27);
    v29 = v27;
    a4 = v26;
    a2 = v25;
    MEMORY[0x1B27120C0](v29, -1, -1);
    v30 = v24;
    a3 = v23;
    a7 = v53;
    a6 = v54;
    MEMORY[0x1B27120C0](v30, -1, -1);
  }

  v31 = [objc_allocWithZone(CPFeatureFlags) init];
  v32 = [v31 sharePlayInFaceTimeCanvasEnabled];

  if (v32)
  {
    v33 = *&v19[direct field offset for XPCHostConnection.connection];
    v34 = [a2 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v35);
    v37 = v36;
    (*(isa + 1))(v16, v58);
    LODWORD(v33) = [v33 cp:v37 clientSandboxCanAccessFileURL:?];

    if (v33)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v39 = Strong;
        ActivitySession.sendResource(atURL:to:metadata:completion:)(a2, v55, a6, a7, a3, a4);
      }
    }

    else
    {
      v43 = v19;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = a3;
        v48 = swift_slowAlloc();
        *v46 = 138412290;
        *(v46 + 4) = v43;
        *v48 = v43;
        v49 = v43;
        _os_log_impl(&dword_1AEB26000, v44, v45, "activitySessionHostConnection: %@ client attempted to send a resource it does not have access to", v46, 0xCu);
        outlined destroy of NSObject?(v48);
        v50 = v48;
        a3 = v47;
        MEMORY[0x1B27120C0](v50, -1, -1);
        MEMORY[0x1B27120C0](v46, -1, -1);
      }

      lazy protocol witness table accessor for type Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:)();
      v51 = swift_allocError();
      a3();
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v17, static Log.default);
    v58 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1AEB26000, v58, v40, "Not allowing resource send due to FeatureFlag being disabled.", v41, 2u);
      MEMORY[0x1B27120C0](v41, -1, -1);
    }

    v42 = v58;
  }
}

uint64_t ActivitySessionHostConnection.requestEndpoint(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v4[direct field offset for XPCHostConnection.queue];
  v18 = swift_allocObject();
  v18[2] = v4;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = a4;
  aBlock[4] = partial apply for closure #1 in ActivitySessionHostConnection.requestEndpoint(with:completion:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_92_0;
  v19 = _Block_copy(aBlock);
  v20 = v4;

  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v17, v13, v19);
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v23);
}

void closure #1 in ActivitySessionHostConnection.requestEndpoint(with:completion:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);
  v11 = a1;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v14 = 138412546;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2080;
    v17 = v11;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v20);
    _os_log_impl(&dword_1AEB26000, v12, v13, "activitySessionHostConnection: %@ got request for endpoint with identifier %s", v14, 0x16u);
    outlined destroy of NSObject?(v15);
    MEMORY[0x1B27120C0](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    ActivitySession.requestEndpoint(with:completion:)(a2, a3, a4, a5);
  }
}

Swift::Void __swiftcall ActivitySessionHostConnection.updateCapabilities(capabilities:)(Swift::Int capabilities)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v1[direct field offset for XPCHostConnection.queue];
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = capabilities;
  aBlock[4] = partial apply for closure #1 in ActivitySessionHostConnection.updateCapabilities(capabilities:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_98_0;
  v15 = _Block_copy(aBlock);
  v16 = v1;
  static DispatchQoS.unspecified.getter();
  v17[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v12, v7, v15);
  _Block_release(v15);
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

void closure #1 in ActivitySessionHostConnection.updateCapabilities(capabilities:)(void *a1, uint64_t a2)
{
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
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    v10 = v5;
    _os_log_impl(&dword_1AEB26000, v6, v7, "activitySessionHostConnection: %@ got request to update capabilities to: %ld", v8, 0x16u);
    outlined destroy of NSObject?(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = a2;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x2C8))(&v13);
  }
}

void closure #1 in ActivitySessionHostConnection.addAnalyticsReport(_:)(void *a1, Swift::OpaquePointer a2)
{
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
    v10 = swift_slowAlloc();
    v22 = v10;
    *v8 = 138412546;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2080;
    v11 = v5;
    v12 = Dictionary.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v22);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_1AEB26000, v6, v7, "activitySessionHostConnection: %@ got request to add report dictionary: %s", v8, 0x16u);
    outlined destroy of NSObject?(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  v15 = *&v5[direct field offset for XPCHostConnection.connection];
  v16 = _s14CopresenceCore25EntitlementValueProvidingPAAE5value_03forC0qd__Sgqd__m_AA0C0OtlFSo15NSXPCConnectionC_SbTt0B5();
  if (v16 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v17 = static EntitlementTestingOverrides.default;
    swift_beginAccess();
    if ((*(v17 + 1) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v16 & 1) == 0)
  {
LABEL_9:
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1AEB26000, v18, v19, "Missing entitlement to call addAnalyticsReport(_:) API", v20, 2u);
      MEMORY[0x1B27120C0](v20, -1, -1);
    }

    goto LABEL_14;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v18 = Strong;
  ActivitySession.addAnalyticsReport(_:)(a2);
LABEL_14:
}

void specialized ActivitySessionHostConnection._isAppProcess.setter(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = (v2 + direct field offset for ActivitySessionHostConnection.__isAppProcess);
  swift_beginAccess();
  v7 = v6[1];

  v8 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v9 = NSClassFromString(v8);

  if (v9 || (v10 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v11 = NSClassFromString(v10), v10, v11))
  {
    *v6 = thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool)partial apply;
    v6[1] = v5;
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t objectdestroy_40Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t type metadata accessor for ActivitySessionHostConnection()
{
  result = type metadata singleton initialization cache for ActivitySessionHostConnection;
  if (!type metadata singleton initialization cache for ActivitySessionHostConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:)()
{
  result = lazy protocol witness table cache variable for type Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:);
  if (!lazy protocol witness table cache variable for type Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:));
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:);
  if (!lazy protocol witness table cache variable for type Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.sendResource(atURL:to:metadata:completion:));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:)()
{
  result = lazy protocol witness table cache variable for type Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:);
  if (!lazy protocol witness table cache variable for type Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:));
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:);
  if (!lazy protocol witness table cache variable for type Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:))
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:) and conformance Errors #1 in closure #1 in ActivitySessionHostConnection.join(audioSessionID:completion:));
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1]);
  *a2 = result & 1;
  return result;
}

uint64_t DG_Datagram.sequenceNumber.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for DG_SequenceNumber(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for DG_Datagram(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0 + *(v10 + 28), v4, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v11 = *(v6 + 48);
  if (v11(v4, 1, v5) == 1)
  {
    *v9 = 0;
    v9[1] = 0;
    v12 = v9 + *(v5 + 24);
    UnknownStorage.init()();
    if (v11(v4, 1, v5) != 1)
    {
      outlined destroy of NSObject?(v4, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v4, v9, type metadata accessor for DG_SequenceNumber);
  }

  v13 = v9[1];
  _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v9, type metadata accessor for DG_SequenceNumber);
  return v13;
}

uint64_t DG_Datagram.senderParticipantID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for DG_SequenceNumber(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for DG_Datagram(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0 + *(v10 + 28), v4, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v11 = *(v6 + 48);
  if (v11(v4, 1, v5) == 1)
  {
    *v9 = 0;
    v9[1] = 0;
    v12 = v9 + *(v5 + 24);
    UnknownStorage.init()();
    if (v11(v4, 1, v5) != 1)
    {
      outlined destroy of NSObject?(v4, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v4, v9, type metadata accessor for DG_SequenceNumber);
  }

  v13 = *v9;
  _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v9, type metadata accessor for DG_SequenceNumber);
  return v13;
}

uint64_t DG_Datagram.encryptionIDBytes.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for DG_EncryptionID(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DG_Datagram(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0 + *(v10 + 32), v4, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v11 = *(v6 + 48);
  if (v11(v4, 1, v5) == 1)
  {
    *v9 = xmmword_1AEE0C200;
    v12 = &v9[*(v5 + 20)];
    UnknownStorage.init()();
    if (v11(v4, 1, v5) != 1)
    {
      outlined destroy of NSObject?(v4, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v4, v9, type metadata accessor for DG_EncryptionID);
  }

  v13 = *v9;
  outlined copy of Data._Representation(*v9, *(v9 + 1));
  _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v9, type metadata accessor for DG_EncryptionID);
  return v13;
}

uint64_t protocol witness for AnyRawIngressDatagram.sequenceNumber.getter in conformance DG_Datagram(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for DG_SequenceNumber(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(a1 + 28), v6, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v12 = *(v8 + 48);
  if (v12(v6, 1, v7) == 1)
  {
    *v11 = 0;
    v11[1] = 0;
    v13 = v11 + *(v7 + 24);
    UnknownStorage.init()();
    if (v12(v6, 1, v7) != 1)
    {
      outlined destroy of NSObject?(v6, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v6, v11, type metadata accessor for DG_SequenceNumber);
  }

  v14 = v11[1];
  _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v11, type metadata accessor for DG_SequenceNumber);
  return v14;
}

uint64_t protocol witness for AnyRawIngressDatagram.senderParticipantID.getter in conformance DG_Datagram(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for DG_SequenceNumber(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(a1 + 28), v6, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v12 = *(v8 + 48);
  if (v12(v6, 1, v7) == 1)
  {
    *v11 = 0;
    v11[1] = 0;
    v13 = v11 + *(v7 + 24);
    UnknownStorage.init()();
    if (v12(v6, 1, v7) != 1)
    {
      outlined destroy of NSObject?(v6, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v6, v11, type metadata accessor for DG_SequenceNumber);
  }

  v14 = *v11;
  _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v11, type metadata accessor for DG_SequenceNumber);
  return v14;
}

uint64_t protocol witness for AnyRawIngressDatagram.encryptionIDBytes.getter in conformance DG_Datagram(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for DG_EncryptionID(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(a1 + 32), v6, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v12 = *(v8 + 48);
  if (v12(v6, 1, v7) == 1)
  {
    *v11 = xmmword_1AEE0C200;
    v13 = &v11[*(v7 + 20)];
    UnknownStorage.init()();
    if (v12(v6, 1, v7) != 1)
    {
      outlined destroy of NSObject?(v6, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v6, v11, type metadata accessor for DG_EncryptionID);
  }

  v14 = *v11;
  outlined copy of Data._Representation(*v11, *(v11 + 1));
  _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v11, type metadata accessor for DG_EncryptionID);
  return v14;
}

void *DatagramClient.ChannelDefinition.Multicast.unsafeMutableAddressor()
{
  if (one-time initialization token for Multicast != -1)
  {
    swift_once();
  }

  return &static DatagramClient.ChannelDefinition.Multicast;
}

uint64_t DatagramClient.unreliableChannel(topic:input:inputBufferMaxQueueSize:traceId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a2;
  v59 = a4;
  v52 = a3;
  v57 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v56 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore0D17RawEgressDatagram_ps5NeverOGAH0I7MessageVyAH03DG_J0VGGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore0D17RawEgressDatagram_ps5NeverOGAH0I7MessageVyAH03DG_J0VGGMR);
  v54 = *(v7 - 8);
  v8 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore11DG_DatagramVAH0I12ChannelErrorOGAH0d10RawIngressI0_pGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore11DG_DatagramVAH0I12ChannelErrorOGAH0d10RawIngressI0_pGMR);
  v50 = *(v10 - 8);
  v51 = v10;
  v11 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v44 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v44 - v19;
  UUID.init()();
  if (one-time initialization token for unreliableMessenger != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Log.unreliableMessenger);
  v22 = *(v14 + 16);
  v55 = v20;
  v22(v18, v20, v13);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v48 = v13;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v61 = v27;
    *v26 = 136315138;
    v28 = UUID.uuidString.getter();
    v30 = v29;
    v31 = *(v14 + 8);
    v45 = v7;
    v46 = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v47 = v31;
    v31(v18, v13);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v61);
    v7 = v45;

    *(v26 + 4) = v32;
    _os_log_impl(&dword_1AEB26000, v23, v24, "Creating unreliable-channel stream traceId=%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x1B27120C0](v27, -1, -1);
    MEMORY[0x1B27120C0](v26, -1, -1);
  }

  else
  {

    v33 = *(v14 + 8);
    v46 = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v47 = v33;
    v33(v18, v13);
  }

  v61 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore0B17RawEgressDatagram_ps5NeverOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore0B17RawEgressDatagram_ps5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore13EgressMessageVyAA11DG_DatagramVGMd, &_s14CopresenceCore13EgressMessageVyAA11DG_DatagramVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<AnyRawEgressDatagram, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore0B17RawEgressDatagram_ps5NeverOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore0B17RawEgressDatagram_ps5NeverOGMR);
  v34 = v53;
  Publisher.map<A>(_:)();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<AnyRawEgressDatagram, Never>, EgressMessage<DG_Datagram>> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore0D17RawEgressDatagram_ps5NeverOGAH0I7MessageVyAH03DG_J0VGGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore0D17RawEgressDatagram_ps5NeverOGAH0I7MessageVyAH03DG_J0VGGMR);
  Publisher.eraseToAnyPublisher()();
  (*(v54 + 8))(v34, v7);
  v35 = v56;
  v36 = v48;
  (*(v14 + 56))(v56, 1, 1, v48);
  v37 = *(*v49 + 224);
  type metadata accessor for DG_Datagram(0);
  v43 = lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram();
  v38 = v37(v43, v57);

  outlined destroy of NSObject?(v35, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v61 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore11DG_DatagramVAD0G12ChannelErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore11DG_DatagramVAD0G12ChannelErrorOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore21AnyRawIngressDatagram_pMd, &_s14CopresenceCore21AnyRawIngressDatagram_pMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<DG_Datagram, DatagramChannelError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore11DG_DatagramVAD0G12ChannelErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore11DG_DatagramVAD0G12ChannelErrorOGMR);
  v39 = v60;
  Publisher.map<A>(_:)();

  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<DG_Datagram, DatagramChannelError>, AnyRawIngressDatagram> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore11DG_DatagramVAH0I12ChannelErrorOGAH0d10RawIngressI0_pGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVy14CopresenceCore11DG_DatagramVAH0I12ChannelErrorOGAH0d10RawIngressI0_pGMR);
  v40 = v51;
  v41 = Publisher.eraseToAnyPublisher()();
  (*(v50 + 8))(v39, v40);
  v47(v55, v36);
  return v41;
}

uint64_t closure #1 in DatagramClient.unreliableChannel(topic:input:inputBufferMaxQueueSize:traceId:)(uint64_t a1)
{
  outlined init with copy of UserNotificationCenter(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore20AnyRawEgressDatagram_pMd, &_s14CopresenceCore20AnyRawEgressDatagram_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore13EgressMessageVyAA11DG_DatagramVGMd, &_s14CopresenceCore13EgressMessageVyAA11DG_DatagramVGMR);
  return swift_dynamicCast();
}

uint64_t closure #2 in DatagramClient.unreliableChannel(topic:input:inputBufferMaxQueueSize:traceId:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for DG_Datagram(0);
  a2[4] = &protocol witness table for DG_Datagram;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);

  return outlined init with copy of DG_Datagram(a1, boxed_opaque_existential_1);
}

uint64_t _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s14CopresenceCore17DG_SequenceNumberVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram()
{
  result = lazy protocol witness table cache variable for type DG_Datagram and conformance DG_Datagram;
  if (!lazy protocol witness table cache variable for type DG_Datagram and conformance DG_Datagram)
  {
    type metadata accessor for DG_Datagram(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DG_Datagram and conformance DG_Datagram);
  }

  return result;
}

uint64_t outlined init with copy of DG_Datagram(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DG_Datagram(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t >> prefix<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in >> prefix<A>(_:), v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v2, v5);
  if (v5[1])
  {
    return v5[0];
  }

  else
  {
    return 7104878;
  }
}

uint64_t Log.sceneAssociation.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t one-time initialization function for attachmentLedgerService()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.attachmentLedgerService);
  __swift_project_value_buffer(v0, static Log.attachmentLedgerService);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for unreliableMessenger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.unreliableMessenger);
  __swift_project_value_buffer(v0, static Log.unreliableMessenger);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for runtimeIssues()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.runtimeIssues);
  __swift_project_value_buffer(v0, static Log.runtimeIssues);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for suspensionController()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.suspensionController);
  __swift_project_value_buffer(v0, static Log.suspensionController);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for attachmentLedgerTopic()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.attachmentLedgerTopic);
  __swift_project_value_buffer(v0, static Log.attachmentLedgerTopic);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for attachment()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.attachment);
  __swift_project_value_buffer(v0, static Log.attachment);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for applicationManager()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.applicationManager);
  __swift_project_value_buffer(v0, static Log.applicationManager);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for sceneAssociation()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.sceneAssociation);
  __swift_project_value_buffer(v0, static Log.sceneAssociation);
  return Logger.init(subsystem:category:)();
}

uint64_t static Log.default.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t closure #1 in >> prefix<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = String.init<A>(reflecting:)();
  *a3 = result;
  a3[1] = v8;
  return result;
}

CopresenceCore::Entitlement_optional __swiftcall Entitlement.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Entitlement.init(rawValue:), v3);

  v7 = 16;
  if (v5 < 0x10)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Entitlement(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = Entitlement.rawValue.getter();
  v4 = v3;
  if (v2 == Entitlement.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

unint64_t lazy protocol witness table accessor for type Entitlement and conformance Entitlement()
{
  result = lazy protocol witness table cache variable for type Entitlement and conformance Entitlement;
  if (!lazy protocol witness table cache variable for type Entitlement and conformance Entitlement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entitlement and conformance Entitlement);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Entitlement()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Entitlement.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Entitlement()
{
  v2 = *v0;
  Entitlement.rawValue.getter();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Entitlement()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Entitlement.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Entitlement@<X0>(unint64_t *a1@<X8>)
{
  result = Entitlement.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static PresenceSessionInterface.identity.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static PresenceSessionInterface.identity;
  return result;
}

uint64_t static PresenceSessionInterface.identity.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static PresenceSessionInterface.identity = v1;
  return result;
}

id closure #1 in variable initialization expression of static PresenceSessionInterface.hostObjectInterface()
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

  [v0 setClasses:v5 forSelector:sel_updateMembers_completion_ argumentIndex:0 ofReply:0];

  return v0;
}

uint64_t (*static PresenceSessionInterface.hostObjectInterface.modify())()
{
  if (one-time initialization token for hostObjectInterface != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return ActivitySession.audioSessionID.modify;
}

id closure #1 in variable initialization expression of static PresenceSessionInterface.clientObjectInterface()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B10;
  *(inited + 32) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(inited + 40) = type metadata accessor for PresenceSessionParticipant();
  specialized _arrayForceCast<A, B>(_:)(inited);
  swift_setDeallocating();
  v2 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithArray_];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v5 = Set._bridgeToObjectiveC()().super.isa;

  [v0 setClasses:v5 forSelector:sel_updatePresentDevicesWithDevices_ argumentIndex:0 ofReply:0];

  return v0;
}

uint64_t (*static PresenceSessionInterface.clientObjectInterface.modify())()
{
  if (one-time initialization token for clientObjectInterface != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return ActivitySession.terminatingHandle.modify;
}

uint64_t protocol witness for static XPCInterface.identity.getter in conformance PresenceSessionInterface@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static PresenceSessionInterface.identity;
  return result;
}

void PresenceSessionHostConnection.delegate.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*PresenceSessionHostConnection.delegate.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = direct field offset for PresenceSessionHostConnection.delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return ActivitySessionHostConnection.delegate.modify;
}

Swift::Void __swiftcall PresenceSessionHostConnection.handleHostConnectionInvalidated()()
{
  swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v20 - v3;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.host);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v21);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    v15 = v6;
    _os_log_impl(&dword_1AEB26000, v7, v8, "%s handleHostConnectionInvalidated: %@", v9, 0x16u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1B27120C0](v11, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v17;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in PresenceHostSession.resetSession(), v19);
  }
}

char *PresenceSessionHostConnection.init(connection:queue:)(void *a1, void *a2)
{
  swift_unknownObjectWeakInit();
  v5 = (v2 + direct field offset for PresenceSessionHostConnection.abcReporter);
  v6 = type metadata accessor for ABCReporter();
  v7 = swift_allocObject();
  v7[2] = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  v7[3] = 0x636E795374736146;
  v7[4] = 0xE800000000000000;
  v7[5] = 0x65636E6573657250;
  v7[6] = 0xEF6E6F6973736553;
  v5[3] = v6;
  v5[4] = &protocol witness table for ABCReporter;
  *v5 = v7;

  return specialized XPCHostConnection.init(connection:queue:)(a1, a2);
}

id PresenceSessionHostConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int PresenceSessionHostConnection.Errors.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](a1 & 1);
  return Hasher._finalize()();
}

void closure #1 in PresenceSessionHostConnection.join(completion:)(void *a1, void (*a2)(void *), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - v8;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_1AEB26000, v12, v13, "PresenceSessionHostConnection: %@ request to join", v14, 0xCu);
    outlined destroy of NSObject?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = type metadata accessor for TaskPriority();
    v20 = *(*(v19 - 8) + 56);
    v20(v9, 1, 1, v19);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v18;
    v21[5] = a2;
    v21[6] = a3;
    v30 = v18;

    v22 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #1 in PresenceSessionHostConnection.join(completion:), v21);
    v23 = direct field offset for PresenceSessionHostConnection.abcReporter;
    v24 = *&v11[direct field offset for XPCHostConnection.bundleIdentifier];
    v25 = *&v11[direct field offset for XPCHostConnection.bundleIdentifier + 8];
    v20(v9, 1, 1, v19);
    outlined init with copy of UserNotificationCenter(&v11[v23], v31);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v22;
    v26[5] = 0xD000000000000011;
    v26[6] = 0x80000001AEE37310;
    v26[7] = v24;
    v26[8] = v25;
    outlined init with take of ContiguousBytes(v31, (v26 + 9));

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v9, &closure #1 in Task<>.reportFailure(on:function:process:)specialized partial apply, v26);

    outlined destroy of NSObject?(v9, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    lazy protocol witness table accessor for type PresenceSessionHostConnection.Errors and conformance PresenceSessionHostConnection.Errors();
    v27 = swift_allocError();
    *v28 = 0;
    swift_willThrow();
    v29 = v27;
    a2(v27);
  }
}

uint64_t closure #1 in closure #1 in PresenceSessionHostConnection.join(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = closure #1 in closure #1 in PresenceSessionHostConnection.join(completion:);

  return PresenceHostSession.join()();
}

uint64_t closure #1 in closure #1 in PresenceSessionHostConnection.join(completion:)()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in PresenceSessionHostConnection.join(completion:);
  }

  else
  {
    v3 = closure #1 in closure #1 in PresenceSessionHostConnection.join(completion:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 24);
  (*(v0 + 16))(0);
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v1;
  v2(v1);

  swift_willThrow();
  v5 = v0[1];
  v6 = v0[5];

  return v5();
}

uint64_t PresenceSessionHostConnection.join(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[0] = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v5[direct field offset for XPCHostConnection.queue];
  v18 = swift_allocObject();
  v18[2] = v5;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v22[0];
  v19 = _Block_copy(aBlock);
  v20 = v5;

  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v17, v13, v19);
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v23);
}

void closure #1 in PresenceSessionHostConnection.leave(completion:)(void *a1, void (*a2)(void *), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - v8;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_1AEB26000, v12, v13, "PresenceSessionHostConnection: %@ request to leave", v14, 0xCu);
    outlined destroy of NSObject?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = type metadata accessor for TaskPriority();
    v20 = *(*(v19 - 8) + 56);
    v20(v9, 1, 1, v19);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v18;
    v21[5] = a2;
    v21[6] = a3;
    v30 = v18;

    v22 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #1 in PresenceSessionHostConnection.leave(completion:), v21);
    v23 = direct field offset for PresenceSessionHostConnection.abcReporter;
    v24 = *&v11[direct field offset for XPCHostConnection.bundleIdentifier];
    v25 = *&v11[direct field offset for XPCHostConnection.bundleIdentifier + 8];
    v20(v9, 1, 1, v19);
    outlined init with copy of UserNotificationCenter(&v11[v23], v31);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v22;
    v26[5] = 0xD000000000000012;
    v26[6] = 0x80000001AEE372F0;
    v26[7] = v24;
    v26[8] = v25;
    outlined init with take of ContiguousBytes(v31, (v26 + 9));

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v9, &closure #1 in Task<>.reportFailure(on:function:process:)specialized partial apply, v26);

    outlined destroy of NSObject?(v9, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    lazy protocol witness table accessor for type PresenceSessionHostConnection.Errors and conformance PresenceSessionHostConnection.Errors();
    v27 = swift_allocError();
    *v28 = 0;
    swift_willThrow();
    v29 = v27;
    a2(v27);
  }
}

uint64_t closure #1 in closure #1 in PresenceSessionHostConnection.leave(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = closure #1 in closure #1 in PresenceSessionHostConnection.leave(completion:);

  return PresenceHostSession.leave()();
}

uint64_t closure #1 in closure #1 in PresenceSessionHostConnection.leave(completion:)()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in PresenceSessionHostConnection.leave(completion:);
  }

  else
  {
    v3 = closure #1 in closure #1 in PresenceSessionHostConnection.leave(completion:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t @objc PresenceSessionHostConnection.join(completion:)(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t PresenceSessionHostConnection.updateMembers(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = *&v3[direct field offset for XPCHostConnection.queue];
  v17 = swift_allocObject();
  v17[2] = v3;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = partial apply for closure #1 in PresenceSessionHostConnection.updateMembers(_:completion:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_16_2;
  v18 = _Block_copy(aBlock);
  v19 = v3;

  static DispatchQoS.unspecified.getter();
  v21[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v16, v11, v18);
  _Block_release(v18);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

void closure #1 in PresenceSessionHostConnection.updateMembers(_:completion:)(void *a1, uint64_t a2, void (*a3)(void), id a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v40 - v10;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.host);
  v13 = a1;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v41 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v42 = a4;
    *&v43[0] = v19;
    v20 = v19;
    *v16 = 138412546;
    *(v16 + 4) = v13;
    *v18 = v13;
    *(v16 + 12) = 2080;
    type metadata accessor for TUHandle();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, type metadata accessor for TUHandle);
    v21 = v13;
    v22 = Set.description.getter();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v43);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_1AEB26000, v14, v15, "PresenceSessionHostConnection: %@ request to update members to: %s", v16, 0x16u);
    outlined destroy of NSObject?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v25 = v18;
    a3 = v41;
    MEMORY[0x1B27120C0](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v26 = v20;
    a4 = v42;
    MEMORY[0x1B27120C0](v26, -1, -1);
    MEMORY[0x1B27120C0](v16, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v29 = type metadata accessor for TaskPriority();
    v30 = *(*(v29 - 8) + 56);
    v30(v11, 1, 1, v29);
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = a2;
    v31[5] = a3;
    v31[6] = a4;
    v31[7] = v28;

    v42 = v28;
    v32 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in closure #1 in PresenceSessionHostConnection.updateMembers(_:completion:), v31);
    v33 = direct field offset for PresenceSessionHostConnection.abcReporter;
    v34 = *&v13[direct field offset for XPCHostConnection.bundleIdentifier];
    v35 = *&v13[direct field offset for XPCHostConnection.bundleIdentifier + 8];
    v30(v11, 1, 1, v29);
    outlined init with copy of UserNotificationCenter(&v13[v33], v43);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v32;
    v36[5] = 0xD00000000000001CLL;
    v36[6] = 0x80000001AEE372D0;
    v36[7] = v34;
    v36[8] = v35;
    outlined init with take of ContiguousBytes(v43, (v36 + 9));

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for specialized closure #1 in Task<>.reportFailure(on:function:process:), v36);

    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    lazy protocol witness table accessor for type PresenceSessionHostConnection.Errors and conformance PresenceSessionHostConnection.Errors();
    v37 = swift_allocError();
    *v38 = 0;
    swift_willThrow();
    v39 = v37;
    a3(v37);
  }
}

uint64_t closure #1 in closure #1 in PresenceSessionHostConnection.updateMembers(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in PresenceSessionHostConnection.updateMembers(_:completion:), 0, 0);
}

uint64_t closure #1 in closure #1 in PresenceSessionHostConnection.updateMembers(_:completion:)()
{
  v30 = v0;
  v1 = specialized Sequence.compactMap<A>(_:)(v0[2]);
  v2 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14CopresenceCore17AddressableMemberC_SayAFGTt0g5Tf4g_n(v1);
  v0[6] = v2;

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  v4 = v0[2];
  if ((v4 & 0xC000000000000001) != 0)
  {
    if (v4 < 0)
    {
      v5 = v0[2];
    }

    if (v3 == __CocoaSet.count.getter())
    {
      goto LABEL_8;
    }
  }

  else if (v3 == *(v4 + 16))
  {
LABEL_8:
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = closure #1 in closure #1 in PresenceSessionHostConnection.updateMembers(_:completion:);
    v7 = v0[5];

    return PresenceHostSession.updateMembers(_:)(v2);
  }

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v9 = v0[2];
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.host);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[2];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29[0] = v15;
    *v14 = 136315394;
    type metadata accessor for AddressableMember();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(&lazy protocol witness table cache variable for type AddressableMember and conformance NSObject, type metadata accessor for AddressableMember);
    v16 = Set.description.getter();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v29);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    type metadata accessor for TUHandle();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, type metadata accessor for TUHandle);
    v20 = Set.description.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v29);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_1AEB26000, v11, v12, "Lost members in conversion. convertedMembers %s vs members: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v15, -1, -1);
    MEMORY[0x1B27120C0](v14, -1, -1);
  }

  else
  {
  }

  v24 = v0[3];
  v23 = v0[4];
  lazy protocol witness table accessor for type PresenceSessionHostConnection.Errors and conformance PresenceSessionHostConnection.Errors();
  v25 = swift_allocError();
  *v26 = 1;
  v24();

  swift_allocError();
  *v27 = 1;
  swift_willThrow();
  v28 = v0[1];

  return v28();
}

{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = closure #1 in closure #1 in PresenceSessionHostConnection.updateMembers(_:completion:);
  }

  else
  {
    v4 = closure #1 in closure #1 in PresenceSessionHostConnection.updateMembers(_:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = *(v0 + 32);
  (*(v0 + 24))(0);
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v1;
  v3(v1);

  v5 = v0[8];
  swift_willThrow();
  v6 = v0[1];

  return v6();
}

uint64_t objectdestroy_3Tm_1()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t lazy protocol witness table accessor for type PresenceSessionHostConnection.Errors and conformance PresenceSessionHostConnection.Errors()
{
  result = lazy protocol witness table cache variable for type PresenceSessionHostConnection.Errors and conformance PresenceSessionHostConnection.Errors;
  if (!lazy protocol witness table cache variable for type PresenceSessionHostConnection.Errors and conformance PresenceSessionHostConnection.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceSessionHostConnection.Errors and conformance PresenceSessionHostConnection.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresenceSessionHostConnection.Errors and conformance PresenceSessionHostConnection.Errors;
  if (!lazy protocol witness table cache variable for type PresenceSessionHostConnection.Errors and conformance PresenceSessionHostConnection.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceSessionHostConnection.Errors and conformance PresenceSessionHostConnection.Errors);
  }

  return result;
}

uint64_t type metadata accessor for PresenceSessionHostConnection()
{
  result = type metadata singleton initialization cache for PresenceSessionHostConnection;
  if (!type metadata singleton initialization cache for PresenceSessionHostConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in PresenceSessionHostConnection.updateMembers(_:completion:)(uint64_t a1)
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

  return closure #1 in closure #1 in PresenceSessionHostConnection.updateMembers(_:completion:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in closure #1 in PresenceSessionHostConnection.leave(completion:)(uint64_t a1)
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

  return closure #1 in closure #1 in PresenceSessionHostConnection.leave(completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_50Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t partial apply for closure #1 in closure #1 in PresenceSessionHostConnection.join(completion:)(uint64_t a1)
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

  return closure #1 in closure #1 in PresenceSessionHostConnection.join(completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t PeoplePickerConfiguration.shareSheetSessionID.getter()
{
  v1 = (v0 + OBJC_IVAR___CPPeoplePickerConfiguration_shareSheetSessionID);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t PeoplePickerConfiguration.shareSheetSessionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___CPPeoplePickerConfiguration_shareSheetSessionID);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id PeoplePickerConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PeoplePickerConfiguration.init()()
{
  v1 = &v0[OBJC_IVAR___CPPeoplePickerConfiguration_shareSheetSessionID];
  v2 = type metadata accessor for PeoplePickerConfiguration();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t PeoplePickerConfiguration.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v13);
  if (!v14)
  {
    outlined destroy of Any?(v13);
    goto LABEL_11;
  }

  type metadata accessor for PeoplePickerConfiguration();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v10 = 0;
    return v10 & 1;
  }

  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))();
  v5 = v4;
  v6 = (*((*v2 & *v12) + 0x58))();
  v8 = v7;
  if (!v5)
  {

    if (!v8)
    {
LABEL_17:
      v10 = 1;
      return v10 & 1;
    }

    goto LABEL_11;
  }

  if (!v7)
  {

    goto LABEL_11;
  }

  if (v3 == v6 && v5 == v7)
  {

    goto LABEL_17;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v10 & 1;
}

id PeoplePickerConfiguration.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized PeoplePickerConfiguration.init(coder:)();

  return v4;
}

id PeoplePickerConfiguration.init(coder:)(void *a1)
{
  v2 = specialized PeoplePickerConfiguration.init(coder:)();

  return v2;
}

Swift::Void __swiftcall PeoplePickerConfiguration.encode(with:)(NSCoder with)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))();
  if (v4)
  {
    v5 = MEMORY[0x1B270FF70](v3);
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x1B270FF70](0xD000000000000013, 0x80000001AEE37330);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();
}

id PeoplePickerConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeoplePickerConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized PeoplePickerConfiguration.init(coder:)()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR___CPPeoplePickerConfiguration_shareSheetSessionID];
  type metadata accessor for NSString();
  *v2 = 0;
  v2[1] = 0;
  v3 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  swift_beginAccess();
  v8 = v2[1];
  *v2 = v5;
  v2[1] = v7;

  v10.receiver = v1;
  v10.super_class = type metadata accessor for PeoplePickerConfiguration();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t PluginClient.Configuration.init(endpoint:connectionMaxAttempts:connectionRetryInterval:serverCertValidationEnabled:serverCertHostname:serverCertLeafMarkerOID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  outlined init with copy of PluginEndpoint(a1, a8, type metadata accessor for PluginEndpoint);
  v18 = type metadata accessor for PluginClient.Configuration(0);
  v19 = v18;
  *(a8 + v18[5]) = a2;
  *(a8 + v18[6]) = a9;
  *(a8 + v18[7]) = a3;
  v20 = 0x80000001AEE36C20;
  if (a5)
  {
    v21 = a4;
  }

  else
  {
    v21 = 0xD000000000000015;
  }

  if (a5)
  {
    v20 = a5;
  }

  v22 = (a8 + v18[8]);
  *v22 = v21;
  v22[1] = v20;
  if (!a7)
  {
    a6 = 0xD00000000000001BLL;
    a7 = 0x80000001AEE36C40;
  }

  result = outlined destroy of PluginEndpoint(a1, type metadata accessor for PluginEndpoint);
  v24 = (a8 + v19[9]);
  *v24 = a6;
  v24[1] = a7;
  return result;
}

uint64_t PluginClient.__allocating_init(config:queue:reporter:reporterTag:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  PluginClient.init(config:queue:reporter:reporterTag:)(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t PluginClient.Configuration.serverCertHostname.getter()
{
  v1 = (v0 + *(type metadata accessor for PluginClient.Configuration(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PluginClient.Configuration.serverCertLeafMarkerOID.getter()
{
  v1 = (v0 + *(type metadata accessor for PluginClient.Configuration(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t key path setter for PluginClient.config : PluginClient(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for PluginClient.Configuration(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PluginEndpoint(a1, v7, type metadata accessor for PluginClient.Configuration);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC14CopresenceCore12PluginClient_config;
  swift_beginAccess();
  outlined assign with take of PluginClient.Configuration(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t PluginClient.config.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore12PluginClient_config;
  swift_beginAccess();
  return outlined init with copy of PluginEndpoint(v1 + v3, a1, type metadata accessor for PluginClient.Configuration);
}

uint64_t PluginClient.reporterTag.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporterTag);
  v2 = *(v0 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporterTag + 8);

  return v1;
}

unint64_t PluginClient.connectionState.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore12PluginClient_connectionState;
  swift_beginAccess();
  v2 = *(v0 + v1);
  outlined copy of ActivitySession.State(v2);
  return v2;
}

unint64_t PluginClient.connectionState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore12PluginClient_connectionState;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return outlined consume of ActivitySession.State(v4);
}

uint64_t PluginClient.cancellables.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore12PluginClient_cancellables;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t PluginClient.cancellables.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore12PluginClient_cancellables;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t PluginClient.pendingDataTransferReport.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore12PluginClient_pendingDataTransferReport;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t PluginClient.pendingDataTransferReport.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore12PluginClient_pendingDataTransferReport;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t PluginClient.localParticipantID.getter()
{
  v1 = type metadata accessor for PluginEndpoint();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PluginClient.Configuration(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 136))(v7);
  outlined init with copy of PluginEndpoint(v9, v4, type metadata accessor for PluginEndpoint);
  outlined destroy of PluginEndpoint(v9, type metadata accessor for PluginClient.Configuration);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = v4[1];
    v11 = v4[5];
    outlined consume of Data?(v4[3], v4[4]);
  }

  else
  {
    outlined destroy of PluginEndpoint(v4, type metadata accessor for PluginEndpoint);
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, log);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v0;
      v22 = v16;
      *v15 = 136315138;
      type metadata accessor for PluginClient(0);
      lazy protocol witness table accessor for type PluginClient and conformance PluginClient(&lazy protocol witness table cache variable for type PluginClient and conformance PluginClient, type metadata accessor for PluginClient);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1AEB26000, v13, v14, "%s Requested localParticipantID on a non-quickRelay endpoint.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1B27120C0](v16, -1, -1);
      MEMORY[0x1B27120C0](v15, -1, -1);
    }

    return 0;
  }

  return v11;
}

uint64_t PluginClient.init(config:queue:reporter:reporterTag:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v73 = a5;
  v71 = a4;
  v69 = type metadata accessor for PluginClient.Configuration(0);
  v10 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v68 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v67 = *(v12 - 8);
  v13 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v65 = *(v16 - 8);
  v66 = v16;
  v17 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for OS_dispatch_queue.Attributes();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v22 = type metadata accessor for DispatchQoS();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  *(v5 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_cancellables) = MEMORY[0x1E69E7CD0];
  *(v5 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_pendingDataTransferReport) = 0;
  v72 = a1;
  outlined init with copy of PluginEndpoint(a1, v5 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_config, type metadata accessor for PluginClient.Configuration);
  if (a2)
  {
    v24 = a2;
  }

  else
  {
    v64[2] = type metadata accessor for OS_dispatch_queue();
    static DispatchQoS.unspecified.getter();
    v75 = MEMORY[0x1E69E7CC0];
    v25 = lazy protocol witness table accessor for type PluginClient and conformance PluginClient(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
    v70 = a3;
    v64[1] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    a2 = 0;
    a3 = v70;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v65 + 104))(v19, *MEMORY[0x1E69E8090], v66);
    v24 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  }

  *(v5 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_queue) = v24;
  *(v5 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporter) = a3;
  v26 = v73;
  if (v73)
  {

    v27 = a2;
    v28 = v71;
    v29 = v26;
  }

  else
  {

    v30 = a2;
    UUID.init()();
    v28 = UUID.uuidString.getter();
    v31 = v15;
    v29 = v32;
    (*(v67 + 8))(v31, v12);
  }

  v33 = (v6 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporterTag);
  *v33 = v28;
  v33[1] = v29;
  *(v6 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_connectionState) = 0x8000000000000000;
  v34 = one-time initialization token for log;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, log);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v70 = a3;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v76 = v39;
    *v38 = 136315650;
    v75 = v6;
    type metadata accessor for PluginClient(0);
    lazy protocol witness table accessor for type PluginClient and conformance PluginClient(&lazy protocol witness table cache variable for type PluginClient and conformance PluginClient, type metadata accessor for PluginClient);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v76);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    v43 = OBJC_IVAR____TtC14CopresenceCore12PluginClient_config;
    swift_beginAccess();
    outlined init with copy of PluginEndpoint(v6 + v43, v68, type metadata accessor for PluginClient.Configuration);
    v44 = String.init<A>(describing:)();
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v76);

    *(v38 + 14) = v46;
    v47 = v73;
    *(v38 + 22) = 2080;
    if (v47)
    {
      v74[0] = v71;
      v74[1] = v47;

      v48 = String.init<A>(reflecting:)();
      v50 = v49;
    }

    else
    {
      v50 = 0xE300000000000000;
      v48 = 7104878;
    }

    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v76);

    *(v38 + 24) = v62;
    _os_log_impl(&dword_1AEB26000, v36, v37, "%s init, config=%s tag=%s", v38, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v39, -1, -1);
    MEMORY[0x1B27120C0](v38, -1, -1);

    v26 = v73;
    if (!v70)
    {
      goto LABEL_20;
    }
  }

  else
  {

    if (!a3)
    {
LABEL_20:

      goto LABEL_21;
    }
  }

  if (v26)
  {

LABEL_21:

    goto LABEL_22;
  }

  v51 = a2;

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v74[0] = v55;
    *v54 = 136315394;
    v76 = v6;
    type metadata accessor for PluginClient(0);
    lazy protocol witness table accessor for type PluginClient and conformance PluginClient(&lazy protocol witness table cache variable for type PluginClient and conformance PluginClient, type metadata accessor for PluginClient);
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v74);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2080;
    v59 = *(v6 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporterTag);
    v60 = *(v6 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporterTag + 8);

    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v74);

    *(v54 + 14) = v61;
    _os_log_impl(&dword_1AEB26000, v52, v53, "%s initialized with a reporter, but no tag. Assigned random tag=%s", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v55, -1, -1);
    MEMORY[0x1B27120C0](v54, -1, -1);
  }

LABEL_22:
  outlined destroy of PluginEndpoint(v72, type metadata accessor for PluginClient.Configuration);
  return v6;
}

uint64_t outlined init with copy of PluginEndpoint(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PluginEndpoint(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall PluginClient.updateVirtualParticipant(_:localParticipantID:)(Swift::UInt64 _, Swift::UInt64 localParticipantID)
{
  swift_beginAccess();
  PluginEndpoint.updateVirtualParticipant(_:localParticipantID:)(_, localParticipantID);
  swift_endAccess();
}

uint64_t PluginClient.deinit()
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, log);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    type metadata accessor for PluginClient(0);
    lazy protocol witness table accessor for type PluginClient and conformance PluginClient(&lazy protocol witness table cache variable for type PluginClient and conformance PluginClient, type metadata accessor for PluginClient);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1AEB26000, v2, v3, "%s deinit", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1B27120C0](v5, -1, -1);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }

  (*(*v0 + 288))(v9, v10);
  outlined destroy of PluginEndpoint(v0 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_config, type metadata accessor for PluginClient.Configuration);

  v11 = *(v0 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporter);

  v12 = *(v0 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporterTag + 8);

  outlined consume of ActivitySession.State(*(v0 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_connectionState));
  v13 = *(v0 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_cancellables);

  v14 = *(v0 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_pendingDataTransferReport);

  return v0;
}

uint64_t PluginClient.__deallocating_deinit()
{
  PluginClient.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t PluginClient.connectWithRetries(attempt:promise:)(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v25 - v11;
  v13 = (*(*v3 + 160))(v10);
  if (v13 == 0x8000000000000008)
  {
    v14 = type metadata accessor for NWError();
    (*(*(v14 - 8) + 56))(v12, 3, 3, v14);
    swift_storeEnumTagMultiPayload();
    a2(v12);
    return outlined destroy of NSObject?(v12, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  }

  else
  {
    outlined consume of ActivitySession.State(v13);
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
      *v19 = 134217984;
      *(v19 + 4) = a1;
      _os_log_impl(&dword_1AEB26000, v17, v18, "Starting connection attempt #%ld", v19, 0xCu);
      MEMORY[0x1B27120C0](v19, -1, -1);
    }

    v25[0] = PluginClient.createQuicConnection()();
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = a1;
    v21[3] = v20;
    v21[4] = a2;
    v21[5] = a3;
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = a1;
    v23[4] = a2;
    v23[5] = a3;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Future<NWConnection, PluginConnectError> and conformance Future<A, B>, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
    Publisher.sink(receiveCompletion:receiveValue:)();

    v24 = (*(*v4 + 200))(v25);
    AnyCancellable.store(in:)();

    return v24(v25, 0);
  }
}

uint64_t closure #1 in PluginClient.connectWithRetries(attempt:promise:)(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), void (*a4)(uint64_t), uint64_t a5)
{
  v108 = a4;
  v109 = a5;
  v111 = a1;
  v112 = a3;
  v110 = a2;
  v101 = type metadata accessor for DispatchWorkItemFlags();
  v100 = *(v101 - 8);
  v5 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v98 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for DispatchQoS();
  v97 = *(v99 - 8);
  v7 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v96 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for DispatchTime();
  v95 = *(v103 - 8);
  v9 = *(v95 + 64);
  v10 = MEMORY[0x1EEE9AC00](v103);
  v94 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v102 = &v89 - v12;
  v107 = type metadata accessor for PluginClient.Configuration(0);
  v13 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  v15 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v105 = &v89 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore18PluginConnectErrorOSgMd, &_s14CopresenceCore18PluginConnectErrorOSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v89 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore18PluginConnectErrorOGMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v89 - v26;
  v28 = type metadata accessor for PluginConnectError();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v93 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v89 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v89 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v89 - v39;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v111, v27, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore18PluginConnectErrorOGMR);
  v41 = *(v29 + 48);
  if (v41(v27, 1, v28) == 1)
  {
    return outlined destroy of NSObject?(v27, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore18PluginConnectErrorOGMR);
  }

  v111 = v23;
  v90 = v21;
  outlined init with take of PluginConnectError(v27, v40);
  v43 = v40;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  v45 = __swift_project_value_buffer(v44, log);
  outlined init with copy of PluginEndpoint(v40, v38, type metadata accessor for PluginConnectError);

  v89 = v45;
  v46 = Logger.logObject.getter();
  LODWORD(v45) = static os_log_type_t.error.getter();

  v91 = v45;
  v47 = v45;
  v48 = v46;
  if (os_log_type_enabled(v46, v47))
  {
    v92 = v40;
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v49 = 134218498;
    v51 = v111;
    *(v49 + 4) = v110;
    *(v49 + 12) = 2080;
    outlined init with copy of PluginEndpoint(v38, v51, type metadata accessor for PluginConnectError);
    (*(v29 + 56))(v51, 0, 1, v28);
    v52 = v51;
    v53 = v90;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v52, v90, &_s14CopresenceCore18PluginConnectErrorOSgMd, &_s14CopresenceCore18PluginConnectErrorOSgMR);
    if (v41(v53, 1, v28) == 1)
    {
      v54 = 0xE300000000000000;
      v55 = 7104878;
    }

    else
    {
      outlined init with take of PluginConnectError(v53, v35);
      outlined init with copy of PluginEndpoint(v35, v93, type metadata accessor for PluginConnectError);
      v55 = String.init<A>(reflecting:)();
      v54 = v58;
      outlined destroy of PluginEndpoint(v35, type metadata accessor for PluginConnectError);
    }

    outlined destroy of NSObject?(v111, &_s14CopresenceCore18PluginConnectErrorOSgMd, &_s14CopresenceCore18PluginConnectErrorOSgMR);
    outlined destroy of PluginEndpoint(v38, type metadata accessor for PluginConnectError);
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, aBlock);

    *(v49 + 14) = v59;
    *(v49 + 22) = 2080;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v57 = v106;
    if (Strong)
    {
      aBlock[6] = Strong;
      type metadata accessor for PluginClient(0);
      v61 = String.init<A>(reflecting:)();
      v63 = v62;
      v56 = v107;
    }

    else
    {
      v63 = 0xE300000000000000;
      v56 = v107;
      v61 = 7104878;
    }

    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, aBlock);

    *(v49 + 24) = v64;
    _os_log_impl(&dword_1AEB26000, v48, v91, "Connection attempt #%ld failed: %s on client: %s", v49, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v50, -1, -1);
    MEMORY[0x1B27120C0](v49, -1, -1);

    v43 = v92;
  }

  else
  {

    outlined destroy of PluginEndpoint(v38, type metadata accessor for PluginConnectError);
    v56 = v107;
    v57 = v106;
  }

  swift_beginAccess();
  v65 = swift_weakLoadStrong();
  if (v65)
  {
    v66 = v65;
    v67 = *(*v65 + 136);
    v67();
    v68 = *(v57 + *(v56 + 20));
    outlined destroy of PluginEndpoint(v57, type metadata accessor for PluginClient.Configuration);
    if (v68 == v110)
    {
      v69 = v105;
      outlined init with copy of PluginEndpoint(v43, v105, type metadata accessor for PluginConnectError);
      swift_storeEnumTagMultiPayload();
      v108(v69);
      outlined destroy of NSObject?(v69, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
      (*(*v66 + 168))(0x8000000000000008);

      return outlined destroy of PluginEndpoint(v43, type metadata accessor for PluginConnectError);
    }

    else
    {
      v92 = v43;

      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 134217984;
        v67();
        v75 = *(v57 + *(v56 + 24));
        outlined destroy of PluginEndpoint(v57, type metadata accessor for PluginClient.Configuration);
        *(v74 + 4) = v75;
        _os_log_impl(&dword_1AEB26000, v72, v73, "Will retry connecting in %f seconds", v74, 0xCu);
        MEMORY[0x1B27120C0](v74, -1, -1);
      }

      v76 = v94;
      v77 = static DispatchTime.now()();
      (v67)(v77);
      v78 = *(v57 + *(v56 + 24));
      outlined destroy of PluginEndpoint(v57, type metadata accessor for PluginClient.Configuration);
      + infix(_:_:)();
      v112 = *(v95 + 8);
      v112(v76, v103);
      v111 = *(v66 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_queue);
      v79 = swift_allocObject();
      swift_weakInit();
      v80 = swift_allocObject();
      v81 = v108;
      v82 = v109;
      v80[2] = v79;
      v80[3] = v81;
      v83 = v110;
      v80[4] = v82;
      v80[5] = v83;
      aBlock[4] = partial apply for closure #1 in closure #1 in PluginClient.connectWithRetries(attempt:promise:);
      aBlock[5] = v80;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_47_0;
      v84 = _Block_copy(aBlock);

      v85 = v96;
      static DispatchQoS.unspecified.getter();
      v113 = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type PluginClient and conformance PluginClient(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v86 = v98;
      v87 = v101;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v88 = v102;
      MEMORY[0x1B2710670](v102, v85, v86, v84);
      _Block_release(v84);
      (*(v100 + 8))(v86, v87);
      (*(v97 + 8))(v85, v99);
      v112(v88, v103);
      outlined destroy of PluginEndpoint(v92, type metadata accessor for PluginConnectError);
    }
  }

  else
  {
    v70 = type metadata accessor for NWError();
    v71 = v105;
    (*(*(v70 - 8) + 56))(v105, 3, 3, v70);
    swift_storeEnumTagMultiPayload();
    v108(v71);
    outlined destroy of NSObject?(v71, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
    return outlined destroy of PluginEndpoint(v43, type metadata accessor for PluginConnectError);
  }
}

uint64_t closure #1 in closure #1 in PluginClient.connectWithRetries(attempt:promise:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    result = a4 + 1;
    if (__OFADD__(a4, 1))
    {
      __break(1u);
    }

    else
    {
      PluginClient.connectWithRetries(attempt:promise:)(result, a2, a3);
    }
  }

  else
  {
    v12 = type metadata accessor for NWError();
    (*(*(v12 - 8) + 56))(v10, 3, 3, v12);
    swift_storeEnumTagMultiPayload();
    a2(v10);
    return outlined destroy of NSObject?(v10, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  }

  return result;
}

void closure #2 in PluginClient.connectWithRetries(attempt:promise:)(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v34 - v11);
  v13 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = (*(*Strong + 160))();
    outlined consume of ActivitySession.State(v16);
    if (v16 >> 62 == 1)
    {
      v34[1] = a5;
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v35 = a4;
      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, log);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v36 = v15;
        v37 = v21;
        *v20 = 134218242;
        *(v20 + 4) = a3;
        *(v20 + 12) = 2080;
        type metadata accessor for PluginClient(0);
        lazy protocol witness table accessor for type PluginClient and conformance PluginClient(&lazy protocol witness table cache variable for type PluginClient and conformance PluginClient, type metadata accessor for PluginClient);
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v37);

        *(v20 + 14) = v24;
        _os_log_impl(&dword_1AEB26000, v18, v19, "Connection attempt #%ld succeeded on client: %s", v20, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x1B27120C0](v21, -1, -1);
        MEMORY[0x1B27120C0](v20, -1, -1);
      }

      v25 = *(*v15 + 168);

      v25(v26);
      v27 = swift_allocObject();
      swift_weakInit();
      v28 = swift_allocObject();
      swift_weakInit();
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      *(v29 + 24) = v27;

      outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(partial apply for closure #1 in closure #2 in PluginClient.connectWithRetries(attempt:promise:));
      NWConnection.stateUpdateHandler.setter();

      *v12 = v13;
      swift_storeEnumTagMultiPayload();

      v35(v12);

      outlined destroy of NSObject?(v12, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, log);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = a3;
      _os_log_impl(&dword_1AEB26000, v31, v32, "Client was deinit'd when we received the connection on attempt #%ld", v33, 0xCu);
      MEMORY[0x1B27120C0](v33, -1, -1);
    }
  }
}

uint64_t closure #1 in closure #2 in PluginClient.connectWithRetries(attempt:promise:)(char *a1)
{
  v71 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v69 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v70 = &v59 - v5;
  v6 = type metadata accessor for PluginClient.Configuration(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PluginEndpoint();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NWConnection.State();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NWError();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x1EEE9AC00](v19);
  v67 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v68 = &v59 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v72 = &v59 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v59 - v28;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v32 = Strong;
      (*(v15 + 16))(v18, v71, v14);
      if ((*(v15 + 88))(v18, v14) == *MEMORY[0x1E6977C10])
      {
        (*(v15 + 96))(v18, v14);
        v33 = v20;
        v34 = v19;
        v64 = v20[4];
        v65 = v20 + 4;
        v64(v29, v18, v19);
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        __swift_project_value_buffer(v35, log);
        v36 = v20[2];
        v71 = v29;
        v66 = v36;
        v36(v72, v29, v19);

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();

        v39 = v33;
        if (os_log_type_enabled(v37, v38))
        {
          v61 = v38;
          v63 = v37;
          v40 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v73 = v59;
          *v40 = 136315394;
          v41 = *v32;
          v62 = v32 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
          (*(v41 + 136))();
          outlined init with copy of PluginEndpoint(v9, v13, type metadata accessor for PluginEndpoint);
          outlined destroy of PluginEndpoint(v9, type metadata accessor for PluginClient.Configuration);
          v42 = PluginEndpoint.description.getter();
          v44 = v43;
          outlined destroy of PluginEndpoint(v13, type metadata accessor for PluginEndpoint);
          v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v73);

          *(v40 + 4) = v45;
          v60 = v40;
          *(v40 + 12) = 2080;
          v46 = v70;
          v47 = v66;
          v66(v70, v72, v34);
          (v39[7])(v46, 0, 1, v34);
          v48 = v69;
          outlined init with copy of ActivitySession.DomainAssertionWrapper?(v46, v69, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
          if ((v39[6])(v48, 1, v34) == 1)
          {
            v49 = 0xE300000000000000;
            v50 = 7104878;
          }

          else
          {
            v53 = v68;
            v64(v68, v48, v34);
            v47(v67, v53, v34);
            v50 = String.init<A>(reflecting:)();
            v49 = v54;
            (v39[1])(v53, v34);
          }

          v52 = v71;
          outlined destroy of NSObject?(v46, &_s7Network7NWErrorOSgMd, &_s7Network7NWErrorOSgMR);
          v51 = v39[1];
          v51(v72, v34);
          v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v49, &v73);

          v56 = v60;
          *(v60 + 14) = v55;
          v57 = v63;
          _os_log_impl(&dword_1AEB26000, v63, v61, "PluginClient %s disconnected due to network failure: %s", v56, 0x16u);
          v58 = v59;
          swift_arrayDestroy();
          MEMORY[0x1B27120C0](v58, -1, -1);
          MEMORY[0x1B27120C0](v56, -1, -1);
        }

        else
        {

          v51 = v33[1];
          v51(v72, v34);
          v52 = v71;
        }

        (*(*v32 + 168))(0x8000000000000000);
        NWConnection.cancel()();

        return (v51)(v52, v34);
      }

      else
      {

        return (*(v15 + 8))(v18, v14);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t PluginClient.connectionFuture()()
{
  v1 = v0;
  v2 = type metadata accessor for NWConnection.State();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v29[-v9];
  v11 = (*(*v0 + 160))(v8);
  v12 = v11;
  if (v11 >> 62)
  {
    if (v11 >> 62 == 1)
    {
      return v11 & 0x3FFFFFFFFFFFFFFFLL;
    }

    if (v11 != 0x8000000000000000)
    {
      goto LABEL_5;
    }
  }

  else
  {
    NWConnection.state.getter();
    (*(v3 + 104))(v7, *MEMORY[0x1E6977C00], v2);
    v14 = MEMORY[0x1B270F7E0](v10, v7);
    v15 = *(v3 + 8);
    v15(v7, v2);
    v15(v10, v2);
    if (v14)
    {
LABEL_5:
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      return Future.init(_:)();
    }

    outlined consume of ActivitySession.State(v12);
  }

  v19 = (*(*v1 + 200))(v29);
  v21 = v20;
  v22 = *v20;

  *v21 = MEMORY[0x1E69E7CD0];
  v19(v29, 0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();

  v26 = Future.init(_:)();
  v27 = *(*v1 + 168);

  v27(v28 | 0x4000000000000000);
  return v26;
}

uint64_t closure #1 in PluginClient.connectionFuture()(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  *(&v10 - v7) = a3;
  swift_storeEnumTagMultiPayload();

  a1(v8);
  return outlined destroy of NSObject?(v8, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
}

uint64_t closure #3 in PluginClient.connectionFuture()(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  v6 = type metadata accessor for NWError();
  (*(*(v6 - 8) + 56))(v5, 3, 3, v6);
  swift_storeEnumTagMultiPayload();
  a1(v5);
  return outlined destroy of NSObject?(v5, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_ss6ResultOy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
}

uint64_t PluginClient.call<A, B>(rpc:input:traceId:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(), uint64_t a7)
{
  v8 = v7;
  v34 = a3;
  v35 = a7;
  v32 = a5;
  v33 = a6;
  v37 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v37 - 8);
  v12 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v36 = *(v38 - 8);
  v15 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v31 - v20;
  v22 = *a1;
  v23 = a1[1];
  aBlock = a4;
  v42 = v32;
  v43 = v33;
  v44 = v35;
  v35 = type metadata accessor for PluginRpcStream();
  aBlock = v22;
  v42 = v23;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v34, v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v24 = specialized PluginRpcStream.__allocating_init(definition:input:traceId:)(&aBlock, a2, v21);

  v25 = *(v8 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_queue);
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = v8;
  v45 = partial apply for closure #1 in PluginClient.call<A, B>(rpc:input:traceId:);
  v46 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v44 = &block_descriptor_34;
  v27 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v40 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type PluginClient and conformance PluginClient(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v28 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v17, v14, v27);
  _Block_release(v27);
  (*(v39 + 8))(v14, v28);
  (*(v36 + 8))(v17, v38);

  aBlock = v24;
  swift_getWitnessTable();
  v29 = Publisher.eraseToAnyPublisher()();

  return v29;
}

uint64_t closure #1 in PluginClient.call<A, B>(rpc:input:traceId:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7FlatMapVy_AA12AnyPublisherVy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGAA6FutureCyAjMGGMd, &_s7Combine10PublishersO7FlatMapVy_AA12AnyPublisherVy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGAA6FutureCyAjMGGMR);
  v3 = *(v2 - 8);
  v18 = v2;
  v19 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8MapErrorVy_AC04FlatC0Vy_AA12AnyPublisherVy7Network12NWConnectionC14CopresenceCore013PluginConnectD0OGAA6FutureCyAlOGGAM0l3RpcD0OGMd, &_s7Combine10PublishersO8MapErrorVy_AC04FlatC0Vy_AA12AnyPublisherVy7Network12NWConnectionC14CopresenceCore013PluginConnectD0OGAA6FutureCyAlOGGAM0l3RpcD0OGMR);
  v8 = *(v7 - 8);
  v20 = v7;
  v21 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v17 = v16 - v10;
  v22 = PluginClient.connectionFuture()();
  swift_allocObject();
  swift_weakInit();
  v16[1] = static Subscribers.Demand.unlimited.getter();
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  type metadata accessor for NWConnection();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine12AnyPublisherVy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Future<NWConnection, PluginConnectError> and conformance Future<A, B>, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<NWConnection, PluginConnectError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine12AnyPublisherVy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  type metadata accessor for PluginRpcError();
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.FlatMap<AnyPublisher<NWConnection, PluginConnectError>, Future<NWConnection, PluginConnectError>> and conformance Publishers.FlatMap<A, B>, &_s7Combine10PublishersO7FlatMapVy_AA12AnyPublisherVy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGAA6FutureCyAjMGGMd, &_s7Combine10PublishersO7FlatMapVy_AA12AnyPublisherVy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGAA6FutureCyAjMGGMR);
  lazy protocol witness table accessor for type PluginClient and conformance PluginClient(&lazy protocol witness table cache variable for type PluginRpcError and conformance PluginRpcError, type metadata accessor for PluginRpcError);
  v11 = v17;
  v12 = v18;
  Publisher.mapError<A>(_:)();
  (*(v19 + 8))(v6, v12);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.MapError<Publishers.FlatMap<AnyPublisher<NWConnection, PluginConnectError>, Future<NWConnection, PluginConnectError>>, PluginRpcError> and conformance Publishers.MapError<A, B>, &_s7Combine10PublishersO8MapErrorVy_AC04FlatC0Vy_AA12AnyPublisherVy7Network12NWConnectionC14CopresenceCore013PluginConnectD0OGAA6FutureCyAlOGGAM0l3RpcD0OGMd, &_s7Combine10PublishersO8MapErrorVy_AC04FlatC0Vy_AA12AnyPublisherVy7Network12NWConnectionC14CopresenceCore013PluginConnectD0OGAA6FutureCyAlOGGAM0l3RpcD0OGMR);
  swift_retain_n();
  v13 = v20;
  v14 = Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v21 + 8))(v11, v13);
  return (*(*a1 + 168))(v14);
}

uint64_t closure #1 in closure #1 in PluginClient.call<A, B>(rpc:input:traceId:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PluginConnectError();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4FailVy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine4FailVy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  v13 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v17 = PluginClient.createQuicStream(quicConnection:)(v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Future<NWConnection, PluginConnectError> and conformance Future<A, B>, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine6FutureCy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
    v14 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    v16 = type metadata accessor for NWError();
    (*(*(v16 - 8) + 56))(v7, 3, 3, v16);
    type metadata accessor for NWConnection();
    lazy protocol witness table accessor for type PluginClient and conformance PluginClient(&lazy protocol witness table cache variable for type PluginConnectError and conformance PluginConnectError, type metadata accessor for PluginConnectError);
    Fail.init(error:)();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Fail<NWConnection, PluginConnectError> and conformance Fail<A, B>, &_s7Combine4FailVy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMd, &_s7Combine4FailVy7Network12NWConnectionC14CopresenceCore18PluginConnectErrorOGMR);
    v14 = Publisher.eraseToAnyPublisher()();
    result = (*(v9 + 8))(v12, v8);
  }

  *a2 = v14;
  return result;
}

uint64_t closure #2 in closure #1 in PluginClient.call<A, B>(rpc:input:traceId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of PluginEndpoint(a1, a2, type metadata accessor for PluginConnectError);
  type metadata accessor for PluginRpcError();

  return swift_storeEnumTagMultiPayload();
}

uint64_t closure #3 in closure #1 in PluginClient.call<A, B>(rpc:input:traceId:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, &v12 - v6, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v8 = type metadata accessor for PluginRpcError();
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8);
  result = outlined destroy of NSObject?(v7, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  if (v9 != 1)
  {
    v11 = *(a2 + direct field offset for PluginRpcStream.output);
    return PassthroughSubject.send(completion:)();
  }

  return result;
}

Swift::Void __swiftcall PluginClient.close()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  v2 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v5 = *(v12 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_queue);
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in PluginClient.close();
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6_6;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type PluginClient and conformance PluginClient(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v8, v4, v10);
  _Block_release(v10);
  (*(v13 + 8))(v4, v1);
  (*(v5 + 8))(v8, v12);
}

uint64_t closure #1 in PluginClient.close()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 288))(result);
  }

  return result;
}

Swift::Void __swiftcall PluginClient._close()()
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
    v24 = v6;
    *v5 = 136315138;
    type metadata accessor for PluginClient(0);
    lazy protocol witness table accessor for type PluginClient and conformance PluginClient(&lazy protocol witness table cache variable for type PluginClient and conformance PluginClient, type metadata accessor for PluginClient);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v24);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1AEB26000, v3, v4, "%s Closing", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  v11 = *(v0 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporter);
  if (v11)
  {
    v12 = *(*v0 + 208);
    v13 = *(v0 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporter);

    if (v12(v14))
    {
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1AEB26000, v15, v16, "Data-transfer report triggered", v17, 2u);
        MEMORY[0x1B27120C0](v17, -1, -1);
      }

      v19 = *(v1 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporterTag);
      v18 = *(v1 + OBJC_IVAR____TtC14CopresenceCore12PluginClient_reporterTag + 8);
      v20 = *(v11 + 16);
      v21 = swift_allocObject();
      v21[2] = v11;
      v21[3] = v19;
      v21[4] = v18;

      v22 = v20;
      dispatch thunk of NWConnection.PendingDataTransferReport.collect(queue:completion:)();
    }
  }

  v23 = (*(*v1 + 160))(v10);
  if (!(v23 >> 62))
  {
    NWConnection.cancel()();
  }

  outlined consume of ActivitySession.State(v23);
  (*(*v1 + 168))(0x8000000000000008);
}

uint64_t PluginClient.description.getter()
{
  _StringGuts.grow(_:)(22);
  MEMORY[0x1B2710020](0xD000000000000013, 0x80000001AEE37370);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B2710020](41, 0xE100000000000000);
  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PluginClient()
{
  v1 = *v0;
  _StringGuts.grow(_:)(22);
  MEMORY[0x1B2710020](0xD000000000000013, 0x80000001AEE37370);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B2710020](41, 0xE100000000000000);
  return 0;
}

uint64_t lazy protocol witness table accessor for type PluginClient and conformance PluginClient(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for PluginClient()
{
  result = type metadata accessor for PluginClient.Configuration(319);
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

uint64_t type metadata completion function for PluginClient.Configuration()
{
  result = type metadata accessor for PluginEndpoint();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_14CopresenceCore12PluginClientC15ConnectionStateO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t partial apply for closure #1 in closure #2 in PluginClient.connectWithRetries(attempt:promise:)(char *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #1 in closure #2 in PluginClient.connectWithRetries(attempt:promise:)(a1);
}

uint64_t outlined init with take of PluginConnectError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginConnectError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_8Tm(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);

  a1(*(v2 + 32));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t outlined assign with take of PluginClient.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginClient.Configuration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Bool __swiftcall LSPropertyList.containsAnyGameCenterEntitlements()()
{
  LOBYTE(v9[0]) = 11;
  if (LSPropertyList.contains(entitlement:)(v9))
  {
    return 1;
  }

  v2 = MEMORY[0x1B270FF70](0xD00000000000001FLL, 0x80000001AEE2EE80);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v4 = [v0 objectForKey:v2 ofClass:ObjCClassFromMetadata valuesOfClass:swift_getObjCClassFromMetadata()];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v5 = *(v6 + 16);

      return v5 != 0;
    }
  }

  else
  {
    outlined destroy of NSObject?(v9, &_sypSgMd, &_sypSgMR);
  }

  return 0;
}

void CPApplicationController.registerObserver(observer:)(uint64_t a1)
{
  swift_getObjectType();

  specialized CPApplicationController.registerObserver(observer:)(a1, v1);
}

uint64_t CPApplicationControllerProtocol.isActivitySupported(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 bundleIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    LOBYTE(v7) = (*(a3 + 8))(v8, v10, a2, a3);

    return v7 & 1;
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.default);
    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
      v18 = v13;
      v19 = String.init<A>(reflecting:)();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v22);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1AEB26000, v14, v15, "Missing bundle identifier: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1B27120C0](v17, -1, -1);
      MEMORY[0x1B27120C0](v16, -1, -1);
    }

    return 0;
  }
}

Swift::Bool __swiftcall CPApplicationController.isBundleIdentifierSupported(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = OBJC_IVAR___CPApplicationController_supportedBundleIdentifierCache;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheV10WrappedKeyCySSSb_GMd, &_s14CopresenceCore5CacheV10WrappedKeyCySSSb_GMR);
  v8 = objc_allocWithZone(v7);
  v9 = MEMORY[0x1E69E7D40];
  v10 = &v8[*((*MEMORY[0x1E69E7D40] & *v8) + 0x68)];
  *v10 = countAndFlagsBits;
  v10[1] = object;
  v30.receiver = v8;
  v30.super_class = v7;

  v11 = v6;
  v12 = objc_msgSendSuper2(&v30, sel_init);
  v13 = [v11 objectForKey_];

  if (v13)
  {
    v14 = *(v13 + *((*v9 & *v13) + 0x68));
  }

  else
  {

    v14 = (*((*v9 & *v2) + 0x108))(countAndFlagsBits, object);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Log.default);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136315394;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v29);
      *(v18 + 12) = 1024;
      *(v18 + 14) = v14 & 1;
      _os_log_impl(&dword_1AEB26000, v16, v17, "Caching value for %s: %{BOOL}d", v18, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1B27120C0](v19, -1, -1);
      v20 = v18;
      v9 = MEMORY[0x1E69E7D40];
      MEMORY[0x1B27120C0](v20, -1, -1);
    }

    swift_beginAccess();
    v21 = *(v2 + v5);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheV12WrappedValueCySSSb_GMd, &_s14CopresenceCore5CacheV12WrappedValueCySSSb_GMR);
    v23 = objc_allocWithZone(v22);
    v23[*((*v9 & *v23) + 0x68)] = v14 & 1;
    v28.receiver = v23;
    v28.super_class = v22;

    v11 = objc_msgSendSuper2(&v28, sel_init);
    v24 = objc_allocWithZone(v7);
    v25 = &v24[*((*v9 & *v24) + 0x68)];
    *v25 = countAndFlagsBits;
    v25[1] = object;
    v27.receiver = v24;
    v27.super_class = v7;
    v13 = objc_msgSendSuper2(&v27, sel_init);
    [v21 setObject:v11 forKey:v13];
    swift_endAccess();
  }

  return v14 & 1;
}

uint64_t CPApplicationController.featureFlags.getter()
{
  v1 = OBJC_IVAR___CPApplicationController_featureFlags;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t CPApplicationController.featureFlags.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPApplicationController_featureFlags;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t CPApplicationController.protectedAppsObserver.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CPApplicationController_protectedAppsObserver;
  swift_beginAccess();
  return outlined init with copy of ProtectedAppsObserverProtocol?(v1 + v3, a1);
}

uint64_t CPApplicationController.protectedAppsObserver.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CPApplicationController_protectedAppsObserver;
  swift_beginAccess();
  outlined assign with take of ProtectedAppsObserverProtocol?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t one-time initialization function for systemBundleIdentifiers()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AEE07B10;
  v1 = *MEMORY[0x1E69D8DC8];
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E69D8DD0];
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 48) = result;
  *(v0 + 56) = v5;
  static CPApplicationController.systemBundleIdentifiers = v0;
  return result;
}

id CPApplicationController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *CPApplicationController.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___CPApplicationController_supportedBundleIdentifierCache;
  v3 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *&v0[v2] = v3;
  [v3 setCountLimit_];
  v4 = OBJC_IVAR___CPApplicationController_definedSystemActivityIdentifiersCache;
  v5 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *&v0[v4] = v5;
  [v5 setCountLimit_];
  v6 = OBJC_IVAR___CPApplicationController_lock;
  type metadata accessor for Lock();
  v7 = swift_allocObject();
  v8 = swift_slowAlloc();
  *(v7 + 16) = v8;
  *v8 = 0;
  *&v0[v6] = v7;
  v9 = OBJC_IVAR___CPApplicationController_observers;
  *&v0[v9] = [objc_opt_self() weakObjectsHashTable];
  v10 = OBJC_IVAR___CPApplicationController_featureFlags;
  *&v0[v10] = [objc_allocWithZone(CPFeatureFlags) init];
  v11 = &v0[OBJC_IVAR___CPApplicationController_protectedAppsObserver];
  v12 = type metadata accessor for CPApplicationController();
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v38.receiver = v0;
  v38.super_class = v12;
  v13 = objc_msgSendSuper2(&v38, sel_init);
  v14 = one-time initialization token for default;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.default);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v15;
    *v20 = v15;
    v21 = v15;
    _os_log_impl(&dword_1AEB26000, v17, v18, "Initialized %@", v19, 0xCu);
    outlined destroy of NSObject?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v20, -1, -1);
    MEMORY[0x1B27120C0](v19, -1, -1);
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v23 = result;
    [result addObserver_];

    v24 = OBJC_IVAR___CPApplicationController_featureFlags;
    swift_beginAccess();
    if ([*&v15[v24] appProtectionEnabled])
    {
      v35 = type metadata accessor for ProtectedAppsObserver();
      v36 = &protocol witness table for ProtectedAppsObserver;
      aBlock[0] = [objc_allocWithZone(v35) init];
      v25 = &v15[OBJC_IVAR___CPApplicationController_protectedAppsObserver];
      swift_beginAccess();
      outlined assign with take of ProtectedAppsObserverProtocol?(aBlock, v25);
      swift_endAccess();
      swift_beginAccess();
      v26 = *(v25 + 24);
      if (v26)
      {
        v27 = *(v25 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v25, *(v25 + 24));
        v28 = *(v27 + 16);
        v29 = v15;
        v28(v15, &protocol witness table for CPApplicationController, v26, v27);
      }

      swift_endAccess();
    }

    if ([*&v15[v24] autoGameCenterEnabled])
    {
      v30 = [objc_opt_self() shared];
      v31 = swift_allocObject();
      *(v31 + 16) = v15;
      *(v31 + 24) = ObjectType;
      v36 = partial apply for closure #1 in CPApplicationController.init();
      v37 = v31;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [Any], @guaranteed Error?) -> ();
      v35 = &block_descriptor_35;
      v32 = _Block_copy(aBlock);
      v33 = v15;

      [v30 fetchOnDeviceMultiplayerBundleIDsWithHandler_];
      _Block_release(v32);
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in CPApplicationController.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v9 = swift_slowAlloc();
    *&v54 = v9;
    *v8 = 136315138;
    v10 = MEMORY[0x1B2710180](a1, MEMORY[0x1E69E7CA0] + 8);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v54);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1AEB26000, v6, v7, "Caching Game Center Multiplayer games in supportedBundleIdentifierCache. Games: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  result = specialized _arrayConditionalCast<A, B>(_:)(a1);
  if (result)
  {
    v14 = *(result + 16);
    if (v14)
    {
      v47 = *(a4 + 256);
      v44 = OBJC_IVAR___CPApplicationController_supportedBundleIdentifierCache;
      for (i = (result + 40); ; i += 2)
      {
        v17 = *(i - 1);
        v16 = *i;

        v18 = v47(v17, v16);
        v19 = MEMORY[0x1B270FF70](0xD00000000000001FLL, 0x80000001AEE2EE80);
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
        v20 = [v18 objectForKey:v19 ofClass:swift_getObjCClassFromMetadata()];

        if (v20)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v52 = 0u;
          v53 = 0u;
        }

        v54 = v52;
        v55 = v53;
        if (*(&v53 + 1))
        {
          if (swift_dynamicCast())
          {
            v21 = v51;
            v22 = [v51 BOOLValue];

            if (v22)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {
          outlined destroy of NSObject?(&v54, &_sypSgMd, &_sypSgMR);
        }

        v23 = MEMORY[0x1B270FF70](0xD00000000000001FLL, 0x80000001AEE2EE80);
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
        v25 = [v18 objectForKey:v23 ofClass:ObjCClassFromMetadata valuesOfClass:swift_getObjCClassFromMetadata()];

        if (v25)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v52 = 0u;
          v53 = 0u;
        }

        v54 = v52;
        v55 = v53;
        if (!*(&v53 + 1))
        {
          outlined destroy of NSObject?(&v54, &_sypSgMd, &_sypSgMR);
LABEL_27:

          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            *&v54 = v42;
            *v41 = 136315138;
            v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v54);

            *(v41 + 4) = v43;
            _os_log_impl(&dword_1AEB26000, v39, v40, "Do not cache value for %s: because it does not have Game Center entitlement.", v41, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v42);
            MEMORY[0x1B27120C0](v42, -1, -1);
            MEMORY[0x1B27120C0](v41, -1, -1);
          }

          else
          {
          }

          goto LABEL_8;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_27;
        }

        v26 = *(v51 + 2);

        if (!v26)
        {
          goto LABEL_27;
        }

LABEL_23:

        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *&v54 = v30;
          *v29 = 136315138;
          *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v54);
          _os_log_impl(&dword_1AEB26000, v27, v28, "Caching value for %s: true", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v30);
          MEMORY[0x1B27120C0](v30, -1, -1);
          MEMORY[0x1B27120C0](v29, -1, -1);
        }

        swift_beginAccess();
        v46 = *(a3 + v44);
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheV12WrappedValueCySSSb_GMd, &_s14CopresenceCore5CacheV12WrappedValueCySSSb_GMR);
        v32 = objc_allocWithZone(v31);
        v33 = MEMORY[0x1E69E7D40];
        v32[*((*MEMORY[0x1E69E7D40] & *v32) + 0x68)] = 1;
        v50.receiver = v32;
        v50.super_class = v31;
        v34 = objc_msgSendSuper2(&v50, sel_init);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheV10WrappedKeyCySSSb_GMd, &_s14CopresenceCore5CacheV10WrappedKeyCySSSb_GMR);
        v36 = objc_allocWithZone(v35);
        v37 = &v36[*((*v33 & *v36) + 0x68)];
        *v37 = v17;
        v37[1] = v16;
        v49.receiver = v36;
        v49.super_class = v35;
        v38 = objc_msgSendSuper2(&v49, sel_init);
        [v46 setObject:v34 forKey:v38];
        swift_endAccess();

LABEL_8:
        if (!--v14)
        {
        }
      }
    }
  }

  return result;
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      outlined init with copy of Any(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

{
  v7 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    outlined init with copy of Any(i, v6);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for LSApplicationProxy, 0x1E69635E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v4 = *(v7 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void thunk for @escaping @callee_guaranteed (@guaranteed [Any], @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = a3;
  v5(v6, a3);
}

uint64_t static CPApplicationController.isAppHidden(for:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(type metadata accessor for ProtectedAppsObserver()) init];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x78))();

  v8[0] = a1;
  v8[1] = a2;
  v7[2] = v8;
  LOBYTE(a2) = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v7, v5);

  return a2 & 1;
}

id static CPApplicationController.entitlements(for:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.default);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v20);
    _os_log_impl(&dword_1AEB26000, v6, v7, "Looking up bundle record for %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for LSBundleRecord, 0x1E6963620);

  result = @nonobjc LSBundleRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(a1, a2, 0);
  if (!v2)
  {
    v11 = result;

    v12 = v11;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v15 = 136315394;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v20);
      *(v15 + 12) = 2112;
      *(v15 + 14) = v12;
      *v16 = v12;
      v18 = v12;
      _os_log_impl(&dword_1AEB26000, v13, v14, "bundleIdentifier: %s bundleRecord: %@", v15, 0x16u);
      outlined destroy of NSObject?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27120C0](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1B27120C0](v17, -1, -1);
      MEMORY[0x1B27120C0](v15, -1, -1);
    }

    v19 = [v12 entitlements];
    return v19;
  }

  return result;
}

id @nonobjc LSBundleRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1B270FF70]();

  v10[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

Swift::Bool __swiftcall CPApplicationController.lookupBundleIdentifierSupported(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  ObjectType = swift_getObjectType();
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.host);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v25);
    _os_log_impl(&dword_1AEB26000, v7, v8, "Attempting to check if bundle identifier is supported: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  if (one-time initialization token for systemBundleIdentifiers != -1)
  {
    v11 = swift_once();
  }

  v25[0] = countAndFlagsBits;
  v25[1] = object;
  MEMORY[0x1EEE9AC00](v11);
  v24[2] = v25;
  if (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v24, v12))
  {
    v13 = 1;
  }

  else
  {

    v14 = specialized tryLog<A>(_:_:function:line:)("Entitlements", 12, 2, 0xD000000000000023, 0x80000001AEE37420, 95, countAndFlagsBits, object, ObjectType);
    if (v14)
    {
      v15 = v14;
      v16 = [(*((*MEMORY[0x1E69E7D40] & *v2) + 0xC8))() appProtectionEnabled];
      swift_unknownObjectRelease();
      if (!v16 || ((*(ObjectType + 248))(countAndFlagsBits, object) & 1) == 0)
      {
        LOBYTE(v25[0]) = 4;
        v21 = LSPropertyList.contains(entitlement:)(v25);
        LOBYTE(v25[0]) = 3;
        v22 = LSPropertyList.contains(entitlement:)(v25);

        v13 = v21 || v22;
        return v13 & 1;
      }

      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v6, static Log.default);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v25[0] = v20;
        *v19 = 136315138;
        *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, v25);
        _os_log_impl(&dword_1AEB26000, v17, v18, "[CPApplicationController] Hidden app found for %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x1B27120C0](v20, -1, -1);
        MEMORY[0x1B27120C0](v19, -1, -1);
      }
    }

    v13 = 0;
  }

  return v13 & 1;
}

uint64_t static CPApplicationController.lookupDefinedSystemActivityIdentifiers(for:)(uint64_t a1, uint64_t a2)
{

  v5 = specialized tryLog<A>(_:_:function:line:)("Entitlements", 12, 2, 0xD00000000000002CLL, 0x80000001AEE37450, 114, a1, a2, v2);
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x1B270FF70](0xD00000000000002ELL, 0x80000001AEE2EDE0);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
    v9 = [v6 objectForKey:v7 ofClass:ObjCClassFromMetadata valuesOfClass:swift_getObjCClassFromMetadata()];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v14[0] = v12;
    v14[1] = v13;
    if (*(&v13 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (swift_dynamicCast())
      {

        return v11;
      }
    }

    else
    {
      outlined destroy of NSObject?(v14, &_sypSgMd, &_sypSgMR);
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t CPApplicationController.isValidSystemActivity(_:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if ([a1 isSystemActivity] && (v5 = objc_msgSend(a1, sel_bundleIdentifier)) != 0)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = OBJC_IVAR___CPApplicationController_definedSystemActivityIdentifiersCache;
    swift_beginAccess();
    v11 = *(v2 + v10);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheV10WrappedKeyCySSSaySSG_GMd, &_s14CopresenceCore5CacheV10WrappedKeyCySSSaySSG_GMR);
    v13 = objc_allocWithZone(v12);
    v14 = &v13[*((*MEMORY[0x1E69E7D40] & *v13) + 0x68)];
    *v14 = v7;
    v14[1] = v9;
    v44.receiver = v13;
    v44.super_class = v12;

    v15 = v11;
    v16 = objc_msgSendSuper2(&v44, sel_init);
    v17 = [v15 objectForKey_];

    if (v17)
    {
      v18 = *(v17 + *((*MEMORY[0x1E69E7D40] & *v17) + 0x68));

      v19 = [a1 activityIdentifier];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v42 = v20;
      v43 = v22;
      MEMORY[0x1EEE9AC00](v23);
    }

    else
    {

      v18 = (*(ObjectType + 272))(v7, v9);
      swift_beginAccess();
      v25 = *(v2 + v10);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheV12WrappedValueCySSSaySSG_GMd, &_s14CopresenceCore5CacheV12WrappedValueCySSSaySSG_GMR);
      v27 = objc_allocWithZone(v26);
      v28 = MEMORY[0x1E69E7D40];
      *&v27[*((*MEMORY[0x1E69E7D40] & *v27) + 0x68)] = v18;
      v41.receiver = v27;
      v41.super_class = v26;

      v29 = objc_msgSendSuper2(&v41, sel_init);
      v30 = objc_allocWithZone(v12);
      v31 = &v30[*((*v28 & *v30) + 0x68)];
      *v31 = v7;
      v31[1] = v9;
      v40.receiver = v30;
      v40.super_class = v12;
      v32 = objc_msgSendSuper2(&v40, sel_init);
      [v25 setObject:v29 forKey:v32];
      swift_endAccess();

      v33 = [a1 activityIdentifier];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v42 = v34;
      v43 = v36;
      MEMORY[0x1EEE9AC00](v37);
    }

    v39[2] = &v42;
    v24 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v39, v18);
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

id CPApplicationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CPApplicationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CPApplicationController.notifyObservers(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_assert_owner(*(*(v2 + OBJC_IVAR___CPApplicationController_lock) + 16));
  v4 = [*(v2 + OBJC_IVAR___CPApplicationController_observers) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29CPApplicationObserverProtocol_pMd, &_s14CopresenceCore29CPApplicationObserverProtocol_pMR);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v7 = 0;
    while ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B2710B10](v7, v5);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v10 = MEMORY[0x1B270FF70](a1, a2);
      [v8 applicationController:v2 bundleIdentifierChanged:v10];
      swift_unknownObjectRelease();

      ++v7;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v8 = *(v5 + 8 * v7 + 32);
    swift_unknownObjectRetain();
    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
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
}

Swift::Void __swiftcall CPApplicationController.invalidateCache(bundleIdentifier:)(Swift::String bundleIdentifier)
{
  v2 = v1;
  object = bundleIdentifier._object;
  countAndFlagsBits = bundleIdentifier._countAndFlagsBits;
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
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v25);
    _os_log_impl(&dword_1AEB26000, v6, v7, "Invalidating cached value for bundle identifier: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  v10 = OBJC_IVAR___CPApplicationController_supportedBundleIdentifierCache;
  swift_beginAccess();
  v11 = *(v2 + v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheV10WrappedKeyCySSSb_GMd, &_s14CopresenceCore5CacheV10WrappedKeyCySSSb_GMR);
  v13 = objc_allocWithZone(v12);
  v14 = MEMORY[0x1E69E7D40];
  v15 = &v13[*((*MEMORY[0x1E69E7D40] & *v13) + 0x68)];
  *v15 = countAndFlagsBits;
  v15[1] = object;
  v24.receiver = v13;
  v24.super_class = v12;

  v16 = objc_msgSendSuper2(&v24, sel_init);
  [v11 removeObjectForKey_];
  swift_endAccess();

  v17 = OBJC_IVAR___CPApplicationController_definedSystemActivityIdentifiersCache;
  swift_beginAccess();
  v18 = *(v2 + v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheV10WrappedKeyCySSSaySSG_GMd, &_s14CopresenceCore5CacheV10WrappedKeyCySSSaySSG_GMR);
  v20 = objc_allocWithZone(v19);
  v21 = &v20[*((*v14 & *v20) + 0x68)];
  *v21 = countAndFlagsBits;
  v21[1] = object;
  v23.receiver = v20;
  v23.super_class = v19;

  v22 = objc_msgSendSuper2(&v23, sel_init);
  [v18 removeObjectForKey_];
  swift_endAccess();
}

Swift::Void __swiftcall CPApplicationController.applicationsChanged(_:didInstall:)(Swift::OpaquePointer _, Swift::Bool didInstall)
{
  LOBYTE(v3) = didInstall;
  ObjectType = swift_getObjectType();
  v6 = *(v2 + OBJC_IVAR___CPApplicationController_lock);
  os_unfair_lock_lock(*(v6 + 2));
  v7 = specialized _arrayConditionalCast<A, B>(_:)(_._rawValue);
  if (v7)
  {
    v8 = v7;
    v9 = (v7 & 0xFFFFFFFFFFFFFF8);
    if (v7 >> 62)
    {
      goto LABEL_38;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {
      v31 = v3;
      v30 = v6;
      if (i)
      {
        v3 = 0;
        v6 = MEMORY[0x1E69E7CC0];
        do
        {
          v11 = v3;
          while (1)
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v12 = MEMORY[0x1B2710B10](v11, v8);
            }

            else
            {
              if (v11 >= v9[2])
              {
                goto LABEL_36;
              }

              v12 = *(v8 + 8 * v11 + 32);
            }

            v13 = v12;
            v3 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              __break(1u);
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

            v14 = [v12 bundleIdentifier];
            if (v14)
            {
              break;
            }

            ++v11;
            if (v3 == i)
            {
              goto LABEL_27;
            }
          }

          v15 = v14;
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v17;
          v29 = v16;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
          }

          v19 = *(v6 + 2);
          v18 = *(v6 + 3);
          if (v19 >= v18 >> 1)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v6);
          }

          *(v6 + 2) = v19 + 1;
          v20 = &v6[16 * v19];
          *(v20 + 4) = v29;
          *(v20 + 5) = v28;
        }

        while (v3 != i);
      }

      else
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

LABEL_27:

      v3 = *(v6 + 2);
      if (!v3)
      {
        break;
      }

      v25 = 0;
      v8 = 0;
      v9 = (v6 + 40);
      while (v25 < *(v6 + 2))
      {
        ++v25;
        v26 = *v9;
        v32[0] = *(v9 - 1);
        v32[1] = v26;

        closure #2 in CPApplicationController.applicationsChanged(_:didInstall:)(v32, v2, v31 & 1, ObjectType);

        v9 += 2;
        if (v3 == v25)
        {
          goto LABEL_31;
        }
      }

LABEL_37:
      __break(1u);
LABEL_38:
      ;
    }

LABEL_31:

    v6 = v30;
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Log.default);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1AEB26000, v22, v23, "Failed to convert notifications' appProxies to LSApplicationProxy", v24, 2u);
      MEMORY[0x1B27120C0](v24, -1, -1);
    }
  }

  v27 = *(v6 + 2);

  os_unfair_lock_unlock(v27);
}

void closure #2 in CPApplicationController.applicationsChanged(_:didInstall:)(uint64_t *a1, void *a2, char a3, uint64_t a4)
{
  v7 = a1[1];
  v9._countAndFlagsBits = *a1;
  countAndFlagsBits = v9._countAndFlagsBits;
  v9._object = v7;
  CPApplicationController.invalidateCache(bundleIdentifier:)(v9);
  v10 = CPApplicationController.notifyObservers(bundleIdentifier:)(countAndFlagsBits, v7);
  if (a3)
  {
    v11 = [(*((*MEMORY[0x1E69E7D40] & *a2) + 0xC8))(v10) autoGameCenterEnabled];
    swift_unknownObjectRelease();
    if (v11)
    {

      v12 = specialized tryLog<A>(_:_:function:line:)("Entitlements", 12, 2, 0xD000000000000022, 0x80000001AEE374F0, 201, countAndFlagsBits, v7, a4);
      if (v12)
      {
        v13 = v12;
        if (LSPropertyList.containsAnyGameCenterEntitlements()())
        {
          v14 = [objc_opt_self() shared];
          v15 = MEMORY[0x1B270FF70](countAndFlagsBits, v7);
          v16 = swift_allocObject();
          v16[2] = countAndFlagsBits;
          v16[3] = v7;
          v16[4] = a2;
          aBlock[4] = partial apply for closure #1 in closure #2 in CPApplicationController.applicationsChanged(_:didInstall:);
          aBlock[5] = v16;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
          aBlock[3] = &block_descriptor_21;
          v17 = _Block_copy(aBlock);

          v18 = a2;

          [v14 fetchGameCenterMultiplayerGameStatusForBundleID:v15 handler:v17];

          _Block_release(v17);
        }

        else
        {
        }
      }
    }
  }
}

uint64_t implicit closure #2 in CPApplicationController.lookupBundleIdentifierSupported(_:)@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  result = (*(a1 + 256))();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void closure #1 in closure #2 in CPApplicationController.applicationsChanged(_:didInstall:)(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.default);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v25);
      _os_log_impl(&dword_1AEB26000, v9, v10, "Caching value for multiplayer game %s: true", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1B27120C0](v12, -1, -1);
      MEMORY[0x1B27120C0](v11, -1, -1);
    }

    v13 = OBJC_IVAR___CPApplicationController_supportedBundleIdentifierCache;
    swift_beginAccess();
    v14 = *(a5 + v13);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheV12WrappedValueCySSSb_GMd, &_s14CopresenceCore5CacheV12WrappedValueCySSSb_GMR);
    v16 = objc_allocWithZone(v15);
    v17 = MEMORY[0x1E69E7D40];
    v16[*((*MEMORY[0x1E69E7D40] & *v16) + 0x68)] = 1;
    v24.receiver = v16;
    v24.super_class = v15;

    v18 = objc_msgSendSuper2(&v24, sel_init);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore5CacheV10WrappedKeyCySSSb_GMd, &_s14CopresenceCore5CacheV10WrappedKeyCySSSb_GMR);
    v20 = objc_allocWithZone(v19);
    v21 = &v20[*((*v17 & *v20) + 0x68)];
    *v21 = a3;
    v21[1] = a4;
    v23.receiver = v20;
    v23.super_class = v19;
    v22 = objc_msgSendSuper2(&v23, sel_init);
    [v14 setObject:v18 forKey:v22];
    swift_endAccess();
  }
}

void CPApplicationController.applicationsDidInstall(_:)(Swift::OpaquePointer a1, const char *a2, char a3)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.default);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    v11 = MEMORY[0x1B2710180](a1._rawValue, MEMORY[0x1E69E7CA0] + 8);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v7, v8, a2, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  CPApplicationController.applicationsChanged(_:didInstall:)(a1, a3 & 1);
}

uint64_t @objc CPApplicationController.applicationsDidInstall(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a1;
  a4(v6);
}

Swift::Void __swiftcall CPApplicationController.appProtectionsChanged(bundleIDs:)(Swift::OpaquePointer bundleIDs)
{
  v3 = *(v1 + OBJC_IVAR___CPApplicationController_lock);
  os_unfair_lock_lock(*(v3 + 16));
  v4 = *(bundleIDs._rawValue + 2);
  if (v4)
  {
    v5 = (bundleIDs._rawValue + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      v8._countAndFlagsBits = v6;
      v8._object = v7;
      CPApplicationController.invalidateCache(bundleIdentifier:)(v8);
      CPApplicationController.notifyObservers(bundleIdentifier:)(v6, v7);

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  v9 = *(v3 + 16);

  os_unfair_lock_unlock(v9);
}

void specialized CPApplicationController.registerObserver(observer:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR___CPApplicationController_lock);
  os_unfair_lock_lock(*(v4 + 16));
  [*(a2 + OBJC_IVAR___CPApplicationController_observers) addObject_];
  v5 = *(v4 + 16);

  os_unfair_lock_unlock(v5);
}

uint64_t outlined init with copy of ProtectedAppsObserverProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29ProtectedAppsObserverProtocol_pSgMd, &_s14CopresenceCore29ProtectedAppsObserverProtocol_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of ProtectedAppsObserverProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore29ProtectedAppsObserverProtocol_pSgMd, &_s14CopresenceCore29ProtectedAppsObserverProtocol_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ActivitySessionEvent.item.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPActivitySessionEvent_item);
  v2 = *(v0 + OBJC_IVAR___CPActivitySessionEvent_item + 8);

  return v1;
}

void *ActivitySessionEvent.url.getter()
{
  v1 = *(v0 + OBJC_IVAR___CPActivitySessionEvent_url);
  v2 = v1;
  return v1;
}

id ActivitySessionEvent.__allocating_init(type:item:originatorID:queueItemType:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v28 - v16;
  v18 = objc_allocWithZone(v7);
  *&v18[OBJC_IVAR___CPActivitySessionEvent_type] = a1;
  v19 = &v18[OBJC_IVAR___CPActivitySessionEvent_item];
  *v19 = a2;
  *(v19 + 1) = a3;
  v20 = a6;
  *&v18[OBJC_IVAR___CPActivitySessionEvent_originatorID] = a4;
  *&v18[OBJC_IVAR___CPActivitySessionEvent_queueItemType] = a5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a6, v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  v24 = 0;
  if ((*(v22 + 48))(v17, 1, v21) != 1)
  {
    URL._bridgeToObjectiveC()(v23);
    v24 = v25;
    (*(v22 + 8))(v17, v21);
  }

  *&v18[OBJC_IVAR___CPActivitySessionEvent_url] = v24;
  v28.receiver = v18;
  v28.super_class = v7;
  v26 = objc_msgSendSuper2(&v28, sel_init);
  outlined destroy of NSObject?(v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v26;
}

id ActivitySessionEvent.init(type:item:originatorID:queueItemType:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v27 - v16;
  *&v7[OBJC_IVAR___CPActivitySessionEvent_type] = a1;
  v18 = &v7[OBJC_IVAR___CPActivitySessionEvent_item];
  *v18 = a2;
  *(v18 + 1) = a3;
  *&v7[OBJC_IVAR___CPActivitySessionEvent_originatorID] = a4;
  *&v7[OBJC_IVAR___CPActivitySessionEvent_queueItemType] = a5;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a6, v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v22 = 0;
  if ((*(v20 + 48))(v17, 1, v19) != 1)
  {
    URL._bridgeToObjectiveC()(v21);
    v22 = v23;
    (*(v20 + 8))(v17, v19);
  }

  *&v7[OBJC_IVAR___CPActivitySessionEvent_url] = v22;
  v24 = type metadata accessor for ActivitySessionEvent();
  v27.receiver = v7;
  v27.super_class = v24;
  v25 = objc_msgSendSuper2(&v27, sel_init);
  outlined destroy of NSObject?(a6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v25;
}

uint64_t ActivitySessionEvent.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v13, &_sypSgMd, &_sypSgMR);
  if (!v14)
  {
    outlined destroy of NSObject?(v13, &_sypSgMd, &_sypSgMR);
    goto LABEL_20;
  }

  type metadata accessor for ActivitySessionEvent();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v9 = 0;
    return v9 & 1;
  }

  if (*(v1 + OBJC_IVAR___CPActivitySessionEvent_type) != *&v12[OBJC_IVAR___CPActivitySessionEvent_type])
  {
    goto LABEL_19;
  }

  v2 = *(v1 + OBJC_IVAR___CPActivitySessionEvent_item + 8);
  v3 = *&v12[OBJC_IVAR___CPActivitySessionEvent_item + 8];
  if (!v2)
  {
    if (!v3)
    {
      goto LABEL_14;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (!v3)
  {
    goto LABEL_19;
  }

  v4 = *(v1 + OBJC_IVAR___CPActivitySessionEvent_item) == *&v12[OBJC_IVAR___CPActivitySessionEvent_item] && v2 == v3;
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_14:
  if (*(v1 + OBJC_IVAR___CPActivitySessionEvent_originatorID) != *&v12[OBJC_IVAR___CPActivitySessionEvent_originatorID] || *(v1 + OBJC_IVAR___CPActivitySessionEvent_queueItemType) != *&v12[OBJC_IVAR___CPActivitySessionEvent_queueItemType])
  {
    goto LABEL_19;
  }

  v5 = *(v1 + OBJC_IVAR___CPActivitySessionEvent_url);
  v6 = *&v12[OBJC_IVAR___CPActivitySessionEvent_url];
  if (!v5)
  {
    v11 = v6;

    if (!v6)
    {
      v9 = 1;
      return v9 & 1;
    }

    goto LABEL_20;
  }

  if (!v6)
  {
    goto LABEL_19;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSURL, 0x1E695DFF8);
  v7 = v6;
  v8 = v5;
  v9 = static NSObject.== infix(_:_:)();

  return v9 & 1;
}

Swift::Int ActivitySessionEvent.hash.getter()
{
  Hasher.init()();
  MEMORY[0x1B27111E0](*(v0 + OBJC_IVAR___CPActivitySessionEvent_type));
  if (*(v0 + OBJC_IVAR___CPActivitySessionEvent_item + 8))
  {
    v1 = *(v0 + OBJC_IVAR___CPActivitySessionEvent_item);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1B2711210](*(v0 + OBJC_IVAR___CPActivitySessionEvent_originatorID));
  MEMORY[0x1B27111E0](*(v0 + OBJC_IVAR___CPActivitySessionEvent_queueItemType));
  v2 = *(v0 + OBJC_IVAR___CPActivitySessionEvent_url);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    v3 = v2;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher.finalize()();
}

uint64_t ActivitySessionEvent.init(coder:)(void *a1)
{
  v2 = MEMORY[0x1B270FF70](1701869940, 0xE400000000000000);
  [a1 decodeIntegerForKey_];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v8 = NSCoder.decodeObject<A>(of:forKey:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSStringCSgMd, &_sSo8NSStringCSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  if (swift_dynamicCast())
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    v3 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v3)
    {
      v6 = 0;
      LOBYTE(v7) = 1;
      v4 = v3;
      static UInt64._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  else
  {
  }

  type metadata accessor for ActivitySessionEvent();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall ActivitySessionEvent.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___CPActivitySessionEvent_type);
  v4 = MEMORY[0x1B270FF70](1701869940, 0xE400000000000000);
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR___CPActivitySessionEvent_item + 8))
  {
    v5 = MEMORY[0x1B270FF70](*(v1 + OBJC_IVAR___CPActivitySessionEvent_item));
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x1B270FF70](1835365481, 0xE400000000000000);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  v7 = *(v1 + OBJC_IVAR___CPActivitySessionEvent_originatorID);
  isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  v9 = MEMORY[0x1B270FF70](0x74616E696769726FLL, 0xEC0000004449726FLL);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v9];

  v10 = *(v1 + OBJC_IVAR___CPActivitySessionEvent_queueItemType);
  v11 = MEMORY[0x1B270FF70](0x6574496575657571, 0xED0000657079546DLL);
  [(objc_class *)with.super.isa encodeInteger:v10 forKey:v11];

  v12 = *(v1 + OBJC_IVAR___CPActivitySessionEvent_url);
  v13 = MEMORY[0x1B270FF70](7107189, 0xE300000000000000);
  [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];
}

id ActivitySessionEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivitySessionEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySessionEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of BackgroundSessionManagerDataSource.updateShare(_:activityID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return v13(a1, a2, a3, a4);
}

uint64_t specialized static TUConversationActivity.< infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v37 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - v17;
  v19 = [a1 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v40 = a2;
  v20 = [a2 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type TUConversationActivity and conformance NSObject(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  LOBYTE(v20) = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v12 + 8);
  v21(v16, v11);
  v21(v18, v11);
  if (v20)
  {
    v22 = [a1 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = UUID.uuidString.getter();
    v25 = v24;
    v26 = *(v38 + 8);
    v27 = v10;
    v28 = v39;
    v26(v27, v39);
    v29 = [v40 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = UUID.uuidString.getter();
    v32 = v31;
    v26(v8, v28);
    if (v23 == v30 && v25 == v32)
    {

      v33 = 0;
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v34 = [a1 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = [v40 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = static Date.< infix(_:_:)();
    v21(v16, v11);
    v21(v18, v11);
  }

  return v33 & 1;
}

unint64_t type metadata accessor for TUConversationActivity()
{
  result = lazy cache variable for type metadata for TUConversationActivity;
  if (!lazy cache variable for type metadata for TUConversationActivity)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUConversationActivity);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TUConversationActivity and conformance NSObject(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DG_Datagram.seqNum.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DG_Datagram(0) + 28);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  _s14CopresenceCore17DG_SequenceNumberVWObTm_0(a1, v1 + v3, type metadata accessor for DG_SequenceNumber);
  v4 = type metadata accessor for DG_SequenceNumber(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t DG_Datagram.encryptionID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DG_Datagram(0) + 32);
  outlined destroy of NSObject?(v1 + v3, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  _s14CopresenceCore17DG_SequenceNumberVWObTm_0(a1, v1 + v3, type metadata accessor for DG_EncryptionID);
  v4 = type metadata accessor for DG_EncryptionID(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t DG_Datagram.seqNum.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for DG_Datagram(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v7 + 28), v6, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v8 = type metadata accessor for DG_SequenceNumber(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v6, a1, type metadata accessor for DG_SequenceNumber);
  }

  *a1 = 0;
  a1[1] = 0;
  v10 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  }

  return result;
}

uint64_t DG_Datagram.encryptionID.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for DG_Datagram(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + *(v7 + 32), v6, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v8 = type metadata accessor for DG_EncryptionID(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v6, a1, type metadata accessor for DG_EncryptionID);
  }

  *a1 = xmmword_1AEE0C200;
  v10 = a1 + *(v8 + 20);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v6, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  }

  return result;
}

uint64_t protocol witness for AnyRawIngressDatagram.data.getter in conformance DG_Datagram()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t DG_Datagram.data.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t DG_Datagram.data.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t key path getter for DG_Datagram.seqNum : DG_Datagram@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for DG_Datagram(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v8 + 28), v7, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v9 = type metadata accessor for DG_SequenceNumber(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v7, a2, type metadata accessor for DG_SequenceNumber);
  }

  *a2 = 0;
  a2[1] = 0;
  v11 = a2 + *(v9 + 24);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  }

  return result;
}

uint64_t key path setter for DG_Datagram.seqNum : DG_Datagram(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DG_SequenceNumber(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s14CopresenceCore17DG_SequenceNumberVWOcTm_0(a1, v8, type metadata accessor for DG_SequenceNumber);
  v9 = *(type metadata accessor for DG_Datagram(0) + 28);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v8, a2 + v9, type metadata accessor for DG_SequenceNumber);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t DG_SequenceNumber.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for DG_SequenceNumber(0);
  *a1 = 0;
  a1[1] = 0;
  v3 = a1 + *(v2 + 24);
  return UnknownStorage.init()();
}

void (*DG_Datagram.seqNum.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for DG_SequenceNumber(0);
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
  v15 = *(type metadata accessor for DG_Datagram(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v17 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v8, v14, type metadata accessor for DG_SequenceNumber);
  }

  return DG_Datagram.seqNum.modify;
}

BOOL DG_Datagram.hasSeqNum.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for DG_Datagram(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0 + *(v5 + 28), v4, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v6 = type metadata accessor for DG_SequenceNumber(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of NSObject?(v4, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  return v7;
}

Swift::Void __swiftcall DG_Datagram.clearSeqNum()()
{
  v1 = *(type metadata accessor for DG_Datagram(0) + 28);
  outlined destroy of NSObject?(v0 + v1, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v2 = type metadata accessor for DG_SequenceNumber(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t key path getter for DG_Datagram.encryptionID : DG_Datagram@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for DG_Datagram(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v8 + 32), v7, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v9 = type metadata accessor for DG_EncryptionID(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v7, a2, type metadata accessor for DG_EncryptionID);
  }

  *a2 = xmmword_1AEE0C200;
  v11 = a2 + *(v9 + 20);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of NSObject?(v7, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  }

  return result;
}

uint64_t key path setter for DG_Datagram.encryptionID : DG_Datagram(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DG_EncryptionID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s14CopresenceCore17DG_SequenceNumberVWOcTm_0(a1, v8, type metadata accessor for DG_EncryptionID);
  v9 = *(type metadata accessor for DG_Datagram(0) + 32);
  outlined destroy of NSObject?(a2 + v9, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v8, a2 + v9, type metadata accessor for DG_EncryptionID);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t DG_EncryptionID.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1AEE0C200;
  v1 = a1 + *(type metadata accessor for DG_EncryptionID(0) + 20);
  return UnknownStorage.init()();
}

void (*DG_Datagram.encryptionID.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for DG_EncryptionID(0);
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
  v15 = *(type metadata accessor for DG_Datagram(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v1 + v15, v8, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = xmmword_1AEE0C200;
    v17 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of NSObject?(v8, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
    }
  }

  else
  {
    _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v8, v14, type metadata accessor for DG_EncryptionID);
  }

  return DG_Datagram.encryptionID.modify;
}

void DG_Datagram.seqNum.modify(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    _s14CopresenceCore17DG_SequenceNumberVWOcTm_0(v11, v10, a5);
    outlined destroy of NSObject?(v14 + v9, a3, a4);
    _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v11, a5);
  }

  else
  {
    outlined destroy of NSObject?(v14 + v9, a3, a4);
    _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

uint64_t _s14CopresenceCore17DG_SequenceNumberVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL DG_Datagram.hasEncryptionID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for DG_Datagram(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v0 + *(v5 + 32), v4, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v6 = type metadata accessor for DG_EncryptionID(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of NSObject?(v4, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  return v7;
}

Swift::Void __swiftcall DG_Datagram.clearEncryptionID()()
{
  v1 = *(type metadata accessor for DG_Datagram(0) + 32);
  outlined destroy of NSObject?(v0 + v1, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v2 = type metadata accessor for DG_EncryptionID(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t DG_Datagram.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AEE0C200;
  *(a1 + 16) = 0;
  v2 = type metadata accessor for DG_Datagram(0);
  v3 = a1 + v2[6];
  UnknownStorage.init()();
  v4 = v2[7];
  v5 = type metadata accessor for DG_SequenceNumber(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[8];
  v7 = type metadata accessor for DG_EncryptionID(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t DG_Datagram.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t DG_Datagram.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t DG_EncryptionID.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DG_EncryptionID(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DG_EncryptionID.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DG_EncryptionID(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DG_Datagram.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        closure #3 in DG_Datagram.decodeMessage<A>(decoder:)();
      }

      else if (result == 4)
      {
        dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
      }
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }

    else if (result == 2)
    {
      closure #2 in DG_Datagram.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t closure #2 in DG_Datagram.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for DG_Datagram(0) + 28);
  type metadata accessor for DG_SequenceNumber(0);
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_SequenceNumber and conformance DG_SequenceNumber, type metadata accessor for DG_SequenceNumber);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in DG_Datagram.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for DG_Datagram(0) + 32);
  type metadata accessor for DG_EncryptionID(0);
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_EncryptionID and conformance DG_EncryptionID, type metadata accessor for DG_EncryptionID);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t DG_Datagram.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
LABEL_8:
    if (v11 == v12)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v10)
  {
    v11 = v8;
    v12 = v8 >> 32;
    goto LABEL_8;
  }

  if ((v9 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  result = closure #1 in DG_Datagram.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in DG_Datagram.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (v3[2])
    {
      dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)();
    }

    v14 = v3 + *(type metadata accessor for DG_Datagram(0) + 24);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in DG_Datagram.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for DG_SequenceNumber(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DG_Datagram(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v14 + 28), v8, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  }

  _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v8, v13, type metadata accessor for DG_SequenceNumber);
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_SequenceNumber and conformance DG_SequenceNumber, type metadata accessor for DG_SequenceNumber);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v13, type metadata accessor for DG_SequenceNumber);
}

uint64_t closure #2 in DG_Datagram.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for DG_EncryptionID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DG_Datagram(0);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + *(v14 + 32), v8, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of NSObject?(v8, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  }

  _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v8, v13, type metadata accessor for DG_EncryptionID);
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_EncryptionID and conformance DG_EncryptionID, type metadata accessor for DG_EncryptionID);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v13, type metadata accessor for DG_EncryptionID);
}

uint64_t protocol witness for Message.init() in conformance DG_Datagram@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1AEE0C200;
  *(a2 + 16) = 0;
  v4 = a2 + a1[6];
  UnknownStorage.init()();
  v5 = a1[7];
  v6 = type metadata accessor for DG_SequenceNumber(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[8];
  v8 = type metadata accessor for DG_EncryptionID(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance DG_Datagram(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_Datagram and conformance DG_Datagram, type metadata accessor for DG_Datagram);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DG_Datagram()
{
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_Datagram and conformance DG_Datagram, type metadata accessor for DG_Datagram);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DG_Datagram(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_Datagram and conformance DG_Datagram, type metadata accessor for DG_Datagram);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t DG_SequenceNumber.decodeMessage<A>(decoder:)()
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
      dispatch thunk of Decoder.decodeSingularFixed64Field(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }
  }

  return result;
}

uint64_t DG_SequenceNumber.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularFixed64Field(value:fieldNumber:)(), !v1))
  {
    if (!v0[1] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for DG_SequenceNumber(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static DG_SequenceNumber.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(type metadata accessor for DG_SequenceNumber(0) + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance DG_SequenceNumber(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_SequenceNumber and conformance DG_SequenceNumber, type metadata accessor for DG_SequenceNumber);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DG_SequenceNumber()
{
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_SequenceNumber and conformance DG_SequenceNumber, type metadata accessor for DG_SequenceNumber);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DG_SequenceNumber(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_SequenceNumber and conformance DG_SequenceNumber, type metadata accessor for DG_SequenceNumber);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DG_SequenceNumber(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a3 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t DG_EncryptionID.decodeMessage<A>(decoder:)()
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
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t DG_EncryptionID.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2 || *(v2 + 16) == *(v2 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v4)
  {
    if (v2 == v2 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v3 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v6 = v0 + *(type metadata accessor for DG_EncryptionID(0) + 20);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t static DG_EncryptionID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for DG_EncryptionID(0) + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int DG_Datagram.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance DG_EncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_EncryptionID and conformance DG_EncryptionID, type metadata accessor for DG_EncryptionID);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DG_EncryptionID()
{
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_EncryptionID and conformance DG_EncryptionID, type metadata accessor for DG_EncryptionID);

  return Message.debugDescription.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DG_EncryptionID(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type DG_EncryptionID and conformance DG_EncryptionID, type metadata accessor for DG_EncryptionID);

  return MEMORY[0x1EEE15948](a1, a2, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DG_EncryptionID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static DG_Datagram.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DG_EncryptionID(0);
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore15DG_EncryptionIDVSg_ADtMd, &_s14CopresenceCore15DG_EncryptionIDVSg_ADtMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v52 - v13;
  v14 = type metadata accessor for DG_SequenceNumber(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = (&v52 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore17DG_SequenceNumberVSg_ADtMd, &_s14CopresenceCore17DG_SequenceNumberVSg_ADtMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v52 - v25;
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_20;
  }

  v52 = v7;
  v27 = type metadata accessor for DG_Datagram(0);
  v59 = a2;
  v28 = *(v27 + 28);
  v29 = *(v23 + 48);
  v53 = v27;
  v54 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1 + v28, v26, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v59 + v28, &v26[v29], &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  v30 = *(v15 + 48);
  if (v30(v26, 1, v14) == 1)
  {
    if (v30(&v26[v29], 1, v14) == 1)
    {
      outlined destroy of NSObject?(v26, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v26, v22, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  if (v30(&v26[v29], 1, v14) == 1)
  {
    _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v22, type metadata accessor for DG_SequenceNumber);
LABEL_12:
    v42 = &_s14CopresenceCore17DG_SequenceNumberVSg_ADtMd;
    v43 = &_s14CopresenceCore17DG_SequenceNumberVSg_ADtMR;
LABEL_18:
    v46 = v26;
LABEL_19:
    outlined destroy of NSObject?(v46, v42, v43);
    goto LABEL_20;
  }

  _s14CopresenceCore17DG_SequenceNumberVWObTm_0(&v26[v29], v18, type metadata accessor for DG_SequenceNumber);
  if (*v22 != *v18 || v22[1] != v18[1])
  {
    _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v18, type metadata accessor for DG_SequenceNumber);
    _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v22, type metadata accessor for DG_SequenceNumber);
    v42 = &_s14CopresenceCore17DG_SequenceNumberVSgMd;
    v43 = &_s14CopresenceCore17DG_SequenceNumberVSgMR;
    goto LABEL_18;
  }

  v44 = *(v14 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v18, type metadata accessor for DG_SequenceNumber);
  _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v22, type metadata accessor for DG_SequenceNumber);
  outlined destroy of NSObject?(v26, &_s14CopresenceCore17DG_SequenceNumberVSgMd, &_s14CopresenceCore17DG_SequenceNumberVSgMR);
  if ((v45 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_5:
  v32 = v53;
  v31 = v54;
  v33 = *(v53 + 32);
  v34 = *(v11 + 48);
  v35 = v58;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v54 + v33, v58, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v36 = v59 + v33;
  v37 = v59;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v36, v35 + v34, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  v38 = v57;
  v39 = *(v56 + 48);
  if (v39(v35, 1, v57) == 1)
  {
    if (v39(v35 + v34, 1, v38) == 1)
    {
      outlined destroy of NSObject?(v35, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
      goto LABEL_8;
    }

    goto LABEL_24;
  }

  v48 = v55;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v35, v55, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  if (v39(v35 + v34, 1, v38) == 1)
  {
    _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v48, type metadata accessor for DG_EncryptionID);
LABEL_24:
    v42 = &_s14CopresenceCore15DG_EncryptionIDVSg_ADtMd;
    v43 = &_s14CopresenceCore15DG_EncryptionIDVSg_ADtMR;
    v46 = v35;
    goto LABEL_19;
  }

  v49 = v52;
  _s14CopresenceCore17DG_SequenceNumberVWObTm_0(v35 + v34, v52, type metadata accessor for DG_EncryptionID);
  if ((specialized static Data.== infix(_:_:)(*v48, *(v48 + 8), *v49, *(v49 + 8)) & 1) == 0)
  {
    _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v49, type metadata accessor for DG_EncryptionID);
    _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v48, type metadata accessor for DG_EncryptionID);
    v42 = &_s14CopresenceCore15DG_EncryptionIDVSgMd;
    v43 = &_s14CopresenceCore15DG_EncryptionIDVSgMR;
    v46 = v35;
    goto LABEL_19;
  }

  v50 = *(v38 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v49, type metadata accessor for DG_EncryptionID);
  _s14CopresenceCore17DG_SequenceNumberVWOhTm_0(v48, type metadata accessor for DG_EncryptionID);
  outlined destroy of NSObject?(v35, &_s14CopresenceCore15DG_EncryptionIDVSgMd, &_s14CopresenceCore15DG_EncryptionIDVSgMR);
  if ((v51 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (*(v31 + 16) != *(v37 + 16))
  {
LABEL_20:
    v41 = 0;
    return v41 & 1;
  }

  v40 = *(v32 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08]);
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v41 & 1;
}

uint64_t lazy protocol witness table accessor for type DG_Datagram and conformance DG_Datagram(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for DG_Datagram()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DG_SequenceNumber?(319, &lazy cache variable for type metadata for DG_SequenceNumber?, type metadata accessor for DG_SequenceNumber);
    if (v1 <= 0x3F)
    {
      type metadata accessor for DG_SequenceNumber?(319, &lazy cache variable for type metadata for DG_EncryptionID?, type metadata accessor for DG_EncryptionID);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for DG_SequenceNumber?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for DG_SequenceNumber()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF10Foundation4DataV_SSs5NeverOTg546_sSS14CopresenceCoreE5asHexSSyFSSs5UInt8VXEfU_Tf1cn_nTm(uint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_39;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v46 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v33 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v46;
    v30 = &v34 + v9;
    v32 = v4;
    do
    {
      if (v10 >= v5)
      {
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
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v33 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = __DataStorage._offset.getter();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v19 = v30[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = __DataStorage._bytes.getter();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = __DataStorage._offset.getter();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1AEE07B20;
      *(v20 + 56) = MEMORY[0x1E69E7508];
      *(v20 + 64) = MEMORY[0x1E69E7558];
      *(v20 + 32) = v19;
      v21 = String.init(format:_:)();
      v46 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        v29 = v21;
        v26 = v22;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      ++v10;
      LODWORD(v4) = v32;
    }

    while (v11 != v5);
  }

LABEL_39:
  v27 = *MEMORY[0x1E69E9840];
  return v8;
}

Swift::String_optional __swiftcall Data.asBase64()()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v1 = [(objc_class *)isa tu_URLSafeBase64EncodedString];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v5 = v2;
  v6 = v4;
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

Swift::String_optional __swiftcall String.asBase64()()
{
  v2 = v1;
  v3 = v0;

  v4 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v3, v2);
  v6 = v5;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v4, v6);
  v8 = [(objc_class *)isa tu_URLSafeBase64EncodedString];

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = v9;
  v13 = v11;
  result.value._object = v13;
  result.value._countAndFlagsBits = v12;
  return result;
}

Swift::String __swiftcall String.asHex()()
{
  v2 = v1;
  v3 = v0;

  v4 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v3, v2);
  v6 = v5;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF10Foundation4DataV_SSs5NeverOTg546_sSS14CopresenceCoreE5asHexSSyFSSs5UInt8VXEfU_Tf1cn_nTm(v4, v5);
  outlined consume of Data._Representation(v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v7 = BidirectionalCollection<>.joined(separator:)();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

Swift::String __swiftcall Data.asHex()()
{
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF10Foundation4DataV_SSs5NeverOTg546_sSS14CopresenceCoreE5asHexSSyFSSs5UInt8VXEfU_Tf1cn_nTm(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v2 = BidirectionalCollection<>.joined(separator:)();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t Resettable.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, v2, v6);
  v11 = *(v5 - 8);
  v12 = *(v11 + 48);
  if (v12(v10, 1, v5) != 1)
  {
    return (*(v11 + 32))(a2, v10, v5);
  }

  Resettable.initialize()(a1, a2);
  result = (v12)(v10, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

Swift::Void __swiftcall Resettable.reset()()
{
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-v7];
  (*(v5 + 16))(&v12[-v7], v2, v4);
  v13 = v3;
  v14 = v2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in Resettable.reset(), v12, MEMORY[0x1E69E73E0], v9, v10, v15);
  v11 = *(v5 + 8);
  v11(v8, v4);
  v11(v2, v4);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
}

uint64_t Resettable.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t Resettable.initialize()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(result + 28);
  v5 = *v4;
  if (*v4)
  {
    v6 = v2;
    v7 = result;
    v8 = *(v4 + 8);

    v5(v9);
    _sxRi_zRi0_zlyytIseghHr_SgWOe(v5);
    v10 = *(v7 + 16);
    v11 = type metadata accessor for Optional();
    (*(*(v11 - 8) + 8))(v6, v11);
    v13 = *(v10 - 8);
    (*(v13 + 16))(v6, a2, v10);
    v12 = *(v13 + 56);

    return v12(v6, 0, 1, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Resettable.initializer.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(*v2);
  return v3;
}

uint64_t Resettable.initializer.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 28));
  v7 = v6[1];
  result = _sxRi_zRi0_zlyytIseghHr_SgWOe(*v6);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Resettable.initializer.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for ActivitySession.Errors;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t key path getter for Resettable.onReset : <A>Resettable<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = (a1 + *(type metadata accessor for Resettable() + 32));
  v7 = *v6;
  v8 = v6[1];
  if (*v6)
  {
    v9 = swift_allocObject();
    *(v9 + 2) = v5;
    *(v9 + 3) = v7;
    *(v9 + 4) = v8;
    v10 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> ();
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *a4 = v10;
  a4[1] = v9;

  return outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v7);
}

uint64_t key path setter for Resettable.onReset : <A>Resettable<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = a1[1];
  if (*a1)
  {
    v8 = swift_allocObject();
    v8[2] = v5;
    v8[3] = v6;
    v8[4] = v7;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out ());
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = (a2 + *(type metadata accessor for Resettable() + 32));
  v11 = *v10;
  v12 = v10[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(v6);
  result = _sxRi_zRi0_zlyytIseghHr_SgWOe(v11);
  *v10 = v9;
  v10[1] = v8;
  return result;
}

uint64_t Resettable.onReset.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  v4 = v2[1];
  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWConnection.State) -> ())?(*v2);
  return v3;
}

uint64_t Resettable.onReset.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 32));
  v7 = v6[1];
  result = _sxRi_zRi0_zlyytIseghHr_SgWOe(*v6);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Resettable.onReset.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for ActivitySession.Errors;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t closure #1 in Resettable.reset()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  result = type metadata accessor for Resettable();
  v7 = a2 + *(result + 32);
  v8 = *v7;
  if (*v7)
  {
    v9 = *(v7 + 8);

    v8(a1);
    result = _sxRi_zRi0_zlyytIseghHr_SgWOe(v8);
  }

  *a3 = v8 == 0;
  return result;
}

uint64_t Resettable.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
  result = type metadata accessor for Resettable();
  v4 = (a2 + *(result + 28));
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + *(result + 32));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

void type metadata completion function for Resettable(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    type metadata accessor for (())?();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for Resettable(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFE)
    {
      v19 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      if ((v19 + 1) >= 2)
      {
        return v19;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v18 = (*(v4 + 48))(a1, v5);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void storeEnumTagSinglePayload for Resettable(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v10;
  }

  v11 = ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v12 = a3 - v9;
    if (((((v10 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v10 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((((v10 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v9 + a2;
      v17 = a1;
      bzero(a1, v11);
      a1 = v17;
      *v17 = v16;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v11) = v15;
      }

      else
      {
        *(a1 + v11) = v15;
      }
    }

    else if (v5)
    {
      *(a1 + v11) = v15;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v11) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v11) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 < 0x7FFFFFFE)
  {
    v22 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v22 = 0;
      v22[1] = 0;
      *v22 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v22 = a2;
    }
  }

  else if (v8 >= a2)
  {
    v23 = *(v6 + 56);

    v23();
  }

  else
  {
    if (v10 <= 3)
    {
      v18 = ~(-1 << (8 * v10));
    }

    else
    {
      v18 = -1;
    }

    if (v10)
    {
      v19 = v18 & (~v8 + a2);
      if (v10 <= 3)
      {
        v20 = v10;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v10);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

void type metadata accessor for (())?()
{
  if (!lazy cache variable for type metadata for (())?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (())?);
    }
  }
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out ())()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> ()()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS10Foundation4DataVSgG_14CopresenceCore11CP_KeyValueVs5NeverOTg5017_sSS10Foundation4e5VSg14f6Core11h1_ij27VIgggr_SS3key_AD5valuetAGs5k20OIegnrzr_TR04_s14c66p45PubSubTopicC14upsertMetadata_10completionySDym39Foundation4b40VSgG_ys6ResultOyytAA0cdE5C70OGctFyAA09e31_UpserteG7RequestVzXEfU0_AA0M9_fG12VSS_AItXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CP_KeyValue(0);
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v47 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v10 = -1 << *(a1 + 32);
    v44 = a1 + 64;
    v45 = v47;
    result = _HashTable.startBucket.getter();
    v11 = result;
    v12 = 0;
    v46 = *(a1 + 36);
    v36 = a1 + 72;
    v37 = v8;
    v38 = a1;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v44 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_23;
      }

      if (v46 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v41 = v12;
      v15 = *(a1 + 56);
      v16 = (*(a1 + 48) + 16 * v11);
      v43 = v2;
      v17 = *v16;
      v18 = v16[1];
      v19 = (v15 + 16 * v11);
      v21 = *v19;
      v20 = v19[1];
      swift_bridgeObjectRetain_n();
      outlined copy of Data?(v21, v20);
      outlined copy of Data?(v21, v20);

      v22 = outlined consume of Data?(v21, v20);
      v42 = &v35;
      MEMORY[0x1EEE9AC00](v22);
      *(&v35 - 4) = v17;
      *(&v35 - 3) = v18;
      *(&v35 - 2) = v21;
      *(&v35 - 1) = v20;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_KeyValue and conformance CP_KeyValue, type metadata accessor for CP_KeyValue);
      v23 = v43;
      static Message.with(_:)();
      v2 = v23;

      outlined consume of Data?(v21, v20);
      v24 = v45;
      v47 = v45;
      v26 = *(v45 + 16);
      v25 = *(v45 + 24);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1);
        v24 = v47;
      }

      *(v24 + 16) = v26 + 1;
      v27 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v45 = v24;
      result = _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v7, v24 + v27 + *(v39 + 72) * v26, type metadata accessor for CP_KeyValue);
      a1 = v38;
      v13 = 1 << *(v38 + 32);
      if (v11 >= v13)
      {
        goto LABEL_25;
      }

      v28 = *(v44 + 8 * v14);
      if ((v28 & (1 << v11)) == 0)
      {
        goto LABEL_26;
      }

      if (v46 != *(v38 + 36))
      {
        goto LABEL_27;
      }

      v29 = v28 & (-2 << (v11 & 0x3F));
      if (v29)
      {
        v13 = __clz(__rbit64(v29)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v14 << 6;
        v31 = v14 + 1;
        v32 = (v36 + 8 * v14);
        while (v31 < (v13 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = outlined consume of Set<AddressableMember>.Index._Variant(v11, v46, 0);
            v13 = __clz(__rbit64(v33)) + v30;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<AddressableMember>.Index._Variant(v11, v46, 0);
      }

LABEL_4:
      v12 = v41 + 1;
      v11 = v13;
      if (v41 + 1 == v37)
      {
        return v45;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDys6UInt64VAGG_14CopresenceCore17CP_SequenceNumberVs5NeverOTg504_ss6d5VAB14e6Core17g1_hi27VIgyyr_AB3key_AB5valuetAEs5J215OIegnrzr_TR04_s14b115Core11PubSubTopicC20setupSubscribeStream33_6FF60077F0B19FDD9659960D5DD0DECCLL05reuseH014isFirstAttemptySb_SbtFyAA03d47_G7RequestVzXEfU1_yAI10InitializeVzXEfU_AA0T15_ef3Vs6A10V_AOtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CP_SequenceNumber(0);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v36 = v7;
    v42 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v41 = v42;
    v10 = a1 + 64;
    v11 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v12 = result;
    v13 = 0;
    v33 = a1 + 72;
    v34 = v8;
    v35 = a1 + 64;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_22;
      }

      v40 = *(a1 + 36);
      v16 = *(*(a1 + 48) + 8 * v12);
      v17 = *(*(a1 + 56) + 8 * v12);
      MEMORY[0x1EEE9AC00](result);
      *(&v32 - 2) = v18;
      *(&v32 - 1) = v19;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type CP_SequenceNumber and conformance CP_SequenceNumber, type metadata accessor for CP_SequenceNumber);
      v20 = v36;
      static Message.with(_:)();
      v39 = v2;
      v21 = v41;
      v42 = v41;
      v23 = *(v41 + 16);
      v22 = *(v41 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 > 1, v23 + 1, 1);
        v21 = v42;
      }

      *(v21 + 16) = v23 + 1;
      v24 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v41 = v21;
      result = _s14CopresenceCore17CP_SequenceNumberVWObTm_0(v20, v21 + v24 + *(v37 + 72) * v23, type metadata accessor for CP_SequenceNumber);
      v14 = 1 << *(a1 + 32);
      if (v12 >= v14)
      {
        goto LABEL_23;
      }

      v10 = v35;
      v25 = *(v35 + 8 * v15);
      if ((v25 & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      if (v40 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v26 = v25 & (-2 << (v12 & 0x3F));
      if (v26)
      {
        v14 = __clz(__rbit64(v26)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v15 << 6;
        v28 = v15 + 1;
        v29 = (v33 + 8 * v15);
        while (v28 < (v14 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = outlined consume of Set<AddressableMember>.Index._Variant(v12, v40, 0);
            v14 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<AddressableMember>.Index._Variant(v12, v40, 0);
      }

LABEL_4:
      ++v13;
      v12 = v14;
      v2 = v39;
      if (v13 == v34)
      {
        return v41;
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

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1)
{
  return specialized Dictionary.removeValue(forKey:)(a1, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

{
  v2 = v1;
  v3 = *v1;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  specialized _NativeDictionary._delete(at:)(v6, v9);
  *v2 = v9;
  return v12;
}

{
  return specialized Dictionary.removeValue(forKey:)(a1, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy());
}

uint64_t specialized Dictionary.removeValue(forKey:)(uint64_t a1, void (*a2)(unint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  v11 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v6;
  v18 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v13 = v18;
  }

  v14 = *(v13 + 48);
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 8))(v14 + *(*(v15 - 8) + 72) * v10, v15);
  v16 = *(*(v13 + 56) + 8 * v10);
  a2(v10, v13);
  *v6 = v13;
  return v16;
}

unint64_t specialized Dictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = result;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v14 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v14;
    }

    v12 = *(v11 + 56) + 16 * v8;
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 8);
    *a2 = v13;
    *(a2 + 8) = v12;
    result = specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 2;
  }

  return result;
}

void specialized RangeReplaceableCollection.removeFirst()()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    MEMORY[0x1B2710B10](0, v1);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v5 = *v0;
  }

  else
  {
    v5 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_20;
  }

  if (!__CocoaSet.count.getter())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);

    if (!v2)
    {
LABEL_6:
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v4 = __CocoaSet.count.getter();
LABEL_16:
    if (v4)
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

Swift::Int TopicCatchupError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](0);
  return Hasher._finalize()();
}

unint64_t PubSubTopic.Participant.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  _StringGuts.grow(_:)(39);

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2710020](v3);

  MEMORY[0x1B2710020](0xD000000000000012, 0x80000001AEE375C0);
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1B2710020](v4, v5);

  MEMORY[0x1B2710020](41, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t static PubSubTopic.Participant.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t PubSubTopic.Participant.init(participantID:isSaltVerified:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PubSubTopic.Participant(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

double PubSubTopic.Configuration.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AEE1ADF0;
  *(a1 + 16) = xmmword_1AEE1AE00;
  *(a1 + 32) = 0x3FF0000000000000;
  *(a1 + 40) = 3;
  result = 10.0;
  *(a1 + 48) = xmmword_1AEE1AE10;
  return result;
}

uint64_t PubSubTopic.Configuration.init(publishPayloadMaxSizeBytes:publishQueueMaxSize:decryptionQueueMaxSize:rpcStreamMaxTries:rpcStreamRetryInterval:refreshDataCryptorMaxTries:refreshDataCryptorInterval:gracefulShutdownWindow:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a7;
  *(a6 + 40) = a5;
  *(a6 + 48) = a8;
  *(a6 + 56) = a9;
  return result;
}