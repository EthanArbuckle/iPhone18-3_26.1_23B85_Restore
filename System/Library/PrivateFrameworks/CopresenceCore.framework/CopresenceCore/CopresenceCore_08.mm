uint64_t closure #2 in closure #2 in ApplicationLauncher.launchApplication(for:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  return MEMORY[0x1EEE6DFA0](closure #2 in closure #2 in ApplicationLauncher.launchApplication(for:options:), 0, 0);
}

uint64_t closure #2 in closure #2 in ApplicationLauncher.launchApplication(for:options:)()
{
  v1 = swift_beginAccess();
  if (is_mul_ok(static ApplicationLauncher._applicationLaunchTimeout, 0x3B9ACA00uLL))
  {
    v2 = 1000000000 * static ApplicationLauncher._applicationLaunchTimeout;
    v3 = *(MEMORY[0x1E69E86C8] + 4);
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = closure #2 in closure #2 in ApplicationLauncher.launchApplication(for:options:);
    v1 = v2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DA60](v1);
}

{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](closure #2 in closure #2 in ApplicationLauncher.launchApplication(for:options:), 0, 0);
  }
}

{
  v19 = v0;
  v1 = v0[10];
  static Task<>.checkCancellation()();
  if (v1)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.default);
  swift_unknownObjectRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v0[5] = v6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CPLaunchableActivitySession_pMd, &_sSo27CPLaunchableActivitySession_pMR);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1AEB26000, v4, v5, "Timed out launching app for activity session %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1B27120C0](v8, -1, -1);
    MEMORY[0x1B27120C0](v7, -1, -1);
  }

  v13 = v0[7];
  v12 = v0[8];
  ObjectType = swift_getObjectType();
  if ((*(v12 + 32))(ObjectType, v12))
  {
    lazy protocol witness table accessor for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError();
    swift_allocError();
    *v15 = 4;
    swift_willThrow();
LABEL_8:
    v16 = v0[1];
    goto LABEL_9;
  }

  v16 = v0[1];
LABEL_9:

  return v16();
}

Swift::Void __swiftcall ApplicationLauncher.revokeBackgroundAuthorization(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;
  v9[5] = countAndFlagsBits;
  v9[6] = object;
  v10 = v1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in ApplicationLauncher.revokeBackgroundAuthorization(for:), v9);
}

uint64_t closure #1 in ApplicationLauncher.revokeBackgroundAuthorization(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in ApplicationLauncher.revokeBackgroundAuthorization(for:), 0, 0);
}

uint64_t closure #1 in ApplicationLauncher.revokeBackgroundAuthorization(for:)()
{
  v1 = *(v0[2] + OBJC_IVAR___CPApplicationLauncherSwift_behaviors);
  v0[5] = v1;
  v2 = v1[2];
  v0[6] = v2;
  if (v2)
  {
    v0[7] = 0;
    v0[8] = v1[4];
    v3 = v1[5];
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 24);
    swift_unknownObjectRetain();
    v12 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = closure #1 in ApplicationLauncher.revokeBackgroundAuthorization(for:);
    v9 = v0[3];
    v8 = v0[4];

    return v12(v9, v8, ObjectType, v3);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in ApplicationLauncher.revokeBackgroundAuthorization(for:), 0, 0);
}

{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  swift_unknownObjectRelease();
  if (v2 + 1 == v3)
  {
    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[7] + 1;
    v0[7] = v6;
    v7 = v0[5] + 16 * v6;
    v0[8] = *(v7 + 32);
    v8 = *(v7 + 40);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 24);
    swift_unknownObjectRetain();
    v15 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v0[9] = v12;
    *v12 = v0;
    v12[1] = closure #1 in ApplicationLauncher.revokeBackgroundAuthorization(for:);
    v14 = v0[3];
    v13 = v0[4];

    return v15(v14, v13, ObjectType, v8);
  }
}

void ApplicationLauncher.revokeBackgroundAuthorization(for:)(void *a1)
{
  v2 = [a1 activity];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD0))(v4, v6);
  }
}

uint64_t ApplicationLauncher.authorizePiP(for:completion:)(uint64_t a1, uint64_t (*a2)(void, void), uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  v11 = *(v3 + OBJC_IVAR___CPApplicationLauncherSwift_pegasusLaunchBehavior);
  if (!v11)
  {
    return a2(0, 0);
  }

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;

  swift_unknownObjectRetain();

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in ApplicationLauncher.authorizePiP(for:completion:), v13);
}

uint64_t closure #1 in ApplicationLauncher.authorizePiP(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = *(*a4 + 216);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = closure #1 in ApplicationLauncher.authorizePiP(for:completion:);

  return v13(a5);
}

uint64_t closure #1 in ApplicationLauncher.authorizePiP(for:completion:)()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = closure #1 in ApplicationLauncher.authorizePiP(for:completion:);
  }

  else
  {
    v3 = closure #1 in ApplicationLauncher.authorizePiP(for:completion:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 24);
  (*(v0 + 16))(1, 0);
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(0, v1);

  v5 = v0[1];

  return v5();
}

Swift::Int ApplicationLauncher.LaunchError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](a1);
  return Hasher._finalize()();
}

void ApplicationLauncher.openApplicationOptions(for:options:)()
{
  v14 = v0;
  if (*(v0 + 120))
  {
    v6 = *MEMORY[0x1E699F8E8];
    *(v0 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 64) = v7;
    AnyHashable.init<A>(_:)();
    *(v0 + 80) = MEMORY[0x1E69E6370];
    *(v0 + 56) = 1;
    outlined init with take of Any((v0 + 56), (v0 + 88));
    v8 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = v8;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 88), v0 + 16, isUniquelyReferenced_nonNull_native);
    outlined destroy of AnyHashable(v0 + 16);
  }

  else
  {
    v1 = TUUnlockDeviceWithPromptFrontBoardOptionsDictionary();
    v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v2);

    v4 = MEMORY[0x1E69E7CC8];
    v5 = swift_isUniquelyReferenced_nonNull_native();
    v13 = v4;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v5, &v13);
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v11 = [objc_opt_self() optionsWithDictionary_];

  if (v11)
  {

    v12 = *(v0 + 8);

    v12(v11);
  }

  else
  {
    __break(1u);
  }
}

void key path setter for static ApplicationLauncher.applicationLaunchTimeout : ApplicationLauncher.Type(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v3 = NSClassFromString(v2);

  if (v3 || (v4 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v5 = NSClassFromString(v4), v4, v5))
  {
    static ApplicationLauncher._applicationLaunchTimeout = v1;
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void static ApplicationLauncher.applicationLaunchTimeout.setter(uint64_t a1)
{
  swift_beginAccess();
  v2 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v3 = NSClassFromString(v2);

  if (v3 || (v4 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL), v5 = NSClassFromString(v4), v4, v5))
  {
    static ApplicationLauncher._applicationLaunchTimeout = a1;
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void (*static ApplicationLauncher.applicationLaunchTimeout.modify(uint64_t a1))(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 24) = static ApplicationLauncher._applicationLaunchTimeout;
  return static ApplicationLauncher.applicationLaunchTimeout.modify;
}

void static ApplicationLauncher.applicationLaunchTimeout.modify(uint64_t a1, char a2)
{
  v3 = *(a1 + 24);
  v4 = MEMORY[0x1B270FF70](0x50747365546E6553, 0xEC00000065626F72);
  v5 = NSClassFromString(v4);

  if (a2)
  {
    if (v5)
    {
      goto LABEL_7;
    }

    v5 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v6 = NSClassFromString(v5);

    if (v6)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!v5)
  {
    v7 = MEMORY[0x1B270FF70](0x7250747365544358, 0xEB0000000065626FLL);
    v8 = NSClassFromString(v7);

    if (!v8)
    {
      __break(1u);
      return;
    }
  }

LABEL_7:
  static ApplicationLauncher._applicationLaunchTimeout = v3;

  swift_endAccess();
}

id ApplicationLauncher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ApplicationLauncher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApplicationLauncher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ApplicationLauncher.launchApp(for:options:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](ApplicationLauncher.launchApp(for:options:), 0, 0);
}

uint64_t ApplicationLauncher.launchApp(for:options:)()
{
  v1 = [*(v0 + 152) activity];
  v2 = [v1 representativeBundleIdentifier];
  *(v0 + 176) = v2;

  if (v2)
  {
    v3 = *((*MEMORY[0x1E69E7D40] & **(v0 + 168)) + 0xE8);
    v12 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v5[1] = ApplicationLauncher.launchApp(for:options:);
    v6 = *(v0 + 160);
    v7 = *(v0 + 168);
    v8 = *(v0 + 152);

    return v12(v8, v6);
  }

  else
  {
    lazy protocol witness table accessor for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

{
  v1 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  *(v0 + 200) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 192);
    v4 = *(v0 + 176);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = ApplicationLauncher.launchApp(for:options:);
    v5 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo15BSProcessHandleCs5Error_pGMd, &_sSccySo15BSProcessHandleCs5Error_pGMR);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned BSProcessHandle?, @unowned NSError?) -> () with result type BSProcessHandle;
    *(v0 + 104) = &block_descriptor_5;
    *(v0 + 112) = v5;
    [v2 openApplication:v4 withOptions:v3 completion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v6 = *(v0 + 192);

    v7 = *(v0 + 8);

    return v7();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = ApplicationLauncher.launchApp(for:options:);
  }

  else
  {
    v3 = ApplicationLauncher.launchApp(for:options:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[22];
  swift_willThrow();

  v5 = v0[26];
  v6 = v0[1];

  return v6();
}

uint64_t ApplicationLauncher.launchApp(for:options:)(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = a1;

  return MEMORY[0x1EEE6DFA0](ApplicationLauncher.launchApp(for:options:), 0, 0);
}

void *@objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned BSProcessHandle?, @unowned NSError?) -> () with result type BSProcessHandle(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for ApplicationLaunchProviding.launchApp(for:options:) in conformance ApplicationLauncher(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return ApplicationLauncher.launchApp(for:options:)(a1, a2);
}

uint64_t partial apply for closure #2 in ApplicationLauncher.launchApplication(for:options:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in ApplicationLauncher.launchApplication(for:options:completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in ApplicationLauncher.revokeBackgroundAuthorization(for:)(uint64_t a1)
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

  return closure #1 in ApplicationLauncher.revokeBackgroundAuthorization(for:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in ApplicationLauncher.authorizePiP(for:completion:)(uint64_t a1)
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

  return closure #1 in ApplicationLauncher.authorizePiP(for:completion:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of AnyHashable(a1, a2);

  return outlined init with copy of Any(a1 + 40, a2 + 40);
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x68uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = type metadata accessor for UUID();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[9] = v9;
  if (v5)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v7[10] = v11;
  v13 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v10 + 16))(v12, a2, v8);
  v7[11] = specialized Dictionary._Variant.asNative.modify(v7);
  v7[12] = specialized _NativeDictionary.subscript.modify(v7 + 4, v12, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = type metadata accessor for UUID();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      specialized _NativeDictionary.copy()();
      v15 = v23;
      goto LABEL_14;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a3 & 1);
    v24 = *v4;
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v21 & 1) == (v25 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v26 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v26 = 0;
  }

  *v10 = v26;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 56);
  if (v2)
  {
    v4 = *v1[2];
    v5 = v1[6];
    if ((*a1)[7])
    {
      *(*(v4 + 56) + 8 * v5) = v2;
    }

    else
    {
      v8 = v1[5];
      (*(v1[4] + 16))(v8, v1[1], v1[3]);
      specialized _NativeDictionary._insert(at:key:value:)(v5, v8, v2, v4);
    }
  }

  else if ((*a1)[7])
  {
    v6 = v1[6];
    v7 = *v1[2];
    (*(v1[4] + 8))(*(v7 + 48) + *(v1[4] + 72) * v6, v1[3]);
    specialized _NativeDictionary._delete(at:)(v6, v7);
  }

  v9 = v1[5];
  v10 = *v1;

  free(v9);

  free(v1);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

unint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v54 = a1;
  v55 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v56 = v8;
  v57 = 0;
  v58 = v11 & v9;
  v59 = a2;
  v60 = a3;

  specialized LazyMapSequence.Iterator.next()(&v50);
  if (!*(&v51 + 1))
  {
    goto LABEL_25;
  }

  v47 = v50;
  v48 = v51;
  v49 = v52;
  outlined init with take of Any(v53, v46);
  v12 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(&v47);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = v14;
  if (v12[3] < v18)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v20 = *a5;
    result = specialized __RawDictionaryStorage.find<A>(_:)(&v47);
    if ((v19 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    specialized _NativeDictionary.copy()();
    result = v25;
    v22 = *a5;
    if (v19)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v19)
  {
LABEL_11:
    v23 = result;
    outlined destroy of AnyHashable(&v47);
    v24 = (v22[7] + 32 * v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    outlined init with take of Any(v46, v24);
    goto LABEL_15;
  }

LABEL_13:
  v22[(result >> 6) + 8] |= 1 << result;
  v26 = v22[6] + 40 * result;
  v27 = v47;
  v28 = v48;
  *(v26 + 32) = v49;
  *v26 = v27;
  *(v26 + 16) = v28;
  result = outlined init with take of Any(v46, (v22[7] + 32 * result));
  v29 = v22[2];
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v17)
  {
    v22[2] = v30;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v50);
    if (*(&v51 + 1))
    {
      v19 = 1;
      do
      {
        v47 = v50;
        v48 = v51;
        v49 = v52;
        outlined init with take of Any(v53, v46);
        v33 = *a5;
        result = specialized __RawDictionaryStorage.find<A>(_:)(&v47);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v17 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v17)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, 1);
          v38 = *a5;
          result = specialized __RawDictionaryStorage.find<A>(_:)(&v47);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;
          outlined destroy of AnyHashable(&v47);
          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_1Tm(v32);
          outlined init with take of Any(v46, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = v40[6] + 40 * result;
          v42 = v47;
          v43 = v48;
          *(v41 + 32) = v49;
          *v41 = v42;
          *(v41 + 16) = v43;
          result = outlined init with take of Any(v46, (v40[7] + 32 * result));
          v44 = v40[2];
          v17 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v17)
          {
            goto LABEL_27;
          }

          v40[2] = v45;
        }

        specialized LazyMapSequence.Iterator.next()(&v50);
      }

      while (*(&v51 + 1));
    }

LABEL_25:
    outlined consume of Set<String>.Iterator._Variant();
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  specialized LazyMapSequence.Iterator.next()(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  outlined init with take of Any(v46, v44);
  v14 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a4 & 1);
    v22 = *a5;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    specialized _NativeDictionary.copy()();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    outlined init with take of Any(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = outlined init with take of Any(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        outlined init with take of Any(v46, v44);
        v33 = *a5;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, 1);
          v38 = *a5;
          result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_1Tm(v32);
          outlined init with take of Any(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = outlined init with take of Any(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        specialized LazyMapSequence.Iterator.next()(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    outlined consume of Set<String>.Iterator._Variant();
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  specialized LazyMapSequence.Iterator.next()(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  outlined init with take of Any(v46, v44);
  v14 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a4 & 1);
    v22 = *a5;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    specialized _NativeDictionary.copy()();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    outlined init with take of Any(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = outlined init with take of Any(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        outlined init with take of Any(v46, v44);
        v33 = *a5;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, 1);
          v38 = *a5;
          result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_1Tm(v32);
          outlined init with take of Any(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = outlined init with take of Any(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        specialized LazyMapSequence.Iterator.next()(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    outlined consume of Set<TUConversationActivitySession>.Iterator._Variant(v47, v48, v49, v50, v51);
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError()
{
  result = lazy protocol witness table cache variable for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError;
  if (!lazy protocol witness table cache variable for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError;
  if (!lazy protocol witness table cache variable for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApplicationLauncher.LaunchError and conformance ApplicationLauncher.LaunchError);
  }

  return result;
}

void type metadata completion function for ApplicationLauncher()
{
  type metadata accessor for AsyncStream<String>.Continuation?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ApplicationLauncher.revokeBackgroundAuthorization(for:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))();
}

uint64_t dispatch thunk of ApplicationLauncher.openApplicationOptions(for:options:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xE8);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of ApplicationLauncher.openApplicationOptions(for:options:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of ApplicationLauncher.openApplicationOptions(for:options:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void type metadata accessor for AsyncStream<String>.Continuation?()
{
  if (!lazy cache variable for type metadata for AsyncStream<String>.Continuation?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScS12ContinuationVySS_GMd, &_sScS12ContinuationVySS_GMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AsyncStream<String>.Continuation?);
    }
  }
}

uint64_t getEnumTagSinglePayload for ApplicationLauncher.LaunchError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ApplicationLauncher.LaunchError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t partial apply for closure #2 in ApplicationLauncher.launchApplication(for:options:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #2 in ApplicationLauncher.launchApplication(for:options:)(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t partial apply for closure #1 in closure #2 in ApplicationLauncher.launchApplication(for:options:)(uint64_t a1)
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

  return closure #1 in closure #2 in ApplicationLauncher.launchApplication(for:options:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #2 in closure #2 in ApplicationLauncher.launchApplication(for:options:)(uint64_t a1)
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

  return closure #2 in closure #2 in ApplicationLauncher.launchApplication(for:options:)(a1, v4, v5, v6, v7, v9);
}

uint64_t objectdestroy_7Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();
  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ()(unsigned __int8 *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t Sequence<>.asSet()(uint64_t a1)
{
  v3 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  swift_getAssociatedTypeWitness();
  return Set.init<A>(_:)();
}

uint64_t specialized XPCClient.withHost(body:errorHandler:)(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v14 = a5();
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  aBlock[3] = a6;
  v15 = _Block_copy(aBlock);

  v16 = [v14 remoteObjectProxyWithErrorHandler_];
  _Block_release(v15);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  result = swift_dynamicCast();
  if (result)
  {
    v20 = v18;
    a1(&v20);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t BackgroundSessionManagerClient.delegate.getter()
{
  v1 = v0 + direct field offset for BackgroundSessionManagerClient.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t BackgroundSessionManagerClient.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + direct field offset for BackgroundSessionManagerClient.delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*BackgroundSessionManagerClient.delegate.modify(uint64_t *a1))()
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
  v5 = direct field offset for BackgroundSessionManagerClient.delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return BackgroundSessionManagerClient.delegate.modify;
}

uint64_t BackgroundSessionManagerClient.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for BackgroundSessionManagerClient.id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id BackgroundSessionManagerClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *BackgroundSessionManagerClient.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[direct field offset for BackgroundSessionManagerClient.delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v8, sel_init);
  v3 = &v2[direct field offset for XPCClient.connectionClosure];
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = closure #1 in BackgroundSessionManagerClient.init();
  v3[1] = 0;
  v6 = v2;
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v4);

  return v6;
}

id closure #1 in BackgroundSessionManagerClient.init()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v1 = MEMORY[0x1B270FF70](0xD000000000000027, 0x80000001AEE2E9D0);
  v2 = [v0 initWithServiceName_];

  return v2;
}

char *@objc BackgroundSessionManagerClient.init()(char *a1)
{
  ObjectType = swift_getObjectType();
  *&a1[direct field offset for BackgroundSessionManagerClient.delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  v9.receiver = a1;
  v9.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v9, sel_init);
  v4 = &v3[direct field offset for XPCClient.connectionClosure];
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = closure #1 in BackgroundSessionManagerClient.init();
  v4[1] = 0;
  v7 = v3;
  _sxRi_zRi0_zlyytIseghHr_SgWOe(v5);

  return v7;
}

Swift::Void __swiftcall BackgroundSessionManagerClient.handleServerDisconnect()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + direct field offset for XPCClient.queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (one-time initialization token for client == -1)
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
  __swift_project_value_buffer(v9, static Log.client);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1AEB26000, v10, v11, "Server disconnected", v12, 2u);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  v13 = v1 + direct field offset for BackgroundSessionManagerClient.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    (*(v14 + 8))(v1, &protocol witness table for BackgroundSessionManagerClient, ObjectType, v14);
    swift_unknownObjectRelease();
  }
}

uint64_t BackgroundSessionManagerClient.__ivar_destroyer()
{
  outlined destroy of weak ActivitySessionManagerProtocol?(v0 + direct field offset for BackgroundSessionManagerClient.delegate);
  v1 = direct field offset for BackgroundSessionManagerClient.id;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id BackgroundSessionManagerClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc BackgroundSessionManagerClient.__ivar_destroyer(uint64_t a1)
{
  outlined destroy of weak ActivitySessionManagerProtocol?(a1 + direct field offset for BackgroundSessionManagerClient.delegate);
  v2 = direct field offset for BackgroundSessionManagerClient.id;
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t protocol witness for Identifiable.id.getter in conformance BackgroundSessionManagerClient@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = direct field offset for BackgroundSessionManagerClient.id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t BackgroundSessionManagerClient.prewarm(completion:)(uint64_t a1, uint64_t a2)
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
  v15 = *&v2[direct field offset for XPCClient.queue];
  v16 = swift_allocObject();
  v16[2] = v2;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = partial apply for closure #1 in BackgroundSessionManagerClient.prewarm(completion:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6;
  v17 = _Block_copy(aBlock);
  v18 = v2;

  static DispatchQoS.unspecified.getter();
  v20[1] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v14, v9, v17);
  _Block_release(v17);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

uint64_t closure #1 in BackgroundSessionManagerClient.prewarm(completion:)(uint64_t a1, uint64_t (*a2)(void *a1), uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  v7 = specialized XPCClient.connection.getter(v6);
  v17 = partial apply for closure #2 in closure #1 in BackgroundSessionManagerClient.prewarm(completion:);
  v18 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v16 = &block_descriptor_98;
  v8 = _Block_copy(&aBlock);

  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v8);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33BackgroundSessionManagerXPCClient_pMd, &_s14CopresenceCore33BackgroundSessionManagerXPCClient_pMR);
  result = swift_dynamicCast();
  if (result)
  {
    v17 = a2;
    v18 = a3;
    aBlock = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    v16 = &block_descriptor_101_0;
    v11 = _Block_copy(&aBlock);

    [v12 prewarmWithCompletion_];
    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in BackgroundSessionManagerClient.begin(request:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *a1), uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  v9 = specialized XPCClient.connection.getter(v8);
  v19 = partial apply for closure #2 in closure #1 in BackgroundSessionManagerClient.begin(request:completion:);
  v20 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v18 = &block_descriptor_89_1;
  v10 = _Block_copy(&aBlock);

  v11 = [v9 remoteObjectProxyWithErrorHandler_];
  _Block_release(v10);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33BackgroundSessionManagerXPCClient_pMd, &_s14CopresenceCore33BackgroundSessionManagerXPCClient_pMR);
  result = swift_dynamicCast();
  if (result)
  {
    v19 = a3;
    v20 = a4;
    aBlock = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    v18 = &block_descriptor_92;
    v13 = _Block_copy(&aBlock);

    [v14 beginWithRequest:a2 completion:v13];
    _Block_release(v13);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t BackgroundSessionManagerClient.leave(identifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *&v3[direct field offset for XPCClient.queue];
  (*(v14 + 16))(v16, a1, v13);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  (*(v14 + 32))(v19 + v17, v16, v13);
  v20 = (v19 + v18);
  v21 = v27;
  *v20 = v26;
  v20[1] = v21;
  aBlock[4] = partial apply for closure #1 in BackgroundSessionManagerClient.leave(identifier:completion:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_12;
  v22 = _Block_copy(aBlock);
  v23 = v3;

  static DispatchQoS.unspecified.getter();
  v32 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v12, v8, v22);
  _Block_release(v22);
  (*(v31 + 8))(v8, v5);
  (*(v29 + 8))(v12, v30);
}

uint64_t closure #1 in BackgroundSessionManagerClient.leave(identifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v15 = a2;
  v16 = a3;
  v17 = a4;
  (*(v8 + 16))(&v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v7);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  (*(v8 + 32))(v11 + v10, &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v7);
  v12 = (v11 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = a3;
  v12[1] = a4;

  specialized XPCClient.withHost(body:errorHandler:)(partial apply for closure #1 in closure #1 in BackgroundSessionManagerClient.leave(identifier:completion:), v14, partial apply for closure #2 in closure #1 in BackgroundSessionManagerClient.leave(identifier:completion:), v11, specialized XPCClient.connection.getter, &block_descriptor_80, &_s14CopresenceCore33BackgroundSessionManagerXPCClient_pMd, &_s14CopresenceCore33BackgroundSessionManagerXPCClient_pMR);
}

void closure #1 in closure #1 in BackgroundSessionManagerClient.leave(identifier:completion:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v9[3] = &block_descriptor_83_1;
  v8 = _Block_copy(v9);

  [v6 leaveWithIdentifier:isa completion:v8];
  _Block_release(v8);
}

uint64_t closure #2 in closure #1 in BackgroundSessionManagerClient.leave(identifier:completion:)(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.client);
  (*(v9 + 16))(v12, a2, v8);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = a4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v32 = v19;
    *v18 = 136315394;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = a3;
    v22 = v21;
    (*(v9 + 8))(v12, v8);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v32);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v31 = a1;
    v24 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v25 = String.init<A>(reflecting:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v32);
    a3 = v30;

    *(v18 + 14) = v27;
    _os_log_impl(&dword_1AEB26000, v15, v16, "Error leaving identifier %s: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v19, -1, -1);
    MEMORY[0x1B27120C0](v18, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  return a3(a1);
}

uint64_t BackgroundSessionManagerClient.updateMembers(identifier:members:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v32 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v31 = *(v33 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *&v4[direct field offset for XPCClient.queue];
  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  (*(v13 + 32))(v18 + v16, v15, v12);
  v19 = v28;
  *(v18 + v17) = v27;
  v20 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v21 = v29;
  *v20 = v19;
  v20[1] = v21;
  aBlock[4] = partial apply for closure #1 in BackgroundSessionManagerClient.updateMembers(identifier:members:completion:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_18;
  v22 = _Block_copy(aBlock);
  v23 = v4;

  static DispatchQoS.unspecified.getter();
  v35 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v24 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v11, v8, v22);
  _Block_release(v22);
  (*(v34 + 8))(v8, v24);
  (*(v31 + 8))(v11, v33);
}

uint64_t closure #1 in BackgroundSessionManagerClient.updateMembers(identifier:members:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[1] = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  (*(v10 + 16))(v12, a2, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v13, v12, v9);
  *(v15 + v14) = a3;
  v16 = (v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a4;
  v16[1] = a5;

  specialized XPCClient.withSynchronousHost<A>(body:errorHandler:)(partial apply for closure #1 in closure #1 in BackgroundSessionManagerClient.updateMembers(identifier:members:completion:), v19, partial apply for closure #2 in closure #1 in BackgroundSessionManagerClient.updateMembers(identifier:members:completion:), v15);
}

void closure #1 in closure #1 in BackgroundSessionManagerClient.updateMembers(identifier:members:completion:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject();
  v9 = Set._bridgeToObjectiveC()().super.isa;
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v11[3] = &block_descriptor_74;
  v10 = _Block_copy(v11);

  [v7 updateMembersWithIdentifier:isa members:v9 completion:v10];
  _Block_release(v10);
}

uint64_t closure #2 in closure #1 in BackgroundSessionManagerClient.updateMembers(identifier:members:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.client);
  (*(v10 + 16))(v13, a2, v9);

  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v35 = a5;
    v19 = v18;
    v34 = swift_slowAlloc();
    v38 = v34;
    *v19 = 136315650;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = a4;
    v22 = v21;
    (*(v10 + 8))(v13, v9);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v38);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    v24 = Set.description.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v38);

    *(v19 + 14) = v26;
    *(v19 + 22) = 2080;
    a4 = v36;
    v37 = a1;
    v27 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v28 = String.init<A>(reflecting:)();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v38);

    *(v19 + 24) = v30;
    _os_log_impl(&dword_1AEB26000, v16, v17, "Error updating members identifier %s: with members: %s error: %s", v19, 0x20u);
    v31 = v34;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v31, -1, -1);
    MEMORY[0x1B27120C0](v19, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  return a4(a1);
}

