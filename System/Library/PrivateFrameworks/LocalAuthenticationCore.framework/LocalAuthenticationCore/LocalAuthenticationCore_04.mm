uint64_t LACPreboardController.installProfile()()
{
  v1[5] = v0;
  v2 = type metadata accessor for Logger();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LACPreboardController.installProfile(), 0, 0);
}

{
  v1 = *(v0 + 40);
  v2 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_uppManager + 24);
  v3 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_uppManager + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_uppManager), v2);
  v4 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider + 24);
  v5 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider), v4);
  v6 = (*(v5 + 8))(v4, v5);
  v7 = *(v3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = LACPreboardController.installProfile();

  return v11(v6, v2, v3);
}

{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = LACPreboardController.installProfile();
  }

  else
  {
    v3 = LACPreboardController.installProfile();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[9];
  v2 = LACLogPreboard();
  Logger.init(_:)();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B0233000, v3, v4, "UPP install succeeded", v5, 2u);
    MEMORY[0x1B27246A0](v5, -1, -1);
  }

  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[6];
  v9 = v0[7];

  (*(v9 + 8))(v6, v8);

  v10 = v0[1];

  return v10();
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = LACLogPreboard();
  Logger.init(_:)();
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[11];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B0233000, v5, v6, "UPP install failed with error: %@", v8, 0xCu);
    outlined destroy of AsyncStream<()>.Continuation?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v9, -1, -1);
    MEMORY[0x1B27246A0](v8, -1, -1);
  }

  v12 = v0[11];
  v13 = v0[8];
  v14 = v0[9];
  v15 = v0[6];
  v16 = v0[7];

  (*(v16 + 8))(v13, v15);
  _StringGuts.grow(_:)(33);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1B2722A80](0xD00000000000001FLL, 0x80000001B03571F0);
  v0[4] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  specialized static LACPreboardErrorBuilder.error(code:message:)(3, v0[2], v0[3]);

  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t LACPreboardController.finishPreboard(success:reason:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 152) = a1;
  v5 = type metadata accessor for Logger();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LACPreboardController.finishPreboard(success:reason:), 0, 0);
}

uint64_t LACPreboardController.finishPreboard(success:reason:)()
{
  v37 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);
  v3 = LACLogPreboard();
  Logger.init(_:)();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v34 = *(v0 + 80);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = *(v0 + 16);
    v8 = *(v0 + 24);
    v10 = *(v0 + 152);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v36 = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v36);
    *(v11 + 12) = 1024;
    *(v11 + 14) = v10;
    _os_log_impl(&dword_1B0233000, v4, v5, "Finishing Preboard with reason: %s success: %{BOOL}d", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B27246A0](v12, -1, -1);
    MEMORY[0x1B27246A0](v11, -1, -1);

    v13 = *(v7 + 8);
    v13(v34, v6);
  }

  else
  {
    v14 = *(v0 + 80);
    v15 = *(v0 + 40);
    v16 = *(v0 + 48);

    v13 = *(v16 + 8);
    v13(v14, v15);
  }

  v17 = *(v0 + 32);
  v18 = *(v0 + 152);
  *(v0 + 88) = v13;
  *(v0 + 96) = @"com.apple.LocalAuthentication.storage.ProtectedVariableSetSuccess";
  *(v0 + 104) = @"com.apple.LocalAuthentication.storage.ProtectedVariableSetFailure";
  if (v18)
  {
    v19 = @"com.apple.LocalAuthentication.storage.ProtectedVariableSetSuccess";
  }

  else
  {
    v19 = @"com.apple.LocalAuthentication.storage.ProtectedVariableSetFailure";
  }

  v20 = v19;
  v21 = [objc_opt_self() sharedInstance];
  [v21 postNotification_];

  v23 = *(v17 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_storage);
  v22 = *(v17 + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_storage + 8);
  ObjectType = swift_getObjectType();
  v25 = OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider;
  *(v0 + 112) = OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_useCaseProvider;
  v26 = (v17 + v25);
  v27 = *(v17 + v25 + 24);
  v28 = v26[4];
  __swift_project_boxed_opaque_existential_0(v26, v27);
  v29 = (*(v28 + 8))(v27, v28);
  v30 = *(v22 + 40);
  v35 = (v30 + *v30);
  v31 = v30[1];
  v32 = swift_task_alloc();
  *(v0 + 120) = v32;
  *v32 = v0;
  v32[1] = LACPreboardController.finishPreboard(success:reason:);

  return v35(v29, ObjectType, v22);
}

{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = LACPreboardController.finishPreboard(success:reason:);
  }

  else
  {
    v3 = LACPreboardController.finishPreboard(success:reason:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 72);
  v2 = LACLogPreboard();
  Logger.init(_:)();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B0233000, v3, v4, "Successfully cleaned storage", v5, 2u);
    MEMORY[0x1B27246A0](v5, -1, -1);
  }

  v6 = (*(v0 + 32) + *(v0 + 112));
  v7 = *(v0 + 48) + 8;
  (*(v0 + 88))(*(v0 + 72), *(v0 + 40));
  v8 = v6[3];
  v9 = v6[4];
  __swift_project_boxed_opaque_existential_0(v6, v8);
  v10 = *(v9 + 16);
  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  *v12 = v0;
  v12[1] = LACPreboardController.finishPreboard(success:reason:);
  v13 = *(v0 + 152);

  return v15(v13, v8, v9);
}

{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = LACPreboardController.finishPreboard(success:reason:);
  }

  else
  {
    v3 = LACPreboardController.finishPreboard(success:reason:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = (v0 + 104);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  if (*(v0 + 152))
  {
    v1 = (v0 + 96);
  }

  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = *(v0 + 128);
  v2 = *(v0 + 64);
  v3 = LACLogPreboard();
  Logger.init(_:)();
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 128);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B0233000, v5, v6, "Unable to clean storage with error: %@", v9, 0xCu);
    outlined destroy of AsyncStream<()>.Continuation?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v10, -1, -1);
    MEMORY[0x1B27246A0](v9, -1, -1);
  }

  else
  {
  }

  v13 = (*(v0 + 32) + *(v0 + 112));
  v14 = *(v0 + 48) + 8;
  (*(v0 + 88))(*(v0 + 64), *(v0 + 40));
  v15 = v13[3];
  v16 = v13[4];
  __swift_project_boxed_opaque_existential_0(v13, v15);
  v17 = *(v16 + 16);
  v22 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v0 + 136) = v19;
  *v19 = v0;
  v19[1] = LACPreboardController.finishPreboard(success:reason:);
  v20 = *(v0 + 152);

  return v22(v20, v15, v16);
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 56);
  v3 = LACLogPreboard();
  Logger.init(_:)();
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 144);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B0233000, v5, v6, "Unable to complete boot mode with error: %@", v8, 0xCu);
    outlined destroy of AsyncStream<()>.Continuation?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v9, -1, -1);
    MEMORY[0x1B27246A0](v8, -1, -1);
  }

  v12 = *(v0 + 144);
  v13 = (v0 + 104);
  v14 = *(v0 + 80);
  v15 = *(v0 + 88);
  v17 = *(v0 + 64);
  v16 = *(v0 + 72);
  v19 = *(v0 + 48);
  v18 = *(v0 + 56);
  v20 = *(v0 + 40);
  if (*(v0 + 152))
  {
    v13 = (v0 + 96);
  }

  v21 = v5;
  v22 = *v13;

  v15(v18, v20);
  swift_willThrow();

  v23 = *(v0 + 8);
  v24 = *(v0 + 144);

  return v23();
}

uint64_t @objc closure #1 in LACPreboardController.enableCurrentUseCase(withPasscode:)(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = @objc closure #1 in LACPreboardController.enableCurrentUseCase(withPasscode:);

  return LACPreboardController.enableCurrentUseCase(withPasscode:)(v5, v7);
}

uint64_t @objc closure #1 in LACPreboardController.enableCurrentUseCase(withPasscode:)()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t @objc closure #1 in LACPreboardController.terminate()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in LACPreboardController.terminate();

  return LACPreboardController.terminate()();
}

id LACPreboardController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACPreboardController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LACPreboardController.acmContext(for:)()
{
  LACPreboardController.contextProvider.getter(v10);
  v0 = v11;
  if (v11)
  {
    v1 = v12;
    v2 = __swift_project_boxed_opaque_existential_0(v10, v11);
    v3 = *(v0 - 8);
    v4 = *(v3 + 64);
    MEMORY[0x1EEE9AC00](v2);
    v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v3 + 16))(v6);
    outlined destroy of AsyncStream<()>.Continuation?(v10, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgMd, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgMR);
    v7 = (*(v1 + 8))(v0, v1);
    (*(v3 + 8))(v6, v0);
  }

  else
  {
    outlined destroy of AsyncStream<()>.Continuation?(v10, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgMd, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgMR);
    return 0;
  }

  return v7;
}

uint64_t protocol witness for LACPreboardStorageDelegate.acmContext(for:) in conformance LACPreboardController()
{
  LACPreboardController.contextProvider.getter(v10);
  v0 = v11;
  if (v11)
  {
    v1 = v12;
    v2 = __swift_project_boxed_opaque_existential_0(v10, v11);
    v3 = *(v0 - 8);
    v4 = *(v3 + 64);
    MEMORY[0x1EEE9AC00](v2);
    v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v3 + 16))(v6);
    outlined destroy of AsyncStream<()>.Continuation?(v10, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgMd, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgMR);
    v7 = (*(v1 + 8))(v0, v1);
    (*(v3 + 8))(v6, v0);
  }

  else
  {
    outlined destroy of AsyncStream<()>.Continuation?(v10, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgMd, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgMR);
    return 0;
  }

  return v7;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void partial apply for closure #1 in LACPreboardController.launchPreboard()(BOOL *a1@<X8>)
{
  v2 = *(v1 + 16) + OBJC_IVAR____TtC23LocalAuthenticationCore21LACPreboardController_launchResult;
  v3 = *(v2 + 8);
  if (v3 == 255)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
  }

  *a1 = v3 == 255;
}

uint64_t partial apply for closure #2 in LACPreboardController.launchPreboard()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return closure #2 in LACPreboardController.launchPreboard()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #3 in LACPreboardController.launchPreboard()()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return closure #3 in LACPreboardController.launchPreboard()();
}

void outlined consume of Result<(), Error>?(void *a1, char a2)
{
  if (a2 != -1)
  {
    outlined consume of Result<(), Error>(a1, a2 & 1);
  }
}

void outlined consume of Result<(), Error>(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t partial apply for @objc closure #1 in LACPreboardController.terminate()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return @objc closure #1 in LACPreboardController.terminate()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in LACPreboardController.enableCurrentUseCase(withPasscode:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return @objc closure #1 in LACPreboardController.enableCurrentUseCase(withPasscode:)(v2, v3, v4);
}

uint64_t objectdestroy_25Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in LACPreboardController.launchPreboard()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return @objc closure #1 in LACPreboardController.launchPreboard()(v2, v3);
}

uint64_t outlined assign with take of LACACMContextProviding??(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s23LocalAuthenticationCore22LACACMContextProviding_pSgSgMd, &_s23LocalAuthenticationCore22LACACMContextProviding_pSgSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id outlined copy of Result<(), Error>?(id result, char a2)
{
  if (a2 != -1)
  {
    return outlined copy of Result<(), Error>(result, a2 & 1);
  }

  return result;
}

id outlined copy of Result<(), Error>(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

id LACEvaluationRequestCompoundProcessor.__allocating_init(processors:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_nextProcessor] = 0;
  v4 = &v3[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_currentProcessorIndex];
  *v4 = 0;
  v4[8] = 1;
  *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_involvedProcessorIndices] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_processors] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id LACEvaluationRequestCompoundProcessor.init(processors:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_nextProcessor] = 0;
  v4 = &v1[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_currentProcessorIndex];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_involvedProcessorIndices] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_processors] = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

void LACEvaluationRequestCompoundProcessor.processRequest(_:configuration:completion:)(void *a1, id a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  if (v4[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_currentProcessorIndex + 8] == 1)
  {
    v9 = *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_processors];
    if (v9 >> 62)
    {
      if (v9 < 0)
      {
        v21 = *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_processors];
      }

      else
      {
        v21 = v9 & 0xFFFFFFFFFFFFFF8;
      }

      v22 = a2;
      v23 = MEMORY[0x1B2722F00](v21);
      a2 = v22;
      if (v23)
      {
        goto LABEL_4;
      }
    }

    else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v10 = [a2 nextProcessor];
      v11 = *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_nextProcessor];
      *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_nextProcessor] = v10;
      swift_unknownObjectRelease();

      LACEvaluationRequestCompoundProcessor.processRequest(_:subProcessorIndex:completion:)(a1, 0, a3, a4);
      return;
    }

    v24 = [objc_opt_self() resultWithNext_];
    a3();
  }

  else
  {
    v12 = objc_opt_self();
    _StringGuts.grow(_:)(17);

    v13 = [v4 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    MEMORY[0x1B2722A80](v14, v16);

    MEMORY[0x1B2722A80](0x7973756220, 0xE500000000000000);
    v17 = MEMORY[0x1B27229A0](0x6F737365636F7250, 0xEA00000000002072);

    v18 = [v12 errorWithCode:-1000 debugDescription:v17];

    v19 = objc_opt_self();
    v20 = _convertErrorToNSError(_:)();
    v24 = [v19 resultWithFailure_];

    (a3)(v24);
  }
}

uint64_t LACEvaluationRequestCompoundProcessor.postProcessRequest(_:result:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  if (*(v4 + OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_currentProcessorIndex + 8))
  {
    return (a3)(a2);
  }

  v8 = *(v4 + OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_currentProcessorIndex);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  specialized LACEvaluationRequestCompoundProcessor.postProcessRequest(_:result:subProcessorIndex:completion:)(a1, a2, v8, v4, v11, a3, a4);
}

id LACEvaluationRequestCompoundProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACEvaluationRequestCompoundProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, v3 < 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v3 < 0)
      {
        v7 = v3;
      }

      MEMORY[0x1B2722F00](v7);
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v1 = result;
  }

  return result;
}

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
    if (v3 < 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x1B2722F00](v7);
    goto LABEL_14;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_14:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type [LACEvaluationRequestProcessor] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [LACEvaluationRequestProcessor] and conformance [A];
  if (!lazy protocol witness table cache variable for type [LACEvaluationRequestProcessor] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo29LACEvaluationRequestProcessor_pGMd, &_sSaySo29LACEvaluationRequestProcessor_pGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [LACEvaluationRequestProcessor] and conformance [A]);
  }

  return result;
}

id LACMechanismTree.init(children:isAndNode:)(uint64_t a1, char a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for LACMechanismTree(v3);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initWithChildren:isa isAndNode:a2 & 1];

  return v5;
}

{
  *(v2 + OBJC_IVAR___LACMechanismTree_children) = a1;
  *(v2 + OBJC_IVAR___LACMechanismTree_isAnd) = a2;
  *(v2 + OBJC_IVAR___LACMechanismTree_value) = -1;
  v4.super_class = LACMechanismTree;
  return objc_msgSendSuper2(&v4, sel_init);
}

id LACMechanismTree.init(value:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithValue_];
}

{
  *(v1 + OBJC_IVAR___LACMechanismTree_children) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR___LACMechanismTree_isAnd) = 0;
  *(v1 + OBJC_IVAR___LACMechanismTree_value) = a1;
  v3.super_class = LACMechanismTree;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t LACMechanismTree.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(38);
  swift_getObjectType();
  v2 = _typeName(_:qualified:)();

  v15 = v2;
  MEMORY[0x1B2722A80](0x3A65756C6176203ALL, 0xE900000000000020);
  [v0 value];
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B2722A80](v3);

  MEMORY[0x1B2722A80](0x72646C696863202CLL, 0xEC000000203A6E65);
  v4 = [v0 children];
  v5 = type metadata accessor for LACMechanismTree(v4);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = MEMORY[0x1B2722B60](v6, v5);
  v9 = v8;

  MEMORY[0x1B2722A80](v7, v9);

  MEMORY[0x1B2722A80](0x3A646E417369202CLL, 0xE900000000000020);
  v10 = [v1 isAnd];
  v11 = v10 == 0;
  if (v10)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v11)
  {
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  MEMORY[0x1B2722A80](v12, v13);

  return v15;
}