uint64_t BackgroundSessionManagerClient.updateShare(_:activityID:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v31 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v31 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v32 = *(v10 - 8);
  v33 = v10;
  v11 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *&v4[direct field offset for XPCClient.queue];
  (*(v15 + 16))(v17, a2, v14);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = a1;
  (*(v15 + 32))(v20 + v18, v17, v14);
  v21 = (v20 + v19);
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  aBlock[4] = partial apply for closure #1 in BackgroundSessionManagerClient.updateShare(_:activityID:completion:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_24;
  v23 = _Block_copy(aBlock);
  v24 = v4;
  v25 = a1;

  static DispatchQoS.unspecified.getter();
  v35 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v26 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v13, v9, v23);
  _Block_release(v23);
  (*(v34 + 8))(v9, v26);
  (*(v32 + 8))(v13, v33);
}

uint64_t closure #1 in BackgroundSessionManagerClient.updateShare(_:activityID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;

  specialized XPCClient.withSynchronousHost<A>(body:errorHandler:)(partial apply for closure #1 in closure #1 in BackgroundSessionManagerClient.updateShare(_:activityID:completion:), v9, partial apply for closure #2 in closure #1 in BackgroundSessionManagerClient.updateShare(_:activityID:completion:), v7);
}

void closure #1 in closure #1 in BackgroundSessionManagerClient.updateShare(_:activityID:completion:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v11[3] = &block_descriptor_68;
  v10 = _Block_copy(v11);

  [v8 updateShare:a2 activityID:isa completion:v10];
  _Block_release(v10);
}

uint64_t closure #2 in closure #1 in BackgroundSessionManagerClient.prewarm(completion:)(void *a1, uint64_t (*a2)(void *), uint64_t a3, const char *a4)
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.client);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    v13 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1AEB26000, v9, v10, a4, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1B27120C0](v12, -1, -1);
    MEMORY[0x1B27120C0](v11, -1, -1);
  }

  return a2(a1);
}

uint64_t protocol witness for BackgroundSessionManagerClientProtocol.delegate.getter in conformance BackgroundSessionManagerClient()
{
  v1 = v0 + direct field offset for BackgroundSessionManagerClient.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t protocol witness for BackgroundSessionManagerClientProtocol.delegate.setter in conformance BackgroundSessionManagerClient(uint64_t a1, uint64_t a2)
{
  v4 = v2 + direct field offset for BackgroundSessionManagerClient.delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for BackgroundSessionManagerClientProtocol.delegate.modify in conformance BackgroundSessionManagerClient(uint64_t *a1))()
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
  v5 = direct field offset for BackgroundSessionManagerClient.delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return protocol witness for BackgroundSessionManagerClientProtocol.delegate.modify in conformance BackgroundSessionManagerClient;
}

uint64_t BackgroundSessionManagerClient.begin(request:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v15 = *(v28 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *&v6[direct field offset for XPCClient.queue];
  v19 = swift_allocObject();
  v19[2] = v6;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = a3;
  aBlock[4] = v25;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v26;
  v20 = _Block_copy(aBlock);
  v21 = v6;
  v22 = a1;

  static DispatchQoS.unspecified.getter();
  v29 = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27106E0](0, v18, v14, v20);
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v28);
}

uint64_t closure #1 in BackgroundSessionManagerClient.createPresenceSession(with:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *a1), uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  v9 = specialized XPCClient.connection.getter(v8);
  v19 = partial apply for closure #2 in closure #1 in BackgroundSessionManagerClient.createPresenceSession(with:completion:);
  v20 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v18 = &block_descriptor_59;
  v10 = _Block_copy(&aBlock);

  v11 = [v9 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v10);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33BackgroundSessionManagerXPCClient_pMd, &_s14CopresenceCore33BackgroundSessionManagerXPCClient_pMR);
  result = swift_dynamicCast();
  if (result)
  {
    v19 = a3;
    v20 = a4;
    aBlock = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = thunk for @escaping @callee_guaranteed (@guaranteed PresenceSessionConnectionInfo?, @guaranteed Error?) -> ();
    v18 = &block_descriptor_62;
    v13 = _Block_copy(&aBlock);

    [v14 createPresenceSessionWith:a2 completion:v13];
    _Block_release(v13);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in closure #1 in BackgroundSessionManagerClient.createPresenceSession(with:completion:)(void *a1, uint64_t (*a2)(void, void *))
{
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.client);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEB26000, v6, v7, "Error creating presence session: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1B27120C0](v9, -1, -1);
    MEMORY[0x1B27120C0](v8, -1, -1);
  }

  return a2(0, a1);
}

uint64_t @objc BackgroundSessionManagerClient.begin(request:completion:)(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

Swift::Void __swiftcall BackgroundSessionManagerClient.update(activitySessions:)(Swift::OpaquePointer activitySessions)
{
  v3 = v1 + direct field offset for BackgroundSessionManagerClient.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 16))(v1, &protocol witness table for BackgroundSessionManagerClient, activitySessions._rawValue, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

uint64_t BackgroundSessionManagerClient.sessionDidRejectKeyRecoveryRequest(sessionID:)(uint64_t a1)
{
  v3 = v1 + direct field offset for BackgroundSessionManagerClient.delegate;
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

uint64_t BackgroundSessionManagerClient.sessionDidReceiveUpdatedUnknownParticipantList(sessionID:unknownParticipants:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + direct field offset for BackgroundSessionManagerClient.delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 32))(a1, a2, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t partial apply for closure #1 in BackgroundSessionManagerClient.leave(identifier:completion:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return closure #1 in BackgroundSessionManagerClient.leave(identifier:completion:)(v3, v0 + v2, v5, v6);
}

uint64_t partial apply for closure #1 in BackgroundSessionManagerClient.updateMembers(identifier:members:completion:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return closure #1 in BackgroundSessionManagerClient.updateMembers(identifier:members:completion:)(v4, v0 + v2, v5, v7, v8);
}

uint64_t partial apply for closure #1 in BackgroundSessionManagerClient.updateShare(_:activityID:completion:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return closure #1 in BackgroundSessionManagerClient.updateShare(_:activityID:completion:)(v3, v4, v0 + v2, v6, v7);
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t type metadata accessor for BackgroundSessionManagerClient()
{
  result = type metadata singleton initialization cache for BackgroundSessionManagerClient;
  if (!type metadata singleton initialization cache for BackgroundSessionManagerClient)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for BackgroundSessionManagerClient()
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

unint64_t lazy protocol witness table accessor for type TUHandle and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type TUHandle and conformance NSObject;
  if (!lazy protocol witness table cache variable for type TUHandle and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUHandle and conformance NSObject);
  }

  return result;
}

uint64_t partial apply for closure #2 in closure #1 in BackgroundSessionManagerClient.updateMembers(identifier:members:completion:)(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return closure #2 in closure #1 in BackgroundSessionManagerClient.updateMembers(identifier:members:completion:)(a1, v1 + v4, v6, v8, v9);
}

uint64_t partial apply for closure #2 in closure #1 in BackgroundSessionManagerClient.leave(identifier:completion:)(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return closure #2 in closure #1 in BackgroundSessionManagerClient.leave(identifier:completion:)(a1, v1 + v4, v6, v7);
}

uint64_t type metadata completion function for PresenceStatus(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for PresenceStatus(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *storeEnumTagSinglePayload for PresenceStatus(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

void specialized FastSyncAnalyticsReporter.logEvent(viewName:coreAnalyticsDictionary:)(uint64_t a1, unint64_t a2, uint64_t a3)
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
    aBlock[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, aBlock);
    *(v9 + 12) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo8NSObjectCGMd, &_sSDySSSo8NSObjectCGMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, aBlock);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_1AEB26000, v7, v8, "Logged coreanalytics event %s %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v10, -1, -1);
    MEMORY[0x1B27120C0](v9, -1, -1);
  }

  v14 = MEMORY[0x1B270FF70](a1, a2);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  aBlock[4] = partial apply for closure #1 in ActivitySession.logDurationMetric(_:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_7;
  v16 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v16);
}

uint64_t specialized FastSyncAnalyticsReporter.collectPresentParticipants(_:_:_:maxAllowedParticipants:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE07B30;
  *(inited + 32) = 0x5F6E6F6973736573;
  *(inited + 40) = 0xEA00000000006469;
  v12 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v13 = MEMORY[0x1B270FF70](a1, a2);
  v14 = [v12 initWithString_];

  *(inited + 48) = v14;
  *(inited + 56) = 0x695F656C646E7562;
  *(inited + 64) = 0xE900000000000064;
  v15 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v16 = a4;
  v17 = MEMORY[0x1B270FF70](a3, a4);
  v18 = [v15 initWithString_];

  *(inited + 72) = v18;
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 88) = 0x80000001AEE323D0;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 104) = 0xD000000000000019;
  *(inited + 112) = 0x80000001AEE323F0;
  if (a6)
  {
    v19 = 7562585;
  }

  else
  {
    v19 = 28494;
  }

  if (a6)
  {
    v20 = 0xE300000000000000;
  }

  else
  {
    v20 = 0xE200000000000000;
  }

  v21 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v22 = MEMORY[0x1B270FF70](v19, v20);

  v23 = [v21 initWithString_];

  *(inited + 120) = v23;
  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  specialized FastSyncAnalyticsReporter.logEvent(viewName:coreAnalyticsDictionary:)(a3, v16, v24);
}

uint64_t specialized FastSyncAnalyticsReporter.collectInvitedMembers(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(a5 + 16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEE09B00;
  *(inited + 32) = 0x5F6E6F6973736573;
  *(inited + 40) = 0xEA00000000006469;
  v11 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v12 = MEMORY[0x1B270FF70](a1, a2);
  v13 = [v11 initWithString_];

  *(inited + 48) = v13;
  *(inited + 56) = 0x695F656C646E7562;
  *(inited + 64) = 0xE900000000000064;
  v14 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v15 = MEMORY[0x1B270FF70](a3, a4);
  v16 = [v14 initWithString_];

  *(inited + 72) = v16;
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 88) = 0x80000001AEE323B0;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  specialized FastSyncAnalyticsReporter.logEvent(viewName:coreAnalyticsDictionary:)(a3, a4, v17);
}

BOOL static PluginAttachmentLedgerTopic.State.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[5];
  v3 = a2[5];
  if (v2 >> 62)
  {
    if (v2 >> 62 == 1)
    {
      v4 = 4;
      v5 = v3 >> 62;
      if (!(v3 >> 62))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = *a1;
      v7 = a1[3];
      v8 = a1[4] | a1[6];
      v9 = a1[2] | a1[1];
      if (v2 != 0x8000000000000000 || v8 | v6 | v7 | v9)
      {
        if (v8 | v7 | v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == 1;
        }

        v12 = v11 && v2 == 0x8000000000000000;
        v4 = 2;
        if (!v12)
        {
          v4 = 3;
        }

        v5 = v3 >> 62;
        if (!(v3 >> 62))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v4 = 0;
        v5 = v3 >> 62;
        if (!(v3 >> 62))
        {
LABEL_10:
          v10 = 1;
          return v4 < v10;
        }
      }
    }
  }

  else
  {
    v4 = 1;
    v5 = v3 >> 62;
    if (!(v3 >> 62))
    {
      goto LABEL_10;
    }
  }

  if (v5 == 1)
  {
    v10 = 4;
  }

  else
  {
    v13 = *a2;
    v14 = a2[3];
    v15 = a2[2] | a2[1];
    v16 = a2[4] | a2[6];
    if (v3 != 0x8000000000000000 || v15 | v13 | v14 | v16)
    {
      if (v15 | v14 | v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = v13 == 1;
      }

      v18 = v17 && v3 == 0x8000000000000000;
      v10 = 2;
      if (!v18)
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v4 < v10;
}

uint64_t PluginAttachmentLedgerTopic.Configuration.init(proto:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = 1.0;
  if (v3)
  {
    v5 = v3 / 1000.0;
  }

  v6 = a1[2];
  v7 = a1[3];
  result = outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, type metadata accessor for AttachmentLedger_CreateTopicResponse.ClientTopicConfig);
  v9 = v7;
  if (!v7)
  {
    v9 = 1.0;
  }

  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = 3;
  }

  if (v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = 2;
  }

  *a2 = v11;
  *(a2 + 8) = v5;
  *(a2 + 16) = v10;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0x4024000000000000;
  return result;
}

uint64_t PluginAttachmentLedgerTopic.description.getter()
{
  v12 = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v17 = 0;
  v18 = 0xE000000000000000;
  MEMORY[0x1B2710020](0xD000000000000022, 0x80000001AEE32410);
  v11 = v0;
  v1 = String.init<A>(reflecting:)();
  MEMORY[0x1B2710020](v1);

  v2 = MEMORY[0x1B2710020](0x3D6574617473202CLL, 0xE800000000000000);
  (*(*v0 + 288))(&v11, v2);
  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = PluginAttachmentLedgerTopic.State.description.getter();
  MEMORY[0x1B2710020](v9);
  outlined consume of PluginAttachmentLedgerTopic.State(v3, v4, v5, v6, v7, v8);

  MEMORY[0x1B2710020](0x3D656D616E202CLL, 0xE700000000000000);
  MEMORY[0x1B2710020](v0[14], v0[15]);
  return v17;
}

void __swiftcall PluginAttachmentLedgerTopic.Configuration.init(maxSubscribeRetries:subscribeRetryInterval:maxDataCryptorRetries:dataCryptorRetryInterval:gracefulShutdownWindowInterval:)(CopresenceCore::PluginAttachmentLedgerTopic::Configuration *__return_ptr retstr, Swift::Int maxSubscribeRetries, Swift::Double subscribeRetryInterval, Swift::Int maxDataCryptorRetries, Swift::Double dataCryptorRetryInterval, Swift::Double gracefulShutdownWindowInterval)
{
  retstr->maxSubscribeRetries = maxSubscribeRetries;
  retstr->subscribeRetryInterval = subscribeRetryInterval;
  retstr->maxDataCryptorRetries = maxDataCryptorRetries;
  retstr->dataCryptorRetryInterval = dataCryptorRetryInterval;
  retstr->gracefulShutdownWindowInterval = gracefulShutdownWindowInterval;
}

uint64_t PluginAttachmentLedgerTopic.__allocating_init(name:service:dataCryptorProvider:config:localParticipantID:initialAttachments:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  PluginAttachmentLedgerTopic.init(name:service:dataCryptorProvider:config:localParticipantID:initialAttachments:)(a1, a2, a3, a4, a5, a6, a7);
  return v17;
}