Swift::Bool __swiftcall LACMechanismTree.isSatisfiable(withValue:)(Swift::Int withValue)
{
  v2 = &selRef_cancelAuthenticationForRequestIdentifier_;
  v3 = [v1 children];
  type metadata accessor for LACMechanismTree(v3);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_22;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v5)
  {
    LOBYTE(v6) = [v1 isAnd];
    v7 = [v1 *(v2 + 768)];
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      if (v8 < 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v8 & 0xFFFFFFFFFFFFFF8;
      }

      v4 = MEMORY[0x1B2722F00](v13);
      if (v4)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v4 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_6:
        v2 = 0;
        do
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x1B2722E50](v2, v8);
          }

          else
          {
            if (v2 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v9 = *(v8 + 8 * v2 + 32);
          }

          v10 = v9;
          v11 = (v2 + 1);
          if (__OFADD__(v2, 1))
          {
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            if (v4 < 0)
            {
              v12 = v4;
            }

            else
            {
              v12 = v4 & 0xFFFFFFFFFFFFFF8;
            }

            v5 = MEMORY[0x1B2722F00](v12);
            goto LABEL_3;
          }

          if ([v1 isAnd])
          {
            if ((v6 & 1) == 0)
            {
              LOBYTE(v6) = 0;
              goto LABEL_8;
            }
          }

          else if (v6)
          {
            LOBYTE(v6) = 1;
            goto LABEL_8;
          }

          LOBYTE(v6) = [v10 isSatisfiableWithValue_];
LABEL_8:

          ++v2;
        }

        while (v11 != v4);
      }
    }
  }

  else
  {
    return [v1 value] == withValue;
  }

  return v6;
}

Swift::Bool __swiftcall LACMechanismTree.isValue(_:replaceableByValue:)(Swift::Int _, Swift::Int replaceableByValue)
{
  if ([v2 isSatisfiableWithValue_])
  {
    return [v2 isSatisfiableWithValue_];
  }

  v5 = [v2 children];
  type metadata accessor for LACMechanismTree(v5);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x1B2722F00](v24))
  {
    v8 = 0;
    v9 = v6 & 0xC000000000000001;
    v25 = v6 & 0xFFFFFFFFFFFFFF8;
    v26 = v6;
    v10 = &selRef_cancelAuthenticationForRequestIdentifier_;
    while (1)
    {
      if (v9)
      {
        v12 = MEMORY[0x1B2722E50](v8, v6);
      }

      else
      {
        if (v8 >= *(v25 + 16))
        {
          goto LABEL_24;
        }

        v12 = *(v6 + 8 * v8 + 32);
      }

      v13 = v12;
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ([v2 v10[97]])
      {
        goto LABEL_6;
      }

      v15 = i;
      v16 = v2;
      v17 = v9;
      v18 = v10;
      v19 = replaceableByValue;
      v20 = [v13 children];
      v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v21 >> 62)
      {
        v23 = v21 < 0 ? v21 : v21 & 0xFFFFFFFFFFFFFF8;
        v22 = MEMORY[0x1B2722F00](v23);
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      replaceableByValue = v19;
      v10 = v18;
      v9 = v17;
      v2 = v16;
      i = v15;
      v6 = v26;
      if (v22)
      {
LABEL_6:
        v11 = [v13 isValue:_ replaceableByValue:{replaceableByValue, v25}];

        if ((v11 & 1) == 0)
        {

          return 0;
        }
      }

      else
      {
      }

      ++v8;
      if (v14 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    if (v6 < 0)
    {
      v24 = v6;
    }

    else
    {
      v24 = v6 & 0xFFFFFFFFFFFFFF8;
    }
  }

LABEL_29:

  return 1;
}

Swift::Bool __swiftcall LACMechanismTree.isValueRequired(_:)(Swift::Int a1)
{
  v2 = &selRef_cancelAuthenticationForRequestIdentifier_;
  v3 = [v1 children];
  type metadata accessor for LACMechanismTree(v3);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_22;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v5)
  {
    LODWORD(v6) = [v1 isAnd] ^ 1;
    v7 = [v1 *(v2 + 768)];
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      if (v8 < 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v8 & 0xFFFFFFFFFFFFFF8;
      }

      v4 = MEMORY[0x1B2722F00](v13);
      if (v4)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v4 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_6:
        v2 = 0;
        do
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x1B2722E50](v2, v8);
          }

          else
          {
            if (v2 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v9 = *(v8 + 8 * v2 + 32);
          }

          v10 = v9;
          v11 = (v2 + 1);
          if (__OFADD__(v2, 1))
          {
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            if (v4 < 0)
            {
              v12 = v4;
            }

            else
            {
              v12 = v4 & 0xFFFFFFFFFFFFFF8;
            }

            v5 = MEMORY[0x1B2722F00](v12);
            goto LABEL_3;
          }

          if ([v1 isAnd])
          {
            if (v6)
            {
              LOBYTE(v6) = 1;
              goto LABEL_8;
            }
          }

          else if ((v6 & 1) == 0)
          {
            LOBYTE(v6) = 0;
            goto LABEL_8;
          }

          LOBYTE(v6) = [v10 isValueRequired_];
LABEL_8:

          ++v2;
        }

        while (v11 != v4);
      }
    }
  }

  else
  {
    return [v1 value] == a1;
  }

  return v6;
}

uint64_t static LACMechanismTree.parse(tree:index:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7CC0];
  v7 = *a3;
  if (v7 < String.count.getter())
  {
    v8 = 0;
    while (1)
    {
      String.index(_:offsetBy:)();
      v12 = String.subscript.getter();
      v14 = v13;
      v15 = v12 == 40 && v13 == 0xE100000000000000;
      if (v15 || (v16 = v12, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        *a3 = v7 + 1;
        v17 = static LACMechanismTree.parse(tree:index:)(a1, a2, a3);
        if (v17)
        {
          v18 = v17;
          MEMORY[0x1B2722B30]();
          if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v24 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v19 = 0;
          v6 = v36;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        if ((v16 != 41 || v14 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          if (v16 == 124 && v14 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v9 = closure #1 in static LACMechanismTree.parse(tree:index:)(0, 0xE000000000000000);

            if (!v9)
            {
              v8 = 0;
              goto LABEL_8;
            }

            v10 = v9;
            MEMORY[0x1B2722B30]();
            if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v26 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v8 = 0;
          }

          else
          {
            if ((v16 != 38 || v14 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              MEMORY[0x1B2722A80](v16, v14);

              goto LABEL_8;
            }

            v22 = closure #1 in static LACMechanismTree.parse(tree:index:)(0, 0xE000000000000000);

            if (!v22)
            {
              v8 = 1;
              goto LABEL_8;
            }

            v23 = v22;
            MEMORY[0x1B2722B30]();
            if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v27 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v8 = 1;
          }

          v6 = v36;
LABEL_8:
          *a3 = ++v7;
          v11 = String.count.getter();
          goto LABEL_9;
        }

        v20 = closure #1 in static LACMechanismTree.parse(tree:index:)(0, 0xE000000000000000);

        if (v20)
        {
          v21 = v20;
          MEMORY[0x1B2722B30]();
          if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v25 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v6 = v36;
        }

        *a3 = v7 + 1;
        v19 = 1;
      }

      v7 = *a3;
      v11 = String.count.getter();
      if (v19)
      {
        goto LABEL_44;
      }

LABEL_9:
      if (v7 >= v11)
      {
        goto LABEL_44;
      }
    }
  }

  v8 = 0;
LABEL_44:

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_46;
    }

LABEL_61:

    return 0;
  }

  if (v6 < 0)
  {
    v35 = v6;
  }

  else
  {
    v35 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x1B2722F00](v35);
  if (!result)
  {
    goto LABEL_61;
  }

LABEL_46:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x1B2722E50](0, v6);
LABEL_49:
    v30 = v29;
    if (v6 >> 62)
    {
      if (v6 < 0)
      {
        v34 = v6;
      }

      else
      {
        v34 = v6 & 0xFFFFFFFFFFFFFF8;
      }

      if (MEMORY[0x1B2722F00](v34) != 1)
      {
        goto LABEL_51;
      }
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
LABEL_51:
      v31 = objc_allocWithZone(LACMechanismTree);
      type metadata accessor for LACMechanismTree(v31);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v33 = [v31 initWithChildren:isa isAndNode:v8 & 1];

      return v33;
    }

    return v30;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v6 + 32);
    goto LABEL_49;
  }

  __break(1u);
  return result;
}

id static LACMechanismTree.make(from:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSError, 0x1E696ABC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = [v14 userInfo];

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v3 + 16))
  {

    goto LABEL_8;
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_8:

    return 0;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v6, v15);

  if (swift_dynamicCast())
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = MEMORY[0x1B27229A0](a1);

    v11 = [ObjCClassFromMetadata mechanismTreeFromSerializedTree_];

    return v11;
  }

  return 0;
}