uint64_t UploadToken.token.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UploadToken.storageLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UploadToken(0) + 24);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UploadToken.accountID.getter()
{
  v1 = (v0 + *(type metadata accessor for UploadToken(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t UploadToken.init(token:expirationDate:storageLocation:accountID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  v12 = type metadata accessor for UploadToken(0);
  v13 = v12[5];
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 32))(&a7[v13], a3, v14);
  v15 = v12[6];
  v16 = type metadata accessor for URL();
  result = (*(*(v16 - 8) + 32))(&a7[v15], a4, v16);
  v18 = &a7[v12[7]];
  *v18 = a5;
  *(v18 + 1) = a6;
  return result;
}

uint64_t protocol witness for Token.accountID.getter in conformance UploadToken(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t UploadToken.expirationDate.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t DownloadToken.accountID.getter()
{
  v1 = (v0 + *(type metadata accessor for DownloadToken(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DownloadToken.init(token:expirationDate:accountID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for DownloadToken(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Date();
  result = (*(*(v12 - 8) + 32))(&a6[v11], a3, v12);
  v14 = &a6[*(v10 + 24)];
  *v14 = a4;
  *(v14 + 1) = a5;
  return result;
}

uint64_t protocol witness for Token.expirationDate.getter in conformance UploadToken@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Token.accountID.getter in conformance DownloadToken(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t UploadToken.init(from:requestTime:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v51 = a3;
  v55 = a2;
  v4 = type metadata accessor for Date();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for URL.DirectoryHint();
  v7 = *(v49 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v43 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v52 = &v43 - v21;
  v22 = a1[4];
  v23 = a1[5];
  v24 = a1;
  URL.init(string:)();
  v25 = *(v16 + 48);
  v48 = v15;
  if (v25(v14, 1, v15) == 1)
  {
    outlined destroy of NSObject?(v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
    (*(v53 + 8))(v55, v54);
    return outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  }

  else
  {
    v28 = a1[3];
    v47 = a1[2];
    v56 = v47;
    v57 = v28;
    v29 = v49;
    (*(v7 + 104))(v10, *MEMORY[0x1E6968F70], v49);
    lazy protocol witness table accessor for type String and conformance String();
    v46 = v28;
    swift_bridgeObjectRetain_n();
    URL.appending<A>(component:directoryHint:)();
    (*(v7 + 8))(v10, v29);

    v30 = v14;
    v31 = v48;
    (*(v16 + 8))(v30, v48);
    v45 = *(v16 + 32);
    v45(v52, v20, v31);
    v32 = a1[1];
    v49 = *a1;
    v44 = v32;
    v33 = (a1[6] / 0x3E8uLL);
    v34 = v53;
    v35 = v54;
    v36 = v55;
    (*(v53 + 16))(v50, v55, v54);
    v37 = type metadata accessor for UploadToken(0);
    v38 = v37[5];

    v39 = v51;
    Date.init(timeInterval:since:)();
    (*(v34 + 8))(v36, v35);
    v45(v39 + v37[6], v52, v31);
    v40 = v44;
    *v39 = v49;
    v39[1] = v40;
    v41 = (v39 + v37[7]);
    v42 = v46;
    *v41 = v47;
    v41[1] = v42;
    return outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v24, type metadata accessor for AttachmentLedger_AuthPutMaterials);
  }
}

uint64_t DownloadToken.init(from:requestTime:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = a1[2];
  v10 = a1[3];
  v12 = (a1[6] / 0x3E8uLL);
  (*(v7 + 16))(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v13 = type metadata accessor for DownloadToken(0);
  v14 = *(v13 + 20);

  Date.init(timeInterval:since:)();
  (*(v7 + 8))(a2, v6);
  v16 = a1[4];
  v15 = a1[5];

  result = outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(a1, type metadata accessor for AttachmentLedger_AttachmentAuthGetToken);
  *a3 = v11;
  a3[1] = v10;
  v18 = (a3 + *(v13 + 24));
  *v18 = v16;
  v18[1] = v15;
  return result;
}

uint64_t Attachment.attachment.getter()
{
  type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  return static Message.with(_:)();
}

uint64_t closure #1 in Attachment.attachment.getter(uint64_t *a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UnencryptedAttachment(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = UUID.uuid.getter();
  v33 = v13;
  v14 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(&v32, &v34);
  v16 = v15;
  outlined consume of Data._Representation(*a1, a1[1]);
  *a1 = v14;
  a1[1] = v16;
  v17 = *(a2 + OBJC_IVAR____TtC14CopresenceCore10Attachment_queue);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v2)
  {
    v19 = &v12[*(v9 + 24)];
    MEMORY[0x1EEE9AC00](result);
    *(&v31 - 2) = v20;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata and conformance AttachmentLedger_MMCSMetadata, type metadata accessor for AttachmentLedger_MMCSMetadata);
    static Message.with(_:)();
    v21 = *(type metadata accessor for AttachmentLedger_AttachmentMetadata(0) + 36);
    outlined destroy of NSObject?(a1 + v21, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataVSgMR);
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v8, a1 + v21, type metadata accessor for AttachmentLedger_MMCSMetadata);
    (*(v31 + 56))(a1 + v21, 0, 1, v5);
    v22 = &v12[*(v9 + 20)];
    v24 = v22[1];
    v32 = *v22;
    v23 = v32;
    v33 = v24;
    outlined copy of Data?(v32, v24);
    v26 = Attachment.Metadata.sealedMetadata(with:)(v12);
    v28 = v27;
    outlined consume of Data?(v23, v24);
    outlined consume of Data._Representation(a1[5], a1[6]);
    a1[5] = v26;
    a1[6] = v28;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v29 = v32;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v12, type metadata accessor for UnencryptedAttachment);
    v30 = a1[2];

    a1[2] = v29;
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Attachment.MMCSMetadata.metadata.getter()
{
  type metadata accessor for AttachmentLedger_MMCSMetadata(0);
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata and conformance AttachmentLedger_MMCSMetadata, type metadata accessor for AttachmentLedger_MMCSMetadata);
  return static Message.with(_:)();
}

char *Attachment.Metadata.sealedMetadata(with:)(unint64_t a1)
{
  v71 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3AESO3GCMO9SealedBoxVSgMd, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v65 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v68 = &v59 - v10;
  v11 = type metadata accessor for AES.GCM.SealedBox();
  v66 = *(v11 - 8);
  v12 = *(v66 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v59 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v59 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v59 - v22;
  v24 = type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *v1;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata);
  static Message.with(_:)();
  v28 = Message.serializedData(partial:)();
  v30 = v29;
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v27, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata);
  if (!v2)
  {
    v62 = v15;
    v63 = v18;
    v64 = v21;
    v31 = v28;
    v33 = v66;
    v32 = v67;
    v70[0] = v31;
    v70[1] = v30;
    v34 = type metadata accessor for AES.GCM.Nonce();
    v35 = v68;
    (*(*(v34 - 8) + 56))(v68, 1, 1, v34);
    lazy protocol witness table accessor for type Data and conformance Data();
    static AES.GCM.seal<A>(_:using:nonce:)();
    outlined destroy of NSObject?(v35, &_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
    v68 = v31;
    v71 = v30;
    v36 = AES.GCM.SealedBox.combined.getter();
    if (v37 >> 60 == 15)
    {
      v61 = v23;
      if (one-time initialization token for attachmentLedgerTopic != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Log.attachmentLedgerTopic);
      v39 = v33;
      v40 = *(v33 + 16);
      v41 = v64;
      v40(v64, v61, v11);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v60 = v43;
        v44 = v41;
        v45 = v11;
        v46 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v70[0] = v59;
        *v46 = 136315138;
        v47 = v32;
        v40(v32, v44, v45);
        (*(v39 + 56))(v32, 0, 1, v45);
        v48 = v32;
        v49 = v65;
        outlined init with copy of ActivitySession.DomainAssertionWrapper?(v48, v65, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMd, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMR);
        if ((*(v39 + 48))(v49, 1, v45) == 1)
        {
          v50 = 0xE300000000000000;
          v51 = 7104878;
        }

        else
        {
          v53 = v63;
          (*(v39 + 32))(v63, v49, v45);
          v40(v62, v53, v45);
          v51 = String.init<A>(reflecting:)();
          v50 = v54;
          (*(v39 + 8))(v53, v45);
        }

        outlined destroy of NSObject?(v47, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMd, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMR);
        v52 = *(v39 + 8);
        v15 = ((v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v52(v64, v45);
        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v50, v70);

        *(v46 + 4) = v55;
        _os_log_impl(&dword_1AEB26000, v42, v60, "Failed to get combined data from serializedMetadata SealedBox %s", v46, 0xCu);
        v56 = v59;
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        MEMORY[0x1B27120C0](v56, -1, -1);
        MEMORY[0x1B27120C0](v46, -1, -1);

        v11 = v45;
      }

      else
      {

        v52 = *(v33 + 8);
        v15 = ((v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v52(v41, v11);
      }

      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
      swift_allocError();
      *v57 = 3;
      swift_willThrow();
      outlined consume of Data._Representation(v68, v71);
      v52(v61, v11);
    }

    else
    {
      v15 = v36;
      (*(v33 + 8))(v23, v11);
      outlined consume of Data._Representation(v68, v71);
    }
  }

  return v15;
}

uint64_t closure #1 in Attachment.MMCSMetadata.metadata.getter(char *a1, uint64_t a2)
{
  v5 = type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v45 - v11;
  v51 = a2;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_MMCSMetadata.BlobData and conformance AttachmentLedger_MMCSMetadata.BlobData, type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
  result = static Message.with(_:)();
  if (!v2)
  {
    v52 = 0;
    v49 = type metadata accessor for AttachmentLedger_MMCSMetadata(0);
    v14 = *(v49 + 36);
    outlined destroy of NSObject?(&a1[v14], &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v12, &a1[v14], type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
    v16 = *(v6 + 56);
    v15 = v6 + 56;
    v50 = v16;
    v16(&a1[v14], 0, 1, v5);
    v17 = type metadata accessor for Attachment.MMCSMetadata(0);
    v18 = v17;
    v19 = (a2 + *(v17 + 24));
    v20 = v19[2];
    if (v20 >> 60 != 15 && (v20 & 0xF000000000000000) != 0xB000000000000000)
    {
      v22 = v19[1];
      v46 = *v19;
      v47 = &v45;
      MEMORY[0x1EEE9AC00](v17);
      v48 = v15;
      *(&v45 - 4) = v23;
      *(&v45 - 3) = v22;
      *(&v45 - 2) = v20;
      outlined copy of Data._Representation(v22, v20);
      v24 = v52;
      static Message.with(_:)();
      v52 = v24;
      outlined consume of Attachment.MMCSMetadata.UploadStatus(v46, v22, v20);
      v25 = *(v49 + 40);
      outlined destroy of NSObject?(&a1[v25], &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMd, &_s14CopresenceCore29AttachmentLedger_MMCSMetadataV8BlobDataVSgMR);
      outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v10, &a1[v25], type metadata accessor for AttachmentLedger_MMCSMetadata.BlobData);
      v50(&a1[v25], 0, 1, v5);
    }

    v26 = (a2 + v18[7]);
    v28 = *v26;
    v27 = v26[1];
    v29 = *(a1 + 1);

    *a1 = v28;
    *(a1 + 1) = v27;
    v30 = a2 + v18[8];
    v31 = URL.absoluteString.getter();
    v33 = v32;
    v34 = *(a1 + 3);

    *(a1 + 2) = v31;
    *(a1 + 3) = v33;
    v35 = (a2 + v18[9]);
    v36 = *v35;
    v37 = v35[1];
    v38 = *(a1 + 4);
    v39 = *(a1 + 5);
    outlined copy of Data._Representation(*v35, v37);
    outlined consume of Data._Representation(v38, v39);
    *(a1 + 4) = v36;
    *(a1 + 5) = v37;
    v40 = (a2 + v18[10]);
    v41 = *v40;
    v42 = v40[1];
    v43 = *(a1 + 6);
    v44 = *(a1 + 7);
    outlined copy of Data._Representation(*v40, v42);
    result = outlined consume of Data._Representation(v43, v44);
    *(a1 + 6) = v41;
    *(a1 + 7) = v42;
  }

  return result;
}

uint64_t closure #1 in closure #1 in Attachment.MMCSMetadata.metadata.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AES.GCM.SealedBox();
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v45 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v41[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3AESO3GCMO9SealedBoxVSgMd, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v41[-v14];
  v16 = type metadata accessor for Attachment.MMCSMetadata(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v41[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = AES.GCM.SealedBox.combined.getter();
  if (v21 >> 60 == 15)
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Log.attachmentLedgerTopic);
    outlined init with copy of Attachment.MMCSMetadata(a2, v19, type metadata accessor for Attachment.MMCSMetadata);
    v23 = Logger.logObject.getter();
    LODWORD(v24) = static os_log_type_t.error.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v47;
    if (v25)
    {
      v27 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v48 = v43;
      v44 = v27;
      *v27 = 136315138;
      v28 = *(v26 + 16);
      v28(v15, v19, v4);
      (*(v26 + 56))(v15, 0, 1, v4);
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v15, v13, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMd, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMR);
      if ((*(v26 + 48))(v13, 1, v4) == 1)
      {
        v29 = 0xE300000000000000;
        v30 = 7104878;
      }

      else
      {
        v34 = *(v26 + 32);
        v42 = v24;
        v24 = v46;
        v34(v46, v13, v4);
        v28(v45, v24, v4);
        v30 = String.init<A>(reflecting:)();
        v29 = v35;
        v36 = v24;
        LOBYTE(v24) = v42;
        (*(v26 + 8))(v36, v4);
      }

      outlined destroy of NSObject?(v15, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMd, &_s9CryptoKit3AESO3GCMO9SealedBoxVSgMR);
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, type metadata accessor for Attachment.MMCSMetadata);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, &v48);

      v38 = v44;
      *(v44 + 1) = v37;
      _os_log_impl(&dword_1AEB26000, v23, v24, "Failed to get combined data from encryptedAssetSkeleton SealedBox %s", v38, 0xCu);
      v39 = v43;
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x1B27120C0](v39, -1, -1);
      MEMORY[0x1B27120C0](v38, -1, -1);
    }

    else
    {

      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v19, type metadata accessor for Attachment.MMCSMetadata);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    swift_allocError();
    *v40 = 3;
    return swift_willThrow();
  }

  else
  {
    v31 = v20;
    v32 = v21;
    result = outlined consume of Data._Representation(*(a1 + 8), *(a1 + 16));
    *(a1 + 8) = v31;
    *(a1 + 16) = v32;
  }

  return result;
}

uint64_t Attachment.MMCSMetadata.UploadStatus.status.getter()
{
  v1 = 2;
  if (*(v0 + 16) >> 60 == 11)
  {
    v1 = 3;
  }

  if (*(v0 + 16) >> 60 == 15)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

Swift::Int PluginAttachmentLedgerTopic.RetryErrors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](a1);
  return Hasher._finalize()();
}

uint64_t PluginAttachmentLedgerTopic.ServerError.reason.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t PluginAttachmentLedgerTopic.ServerError.description.getter(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(23);

  MEMORY[0x1B2710020](a1, a2);
  MEMORY[0x1B2710020](41, 0xE100000000000000);
  return 0xD000000000000014;
}

Swift::Int PluginAttachmentLedgerTopic.State.ShutdownInfo.Reason.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B27111E0](v1);
  return Hasher._finalize()();
}

__n128 PluginAttachmentLedgerTopic.State.ShutdownInfo.config.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  result = *(v1 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t PluginAttachmentLedgerTopic.State.RetryInfo.retryTask.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t PluginAttachmentLedgerTopic.State.RetryInfo.init(attempt:retryTask:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t PluginAttachmentLedgerTopic.State.comparativeResult.getter()
{
  v1 = v0[5];
  if (!(v1 >> 62))
  {
    return 1;
  }

  if (v1 >> 62 == 1)
  {
    return 4;
  }

  v3 = v0[3];
  v4 = v0[4] | v0[6];
  v5 = v0[2] | v0[1];
  if (v1 == 0x8000000000000000 && (v4 | *v0 | v3 | v5) == 0)
  {
    return 0;
  }

  if (v4 | v3 | v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v0 == 1;
  }

  if (v7 && v1 == 0x8000000000000000)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

BOOL static PluginAttachmentLedgerTopic.State.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[5];
  v3 = a2[5];
  if (v2 >> 62)
  {
    if (v2 >> 62 == 1)
    {
      v4 = 4;
      v5 = v3 >> 62;
      if (!(v3 >> 62))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = *a1;
      v7 = a1[3];
      v8 = a1[4] | a1[6];
      v9 = a1[2] | a1[1];
      if (v2 != 0x8000000000000000 || v8 | v6 | v7 | v9)
      {
        if (v8 | v7 | v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == 1;
        }

        v12 = v11 && v2 == 0x8000000000000000;
        v4 = 2;
        if (!v12)
        {
          v4 = 3;
        }

        v5 = v3 >> 62;
        if (!(v3 >> 62))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v4 = 0;
        v5 = v3 >> 62;
        if (!(v3 >> 62))
        {
LABEL_10:
          v10 = 1;
          return v4 == v10;
        }
      }
    }
  }

  else
  {
    v4 = 1;
    v5 = v3 >> 62;
    if (!(v3 >> 62))
    {
      goto LABEL_10;
    }
  }

  if (v5 == 1)
  {
    v10 = 4;
  }

  else
  {
    v13 = *a2;
    v14 = a2[3];
    v15 = a2[2] | a2[1];
    v16 = a2[4] | a2[6];
    if (v3 != 0x8000000000000000 || v15 | v13 | v14 | v16)
    {
      if (v15 | v14 | v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = v13 == 1;
      }

      v18 = v17 && v3 == 0x8000000000000000;
      v10 = 2;
      if (!v18)
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v4 == v10;
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance PluginAttachmentLedgerTopic.State(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[5];
  v3 = a2[5];
  if (v2 >> 62)
  {
    if (v2 >> 62 == 1)
    {
      v4 = 4;
      v5 = v3 >> 62;
      if (!(v3 >> 62))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = *a1;
      v7 = a1[3];
      v8 = a1[4] | a1[6];
      v9 = a1[2] | a1[1];
      if (v2 != 0x8000000000000000 || v8 | v6 | v7 | v9)
      {
        if (v8 | v7 | v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == 1;
        }

        v12 = v11 && v2 == 0x8000000000000000;
        v4 = 2;
        if (!v12)
        {
          v4 = 3;
        }

        v5 = v3 >> 62;
        if (!(v3 >> 62))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v4 = 0;
        v5 = v3 >> 62;
        if (!(v3 >> 62))
        {
LABEL_10:
          v10 = 1;
          return v4 < v10;
        }
      }
    }
  }

  else
  {
    v4 = 1;
    v5 = v3 >> 62;
    if (!(v3 >> 62))
    {
      goto LABEL_10;
    }
  }

  if (v5 == 1)
  {
    v10 = 4;
  }

  else
  {
    v13 = *a2;
    v14 = a2[3];
    v15 = a2[2] | a2[1];
    v16 = a2[4] | a2[6];
    if (v3 != 0x8000000000000000 || v15 | v13 | v14 | v16)
    {
      if (v15 | v14 | v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = v13 == 1;
      }

      v18 = v17 && v3 == 0x8000000000000000;
      v10 = 2;
      if (!v18)
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v4 < v10;
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance PluginAttachmentLedgerTopic.State(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[5];
  v3 = a2[5];
  if (v3 >> 62)
  {
    if (v3 >> 62 == 1)
    {
      v4 = 4;
      v5 = v2 >> 62;
      if (!(v2 >> 62))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = *a2;
      v7 = a2[3];
      v8 = a2[4] | a2[6];
      v9 = a2[2] | a2[1];
      if (v3 != 0x8000000000000000 || v8 | v6 | v7 | v9)
      {
        if (v8 | v7 | v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == 1;
        }

        v12 = v11 && v3 == 0x8000000000000000;
        v4 = 2;
        if (!v12)
        {
          v4 = 3;
        }

        v5 = v2 >> 62;
        if (!(v2 >> 62))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v4 = 0;
        v5 = v2 >> 62;
        if (!(v2 >> 62))
        {
LABEL_10:
          v10 = 1;
          return v4 >= v10;
        }
      }
    }
  }

  else
  {
    v4 = 1;
    v5 = v2 >> 62;
    if (!(v2 >> 62))
    {
      goto LABEL_10;
    }
  }

  if (v5 == 1)
  {
    v10 = 4;
  }

  else
  {
    v13 = *a1;
    v14 = a1[3];
    v15 = a1[2] | a1[1];
    v16 = a1[4] | a1[6];
    if (v2 != 0x8000000000000000 || v15 | v13 | v14 | v16)
    {
      if (v15 | v14 | v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = v13 == 1;
      }

      v18 = v17 && v2 == 0x8000000000000000;
      v10 = 2;
      if (!v18)
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v4 >= v10;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance PluginAttachmentLedgerTopic.State(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[5];
  v3 = a2[5];
  if (v2 >> 62)
  {
    if (v2 >> 62 == 1)
    {
      v4 = 4;
      v5 = v3 >> 62;
      if (!(v3 >> 62))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = *a1;
      v7 = a1[3];
      v8 = a1[4] | a1[6];
      v9 = a1[2] | a1[1];
      if (v2 != 0x8000000000000000 || v8 | v6 | v7 | v9)
      {
        if (v8 | v7 | v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == 1;
        }

        v12 = v11 && v2 == 0x8000000000000000;
        v4 = 2;
        if (!v12)
        {
          v4 = 3;
        }

        v5 = v3 >> 62;
        if (!(v3 >> 62))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v4 = 0;
        v5 = v3 >> 62;
        if (!(v3 >> 62))
        {
LABEL_10:
          v10 = 1;
          return v4 >= v10;
        }
      }
    }
  }

  else
  {
    v4 = 1;
    v5 = v3 >> 62;
    if (!(v3 >> 62))
    {
      goto LABEL_10;
    }
  }

  if (v5 == 1)
  {
    v10 = 4;
  }

  else
  {
    v13 = *a2;
    v14 = a2[3];
    v15 = a2[2] | a2[1];
    v16 = a2[4] | a2[6];
    if (v3 != 0x8000000000000000 || v15 | v13 | v14 | v16)
    {
      if (v15 | v14 | v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = v13 == 1;
      }

      v18 = v17 && v3 == 0x8000000000000000;
      v10 = 2;
      if (!v18)
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v4 >= v10;
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance PluginAttachmentLedgerTopic.State(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[5];
  v3 = a2[5];
  if (v3 >> 62)
  {
    if (v3 >> 62 == 1)
    {
      v4 = 4;
      v5 = v2 >> 62;
      if (!(v2 >> 62))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = *a2;
      v7 = a2[3];
      v8 = a2[4] | a2[6];
      v9 = a2[2] | a2[1];
      if (v3 != 0x8000000000000000 || v8 | v6 | v7 | v9)
      {
        if (v8 | v7 | v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == 1;
        }

        v12 = v11 && v3 == 0x8000000000000000;
        v4 = 2;
        if (!v12)
        {
          v4 = 3;
        }

        v5 = v2 >> 62;
        if (!(v2 >> 62))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v4 = 0;
        v5 = v2 >> 62;
        if (!(v2 >> 62))
        {
LABEL_10:
          v10 = 1;
          return v4 < v10;
        }
      }
    }
  }

  else
  {
    v4 = 1;
    v5 = v2 >> 62;
    if (!(v2 >> 62))
    {
      goto LABEL_10;
    }
  }

  if (v5 == 1)
  {
    v10 = 4;
  }

  else
  {
    v13 = *a1;
    v14 = a1[3];
    v15 = a1[2] | a1[1];
    v16 = a1[4] | a1[6];
    if (v2 != 0x8000000000000000 || v15 | v13 | v14 | v16)
    {
      if (v15 | v14 | v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = v13 == 1;
      }

      v18 = v17 && v2 == 0x8000000000000000;
      v10 = 2;
      if (!v18)
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v4 < v10;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PluginAttachmentLedgerTopic.State(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[5];
  v3 = a2[5];
  if (v2 >> 62)
  {
    if (v2 >> 62 == 1)
    {
      v4 = 4;
      v5 = v3 >> 62;
      if (!(v3 >> 62))
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = *a1;
      v7 = a1[3];
      v8 = a1[4] | a1[6];
      v9 = a1[2] | a1[1];
      if (v2 != 0x8000000000000000 || v8 | v6 | v7 | v9)
      {
        if (v8 | v7 | v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == 1;
        }

        v12 = v11 && v2 == 0x8000000000000000;
        v4 = 2;
        if (!v12)
        {
          v4 = 3;
        }

        v5 = v3 >> 62;
        if (!(v3 >> 62))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v4 = 0;
        v5 = v3 >> 62;
        if (!(v3 >> 62))
        {
LABEL_10:
          v10 = 1;
          return v4 == v10;
        }
      }
    }
  }

  else
  {
    v4 = 1;
    v5 = v3 >> 62;
    if (!(v3 >> 62))
    {
      goto LABEL_10;
    }
  }

  if (v5 == 1)
  {
    v10 = 4;
  }

  else
  {
    v13 = *a2;
    v14 = a2[3];
    v15 = a2[2] | a2[1];
    v16 = a2[4] | a2[6];
    if (v3 != 0x8000000000000000 || v15 | v13 | v14 | v16)
    {
      if (v15 | v14 | v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = v13 == 1;
      }

      v18 = v17 && v3 == 0x8000000000000000;
      v10 = 2;
      if (!v18)
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v4 == v10;
}

uint64_t PluginAttachmentLedgerTopic.participants.getter()
{
  v1 = *(v0 + 16);

  CurrentValueSubject.value.getter();

  return v3;
}

uint64_t PluginAttachmentLedgerTopic.participants.setter()
{
  v1 = *(v0 + 16);

  CurrentValueSubject.send(_:)();
}

uint64_t (*PluginAttachmentLedgerTopic.participants.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = *(v1 + 16);

  CurrentValueSubject.value.getter();
  return PersonalPresenceDataSource.presentDevices.modify;
}

uint64_t key path setter for PluginAttachmentLedgerTopic.state : PluginAttachmentLedgerTopic(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = *a2;
  v11[0] = *a1;
  v11[1] = v2;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v5;
  v11[5] = v6;
  v11[6] = v7;
  v9 = *(*v8 + 296);
  outlined copy of PluginAttachmentLedgerTopic.State(v11[0], v2, v3, v4, v5, v6);
  return v9(v11);
}

uint64_t PluginAttachmentLedgerTopic.state.getter()
{
  v1 = *(v0 + 24);

  CurrentValueSubject.value.getter();
}

uint64_t PluginAttachmentLedgerTopic.state.setter(__int128 *a1)
{
  v2 = *(v1 + 24);
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 6);

  CurrentValueSubject.send(_:)();
  outlined consume of PluginAttachmentLedgerTopic.State(v4, *(&v4 + 1), v5, *(&v5 + 1), v6, *(&v6 + 1));
}

void (*PluginAttachmentLedgerTopic.state.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  *a1 = v3;
  *(v3 + 112) = *(v1 + 24);

  CurrentValueSubject.value.getter();
  return PluginAttachmentLedgerTopic.state.modify;
}

void PluginAttachmentLedgerTopic.state.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v3[7] = v4;
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  v11 = v3[14];
  v3[8] = v5;
  v3[9] = v6;
  v3[10] = v7;
  v3[11] = v8;
  v3[12] = v9;
  v3[13] = v10;
  if (a2)
  {
    outlined copy of PluginAttachmentLedgerTopic.State(v4, v5, v6, v7, v8, v9);
    CurrentValueSubject.send(_:)();
    v12 = v3[13];
    outlined consume of PluginAttachmentLedgerTopic.State(v3[7], v3[8], v3[9], v3[10], v3[11], v3[12]);

    v13 = v3[6];
    outlined consume of PluginAttachmentLedgerTopic.State(*v3, v3[1], v3[2], v3[3], v3[4], v3[5]);
  }

  else
  {
    CurrentValueSubject.send(_:)();
    v14 = v3[13];
    outlined consume of PluginAttachmentLedgerTopic.State(v3[7], v3[8], v3[9], v3[10], v3[11], v3[12]);
  }

  free(v3);
}

void *PluginAttachmentLedgerTopic.shutdownReason.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void PluginAttachmentLedgerTopic.shutdownReason.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t key path setter for PluginAttachmentLedgerTopic.internalState : PluginAttachmentLedgerTopic(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = *a2;
  v11[0] = *a1;
  v11[1] = v2;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v5;
  v11[5] = v6;
  v11[6] = v7;
  v9 = *(*v8 + 352);
  outlined copy of PluginAttachmentLedgerTopic.State(v11[0], v2, v3, v4, v5, v6);
  return v9(v11);
}

uint64_t PluginAttachmentLedgerTopic.internalState.didset()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (one-time initialization token for attachmentLedgerTopic == -1)
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
  __swift_project_value_buffer(v9, static Log.attachmentLedgerTopic);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v41 = v11;
    v13 = v12;
    v42 = swift_slowAlloc();
    v50[0] = v42;
    *v13 = 136315394;
    v40 = v10;
    v14 = PluginAttachmentLedgerTopic.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v50);

    v39 = v13;
    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    swift_beginAccess();
    v17 = v1[5];
    v18 = v1[6];
    v19 = v1[7];
    v20 = v1[8];
    v22 = v1[9];
    v21 = v1[10];
    v23 = v1[11];
    v43 = v17;
    v44 = v18;
    v45 = v19;
    v46 = v20;
    v47 = v22;
    v48 = v21;
    v49 = v23;
    outlined copy of PluginAttachmentLedgerTopic.State(v17, v18, v19, v20, v22, v21);
    v24 = PluginAttachmentLedgerTopic.State.description.getter();
    v26 = v25;
    outlined consume of PluginAttachmentLedgerTopic.State(v17, v18, v19, v20, v22, v21);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v50);

    v28 = v39;
    *(v39 + 14) = v27;
    v10 = v40;
    _os_log_impl(&dword_1AEB26000, v40, v41, "%s updated state new-state=%s", v28, 0x16u);
    v29 = v42;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v29, -1, -1);
    MEMORY[0x1B27120C0](v28, -1, -1);
  }

  swift_beginAccess();
  v30 = v1[10];
  if (v30 >> 62 == 1)
  {
    PluginAttachmentLedgerTopic.handleShutdown()();
    v30 = v1[10];
  }

  v31 = v1[6];
  v32 = v1[7];
  v33 = v1[8];
  v34 = v1[9];
  v35 = v1[11];
  v43 = v1[5];
  v44 = v31;
  v45 = v32;
  v46 = v33;
  v47 = v34;
  v48 = v30;
  v49 = v35;
  v36 = *(*v1 + 296);
  outlined copy of PluginAttachmentLedgerTopic.State(v43, v31, v32, v33, v34, v30);
  return v36(&v43);
}

void PluginAttachmentLedgerTopic.handleShutdown()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (one-time initialization token for attachmentLedgerTopic == -1)
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
  __swift_project_value_buffer(v9, static Log.attachmentLedgerTopic);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    v14 = PluginAttachmentLedgerTopic.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v26);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1AEB26000, v10, v11, "%s handling shutdown", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  v17 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamInput);
  LOBYTE(v26) = 1;

  PassthroughSubject.send(completion:)();

  v18 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamResponseCancellable);
  *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamResponseCancellable) = 0;

  v20 = (*(*v1 + 368))(v19);
  if (v20)
  {
    v21 = v20;
    v22 = type metadata accessor for UploadToken(0);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1B2710400](v21, v22, v23, MEMORY[0x1E69E7288]);
  }

  swift_beginAccess();
  v24 = v1[12];
  v1[12] = 0;

  PluginAttachmentLedgerTopic.uploadToken.didset();
}

uint64_t PluginAttachmentLedgerTopic.internalState.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  return outlined copy of PluginAttachmentLedgerTopic.State(v3, v4, v5, v6, v7, v8);
}

uint64_t PluginAttachmentLedgerTopic.internalState.setter(uint64_t a1)
{
  v13 = *(a1 + 32);
  v3 = *(a1 + 48);
  swift_beginAccess();
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10 = v1[11];
  v11 = *(a1 + 16);
  *(v1 + 5) = *a1;
  *(v1 + 7) = v11;
  *(v1 + 9) = v13;
  v1[11] = v3;
  outlined consume of PluginAttachmentLedgerTopic.State(v4, v5, v6, v7, v8, v9);
  return PluginAttachmentLedgerTopic.internalState.didset();
}

uint64_t (*PluginAttachmentLedgerTopic.internalState.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return PluginAttachmentLedgerTopic.internalState.modify;
}

uint64_t PluginAttachmentLedgerTopic.internalState.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return PluginAttachmentLedgerTopic.internalState.didset();
  }

  return result;
}

void key path setter for PluginAttachmentLedgerTopic.uploadToken : PluginAttachmentLedgerTopic(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;

  PluginAttachmentLedgerTopic.uploadToken.didset();
}

void PluginAttachmentLedgerTopic.uploadToken.didset()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (one-time initialization token for attachmentLedgerTopic == -1)
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
  __swift_project_value_buffer(v9, static Log.attachmentLedgerTopic);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v1;
    v18 = v13;
    *v12 = 136315394;
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 112), *(v1 + 120), &v18);
    _os_log_impl(&dword_1AEB26000, v10, v11, "Topic %s name==%s updated its uploadToken task", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }
}

uint64_t PluginAttachmentLedgerTopic.uploadToken.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
}

uint64_t PluginAttachmentLedgerTopic.name.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

__n128 PluginAttachmentLedgerTopic.config.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  result = *(v1 + 152);
  *(a1 + 24) = result;
  return result;
}

uint64_t PluginAttachmentLedgerTopic.config.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  result = swift_beginAccess();
  v1[16] = v2;
  v1[17] = v3;
  v1[18] = v4;
  v1[19] = v5;
  v1[20] = v6;
  return result;
}

void PluginAttachmentLedgerTopic.subscribeStreamInput.willset(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamInput;
  if (*(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamInput) == a1)
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Log.attachmentLedgerTopic);

    oslog = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136315138;
      v22 = PluginAttachmentLedgerTopic.description.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v27);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1AEB26000, oslog, v19, "%s trying to update the same value twice.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1B27120C0](v21, -1, -1);
      MEMORY[0x1B27120C0](v20, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.attachmentLedgerTopic);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v27 = v7;
      *v6 = 136315650;
      v8 = PluginAttachmentLedgerTopic.description.getter();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v27);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      v26 = *(v1 + v2);
      v11 = String.init<A>(reflecting:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v27);

      *(v6 + 14) = v13;
      *(v6 + 22) = 2080;
      v14 = String.init<A>(reflecting:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v27);

      *(v6 + 24) = v16;
      _os_log_impl(&dword_1AEB26000, v4, v5, "%s updating subscribeStream input from %s to %s", v6, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v7, -1, -1);
      MEMORY[0x1B27120C0](v6, -1, -1);
    }

    v17 = *(v1 + v2);
    LOBYTE(v27) = 1;

    PassthroughSubject.send(completion:)();
  }
}

uint64_t PluginAttachmentLedgerTopic.pendingAttachments.setter(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_pendingAttachments;
  swift_beginAccess();
  v9 = *(v1 + v8);
  *(v1 + v8) = a1;

  v10 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v7 = v10;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if ((v10 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

void (*PluginAttachmentLedgerTopic.pendingAttachments.modify(uint64_t *a1))(void **a1, char a2)
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
  *(v4 + 24) = v1;
  v6 = type metadata accessor for DispatchPredicate();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[6] = v8;
  swift_beginAccess();
  return PluginAttachmentLedgerTopic.pendingAttachments.modify;
}

void PluginAttachmentLedgerTopic.pendingAttachments.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[6];
  if ((a2 & 1) == 0)
  {
    v5 = v3[4];
    v6 = v3[5];
    v7 = *(v3[3] + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
    *v4 = v7;
    v8 = *MEMORY[0x1E69E8020];
    v9 = v4;
    (*(v6 + 104))();
    v10 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    (*(v6 + 8))(v9, v5);
    if ((v7 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v4 = v3[6];
  }

  free(v4);

  free(v3);
}

uint64_t PluginAttachmentLedgerTopic.attachmentStatusACKHandlers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_attachmentStatusACKHandlers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t PluginAttachmentLedgerTopic.attachments.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic__attachments;
  swift_beginAccess();
  v2 = *(v0 + v1);

  CurrentValueSubject.value.getter();

  return v4;
}

uint64_t PluginAttachmentLedgerTopic.attachments.setter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic__attachments;
  swift_beginAccess();
  v2 = *(v0 + v1);

  CurrentValueSubject.send(_:)();
}

void (*PluginAttachmentLedgerTopic.attachments.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic__attachments;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);

  CurrentValueSubject.value.getter();
  return PluginAttachmentLedgerTopic.attachments.modify;
}

void PluginAttachmentLedgerTopic.attachments.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 24);
  *(*a1 + 32) = *v3;
  v4 = v2[5];
  if (a2)
  {

    CurrentValueSubject.send(_:)();

    v5 = *v3;
  }

  else
  {
    CurrentValueSubject.send(_:)();
  }

  free(v2);
}

uint64_t PluginAttachmentLedgerTopic.$attachments.getter()
{
  v1 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic__attachments;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t PluginAttachmentLedgerTopic.init(name:service:dataCryptorProvider:config:localParticipantID:initialAttachments:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void *a7)
{
  v8 = v7;
  v107 = a7;
  v103 = a6;
  v112 = a4;
  v102 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v88 = &v87 - v14;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMR);
  v90 = *(v91 - 8);
  v15 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v87 - v16;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGGMR);
  v93 = *(v94 - 8);
  v17 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v87 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy14CopresenceCore023AttachmentLedger_UpdateF7RequestV_ScCyAE0fg1_hF8ResponseVs5Error_pGt__GMd, &_sScS12ContinuationV15BufferingPolicyOy14CopresenceCore023AttachmentLedger_UpdateF7RequestV_ScCyAE0fg1_hF8ResponseVs5Error_pGt__GMR);
  v108 = *(v19 - 8);
  v109 = v19;
  v20 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v106 = &v87 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtGMd, &_sScSy14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtGMR);
  v110 = *(v22 - 8);
  v111 = v22;
  v23 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v105 = &v87 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GSgMd, &_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GSgMR);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v104 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v101 = &v87 - v29;
  v100 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v99 = *(v100 - 8);
  v30 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for OS_dispatch_queue.Attributes();
  v32 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = *a5;
  v37 = a5[1];
  v38 = a5[2];
  v39 = a5[3];
  v40 = a5[4];
  v41 = MEMORY[0x1E69E7CC8];
  *&aBlock = MEMORY[0x1E69E7CC8];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySDys6UInt64V14CopresenceCore27PluginAttachmentLedgerTopicC11ParticipantVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySDys6UInt64V14CopresenceCore27PluginAttachmentLedgerTopicC11ParticipantVGs5NeverOGMR);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  *(v8 + 16) = CurrentValueSubject.init(_:)();
  v117 = 0;
  aBlock = 0u;
  v116 = 0u;
  v118 = xmmword_1AEE0C1F0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14CopresenceCore27PluginAttachmentLedgerTopicC5StateOs5NeverOGMR);
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  *(v8 + 24) = CurrentValueSubject.init(_:)();
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 88) = 0;
  *(v8 + 96) = 0;
  *(v8 + 80) = 0x8000000000000000;
  v48 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamInput;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore33AttachmentLedger_SubscribeRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore33AttachmentLedger_SubscribeRequestVs5NeverOGMR);
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  *(v8 + v48) = PassthroughSubject.init()();
  *(v8 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamResponseCancellable) = 0;
  *(v8 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamRetryAttempts) = 0;
  *(v8 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_currentKnownSeqNo) = 0;
  *(v8 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_attachmentListeners) = v41;
  *(v8 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_cancellables) = MEMORY[0x1E69E7CD0];
  *(v8 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_pendingAttachments) = v41;
  *(v8 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_attachmentStatusACKHandlers) = v41;
  v52 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic__attachments;
  v95 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic__attachments;
  v53 = MEMORY[0x1E69E7CC0];
  *&aBlock = MEMORY[0x1E69E7CC0];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14CopresenceCore10AttachmentCGs5NeverOGMR);
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  *(v8 + v52) = CurrentValueSubject.init(_:)();
  *(v8 + 120) = a2;
  *(v8 + 128) = v36;
  *(v8 + 136) = v37;
  *(v8 + 144) = v38;
  *(v8 + 152) = v39;
  *(v8 + 160) = v40;
  v57 = v102;
  *(v8 + 104) = v103;
  *(v8 + 112) = v57;
  v103 = a3;
  outlined init with copy of UserNotificationCenter(a3, v8 + 168);
  outlined init with copy of UserNotificationCenter(v112, v8 + 208);
  v58 = type metadata accessor for OS_dispatch_queue();
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;

  _StringGuts.grow(_:)(30);

  *&aBlock = 0xD00000000000001CLL;
  *(&aBlock + 1) = 0x80000001AEE32460;
  v102 = a2;
  MEMORY[0x1B2710020](v57, a2);
  static DispatchQoS.unspecified.getter();
  *&aBlock = v53;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  v59 = v107;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v99 + 104))(v98, *MEMORY[0x1E69E8090], v100);
  v60 = v101;
  v100 = v58;
  *(v8 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v61 = v95;
  swift_beginAccess();
  v62 = *(v8 + v61);

  v114 = v59;
  v63 = *(v54 + 48);
  v64 = *(v54 + 52);
  swift_allocObject();
  *(v8 + v61) = CurrentValueSubject.init(_:)();
  v65 = v104;
  swift_endAccess();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GMd, &_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GMR);
  v67 = *(v66 - 8);
  (*(v67 + 56))(v60, 1, 1, v66);
  (*(v108 + 104))(v106, *MEMORY[0x1E69E8650], v109);
  v113 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtMR);
  v68 = v105;
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v110 + 32))(v8 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_updateAttachmentsOperationStream, v68, v111);
  v69 = v60;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v60, v65, &_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GSgMd, &_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GSgMR);
  result = (*(v67 + 48))(v65, 1, v66);
  if (result != 1)
  {

    (*(v67 + 32))(v8 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_updateAttachmentsOperationListener, v65, v66);
    v71 = *(v8 + 232);
    v72 = *(v8 + 240);
    __swift_project_boxed_opaque_existential_1((v8 + 208), v71);
    v73 = (*(v72 + 16))(v71, v72);
    v74 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue;
    v114 = *(v8 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
    v75 = v114;
    *&aBlock = v73;
    v76 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v77 = v88;
    (*(*(v76 - 8) + 56))(v88, 1, 1, v76);
    v78 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<UUID, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4UUIDVs5NeverOGMR);
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue);
    v79 = v89;
    Publisher.receive<A>(on:options:)();
    outlined destroy of NSObject?(v77, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<UUID, Never>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGMR);
    v80 = v92;
    v81 = v91;
    Publisher.dropFirst(_:)();
    (*(v90 + 8))(v79, v81);
    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Drop<Publishers.ReceiveOn<AnyPublisher<UUID, Never>, OS_dispatch_queue>> and conformance Publishers.Drop<A>, &_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO4DropVy_AC9ReceiveOnVy_AA12AnyPublisherVy10Foundation4UUIDVs5NeverOGSo17OS_dispatch_queueCGGMR);
    v82 = v94;
    Publisher<>.sink(receiveValue:)();

    (*(v93 + 8))(v80, v82);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v83 = *(v8 + v74);
    v84 = swift_allocObject();
    *(v84 + 16) = partial apply for closure #3 in PluginAttachmentLedgerTopic.init(name:service:dataCryptorProvider:config:localParticipantID:initialAttachments:);
    *(v84 + 24) = v8;
    v117 = _sIg_Ieg_TRTA_0;
    *&v118 = v84;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v116 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v116 + 1) = &block_descriptor_8;
    v85 = _Block_copy(&aBlock);
    v86 = v83;

    dispatch_sync(v86, v85);
    _Block_release(v85);

    __swift_destroy_boxed_opaque_existential_1Tm(v112);
    __swift_destroy_boxed_opaque_existential_1Tm(v103);
    LOBYTE(v85) = swift_isEscapingClosureAtFileLocation();

    if ((v85 & 1) == 0)
    {
      outlined destroy of NSObject?(v69, &_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GSgMd, &_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GSgMR);

      return v8;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.init(name:service:dataCryptorProvider:config:localParticipantID:initialAttachments:)(uint64_t a1, uint64_t a2)
{
  outlined destroy of NSObject?(a2, &_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GSgMd, &_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GSgMR);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GMd, &_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GMR);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t PluginAttachmentLedgerTopic.onLocalEncryptionIDRotated(encryptionID:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if (v18)
  {
    if (one-time initialization token for attachmentLedgerTopic == -1)
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
  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Log.attachmentLedgerTopic);
  (*(v9 + 16))(v12, a1, v8);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v37 = v24;
    *v23 = 136315394;
    v25 = PluginAttachmentLedgerTopic.description.getter();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v37);
    v36 = v7;
    v28 = v27;

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v9 + 8))(v12, v8);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v37);
    v7 = v36;

    *(v23 + 14) = v32;
    _os_log_impl(&dword_1AEB26000, v21, v22, "[Cryptor] %s notified of local encryptionID update. encryptionID=%s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v24, -1, -1);
    MEMORY[0x1B27120C0](v23, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v33 = type metadata accessor for TaskPriority();
  (*(*(v33 - 8) + 56))(v7, 1, 1, v33);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v2;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5Tm(0, 0, v7, &async function pointer to partial apply for closure #1 in PluginAttachmentLedgerTopic.onLocalEncryptionIDRotated(encryptionID:), v34);
}

void closure #3 in PluginAttachmentLedgerTopic.init(name:service:dataCryptorProvider:config:localParticipantID:initialAttachments:)(uint64_t a1)
{
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.attachmentLedgerTopic);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v5 = 136315394;
    v8 = PluginAttachmentLedgerTopic.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v13);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2112;
    v11 = *(a1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
    *(v5 + 14) = v11;
    *v6 = v11;
    v12 = v11;
    _os_log_impl(&dword_1AEB26000, v3, v4, "%s initialized on queue=%@", v5, 0x16u);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27120C0](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1B27120C0](v7, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  PluginAttachmentLedgerTopic.bootstrap()();
}

void PluginAttachmentLedgerTopic.bootstrap()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (one-time initialization token for attachmentLedgerTopic == -1)
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
  __swift_project_value_buffer(v9, static Log.attachmentLedgerTopic);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315394;
    v14 = PluginAttachmentLedgerTopic.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v22);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v21 = (*(*v1 + 632))(v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore10AttachmentCGMd, &_sSay14CopresenceCore10AttachmentCGMR);
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v22);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_1AEB26000, v10, v11, "Bootstrapping %s with initialAttachments: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v13, -1, -1);
    MEMORY[0x1B27120C0](v12, -1, -1);
  }

  PluginAttachmentLedgerTopic.subscribe()();
}