id LACMechanismTree.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t closure #1 in static LACMechanismTree.parse(tree:index:)(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v25 = result;

    v7 = specialized _parseInteger<A, B>(ascii:radix:)(v25, a2, 10);
    v27 = v26;

    if (v27)
    {
      return 0;
    }

    return [objc_allocWithZone(LACMechanismTree) initWithValue_];
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v6 = *result;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v14 = (result + 1);
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_61;
              }

              v16 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v16 + v15;
              if (__OFADD__(v16, v15))
              {
                goto LABEL_61;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_69;
    }

    if (v6 != 45)
    {
      if (v4)
      {
        v7 = 0;
        if (result)
        {
          while (1)
          {
            v20 = *result - 48;
            if (v20 > 9)
            {
              goto LABEL_61;
            }

            v21 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              goto LABEL_61;
            }

            v7 = v21 + v20;
            if (__OFADD__(v21, v20))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v7 = 0;
      LOBYTE(v3) = 1;
LABEL_62:
      v29 = v3;
      if (v3)
      {
        return 0;
      }

      return [objc_allocWithZone(LACMechanismTree) initWithValue_];
    }

    if (v4 >= 1)
    {
      v3 = v4 - 1;
      if (v4 != 1)
      {
        v7 = 0;
        if (result)
        {
          v8 = (result + 1);
          while (1)
          {
            v9 = *v8 - 48;
            if (v9 > 9)
            {
              goto LABEL_61;
            }

            v10 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              goto LABEL_61;
            }

            v7 = v10 - v9;
            if (__OFSUB__(v10, v9))
            {
              goto LABEL_61;
            }

            ++v8;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v3) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v28[0] = result;
  v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        v7 = 0;
        v22 = v28;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v7;
          if ((v7 * 10) >> 64 != (10 * v7) >> 63)
          {
            break;
          }

          v7 = v24 + v23;
          if (__OFADD__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3)
    {
      if (--v3)
      {
        v7 = 0;
        v11 = v28 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          v13 = 10 * v7;
          if ((v7 * 10) >> 64 != (10 * v7) >> 63)
          {
            break;
          }

          v7 = v13 - v12;
          if (__OFSUB__(v13, v12))
          {
            break;
          }

          ++v11;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_68;
  }

  if (v3)
  {
    if (--v3)
    {
      v7 = 0;
      v17 = v28 + 1;
      while (1)
      {
        v18 = *v17 - 48;
        if (v18 > 9)
        {
          break;
        }

        v19 = 10 * v7;
        if ((v7 * 10) >> 64 != (10 * v7) >> 63)
        {
          break;
        }

        v7 = v19 + v18;
        if (__OFADD__(v19, v18))
        {
          break;
        }

        ++v17;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_70:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0);
  v12 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
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
    v5 = MEMORY[0x1B2722AB0](15, a1 >> 16);
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

void *LACMutablePasscodeVerificationRequest.passcode.getter()
{
  v1 = *(v0 + OBJC_IVAR___LACMutablePasscodeVerificationRequest_passcode);
  v2 = v1;
  return v1;
}

uint64_t LACMutablePasscodeVerificationRequest.acmContext.getter()
{
  v1 = *(v0 + OBJC_IVAR___LACMutablePasscodeVerificationRequest_acmContext);
  outlined copy of Data._Representation(v1, *(v0 + OBJC_IVAR___LACMutablePasscodeVerificationRequest_acmContext + 8));
  return v1;
}

void *LACMutablePasscodeVerificationRequest.userId.getter()
{
  v1 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_userId;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void LACMutablePasscodeVerificationRequest.userId.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_userId;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t LACMutablePasscodeVerificationRequest.policy.getter()
{
  v1 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_policy;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LACMutablePasscodeVerificationRequest.policy.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_policy;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t LACMutablePasscodeVerificationRequest.options.getter()
{
  v1 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_options;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t LACMutablePasscodeVerificationRequest.options.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_options;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void key path getter for LACMutablePasscodeVerificationRequest.options : LACMutablePasscodeVerificationRequest(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 options];
  if (v3)
  {
    v4 = v3;
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void key path setter for LACMutablePasscodeVerificationRequest.options : LACMutablePasscodeVerificationRequest(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  [v2 setOptions_];
}

uint64_t LACMutablePasscodeVerificationRequest.bioLockoutRecovery.getter()
{
  v1 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_bioLockoutRecovery;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LACMutablePasscodeVerificationRequest.bioLockoutRecovery.setter(char a1)
{
  v3 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_bioLockoutRecovery;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id LACMutablePasscodeVerificationRequest.init(passcode:acmContext:auditToken:)(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = [v8 initWithPasscode:a1 acmContext:isa auditToken:a4];

  outlined consume of Data._Representation(a2, a3);
  return v10;
}

id LACMutablePasscodeVerificationRequest.init(passcode:acmContext:auditToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___LACMutablePasscodeVerificationRequest_userId] = 0;
  *&v4[OBJC_IVAR___LACMutablePasscodeVerificationRequest_policy] = 0;
  v9 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_options;
  *&v4[v9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v4[OBJC_IVAR___LACMutablePasscodeVerificationRequest_bioLockoutRecovery] = 0;
  *&v4[OBJC_IVAR___LACMutablePasscodeVerificationRequest_passcode] = a1;
  v10 = &v4[OBJC_IVAR___LACMutablePasscodeVerificationRequest_acmContext];
  *v10 = a2;
  v10[1] = a3;
  *&v4[OBJC_IVAR___LACMutablePasscodeVerificationRequest_auditToken] = a4;
  v12.receiver = v4;
  v12.super_class = LACMutablePasscodeVerificationRequest;
  return objc_msgSendSuper2(&v12, sel_init);
}

id LACMutablePasscodeVerificationRequest.init(passcode:acmContext:rawAuditToken:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v12 = HIDWORD(a4);
  v13 = HIDWORD(a5);
  v14 = HIDWORD(a6);
  v19 = HIDWORD(a7);
  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v22[0] = v10;
  v22[1] = v12;
  v22[2] = v9;
  v22[3] = v13;
  v22[4] = v8;
  v22[5] = v14;
  v22[6] = v7;
  v22[7] = v19;
  v17 = [v15 initWithPasscode:a1 acmContext:isa rawAuditToken:v22];

  outlined consume of Data._Representation(a2, a3);
  return v17;
}

{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v12 = HIDWORD(a4);
  v13 = HIDWORD(a5);
  v14 = HIDWORD(a6);
  v15 = HIDWORD(a7);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v23[0] = v10;
  v23[1] = v12;
  v23[2] = v9;
  v23[3] = v13;
  v23[4] = v8;
  v23[5] = v14;
  v23[6] = v7;
  v23[7] = v15;
  v17 = [objc_allocWithZone(LACAuditToken) initWithRawValue_];
  v18 = [v22 initWithPasscode:a1 acmContext:isa auditToken:v17];
  outlined consume of Data._Representation(a2, a3);

  return v18;
}

uint64_t LACMutablePasscodeVerificationRequest.description.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B0343580;
  strcpy(v26, "auditToken: ");
  BYTE5(v26[1]) = 0;
  HIWORD(v26[1]) = -5120;
  v3 = [v0 auditToken];
  v4 = [v3 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x1B2722A80](v5, v7);

  v8 = v26[1];
  *(v2 + 32) = v26[0];
  *(v2 + 40) = v8;
  strcpy(v26, "userId: ");
  BYTE1(v26[1]) = 0;
  WORD1(v26[1]) = 0;
  HIDWORD(v26[1]) = -402653184;
  v9 = [v1 userId];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
  v10 = String.init<A>(describing:)();
  MEMORY[0x1B2722A80](v10);

  v11 = v26[1];
  *(v2 + 48) = v26[0];
  *(v2 + 56) = v11;
  MEMORY[0x1B2722A80](0x203A7963696C6F70, 0xE800000000000000);
  [v1 policy];
  type metadata accessor for LACPolicy(0);
  _print_unlocked<A, B>(_:_:)();
  *(v2 + 64) = 0;
  *(v2 + 72) = 0xE000000000000000;
  strcpy(v26, "options: ");
  WORD1(v26[1]) = 0;
  HIDWORD(v26[1]) = -385875968;
  v12 = [v1 options];
  if (v12)
  {
    v13 = v12;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
  v14 = String.init<A>(describing:)();
  MEMORY[0x1B2722A80](v14);

  v15 = v26[1];
  *(v2 + 80) = v26[0];
  *(v2 + 88) = v15;
  _StringGuts.grow(_:)(22);

  v26[0] = 0xD000000000000014;
  v26[1] = 0x80000001B0357470;
  v16 = [v1 bioLockoutRecovery];
  v17 = v16 == 0;
  if (v16)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (v17)
  {
    v19 = 0xE500000000000000;
  }

  else
  {
    v19 = 0xE400000000000000;
  }

  MEMORY[0x1B2722A80](v18, v19);

  v20 = v26[1];
  *(v2 + 96) = v26[0];
  *(v2 + 104) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v21 = BidirectionalCollection<>.joined(separator:)();
  v23 = v22;

  MEMORY[0x1B2722A80](60, 0xE100000000000000);
  swift_getObjectType();
  v24 = _typeName(_:qualified:)();
  MEMORY[0x1B2722A80](v24);

  MEMORY[0x1B2722A80](8250, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B2722A80](8251, 0xE200000000000000);
  MEMORY[0x1B2722A80](v21, v23);

  MEMORY[0x1B2722A80](62, 0xE100000000000000);
  return 0;
}

id LACMutablePasscodeVerificationRequest.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for LACMutablePasscodeVerificationRequest()
{
  result = lazy cache variable for type metadata for LACMutablePasscodeVerificationRequest;
  if (!lazy cache variable for type metadata for LACMutablePasscodeVerificationRequest)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LACMutablePasscodeVerificationRequest);
  }

  return result;
}

id @objc static LACPreboardErrorBuilder.passcodeVerificationError(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = specialized static LACPreboardErrorBuilder.error(code:message:)(*a4, a3, v6);

  v8 = _convertErrorToNSError(_:)();

  return v8;
}

id LACPreboardErrorBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACPreboardErrorBuilder.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LACPreboardErrorBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized static LACPreboardErrorBuilder.genericError(with:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0342820;
  v5 = *MEMORY[0x1E696A278];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v6;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, Any)(inited + 32);
  v7 = @"LAPreboardErrorDomain";
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v9 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:v7 code:2 userInfo:isa];

  return v9;
}

id specialized static LACPreboardErrorBuilder.error(code:message:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B0342820;
    v7 = *MEMORY[0x1E696A278];
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v8;
    *(inited + 48) = a2;
    *(inited + 56) = a3;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (String, Any)(inited + 32);
    v9 = @"LAPreboardErrorDomain";
    v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9 = @"LAPreboardErrorDomain";
    v10.super.isa = 0;
  }

  v11 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:v9 code:a1 userInfo:v10.super.isa];

  return v11;
}

id specialized static LACPreboardErrorBuilder.notSupportedError()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0342820;
  v1 = *MEMORY[0x1E696A278];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000015;
  *(inited + 56) = 0x80000001B03576D0;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, Any)(inited + 32);
  v3 = @"LAPreboardErrorDomain";
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v5 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:v3 code:2 userInfo:isa];

  return v5;
}

BOOL specialized static LACPreboardErrorBuilder.hasCode(_:code:)(uint64_t a1, id a2)
{
  v3 = _convertErrorToNSError(_:)();
  v4 = [v3 domain];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {

      return 0;
    }
  }

  v12 = [v3 code];

  return v12 == a2;
}

id specialized static LACPreboardErrorBuilder.error(code:underlyingError:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B0342820;
    v4 = *MEMORY[0x1E696AA08];
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v5;
    swift_getErrorValue();
    *(inited + 72) = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_0);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (String, Any)(inited + 32);
    v7 = @"LAPreboardErrorDomain";
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7 = @"LAPreboardErrorDomain";
    v8.super.isa = 0;
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:v7 code:a1 userInfo:v8.super.isa];

  return v9;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined destroy of (String, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static LACEvaluationRequestProcessorFactory.makeProcessor(withSubprocessors:)(uint64_t a1)
{
  v2 = type metadata accessor for LACEvaluationRequestCompoundProcessor();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_nextProcessor] = 0;
  v4 = &v3[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_currentProcessorIndex];
  *v4 = 0;
  v4[8] = 1;
  *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_involvedProcessorIndices] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_processors] = a1;
  v6.receiver = v3;
  v6.super_class = v2;

  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t protocol witness for LACPreboardLaunching.launchPreboard() in conformance LACPreboardLauncher()
{
  *(v1 + 144) = *v0;
  return MEMORY[0x1EEE6DFA0](protocol witness for LACPreboardLaunching.launchPreboard() in conformance LACPreboardLauncher, 0, 0);
}

{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = protocol witness for LACPreboardLaunching.launchPreboard() in conformance LACPreboardLauncher;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_17;
  v0[14] = v2;
  [v1 launchPreboardWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
  }

  v3 = *(v1 + 8);

  return v3();
}

LACCompanionAuthenticationEnvironment __swiftcall LACCompanionAuthenticationEnvironment.init(featureAvailable:featureSupported:)(Swift::Bool featureAvailable, Swift::Bool featureSupported)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  result.super.isa = [v4 initWithFeatureAvailable:featureAvailable featureSupported:featureSupported];
  result.isFeatureAvailable = v5;
  result.isFeatureSupported = HIBYTE(v5);
  return result;
}

id LACCompanionAuthenticationEnvironment.init(featureAvailable:featureSupported:)(char a1, char a2)
{
  *(v2 + OBJC_IVAR___LACCompanionAuthenticationEnvironment_isFeatureAvailable) = a1;
  *(v2 + OBJC_IVAR___LACCompanionAuthenticationEnvironment_isFeatureSupported) = a2;
  v4.super_class = LACCompanionAuthenticationEnvironment;
  return objc_msgSendSuper2(&v4, sel_init);
}

LACCompanionAuthenticationEnvironment __swiftcall LACCompanionAuthenticationEnvironment.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  result.super.isa = [v0 init];
  result.isFeatureAvailable = v1;
  result.isFeatureSupported = HIBYTE(v1);
  return result;
}

unint64_t type metadata accessor for LACCompanionAuthenticationEnvironment()
{
  result = lazy cache variable for type metadata for LACCompanionAuthenticationEnvironment;
  if (!lazy cache variable for type metadata for LACCompanionAuthenticationEnvironment)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LACCompanionAuthenticationEnvironment);
  }

  return result;
}

Swift::Bool __swiftcall LACConcurrentEvaluationHelper.isConcurrentEvaluationEnabled(for:)(LACClientInfo a1)
{
  if ([v1 isClientAllowListedWithClientInfo_])
  {
    return 1;
  }

  else
  {
    return [v1 isConcurrentEvaluationEnabled];
  }
}

Swift::Bool __swiftcall LACConcurrentEvaluationHelper.isClientAllowListed(with:)(LACClientInfo with)
{
  isa = with.super.isa;
  v3 = [v1 allowList];
  v4 = *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore32LACConcurrentEvaluationAllowList_bundleIdentifiers];

  v5 = [(objc_class *)isa bundleId];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v13[0] = v7;
  v13[1] = v9;
  MEMORY[0x1EEE9AC00](v5);
  v12[2] = v13;
  v10 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v12, v4);

  return v10 & 1;
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

uint64_t LACPreboardStorage.delegate.getter()
{
  v1 = v0 + OBJC_IVAR____TtC23LocalAuthenticationCore18LACPreboardStorage_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t LACPreboardStorage.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC23LocalAuthenticationCore18LACPreboardStorage_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*LACPreboardStorage.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC23LocalAuthenticationCore18LACPreboardStorage_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return LACPreboardStorage.delegate.modify;
}

void LACPreboardStorage.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

char *LACPreboardStorage.init(secureStorage:sysUtility:)(uint64_t a1, uint64_t a2)
{
  UUID.init()();
  *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore18LACPreboardStorage_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore18LACPreboardStorage_storage] = a1;
  *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore18LACPreboardStorage_sysUtility] = a2;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for LACPreboardStorage();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = objc_msgSendSuper2(&v9, sel_init);
  v6 = *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore18LACPreboardStorage_storage];
  v7 = v5;
  [v6 setDelegate_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

uint64_t type metadata accessor for LACPreboardStorage()
{
  result = type metadata singleton initialization cache for LACPreboardStorage;
  if (!type metadata singleton initialization cache for LACPreboardStorage)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Swift.AnyObject?, @unowned NSError?) -> () with result type Any?(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    if (a2)
    {
      ObjectType = swift_getObjectType();
      *&v12 = a2;
      outlined init with take of Any(&v12, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v9 = *(*(v5 + 64) + 40);
    v10 = v15;
    *v9 = v14;
    v9[1] = v10;
    swift_unknownObjectRetain();
    return swift_continuation_throwingResume();
  }
}

uint64_t LACPreboardStorage.enableBatch(for:)()
{
  v1 = v0[5];
  v2 = objc_opt_self();
  _StringGuts.grow(_:)(40);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1B2722A80](0xD000000000000016, 0x80000001B03577C0);
  MEMORY[0x1B2722A80](0xD000000000000011, 0x80000001B03577E0);
  MEMORY[0x1B2722A80](0x65737520726F6620, 0xEE00206573616320);
  v0[4] = v1;
  type metadata accessor for LACPreboardUseCase(0);
  _print_unlocked<A, B>(_:_:)();
  v3 = MEMORY[0x1B27229A0](v0[2], v0[3]);

  [v2 errorWithCode:-1000 debugDescription:v3];

  swift_willThrow();
  v4 = v0[1];

  return v4();
}

uint64_t LACPreboardStorage.exchange(data:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[38] = a3;
  v4[39] = v3;
  v4[36] = a1;
  v4[37] = a2;
  v5 = type metadata accessor for Logger();
  v4[40] = v5;
  v6 = *(v5 - 8);
  v4[41] = v6;
  v7 = *(v6 + 64) + 15;
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LACPreboardStorage.exchange(data:for:), 0, 0);
}

uint64_t LACPreboardStorage.exchange(data:for:)()
{
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[37];
  v4 = *(v0[39] + OBJC_IVAR____TtC23LocalAuthenticationCore18LACPreboardStorage_storage);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[45] = isa;
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = LACPreboardStorage.exchange(data:for:);
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyypSgs5Error_pGMd, &_sSccyypSgs5Error_pGMR);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Swift.AnyObject?, @unowned NSError?) -> () with result type Any?;
  v0[13] = &block_descriptor_22;
  v0[14] = v6;
  [v4 setObject:isa forRequest:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 368) = v2;
  if (v2)
  {
    v3 = LACPreboardStorage.exchange(data:for:);
  }

  else
  {
    v3 = LACPreboardStorage.exchange(data:for:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v33 = v0;
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 304);
  v4 = *(v0 + 192);
  *(v0 + 144) = *(v0 + 176);
  *(v0 + 160) = v4;

  v5 = LACLogPreboard();
  Logger.init(_:)();
  outlined init with copy of (String, Any)(v0 + 144, v0 + 208, &_sypSgMd, _sypSgMR);
  swift_unknownObjectRetain_n();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 352);
  v11 = *(v0 + 320);
  v10 = *(v0 + 328);
  v12 = *(v0 + 304);
  if (v8)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v13 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, _sypSgMR);
    v31 = v9;
    v15 = Optional.debugDescription.getter();
    v30 = v11;
    v17 = v16;
    outlined destroy of AsyncStream<()>.Continuation?(v0 + 208, &_sypSgMd, _sypSgMR);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v32);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2048;
    v19 = [v12 key];
    swift_unknownObjectRelease();
    *(v13 + 14) = v19;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_1B0233000, v6, v7, "Did exchange data: %s for key: %ld", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1B27246A0](v14, -1, -1);
    MEMORY[0x1B27246A0](v13, -1, -1);

    (*(v10 + 8))(v31, v30);
  }

  else
  {
    v20 = *(v0 + 304);
    swift_unknownObjectRelease_n();

    outlined destroy of AsyncStream<()>.Continuation?(v0 + 208, &_sypSgMd, _sypSgMR);
    (*(v10 + 8))(v9, v11);
  }

  v21 = *(v0 + 160);
  *(v0 + 240) = *(v0 + 144);
  *(v0 + 256) = v21;
  if (*(v0 + 264))
  {
    v22 = swift_dynamicCast();
    if (v22)
    {
      v23 = *(v0 + 272);
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = *(v0 + 280);
    }

    else
    {
      v24 = 0xF000000000000000;
    }
  }

  else
  {
    outlined destroy of AsyncStream<()>.Continuation?(v0 + 240, &_sypSgMd, _sypSgMR);
    v23 = 0;
    v24 = 0xF000000000000000;
  }

  v26 = *(v0 + 344);
  v25 = *(v0 + 352);
  v27 = *(v0 + 336);

  v28 = *(v0 + 8);

  return v28(v23, v24);
}

{
  v1 = v0[45];
  v2 = v0[46];
  v3 = v0[38];
  swift_willThrow();

  if ([v3 key] == 13 && (v4 = v0[46], v5 = objc_opt_self(), v6 = _convertErrorToNSError(_:)(), LODWORD(v5) = objc_msgSend(v5, sel_error_hasCode_, v6, 3), v6, v5) && objc_msgSend(*(v0[39] + OBJC_IVAR____TtC23LocalAuthenticationCore18LACPreboardStorage_sysUtility), sel_hasPPL))
  {
    v7 = v0[46];
    v8 = v0[43];
    v9 = v0[38];
    v10 = LACLogPreboard();
    Logger.init(_:)();
    swift_unknownObjectRetain();
    v11 = v7;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[46];
    v16 = v0[38];
    if (v14)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412546;
      v19 = v15;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      *(v17 + 12) = 2048;
      *(v17 + 14) = [v16 key];
      swift_unknownObjectRelease();
      _os_log_impl(&dword_1B0233000, v12, v13, "Data exchange returned error: %@ for key: %ld but we return nil for compatibility reasons", v17, 0x16u);
      outlined destroy of AsyncStream<()>.Continuation?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v18, -1, -1);
      MEMORY[0x1B27246A0](v17, -1, -1);
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v0[41] + 8))(v0[43], v0[40]);
    v42 = v0[43];
    v41 = v0[44];
    v43 = v0[42];

    v44 = v0[1];

    return v44(0, 0xF000000000000000);
  }

  else
  {
    v21 = v0[46];
    v22 = v0[42];
    v23 = v0[38];
    v24 = LACLogPreboard();
    Logger.init(_:)();
    swift_unknownObjectRetain();
    v25 = v21;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = v0[46];
      v29 = v0[38];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 134218242;
      *(v30 + 4) = [v29 key];
      swift_unknownObjectRelease();
      *(v30 + 12) = 2112;
      v32 = v28;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 14) = v33;
      *v31 = v33;
      _os_log_impl(&dword_1B0233000, v26, v27, "Data exchange for key: %ld failed: %@", v30, 0x16u);
      outlined destroy of AsyncStream<()>.Continuation?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v31, -1, -1);
      MEMORY[0x1B27246A0](v30, -1, -1);
    }

    else
    {
      v34 = v0[38];
      swift_unknownObjectRelease();
    }

    v35 = v0[46];
    v36 = v0[43];
    v37 = v0[44];
    (*(v0[41] + 8))(v0[42], v0[40]);
    swift_willThrow();

    v38 = v0[1];
    v39 = v0[46];

    return v38();
  }
}

uint64_t LACPreboardStorage.enableVariable(for:)(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x1EEE6DFA0](LACPreboardStorage.enableVariable(for:), 0, 0);
}

uint64_t LACPreboardStorage.enableVariable(for:)()
{
  v1 = v0[23];
  v2 = specialized LACPreboardStorage.storageRequest(for:operation:)(v0[22]);
  v0[24] = v2;
  v3 = v2;
  v4 = v0[23];
  v0[25] = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(&outlined read-only object #0 of LACPreboardStorage.enableVariable(for:));
  v0[26] = v5;
  v6 = *(v4 + OBJC_IVAR____TtC23LocalAuthenticationCore18LACPreboardStorage_storage);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[27] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = LACPreboardStorage.enableVariable(for:);
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyypSgs5Error_pGMd, &_sSccyypSgs5Error_pGMR);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Swift.AnyObject?, @unowned NSError?) -> () with result type Any?;
  v0[13] = &block_descriptor_18;
  v0[14] = v8;
  [v6 setObject:isa forRequest:v3 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = LACPreboardStorage.enableVariable(for:);
  }

  else
  {
    v3 = LACPreboardStorage.enableVariable(for:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[27];
  v2 = v0[24];
  outlined consume of Data._Representation(v0[25], v0[26]);

  outlined destroy of AsyncStream<()>.Continuation?((v0 + 18), &_sypSgMd, _sypSgMR);
  v3 = v0[1];

  return v3();
}

{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[24];
  swift_willThrow();
  outlined consume of Data._Representation(v3, v4);

  v6 = v0[28];
  v7 = v0[1];

  return v7();
}

uint64_t LACPreboardStorage.exchangeUPPSignature(for:useCase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](LACPreboardStorage.exchangeUPPSignature(for:useCase:), 0, 0);
}

uint64_t LACPreboardStorage.exchangeUPPSignature(for:useCase:)()
{
  v1 = v0[7];
  if (v1 == 3)
  {
    v2 = v0[8];
    v3 = specialized LACPreboardStorage.storageRequest(for:operation:)(3);
    v0[9] = v3;
    v4 = v3;
    v6 = v0[5];
    v5 = v0[6];
    v7 = objc_opt_self();
    v8 = MEMORY[0x1B27229A0](v6, v5);
    v9 = [v7 createUPPControlForTeamID_];

    if (v9)
    {
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v0[10] = v10;
      v0[11] = v12;
      v13 = v4;
      v14 = swift_task_alloc();
      v0[12] = v14;
      *v14 = v0;
      v14[1] = LACPreboardStorage.exchangeUPPSignature(for:useCase:);
      v15 = v0[8];

      return LACPreboardStorage.exchange(data:for:)(v10, v12, v13);
    }

    v20 = objc_opt_self();
    v21 = MEMORY[0x1B27229A0](0xD00000000000001DLL, 0x80000001B0357850);
    [v20 errorWithCode:-1000 debugDescription:v21];

    swift_willThrow();
  }

  else
  {
    v17 = objc_opt_self();
    _StringGuts.grow(_:)(40);
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    MEMORY[0x1B2722A80](0xD000000000000016, 0x80000001B03577C0);
    MEMORY[0x1B2722A80](0xD000000000000022, 0x80000001B0357820);
    MEMORY[0x1B2722A80](0x65737520726F6620, 0xEE00206573616320);
    v0[4] = v1;
    type metadata accessor for LACPreboardUseCase(0);
    _print_unlocked<A, B>(_:_:)();
    v18 = MEMORY[0x1B27229A0](v0[2], v0[3]);

    [v17 errorWithCode:-1000 debugDescription:v18];

    swift_willThrow();
  }

  v19 = v0[1];

  return v19();
}

{
  v1 = v0[9];
  outlined consume of Data._Representation(v0[10], v0[11]);

  v2 = v0[1];
  v4 = v0[14];
  v3 = v0[15];

  return v2(v3, v4);
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  outlined consume of Data._Representation(v1, v2);
  v4 = v0[13];
  v5 = v0[1];

  return v5();
}

uint64_t LACPreboardStorage.exchangeUPPSignature(for:useCase:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v9 = LACPreboardStorage.exchangeUPPSignature(for:useCase:);
  }

  else
  {

    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v9 = LACPreboardStorage.exchangeUPPSignature(for:useCase:);
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

id LACPreboardStorage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACPreboardStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LACPreboardStorage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for LACPreboardStorageType.delegate.modify in conformance LACPreboardStorage(uint64_t *a1))(void *a1)
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
  return protocol witness for LACPreboardStorageType.delegate.modify in conformance LACPreboardStorage;
}

void protocol witness for LACPreboardStorageType.delegate.modify in conformance LACPreboardStorage(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for LACPreboardStorageType.batchOptions(for:) in conformance LACPreboardStorage(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of LACPreboardStorageType.batchOptions(for:);

  return v8(a1);
}

uint64_t protocol witness for LACPreboardStorageType.clean(for:) in conformance LACPreboardStorage(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return v8(a1);
}

uint64_t protocol witness for LACPreboardStorageType.enableBatch(for:) in conformance LACPreboardStorage(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return v8(a1);
}

uint64_t protocol witness for LACPreboardStorageType.enableVariable(for:) in conformance LACPreboardStorage(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return v8(a1);
}

uint64_t protocol witness for LACPreboardStorageType.exchangeUPPSignature(for:useCase:) in conformance LACPreboardStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xB0);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for LACPreboardStorageType.exchangeUPPSignature(for:useCase:) in conformance LACPreboardStorage;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for LACPreboardStorageType.exchangeUPPSignature(for:useCase:) in conformance LACPreboardStorage(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t LACPreboardStorage.acmContext(for:)(uint64_t a1)
{
  v2 = v1;
  v38 = a1;
  v3 = type metadata accessor for UUID();
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v33 - v16;
  if (!(*((*MEMORY[0x1E69E7D40] & *v1) + 0x70))(v15))
  {
    goto LABEL_10;
  }

  v19 = v18;
  ObjectType = swift_getObjectType();
  v36 = (*(v19 + 8))(v1, &protocol witness table for LACPreboardStorage, ObjectType, v19);
  v22 = v21;
  swift_unknownObjectRelease();
  if (v22 >> 60 == 15)
  {
    goto LABEL_10;
  }

  v34 = v14;
  v23 = v39;
  (*(v39 + 16))(v17, v2 + OBJC_IVAR____TtC23LocalAuthenticationCore18LACPreboardStorage_uuid, v3);
  (*(v23 + 56))(v17, 0, 1, v3);
  v24 = *(v6 + 48);
  outlined init with copy of (String, Any)(v17, v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v35 = v24;
  outlined init with copy of (String, Any)(v38, &v9[v24], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v25 = *(v23 + 48);
  if (v25(v9, 1, v3) != 1)
  {
    v26 = v34;
    outlined init with copy of (String, Any)(v9, v34, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v25(&v9[v35], 1, v3) != 1)
    {
      v30 = v39;
      v31 = v37;
      (*(v39 + 32))(v37, &v9[v35], v3);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      LODWORD(v38) = dispatch thunk of static Equatable.== infix(_:_:)();
      v32 = *(v30 + 8);
      v32(v31, v3);
      outlined destroy of AsyncStream<()>.Continuation?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v32(v26, v3);
      outlined destroy of AsyncStream<()>.Continuation?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (v38)
      {
        return v36;
      }

      outlined consume of Data?(v36, v22);
LABEL_10:
      v27 = objc_opt_self();
      v28 = MEMORY[0x1B27229A0](0x63204D4341206F4ELL, 0xEE00747865746E6FLL);
      [v27 errorWithCode:-1000 debugDescription:v28];

      return swift_willThrow();
    }

    outlined consume of Data?(v36, v22);
    outlined destroy of AsyncStream<()>.Continuation?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v39 + 8))(v26, v3);
LABEL_9:
    outlined destroy of AsyncStream<()>.Continuation?(v9, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_10;
  }

  outlined destroy of AsyncStream<()>.Continuation?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v25(&v9[v35], 1, v3) != 1)
  {
    outlined consume of Data?(v36, v22);
    goto LABEL_9;
  }

  outlined destroy of AsyncStream<()>.Continuation?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v36;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

id specialized LACPreboardStorage.storageRequest(for:operation:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 4)
  {
    v8 = &LACStorageKeyDeveloperMode;
LABEL_5:
    v9 = *v8;
    (*(v5 + 16))(v7, v1 + OBJC_IVAR____TtC23LocalAuthenticationCore18LACPreboardStorage_uuid);
    v10 = objc_allocWithZone(type metadata accessor for LACPreboardStorageRequest());
    return LACPreboardStorageRequest.init(for:contextID:options:)(v9, v7, 0);
  }

  if (a1 == 3)
  {
    v8 = &LACStorageKeyUPP;
    goto LABEL_5;
  }

  v12 = objc_opt_self();
  v15 = 0;
  v16 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);
  MEMORY[0x1B2722A80](0xD00000000000001DLL, 0x80000001B0357910);
  v14[1] = a1;
  type metadata accessor for LACPreboardUseCase(0);
  _print_unlocked<A, B>(_:_:)();
  v13 = MEMORY[0x1B27229A0](v15, v16);

  [v12 errorWithCode:-1000 debugDescription:v13];

  return swift_willThrow();
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

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  closure #1 in Data.init<A>(_:)(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t type metadata completion function for LACPreboardStorage()
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

uint64_t dispatch thunk of LACPreboardStorage.batchOptions(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of LACPreboardStorageType.batchOptions(for:);

  return v8(a1);
}

uint64_t dispatch thunk of LACPreboardStorage.clean(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return v8(a1);
}

uint64_t dispatch thunk of LACPreboardStorage.enableBatch(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return v8(a1);
}

uint64_t dispatch thunk of LACPreboardStorage.enableVariable(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return v8(a1);
}

uint64_t dispatch thunk of LACPreboardStorage.exchangeUPPSignature(for:useCase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xB0);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of LACPreboardStorageType.exchangeUPPSignature(for:useCase:);

  return v12(a1, a2, a3);
}

unint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  }

  return result;
}

void specialized LACPreboardPasscodeVerifier.verifyPasscode(_:in:)()
{
  v14 = type metadata accessor for Logger();
  v0 = *(v14 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = Data._bridgeToObjectiveC()().super.isa;
  v6 = Data._bridgeToObjectiveC()().super.isa;
  v7 = MKBVerifyPasswordWithContext();

  if (v7)
  {
    v8 = LACLogPreboard();
    Logger.init(_:)();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v7;
      _os_log_impl(&dword_1B0233000, v9, v10, "Passcode verification failed with code: %d", v11, 8u);
      MEMORY[0x1B27246A0](v11, -1, -1);
    }

    (*(v0 + 8))(v3, v14);
    v15 = 0;
    v16 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v15 = 0xD00000000000001FLL;
    v16 = 0x80000001B0357970;
    v17 = v7;
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B2722A80](v12);

    specialized static LACPreboardErrorBuilder.error(code:message:)(0, v15, v16);

    swift_willThrow();
  }
}

id LACFileAttribute.nsFileAttribute.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      v5 = *MEMORY[0x1E696A370];
      *(a1 + 24) = MEMORY[0x1E69E75F8];
      *a1 = a2;
      return v5;
    }

    v3 = MEMORY[0x1E696A320];
  }

  else
  {
    v3 = MEMORY[0x1E696A358];
  }

  v4 = *v3;
  *(a1 + 24) = MEMORY[0x1E69E6810];
  *a1 = a2;
  return v4;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LACFileAttribute(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LACFileAttribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

id LACOnenessController.init(authenticator:clientInfoProvider:environmentProvider:sessionMonitor:uiPresenter:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAuthenticator:a1 clientInfoProvider:a2 environmentProvider:a3 sessionMonitor:a4 uiPresenter:a5 replyQueue:a6];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v7;
}

{
  *(v6 + OBJC_IVAR___LACOnenessController_uiPresenter) = a5;
  v14.super_class = LACOnenessController;
  swift_unknownObjectRetain();
  v12 = objc_msgSendSuper2(&v14, sel_initWithAuthenticator_clientInfoProvider_environmentProvider_sessionMonitor_replyQueue_, a1, a2, a3, a4, a6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v12;
}

void LACOnenessController.canAuthenticateRequest(_:availabilityError:)(void *a1, void *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for Logger();
  v54 = *(v5 - 8);
  v6 = *(v54 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v53 - v10;
  if (a2)
  {
    v12 = _convertErrorToNSError(_:)();
  }

  else
  {
    v12 = 0;
  }

  v56.receiver = v2;
  v56.super_class = LACOnenessController;
  v57[0] = 0;
  v13 = objc_msgSendSuper2(&v56, sel_canAuthenticateRequest_availabilityError_error_, a1, v12, v57);

  if (!v13)
  {
    v22 = v57[0];
    _convertNSErrorToError(_:)();

    goto LABEL_13;
  }

  v53 = v5;
  v14 = v57[0];
  v15 = [a1 options];
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = v15;
  v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v55 = 1084;
  type metadata accessor for LACPolicyOption(0);
  lazy protocol witness table accessor for type LACPolicyOption and conformance LACPolicyOption();
  AnyHashable.init<A>(_:)();
  if (!*(v17 + 16) || (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v57), (v19 & 1) == 0))
  {

    outlined destroy of AnyHashable(v57);
LABEL_15:
    v58 = 0u;
    v59 = 0u;
    goto LABEL_16;
  }

  outlined init with copy of Any(*(v17 + 56) + 32 * v18, &v58);
  outlined destroy of AnyHashable(v57);

  if (!*(&v59 + 1))
  {
LABEL_16:
    outlined destroy of AsyncStream<()>.Continuation?(&v58, &_sypSgMd, _sypSgMR);
    goto LABEL_17;
  }

  if (swift_dynamicCast() && (v57[0] & 1) != 0)
  {
    v20 = objc_opt_self();
    v21 = MEMORY[0x1B27229A0](0xD000000000000053, 0x80000001B0357990);
    [v20 errorWithCode:-1 subcode:33 debugDescription:v21];

    goto LABEL_13;
  }

LABEL_17:
  if (a2)
  {
    v57[0] = a2;
    v23 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSError, 0x1E696ABC0);
    if (swift_dynamicCast())
    {
      v24 = v58;
      v25 = objc_opt_self();
      v26 = v24;
      v27 = _convertErrorToNSError(_:)();

      LODWORD(v25) = [v25 error:v27 hasCode:-1004];
      if (!v25)
      {
        goto LABEL_22;
      }

      if (!specialized LACOnenessController.isContinuityUnlockAvailable(nonInteractiveError:)(v26))
      {
        v31 = LACLogABM();
        Logger.init(_:)();
        swift_unknownObjectRetain_n();
        v32 = v26;
        v33 = v2;
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();

        v36 = os_log_type_enabled(v34, v35);
        v37 = v53;
        if (v36)
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *v38 = 138543874;
          *(v38 + 4) = v33;
          *v39 = v33;
          *(v38 + 12) = 1026;
          v40 = v33;
          v41 = [a1 identifier];
          swift_unknownObjectRelease();
          *(v38 + 14) = v41;
          swift_unknownObjectRelease();
          *(v38 + 18) = 2112;
          *(v38 + 20) = v32;
          v39[1] = v32;
          v42 = v32;
          _os_log_impl(&dword_1B0233000, v34, v35, "%{public}@ Continuity unlock not available for request: %{public}u error: %@", v38, 0x1Cu);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          swift_arrayDestroy();
          MEMORY[0x1B27246A0](v39, -1, -1);
          MEMORY[0x1B27246A0](v38, -1, -1);
        }

        else
        {

          swift_unknownObjectRelease_n();
        }

        (*(v54 + 8))(v9, v37);
        goto LABEL_13;
      }

      v28 = specialized LACOnenessController.isRequestSatisfiable(with:)(v26);
      v29 = v53;
      if (v28)
      {
LABEL_22:

        goto LABEL_23;
      }

      v43 = LACLogABM();
      Logger.init(_:)();
      swift_unknownObjectRetain_n();
      v44 = v26;
      v45 = v2;
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 138543874;
        *(v48 + 4) = v45;
        *v49 = v45;
        *(v48 + 12) = 1026;
        v50 = v45;
        v51 = [a1 identifier];
        swift_unknownObjectRelease();
        *(v48 + 14) = v51;
        swift_unknownObjectRelease();
        *(v48 + 18) = 2112;
        *(v48 + 20) = v44;
        v49[1] = v44;
        v52 = v44;
        _os_log_impl(&dword_1B0233000, v46, v47, "%{public}@ Continuity unlock not satisfiable for request: %{public}u error: %@", v48, 0x1Cu);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x1B27246A0](v49, -1, -1);
        MEMORY[0x1B27246A0](v48, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease_n();
      }

      (*(v54 + 8))(v11, v29);
LABEL_13:
      swift_willThrow();
    }
  }