uint64_t PluginAttachmentLedgerTopic.deinit()
{
  v1 = v0;
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.attachmentLedgerTopic);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31 = v6;
    *v5 = 136315138;
    v7 = PluginAttachmentLedgerTopic.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v31);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1AEB26000, v3, v4, "Deinit %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1B27120C0](v6, -1, -1);
    MEMORY[0x1B27120C0](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamInput;
  v11 = *(v0 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamInput);
  v32 = 1;

  PassthroughSubject.send(completion:)();

  v12 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamResponseCancellable;
  v13 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamResponseCancellable);
  *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamResponseCancellable) = 0;

  v14 = *(v1 + 16);

  v15 = *(v1 + 24);

  v16 = *(v1 + 88);
  outlined consume of PluginAttachmentLedgerTopic.State(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  v17 = *(v1 + 96);

  v18 = *(v1 + 120);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 168));
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 208));
  v19 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_updateAttachmentsOperationListener;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GMd, &_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GMR);
  (*(*(v20 - 8) + 8))(v1 + v19, v20);
  v21 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_updateAttachmentsOperationStream;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtGMd, &_sScSy14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtGMR);
  (*(*(v22 - 8) + 8))(v1 + v21, v22);

  v23 = *(v1 + v10);

  v24 = *(v1 + v12);

  v25 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_attachmentListeners);

  v26 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_cancellables);

  v27 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_pendingAttachments);

  v28 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_attachmentStatusACKHandlers);

  v29 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic__attachments);

  return v1;
}

uint64_t PluginAttachmentLedgerTopic.__deallocating_deinit()
{
  PluginAttachmentLedgerTopic.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PluginAttachmentLedgerTopic.unsubscribe()()
{
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.attachmentLedgerTopic);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136315138;
    v6 = PluginAttachmentLedgerTopic.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1AEB26000, v2, v3, "Received request to unsubscribe on %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1B27120C0](v5, -1, -1);
    MEMORY[0x1B27120C0](v4, -1, -1);
  }

  v9 = *(v0 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in PluginAttachmentLedgerTopic.unsubscribe();
  *(v10 + 24) = v0;
  v13[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed () -> ();
  v13[3] = &block_descriptor_18_0;
  v11 = _Block_copy(v13);

  v12 = v9;

  dispatch_sync(v12, v11);

  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }
}

void closure #1 in PluginAttachmentLedgerTopic.unsubscribe()(uint64_t a1)
{
  (*(*a1 + 344))(&v15);
  if (!(v20 >> 62))
  {
    goto LABEL_19;
  }

  if (v20 >> 62 != 1)
  {
    v8 = v17 | v16;
    v9 = v19 | v21;
    if (v20 != 0x8000000000000000 || (v17 | v16 | v15 | v18 | v19 | v21) != 0)
    {
      v11 = v15;
      v12 = v18;
      v13 = v20;
      outlined consume of PluginAttachmentLedgerTopic.State(v15, v16, v17, v18, v19, v20);
      if (v13 != 0x8000000000000000 || v11 != 1 || v8 | v12 | v9)
      {
        goto LABEL_4;
      }

LABEL_20:
      PluginAttachmentLedgerTopic.shutdown(reason:)(0);
      return;
    }

LABEL_19:
    outlined consume of PluginAttachmentLedgerTopic.State(v15, v16, v17, v18, v19, v20);
    goto LABEL_20;
  }

  outlined consume of PluginAttachmentLedgerTopic.State(v15, v16, v17, v18, v19, v20);
LABEL_4:
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.attachmentLedgerTopic);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v15 = v4;
    *v3 = 136315138;
    v5 = PluginAttachmentLedgerTopic.description.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v15);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1AEB26000, oslog, v2, "Already shutting down, ignoring request on %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x1B27120C0](v4, -1, -1);
    MEMORY[0x1B27120C0](v3, -1, -1);
  }
}

uint64_t PluginAttachmentLedgerTopic.shutdown(reason:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
LABEL_25:
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.attachmentLedgerTopic);

  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v43[0] = v16;
    *v15 = 136315394;
    v17 = PluginAttachmentLedgerTopic.description.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v43);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    if (a1)
    {
      v42[1] = a1;
      v20 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v21 = String.init<A>(reflecting:)();
      v23 = v22;
    }

    else
    {
      v23 = 0xE300000000000000;
      v21 = 7104878;
    }

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v43);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_1AEB26000, v13, v14, "%s Processing request to shutdown, reason: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v16, -1, -1);
    MEMORY[0x1B27120C0](v15, -1, -1);
  }

  (*(*v2 + 288))(v43);
  if (!(v45 >> 62))
  {
    goto LABEL_13;
  }

  if (v45 >> 62 == 1)
  {
    return outlined consume of PluginAttachmentLedgerTopic.State(v43[0], v43[1], v43[2], v44, *(&v44 + 1), v45);
  }

  v26 = v43[2] | v43[1];
  v27 = *(&v44 + 1) | *(&v45 + 1);
  if (v45 == 0x8000000000000000 && !(v26 | v43[0] | v44 | v27))
  {
LABEL_13:
    outlined consume of PluginAttachmentLedgerTopic.State(v43[0], v43[1], v43[2], v44, *(&v44 + 1), v45);
    goto LABEL_14;
  }

  v39 = v43[0];
  v40 = v44;
  v41 = v45;
  result = outlined consume of PluginAttachmentLedgerTopic.State(v43[0], v43[1], v43[2], v44, *(&v44 + 1), v45);
  if (v41 == 0x8000000000000000 && v39 == 1 && !(v26 | v40 | v27))
  {
LABEL_14:
    v43[0] = 2;
    *&v43[1] = 0u;
    v44 = 0u;
    v45 = xmmword_1AEE0C1F0;
    v28 = (*v2 + 352);
    v29 = *v28;
    (*v28)(v43);
    v30 = *(*v2 + 328);
    v31 = a1;
    v32 = v30(a1);
    v33 = (*(*v2 + 584))(v32);
    v34 = v33;
    v35 = *(v33 + 16);
    if (v35)
    {
      v36 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo14TUConversationC_Tt1g5(*(v33 + 16), 0);
      v37 = specialized Sequence._copySequenceContents(initializing:)(v43, (v36 + 32), v35, v34);
      v38 = outlined consume of Set<String>.Iterator._Variant();
      if (v37 == v35)
      {
LABEL_18:
        (*(*v2 + 392))(v43, v38);
        *&v45 = 0x4000000000000005;
        *(&v45 + 1) = v36;
        return (v29)(v43);
      }

      __break(1u);
    }

    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  return result;
}

Swift::Void __swiftcall PluginAttachmentLedgerTopic.subscribe()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v9 = (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  (*(*v1 + 288))(&v24, v9);
  if (!(v29 >> 62))
  {
    goto LABEL_11;
  }

  if (v29 >> 62 == 1)
  {
    outlined consume of PluginAttachmentLedgerTopic.State(v24, v25, v26, v27, v28, v29);
    goto LABEL_5;
  }

  v18 = v26 | v25;
  v19 = v28 | v30;
  if (v29 == 0x8000000000000000 && !(v18 | v24 | v27 | v19))
  {
LABEL_11:
    outlined consume of PluginAttachmentLedgerTopic.State(v24, v25, v26, v27, v28, v29);
LABEL_12:
    PluginAttachmentLedgerTopic.setupSubscribeStream()();
    PluginAttachmentLedgerTopic.sendSubscribeRequest()();
    return;
  }

  v20 = v24;
  v21 = v27;
  v22 = v29;
  outlined consume of PluginAttachmentLedgerTopic.State(v24, v25, v26, v27, v28, v29);
  if (v22 == 0x8000000000000000 && v20 == 1 && !(v18 | v21 | v19))
  {
    goto LABEL_12;
  }

LABEL_5:
  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
LABEL_18:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.attachmentLedgerTopic);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    v15 = PluginAttachmentLedgerTopic.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v24);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1AEB26000, v11, v12, "Skipping subscribe handling for %s since we're in a terminal state", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1B27120C0](v14, -1, -1);
    MEMORY[0x1B27120C0](v13, -1, -1);
  }
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.updateAttachment(input:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtMR);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14CopresenceCore023AttachmentLedger_UpdateF7RequestV_ScCyAE0fg1_hF8ResponseVs5Error_pGt__GMd, &_sScS12ContinuationV11YieldResultOy14CopresenceCore023AttachmentLedger_UpdateF7RequestV_ScCyAE0fg1_hF8ResponseVs5Error_pGt__GMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  v15 = *(v6 + 56);
  outlined init with copy of Attachment.MMCSMetadata(a3, v9, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14CopresenceCore023AttachmentLedger_UpdateC8ResponseVs5Error_pGMd, &_sScCy14CopresenceCore023AttachmentLedger_UpdateC8ResponseVs5Error_pGMR);
  (*(*(v16 - 8) + 16))(&v9[v15], a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GMd, &_sScS12ContinuationVy14CopresenceCore023AttachmentLedger_UpdateD7RequestV_ScCyAC0de1_fD8ResponseVs5Error_pGt_GMR);
  AsyncStream.Continuation.yield(_:)();
  return (*(v11 + 8))(v14, v10);
}

uint64_t PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 256) = v34;
  *(v9 + 264) = v8;
  *(v9 + 240) = v33;
  *(v9 + 224) = a7;
  *(v9 + 232) = a8;
  *(v9 + 208) = a5;
  *(v9 + 216) = a6;
  *(v9 + 192) = a3;
  *(v9 + 200) = a4;
  *(v9 + 176) = a1;
  *(v9 + 184) = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR) - 8) + 64) + 15;
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = swift_task_alloc();
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0);
  *(v9 + 288) = updated;
  v12 = *(*(updated - 8) + 64) + 15;
  *(v9 + 296) = swift_task_alloc();
  v13 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest(0);
  *(v9 + 304) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v9 + 312) = swift_task_alloc();
  v15 = type metadata accessor for SymmetricKey();
  *(v9 + 320) = v15;
  v16 = *(v15 - 8);
  *(v9 + 328) = v16;
  v17 = *(v16 + 64) + 15;
  *(v9 + 336) = swift_task_alloc();
  *(v9 + 344) = swift_task_alloc();
  *(v9 + 352) = swift_task_alloc();
  *(v9 + 360) = swift_task_alloc();
  v18 = type metadata accessor for UUID();
  *(v9 + 368) = v18;
  v19 = *(v18 - 8);
  *(v9 + 376) = v19;
  v20 = *(v19 + 64) + 15;
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();
  *(v9 + 400) = swift_task_alloc();
  v21 = type metadata accessor for Attachment.MMCSMetadata(0);
  *(v9 + 408) = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();
  v23 = type metadata accessor for UploadToken(0);
  *(v9 + 432) = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  *(v9 + 440) = swift_task_alloc();
  v25 = type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata();
  *(v9 + 448) = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  *(v9 + 456) = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR) - 8) + 64) + 15;
  *(v9 + 464) = swift_task_alloc();
  v28 = type metadata accessor for AES.GCM.SealedBox();
  *(v9 + 472) = v28;
  v29 = *(v28 - 8);
  *(v9 + 480) = v29;
  v30 = *(v29 + 64) + 15;
  *(v9 + 488) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:), 0, 0);
}

uint64_t PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:)()
{
  v120 = v0;
  (*(**(v0 + 264) + 288))(&v113);
  if ((v118 & 0x8000000000000000) == 0 || ((v1 = v115 | v114, v2 = v117 | v119, v118 == 0x8000000000000000) ? (v3 = (v115 | v114 | v113 | v116 | v117 | v119) == 0) : (v3 = 0), v3))
  {
    outlined consume of PluginAttachmentLedgerTopic.State(v113, v114, v115, v116, v117, v118);
LABEL_11:
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 392);
    v12 = *(v0 + 368);
    v13 = *(v0 + 376);
    v14 = *(v0 + 264);
    v15 = *(v0 + 176);
    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Log.attachmentLedgerTopic);
    (*(v13 + 16))(v11, v15, v12);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 392);
    v22 = *(v0 + 368);
    v21 = *(v0 + 376);
    if (v19)
    {
      v111 = *(v0 + 264);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v113 = v24;
      *v23 = 136315394;
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v21 + 8))(v20, v22);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v113);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      v29 = PluginAttachmentLedgerTopic.description.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v113);

      *(v23 + 14) = v31;
      _os_log_impl(&dword_1AEB26000, v17, v18, "Dropping request to upload attachment %s because state of PluginAttachmentLedgerTopic is invalid %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v24, -1, -1);
      MEMORY[0x1B27120C0](v23, -1, -1);
    }

    else
    {

      (*(v21 + 8))(v20, v22);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors();
    swift_allocError();
    *v32 = 3;
    swift_willThrow();
    goto LABEL_17;
  }

  v4 = v113;
  v5 = v116;
  v6 = v118;
  outlined consume of PluginAttachmentLedgerTopic.State(v113, v114, v115, v116, v117, v118);
  if (v6 != 0x8000000000000000 || v4 != 1 || v1 | v5 | v2)
  {
    goto LABEL_11;
  }

  v7 = *(v0 + 488);
  v8 = *(v0 + 464);
  v9 = *(v0 + 184);
  *(v0 + 152) = *(v0 + 192);
  v10 = type metadata accessor for AES.GCM.Nonce();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  lazy protocol witness table accessor for type Data and conformance Data();
  static AES.GCM.seal<A>(_:using:nonce:)();
  v45 = *(v0 + 488);
  outlined destroy of NSObject?(*(v0 + 464), &_s9CryptoKit3AESO3GCMO5NonceVSgMd, &_s9CryptoKit3AESO3GCMO5NonceVSgMR);
  v46 = AES.GCM.SealedBox.combined.getter();
  if (v47 >> 60 == 15)
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v48 = *(v0 + 352);
    v49 = *(v0 + 320);
    v50 = *(v0 + 328);
    v51 = *(v0 + 184);
    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Log.attachmentLedgerTopic);
    v53 = v49;
    v54 = *(v50 + 16);
    v54(v48, v51, v53);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    v57 = os_log_type_enabled(v55, v56);
    v58 = *(v0 + 352);
    v60 = *(v0 + 320);
    v59 = *(v0 + 328);
    if (v57)
    {
      v110 = v56;
      v62 = *(v0 + 272);
      v61 = *(v0 + 280);
      v63 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v113 = v112;
      *v63 = 136315138;
      v54(v61, v58, v60);
      (*(v59 + 56))(v61, 0, 1, v60);
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v61, v62, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      if ((*(v59 + 48))(v62, 1, v60) == 1)
      {
        v64 = 0xE300000000000000;
        v65 = 7104878;
      }

      else
      {
        v90 = *(v0 + 336);
        v91 = *(v0 + 344);
        v93 = *(v0 + 320);
        v92 = *(v0 + 328);
        (*(v92 + 32))(v91, *(v0 + 272), v93);
        v54(v90, v91, v93);
        v65 = String.init<A>(reflecting:)();
        v64 = v94;
        (*(v92 + 8))(v91, v93);
      }

      v95 = *(v0 + 352);
      v97 = *(v0 + 320);
      v96 = *(v0 + 328);
      outlined destroy of NSObject?(*(v0 + 280), &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      (*(v96 + 8))(v95, v97);
      v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v64, &v113);

      *(v63 + 4) = v98;
      _os_log_impl(&dword_1AEB26000, v55, v110, "Failed to fetch the combined representation of the assetSkeleton encrypted w/ SymmetricKey %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v112);
      MEMORY[0x1B27120C0](v112, -1, -1);
      MEMORY[0x1B27120C0](v63, -1, -1);
    }

    else
    {

      (*(v59 + 8))(v58, v60);
    }

    v99 = *(v0 + 480);
    v100 = *(v0 + 488);
    v101 = *(v0 + 472);
    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    swift_allocError();
    *v102 = 3;
    swift_willThrow();
    (*(v99 + 8))(v100, v101);
LABEL_17:
    v33 = *(v0 + 488);
    v35 = *(v0 + 456);
    v34 = *(v0 + 464);
    v36 = *(v0 + 440);
    v38 = *(v0 + 416);
    v37 = *(v0 + 424);
    v40 = *(v0 + 392);
    v39 = *(v0 + 400);
    v41 = *(v0 + 384);
    v42 = *(v0 + 360);
    v103 = *(v0 + 352);
    v104 = *(v0 + 344);
    v105 = *(v0 + 336);
    v106 = *(v0 + 312);
    v107 = *(v0 + 296);
    v108 = *(v0 + 280);
    v109 = *(v0 + 272);

    v43 = *(v0 + 8);

    return v43();
  }

  v67 = *(v0 + 448);
  v66 = *(v0 + 456);
  v68 = *(v0 + 264);
  v70 = *(v0 + 208);
  v69 = *(v0 + 216);
  outlined consume of Data?(v46, v47);
  v71 = swift_task_alloc();
  *(v71 + 16) = v70;
  *(v71 + 24) = v69;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedgerMetadata_AttachmentMetadata and conformance AttachmentLedgerMetadata_AttachmentMetadata, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata);
  static Message.with(_:)();

  v73 = (*(*v68 + 368))(v72);
  *(v0 + 496) = v73;
  if (!v73)
  {
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v81 = type metadata accessor for Logger();
    __swift_project_value_buffer(v81, static Log.attachmentLedgerTopic);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_1AEB26000, v82, v83, "UploadToken task was never started", v84, 2u);
      MEMORY[0x1B27120C0](v84, -1, -1);
    }

    v85 = *(v0 + 480);
    v86 = *(v0 + 488);
    v87 = *(v0 + 472);
    v88 = *(v0 + 456);

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
    swift_allocError();
    *v89 = 1;
    swift_willThrow();
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v88, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata);
    (*(v85 + 8))(v86, v87);
    goto LABEL_17;
  }

  v74 = v73;
  v75 = *(MEMORY[0x1E69E86A8] + 4);
  v76 = swift_task_alloc();
  *(v0 + 504) = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *(v0 + 512) = v77;
  *v76 = v0;
  v76[1] = PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:);
  v79 = *(v0 + 432);
  v78 = *(v0 + 440);
  v80 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v78, v74, v79, v77, v80);
}