LABEL_23:
  v30 = *MEMORY[0x1E69E9840];
}

void LACOnenessController.postProcessRequest(_:result:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = v10;
  v11[4] = a3;
  v11[5] = a4;
  aBlock[4] = partial apply for closure #1 in LACOnenessController.postProcessRequest(_:result:completion:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACEvaluationResult) -> ();
  aBlock[3] = &block_descriptor_19;
  v12 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v13.receiver = v5;
  v13.super_class = LACOnenessController;
  objc_msgSendSuper2(&v13, sel_postProcessRequest_result_completion_, a1, a2, v12);
  _Block_release(v12);
}

void closure #1 in LACOnenessController.postProcessRequest(_:result:completion:)(void *a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a2 options];
  if (!v14)
  {
    goto LABEL_10;
  }

  v37 = v10;
  v15 = v14;
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = 1039;
  AnyHashable.init<A>(_:)();
  if (!*(v16 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), (v18 & 1) == 0))
  {

    outlined destroy of AnyHashable(aBlock);
LABEL_10:
    v40 = 0u;
    v41 = 0u;
    goto LABEL_11;
  }

  outlined init with copy of Any(*(v16 + 56) + 32 * v17, &v40);
  outlined destroy of AnyHashable(aBlock);

  if (!*(&v41 + 1))
  {
LABEL_11:
    outlined destroy of AsyncStream<()>.Continuation?(&v40, &_sypSgMd, _sypSgMR);
    goto LABEL_12;
  }

  if (swift_dynamicCast() && (aBlock[0] & 1) != 0)
  {
    v19 = LACLogABM();
    Logger.init(_:)();

    swift_unknownObjectRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v22 = 138543618;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      *(v22 + 4) = Strong;
      v24 = v36;
      *v36 = Strong;
      *(v22 + 12) = 1026;
      *(v22 + 14) = [a2 identifier];
      swift_unknownObjectRelease();
      _os_log_impl(&dword_1B0233000, v20, v21, "%{public}@ Skipping presentation of failure UI for rid: %{public}u. No failure UI option.", v22, 0x12u);
      outlined destroy of AsyncStream<()>.Continuation?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B27246A0](v24, -1, -1);
      MEMORY[0x1B27246A0](v22, -1, -1);
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v37 + 8))(v13, v9);
    goto LABEL_17;
  }

LABEL_12:
  v25 = [a1 error];
  if (!v25)
  {
LABEL_17:
    a4(a1);
    return;
  }

  v26 = v25;
  v27 = objc_opt_self();
  v28 = _convertErrorToNSError(_:)();
  LODWORD(v27) = [v27 error:v28 hasCode:-1 subcode:33];

  if (!v27)
  {

    goto LABEL_17;
  }

  swift_beginAccess();
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    v31 = [v29 uiPresenter];

    v32 = swift_allocObject();
    v32[2] = a4;
    v32[3] = a5;
    v32[4] = a1;
    aBlock[4] = partial apply for closure #1 in closure #1 in LACOnenessController.postProcessRequest(_:result:completion:);
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_20_0;
    v33 = _Block_copy(aBlock);

    v34 = a1;

    [v31 presentUIForIdentifier:3 request:a2 completion:v33];
    swift_unknownObjectRelease();

    _Block_release(v33);
  }

  else
  {
  }
}

id LACOnenessController.mapError(_:)()
{
  v1 = _convertErrorToNSError(_:)();
  v11.receiver = v0;
  v11.super_class = LACOnenessController;
  v2 = objc_msgSendSuper2(&v11, sel_mapError_, v1);

  v3 = objc_opt_self();
  v4 = _convertErrorToNSError(_:)();
  v5 = [v3 error:v4 hasCode:-1004];

  if (v5)
  {
    v6 = _convertErrorToNSError(_:)();
    if (specialized LACOnenessController.isRequestSatisfiable(with:)(v6))
    {
      if (specialized LACOnenessController.isContinuityUnlockAvailable(nonInteractiveError:)(v6))
      {
LABEL_7:

        return v2;
      }

      v7 = MEMORY[0x1B27229A0](0xD000000000000041, 0x80000001B0357A50);
      v8 = [v3 errorWithCode:-11 debugDescription:v7];
    }

    else
    {
      v7 = MEMORY[0x1B27229A0](0xD000000000000059, 0x80000001B03579F0);
      v8 = [v3 errorWithCode:-1 subcode:33 debugDescription:v7];
    }

    v9 = v8;

    v6 = v2;
    v2 = v9;
    goto LABEL_7;
  }

  return v2;
}

id LACOnenessController.init(authenticator:clientInfoProvider:environmentProvider:sessionMonitor:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAuthenticator:a1 clientInfoProvider:a2 environmentProvider:a3 sessionMonitor:a4 replyQueue:a5];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v6;
}

BOOL specialized LACOnenessController.isContinuityUnlockAvailable(nonInteractiveError:)(void *a1)
{
  v1 = [a1 userInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v2 + 16))
  {

    goto LABEL_6;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  outlined init with copy of Any(*(v2 + 56) + 32 * v5, v17);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v8 = v16;
LABEL_8:
  v9 = *(v8 + 16);
  v10 = 32;
  do
  {
    v11 = v9;
    if (v9-- == 0)
    {
      break;
    }

    v13 = *(v8 + v10);
    v10 += 8;
  }

  while (v13 != 13);
  v14 = v11 != 0;

  return v14;
}

id specialized LACOnenessController.isRequestSatisfiable(with:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = _convertErrorToNSError(_:)();
  v9 = [v7 mechanismTreeFromError_];

  if (v9)
  {
    v10 = [v9 isSatisfiableWithValue_];
  }

  else
  {
    v11 = LACLogABM();
    Logger.init(_:)();
    v12 = a1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      v17 = [v12 userInfo];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = Dictionary.description.getter();
      v20 = v19;

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v24);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_1B0233000, v13, v14, "Could not parse tree: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1B27246A0](v16, -1, -1);
      MEMORY[0x1B27246A0](v15, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return v10;
}

unint64_t lazy protocol witness table accessor for type LACPolicyOption and conformance LACPolicyOption()
{
  result = lazy protocol witness table cache variable for type LACPolicyOption and conformance LACPolicyOption;
  if (!lazy protocol witness table cache variable for type LACPolicyOption and conformance LACPolicyOption)
  {
    type metadata accessor for LACPolicyOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACPolicyOption and conformance LACPolicyOption);
  }

  return result;
}

uint64_t objectdestroy_2Tm_2()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t static LACLocalization.faceID()(uint64_t a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = MEMORY[0x1B27229A0](a1, a2);
  v6 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v7 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v8 = [ObjCClassFromMetadata localizedStringWithKey:v5 value:v6 tableSuffix:v7];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v9;
}

uint64_t static LACLocalization.errorAuthenticationFailure()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000016, 0x80000001B0357BE0);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorAuthenticationCanceled()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000017, 0x80000001B0357C00);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorBiometryNotAvailable()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000016, 0x80000001B0357C20);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorBiometryNotEnrolled()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000015, 0x80000001B0357C40);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorBiometryLockedOut()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000013, 0x80000001B0357C60);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorPasscodeNotSet()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD00000000000001ALL, 0x80000001B0357C80);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorNotInteractive()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD00000000000001ALL, 0x80000001B0357CA0);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorBiometryNotPaired()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD00000000000001DLL, 0x80000001B0357CC0);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorBiometryDisconnected()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000020, 0x80000001B0357CE0);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorInvalidDimensions()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD00000000000001DLL, 0x80000001B0357D10);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorRecoveryUserNotFound()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000020, 0x80000001B0357D30);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorTimeout()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000013, 0x80000001B0357D60);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorDenied()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000012, 0x80000001B0357D80);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorOperationNotAllowed()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD00000000000001FLL, 0x80000001B0357DA0);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorNoAuthenticationRequired()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000024, 0x80000001B0357DC0);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorBiometryDeniedForApp()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000020, 0x80000001B0357DF0);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorNotFound()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000014, 0x80000001B0357E20);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.errorCompanionNotAvailable()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000021, 0x80000001B0357E40);
  v2 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v2 tableSuffix:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

id static LACLocalization.dtoSecurityDelayEndedText(_:duration:)(uint64_t a1, uint64_t a2, double a3)
{
  if (a3 <= 0.0)
  {

    return a1;
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v6 setUnitsStyle_];
  result = [v6 stringFromTimeInterval_];
  if (result)
  {
    v8 = result;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, _ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1B0342810;
    v13 = MEMORY[0x1E69E6158];
    *(v12 + 56) = MEMORY[0x1E69E6158];
    v14 = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;
    *(v12 + 96) = v13;
    *(v12 + 104) = v14;
    *(v12 + 64) = v14;
    *(v12 + 72) = v9;
    *(v12 + 80) = v11;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v16 = MEMORY[0x1B27229A0](0xD00000000000001DLL, 0x80000001B0357E70);
    v17 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
    v18 = MEMORY[0x1B27229A0](0x74656863746152, 0xE700000000000000);
    v19 = [ObjCClassFromMetadata localizedStringWithKey:v16 value:v17 tableSuffix:v18];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    a1 = String.init(format:_:)();

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t static LACLocalization.dtoErrorPasscodeNotSet()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD00000000000001ALL, 0x80000001B0357E90);
  v2 = MEMORY[0x1B27229A0](0x74656863746152, 0xE700000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v3 tableSuffix:v2];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.dtoErrorBiometryNotEnrolled()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD00000000000001FLL, 0x80000001B0357EB0);
  v2 = MEMORY[0x1B27229A0](0x74656863746152, 0xE700000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v3 tableSuffix:v2];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t static LACLocalization.dtoErrorDeviceTypeNotSupported()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = MEMORY[0x1B27229A0](0xD000000000000023, 0x80000001B0357ED0);
  v2 = MEMORY[0x1B27229A0](0x74656863746152, 0xE700000000000000);
  v3 = MEMORY[0x1B27229A0](0, 0xE000000000000000);
  v4 = [ObjCClassFromMetadata localizedStringWithKey:v1 value:v3 tableSuffix:v2];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationC_SD6ValuesVySSAF_GTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC23LocalAuthenticationCore012LACCompanionI24ControllerPendingRequestC_Tt1g5Tm(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v2, a1);
  outlined consume of [UUID : LACCompanionAuthenticationControllerPendingRequest].Iterator._Variant();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t LACDTOPendingPolicyEvaluationStore.pendingEvaluationsDict.setter(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_pendingEvaluationsDict);
  *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_pendingEvaluationsDict) = a1;

  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCTt1g5(v4, a1);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    v8 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))(result);
    v9 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_taskGroup);
    v10 = swift_allocObject();
    v10[2] = v1;
    v10[3] = v8;
    v10[4] = ObjectType;
    v11 = *(*v9 + 120);
    v12 = v1;
    v11(&closure #1 in LACDTOPendingPolicyEvaluationStore.persist()partial apply, v10);
  }

  return result;
}

void *LACDTOPendingPolicyEvaluationStore.pendingEvaluations.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_pendingEvaluationsDict);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC23LocalAuthenticationCore012LACCompanionI24ControllerPendingRequestC_Tt1g5Tm(*(v1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v2, v1);

  outlined consume of [UUID : LACCompanionAuthenticationControllerPendingRequest].Iterator._Variant();
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

id LACDTOPendingPolicyEvaluationStore.__allocating_init(persistentStore:workQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v2);
  v7 = OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_taskGroup;
  v8 = type metadata accessor for SerialTask();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC23LocalAuthenticationCore10SerialTask_continuation;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GMd, &_sScS12ContinuationVyyyYac_GMR);
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  SerialTask.start()();
  *&v6[v7] = v11;
  v14 = OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_pendingEvaluationsDict;
  *&v6[v14] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *&v6[OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_store] = a1;
  *&v6[OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_workQueue] = a2;
  v16.receiver = v6;
  v16.super_class = v3;
  return objc_msgSendSuper2(&v16, sel_init);
}

id LACDTOPendingPolicyEvaluationStore.init(persistentStore:workQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_taskGroup;
  v7 = type metadata accessor for SerialTask();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC23LocalAuthenticationCore10SerialTask_continuation;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVyyyYac_GMd, &_sScS12ContinuationVyyyYac_GMR);
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  SerialTask.start()();
  *&v3[v6] = v10;
  v13 = OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_pendingEvaluationsDict;
  *&v3[v13] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_store] = a1;
  *&v3[OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_workQueue] = a2;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for LACDTOPendingPolicyEvaluationStore();
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  v10[5] = a1;
  v10[6] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:), v10);
}

uint64_t closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[26] = a5;
  v6[27] = a6;
  v6[25] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[28] = v7;
  v8 = *(v7 - 8);
  v6[29] = v8;
  v9 = *(v8 + 64) + 15;
  v6[30] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v6[31] = v10;
  v11 = *(v10 - 8);
  v6[32] = v11;
  v12 = *(v11 + 64) + 15;
  v6[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:), 0, 0);
}

uint64_t closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:)()
{
  v1 = v0[25];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[34] = Strong;
  if (Strong)
  {
    v3 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0xA0);
    v10 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[35] = v5;
    *v5 = v0;
    v5[1] = closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:);

    return v10();
  }

  else
  {
    v7 = v0[33];
    v8 = v0[30];

    v9 = v0[1];

    return v9();
  }
}