{
  v2 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:);
  }

  else
  {
    v3 = PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v102 = v0;
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[53];
  v88 = v0[52];
  v90 = v0[65];
  v4 = v0[51];
  v5 = v0[47];
  v94 = v0[45];
  v96 = v0[50];
  v80 = v0[46];
  v81 = v0[41];
  v82 = v0[40];
  v6 = v0[33];
  v92 = v0[30];
  v7 = v0[29];
  v75 = v0[31];
  v76 = v7;
  v74 = v0[28];
  v84 = v0[26];
  v86 = v0[27];
  v9 = v0[24];
  v8 = v0[25];
  v78 = v0[32];
  v79 = v0[23];
  v77 = v0[22];
  (*(v0[60] + 16))(v3, v0[61], v0[59]);
  v10 = (v1 + *(v2 + 28));
  v11 = v10[1];
  v73 = *v10;
  v12 = v4[8];
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 16))(v3 + v12, v74, v13);
  v14 = (v3 + v4[5]);
  *v14 = v9;
  v14[1] = v8;
  v15 = (v3 + v4[6]);
  *v15 = 0;
  v15[1] = 0;
  v15[2] = 0xF000000000000000;
  v16 = (v3 + v4[7]);
  *v16 = v73;
  v16[1] = v11;
  v17 = (v3 + v4[9]);
  *v17 = v7;
  v17[1] = v92;
  v18 = (v3 + v4[10]);
  *v18 = v75;
  v18[1] = v78;
  v19 = *(v5 + 16);
  v0[66] = v19;
  v0[67] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v96, v77, v80);
  (*(v81 + 16))(v94, v79, v82);
  outlined init with copy of Attachment.MMCSMetadata(v3, v88, type metadata accessor for Attachment.MMCSMetadata);
  v97[0] = v84;
  v97[1] = v86;
  outlined init with copy of UserNotificationCenter((v6 + 26), (v0 + 14));
  v20 = v6[13];
  v21 = *(*v6 + 392);

  outlined copy of Data._Representation(v9, v8);
  outlined copy of Data._Representation(v76, v92);
  outlined copy of Data._Representation(v75, v78);
  v22 = outlined copy of Data?(v84, v86);
  v21(v98, v22);
  v100[0] = v98[0];
  v100[1] = v98[1];
  v100[2] = v98[2];
  v101 = v99;
  v23 = type metadata accessor for Attachment(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = Attachment.init(id:key:mmcsMetadata:metadata:dataCryptor:localParticipantID:config:)(v96, v94, v88, v97, v0 + 14, v20, v100);
  v0[68] = v26;
  if (v90)
  {
    v28 = v0[61];
    v27 = v0[62];
    v29 = v0[59];
    v30 = v0[60];
    v31 = v0[57];
    v32 = v0[55];
    v33 = v0[53];

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v33, type metadata accessor for Attachment.MMCSMetadata);
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, type metadata accessor for UploadToken);
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v31, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata);
    (*(v30 + 8))(v28, v29);
    v39 = v0[61];
    v41 = v0[57];
    v40 = v0[58];
    v42 = v0[55];
    v44 = v0[52];
    v43 = v0[53];
    v46 = v0[49];
    v45 = v0[50];
    v47 = v0[48];
    v48 = v0[45];
    v83 = v0[44];
    v85 = v0[43];
    v87 = v0[42];
    v89 = v0[39];
    v91 = v0[37];
    v93 = v0[35];
    v95 = v0[34];

    v49 = v0[1];

    return v49();
  }

  else
  {
    v34 = v26;
    v36 = v0[38];
    v35 = v0[39];
    v37 = v0[33];
    v38 = swift_task_alloc();
    *(v38 + 16) = v37;
    *(v38 + 24) = v34;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest and conformance AttachmentLedger_UpdateAttachmentRequest, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
    static Message.with(_:)();
    v51 = v0[33];

    v52 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue;
    v0[69] = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue;
    v53 = *(v51 + v52);
    v54 = swift_allocObject();
    v0[70] = v54;
    *(v54 + 16) = v51;
    *(v54 + 24) = v34;
    v55 = swift_allocObject();
    *(v55 + 16) = partial apply for closure #3 in PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:);
    *(v55 + 24) = v54;
    v0[6] = thunk for @callee_guaranteed () -> ()partial apply;
    v0[7] = v55;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed () -> ();
    v0[5] = &block_descriptor_29_0;
    v56 = _Block_copy(v0 + 2);
    v57 = v0[7];
    v58 = v53;

    dispatch_sync(v58, v56);

    _Block_release(v56);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v68 = v0[39];
      v69 = v0[33];
      v70 = swift_task_alloc();
      v0[71] = v70;
      *(v70 + 16) = v69;
      *(v70 + 24) = v68;
      v71 = *(MEMORY[0x1E69E8920] + 4);
      v72 = swift_task_alloc();
      v0[72] = v72;
      *v72 = v0;
      v72[1] = PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:);
      v67 = v0[36];
      v60 = v0[37];
      v65 = partial apply for closure #1 in PluginAttachmentLedgerTopic.updateAttachment(input:);
      v64 = 0x80000001AEE32480;
      v61 = 0;
      v62 = 0;
      v63 = 0xD000000000000018;
      v66 = v70;
    }

    return MEMORY[0x1EEE6DE38](v60, v61, v62, v63, v64, v65, v66, v67);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v7 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v4 = PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:);
  }

  else
  {
    v5 = *(v2 + 568);
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(*(v2 + 296), type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);

    v4 = PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[70];
  v2 = v0[68];
  v4 = v0[61];
  v3 = v0[62];
  v5 = v0[59];
  v6 = v0[60];
  v7 = v0[57];
  v8 = v0[55];
  v9 = v0[53];
  v13 = v0[58];
  v14 = v0[52];
  v15 = v0[50];
  v16 = v0[49];
  v17 = v0[48];
  v18 = v0[45];
  v19 = v0[44];
  v20 = v0[43];
  v10 = v0[39];
  v21 = v0[42];
  v22 = v0[37];
  v23 = v0[35];
  v24 = v0[34];

  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v9, type metadata accessor for Attachment.MMCSMetadata);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, type metadata accessor for UploadToken);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata);
  (*(v6 + 8))(v4, v5);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v10, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);

  v11 = v0[1];

  return v11();
}

{
  v72 = v0;
  v1 = v0[71];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[33];

  v5 = *(v4 + v2);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #4 in PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:);
  *(v7 + 24) = v6;
  v0[12] = thunk for @callee_guaranteed () -> ()partial apply;
  v0[13] = v7;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = thunk for @escaping @callee_guaranteed () -> ();
  v0[11] = &block_descriptor_40;
  v8 = _Block_copy(v0 + 8);
  v9 = v0[13];

  v10 = v5;

  dispatch_sync(v10, v8);

  _Block_release(v8);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else if (one-time initialization token for attachmentLedgerTopic == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v11 = v0[73];
  v12 = v0[68];
  v13 = v0[33];
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.attachmentLedgerTopic);

  v15 = v11;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v62 = v0[67];
    v64 = v0[73];
    v58 = v0[68];
    v60 = v0[66];
    v67 = v0[64];
    v18 = v0[47];
    v19 = v0[48];
    v20 = v0[46];
    v21 = v0[33];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v71[0] = v23;
    *v22 = 136315650;
    v24 = PluginAttachmentLedgerTopic.description.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v71);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    v60(v19, v58 + OBJC_IVAR____TtC14CopresenceCore10Attachment_id, v20);
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v18 + 8))(v19, v20);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v71);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2080;
    v0[21] = v64;
    v31 = v64;
    v32 = String.init<A>(reflecting:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v71);

    *(v22 + 24) = v34;
    _os_log_impl(&dword_1AEB26000, v16, v17, "%s Failed to upload attachment %s, reason: %s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v23, -1, -1);
    MEMORY[0x1B27120C0](v22, -1, -1);
  }

  v35 = v0[73];
  v36 = v0[68];
  v38 = v0[61];
  v37 = v0[62];
  v40 = v0[59];
  v39 = v0[60];
  v41 = v0[57];
  v42 = v0[55];
  v43 = v0[53];
  v65 = v0[39];
  v68 = v0[70];
  swift_willThrow();

  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v43, type metadata accessor for Attachment.MMCSMetadata);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v42, type metadata accessor for UploadToken);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v41, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata);
  (*(v39 + 8))(v38, v40);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v65, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);

  v70 = v0[73];
  v44 = v0[61];
  v46 = v0[57];
  v45 = v0[58];
  v47 = v0[55];
  v49 = v0[52];
  v48 = v0[53];
  v51 = v0[49];
  v50 = v0[50];
  v52 = v0[48];
  v53 = v0[45];
  v56 = v0[44];
  v57 = v0[43];
  v59 = v0[42];
  v61 = v0[39];
  v63 = v0[37];
  v66 = v0[35];
  v69 = v0[34];

  v54 = v0[1];

  return v54();
}

{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[59];
  v4 = v0[60];
  v5 = v0[57];

  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v5, type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata);
  (*(v4 + 8))(v2, v3);
  v25 = v0[65];
  v6 = v0[61];
  v8 = v0[57];
  v7 = v0[58];
  v9 = v0[55];
  v11 = v0[52];
  v10 = v0[53];
  v13 = v0[49];
  v12 = v0[50];
  v14 = v0[48];
  v15 = v0[45];
  v18 = v0[44];
  v19 = v0[43];
  v20 = v0[42];
  v21 = v0[39];
  v22 = v0[37];
  v23 = v0[35];
  v24 = v0[34];

  v16 = v0[1];

  return v16();
}

uint64_t closure #1 in Attachment.Metadata.sealedMetadata(with:)(uint64_t result, uint64_t a2, unint64_t a3, void (*a4)(uint64_t, unint64_t))
{
  if (a3 >> 60 != 15)
  {
    v7 = (result + *(type metadata accessor for AttachmentLedgerMetadata_AttachmentMetadata() + 20));
    v8 = *v7;
    v9 = v7[1];
    a4(a2, a3);
    result = outlined consume of Data?(v8, v9);
    *v7 = a2;
    v7[1] = a3;
  }

  return result;
}

uint64_t closure #2 in PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v13[-v9];
  type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0);
  v14 = a2;
  v15 = a3;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd);
  result = static Message.with(_:)();
  if (!v3)
  {
    updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
    swift_storeEnumTagMultiPayload();
    (*(*(updated - 8) + 56))(v10, 0, 1, updated);
    return outlined assign with take of ActivitySession.DomainAssertionWrapper?(v10, a1, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  }

  return result;
}

uint64_t closure #1 in closure #2 in PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 112);
  v11 = *(a2 + 120);
  v13 = *(a1 + 1);

  *a1 = v12;
  *(a1 + 1) = v11;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata);
  result = static Message.with(_:)();
  if (!v3)
  {
    v15 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentAdd(0) + 24);
    outlined destroy of NSObject?(&a1[v15], &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMd, &_s14CopresenceCore017AttachmentLedger_C8MetadataVSgMR);
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v10, &a1[v15], type metadata accessor for AttachmentLedger_AttachmentMetadata);
    return (*(v7 + 56))(&a1[v15], 0, 1, v6);
  }

  return result;
}

uint64_t closure #3 in PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore10Attachment_id;
  v4 = *(*a1 + 600);

  v5 = v4(v12);
  v7 = v6;
  v8 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, a2 + v3, isUniquelyReferenced_nonNull_native);
  *v7 = v11;
  return v5(v12, 0);
}

uint64_t closure #4 in PluginAttachmentLedgerTopic.upload(id:key:assetSkeleton:developerMetadata:storageLocation:fileHash:refSignature:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC14CopresenceCore10Attachment_id;
  v4 = (*(*a1 + 600))(v6);
  specialized Dictionary.removeValue(forKey:)(a2 + v3);

  return v4(v6, 0);
}

uint64_t PluginAttachmentLedgerTopic.updateStatus(id:status:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest(0);
  *(v3 + 32) = updated;
  v6 = *(*(updated - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v7 = type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0);
  *(v3 + 48) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v9 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
  *(v3 + 64) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = *a2;
  *(v3 + 104) = *(a2 + 16);

  return MEMORY[0x1EEE6DFA0](PluginAttachmentLedgerTopic.updateStatus(id:status:), 0, 0);
}

uint64_t PluginAttachmentLedgerTopic.updateStatus(id:status:)()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v7 = v0[2];
  v6 = v0[3];
  v8 = *(v6 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  v9 = swift_task_alloc();
  v9[2] = v6;
  v9[3] = v7;
  v9[4] = v3;
  v9[5] = v2;
  v9[6] = v1;
  v10 = v8;
  OS_dispatch_queue.sync<A>(execute:)();

  v11 = v0[10];
  v13 = v0[4];
  v12 = v0[5];
  v14 = v0[3];
  outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v0[9], v11, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
  *(swift_task_alloc() + 16) = v11;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest and conformance AttachmentLedger_UpdateAttachmentRequest, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
  static Message.with(_:)();

  v15 = swift_task_alloc();
  v0[14] = v15;
  *(v15 + 16) = v14;
  *(v15 + 24) = v12;
  v16 = *(MEMORY[0x1E69E8920] + 4);
  v17 = swift_task_alloc();
  v0[15] = v17;
  *v17 = v0;
  v17[1] = PluginAttachmentLedgerTopic.updateStatus(id:status:);
  v19 = v0[6];
  v18 = v0[7];

  return MEMORY[0x1EEE6DE38](v18, 0, 0, 0xD000000000000018, 0x80000001AEE32480, closure #1 in PluginAttachmentLedgerTopic.updateAttachment(input:)partial apply, v15, v19);
}

{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = PluginAttachmentLedgerTopic.updateStatus(id:status:);
  }

  else
  {
    v5 = v2[14];
    v6 = v2[7];
    v7 = v2[5];
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v7, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
    v4 = PluginAttachmentLedgerTopic.updateStatus(id:status:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[5];
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v0[10], type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[5];

  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v3, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v2, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
  v4 = v0[16];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v8 = v0[5];

  v9 = v0[1];

  return v9();
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.updateStatus(id:status:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v89 = a3;
  v90 = a4;
  v85 = a6;
  v10 = type metadata accessor for UUID();
  v87 = *(v10 - 8);
  v88 = v10;
  v11 = *(v87 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v79 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMd, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMR);
  v15 = *(*(v84 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v84);
  v83 = (&v79 - v17);
  v18 = (*(*a1 + 584))(v16);
  if (*(v18 + 16))
  {
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v20)
    {
      v21 = *(*(v18 + 56) + 8 * v19);

      goto LABEL_6;
    }
  }

  v23 = (*(*a1 + 632))(v22);
  MEMORY[0x1EEE9AC00](v23);
  *(&v79 - 2) = a2;
  v24 = specialized Sequence.first(where:)(partial apply for closure #1 in closure #4 in closure #1 in PluginAttachmentLedgerTopic.updateStatus(id:status:), (&v79 - 4), v23);

  if (v24)
  {
    v21 = v24;
LABEL_6:
    if (a5 >> 60 == 15)
    {
      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
      swift_allocError();
      *v25 = 1;
      swift_willThrow();
    }

    else
    {
      updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0);
      v82 = v21;
      MEMORY[0x1EEE9AC00](updated);
      if (a5 >> 60 == 11)
      {
        *(&v79 - 2) = a1;
        *(&v79 - 1) = v21;
      }

      else
      {
        *(&v79 - 6) = a1;
        *(&v79 - 5) = v21;
        v49 = v90;
        *(&v79 - 4) = v89;
        *(&v79 - 3) = v49;
        *(&v79 - 2) = a5;
      }

      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
      v50 = static Message.with(_:)();
      v51 = (*(*a1 + 608))(v50);
      if (*(v51 + 16) && (v52 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v53 & 1) != 0))
      {
        v80 = a5;
        v54 = *(v51 + 56) + 16 * v52;
        v55 = *v54;
        v56 = *(v54 + 8);

        lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
        v57 = swift_allocError();
        *v58 = 5;
        v59 = v83;
        *v83 = v57;
        swift_storeEnumTagMultiPayload();
        v55(v59);
        if (v6)
        {
          v60 = a2;

          outlined destroy of NSObject?(v59, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMd, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMR);
          v85 = 0;
        }

        else
        {
          v85 = 0;
          v60 = a2;

          outlined destroy of NSObject?(v59, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMd, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMR);
        }

        a5 = v80;
      }

      else
      {
        v85 = v6;
        v60 = a2;
      }

      v61 = v88;
      v62 = swift_allocObject();
      swift_weakInit();
      v63 = v86;
      v64 = v87;
      v65 = *(v87 + 16);
      v81 = v60;
      v65(v86, v60, v61);
      v66 = (*(v64 + 80) + 24) & ~*(v64 + 80);
      v67 = (v11 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
      v68 = swift_allocObject();
      *(v68 + 16) = v62;
      (*(v64 + 32))(v68 + v66, v63, v61);
      v69 = (v68 + v67);
      v70 = v89;
      v71 = v90;
      *v69 = v89;
      v69[1] = v71;
      v69[2] = a5;
      v72 = *(*a1 + 624);

      outlined copy of Attachment.MMCSMetadata.UploadStatus(v70, v71, a5);
      v73 = v72(v91);
      v75 = v74;
      v76 = *v74;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v92 = *v75;
      *v75 = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for closure #4 in closure #1 in PluginAttachmentLedgerTopic.updateStatus(id:status:), v68, v81, isUniquelyReferenced_nonNull_native);
      *v75 = v92;
      v73(v91, 0);
    }
  }

  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Log.attachmentLedgerTopic);
  v30 = v87;
  v29 = v88;
  v31 = v13;
  (*(v87 + 16))(v13, a2, v88);
  v32 = v89;
  v33 = v90;
  outlined copy of Attachment.MMCSMetadata.UploadStatus(v89, v90, a5);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  outlined consume of Attachment.MMCSMetadata.UploadStatus(v32, v33, a5);
  if (os_log_type_enabled(v34, v35))
  {
    v36 = v30;
    v37 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v92 = v86;
    *v37 = 136315650;
    LODWORD(v85) = v35;
    v38 = PluginAttachmentLedgerTopic.description.getter();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v92);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2080;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    (*(v36 + 8))(v31, v29);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v92);

    *(v37 + 14) = v44;
    *(v37 + 22) = 2080;
    v91[0] = v32;
    v91[1] = v90;
    v91[2] = a5;
    outlined copy of Attachment.MMCSMetadata.UploadStatus(v32, v90, a5);
    v45 = String.init<A>(reflecting:)();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v92);

    *(v37 + 24) = v47;
    _os_log_impl(&dword_1AEB26000, v34, v85, "%s Couldn't find attachment %s when trying to update its status to %s", v37, 0x20u);
    v48 = v86;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v48, -1, -1);
    MEMORY[0x1B27120C0](v37, -1, -1);
  }

  else
  {

    (*(v30 + 8))(v31, v29);
  }

  lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
  swift_allocError();
  *v78 = 4;
  return swift_willThrow();
}

uint64_t closure #2 in closure #1 in PluginAttachmentLedgerTopic.updateStatus(id:status:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
  v12 = *(updated - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 112);
  v17 = *(a2 + 120);
  v18 = *(a1 + 1);

  *a1 = v16;
  *(a1 + 1) = v17;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = v22;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  static Message.with(_:)();
  v19 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0) + 24);
  outlined destroy of NSObject?(&a1[v19], &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v15, &a1[v19], type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  return (*(v12 + 56))(&a1[v19], 0, 1, updated);
}

uint64_t closure #1 in closure #2 in closure #1 in PluginAttachmentLedgerTopic.updateStatus(id:status:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v16[0] = UUID.uuid.getter();
  v16[1] = v8;
  v9 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v16, &v17);
  v11 = v10;
  outlined consume of Data._Representation(*a1, *(a1 + 8));
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = 2;
  *(a1 + 24) = 1;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  outlined copy of Data._Representation(a4, a5);
  result = outlined consume of Data._Representation(v12, v13);
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t closure #3 in closure #1 in PluginAttachmentLedgerTopic.updateStatus(id:status:)(char *a1, uint64_t a2)
{
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container(0);
  v5 = *(updated - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 112);
  v9 = *(a2 + 120);
  v11 = *(a1 + 1);

  *a1 = v10;
  *(a1 + 1) = v9;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  static Message.with(_:)();
  v12 = *(type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(0) + 24);
  outlined destroy of NSObject?(&a1[v12], &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV0c6StatusE0V9ContainerVSgMR);
  outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v8, &a1[v12], type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate.Container);
  return (*(v5 + 56))(&a1[v12], 0, 1, updated);
}

uint64_t closure #1 in closure #3 in closure #1 in PluginAttachmentLedgerTopic.updateStatus(id:status:)(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v8[0] = UUID.uuid.getter();
  v8[1] = v2;
  v3 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v8, &v9);
  v5 = v4;
  result = outlined consume of Data._Representation(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = 3;
  *(a1 + 24) = 1;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void closure #4 in closure #1 in PluginAttachmentLedgerTopic.updateStatus(id:status:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v113 = a1;
  v110 = a6;
  v111 = a3;
  v104 = a5;
  v6 = type metadata accessor for UUID();
  v108 = *(v6 - 8);
  v109 = v6;
  v7 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v107 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMd, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v103 - v14;
  v105 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack(0);
  v16 = *(*(v105 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v105);
  v106 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v103 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v103 - v22;
  v24 = type metadata accessor for DispatchPredicate();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = (&v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v112 = Strong;
  v30 = *(Strong + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v28 = v30;
  (*(v25 + 104))(v28, *MEMORY[0x1E69E8020], v24);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  (*(v25 + 8))(v28, v24);
  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_55:
    swift_once();
LABEL_11:
    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Log.attachmentLedgerTopic);
    v113 = v15;
    outlined init with copy of Attachment.MMCSMetadata(v15, v21, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v116 = v49;
      *v48 = 136315138;
      v50 = v21[24];
      *&v114 = *(v21 + 2);
      BYTE8(v114) = v50;
      v51 = String.init<A>(reflecting:)();
      v53 = v52;
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v21, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v116);

      *(v48 + 4) = v54;
      _os_log_impl(&dword_1AEB26000, v46, v47, "Received message ACK. Updating status to %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x1B27120C0](v49, -1, -1);
      MEMORY[0x1B27120C0](v48, -1, -1);
    }

    else
    {

      Topic = outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v21, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
    }

    v56 = v111;
    v57 = (*v112 + 632);
    v58 = *v57;
    v59 = (*v57)(Topic);
    v60 = &v103;
    MEMORY[0x1EEE9AC00](v59);
    *(&v103 - 2) = v56;
    v61 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in closure #4 in closure #1 in PluginAttachmentLedgerTopic.updateStatus(id:status:), (&v103 - 4), v59);
    v63 = v62;

    if (v63)
    {
      v65 = v107;
      v66 = v108;
      v67 = v56;
      v68 = v109;
      (*(v108 + 16))(v107, v67, v109);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *&v114 = v72;
        *v71 = 136315138;
        lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v73 = dispatch thunk of CustomStringConvertible.description.getter();
        v74 = v65;
        v76 = v75;
        (*(v66 + 8))(v74, v68);
        v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v76, &v114);

        *(v71 + 4) = v77;
        _os_log_impl(&dword_1AEB26000, v69, v70, "Can't find attachment with id: %s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        MEMORY[0x1B27120C0](v72, -1, -1);
        MEMORY[0x1B27120C0](v71, -1, -1);
      }

      else
      {

        (*(v66 + 8))(v65, v68);
      }

      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
      swift_allocError();
      *v82 = 4;
      swift_willThrow();
      v78 = v113;
      goto LABEL_31;
    }

    v78 = v113;
    v79 = *(v113 + 2);
    if (v113[24] == 1 && v79 == 1)
    {
      if (v110 >> 60 == 15)
      {
LABEL_21:
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v113, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);

        return;
      }

LABEL_38:
      v84 = v106;
      outlined init with copy of Attachment.MMCSMetadata(v113, v106, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = v84;
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *&v114 = v89;
        *v88 = 136315138;
        lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
        v90 = Message.debugDescription.getter();
        v91 = v78;
        v93 = v92;
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v87, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
        v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v93, &v114);

        *(v88 + 4) = v94;
        _os_log_impl(&dword_1AEB26000, v85, v86, "Dropping ack response %s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v89);
        MEMORY[0x1B27120C0](v89, -1, -1);
        MEMORY[0x1B27120C0](v88, -1, -1);

        v83 = v91;
      }

      else
      {

        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v84, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
        v83 = v78;
      }

      goto LABEL_33;
    }

    v80 = v110 & 0xF000000000000000;
    if (v110 >> 60 == 15)
    {
      if (v79 != 1)
      {
        goto LABEL_38;
      }
    }

    else if (v80 == 0xB000000000000000)
    {
      if (v79 != 3)
      {
        goto LABEL_38;
      }
    }

    else if (v79 != 2)
    {
      goto LABEL_38;
    }

    if (!v113[24])
    {
      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
      swift_allocError();
      *v81 = 1;
      swift_willThrow();
      goto LABEL_31;
    }

    if (v79 <= 1)
    {
      goto LABEL_21;
    }

    if (v79 == 2)
    {
      if (v110 >> 60 != 15 && v80 != 0xB000000000000000)
      {
        v60 = *(v113 + 4);
        v95 = outlined copy of Data._Representation(v104, v110);
        v96 = v58(v95);
        v97 = v96;
        if ((v96 & 0xC000000000000001) == 0)
        {
          if ((v61 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v61 < *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v98 = *(v96 + 8 * v61 + 32);

LABEL_48:

            v99 = v104;
            *&v114 = v60;
            *(&v114 + 1) = v104;
            v100 = v110;
            v115 = v110;
            outlined copy of Data._Representation(v104, v110);
            Attachment.update(_:)(&v114);

            outlined consume of Attachment.MMCSMetadata.UploadStatus(v114, *(&v114 + 1), v115);
            outlined consume of Data._Representation(v99, v100);
            goto LABEL_32;
          }

          __break(1u);
          return;
        }

LABEL_59:
        MEMORY[0x1B2710B10](v61, v97);
        goto LABEL_48;
      }

LABEL_31:

LABEL_32:
      v83 = v78;
LABEL_33:
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v83, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
      return;
    }

    v101 = v58(v64);
    v97 = v101;
    if ((v101 & 0xC000000000000001) == 0)
    {
      if ((v61 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v61 < *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v102 = *(v101 + 8 * v61 + 32);

LABEL_53:

        v114 = 0uLL;
        v115 = 0xB000000000000000;
        Attachment.update(_:)(&v114);
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v78, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);

        return;
      }

      __break(1u);
      goto LABEL_59;
    }

    MEMORY[0x1B2710B10](v61, v101);
    goto LABEL_53;
  }

  v32 = v113;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v113, v15, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMd, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v44 = v15;
    v15 = v23;
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v44, v23, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged.Ack);
    if (one-time initialization token for attachmentLedgerTopic == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

  outlined destroy of NSObject?(v15, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMd, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMR);
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v32, v13, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMd, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v13;
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Log.attachmentLedgerTopic);
    v35 = v33;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v114 = v39;
      *v38 = 136315138;
      v116 = v33;
      v40 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v41 = String.init<A>(reflecting:)();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v114);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_1AEB26000, v36, v37, "ACK message wasn't received for reason: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x1B27120C0](v39, -1, -1);
      MEMORY[0x1B27120C0](v38, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    outlined destroy of NSObject?(v13, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMd, &_ss6ResultOy14CopresenceCore34AttachmentLedger_SubscribeResponseV0D6UpdateV13StatusChangedV3AckVs5Error_pGMR);
  }
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B2710B10](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t closure #2 in PluginAttachmentLedgerTopic.updateStatus(id:status:)(uint64_t a1, uint64_t a2)
{
  outlined destroy of NSObject?(a1, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  outlined init with copy of Attachment.MMCSMetadata(a2, a1, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate);
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(updated - 8) + 56))(a1, 0, 1, updated);
}

uint64_t PluginAttachmentLedgerTopic.remove(id:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentResponse(0);
  v2[7] = updated;
  v7 = *(*(updated - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest(0);
  v2[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PluginAttachmentLedgerTopic.remove(id:), 0, 0);
}

uint64_t PluginAttachmentLedgerTopic.remove(id:)()
{
  v52 = v0;
  (*(**(v0 + 24) + 288))(&v45);
  if ((v50 & 0x8000000000000000) == 0 || ((v1 = v47 | v46, v2 = v49 | v51, v50 == 0x8000000000000000) ? (v3 = (v47 | v46 | v45 | v48 | v49 | v51) == 0) : (v3 = 0), v3))
  {
    outlined consume of PluginAttachmentLedgerTopic.State(v45, v46, v47, v48, v49, v50);
  }

  else
  {
    v4 = v45;
    v5 = v48;
    v6 = v50;
    outlined consume of PluginAttachmentLedgerTopic.State(v45, v46, v47, v48, v49, v50);
    if (v6 == 0x8000000000000000 && v4 == 1 && !(v1 | v5 | v2))
    {
      v8 = *(v0 + 72);
      v7 = *(v0 + 80);
      v9 = *(v0 + 16);
      v10 = *(v0 + 24);
      v11 = swift_task_alloc();
      *(v11 + 16) = v10;
      *(v11 + 24) = v9;
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest and conformance AttachmentLedger_UpdateAttachmentRequest, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
      static Message.with(_:)();

      v12 = swift_task_alloc();
      *(v0 + 88) = v12;
      *(v12 + 16) = v10;
      *(v12 + 24) = v7;
      v13 = *(MEMORY[0x1E69E8920] + 4);
      v14 = swift_task_alloc();
      *(v0 + 96) = v14;
      *v14 = v0;
      v14[1] = PluginAttachmentLedgerTopic.remove(id:);
      v16 = *(v0 + 56);
      v15 = *(v0 + 64);

      return MEMORY[0x1EEE6DE38](v15, 0, 0, 0xD000000000000018, 0x80000001AEE32480, closure #1 in PluginAttachmentLedgerTopic.updateAttachment(input:)partial apply, v12, v16);
    }
  }

  if (one-time initialization token for attachmentLedgerTopic != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 40);
  v17 = *(v0 + 48);
  v20 = *(v0 + 24);
  v19 = *(v0 + 32);
  v21 = *(v0 + 16);
  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Log.attachmentLedgerTopic);
  (*(v18 + 16))(v17, v21, v19);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  v25 = os_log_type_enabled(v23, v24);
  v27 = *(v0 + 40);
  v26 = *(v0 + 48);
  v28 = *(v0 + 32);
  if (v25)
  {
    v44 = *(v0 + 24);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v45 = v30;
    *v29 = 136315394;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    (*(v27 + 8))(v26, v28);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v45);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v35 = PluginAttachmentLedgerTopic.description.getter();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v45);

    *(v29 + 14) = v37;
    _os_log_impl(&dword_1AEB26000, v23, v24, "Dropping request to remove attachment %s because state of PluginAttachmentLedgerTopic is invalid %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v30, -1, -1);
    MEMORY[0x1B27120C0](v29, -1, -1);
  }

  else
  {

    (*(v27 + 8))(v26, v28);
  }

  lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors();
  swift_allocError();
  *v38 = 3;
  swift_willThrow();
  v39 = *(v0 + 80);
  v40 = *(v0 + 64);
  v41 = *(v0 + 48);

  v42 = *(v0 + 8);

  return v42();
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = PluginAttachmentLedgerTopic.remove(id:);
  }

  else
  {
    v5 = *(v2 + 88);
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(*(v2 + 64), type metadata accessor for AttachmentLedger_UpdateAttachmentResponse);

    v4 = PluginAttachmentLedgerTopic.remove(id:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[8];
  v2 = v0[6];
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v0[10], type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);

  v3 = v0[1];

  return v3();
}

{
  v2 = v0[10];
  v1 = v0[11];

  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v2, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest);
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[8];
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.remove(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12[-v8];
  type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove(0);
  v13 = a2;
  v14 = a3;
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove and conformance AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove, type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.AttachmentRemove);
  static Message.with(_:)();
  updated = type metadata accessor for AttachmentLedger_UpdateAttachmentRequest.OneOf_Operation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(updated - 8) + 56))(v9, 0, 1, updated);
  return outlined assign with take of ActivitySession.DomainAssertionWrapper?(v9, a1, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMd, &_s14CopresenceCore023AttachmentLedger_UpdateC7RequestV15OneOf_OperationOSgMR);
}

uint64_t closure #1 in closure #1 in PluginAttachmentLedgerTopic.remove(id:)(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 112);
  v3 = *(a2 + 120);
  v5 = a1[1];

  *a1 = v4;
  a1[1] = v3;
  v12[0] = UUID.uuid.getter();
  v12[1] = v6;
  v7 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v12, &v13);
  v9 = v8;
  result = outlined consume of Data._Representation(a1[2], a1[3]);
  a1[2] = v7;
  a1[3] = v9;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PluginAttachmentLedgerTopic.setupSubscribeStream()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v58 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy14CopresenceCore34AttachmentLedger_SubscribeResponseVAH14PluginRpcErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy14CopresenceCore34AttachmentLedger_SubscribeResponseVAH14PluginRpcErrorOGSo17OS_dispatch_queueCGMR);
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v50 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMd, &_s7Combine10PublishersO17BufferingStrategyOy_s5NeverOGMR);
  v52 = *(v57 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v53 = &v50 - v8;
  v9 = type metadata accessor for Publishers.PrefetchStrategy();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore33AttachmentLedger_SubscribeRequestVs5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore33AttachmentLedger_SubscribeRequestVs5NeverOGGMR);
  v55 = *(v14 - 8);
  v56 = v14;
  v15 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v50 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue;
  v22 = v0;
  v23 = *(v0 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v21 = v23;
  (*(v18 + 104))(v21, *MEMORY[0x1E69E8020], v17);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  result = (*(v18 + 8))(v21, v17);
  if (v23)
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy14CopresenceCore33AttachmentLedger_SubscribeRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore33AttachmentLedger_SubscribeRequestVs5NeverOGMR);
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v29 = PassthroughSubject.init()();
    v50 = v0;
    PluginAttachmentLedgerTopic.subscribeStreamInput.willset(v29);
    v30 = *(v0 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamInput);
    *(v22 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamInput) = v29;

    v63 = v29;
    v31 = v9;
    (*(v10 + 104))(v13, *MEMORY[0x1E695BD28], v9);
    v33 = v52;
    v32 = v53;
    v34 = v57;
    (*(v52 + 104))(v53, *MEMORY[0x1E695BD40], v57);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<AttachmentLedger_SubscribeRequest, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy14CopresenceCore33AttachmentLedger_SubscribeRequestVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy14CopresenceCore33AttachmentLedger_SubscribeRequestVs5NeverOGMR);
    v35 = v51;
    Publisher.buffer(size:prefetch:whenFull:)();
    (*(v33 + 8))(v32, v34);
    (*(v10 + 8))(v13, v31);

    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Buffer<PassthroughSubject<AttachmentLedger_SubscribeRequest, Never>> and conformance Publishers.Buffer<A>, &_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore33AttachmentLedger_SubscribeRequestVs5NeverOGGMd, &_s7Combine10PublishersO6BufferVy_AA18PassthroughSubjectCy14CopresenceCore33AttachmentLedger_SubscribeRequestVs5NeverOGGMR);
    v36 = v56;
    v37 = Publisher.eraseToAnyPublisher()();
    (*(v55 + 8))(v35, v36);
    v38 = v50;
    v39 = v50[24];
    v40 = v50[25];
    __swift_project_boxed_opaque_existential_1(v50 + 21, v39);
    v41 = (*(v40 + 32))(v37, v39, v40);
    v62 = *(v38 + v54);
    v42 = v62;
    v63 = v41;
    v43 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v44 = v58;
    (*(*(v43 - 8) + 56))(v58, 1, 1, v43);
    v45 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy14CopresenceCore34AttachmentLedger_SubscribeResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore34AttachmentLedger_SubscribeResponseVAD14PluginRpcErrorOGMR);
    type metadata accessor for OS_dispatch_queue();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<AttachmentLedger_SubscribeResponse, PluginRpcError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy14CopresenceCore34AttachmentLedger_SubscribeResponseVAD14PluginRpcErrorOGMd, &_s7Combine12AnyPublisherVy14CopresenceCore34AttachmentLedger_SubscribeResponseVAD14PluginRpcErrorOGMR);
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue);
    v46 = v59;
    Publisher.receive<A>(on:options:)();
    outlined destroy of NSObject?(v44, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<AttachmentLedger_SubscribeResponse, PluginRpcError>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy14CopresenceCore34AttachmentLedger_SubscribeResponseVAH14PluginRpcErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy14CopresenceCore34AttachmentLedger_SubscribeResponseVAH14PluginRpcErrorOGSo17OS_dispatch_queueCGMR);
    v47 = v61;
    v48 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v60 + 8))(v46, v47);
    v49 = *(v38 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamResponseCancellable);
    *(v38 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamResponseCancellable) = v48;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in PluginAttachmentLedgerTopic.init(name:service:dataCryptorProvider:config:localParticipantID:initialAttachments:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

uint64_t PluginAttachmentLedgerTopic.handleSubscribeStreamClosed(completedWith:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGSgMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v54 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v52 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v53 = &v51 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - v17;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v2 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v23 = v24;
  (*(v20 + 104))(v23, *MEMORY[0x1E69E8020], v19);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v23, v19);
  if (v24)
  {
    if (one-time initialization token for attachmentLedgerTopic == -1)
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
  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Log.attachmentLedgerTopic);
  v55 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v18, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v57[0] = v51;
    *v29 = 136315394;
    v30 = PluginAttachmentLedgerTopic.description.getter();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v57);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v18, v9, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
    (*(v11 + 56))(v9, 0, 1, v10);
    v33 = v54;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v9, v54, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGSgMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGSgMR);
    if ((*(v11 + 48))(v33, 1, v10) == 1)
    {
      v34 = 0xE300000000000000;
      v35 = 7104878;
    }

    else
    {
      v37 = v53;
      outlined init with take of UUID?(v33, v53, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v37, v52, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
      v35 = String.init<A>(reflecting:)();
      v34 = v38;
      outlined destroy of NSObject?(v37, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
    }

    outlined destroy of NSObject?(v9, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGSgMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGSgMR);
    outlined destroy of NSObject?(v18, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v34, v57);

    *(v29 + 14) = v39;
    _os_log_impl(&dword_1AEB26000, v27, v28, "%s Subscribe stream closed for reason: %s", v29, 0x16u);
    v40 = v51;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v40, -1, -1);
    MEMORY[0x1B27120C0](v29, -1, -1);
  }

  else
  {

    v36 = outlined destroy of NSObject?(v18, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_14CopresenceCore14PluginRpcErrorOGMR);
  }

  (*(*v2 + 288))(v57, v36);
  v41 = v58;
  result = outlined consume of PluginAttachmentLedgerTopic.State(v57[0], v57[1], v57[2], v57[3], v57[4], v58);
  if (v41 >> 62 != 1)
  {
    v43 = Subscribers.Completion<>.pluginShutdownReason.getter(&v56);
    v44 = v56;
    v45 = (*(*v2 + 584))(v43);
    v46 = v45;
    v47 = *(v45 + 16);
    if (v47)
    {
      v48 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo14TUConversationC_Tt1g5(*(v45 + 16), 0);
      v49 = specialized Sequence._copySequenceContents(initializing:)(v57, (v48 + 32), v47, v46);
      v50 = outlined consume of Set<String>.Iterator._Variant();
      if (v49 == v47)
      {
LABEL_14:
        (*(*v2 + 392))(v57, v50);
        v58 = v44 | 0x4000000000000000;
        v59 = v48;
        return (*(*v2 + 352))(v57);
      }

      __break(1u);
    }

    v48 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  return result;
}

uint64_t closure #2 in PluginAttachmentLedgerTopic.setupSubscribeStream()(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v69 = *(v2 - 8);
  v70 = v2;
  v3 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v67 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for DispatchQoS();
  v66 = *(v68 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v65 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for DispatchTime();
  v64 = *(v72 - 8);
  v7 = *(v64 + 64);
  v8 = MEMORY[0x1EEE9AC00](v72);
  v63[2] = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v71 = v63 - v10;
  v74 = type metadata accessor for AttachmentLedger_SubscribeResponse(0);
  v11 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v77 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0);
  v13 = *(*(v73 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v73);
  v16 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v75 = v63 - v17;
  v18 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v78 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = v63 - v23;
  v25 = type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = v63 - v31;
  v76 = a1;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    return outlined destroy of NSObject?(v24, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV15OneOf_OperationOSgMR);
  }

  outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v24, v32, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v39 = v32;
    return outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  }

  v35 = Strong;
  outlined init with copy of Attachment.MMCSMetadata(v32, v30, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v37 = v75;
      outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v30, v75, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
      PluginAttachmentLedgerTopic.processAttachmentUpdate(_:)(v37);
      v40 = OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_currentKnownSeqNo;
      v41 = *(v35 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_currentKnownSeqNo);
      if (!v41)
      {
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
        v42 = v73;
LABEL_22:
        v62 = *(v37 + *(v42 + 20));
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v37, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
        *(v35 + v40) = v62;
      }

      v42 = v73;
      v43 = *(v37 + *(v73 + 20));
      v44 = v43 >= v41;
      v45 = v43 - v41;
      if (v44)
      {
        if (v45 == 1)
        {
          goto LABEL_20;
        }

        if (one-time initialization token for attachmentLedgerTopic == -1)
        {
LABEL_14:
          v46 = type metadata accessor for Logger();
          __swift_project_value_buffer(v46, static Log.attachmentLedgerTopic);
          outlined init with copy of Attachment.MMCSMetadata(v37, v16, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);

          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = v35;
            v51 = swift_slowAlloc();
            aBlock = v51;
            *v49 = 136315394;

            v52 = PluginAttachmentLedgerTopic.description.getter();
            v78 = v32;
            v54 = v53;

            v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &aBlock);

            *(v49 + 4) = v55;
            *(v49 + 12) = 2080;
            lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.AttachmentUpdate and conformance AttachmentLedger_SubscribeResponse.AttachmentUpdate, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
            v56 = Message.debugDescription.getter();
            v58 = v57;
            outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v16, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
            v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &aBlock);

            *(v49 + 14) = v59;
            _os_log_impl(&dword_1AEB26000, v47, v48, "Detected an out of order sequence number for topic %s on attachment update %s", v49, 0x16u);
            swift_arrayDestroy();
            v60 = v51;
            v35 = v50;
            v37 = v75;
            MEMORY[0x1B27120C0](v60, -1, -1);
            MEMORY[0x1B27120C0](v49, -1, -1);

            v61 = v78;
LABEL_21:
            outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v61, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
            goto LABEL_22;
          }

          outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v16, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate);
LABEL_20:
          v61 = v32;
          goto LABEL_21;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
      goto LABEL_14;
    }

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);

    v39 = v30;
    return outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v39, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  }

  v38 = v78;
  outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v30, v78, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
  PluginAttachmentLedgerTopic.processInitializeAck(_:)(v38);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v38, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
  outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v32, type metadata accessor for AttachmentLedger_SubscribeResponse.OneOf_Operation);
  *(v35 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_currentKnownSeqNo) = 0;
}