{
  v1 = v0[25];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[36];
    v4 = v0[33];
    v5 = v0[30];
    v20 = v0[32];
    v21 = v0[31];
    v6 = v0[28];
    v7 = v0[29];
    v9 = v0[26];
    v8 = v0[27];
    v10 = Strong;
    v19 = *(Strong + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_workQueue);

    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v8;
    v11[4] = v3;
    v0[12] = partial apply for closure #1 in closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:);
    v0[13] = v11;
    v0[8] = MEMORY[0x1E69E9820];
    v0[9] = 1107296256;
    v0[10] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v0[11] = &block_descriptor_70;
    v12 = _Block_copy(v0 + 8);

    static DispatchQoS.unspecified.getter();
    v0[24] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type LACDTOMutablePendingPolicyEvaluation and conformance LACDTOMutablePendingPolicyEvaluation(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B2722CF0](0, v4, v5, v12);
    _Block_release(v12);

    (*(v7 + 8))(v5, v6);
    (*(v20 + 8))(v4, v21);
    v13 = v0[13];
  }

  else
  {
    v14 = v0[36];
  }

  v15 = v0[33];
  v16 = v0[30];

  v17 = v0[1];

  return v17();
}

{
  v1 = *(v0 + 200);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 296);
    v4 = *(v0 + 264);
    v5 = *(v0 + 240);
    v20 = *(v0 + 256);
    v21 = *(v0 + 248);
    v6 = *(v0 + 224);
    v7 = *(v0 + 232);
    v8 = *(v0 + 208);
    v9 = *(v0 + 216);
    v10 = Strong;
    v19 = *(Strong + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_workQueue);

    v11 = swift_allocObject();
    v11[2] = v8;
    v11[3] = v9;
    v11[4] = v3;
    *(v0 + 48) = partial apply for closure #2 in closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:);
    *(v0 + 56) = v11;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(v0 + 40) = &block_descriptor_20;
    v12 = _Block_copy((v0 + 16));

    v13 = v3;
    static DispatchQoS.unspecified.getter();
    *(v0 + 184) = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type LACDTOMutablePendingPolicyEvaluation and conformance LACDTOMutablePendingPolicyEvaluation(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, _sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B2722D20](0, v4, v5, v12);
    _Block_release(v12);

    (*(v7 + 8))(v5, v6);
    (*(v20 + 8))(v4, v21);
    v14 = *(v0 + 56);
  }

  else
  {
  }

  v15 = *(v0 + 264);
  v16 = *(v0 + 240);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 280);
  v7 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {
    v5 = closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:);
  }

  else
  {

    v5 = closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray?, @unowned NSError?) -> ()(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    type metadata accessor for LACDTOMutablePendingPolicyEvaluation();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t LACDTOPendingPolicyEvaluationStore.load()()
{
  v1[3] = v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](LACDTOPendingPolicyEvaluationStore.load(), 0, 0);
}

{
  v1 = v0[7];
  v2 = LACLogDTOEvaluation();
  Logger.init(_:)();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B0233000, v3, v4, "Loading pending evaluations", v5, 2u);
    MEMORY[0x1B27246A0](v5, -1, -1);
  }

  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];

  v10 = *(v8 + 8);
  v0[8] = v10;
  v10(v6, v7);
  v11 = *(v9 + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_store);
  ObjectType = swift_getObjectType();
  v13 = swift_task_alloc();
  v0[9] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCGMd, &_sSay23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCGMR);
  v15 = lazy protocol witness table accessor for type [LACDTOMutablePendingPolicyEvaluation] and conformance <A> [A](&lazy protocol witness table cache variable for type [LACDTOMutablePendingPolicyEvaluation] and conformance <A> [A], &lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation and conformance LACDTOMutablePendingPolicyEvaluation);
  *v13 = v0;
  v13[1] = LACDTOPendingPolicyEvaluationStore.load();

  return LACPersistentStore.object<A>(forKey:)((v0 + 2), 0xD000000000000012, 0x80000001B0354A00, ObjectType, v14, v15);
}

{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = LACDTOPendingPolicyEvaluationStore.load();
  }

  else
  {
    v3 = LACDTOPendingPolicyEvaluationStore.load();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v24 = v0;
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[6];
    v3 = LACLogDTOEvaluation();
    Logger.init(_:)();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[8];
    v8 = v0[5];
    v9 = v0[6];
    v10 = v0[4];
    if (v6)
    {
      v22 = v0[8];
      v11 = swift_slowAlloc();
      v21 = v9;
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136315138;
      v13 = type metadata accessor for LACDTOMutablePendingPolicyEvaluation();
      v14 = MEMORY[0x1B2722B60](v1, v13);
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v23);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1B0233000, v4, v5, "Loaded pending evaluations %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1B27246A0](v12, -1, -1);
      MEMORY[0x1B27246A0](v11, -1, -1);

      v22(v21, v10);
    }

    else
    {

      v7(v9, v10);
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v18 = v0[6];
  v17 = v0[7];

  v19 = v0[1];

  return v19(v1);
}

{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t @objc closure #1 in LACDTOPendingPolicyEvaluationStore.load()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in LACDTOPendingPolicyEvaluationStore.load();

  return LACDTOPendingPolicyEvaluationStore.load()();
}

uint64_t @objc closure #1 in LACDTOPendingPolicyEvaluationStore.load()()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for LACDTOMutablePendingPolicyEvaluation();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

Swift::Void __swiftcall LACDTOPendingPolicyEvaluationStore.persistEvaluations()()
{
  ObjectType = swift_getObjectType();
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();
  v3 = *(v0 + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_taskGroup);
  v4 = swift_allocObject();
  v4[2] = v0;
  v4[3] = v2;
  v4[4] = ObjectType;
  v5 = *(*v3 + 120);
  v6 = v0;
  v5(&async function pointer to partial apply for closure #1 in LACDTOPendingPolicyEvaluationStore.persist(), v4);
}

uint64_t LACDTOPendingPolicyEvaluationStore.addPendingEvaluation(_:)(char *a1)
{
  v2 = v1;
  v4 = *&a1[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier];
  v5 = *&a1[OBJC_IVAR____TtC23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluation_identifier + 8];
  v6 = *(v2 + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_pendingEvaluationsDict);

  v7 = a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, v4, v5, isUniquelyReferenced_nonNull_native);

  return LACDTOPendingPolicyEvaluationStore.pendingEvaluationsDict.setter(v6);
}

void *LACDTOPendingPolicyEvaluationStore.pendingEvaluation(withIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_pendingEvaluationsDict);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = *(*(v3 + 56) + 8 * v6);
    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

Swift::Void __swiftcall LACDTOPendingPolicyEvaluationStore.removePendingEvaluation(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v4 = *(v1 + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_pendingEvaluationsDict);

  LACDTOPendingPolicyEvaluationStore.pendingEvaluationsDict.setter(v4);
}

id LACDTOPendingPolicyEvaluationStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACDTOPendingPolicyEvaluationStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LACDTOPendingPolicyEvaluationStore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t closure #1 in LACDTOPendingPolicyEvaluationStore.persist()(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for Logger();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in LACDTOPendingPolicyEvaluationStore.persist(), 0, 0);
}

uint64_t closure #1 in LACDTOPendingPolicyEvaluationStore.persist()()
{
  v1 = v0[4];
  v2 = *(v0[3] + OBJC_IVAR____TtC23LocalAuthenticationCore34LACDTOPendingPolicyEvaluationStore_store);
  ObjectType = swift_getObjectType();
  v0[2] = v1;
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCGMd, &_sSay23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCGMR);
  v6 = lazy protocol witness table accessor for type [LACDTOMutablePendingPolicyEvaluation] and conformance <A> [A](&lazy protocol witness table cache variable for type [LACDTOMutablePendingPolicyEvaluation] and conformance <A> [A], &lazy protocol witness table cache variable for type LACDTOMutablePendingPolicyEvaluation and conformance LACDTOMutablePendingPolicyEvaluation);
  *v4 = v0;
  v4[1] = closure #1 in LACDTOPendingPolicyEvaluationStore.persist();

  return LACPersistentStore.set<A>(object:for:)((v0 + 2), 0xD000000000000012, 0x80000001B0354A00, ObjectType, v5, v6);
}

{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = closure #1 in LACDTOPendingPolicyEvaluationStore.persist();
  }

  else
  {
    v3 = closure #1 in LACDTOPendingPolicyEvaluationStore.persist();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v22 = v0;
  v1 = v0[8];
  v2 = v0[4];
  v3 = LACLogDTOEvaluation();
  Logger.init(_:)();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  if (v6)
  {
    v10 = v0[4];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    v13 = type metadata accessor for LACDTOMutablePendingPolicyEvaluation();
    v14 = MEMORY[0x1B2722B60](v10, v13);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v21);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1B0233000, v4, v5, "Persisted pending evaluations %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B27246A0](v12, -1, -1);
    MEMORY[0x1B27246A0](v11, -1, -1);
  }

  (*(v9 + 8))(v7, v8);
  v18 = v0[7];
  v17 = v0[8];

  v19 = v0[1];

  return v19();
}

{
  v1 = v0[10];
  v2 = v0[7];
  v3 = LACLogDTOEvaluation();
  Logger.init(_:)();
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[10];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B0233000, v5, v6, "Failed to persist pending evaluations with error %{public}@", v9, 0xCu);
    outlined destroy of AsyncStream<()>.Continuation?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B27246A0](v10, -1, -1);
    MEMORY[0x1B27246A0](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);
  v14 = v0[7];
  v13 = v0[8];

  v15 = v0[1];

  return v15();
}

void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCTt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      type metadata accessor for LACDTOMutablePendingPolicyEvaluation();
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = static NSObject.== infix(_:_:)();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return v7();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return v8();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  outlined init with copy of TaskPriority?(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of AsyncStream<()>.Continuation?(v12, &_sScPSgMd, &_sScPSgMR);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    outlined destroy of AsyncStream<()>.Continuation?(a3, &_sScPSgMd, &_sScPSgMR);

    return v23;
  }

LABEL_8:
  outlined destroy of AsyncStream<()>.Continuation?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC23LocalAuthenticationCore012LACCompanionI24ControllerPendingRequestC_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
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

    outlined init with take of Any((*(v12 + 56) + 32 * v9), a3);
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
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

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v11 = v10;
      String.hash(into:)();
      v12 = Hasher._finalize()();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + v3);
        v19 = (v17 + v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v43);
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
      lazy protocol witness table accessor for type LACDTOMutablePendingPolicyEvaluation and conformance LACDTOMutablePendingPolicyEvaluation(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
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
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
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

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo20LACEligibilityDomainaSbGMd, &_ss18_DictionaryStorageCySo20LACEligibilityDomainaSbGMR);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        result = v18;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo18NSFileAttributeKeyaypGMd, &_ss18_DictionaryStorageCySo18NSFileAttributeKeyaypGMR);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        outlined init with take of Any(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCGMd, &_ss18_DictionaryStorageCySS23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCGMR);
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

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
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
        v18 = 40 * v17;
        outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        outlined init with copy of Any(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = outlined init with take of Any(v22, (*(v4 + 56) + v17));
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV23LocalAuthenticationCore012LACCompanionF14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV23LocalAuthenticationCore012LACCompanionF14PendingRequest33_7C23A2E67F893FA563A4E1A97AE88CD3LLCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV23LocalAuthenticationCore012LACCompanionF24ControllerPendingRequestCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV23LocalAuthenticationCore012LACCompanionF24ControllerPendingRequestCGMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSay23LocalAuthenticationCore37LACConcurrentEvaluationManagedRequest33_C817701C53905B142550A8026D25F95DLLCGGMd, &_ss18_DictionaryStorageCySSSay23LocalAuthenticationCore37LACConcurrentEvaluationManagedRequest33_C817701C53905B142550A8026D25F95DLLCGGMR);
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
  v5 = v2;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
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

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in LACDTOPendingPolicyEvaluationStore.persist()()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return closure #1 in LACDTOPendingPolicyEvaluationStore.persist()(v2, v3);
}

uint64_t dispatch thunk of LACDTOPendingPolicyEvaluationStore.load()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of LACDTOPendingPolicyEvaluationStore.load();

  return v6();
}

uint64_t dispatch thunk of LACDTOPendingPolicyEvaluationStore.load()(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t partial apply for @objc closure #1 in LACDTOPendingPolicyEvaluationStore.load()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return @objc closure #1 in LACDTOPendingPolicyEvaluationStore.load()(v2, v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of LACPreboardStorageType.clean(for:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_40(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t objectdestroy_2Tm_3()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = dispatch thunk of LACPreboardStorageType.enableBatch(for:);

  return closure #1 in LACDTOPendingPolicyEvaluationStore.loadPersistedEvaluations(completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_8Tm_1()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t lazy protocol witness table accessor for type [LACDTOMutablePendingPolicyEvaluation] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCGMd, &_sSay23LocalAuthenticationCore36LACDTOMutablePendingPolicyEvaluationCGMR);
    lazy protocol witness table accessor for type LACDTOMutablePendingPolicyEvaluation and conformance LACDTOMutablePendingPolicyEvaluation(a2, type metadata accessor for LACDTOMutablePendingPolicyEvaluation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_62Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t lazy protocol witness table accessor for type LACDTOMutablePendingPolicyEvaluation and conformance LACDTOMutablePendingPolicyEvaluation(unint64_t *a1, void (*a2)(uint64_t))
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

LocalAuthenticationCore::LACConcurrentEvaluationAllowListBundleID_optional __swiftcall LACConcurrentEvaluationAllowListBundleID.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LACConcurrentEvaluationAllowListBundleID.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t LACConcurrentEvaluationAllowListBundleID.rawValue.getter()
{
  v1 = 0xD000000000000015;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000017;
  }

  *v0;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LACConcurrentEvaluationAllowListBundleID(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "com.apple.iWork.Keynote";
  v4 = 0xD000000000000015;
  if (v2 == 1)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (v2 == 1)
  {
    v6 = "com.apple.iWork.Keynote";
  }

  else
  {
    v6 = "com.apple.iWork.Numbers";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000017;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ler.osinstallersetupd";
  }

  if (*a2 == 1)
  {
    v4 = 0xD000000000000017;
  }

  else
  {
    v3 = "com.apple.iWork.Numbers";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000017;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "ler.osinstallersetupd";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LACConcurrentEvaluationAllowListBundleID()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LACConcurrentEvaluationAllowListBundleID()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LACConcurrentEvaluationAllowListBundleID()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance LACConcurrentEvaluationAllowListBundleID(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000017;
  v3 = "com.apple.iWork.Keynote";
  v4 = 0xD000000000000015;
  if (*v1 == 1)
  {
    v4 = 0xD000000000000017;
  }

  else
  {
    v3 = "com.apple.iWork.Numbers";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "ler.osinstallersetupd";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t LACConcurrentEvaluationAllowListBinaryPath.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LACConcurrentEvaluationAllowListBinaryPath.init(rawValue:), v3);

  *a2 = v5 != 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LACConcurrentEvaluationAllowListBinaryPath()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LACConcurrentEvaluationAllowListBinaryPath()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LACConcurrentEvaluationAllowListBinaryPath@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance LACConcurrentEvaluationAllowListBinaryPath, *a1);

  *a2 = v3 != 0;
  return result;
}

id LACConcurrentEvaluationAllowList.__allocating_init(bundleIdentifiers:binaryPaths:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore32LACConcurrentEvaluationAllowList_bundleIdentifiers] = a1;
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore32LACConcurrentEvaluationAllowList_binaryPaths] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id LACConcurrentEvaluationAllowList.init(bundleIdentifiers:binaryPaths:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore32LACConcurrentEvaluationAllowList_bundleIdentifiers] = a1;
  *&v2[OBJC_IVAR____TtC23LocalAuthenticationCore32LACConcurrentEvaluationAllowList_binaryPaths] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LACConcurrentEvaluationAllowList();
  return objc_msgSendSuper2(&v4, sel_init);
}

id LACConcurrentEvaluationAllowList.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LACConcurrentEvaluationAllowList.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LACConcurrentEvaluationAllowList();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized static LACConcurrentEvaluationAllowList.default.getter()
{
  v0 = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v1 = v21;
  v3 = *(v21 + 16);
  v2 = *(v21 + 24);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1);
    v1 = v21;
    v2 = *(v21 + 24);
    v4 = v2 >> 1;
  }

  *(v1 + 16) = v5;
  v6 = v1 + 16 * v3;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x80000001B03542F0;
  v7 = v3 + 2;
  if (v4 < (v3 + 2))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 2, 1);
    v1 = v21;
  }

  *(v1 + 16) = v7;
  v8 = v1 + 16 * v5;
  *(v8 + 32) = 0xD000000000000017;
  *(v8 + 40) = 0x80000001B0354310;
  v9 = *(v1 + 24);
  v10 = v3 + 3;
  if ((v3 + 3) > (v9 >> 1))
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v3 + 3, 1);
  }

  v11 = v21;
  *(v21 + 16) = v10;
  v12 = v11 + 16 * v7;
  *(v12 + 32) = 0xD000000000000015;
  *(v12 + 40) = 0x80000001B0354330;
  v21 = v0;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
  v13 = v0;
  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  if (v15 >= v14 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
    v13 = v21;
  }

  *(v13 + 16) = v15 + 1;
  v16 = v13 + 16 * v15;
  *(v16 + 32) = 0xD000000000000015;
  *(v16 + 40) = 0x80000001B0354350;
  v17 = type metadata accessor for LACConcurrentEvaluationAllowList();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC23LocalAuthenticationCore32LACConcurrentEvaluationAllowList_bundleIdentifiers] = v11;
  *&v18[OBJC_IVAR____TtC23LocalAuthenticationCore32LACConcurrentEvaluationAllowList_binaryPaths] = v13;
  v20.receiver = v18;
  v20.super_class = v17;
  return objc_msgSendSuper2(&v20, sel_init);
}

unint64_t lazy protocol witness table accessor for type LACConcurrentEvaluationAllowListBundleID and conformance LACConcurrentEvaluationAllowListBundleID()
{
  result = lazy protocol witness table cache variable for type LACConcurrentEvaluationAllowListBundleID and conformance LACConcurrentEvaluationAllowListBundleID;
  if (!lazy protocol witness table cache variable for type LACConcurrentEvaluationAllowListBundleID and conformance LACConcurrentEvaluationAllowListBundleID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACConcurrentEvaluationAllowListBundleID and conformance LACConcurrentEvaluationAllowListBundleID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LACConcurrentEvaluationAllowListBinaryPath and conformance LACConcurrentEvaluationAllowListBinaryPath()
{
  result = lazy protocol witness table cache variable for type LACConcurrentEvaluationAllowListBinaryPath and conformance LACConcurrentEvaluationAllowListBinaryPath;
  if (!lazy protocol witness table cache variable for type LACConcurrentEvaluationAllowListBinaryPath and conformance LACConcurrentEvaluationAllowListBinaryPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LACConcurrentEvaluationAllowListBinaryPath and conformance LACConcurrentEvaluationAllowListBinaryPath);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [LACConcurrentEvaluationAllowListBundleID] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LACConcurrentEvaluationAllowListBundleID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LACConcurrentEvaluationAllowListBundleID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id LACPreboardACMContextProviderFactory.makeProvider()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LACACMContextProvider();
  v3 = swift_allocObject();
  result = [objc_allocWithZone(LACACMHelper) init];
  if (result)
  {
    *(v3 + 16) = result;
    v5 = &protocol witness table for LACACMContextProvider;
  }

  else
  {
    result = swift_deallocPartialClassInstance();
    v3 = 0;
    v2 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v2;
  a1[4] = v5;
  return result;
}

uint64_t DeserializeVerifyAclConstraint(int a1, uint64_t a2, unsigned int a3, _OWORD *a4, void *a5, _DWORD *a6, void *a7, unsigned int *a8, BOOL *a9, _DWORD *a10, void *a11, _DWORD *a12)
{
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v12 = 4294967293;
  if (a2 && a4 && a5 && a6 && a9 && a10 && a11 && a12 && a3 >= 0x10)
  {
    v16 = a3;
    *a4 = *a2;
    v37 = 16;
    if ((a3 & 0xFFFFFFFC) == 0x10)
    {
      v12 = 4294967293;
    }

    else
    {
      v20 = *(a2 + 16);
      v37 = 20;
      v21 = acm_mem_alloc_data(v20);
      acm_mem_alloc_info("<data>", v21, v20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 534, "DeserializeVerifyAclConstraint");
      if (v21)
      {
        if (v16 - 20 < v20)
        {
          goto LABEL_24;
        }

        memcpy(v21, (a2 + 20), v20);
        v22 = v20 + 20;
        v37 = v20 + 20;
        v33 = a5;
        if (a1 != 32)
        {
          v26 = 0;
          v34 = 0;
          goto LABEL_19;
        }

        if (v16 - v22 < 4)
        {
LABEL_24:
          v26 = 0;
          v34 = 0;
        }

        else
        {
          v31 = a7;
          v23 = a8;
          v24 = *(a2 + v22);
          v25 = v20 + 24;
          v37 = v20 + 24;
          v26 = acm_mem_alloc_data(v24);
          acm_mem_alloc_info("<data>", v26, v24, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 546, "DeserializeVerifyAclConstraint");
          v34 = v24;
          if (!v26)
          {
            v12 = 4294967292;
LABEL_26:
            acm_mem_free_info("<data>", v21, v20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 582, "DeserializeVerifyAclConstraint");
            acm_mem_free_data(v21, v20);
            if (v26)
            {
              acm_mem_free_info("<data>", v26, v34, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 585, "DeserializeVerifyAclConstraint");
              acm_mem_free_data(v26, v34);
            }

            goto LABEL_30;
          }

          if (v16 - v25 >= v24)
          {
            memcpy(v26, (a2 + v25), v24);
            v22 = v25 + v24;
            v37 = v25 + v24;
            a8 = v23;
            a7 = v31;
LABEL_19:
            if (v22 != v16)
            {
              v27 = *(a2 + v22) != 0;
              v37 = v22 + 1;
              if (v16 - (v22 + 1) >= 4)
              {
                v32 = v20;
                v28 = v26;
                v29 = *(a2 + v22 + 1);
                v37 = v22 + 5;
                v12 = deserializeParameters(a2, v16, &v37, &v36, &v35);
                if (!v12)
                {
                  *v33 = v21;
                  *a7 = v28;
                  *a8 = v34;
                  *a6 = v32;
                  *a9 = v27;
                  *a10 = v29;
                  *a11 = v36;
                  *a12 = v35;
                  return v12;
                }

                v26 = v28;
                v20 = v32;
                goto LABEL_26;
              }
            }
          }
        }

        v12 = 4294967293;
        goto LABEL_26;
      }

      v12 = 4294967292;
    }
  }

LABEL_30:
  if (v36)
  {
    Util_SafeDeallocParameters(v36, v35);
  }

  return v12;
}

uint64_t DeserializeProcessAcl(uint64_t a1, unsigned int a2, _OWORD *a3, void *a4, _DWORD *a5, void *a6, unsigned int *a7, _DWORD *a8, void *a9, _DWORD *a10)
{
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v10 = 4294967293;
  if (a1)
  {
    if (a3)
    {
      v11 = a4;
      if (a4)
      {
        if (a5)
        {
          v13 = a6;
          if (a6)
          {
            v14 = a7;
            if (a7)
            {
              v15 = a8;
              if (a8)
              {
                if (a9 && a10 && a2 >= 0x10)
                {
                  v17 = a2;
                  *a3 = *a1;
                  v40 = 16;
                  if ((a2 & 0xFFFFFFFC) == 0x10)
                  {
                    v10 = 4294967293;
                  }

                  else
                  {
                    v18 = *(a1 + 16);
                    v40 = 20;
                    v19 = acm_mem_alloc_data(v18);
                    acm_mem_alloc_info("<data>", v19, v18, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 724, "DeserializeProcessAcl");
                    if (v19)
                    {
                      if (v17 - 20 < v18 || (memcpy(v19, (a1 + 20), v18), v40 = v18 + 20, v17 - (v18 + 20) < 4))
                      {
                        v32 = 0;
                        v37 = 0;
                        v10 = 4294967293;
                      }

                      else
                      {
                        v36 = a5;
                        v20 = *(a1 + v18 + 20);
                        v21 = v18 + 24;
                        v40 = v18 + 24;
                        v37 = v20;
                        if (!v20)
                        {
                          v35 = 0;
                          goto LABEL_20;
                        }

                        v33 = v11;
                        v22 = v13;
                        v23 = v14;
                        v24 = v15;
                        v25 = v20;
                        v26 = acm_mem_alloc_data(v20);
                        acm_mem_alloc_info("<data>", v26, v25, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 736, "DeserializeProcessAcl");
                        if (v26)
                        {
                          v27 = v26;
                          if (v17 - v21 >= v25)
                          {
                            v13 = v22;
                            v35 = v27;
                            memcpy(v27, (a1 + v21), v25);
                            v21 += v25;
                            v40 = v21;
                            v15 = v24;
                            v14 = v23;
                            v11 = v33;
LABEL_20:
                            if (v17 - v21 < 4)
                            {
                              v10 = 4294967293;
                            }

                            else
                            {
                              v34 = v18;
                              v28 = v19;
                              v29 = v15;
                              v30 = *(a1 + v21);
                              v40 = v21 + 4;
                              v10 = deserializeParameters(a1, v17, &v40, &v39, &v38);
                              if (!v10)
                              {
                                *v11 = v28;
                                *v36 = v34;
                                *v13 = v35;
                                *v14 = v37;
                                *v29 = v30;
                                *a9 = v39;
                                *a10 = v38;
                                return v10;
                              }

                              v19 = v28;
                              v18 = v34;
                            }

                            v32 = v35;
                            goto LABEL_32;
                          }

                          v10 = 4294967293;
                          v32 = v26;
                        }

                        else
                        {
                          v32 = 0;
                          v10 = 4294967292;
                        }
                      }

LABEL_32:
                      acm_mem_free_info("<data>", v19, v18, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 765, "DeserializeProcessAcl");
                      acm_mem_free_data(v19, v18);
                      if (v32)
                      {
                        acm_mem_free_info("<data>", v32, v37, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 768, "DeserializeProcessAcl");
                        acm_mem_free_data(v32, v37);
                      }

                      goto LABEL_34;
                    }

                    v10 = 4294967292;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_34:
  if (v39)
  {
    Util_SafeDeallocParameters(v39, v38);
  }

  return v10;
}

uint64_t getRequirementDataSizeForVersion(unsigned int a1, _DWORD *a2)
{
  if (!a2)
  {
    getRequirementDataSizeForVersion_cold_2();
  }

  if (a1 > 1)
  {
    return a2[3];
  }

  v2 = *a2 - 1;
  if (v2 >= 0x1C || ((0xFFE7FE7u >> v2) & 1) == 0)
  {
    getRequirementDataSizeForVersion_cold_1();
  }

  return qword_1B0343CD8[v2];
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{

  return getLengthOfParameters(a2, a3, &a11);
}

__n128 OUTLINED_FUNCTION_12_0(__n128 *a1, uint64_t a2, __n128 *a3, _DWORD *a4)
{
  result = *a1;
  *a3 = *a1;
  *a4 = a1[1].n128_u32[0];
  return result;
}

uint64_t deserializeParameters(uint64_t a1, unint64_t a2, unint64_t *a3, void *size, _DWORD *a5)
{
  p_opt_inst_meths = &OBJC_PROTOCOL___LACGlobalDomainDTO.opt_inst_meths;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "deserializeParameters");
  }

  v11 = 70;
  v12 = 4294967293;
  if (!a1 || !a3 || !size || !a5)
  {
    goto LABEL_24;
  }

  v13 = *a3;
  if (a2 <= *a3)
  {
    goto LABEL_22;
  }

  if (a2 - *a3 < 4 || (v14 = *(a1 + v13), v14 > 0xA))
  {
    v11 = 70;
    v12 = 4294967293;
    goto LABEL_24;
  }

  v13 += 4;
  if (!v14)
  {
LABEL_22:
    v20 = 0;
    v21 = 0;
LABEL_23:
    v12 = 0;
    *size = v21;
    *a5 = v20;
    v11 = 10;
    *a3 = v13;
    goto LABEL_24;
  }

  v15 = acm_mem_alloc_typed(24 * v14, 0x1080040388D5D28uLL);
  acm_mem_alloc_info("array of ACMParameter", v15, 24 * v14, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 196, "deserializeParameters");
  if (!v15)
  {
    v11 = 70;
    v12 = 4294967292;
    goto LABEL_24;
  }

  v25 = a5;
  v23 = v15;
  v24 = v14;
  v16 = v14;
  while (1)
  {
    *(v15 + 1) = 0;
    if (a2 - v13 < 8 || (*v15 = *(a1 + v13), a2 - (v13 + 4) < 4) || (v17 = *(a1 + v13 + 4), v15[4] = v17, v13 += 8, a2 - v13 < v17))
    {
      v11 = 70;
      v12 = 4294967293;
      goto LABEL_30;
    }

    v18 = checkParameter(v15);
    if (v18)
    {
      v12 = v18;
      v11 = 70;
      goto LABEL_30;
    }

    if (v17)
    {
      break;
    }

LABEL_20:
    v15 += 6;
    if (!--v16)
    {
      p_opt_inst_meths = (&OBJC_PROTOCOL___LACGlobalDomainDTO + 40);
      a5 = v25;
      v21 = v23;
      v20 = v24;
      goto LABEL_23;
    }
  }

  v19 = acm_mem_alloc_data(v17);
  acm_mem_alloc_info("<data>", v19, v17, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 214, "deserializeParameters");
  *(v15 + 1) = v19;
  if (v19)
  {
    memcpy(v19, (a1 + v13), v15[4]);
    v13 += v15[4];
    goto LABEL_20;
  }

  v11 = 70;
  v12 = 4294967292;
LABEL_30:
  p_opt_inst_meths = (&OBJC_PROTOCOL___LACGlobalDomainDTO + 40);
LABEL_24:
  if (v11 >= *(p_opt_inst_meths + 2088))
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "deserializeParameters", v12);
  }

  return v12;
}

uint64_t crypto_encryptedTextLength(int a1, uint64_t a2)
{
  v2 = a2 + 32;
  if (a1 != 1)
  {
    v2 = 0;
  }

  if (a1 == 2)
  {
    return a2 + 33;
  }

  else
  {
    return v2;
  }
}

unint64_t crypto_plainTextLength(int a1, unint64_t a2)
{
  v2 = a2 - 33;
  v3 = a2 - 32;
  if (a2 <= 0x20)
  {
    v2 = 0;
  }

  if (a2 <= 0x1F)
  {
    v3 = 0;
  }

  if (a1 != 1)
  {
    v3 = 0;
  }

  if (a1 == 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t checkCCError(int a1, const char *a2)
{
  if (a1)
  {
    if (gACMLoggingLevel <= 0x46u)
    {
      printf("%s: %s: CoreCrypto - %s() failed, ccErr: %d.\n", "ACM", "checkCCError", a2, a1);
    }

    return 4294967264;
  }

  else
  {
    if (gACMLoggingLevel <= 0x1Eu)
    {
      printf("%s: %s: CoreCrypto - %s() succeeded, ccErr: %d.\n", "ACM", "checkCCError", a2, 0);
    }

    return 0;
  }
}

uint64_t generateRandom(uint64_t a1, uint64_t a2)
{
  v2 = 70;
  v3 = 4294967293;
  if (!a1 || !a2)
  {
    goto LABEL_14;
  }

  v6 = platform_rng_state;
  if (platform_rng_state)
  {
    v3 = 0;
  }

  else
  {
    platform_rng_state = ccrng();
    v3 = checkCCError(-1, "ccrng");
    if (v3)
    {
      v6 = 0;
      v7 = 70;
      goto LABEL_8;
    }

    v6 = platform_rng_state;
  }

  v7 = 10;
LABEL_8:
  if (v7 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "platform_rng", v3);
  }

  v2 = 70;
  if (!v3)
  {
    v8 = (*v6)(v6, a2, a1);
    checkCCError(v8, "platform_rng");
    OUTLINED_FUNCTION_11();
    if (v9)
    {
      v2 = 10;
    }

    else
    {
      v2 = 70;
    }
  }

LABEL_14:
  if (v2 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "generateRandom", v3);
  }

  return v3;
}

void crypto_encryptText_version1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_0();
  v23 = *MEMORY[0x1E69E9840];
  ccaes_gcm_encrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_0();
  v6 = MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_0(v6, v7, v8, v9, v10, v11, v12, v13, v21);
  if (v4)
  {
    if (v2)
    {
      if (v1)
      {
        if (v3)
        {
          if (v0)
          {
            v14 = v1 + 32;
            if (v1 != -32)
            {
              if (v14 > *v0)
              {
                goto LABEL_13;
              }

              OUTLINED_FUNCTION_2_0();
              v15 = ccgcm_init();
              if (!checkCCError(v15, "ccgcm_init") && !generateRandom(v3, 16))
              {
                OUTLINED_FUNCTION_0_10();
                v16 = ccgcm_set_iv();
                if (!checkCCError(v16, "ccgcm_set_iv"))
                {
                  OUTLINED_FUNCTION_2_0();
                  v17 = ccgcm_update();
                  if (!checkCCError(v17, "ccgcm_update"))
                  {
                    OUTLINED_FUNCTION_0_10();
                    v18 = ccgcm_finalize();
                    if (!checkCCError(v18, "ccgcm_finalize"))
                    {
LABEL_13:
                      *v0 = v14;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_0();
  if (v19)
  {
    OUTLINED_FUNCTION_12_1();
    printf("%s: %s: returning, err = %ld.\n", v22, v23, v24);
  }

  v20 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_15();
}

void crypto_encryptText_version2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9_0();
  v27 = *MEMORY[0x1E69E9840];
  ccaes_gcm_encrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_0();
  v6 = MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_0(v6, v7, v8, v9, v10, v11, v12, v13, v25);
  if (v4)
  {
    if (v2)
    {
      if (v1)
      {
        if (v3)
        {
          if (v0)
          {
            v14 = v1 + 33;
            if (v1 != -33)
            {
              if (v14 > *v0)
              {
                goto LABEL_16;
              }

              OUTLINED_FUNCTION_2_0();
              v15 = ccgcm_init();
              if (!checkCCError(v15, "ccgcm_init"))
              {
                *v3 = 2;
                v16 = (v3 + 1);
                OUTLINED_FUNCTION_13_0();
                if (!v17 && !generateRandom(v16, 16))
                {
                  OUTLINED_FUNCTION_0_10();
                  v18 = ccgcm_set_iv();
                  if (!checkCCError(v18, "ccgcm_set_iv"))
                  {
                    v19 = v16 + 16;
                    OUTLINED_FUNCTION_13_0();
                    if (!v20)
                    {
                      OUTLINED_FUNCTION_2_0();
                      v21 = ccgcm_update();
                      if (!checkCCError(v21, "ccgcm_update") && !__CFADD__(v19, v1))
                      {
                        OUTLINED_FUNCTION_0_10();
                        v22 = ccgcm_finalize();
                        if (!checkCCError(v22, "ccgcm_finalize"))
                        {
LABEL_16:
                          *v0 = v14;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_0();
  if (v23)
  {
    OUTLINED_FUNCTION_12_1();
    printf("%s: %s: returning, err = %ld.\n", v26, v27, v28);
  }

  v24 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_15();
}

void crypto_decryptText_version1()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v28 = *MEMORY[0x1E69E9840];
  ccaes_gcm_decrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_0();
  v11 = MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_0(v11, v12, v13, v14, v15, v16, v17, v18, v26);
  if (v9)
  {
    if (v7)
    {
      if (v5)
      {
        if (v3)
        {
          if (v1)
          {
            v19 = v5 >= 0x20;
            v20 = v5 - 32;
            if (v19)
            {
              if (*v1 < v20)
              {
                goto LABEL_13;
              }

              OUTLINED_FUNCTION_2_0();
              v21 = ccgcm_init();
              if (!checkCCError(v21, "ccgcm_init"))
              {
                OUTLINED_FUNCTION_0_10();
                v22 = ccgcm_set_iv();
                if (!checkCCError(v22, "ccgcm_set_iv"))
                {
                  OUTLINED_FUNCTION_2_0();
                  v23 = ccgcm_update();
                  if (!checkCCError(v23, "ccgcm_update"))
                  {
                    OUTLINED_FUNCTION_0_10();
                    ccgcm_finalize();
                    v24 = cc_cmp_safe();
                    if (!checkCCError(v24, "cc_cmp_safe"))
                    {
LABEL_13:
                      *v1 = v20;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_0();
  if (v19)
  {
    OUTLINED_FUNCTION_12_1();
    printf("%s: %s: returning, err = %ld.\n", v27, 0, 0);
  }

  v25 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_15();
}

void crypto_decryptText_version2()
{
  OUTLINED_FUNCTION_14_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v30 = *MEMORY[0x1E69E9840];
  ccaes_gcm_decrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_0();
  v11 = MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_0(v11, v12, v13, v14, v15, v16, v17, v18, v28);
  if (v9)
  {
    if (v7)
    {
      if (v5)
      {
        if (v3)
        {
          if (v1)
          {
            if (v5 >= 0x22)
            {
              v19 = v5 - 33;
              if (*v1 < v19)
              {
                goto LABEL_16;
              }

              OUTLINED_FUNCTION_13_0();
              if (!v20 && *v7 == 2)
              {
                OUTLINED_FUNCTION_2_0();
                v21 = ccgcm_init();
                if (!checkCCError(v21, "ccgcm_init"))
                {
                  OUTLINED_FUNCTION_0_10();
                  v22 = ccgcm_set_iv();
                  if (!checkCCError(v22, "ccgcm_set_iv"))
                  {
                    OUTLINED_FUNCTION_13_0();
                    if (!v23)
                    {
                      OUTLINED_FUNCTION_2_0();
                      v24 = ccgcm_update();
                      if (!checkCCError(v24, "ccgcm_update") && !__CFADD__(v7 + 17, v19))
                      {
                        OUTLINED_FUNCTION_0_10();
                        ccgcm_finalize();
                        v25 = cc_cmp_safe();
                        if (!checkCCError(v25, "cc_cmp_safe"))
                        {
LABEL_16:
                          *v1 = v19;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_0();
  if (v26)
  {
    OUTLINED_FUNCTION_12_1();
    printf("%s: %s: returning, err = %ld.\n", v29, 0, 0);
  }

  v27 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_15();
}

uint64_t LibCall_ACMKernelControl_Block(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v20 = *MEMORY[0x1E69E9840];
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMKernelControl_Block");
  }

  bzero(v19, 0x2000uLL);
  v18 = 0x2000;
  v13 = LibCall_ACMKernelControl(v12, v11, v9, v7, v5, v19, &v18);
  if (v3)
  {
    if (v18)
    {
      v14 = v19;
    }

    else
    {
      v14 = 0;
    }

    (*(v3 + 16))(v3, v14);
  }

  if (v13)
  {
    v15 = 70;
  }

  else
  {
    v15 = 10;
  }

  if (v15 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernelControl_Block", v13);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t LibCall_ACMSEPControl_Block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25[128] = *MEMORY[0x1E69E9840];
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMSEPControl_Block");
  }

  bzero(v25, 0x400uLL);
  LibCall_ACMSEPControl(a1, a2, a3, a4, a5, a6, a7, v25, &v24, v22, v23, 1024, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8]);
  v17 = v16;
  if (a8)
  {
    if (v24)
    {
      v18 = v25;
    }

    else
    {
      v18 = 0;
    }

    (*(a8 + 16))(a8, v18);
  }

  if (v17)
  {
    v19 = 70;
  }

  else
  {
    v19 = 10;
  }

  if (v19 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMSEPControl_Block", v17);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t LibCall_ACMGlobalContextVerifyPolicy_Block(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMGlobalContextVerifyPolicy_Block");
  }

  v15 = 0;
  result = LibCall_ACMContextCreate(a1, a2, &v15, 0, 0, 1);
  if (result)
  {
    if (a7)
    {
      result = (*(a7 + 16))(a7, result, 0, 0);
    }
  }

  else
  {
    result = LibCall_ACMContextVerifyPolicyEx_Block(a1, a2, v15, a3, a4, a5, a6, 0xFFFFFFFFLL, a7);
  }

  if (v15)
  {
    result = LibCall_ACMContextDelete(a1, a2, v15, 1);
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "LibCall_ACMGlobalContextVerifyPolicy_Block");
  }

  return result;
}

uint64_t LibCall_ACMGetAclAuthMethod_Block(uint64_t result, uint64_t a2, __n128 *a3, uint64_t a4)
{
  v7 = result;
  v15 = *MEMORY[0x1E69E9840];
  if (gACMLoggingLevel <= 0xAu)
  {
    result = printf("%s: %s: called.\n", "ACM", "LibCall_ACMGetAclAuthMethod_Block");
  }

  memset(v14, 0, sizeof(v14));
  v12 = 256;
  if (v7 && a3 && a4)
  {
    v13 = 0uLL;
    v11 = 16;
    AclAuthMethod_Serialize = LibSer_GetAclAuthMethod_Serialize(a3, &v13, &v11);
    if (!v9 && v11 == 16)
    {
      v7(a2, 31, 0, &v13, 16, v14, &v12, AclAuthMethod_Serialize);
    }

    goto LABEL_9;
  }

  if (a4)
  {
LABEL_9:
    result = (*(a4 + 16))(a4);
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    result = printf("%s: %s: returning.\n", "ACM", "LibCall_ACMGetAclAuthMethod_Block");
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

rsize_t verifyAclConstraintForOperationCommandInternal(rsize_t result, int a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, char a9, uint64_t a10, int a11, unsigned int a12, uint64_t a13)
{
  v20 = result;
  if (gACMLoggingLevel <= 0xAu)
  {
    result = printf("%s: %s: called.\n", "ACM", "verifyAclConstraintForOperationCommandInternal");
  }

  v25 = 0;
  v24 = 0;
  if (a4 && a5 && a6 && a13)
  {
    v21 = verifyAclConstraintInternal(v20, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, &v24, &v25);
    v22 = v25;
    v23 = v24;
  }

  else
  {
    if (!a13)
    {
      goto LABEL_10;
    }

    v22 = 0;
    v23 = 0;
    v21 = 4294967293;
  }

  (*(a13 + 16))(a13, v21, v23, v22);
  result = v25;
  if (v25)
  {
    result = Util_DeallocRequirement(v25);
  }

LABEL_10:
  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "verifyAclConstraintForOperationCommandInternal");
  }

  return result;
}

uint64_t Util_GetBitCount(uint64_t a1)
{
  v1 = vcnt_s8(a1);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

BOOL Util_isNullOrZeroMemory(_BYTE *a1, uint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  if (*a1)
  {
    return 0;
  }

  return memcmp(a1, a1 + 1, a2 - 1) == 0;
}

BOOL Util_isNonNullEqualMemory(void *__s1, size_t __n, void *__s2, uint64_t a4)
{
  if (__n != a4)
  {
    return 0;
  }

  result = 0;
  if (__s1)
  {
    if (__s2)
    {
      return memcmp(__s1, __s2, __n) == 0;
    }
  }

  return result;
}

char *Util_hexDumpToStrHelper(char *result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!result && a2)
  {
    Util_hexDumpToStrHelper_cold_2();
  }

  if (!a3 && a4)
  {
    Util_hexDumpToStrHelper_cold_1();
  }

  if (a2 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a2;
  }

  if (v4)
  {
    v5 = (a3 + 1);
    do
    {
      *(v5 - 1) = a0123456789abcd[*result >> 4];
      v6 = *result++;
      *v5 = a0123456789abcd[v6 & 0xF];
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t Util_KeybagLockStateToEnvVar(unsigned int a1)
{
  v1 = 0x2010103020201uLL >> (8 * a1);
  if (a1 >= 7)
  {
    LOBYTE(v1) = 1;
  }

  return v1 & 3;
}

void Util_SafeDeallocParameters(unsigned int *a1, unsigned int a2)
{
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      v4 = a1 + 4;
      v5 = a2;
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          v7 = *v4;
          acm_mem_free_info("<data>", *(v4 - 1), v7, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 118, "Util_SafeDeallocParameters");
          acm_mem_free_data(v6, v7);
        }

        v4 += 6;
        --v5;
      }

      while (v5);
    }

    acm_mem_free_info("array of ACMParameter", a1, 24 * v3, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 121, "Util_SafeDeallocParameters");

    acm_mem_free(a1, 24 * v3);
  }
}

uint64_t ACMContextCreateWithFlags(uint64_t *a1, uint64_t a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextCreateWithFlags";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v9 = 0;
  v4 = LibCall_ACMContextCreate(ioKitTransport, &v9, a1, a2, &_logLevel, 1);
  if (v4)
  {
    updateLogLevelFromKext();
    v5 = 70;
  }

  else
  {
    v5 = 10;
    if (a1 && _logLevel <= 0x28u)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v6 = *a1;
        if (*a1)
        {
          LODWORD(v6) = *(v6 + 16);
        }

        *buf = 136315906;
        v11 = "ACMLib";
        v12 = 2080;
        v13 = "ACMContextCreateWithFlags";
        v14 = 1024;
        LODWORD(v15[0]) = v6;
        WORD2(v15[0]) = 1024;
        *(v15 + 6) = a2;
        _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: CS[%u] created (flags=0x%x).\n", buf, 0x22u);
      }

      v5 = 10;
    }
  }

  if (v5 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextCreateWithFlags";
    v14 = 2048;
    v15[0] = v4;
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t ACMContextCreateWithExternalForm(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextCreateWithExternalForm";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v9 = 0;
  v4 = LibCall_ACMContextCreateWithExternalForm(ioKitTransport, &v9, a1, a2, &_logLevel, 1);
  if (v4)
  {
    if (_logLevel <= 0x28u && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v5 = *(v4 + 16);
      *buf = 136315650;
      v11 = "ACMLib";
      v12 = 2080;
      v13 = "ACMContextCreateWithExternalForm";
      v14 = 1024;
      LODWORD(v15) = v5;
      _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: CS[%u] acquired.\n", buf, 0x1Cu);
    }

    v6 = 30;
  }

  else
  {
    updateLogLevelFromKext();
    v6 = 70;
  }

  if (v6 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextCreateWithExternalForm";
    v14 = 2048;
    v15 = v4;
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, -> ctx = %p.\n", buf, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t ACMContextDelete(_DWORD *a1, int a2)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = _logLevel;
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextDelete";
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
    v4 = _logLevel;
  }

  if (a1 && v4 <= 0x28 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v6 = "NO";
    *buf = 136315906;
    v13 = "ACMLib";
    v15 = "ACMContextDelete";
    v14 = 2080;
    if (a2)
    {
      v6 = "YES";
    }

    v16 = 1024;
    LODWORD(v17[0]) = v5;
    WORD2(v17[0]) = 2080;
    *(v17 + 6) = v6;
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: CS[%u] deleted (contextDestroyed=%s).\n", buf, 0x26u);
  }

  v11 = a1;
  v7 = LibCall_ACMContextDelete(ioKitTransport, &v11, a1, a2);
  if (v7)
  {
    v8 = 70;
  }

  else
  {
    v8 = 10;
  }

  if (v8 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextDelete";
    v16 = 2048;
    v17[0] = v7;
    _os_log_impl(&dword_1B0233000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}