void PluginAttachmentLedgerTopic.processInitializeAck(_:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v76 = &v72 - v7;
  v8 = type metadata accessor for AttachmentLedger_ErrorResponse(0);
  v74 = *(v8 - 8);
  v75 = v8;
  v9 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v77 = (&v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v79 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v78 = (&v72 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v72 - v17;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v3 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v23 = v24;
  (*(v20 + 104))(v23, *MEMORY[0x1E69E8020], v19);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v23, v19);
  if (v24)
  {
    if (one-time initialization token for attachmentLedgerTopic == -1)
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
  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Log.attachmentLedgerTopic);
  v80 = a1;
  outlined init with copy of Attachment.MMCSMetadata(a1, v18, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v73 = v2;
    v30 = v29;
    v72 = swift_slowAlloc();
    v81 = v72;
    *v30 = 136315394;
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck and conformance AttachmentLedger_SubscribeResponse.InitializeAck, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    v31 = Message.debugDescription.getter();
    v32 = v11;
    v34 = v33;
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v18, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v34, &v81);
    v11 = v32;

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    v36 = PluginAttachmentLedgerTopic.description.getter();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v81);

    *(v30 + 14) = v38;
    _os_log_impl(&dword_1AEB26000, v27, v28, "[Subscribe] Received InitializeAck response=%s, %s", v30, 0x16u);
    v39 = v72;
    swift_arrayDestroy();
    MEMORY[0x1B27120C0](v39, -1, -1);
    MEMORY[0x1B27120C0](v30, -1, -1);
  }

  else
  {

    Topic = outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v18, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
  }

  (*(*v3 + 344))(&v81, Topic);
  v41 = v80;
  if (!(v86 >> 62))
  {
    outlined consume of PluginAttachmentLedgerTopic.State(v81, v82, v83, v84, v85, v86);
    goto LABEL_14;
  }

  if (v86 >> 62 == 2 && v86 == 0x8000000000000000 && !(v82 | v81 | v83 | v84 | v85 | v87))
  {
LABEL_14:
    if (*(v41 + 8) == 1)
    {
      v49 = *v41;
      if (*v41 <= 3)
      {
        if ((v49 - 2) >= 2 && v49)
        {
          PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(v41);
          return;
        }
      }

      else
      {
        if (v49 <= 5)
        {
          if (v49 == 4)
          {
            lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
            swift_allocError();
            *v71 = 0;
            goto LABEL_30;
          }

          lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors();
          swift_allocError();
          v70 = 1;
LABEL_29:
          *v69 = v70;
LABEL_30:
          swift_willThrow();
          return;
        }

        if ((v49 - 6) >= 2)
        {
          PluginAttachmentLedgerTopic.processInitializeAckMissingEncryptionIDs(_:)(v41);
          return;
        }
      }
    }

    v50 = v78;
    outlined init with copy of Attachment.MMCSMetadata(v41, v78, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    v51 = v79;
    outlined init with copy of Attachment.MMCSMetadata(v41, v79, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      LODWORD(v80) = v53;
      v54 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v81 = v73;
      *v54 = 134218498;
      v55 = *v50;
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v50, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
      *(v54 + 4) = v55;
      *(v54 + 12) = 2080;
      v56 = v76;
      outlined init with copy of ActivitySession.DomainAssertionWrapper?(v51 + *(v11 + 36), v76, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
      v57 = v51;
      v58 = v75;
      v59 = *(v74 + 48);
      if (v59(v56, 1, v75) == 1)
      {
        v60 = v77;
        *v77 = 0;
        v60[1] = 0xE000000000000000;
        v60[2] = 0;
        v60[3] = 0;
        v61 = v60 + *(v58 + 28);
        UnknownStorage.init()();
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v57, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
        if (v59(v56, 1, v58) != 1)
        {
          outlined destroy of NSObject?(v56, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMd, &_s14CopresenceCore30AttachmentLedger_ErrorResponseVSgMR);
        }
      }

      else
      {
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v51, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
        v60 = v77;
        outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v56, v77, type metadata accessor for AttachmentLedger_ErrorResponse);
      }

      v62 = *v60;
      v63 = v60[1];

      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v60, type metadata accessor for AttachmentLedger_ErrorResponse);
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v81);

      *(v54 + 14) = v64;
      *(v54 + 22) = 2080;
      v65 = PluginAttachmentLedgerTopic.description.getter();
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v81);

      *(v54 + 24) = v67;
      _os_log_impl(&dword_1AEB26000, v52, v80, "[Subscribe] InitializeAck failed, unexpected response-status, code=%ld error=%s, %s", v54, 0x20u);
      v68 = v73;
      swift_arrayDestroy();
      MEMORY[0x1B27120C0](v68, -1, -1);
      MEMORY[0x1B27120C0](v54, -1, -1);
    }

    else
    {
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v50, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);

      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v51, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
    }

    lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.RetryErrors and conformance PluginAttachmentLedgerTopic.RetryErrors();
    swift_allocError();
    v70 = 2;
    goto LABEL_29;
  }

  outlined consume of PluginAttachmentLedgerTopic.State(v81, v82, v83, v84, v85, v86);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v88 = v45;
    *v44 = 136315138;
    v46 = PluginAttachmentLedgerTopic.description.getter();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v88);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_1AEB26000, v42, v43, "[Subscribe] Ignoring InitializeAck because of invalid state=%s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x1B27120C0](v45, -1, -1);
    MEMORY[0x1B27120C0](v44, -1, -1);
  }
}

uint64_t closure #1 in closure #2 in PluginAttachmentLedgerTopic.setupSubscribeStream()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    PluginAttachmentLedgerTopic.sendSubscribeRequest()();
  }

  return result;
}

Swift::Void __swiftcall PluginAttachmentLedgerTopic.sendSubscribeRequest()()
{
  v1 = v0;
  v2 = type metadata accessor for AttachmentLedger_SubscribeRequest(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v37 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest and conformance AttachmentLedger_SubscribeRequest, type metadata accessor for AttachmentLedger_SubscribeRequest);
    static Message.with(_:)();
    if (one-time initialization token for attachmentLedgerTopic != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Log.attachmentLedgerTopic);
    outlined init with copy of Attachment.MMCSMetadata(v8, v6, type metadata accessor for AttachmentLedger_SubscribeRequest);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38[0] = v31;
      *v30 = 136315138;
      v32 = Message.debugDescription.getter();
      v34 = v33;
      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, type metadata accessor for AttachmentLedger_SubscribeRequest);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, v38);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1AEB26000, v28, v29, "[Subscribe] Sending Initialize requeset=%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1B27120C0](v31, -1, -1);
      MEMORY[0x1B27120C0](v30, -1, -1);
    }

    else
    {

      outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v6, type metadata accessor for AttachmentLedger_SubscribeRequest);
    }

    v36 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_subscribeStreamInput);

    PassthroughSubject.send(_:)();

    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v8, type metadata accessor for AttachmentLedger_SubscribeRequest);
  }

  else
  {
    __break(1u);
    swift_once();
    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Log.attachmentLedgerTopic);
    v17 = v13;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37[1] = v13;
      v38[0] = v21;
      *v20 = 136315138;
      v22 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v23 = String.init<A>(reflecting:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v38);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1AEB26000, v18, v19, "[Subscribe] Failed to create subscribeRequest, reason: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1B27120C0](v21, -1, -1);
      MEMORY[0x1B27120C0](v20, -1, -1);
    }

    v26 = v13;
    PluginAttachmentLedgerTopic.shutdown(reason:)(v13);
  }
}

uint64_t PluginAttachmentLedgerTopic.processAttachmentUpdate(_:)(uint64_t a1)
{
  v3 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = &v42 - v8;
  v9 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v42 - v19;
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v25 = v26;
  (*(v22 + 104))(v25, *MEMORY[0x1E69E8020], v21);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v25, v21);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = *(a1 + *(type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate(0) + 20));
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(a1, v20, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMd, &_s14CopresenceCore34AttachmentLedger_SubscribeResponseV0C6UpdateV11OneOf_EventOSgMR);
  v28 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event(0);
  if ((*(*(v28 - 8) + 48))(v20, 1, v28) == 1)
  {
    if (one-time initialization token for attachmentLedgerTopic == -1)
    {
LABEL_4:
      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Log.attachmentLedgerTopic);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1AEB26000, v30, v31, "Unknown attachmentUpdate event received", v32, 2u);
        MEMORY[0x1B27120C0](v32, -1, -1);
      }

      v33 = type metadata accessor for UUID();
      v34 = v43;
      (*(*(v33 - 8) + 56))(v43, 1, 1, v33);
      PluginAttachmentLedgerTopic.acknowledgeAttachment(_:_:)(v34, v21);
      return outlined destroy of NSObject?(v34, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v39 = type metadata accessor for UUID();
      v40 = v43;
      (*(*(v39 - 8) + 56))(v43, 1, 1, v39);
      PluginAttachmentLedgerTopic.acknowledgeAttachment(_:_:)(v40, v21);
      outlined destroy of NSObject?(v40, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v20, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.OneOf_Event);
    }

    v41 = v42;
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v20, v42, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged);
    PluginAttachmentLedgerTopic.processAttachmentStatusChanged(_:_:)(v41, v21);
    v37 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.StatusChanged;
    v38 = v41;
  }

  else if (EnumCaseMultiPayload)
  {
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v20, v12, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed);
    PluginAttachmentLedgerTopic.processAttachmentUpdateRemove(_:_:)(v12, v21);
    v37 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Removed;
    v38 = v12;
  }

  else
  {
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v20, v16, type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added);
    PluginAttachmentLedgerTopic.processAttachmentUpdateAdd(_:_:)(v16, v21);
    v37 = type metadata accessor for AttachmentLedger_SubscribeResponse.AttachmentUpdate.Added;
    v38 = v16;
  }

  return outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v38, v37);
}

uint64_t PluginAttachmentLedgerTopic.subscribeRequest.getter()
{
  type metadata accessor for AttachmentLedger_SubscribeRequest(0);
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest and conformance AttachmentLedger_SubscribeRequest, type metadata accessor for AttachmentLedger_SubscribeRequest);
  return static Message.with(_:)();
}

uint64_t closure #1 in PluginAttachmentLedgerTopic.subscribeRequest.getter(uint64_t a1)
{
  v3 = type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeRequest.Initialize and conformance AttachmentLedger_SubscribeRequest.Initialize, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
  result = static Message.with(_:)();
  if (!v1)
  {
    outlined destroy of NSObject?(a1, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMd, &_s14CopresenceCore33AttachmentLedger_SubscribeRequestV15OneOf_OperationOSgMR);
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v6, a1, type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize);
    v8 = type metadata accessor for AttachmentLedger_SubscribeRequest.OneOf_Operation(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
  }

  return result;
}

uint64_t closure #1 in closure #1 in PluginAttachmentLedgerTopic.subscribeRequest.getter(void *a1, void *a2)
{
  v3 = v2;
  v70 = type metadata accessor for AttachmentLedger_AttachmentMetadata(0);
  v68 = *(v70 - 8);
  v6 = *(v68 + 64);
  v7 = MEMORY[0x1EEE9AC00](v70);
  v71 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v69 = &v63 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v63 - v11;
  v79 = type metadata accessor for UUID();
  v74 = *(v79 - 8);
  v12 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttachmentLedger_EncryptionID(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v65 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v63 - v19;
  v22 = a2[14];
  v21 = a2[15];
  v23 = a1[1];

  *a1 = v22;
  a1[1] = v21;
  a1[3] = a2[13];
  v75 = lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_EncryptionID and conformance AttachmentLedger_EncryptionID, type metadata accessor for AttachmentLedger_EncryptionID);
  v24 = v3;
  static Message.with(_:)();
  v25 = v3;
  v26 = *(type metadata accessor for AttachmentLedger_SubscribeRequest.Initialize(0) + 40);
  outlined destroy of NSObject?(a1 + v26, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMd, &_s14CopresenceCore29AttachmentLedger_EncryptionIDVSgMR);
  outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v20, a1 + v26, type metadata accessor for AttachmentLedger_EncryptionID);
  v76 = v15;
  v77 = v14;
  v27 = *(v15 + 56);
  v66 = a1;
  v27(a1 + v26, 0, 1, v14);
  v28 = a2[29];
  v29 = a2[30];
  __swift_project_boxed_opaque_existential_1(a2 + 26, v28);
  v30 = (*(v29 + 24))(v28, v29);
  v31 = *(v30 + 16);
  if (v31)
  {
    v80 = v24;
    v64 = a2;
    v81 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
    v32 = v81;
    v33 = v74 + 16;
    v34 = *(v74 + 16);
    v35 = *(v74 + 80);
    v63 = v30;
    v36 = v30 + ((v35 + 32) & ~v35);
    v73 = *(v74 + 72);
    v74 = v34;
    v72 = (v33 - 8);
    v37 = v33;
    v38 = v65;
    v39 = v78;
    do
    {
      v40 = v79;
      v41 = v37;
      v42 = (v74)(v39, v36, v79);
      MEMORY[0x1EEE9AC00](v42);
      *(&v63 - 2) = v39;
      v43 = v80;
      static Message.with(_:)();
      v80 = v43;
      (*v72)(v39, v40);
      v81 = v32;
      v45 = *(v32 + 16);
      v44 = *(v32 + 24);
      if (v45 >= v44 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1);
        v32 = v81;
      }

      *(v32 + 16) = v45 + 1;
      outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v38, v32 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v45, type metadata accessor for AttachmentLedger_EncryptionID);
      v36 += v73;
      --v31;
      v37 = v41;
    }

    while (v31);

    a2 = v64;
    v25 = v80;
  }

  else
  {

    v32 = MEMORY[0x1E69E7CC0];
  }

  v46 = v66;
  v47 = v66[2];

  v46[2] = v32;
  v49 = (*(*a2 + 632))(v48);
  v50 = v49;
  if (v49 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v52 = 0;
    v79 = v50 & 0xFFFFFFFFFFFFFF8;
    v80 = v50 & 0xC000000000000001;
    v53 = MEMORY[0x1E69E7CC0];
    while (v80)
    {
      MEMORY[0x1B2710B10](v52, v50);
      v55 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        goto LABEL_25;
      }

LABEL_14:
      lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      v56 = v69;
      static Message.with(_:)();
      if (v25)
      {
      }

      v57 = v67;
      outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v56, v67, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v57, v71, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v53[2] + 1, 1, v53);
      }

      v59 = v53[2];
      v58 = v53[3];
      if (v59 >= v58 >> 1)
      {
        v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v58 > 1, v59 + 1, 1, v53);
      }

      v53[2] = v59 + 1;
      outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v71, v53 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v59, type metadata accessor for AttachmentLedger_AttachmentMetadata);
      ++v52;
      if (v55 == i)
      {
        goto LABEL_29;
      }
    }

    if (v52 >= *(v79 + 16))
    {
      goto LABEL_26;
    }

    v54 = *(v50 + 8 * v52 + 32);

    v55 = v52 + 1;
    if (!__OFADD__(v52, 1))
    {
      goto LABEL_14;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  v53 = MEMORY[0x1E69E7CC0];
LABEL_29:

  v61 = v66;
  v62 = v66[4];

  v61[4] = v53;
  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in closure #1 in PluginAttachmentLedgerTopic.subscribeRequest.getter(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v8[0] = UUID.uuid.getter();
  v8[1] = v2;
  v3 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v8, &v9);
  v5 = v4;
  result = outlined consume of Data._Representation(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = v5;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(void *a1)
{
  v111 = a1;
  v110 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck(0);
  v3 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v108 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtGMd, &_sScSy14CopresenceCore023AttachmentLedger_UpdateC7RequestV_ScCyAA0cd1_eC8ResponseVs5Error_pGtGMR);
  v106 = *(v5 - 8);
  v107 = v5;
  v103 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v104 = &v91 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v105 = &v91 - v9;
  v100 = type metadata accessor for UUID();
  v97 = *(v100 - 8);
  v10 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v96 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for AttachmentLedger_AuthPutMaterials(0);
  v109 = *(v102 - 8);
  v12 = *(v109 + 64);
  v13 = MEMORY[0x1EEE9AC00](v102);
  v99 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v95 = (&v91 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v98 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v101 = &v91 - v20;
  v21 = type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchPredicate();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = (&v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = v1;
  v31 = *(v1 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_queue);
  *v30 = v31;
  (*(v27 + 104))(v30, *MEMORY[0x1E69E8020], v26);
  v32 = v31;
  v33 = _dispatchPreconditionTest(_:)();
  (*(v27 + 8))(v30, v26);
  if ((v33 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v31 = v111;
  if (*v111 != 1)
  {
    if (one-time initialization token for attachmentLedgerTopic == -1)
    {
LABEL_16:
      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static Log.attachmentLedgerTopic);
      v46 = v108;
      outlined init with copy of Attachment.MMCSMetadata(v31, v108, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v113 = v50;
        *v49 = 136315138;
        lazy protocol witness table accessor for type AttachmentLedger_AttachmentMetadata and conformance AttachmentLedger_AttachmentMetadata(&lazy protocol witness table cache variable for type AttachmentLedger_SubscribeResponse.InitializeAck and conformance AttachmentLedger_SubscribeResponse.InitializeAck, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
        v51 = Message.debugDescription.getter();
        v53 = v52;
        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v46, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v113);

        *(v49 + 4) = v54;
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        MEMORY[0x1B27120C0](v50, -1, -1);
        MEMORY[0x1B27120C0](v49, -1, -1);
      }

      else
      {

        outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v46, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck);
      }

      lazy protocol witness table accessor for type PluginAttachmentLedgerTopic.Errors and conformance PluginAttachmentLedgerTopic.Errors();
      swift_allocError();
      *v55 = 1;
      return swift_willThrow();
    }

LABEL_31:
    swift_once();
    goto LABEL_16;
  }

  v34 = AttachmentLedger_SubscribeResponse.InitializeAck.otherParticipants.getter();
  v35 = v112;
  v36 = v112[13];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v113 = v34;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v36, v36, isUniquelyReferenced_nonNull_native);
  v38 = *(*v35 + 264);

  v38();
  v31 = v31[4];
  v113 = MEMORY[0x1E69E7CC0];
  v39 = v31[2];
  if (v39)
  {
    v40 = 0;
    v92 = v39 - 1;
    v108 = MEMORY[0x1E69E7CC0];
    do
    {
      v41 = v40;
      v42 = v112;
      while (1)
      {
        if (v41 >= v31[2])
        {
          __break(1u);
          goto LABEL_30;
        }

        outlined init with copy of Attachment.MMCSMetadata(v31 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v41, v25, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot);
        closure #1 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:)(v25, v42, &v117);
        if (v2)
        {

          outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v25, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot);

          __break(1u);
          return result;
        }

        Topic = outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v25, type metadata accessor for AttachmentLedger_SubscribeResponse.InitializeAck.AttachmentSnapshot);
        if (v117)
        {
          break;
        }

        if (v39 == ++v41)
        {
          goto LABEL_21;
        }
      }

      MEMORY[0x1B2710150](Topic);
      if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v44 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v40 = v41 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v108 = v113;
    }

    while (v92 != v41);
  }

  else
  {
    v108 = MEMORY[0x1E69E7CC0];
  }

LABEL_21:

  v57 = v112;
  (*(*v112 + 640))(v108);
  v113 = 1;
  v114 = 0u;
  v115 = 0u;
  v116 = xmmword_1AEE0C1F0;
  (*(*v57 + 352))(&v113);
  v58 = v111;
  v59 = *(v110 + 40);
  v60 = v101;
  outlined init with copy of ActivitySession.DomainAssertionWrapper?(v111 + v59, v101, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  v61 = v102;
  v110 = *(v109 + 48);
  v62 = (v110)(v60, 1, v102);
  outlined destroy of NSObject?(v60, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
  if (v62 == 1)
  {
    v63 = type metadata accessor for TaskPriority();
    v64 = v105;
    (*(*(v63 - 8) + 56))(v105, 1, 1, v63);
    v65 = swift_allocObject();
    swift_weakInit();
    v66 = swift_allocObject();
    v66[2] = 0;
    v66[3] = 0;
    v66[4] = v65;
    _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZ14CopresenceCore11UploadTokenVSg_Tt2g5(0, 0, v64, &async function pointer to partial apply for closure #3 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:), v66);

    outlined destroy of NSObject?(v64, &_sScPSgMd, &_sScPSgMR);
    v68 = v106;
    v67 = v107;
  }

  else
  {
    v69 = v98;
    outlined init with copy of ActivitySession.DomainAssertionWrapper?(v58 + v59, v98, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
    v70 = v110;
    v71 = (v110)(v69, 1, v61);
    v68 = v106;
    if (v71 == 1)
    {
      v72 = v95;
      *v95 = 0;
      v72[1] = 0xE000000000000000;
      v72[2] = 0;
      v72[3] = 0xE000000000000000;
      v72[4] = 0;
      v72[5] = 0xE000000000000000;
      v72[6] = 0;
      v73 = v72 + *(v61 + 32);
      UnknownStorage.init()();
      v74 = v70(v69, 1, v61);
      v75 = v97;
      v76 = v96;
      if (v74 != 1)
      {
        outlined destroy of NSObject?(v69, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMd, &_s14CopresenceCore33AttachmentLedger_AuthPutMaterialsVSgMR);
      }
    }

    else
    {
      v72 = v95;
      outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v69, v95, type metadata accessor for AttachmentLedger_AuthPutMaterials);
      v75 = v97;
      v76 = v96;
    }

    v77 = v99;
    outlined init with copy of Attachment.MMCSMetadata(v72, v99, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    v78 = (*(v109 + 80) + 16) & ~*(v109 + 80);
    v79 = v72;
    v80 = swift_allocObject();
    outlined init with take of AttachmentLedger_UpdateAttachmentRequest.AttachmentStatusUpdate(v77, v80 + v78, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    UUID.init()();
    PluginAttachmentLedgerTopic.handleNewUploadTokenFetch(tokenID:materialFetch:)(v76, &async function pointer to partial apply for closure #2 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:), v80);

    (*(v75 + 8))(v76, v100);
    outlined destroy of AttachmentLedger_CreateTopicResponse.ClientTopicConfig(v79, type metadata accessor for AttachmentLedger_AuthPutMaterials);
    v64 = v105;
    v67 = v107;
  }

  v81 = v103;
  static TaskPriority.userInitiated.getter();
  v82 = type metadata accessor for TaskPriority();
  (*(*(v82 - 8) + 56))(v64, 0, 1, v82);
  v83 = swift_allocObject();
  swift_weakInit();
  v84 = v104;
  (*(v68 + 16))(v104, v57 + OBJC_IVAR____TtC14CopresenceCore27PluginAttachmentLedgerTopic_updateAttachmentsOperationStream, v67);
  outlined init with copy of UserNotificationCenter((v57 + 21), &v113);
  v85 = v64;
  v86 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v87 = (v81 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  v89 = v67;
  v90 = v88;
  *(v88 + 16) = 0;
  *(v88 + 24) = 0;
  (*(v68 + 32))(v88 + v86, v84, v89);
  *(v90 + v87) = v83;
  outlined init with take of ContiguousBytes(&v113, v90 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8));
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v85, &async function pointer to partial apply for closure #4 in PluginAttachmentLedgerTopic.processInitializeAckStatusOK(_:), v90);

  return outlined destroy of NSObject?(v85, &_sScPSgMd, &_sScPSgMR);
}