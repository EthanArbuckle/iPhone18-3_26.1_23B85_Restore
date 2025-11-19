uint64_t partial apply for closure #1 in DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:)()
{
  OUTLINED_FUNCTION_44();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_92(v3);
  *v4 = v5;
  v4[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);
  v6 = OUTLINED_FUNCTION_7_54();

  return closure #1 in DelayedAnsweringMachine.init(isAnsweringMachineAvailable:makeAnsweringMachine:)(v6, v7, v1, v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DelayedAnsweringMachine.start()()
{
  v1 = *v0;
  OUTLINED_FUNCTION_20();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  v3[2] = *(v1 + 80);
  v3[3] = *(v1 + 88);
  v3[4] = v2;

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t closure #1 in DelayedAnsweringMachine.start()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static CallScreeningActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in DelayedAnsweringMachine.start(), v4, 0);
}

uint64_t closure #1 in DelayedAnsweringMachine.start()()
{
  OUTLINED_FUNCTION_4_0();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 24))
    {
      v3 = *(v0 + 48);
      v2 = *(v0 + 56);
      v4 = *(v2 + 8);
      swift_unknownObjectRetain();
      v4(v3, v2);
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t partial apply for closure #1 in DelayedAnsweringMachine.start()()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_92(v4);
  *v5 = v6;
  v5[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);

  return closure #1 in DelayedAnsweringMachine.start()(v3, v1, v2);
}

uint64_t DelayedAnsweringMachine.open(_:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[6] = *v0;
  v3 = type metadata accessor for URL();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v1[9] = *(v4 + 64);
  v1[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v6;
  v1[13] = v5;

  return MEMORY[0x1EEE6DFA0](DelayedAnsweringMachine.open(_:), v6, v5);
}

{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[4];
  OUTLINED_FUNCTION_20();
  v6 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v1, v5, v2);
  v7 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[14] = v8;
  *(v8 + 2) = *(v4 + 80);
  *(v8 + 3) = *(v4 + 88);
  *(v8 + 4) = v6;
  (*(v3 + 32))(&v8[v7], v1, v2);
  v12 = (*MEMORY[0x1E69D8980] + MEMORY[0x1E69D8980]);
  v9 = swift_task_alloc();
  v0[15] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  *v9 = v0;
  v9[1] = DelayedAnsweringMachine.open(_:);

  return v12(v0 + 2, &async function pointer to partial apply for closure #1 in DelayedAnsweringMachine.open(_:), v8, v10);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  v4 = *(v1 + 104);
  v5 = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](DelayedAnsweringMachine.open(_:), v5, v4);
}

{
  OUTLINED_FUNCTION_9();

  v1 = v0[2];
  v2 = v0[3];

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t closure #1 in DelayedAnsweringMachine.open(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a2;
  v3[25] = a3;
  v3[23] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static CallScreeningActor.shared;
  v3[26] = static CallScreeningActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in DelayedAnsweringMachine.open(_:), v4, 0);
}

uint64_t closure #1 in DelayedAnsweringMachine.open(_:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_4_0();
  Strong = swift_weakLoadStrong();
  v0[27] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 24);
    v0[28] = v2;
    if (v2)
    {
      swift_unknownObjectRetain();
      URL._bridgeToObjectiveC()(v3);
      v5 = v4;
      v0[29] = v4;
      v0[2] = v0;
      v0[7] = v0 + 21;
      v0[3] = closure #1 in DelayedAnsweringMachine.open(_:);
      v6 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySSSgs5NeverOGMd);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) (@unowned NSString?) -> () with result type String?;
      v0[13] = &block_descriptor_41_0;
      v0[14] = v6;
      [v2 openURL:v5 completion:v0 + 10];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }
  }

  v7 = v0[23];
  *v7 = 0;
  v7[1] = 0;
  OUTLINED_FUNCTION_13();

  return v8();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v1;

  return MEMORY[0x1EEE6DFA0](closure #1 in DelayedAnsweringMachine.open(_:), v2, 0);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 232);
  v2 = *(v0 + 184);

  swift_unknownObjectRelease();
  *v2 = *(v0 + 168);

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t partial apply for closure #1 in DelayedAnsweringMachine.open(_:)()
{
  OUTLINED_FUNCTION_44();
  type metadata accessor for URL();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v3 = OUTLINED_FUNCTION_7_54();

  return closure #1 in DelayedAnsweringMachine.open(_:)(v3, v4, v5);
}

uint64_t @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) (@unowned NSString?) -> () with result type String?(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return specialized _resumeUnsafeContinuation<A>(_:_:)(v3, v4, v6);
}

uint64_t @objc DelayedAnsweringMachine.open(_:)(uint64_t a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;

  return _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in DelayedAnsweringMachine.open(_:), v7);
}

uint64_t @objc closure #1 in DelayedAnsweringMachine.open(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for URL();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](@objc closure #1 in DelayedAnsweringMachine.open(_:), v6, v5);
}

uint64_t @objc closure #1 in DelayedAnsweringMachine.open(_:)()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[3];

  v0[9] = _Block_copy(v1);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = @objc closure #1 in DelayedAnsweringMachine.open(_:);

  return DelayedAnsweringMachine.open(_:)();
}

uint64_t @objc closure #1 in DelayedAnsweringMachine.open(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_23_0();
  v6 = v5;
  v7 = v5[7];
  v8 = v5[6];
  v9 = v5[5];
  v10 = *v2;
  OUTLINED_FUNCTION_4_6();
  *v11 = v10;

  (*(v8 + 8))(v7, v9);
  if (a2)
  {
    v12 = MEMORY[0x1BFB209B0](a1, a2);
  }

  else
  {
    v12 = 0;
  }

  v13 = v6[9];
  (v13)[2](v13, v12);

  _Block_release(v13);

  OUTLINED_FUNCTION_13();

  return v14();
}

uint64_t DelayedAnsweringMachine.screenCall(withUUID:manualScreening:)()
{
  OUTLINED_FUNCTION_44();
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = DelayedAnsweringMachine.screenCall(withUUID:manualScreening:);

  return DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;
  *(v4 + 40) = v3;

  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](DelayedAnsweringMachine.screenCall(withUUID:manualScreening:), v6, v5);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1(v2);
}

uint64_t DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)()
{
  OUTLINED_FUNCTION_24_0();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 90) = v3;
  *(v1 + 89) = v4;
  *(v1 + 16) = v5;
  *(v1 + 40) = *v0;
  type metadata accessor for MainActor();
  *(v1 + 48) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 56) = v7;
  *(v1 + 64) = v6;

  return MEMORY[0x1EEE6DFA0](DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:), v7, v6);
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 90);
  v3 = *(v0 + 89);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  OUTLINED_FUNCTION_20();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v0 + 72) = v7;
  *(v7 + 16) = *(v1 + 80);
  *(v7 + 24) = *(v1 + 88);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  *(v7 + 48) = v4;
  *(v7 + 56) = v3;
  *(v7 + 57) = v2;
  v11 = (*MEMORY[0x1E69D8980] + MEMORY[0x1E69D8980]);

  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:);
  v9 = MEMORY[0x1E69E6370];

  return v11(v0 + 88, &async function pointer to partial apply for closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:), v7, v9);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:), v5, v4);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t @objc DelayedAnsweringMachine.screenCall(withUUID:manualScreening:)(uint64_t a1, int a2, void *a3, char a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = v8;
  *(v9 + 40) = a1;
  v10 = a3;

  return _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:), v9);
}

uint64_t @objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 72) = a2;
  *(v4 + 16) = a1;
  type metadata accessor for MainActor();
  *(v4 + 40) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](@objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:), v6, v5);
}

uint64_t @objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:)()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[3];

  v0[6] = _Block_copy(v1);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0[7] = v2;

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = @objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:);
  OUTLINED_FUNCTION_8_54();

  return DelayedAnsweringMachine.screenCall(withUUID:manualScreening:)();
}

uint64_t closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 234) = a6;
  *(v6 + 233) = a5;
  *(v6 + 184) = a3;
  *(v6 + 192) = a4;
  *(v6 + 168) = a1;
  *(v6 + 176) = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static CallScreeningActor.shared;
  *(v6 + 200) = static CallScreeningActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:), v7, 0);
}

uint64_t closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)()
{
  OUTLINED_FUNCTION_4_0();
  Strong = swift_weakLoadStrong();
  *(v0 + 208) = Strong;
  if (Strong)
  {
    v2 = *(Strong + 24);
    *(v0 + 216) = v2;
    if (v2)
    {
      v3 = *(v0 + 234);
      v4 = *(v0 + 233);
      v6 = *(v0 + 184);
      v5 = *(v0 + 192);
      swift_unknownObjectRetain();
      v7 = MEMORY[0x1BFB209B0](v6, v5);
      *(v0 + 224) = v7;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 232;
      *(v0 + 24) = closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:);
      v8 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5NeverOGMd);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
      *(v0 + 104) = &block_descriptor_34;
      *(v0 + 112) = v8;
      [v2 screenCallWithUUID:v7 manualScreening:v4 receptionist:v3 completion:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }
  }

  **(v0 + 168) = 0;
  OUTLINED_FUNCTION_13();

  return v9();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v1;

  return MEMORY[0x1EEE6DFA0](closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:), v2, 0);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 224);
  v2 = *(v0 + 168);

  swift_unknownObjectRelease();
  *v2 = *(v0 + 232);

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t partial apply for closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 57);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_92(v5);
  *v6 = v7;
  v6[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v8 = OUTLINED_FUNCTION_7_54();

  return closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)(v8, v9, v1, v2, v3, v4);
}

uint64_t @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return specialized _resumeUnsafeContinuation<A>(_:_:)(v3, a2);
}

uint64_t @objc DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)(uint64_t a1, int a2, void *a3, char a4, char a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 25) = a5;
  *(v11 + 32) = v10;
  *(v11 + 40) = a1;
  v12 = a3;

  return _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:), v11);
}

uint64_t @objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 73) = a3;
  *(v5 + 72) = a2;
  *(v5 + 16) = a1;
  type metadata accessor for MainActor();
  *(v5 + 40) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](@objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:), v7, v6);
}

uint64_t @objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[3];

  v0[6] = _Block_copy(v1);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0[7] = v2;

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = @objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:);
  OUTLINED_FUNCTION_8_54();

  return DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)();
}

{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  OUTLINED_FUNCTION_23_0();
  v4 = *(v3 + 48);
  v5 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;

  v4[2](v4, v2 & 1);
  _Block_release(v4);
  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t DelayedAnsweringMachine.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t DelayedAnsweringMachine.__deallocating_deinit()
{
  DelayedAnsweringMachine.deinit();

  return swift_deallocClassInstance();
}

uint64_t partial apply for @objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)()
{
  OUTLINED_FUNCTION_44();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_92(v6);
  *v7 = v8;
  v7[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);

  return @objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:receptionist:)(v1, v2, v3, v5, v4);
}

uint64_t objectdestroy_25Tm_0()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:)()
{
  OUTLINED_FUNCTION_44();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_92(v5);
  *v6 = v7;
  v6[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);

  return @objc closure #1 in DelayedAnsweringMachine.screenCall(withUUID:manualScreening:)(v1, v2, v4, v3);
}

uint64_t partial apply for @objc closure #1 in DelayedAnsweringMachine.open(_:)()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  v3 = OUTLINED_FUNCTION_8_54();

  return v4(v3);
}

ConversationKit::InCallControlsBlockCell::BlockFlow_optional __swiftcall InCallControlsBlockCell.BlockFlow.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

ConversationKit::InCallControlsBlockCell::BlockFlow_optional protocol witness for RawRepresentable.init(rawValue:) in conformance InCallControlsBlockCell.BlockFlow@<W0>(Swift::Int *a1@<X0>, ConversationKit::InCallControlsBlockCell::BlockFlow_optional *a2@<X8>)
{
  result.value = InCallControlsBlockCell.BlockFlow.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance InCallControlsBlockCell.BlockFlow@<X0>(uint64_t *a1@<X8>)
{
  result = InCallControlsBlockCell.BlockFlow.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

void InCallControlsBlockCell.ViewModel.allHandlesBlocked.getter(uint64_t a1)
{
  v2 = specialized Array.count.getter(a1);
  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1BFB22010](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = TUHandle.isBlocked()();

    v3 = v4 + 1;
  }

  while (v7);
}

uint64_t InCallControlsBlockCell.ViewModel.cellTitle.getter(uint64_t a1, char a2)
{
  InCallControlsBlockCell.ViewModel.allHandlesBlocked.getter(a1);
  v4 = v3;
  v5 = [objc_opt_self() conversationKit];
  if (a2)
  {
    v6 = "K_ALL_PARTICIPANTS";
    if (v4)
    {
      v6 = "ACTION_TITLE_UNBLOCK_CALLER";
    }

    v7 = 0xD000000000000023;
    if (v4)
    {
      v7 = 0xD000000000000025;
    }

    v8 = "RECENTS_REPORT_ALERT_CANCEL";
    if (v4)
    {
      v8 = "v16@?0@NSString8";
    }

    v9 = 0xD000000000000029;
    if ((v4 & 1) == 0)
    {
      v9 = 0xD000000000000027;
    }

    if (a2 == 1)
    {
      v10 = v6;
    }

    else
    {
      v10 = v8;
    }

    if (a2 == 1)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }
  }

  else
  {
    v10 = "LOCK_UNKNOWN_PARTICIPANTS";
    if (v4)
    {
      v10 = "ACTION_TITLE_BLOCK_CALLER";
      v11 = 0xD00000000000001BLL;
    }

    else
    {
      v11 = 0xD000000000000019;
    }
  }

  v17._object = 0xE000000000000000;
  v12.value._countAndFlagsBits = 0x61737265766E6F43;
  v12.value._object = 0xEF74694B6E6F6974;
  v13 = v10 | 0x8000000000000000;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, v12, v5, v14, v17)._countAndFlagsBits;

  return countAndFlagsBits;
}

id InCallControlsBlockCell.ViewModel.cellTitleColor.getter(uint64_t a1)
{
  InCallControlsBlockCell.ViewModel.allHandlesBlocked.getter(a1);
  v2 = v1;
  v3 = objc_opt_self();
  v4 = &selRef_systemWhiteColor;
  if ((v2 & 1) == 0)
  {
    v4 = &selRef_systemRedColor;
  }

  v5 = [v3 *v4];

  return v5;
}

uint64_t static InCallControlsBlockCell.ViewModel.== infix(_:_:)(unint64_t a1, unsigned __int8 a2, unint64_t a3, unsigned __int8 a4)
{
  v5 = a2;
  _sSasSQRzlE2eeoiySbSayxG_ABtFZSo8TUHandleC_Tt1g5(a1, a3);
  return v6 & (v5 == a4);
}

uint64_t key path getter for InCallControlsBlockCell.viewModel : InCallControlsBlockCell@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell_viewModel;
  swift_beginAccess();
  v4 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v4;
}

uint64_t key path setter for InCallControlsBlockCell.viewModel : InCallControlsBlockCell(uint64_t a1)
{
  v1 = *(a1 + 8);

  return InCallControlsBlockCell.viewModel.setter(v2, v1);
}

uint64_t InCallControlsBlockCell.viewModel.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell_viewModel;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2;

  return InCallControlsBlockCell.viewModel.didset();
}

uint64_t InCallControlsBlockCell.viewModel.didset()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell_viewModel;
  result = swift_beginAccess();
  if (*v1)
  {
    v3 = *(v1 + 8);

    v4.flow = v3;
    InCallControlsBlockCell.updateCell(viewModel:)(v4);
  }

  return result;
}

Swift::Void __swiftcall InCallControlsBlockCell.updateCell(viewModel:)(ConversationKit::InCallControlsBlockCell::ViewModel viewModel)
{
  flow = viewModel.flow;
  rawValue = viewModel.unknownHandles._rawValue;
  v3 = type metadata accessor for UIListContentConfiguration();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  InCallControlsBlockCell.ViewModel.cellTitle.getter(rawValue, flow);
  InCallControlsBlockCell.cellContentConfiguration.getter(v5);
  UIListContentConfiguration.text.setter();
  InCallControlsBlockCell.cellContentConfiguration.setter(v5);
  InCallControlsBlockCell.ViewModel.allHandlesBlocked.getter(rawValue);
  v7 = v6;
  v8 = objc_opt_self();
  v9 = &selRef_systemWhiteColor;
  if ((v7 & 1) == 0)
  {
    v9 = &selRef_systemRedColor;
  }

  v10 = [v8 *v9];
  InCallControlsBlockCell.cellContentConfiguration.getter(v5);
  v11 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v11(v12, 0);
  InCallControlsBlockCell.cellContentConfiguration.setter(v5);
  InCallControlsBlockCell.configureContent()();
}

uint64_t (*InCallControlsBlockCell.viewModel.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return InCallControlsBlockCell.viewModel.modify;
}

uint64_t InCallControlsBlockCell.viewModel.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return InCallControlsBlockCell.viewModel.didset();
  }

  return result;
}

uint64_t InCallControlsBlockCell.cellContentConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell____lazy_storage___cellContentConfiguration;
  swift_beginAccess();
  outlined init with copy of Participant?(v1 + v9, v8, &_s5UIKit26UIListContentConfigurationVSgMd);
  v10 = type metadata accessor for UIListContentConfiguration();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s5UIKit26UIListContentConfigurationVSgMd);
  closure #1 in InCallControlsBlockCell.cellContentConfiguration.getter();
  (*(*(v10 - 8) + 16))(v5, a1, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  swift_beginAccess();
  outlined assign with take of Participant?(v5, v1 + v9, &_s5UIKit26UIListContentConfigurationVSgMd);
  return swift_endAccess();
}

uint64_t closure #1 in InCallControlsBlockCell.cellContentConfiguration.getter()
{
  MEMORY[0x1BFB21750]();
  v0 = [objc_opt_self() conversationKit];
  v15._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x61737265766E6F43;
  v1.value._object = 0xEF74694B6E6F6974;
  v2._object = 0x80000001BC500420;
  v2._countAndFlagsBits = 0xD000000000000019;
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

double InCallControlsBlockCell.verticalInset(_:scaledToFont:)(void *a1, double a2)
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

uint64_t InCallControlsBlockCell.cellContentConfiguration.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for UIListContentConfiguration();
  (*(*(v6 - 8) + 32))(v5, a1, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell____lazy_storage___cellContentConfiguration;
  swift_beginAccess();
  outlined assign with take of Participant?(v5, v1 + v7, &_s5UIKit26UIListContentConfigurationVSgMd);
  return swift_endAccess();
}

id InCallControlsBlockCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id InCallControlsBlockCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  ObjectType = swift_getObjectType();
  v2 = v0 + OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell_viewModel;
  *v2 = 0;
  *(v2 + 8) = 0;
  v3 = OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell____lazy_storage___cellContentConfiguration;
  v4 = type metadata accessor for UIListContentConfiguration();
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell____lazy_storage___blockImageAccessory;
  v6 = type metadata accessor for UICellAccessory();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell____lazy_storage___unblockImageAccessory, 1, 1, v6);
  v7 = OUTLINED_FUNCTION_18_1();
  v10 = objc_msgSendSuper2(v8, v9, v7, v0, ObjectType);
  InCallControlsBlockCell.configureContent()();

  return v10;
}

uint64_t InCallControlsBlockCell.configureContent()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18[-1] - v2;
  static UIBackgroundConfiguration.preferredInCallControlsBackground.getter();
  v4 = type metadata accessor for UIBackgroundConfiguration();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  MEMORY[0x1BFB216F0](v3);
  [v0 setAutomaticallyUpdatesBackgroundConfiguration_];
  v18[3] = type metadata accessor for UIListContentConfiguration();
  v18[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  InCallControlsBlockCell.cellContentConfiguration.getter(boxed_opaque_existential_1);
  MEMORY[0x1BFB216E0](v18);
  v6 = OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell_viewModel;
  swift_beginAccess();
  if (*&v0[v6] && (v7 = , InCallControlsBlockCell.ViewModel.allHandlesBlocked.getter(v7), v9 = v8, , (v9 & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd);
    v10 = *(type metadata accessor for UICellAccessory() - 8);
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BC4BA940;
    v13 = &OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell____lazy_storage___unblockImageAccessory;
    v14 = closure #1 in InCallControlsBlockCell.unblockImageAccessory.getter;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd);
    v15 = *(type metadata accessor for UICellAccessory() - 8);
    v11 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BC4BA940;
    v13 = &OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell____lazy_storage___blockImageAccessory;
    v14 = closure #1 in InCallControlsBlockCell.blockImageAccessory.getter;
  }

  InCallControlsBlockCell.unblockImageAccessory.getter(v13, v14, v12 + v11);
  return UICollectionViewListCell.accessories.setter();
}

id InCallControlsBlockCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsBlockCell.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell_viewModel;
  *v1 = 0;
  *(v1 + 8) = 0;
  v2 = OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell____lazy_storage___cellContentConfiguration;
  v3 = type metadata accessor for UIListContentConfiguration();
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell____lazy_storage___blockImageAccessory;
  v5 = type metadata accessor for UICellAccessory();
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtC15ConversationKit23InCallControlsBlockCell____lazy_storage___unblockImageAccessory, 1, 1, v5);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t InCallControlsBlockCell.unblockImageAccessory.getter@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17[-v11];
  v13 = *a1;
  swift_beginAccess();
  outlined init with copy of Participant?(v3 + v13, v12, &_s5UIKit15UICellAccessoryVSgMd);
  v14 = type metadata accessor for UICellAccessory();
  if (__swift_getEnumTagSinglePayload(v12, 1, v14) != 1)
  {
    return (*(*(v14 - 8) + 32))(a3, v12, v14);
  }

  v15 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s5UIKit15UICellAccessoryVSgMd);
  a2(v15);
  (*(*(v14 - 8) + 16))(v9, a3, v14);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v14);
  swift_beginAccess();
  outlined assign with take of Participant?(v9, v3 + v13, &_s5UIKit15UICellAccessoryVSgMd);
  return swift_endAccess();
}

uint64_t closure #1 in InCallControlsBlockCell.blockImageAccessory.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t closure #1 in InCallControlsBlockCell.unblockImageAccessory.getter@<X0>(uint64_t a1@<X8>)
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

  v14 = [objc_opt_self() systemWhiteColor];
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

id InCallControlsBlockCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type InCallControlsBlockCell.BlockFlow and conformance InCallControlsBlockCell.BlockFlow()
{
  result = lazy protocol witness table cache variable for type InCallControlsBlockCell.BlockFlow and conformance InCallControlsBlockCell.BlockFlow;
  if (!lazy protocol witness table cache variable for type InCallControlsBlockCell.BlockFlow and conformance InCallControlsBlockCell.BlockFlow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallControlsBlockCell.BlockFlow and conformance InCallControlsBlockCell.BlockFlow);
  }

  return result;
}

uint64_t type metadata accessor for InCallControlsBlockCell()
{
  result = type metadata singleton initialization cache for InCallControlsBlockCell;
  if (!type metadata singleton initialization cache for InCallControlsBlockCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for InCallControlsBlockCell()
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

void type metadata accessor for UIListContentConfiguration?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for InCallControlsBlockCell.BlockFlow(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InCallControlsBlockCell.ViewModel(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for InCallControlsBlockCell.ViewModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id ConversationControlsTrailingActionButtonProvider.init(controlsManager:context:)(void *a1, char a2)
{
  *(v2 + 160) = a1;
  v4 = ControlsButtonProvider.init(context:shape:)(a2, 2);
  v5 = objc_opt_self();
  v6 = *MEMORY[0x1E69DDD00];
  v7 = a1;

  result = [v5 _preferredFontForTextStyle_variant_];
  if (result)
  {
    ControlsButtonProvider.titleFont.setter(result);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ConversationControlsTrailingActionButtonProvider.buttonConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UIButton.Configuration.Size();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ControlsButtonProvider.defaultButtonConfiguration.getter(a1);
  UIButton.Configuration.contentInsets.setter();
  UIButton.Configuration.titleLineBreakMode.setter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69DC568], v3);
  UIButton.Configuration.buttonSize.setter();
  result = swift_beginAccess();
  if (*(v1 + 104))
  {
    v8 = [objc_opt_self() preferredFontForTextStyle_];
    v9 = [objc_opt_self() configurationWithFont:v8 scale:2];

    return UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  }

  return result;
}

uint64_t ConversationControlsTrailingActionButtonProvider.deinit()
{
  v0 = ControlsButtonProvider.deinit();

  return v0;
}

uint64_t ConversationControlsTrailingActionButtonProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t IntelligenceControlsViewContainerViewModel.canUpdate(with:)(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceControlsViewContainerViewModel.ControlsType();
  OUTLINED_FUNCTION_1();
  v32 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_40();
  v31 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSg_AFtMd) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSgMd);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  outlined init with copy of ConversationControlsType(a1, v33);
  IntelligenceControlsViewContainerViewModel.ControlsType.init(recipeType:)(v33, v20);
  IntelligenceControlsViewContainerViewModel.controlsType.getter();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v2);
  v24 = *(v6 + 56);
  outlined init with copy of Participant?(v20, v9, &_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSgMd);
  outlined init with copy of Participant?(v17, &v9[v24], &_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSgMd);
  OUTLINED_FUNCTION_57(v9);
  if (!v26)
  {
    outlined init with copy of Participant?(v9, v14, &_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSgMd);
    OUTLINED_FUNCTION_57(&v9[v24]);
    if (!v26)
    {
      v27 = v32;
      (*(v32 + 32))(v31, &v9[v24], v2);
      lazy protocol witness table accessor for type IntelligenceControlsViewContainerViewModel.ControlsType and conformance IntelligenceControlsViewContainerViewModel.ControlsType(&lazy protocol witness table cache variable for type IntelligenceControlsViewContainerViewModel.ControlsType and conformance IntelligenceControlsViewContainerViewModel.ControlsType, MEMORY[0x1E6995938]);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v27 + 8);
      v29 = OUTLINED_FUNCTION_309();
      v28(v29);
      outlined destroy of IDView<AvatarStackView, [UUID]>(v17, &_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSgMd);
      outlined destroy of IDView<AvatarStackView, [UUID]>(v20, &_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSgMd);
      (v28)(v14, v2);
      outlined destroy of IDView<AvatarStackView, [UUID]>(v9, &_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSgMd);
      return v25 & 1;
    }

    OUTLINED_FUNCTION_56_6(v17);
    OUTLINED_FUNCTION_56_6(v20);
    (*(v32 + 8))(v14, v2);
LABEL_9:
    outlined destroy of IDView<AvatarStackView, [UUID]>(v9, &_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSg_AFtMd);
    v25 = 0;
    return v25 & 1;
  }

  OUTLINED_FUNCTION_56_6(v17);
  OUTLINED_FUNCTION_56_6(v20);
  OUTLINED_FUNCTION_57(&v9[v24]);
  if (!v26)
  {
    goto LABEL_9;
  }

  outlined destroy of IDView<AvatarStackView, [UUID]>(v9, &_s16CommunicationsUI033IntelligenceControlsViewContainerE5ModelV0D4TypeOSgMd);
  v25 = 1;
  return v25 & 1;
}

uint64_t IntelligenceControlsViewContainerViewModel.ControlsType.init(recipeType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IntelligenceControlsViewContainerViewModel.ControlsType();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  if (*(a1 + 40) == 7)
  {
    v11 = vorrq_s8(*(a1 + 8), *(a1 + 24));
    v12 = vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
    if (*a1 == 21 && *&v12 == 0)
    {
      v16 = MEMORY[0x1E6995928];
    }

    else
    {
      if (*a1 != 22 || *&v12 != 0)
      {
        goto LABEL_10;
      }

      v16 = MEMORY[0x1E6995930];
    }

    (*(v6 + 104))(v10, *v16, v4);
    (*(v6 + 32))(a2, v10, v4);
    OUTLINED_FUNCTION_12();
    return __swift_storeEnumTagSinglePayload(v17, v18, v19, v4);
  }

LABEL_10:
  outlined destroy of ConversationControlsType(a1);

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
}

uint64_t outlined assign with take of ConversationControlsRecipe(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationControlsRecipe();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id IntelligenceStrings.controlsManager.getter()
{
  v1 = *(v0 + *(type metadata accessor for IntelligenceStrings(0) + 20));

  return v1;
}

void IntelligenceStrings.controlsManager.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for IntelligenceStrings(v2) + 20);

  *(v1 + v3) = v0;
}

double (*IntelligenceStrings.controlsManager.modify())(void)
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for IntelligenceStrings(v0);
  return TPNumberPadCharacter.rawValue.getter;
}

uint64_t IntelligenceStrings.callScreeningService.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntelligenceStrings(0) + 24);
  type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t IntelligenceStrings.callScreeningService.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for IntelligenceStrings(v2) + 24);
  type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

double (*IntelligenceStrings.callScreeningService.modify())(void)
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for IntelligenceStrings(v0);
  return TPNumberPadCharacter.rawValue.getter;
}

uint64_t IntelligenceStrings.transcriptViewModel.getter()
{
  type metadata accessor for IntelligenceStrings(0);
}

uint64_t IntelligenceStrings.title.getter()
{
  v1 = *(v0 + 80);

  return AttributedString.init(_:)();
}

uint64_t IntelligenceStrings.subtitle.getter()
{
  v1 = *(v0 + 88);
  if (v1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v1 & 0xC000000000000001) == 0, v1);
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB22010](0, v1);
    }

    else
    {
      v2 = *(v1 + 32);
    }

    AttributedString.init(_:)();
  }

  type metadata accessor for AttributedString();
  v3 = OUTLINED_FUNCTION_2_23();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t IntelligenceStrings.statusMessage.getter@<X0>(uint64_t a1@<X8>)
{
  v47[2] = a1;
  v2 = type metadata accessor for AttributeContainer();
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_40();
  v47[1] = v4;
  v5 = type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v47 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v47 - v16;
  v18 = *MEMORY[0x1E69E7D40] & **(v1 + *(type metadata accessor for IntelligenceStrings(0) + 20));
  (*(v18 + 672))();
  v20 = v19;
  ObjectType = swift_getObjectType();
  (*(v20 + 48))(v48, ObjectType, v20);
  swift_unknownObjectRelease();
  v47[0] = v1;
  CallScreeningService.screeningStatusForCall(_:)();
  __swift_destroy_boxed_opaque_existential_1(v48);
  v22 = v7[2];
  v22(v14, v17, v5);
  v23 = v7[11];
  v24 = OUTLINED_FUNCTION_45_11();
  if (v23(v24) == *MEMORY[0x1E6995EA8])
  {
    v25 = OUTLINED_FUNCTION_45_11();
    v26(v25);
    if (*(v14 + 1) || (TranscriptionViewModel.initialScreeningResponse.getter(), v37))
    {
      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      v38 = OUTLINED_FUNCTION_57_1();
      v39(v38);
    }

    else
    {
      v45 = OUTLINED_FUNCTION_57_1();
      v46(v45);
    }
  }

  else
  {
    v27 = v7[1];
    v28 = OUTLINED_FUNCTION_45_11();
    v27(v28);
    v22(v11, v17, v5);
    v29 = OUTLINED_FUNCTION_57_1();
    v23(v29);
    v30 = OUTLINED_FUNCTION_57_1();
    v27(v30);
    v31 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_14_2();
    v32.super.isa = v31;
    OUTLINED_FUNCTION_17_0(v33, v34, v35, v36, v32);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    (v27)(v17, v5);
  }

  type metadata accessor for AttributedString();
  v40 = OUTLINED_FUNCTION_2_23();
  return __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
}

uint64_t IntelligenceStrings.statusLeadingImage.getter()
{
  v1 = type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24[-1] - v9;
  v11 = type metadata accessor for IntelligenceStrings(0);
  (*((*MEMORY[0x1E69E7D40] & **(v0 + *(v11 + 20))) + 0x2A0))();
  v13 = v12;
  ObjectType = swift_getObjectType();
  (*(v13 + 48))(v24, ObjectType, v13);
  swift_unknownObjectRelease();
  CallScreeningService.screeningStatusForCall(_:)();
  __swift_destroy_boxed_opaque_existential_1(v24);
  (*(v3 + 16))(v7, v10, v1);
  v15 = OUTLINED_FUNCTION_309();
  if (v16(v15) != *MEMORY[0x1E6995EA8])
  {
    v20 = *(v3 + 8);
    v20(v10, v1);
    v21 = OUTLINED_FUNCTION_309();
    (v20)(v21);
    return 0;
  }

  v17 = OUTLINED_FUNCTION_309();
  v18(v17);
  if (!*(v7 + 8))
  {
    (*(v3 + 8))(v10, v1);
    return 0;
  }

  v19 = Image.init(_internalSystemName:)();
  (*(v3 + 8))(v10, v1);
  return v19;
}

uint64_t default argument 2 of IntelligenceStrings.init(recipe:controlsManager:callScreeningService:)()
{
  lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  type metadata accessor for Defaults();
  swift_allocObject();
  Defaults.init()();
  return CallScreeningService.init(overrides:)();
}

uint64_t IntelligenceStrings.init(recipe:controlsManager:callScreeningService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with take of ConversationControlsRecipe(a1, a4);
  v7 = type metadata accessor for IntelligenceStrings(0);
  *(a4 + v7[5]) = a2;
  v8 = v7[6];
  type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_7_0();
  (*(v9 + 32))(a4 + v8, a3);
  v10 = v7[7];
  if (one-time initialization token for viewModel != -1)
  {
    OUTLINED_FUNCTION_19_21();
  }

  *(a4 + v10) = static CallScreeningViewModelComposer.viewModel;
}

id IntelligenceControlsViewContainer.controlsManager.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_controlsManager;
  OUTLINED_FUNCTION_36_2();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void IntelligenceControlsViewContainer.controlsManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_controlsManager;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t IntelligenceControlsViewContainer.context.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_context;
  OUTLINED_FUNCTION_36_2();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t IntelligenceControlsViewContainer.context.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_context;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

double IntelligenceControlsViewContainer.cnkContentAlpha.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_cnkContentAlpha;
  OUTLINED_FUNCTION_36_2();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t IntelligenceControlsViewContainer.cnkContentAlpha.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_cnkContentAlpha;
  OUTLINED_FUNCTION_36_2();
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t IntelligenceControlsViewContainer.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_recipe;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return outlined init with copy of ConversationControlsRecipe(v1 + v3, a1);
}

uint64_t key path getter for IntelligenceControlsViewContainer.recipe : IntelligenceControlsViewContainer@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_recipe;
  swift_beginAccess();
  return outlined init with copy of ConversationControlsRecipe(v3 + v4, a2);
}

uint64_t key path setter for IntelligenceControlsViewContainer.recipe : IntelligenceControlsViewContainer(uint64_t a1)
{
  v2 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ConversationControlsRecipe(a1, v4);
  return IntelligenceControlsViewContainer.recipe.setter(v4);
}

uint64_t IntelligenceControlsViewContainer.recipe.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_recipe;
  swift_beginAccess();
  outlined assign with copy of ConversationControlsRecipe(a1, v1 + v3);
  swift_endAccess();
  IntelligenceControlsViewContainer.recipe.didset();
  OUTLINED_FUNCTION_4_66();
  return _s15ConversationKit0A14ControlsRecipeVWOhTm_1();
}

id IntelligenceControlsViewContainer.recipe.didset()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_viewModel];
  swift_beginAccess();
  if (*(v2 + 24))
  {
    outlined init with copy of IDSLookupManager(v2, v10);
    v3 = v11;
    v4 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    IntelligenceControlsViewContainer.stringProvider.getter(v9);
    (*(v4 + 8))(v9, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v9);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  v5 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_controlsView;
  swift_beginAccess();
  v6 = *&v1[v5];
  if (v6)
  {
    [v6 invalidateIntrinsicContentSize];
    v7 = *&v1[v5];
    if (v7)
    {
      [v7 setNeedsLayout];
    }
  }

  [v1 invalidateIntrinsicContentSize];
  return [v1 setNeedsLayout];
}

uint64_t IntelligenceControlsViewContainer.stringProvider.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_recipe;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v4 = type metadata accessor for IntelligenceStrings(0);
  a1[3] = v4;
  a1[4] = lazy protocol witness table accessor for type IntelligenceControlsViewContainerViewModel.ControlsType and conformance IntelligenceControlsViewContainerViewModel.ControlsType(&lazy protocol witness table cache variable for type IntelligenceStrings and conformance IntelligenceStrings, type metadata accessor for IntelligenceStrings);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  outlined init with copy of ConversationControlsRecipe(v1 + v3, boxed_opaque_existential_1);
  v6 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_controlsManager;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v7 = *(v1 + v6);
  lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  type metadata accessor for Defaults();
  swift_allocObject();
  v8 = v7;
  Defaults.init()();
  CallScreeningService.init(overrides:)();
  *(boxed_opaque_existential_1 + *(v4 + 20)) = v8;
  v9 = *(v4 + 28);
  if (one-time initialization token for viewModel != -1)
  {
    OUTLINED_FUNCTION_19_21();
  }

  *(boxed_opaque_existential_1 + v9) = static CallScreeningViewModelComposer.viewModel;
}

uint64_t IntelligenceControlsViewContainer.recipe.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

id IntelligenceControlsViewContainer.recipe.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return IntelligenceControlsViewContainer.recipe.didset();
  }

  return result;
}

void *IntelligenceControlsViewContainer.controlsView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_controlsView;
  OUTLINED_FUNCTION_36_2();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void IntelligenceControlsViewContainer.controlsView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_controlsView;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(uint64_t a1, void *a2, int a3, uint64_t a4, double a5)
{
  v234 = a1;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for BannerCallScreeningReceptionistIncomingComposer();
  v12 = OUTLINED_FUNCTION_0_100(v11, &v229);
  v211[8] = v13;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v14);
  v15 = type metadata accessor for IntelligenceBodyViewModel.Action();
  v16 = OUTLINED_FUNCTION_0_100(v15, &v225);
  v211[4] = v17;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_10(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v21);
  v22 = type metadata accessor for ApertureCallScreeningReceptionistIncomingComposer();
  v23 = OUTLINED_FUNCTION_0_100(v22, v223);
  v211[1] = v24;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v25);
  v26 = type metadata accessor for BannerCallScreeningReceptionistRingingComposer();
  v27 = OUTLINED_FUNCTION_0_100(v26, &v235);
  v211[15] = v28;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v29);
  v30 = type metadata accessor for ApertureCallScreeningReceptionistRingingComposer();
  v31 = OUTLINED_FUNCTION_0_100(v30, &v232);
  v211[12] = v32;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v33);
  v34 = type metadata accessor for ConversationControlsAction();
  v35 = OUTLINED_FUNCTION_22(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v36);
  v37 = type metadata accessor for IntelligenceControlsViewContainerViewModel.ControlsType();
  v38 = OUTLINED_FUNCTION_0_100(v37, v238);
  v214 = v39;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v40);
  v41 = type metadata accessor for IntelligenceControlsViewContainerViewModel();
  v42 = OUTLINED_FUNCTION_0_100(v41, v243);
  v217 = v43;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_19();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_16(v211 - v45);
  v46 = type metadata accessor for WaitOnHoldHoldingDetectedViewFactory();
  v47 = OUTLINED_FUNCTION_0_100(v46, v240);
  v215 = v48;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_10(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI29WaitOnHoldHoldingDetectedViewVyAA27ApertureButtonRepresentableVAEGMd);
  OUTLINED_FUNCTION_0_100(v50, v242);
  v216 = v51;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI23AperturePlacementUIViewC13LayoutOptionsVSgMd);
  OUTLINED_FUNCTION_22(v54);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v56);
  v57 = type metadata accessor for IntelligenceBottomApertureView();
  v58 = OUTLINED_FUNCTION_0_100(v57, v245);
  v222 = v59;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_10(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI21IntelligenceLabelViewVy05SwiftB019_ConditionalContentVyAD05EmptyE0VAA016WaitOnHoldAvatarE0VyAA0jkl16LeadingAccessoryE0VGGGMd);
  OUTLINED_FUNCTION_0_100(v61, v244);
  v220 = v62;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI22WaitOnHoldControlsViewVyAA0cde16LeadingAccessoryG0VGMd);
  OUTLINED_FUNCTION_0_100(v65, v246);
  v224 = v66;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v67);
  v69 = v211 - v68;
  v70 = type metadata accessor for AttributeContainer();
  v71 = OUTLINED_FUNCTION_22(v70);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_8();
  v74 = v73 - v72;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  v76 = OUTLINED_FUNCTION_22(v75);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_16(v211 - v78);
  v226 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_10(v80);
  *&v5[OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_controlsView] = 0;
  v81 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_features;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_11_2();
    swift_once();
  }

  v82 = static Features.shared;
  *&v5[v81] = static Features.shared;
  *&v5[OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_callHoldingTranscriptViewModelComposer] = 0;
  v83 = &v5[OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_viewModel];
  *v83 = 0u;
  *(v83 + 1) = 0u;
  *(v83 + 4) = 0;
  *&v5[OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_controlsManager] = a2;
  v213 = a3;
  v5[OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_context] = a3;
  *&v5[OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_cnkContentAlpha] = a5;
  outlined init with copy of ConversationControlsRecipe(a4, &v5[OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_recipe]);
  v249.receiver = v5;
  v249.super_class = ObjectType;
  v84 = v82;
  v233 = a2;
  v85 = objc_msgSendSuper2(&v249, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v86 = swift_allocObject();
  *(v86 + 16) = 0u;
  *(v86 + 32) = 0u;
  *(v86 + 48) = 0;
  *v247 = 28;
  memset(&v247[8], 0, 32);
  v87 = OUTLINED_FUNCTION_37_19();
  outlined destroy of ConversationControlsType(v247);
  v231 = v87;
  v236 = a4;
  v235 = v85;
  v232 = v86;
  if (v87)
  {
    getter of stringProvider #1 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(v86, v247);
    __swift_project_boxed_opaque_existential_1(v247, *&v247[24]);
    dispatch thunk of IntelligenceControlsViewContainerStringProvider.title.getter();
    getter of stringProvider #1 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(v86, &v239);
    __swift_project_boxed_opaque_existential_1(&v239, v241);
    OUTLINED_FUNCTION_47_10();
    dispatch thunk of IntelligenceControlsViewContainerStringProvider.subtitle.getter();
    v88 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_14_2();
    v91.super.isa = v88;
    OUTLINED_FUNCTION_17_0(v90 | v89, 0x80000001BC500610, v92, v93, v91);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v94, v95, v96, v226);
    type metadata accessor for WaitOnHoldViewModel();
    OUTLINED_FUNCTION_20_25();
    OUTLINED_FUNCTION_45_11();
    WaitOnHoldViewModel.init(title:subtitle:statusMessage:service:)();
    __swift_destroy_boxed_opaque_existential_1(&v239);
    __swift_destroy_boxed_opaque_existential_1(v247);

    v97 = SBUIIsSystemApertureEnabled();
    MEMORY[0x1EEE9AC00](v97);
    type metadata accessor for WaitOnHoldLeadingAccessoryView();
    OUTLINED_FUNCTION_13_40();
    lazy protocol witness table accessor for type IntelligenceControlsViewContainerViewModel.ControlsType and conformance IntelligenceControlsViewContainerViewModel.ControlsType(v98, v99);
    WaitOnHoldControlsView.init(viewModel:apertureEnabled:leadingView:)();
    lazy protocol witness table accessor for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>(&lazy protocol witness table cache variable for type WaitOnHoldControlsView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldControlsView<A>, &_s16CommunicationsUI22WaitOnHoldControlsViewVyAA0cde16LeadingAccessoryG0VGMd);
    v100 = v225;
    v101 = View.inLockScreenHostingController()();
    v102 = [v101 view];

    OUTLINED_FUNCTION_23_26();
    v103(v69, v100);
    v104 = v233;
    if (v102)
    {
      v105 = v102;
      OUTLINED_FUNCTION_32_12();
      goto LABEL_12;
    }

LABEL_25:

    OUTLINED_FUNCTION_26_21();

    OUTLINED_FUNCTION_32_12();
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_8_55(29);
  v248 = 7;
  static ConversationControlsType.== infix(_:_:)(a4, v247);
  OUTLINED_FUNCTION_58_5();
  if ((v74 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_55(30);
    OUTLINED_FUNCTION_37_19();
    OUTLINED_FUNCTION_58_5();
    OUTLINED_FUNCTION_8_55(21);
    OUTLINED_FUNCTION_37_19();
    OUTLINED_FUNCTION_58_5();
    if (v74)
    {
      OUTLINED_FUNCTION_52_9();
      v179(*(v178 - 256));
      OUTLINED_FUNCTION_30_13();
      v180 = v219;
      IntelligenceControlsViewContainerViewModel.init(controlsType:stringProvider:)();
      v181 = v218;
      *&v247[24] = v218;
      *&v247[32] = &protocol witness table for IntelligenceControlsViewContainerViewModel;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v247);
      v183 = v217;
      (*(v217 + 16))(boxed_opaque_existential_1, v180, v181);
      v184 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_viewModel;
      OUTLINED_FUNCTION_55_8();
      outlined assign with take of Participant?(v247, &v69[v184], &_s15ConversationKit21IntelligenceViewModel_pSgMd);
      swift_endAccess();
      v185 = v212;
      v104 = v233;
      static ConversationControlsAction.rejectCall(controlsManager:)(v233, v212);
      OUTLINED_FUNCTION_22_25();
      ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
      v187 = v186;
      outlined destroy of IDView<AvatarStackView, [UUID]>(v247, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd);
      OUTLINED_FUNCTION_17_36();
      objc_opt_self();
      OUTLINED_FUNCTION_170();
      v188 = swift_dynamicCastObjCClass();
      if (!v188)
      {

        v188 = closure #21 in implicit closure #1 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)("Failed to get button from conversation action reject");
      }

      static ConversationControlsAction.acceptCall(controlsManager:)(v104, v185);
      OUTLINED_FUNCTION_22_25();
      ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
      v190 = v189;
      outlined destroy of IDView<AvatarStackView, [UUID]>(v247, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd);
      OUTLINED_FUNCTION_17_36();
      objc_opt_self();
      OUTLINED_FUNCTION_170();
      v191 = swift_dynamicCastObjCClass();
      if (!v191)
      {

        v191 = closure #21 in implicit closure #1 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)("Failed to get button from conversation action accept");
      }

      v192 = SBUIIsSystemApertureEnabled();
      IntelligenceControlsViewContainerViewModel.bottom.getter();
      IntelligenceControlsViewContainerViewModel.participant.getter();
      if (v192)
      {
        v193 = v211[11];
        ApertureCallScreeningReceptionistRingingComposer.init(bottomStatusViewModel:participantViewModel:)();
        v194 = OUTLINED_FUNCTION_31_18();
        ApertureCallScreeningReceptionistRingingComposer.compose(hostingVC:leadingButton:trailingButton:)(v197, v194, v195, v196);
        v199 = v198;

        OUTLINED_FUNCTION_23_26();
        v201 = v193;
        v202 = &v232;
      }

      else
      {
        v205 = v211[14];
        BannerCallScreeningReceptionistRingingComposer.init(bottomStatusViewModel:participantViewModel:)();
        v206 = OUTLINED_FUNCTION_31_18();
        BannerCallScreeningReceptionistRingingComposer.compose(hostingVC:leadingButton:trailingButton:)(v209, v206, v207, v208);
        v199 = v210;

        OUTLINED_FUNCTION_23_26();
        v201 = v205;
        v202 = &v235;
      }

      v200(v201, *(v202 - 32));
      (*(v183 + 8))(v219, v181);
      v105 = v199;
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_8_55(22);
    v248 = 7;
    static ConversationControlsType.== infix(_:_:)(a4, v247);
    OUTLINED_FUNCTION_58_5();
    v104 = v233;
    goto LABEL_25;
  }

  v106 = v235;
  closure #2 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(v86, v235, a4, v229);
  v107 = v233;
  closure #3 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(v233, v106);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIButton);
  v108 = static UIButton.waitOnHoldEndCall()();
  v109 = static UIButton.waitOnHoldPickUp()();
  v110 = objc_opt_self();
  v111 = v108;
  v112 = [v110 conversationKit];
  v113.super.isa = v112;
  v114 = OUTLINED_FUNCTION_17_0(6581829, 0xE300000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974, v113);
  v116 = v115;

  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v114, v116, v111);
  v117 = v109;
  v118 = [v110 conversationKit];
  v119.super.isa = v118;
  v120 = OUTLINED_FUNCTION_17_0(0x4B4349505F484F57, 0xEB0000000050555FLL, 0x61737265766E6F43, 0xEF74694B6E6F6974, v119);
  v122 = v121;

  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v120, v122, v117);
  v228 = v111;
  [v111 addTarget:v107 action:sel_waitOnHoldEndCallButtonTappedWithButton_ forControlEvents:64];
  [v117 addTarget:v107 action:sel_waitOnHoldPickUpButtonTappedWithButton_ forControlEvents:64];
  if (SBUIIsSystemApertureEnabled())
  {
    v227 = type metadata accessor for AperturePlacementUIView();
    *v247 = xmmword_1BC4CA510;
    *&v247[16] = xmmword_1BC4CA520;
    v247[32] = 0;
    swift_getKeyPath();
    OUTLINED_FUNCTION_26_21();
    v226 = v123;
    AperturePlacementUIView.LayoutOptions.init(pushLeadingTrailingOutwards:layoutTopEdgeToAperture:insets:)();
    type metadata accessor for AperturePlacementUIView.LayoutOptions();
    OUTLINED_FUNCTION_12();
    v128 = __swift_storeEnumTagSinglePayload(v124, v125, v126, v127);
    v219 = v211;
    MEMORY[0x1EEE9AC00](v128);
    OUTLINED_FUNCTION_33_20();
    OUTLINED_FUNCTION_27_19();
    v129 = v236;
    *(v130 - 16) = v235;
    *(v130 - 8) = v129;
    MEMORY[0x1EEE9AC00](v131);
    OUTLINED_FUNCTION_33_20();
    OUTLINED_FUNCTION_27_19();
    OUTLINED_FUNCTION_51_8(v132);
    MEMORY[0x1EEE9AC00](v133);
    OUTLINED_FUNCTION_33_20();
    OUTLINED_FUNCTION_27_19();
    OUTLINED_FUNCTION_41_12(v134);
    MEMORY[0x1EEE9AC00](v135);
    OUTLINED_FUNCTION_41_12(v211);
    v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB020WaitOnHoldAvatarViewVyAD0fgh16LeadingAccessoryJ0VGAA14_PaddingLayoutVGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI25TrailingActionButtonsViewVyAA27ApertureButtonRepresentableVAEGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB021IntelligenceLabelViewVyAA012_ConditionalD0VyAA05EmptyH0VAD016WaitOnHoldAvatarH0VyAD0klm16LeadingAccessoryH0VGGGAA13_OffsetEffectVGMd);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGANGMd);
    lazy protocol witness table accessor for type ModifiedContent<WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    OUTLINED_FUNCTION_15_28(&lazy protocol witness table cache variable for type TrailingActionButtonsView<ApertureButtonRepresentable, ApertureButtonRepresentable> and conformance TrailingActionButtonsView<A, B>);
    lazy protocol witness table accessor for type ModifiedContent<IntelligenceLabelView<_ConditionalContent<EmptyView, WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    OUTLINED_FUNCTION_14_30();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntelligenceBottomApertureView, _BackgroundStyleModifier<Color>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(v136, &_s7SwiftUI15ModifiedContentVyACyACy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGANGMd, &_s7SwiftUI15ModifiedContentVyACyACy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGANGMR, v137);
    v138 = AperturePlacementUIView.__allocating_init<A, B, C, D>(hostingVC:layout:leading:trailing:center:bottom:)();
    v139 = v221;
  }

  else
  {
    v227 = type metadata accessor for InternalBannerPlacementUIView();
    MEMORY[0x1EEE9AC00](v227);
    OUTLINED_FUNCTION_33_20();
    OUTLINED_FUNCTION_27_19();
    OUTLINED_FUNCTION_51_8(v140);
    MEMORY[0x1EEE9AC00](v141);
    OUTLINED_FUNCTION_33_20();
    OUTLINED_FUNCTION_27_19();
    OUTLINED_FUNCTION_41_12(v142);
    MEMORY[0x1EEE9AC00](v143);
    OUTLINED_FUNCTION_41_12(v211);
    OUTLINED_FUNCTION_26_21();
    v224 = v144;
    v223[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA9EmptyViewVAA12_FrameLayoutVGMd);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI25TrailingActionButtonsViewVyAA27ApertureButtonRepresentableVAEGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGANGMd);
    lazy protocol witness table accessor for type ModifiedContent<EmptyView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    OUTLINED_FUNCTION_15_28(&lazy protocol witness table cache variable for type TrailingActionButtonsView<ApertureButtonRepresentable, ApertureButtonRepresentable> and conformance TrailingActionButtonsView<A, B>);
    lazy protocol witness table accessor for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>(&lazy protocol witness table cache variable for type IntelligenceLabelView<_ConditionalContent<EmptyView, WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>>> and conformance IntelligenceLabelView<A>, &_s16CommunicationsUI21IntelligenceLabelViewVy05SwiftB019_ConditionalContentVyAD05EmptyE0VAA016WaitOnHoldAvatarE0VyAA0jkl16LeadingAccessoryE0VGGGMd);
    OUTLINED_FUNCTION_14_30();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntelligenceBottomApertureView, _BackgroundStyleModifier<Color>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(v145, &_s7SwiftUI15ModifiedContentVyACyACy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGANGMd, &_s7SwiftUI15ModifiedContentVyACyACy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGANGMR, v146);
    v139 = v221;
    v138 = InternalBannerPlacementUIView.__allocating_init<A, B, C, D>(hostingVC:leading:trailing:center:bottom:)();
  }

  v147 = *(v222 + 8);
  v105 = v138;
  v147(v230, v223[0]);
  OUTLINED_FUNCTION_23_26();
  v148(v229, v139);
  OUTLINED_FUNCTION_32_12();
  v104 = v233;
LABEL_12:
  [v69 addSubview_];
  [v105 setTranslatesAutoresizingMaskIntoConstraints_];
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v150 = swift_allocObject();
  v230 = xmmword_1BC4BA930;
  *(v150 + 16) = xmmword_1BC4BA930;
  v151 = [v105 leadingAnchor];
  v152 = [v69 leadingAnchor];
  v153 = [v151 constraintEqualToAnchor_];

  *(v150 + 32) = v153;
  v154 = [v105 trailingAnchor];
  v155 = [v69 trailingAnchor];
  v156 = [v154 constraintEqualToAnchor_];

  *(v150 + 40) = v156;
  v237 = v150;
  if ((v231 & 1) != 0 && SBUIIsSystemApertureEnabled())
  {
    swift_initStackObject();
    OUTLINED_FUNCTION_49_11();
    *(v158 + 16) = *(v157 - 256);
    v159 = [v105 topAnchor];
    v160 = [v69 SBUISA_systemApertureCustomControlsContentLayoutGuide];
    v161 = [v160 topAnchor];

    v162 = [v159 constraintEqualToAnchor_];
    *(v149 + 32) = v162;
    v163 = [v105 bottomAnchor];
    v164 = [v69 SBUISA_systemApertureCustomControlsContentLayoutGuide];
    v165 = [v164 bottomAnchor];
  }

  else
  {
    swift_initStackObject();
    OUTLINED_FUNCTION_49_11();
    *(v167 + 16) = *(v166 - 256);
    v168 = [v105 topAnchor];
    v169 = [v69 topAnchor];
    v170 = [v168 constraintEqualToAnchor_];

    *(v149 + 32) = v170;
    v163 = [v105 bottomAnchor];
    v165 = [v69 bottomAnchor];
  }

  v171 = [v163 constraintEqualToAnchor_];

  *(v149 + 40) = v171;
  specialized Array.append<A>(contentsOf:)(v149);
  v172 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v172 activateConstraints_];

  v174 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_controlsView;
  swift_beginAccess();
  v175 = *&v69[v174];
  *&v69[v174] = v105;
  v176 = v105;

  [v69 setNeedsLayout];

  OUTLINED_FUNCTION_26_21();

LABEL_26:
  OUTLINED_FUNCTION_4_66();
  _s15ConversationKit0A14ControlsRecipeVWOhTm_1();
  return v69;
}

uint64_t getter of stringProvider #1 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of Participant?(a1 + 16, &v5, &_s16CommunicationsUI47IntelligenceControlsViewContainerStringProvider_pSgMd);
  if (v6)
  {
    return outlined init with take of TapInteractionHandler(&v5, a2);
  }

  outlined destroy of IDView<AvatarStackView, [UUID]>(&v5, &_s16CommunicationsUI47IntelligenceControlsViewContainerStringProvider_pSgMd);
  IntelligenceControlsViewContainer.stringProvider.getter(a2);
  outlined init with copy of IDSLookupManager(a2, &v5);
  swift_beginAccess();
  return outlined assign with take of Participant?(&v5, a1 + 16, &_s16CommunicationsUI47IntelligenceControlsViewContainerStringProvider_pSgMd);
}

id IntelligenceControlsViewContainer.leadingView(recipe:)(uint64_t a1)
{
  swift_getObjectType();
  v2 = a1 + *(type metadata accessor for ConversationControlsRecipe() + 68);
  v3 = *(v2 + 16);
  if (v3 == 255)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, &static Logger.conversationControls);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136446210;
      v14 = _typeName(_:qualified:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v17);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1BBC58000, v10, v11, "[%{public}s] omitting leading view", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1BFB23DF0](v13, -1, -1);
      MEMORY[0x1BFB23DF0](v12, -1, -1);
    }

    v5 = objc_allocWithZone(MEMORY[0x1E69DD250]);
    v6 = sel_init;

    return [v5 v6];
  }

  v4 = *v2;
  if (v3)
  {
    v5 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
    v6 = sel_initWithImage_;
    v7 = v4;

    return [v5 v6];
  }

  outlined copy of PreCallControlsContext(*v2);
  return v4;
}

uint64_t closure #2 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v25 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore18ActivityLabelStyleOSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v23 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore14ActivitySymbolVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  v18 = type metadata accessor for AttributedString();
  MEMORY[0x1EEE9AC00](v18 - 8);
  getter of stringProvider #1 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(a1, v29);
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  dispatch thunk of IntelligenceControlsViewContainerStringProvider.title.getter();
  v19 = type metadata accessor for ActivitySymbol();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v19);
  getter of stringProvider #1 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(a1, v28);
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  dispatch thunk of IntelligenceControlsViewContainerStringProvider.subtitle.getter();
  v20 = type metadata accessor for ActivityLabelStyle();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v20);
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v20);
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v19);
  type metadata accessor for ParticipantLabelViewModel();
  swift_allocObject();
  ParticipantLabelViewModel.init(title:titleSymbol:subtitle:titleStyle:subtitleStyle:subtitleSymbol:)();
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v29);
  v26 = a2;
  v27 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewV014CommunicationsB0016WaitOnHoldAvatarF0VyAF0hij16LeadingAccessoryF0VGGMd);
  lazy protocol witness table accessor for type _ConditionalContent<EmptyView, WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>> and conformance <> _ConditionalContent<A, B>();
  return IntelligenceLabelView.init(viewModel:leadingView:)();
}

uint64_t closure #1 in closure #2 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI20WaitOnHoldAvatarViewVyAA0cde16LeadingAccessoryG0VGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9EmptyViewV014CommunicationsB0016WaitOnHoldAvatarG0VyAH0ijk16LeadingAccessoryG0VG_GMd);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  v11 = SBUIIsSystemApertureEnabled();
  if (v11)
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>(&lazy protocol witness table cache variable for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>, &_s16CommunicationsUI20WaitOnHoldAvatarViewVyAA0cde16LeadingAccessoryG0VGMd);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v11);
    *(&v13 - 2) = a1;
    *(&v13 - 1) = a2;
    type metadata accessor for WaitOnHoldLeadingAccessoryView();
    lazy protocol witness table accessor for type IntelligenceControlsViewContainerViewModel.ControlsType and conformance IntelligenceControlsViewContainerViewModel.ControlsType(&lazy protocol witness table cache variable for type WaitOnHoldLeadingAccessoryView and conformance WaitOnHoldLeadingAccessoryView, MEMORY[0x1E6995C58]);
    WaitOnHoldAvatarView.init(leadingView:)();
    (*(v5 + 16))(v10, v7, v4);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>(&lazy protocol witness table cache variable for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>, &_s16CommunicationsUI20WaitOnHoldAvatarViewVyAA0cde16LeadingAccessoryG0VGMd);
    _ConditionalContent<>.init(storage:)();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t closure #3 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(void *a1, uint64_t a2)
{
  type metadata accessor for CallHoldingTranscriptViewModelComposer();
  swift_allocObject();
  v4 = CallHoldingTranscriptViewModelComposer.init()();
  v5 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0))();
  CallHoldingTranscriptViewModelComposer.composeViewModel(for:)(v5, v6);
  swift_unknownObjectRelease();
  *(a2 + OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_callHoldingTranscriptViewModelComposer) = v4;

  IntelligenceBottomApertureView.init(viewModel:)();
}

double closure #6 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI21IntelligenceLabelViewVy05SwiftB019_ConditionalContentVyAD05EmptyE0VAA016WaitOnHoldAvatarE0VyAA0jkl16LeadingAccessoryE0VGGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB021IntelligenceLabelViewVyAA012_ConditionalD0VyAA05EmptyH0VAD016WaitOnHoldAvatarH0VyAD0klm16LeadingAccessoryH0VGGGAA13_OffsetEffectVGMd);
  result = 0.0;
  *(a2 + *(v5 + 36)) = xmmword_1BC4C92B0;
  return result;
}

double closure #8 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)@<D0>(uint64_t a1@<X8>)
{
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  result = *&v7;
  *(a1 + 32) = v7;
  return result;
}

uint64_t closure #5 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)()
{
  v0 = type metadata accessor for TrailingActionButtonsViewFactory();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  TrailingActionButtonsViewFactory.init()();
  TrailingActionButtonsViewFactory.makeWithUIButtons(_:_:)();
  return (*(v2 + 8))(v6, v0);
}

uint64_t closure #7 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>, double a4@<D1>)
{
  v8 = static Color.black.getter();
  v9 = static Edge.Set.all.getter();
  type metadata accessor for IntelligenceBottomApertureView();
  OUTLINED_FUNCTION_7_0();
  v10 = OUTLINED_FUNCTION_29_6();
  v11(v10);
  v12 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGMd) + 36);
  *v12 = v8;
  *(v12 + 8) = v9;
  LOBYTE(a1) = a1();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGMd) + 36);
  *v21 = a1;
  *(v21 + 8) = v14;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  LOBYTE(a2) = a2();
  EdgeInsets.init(_all:)();
  OUTLINED_FUNCTION_40_1();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGANGMd);
  v23 = a3 + *(result + 36);
  *v23 = a2;
  *(v23 + 8) = a4;
  *(v23 + 16) = v14;
  *(v23 + 24) = v16;
  *(v23 + 32) = v18;
  *(v23 + 40) = 0;
  return result;
}

uint64_t closure #4 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for WaitOnHoldLeadingAccessoryView();
  OUTLINED_FUNCTION_13_40();
  lazy protocol witness table accessor for type IntelligenceControlsViewContainerViewModel.ControlsType and conformance IntelligenceControlsViewContainerViewModel.ControlsType(v6, v7);
  WaitOnHoldAvatarView.init(leadingView:)();
  v8 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  OUTLINED_FUNCTION_40_1();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB020WaitOnHoldAvatarViewVyAD0fgh16LeadingAccessoryJ0VGAA14_PaddingLayoutVGMd);
  v10 = a1 + *(result + 36);
  *v10 = v8;
  *(v10 + 8) = v1;
  *(v10 + 16) = v2;
  *(v10 + 24) = v3;
  *(v10 + 32) = v4;
  *(v10 + 40) = 0;
  return result;
}

uint64_t closure #15 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t closure #16 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI29WaitOnHoldHoldingDetectedViewVyAA27ApertureButtonRepresentableVAEGMd);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB029WaitOnHoldHoldingDetectedViewVyAD27ApertureButtonRepresentableVAHGAA14_PaddingLayoutVGMd);
  v15 = a2 + *(result + 36);
  *v15 = v4;
  *(v15 + 8) = v6;
  *(v15 + 16) = v8;
  *(v15 + 24) = v10;
  *(v15 + 32) = v12;
  *(v15 + 40) = 0;
  return result;
}

uint64_t closure #17 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)()
{
  type metadata accessor for WaitOnHoldLeadingAccessoryView();
  lazy protocol witness table accessor for type IntelligenceControlsViewContainerViewModel.ControlsType and conformance IntelligenceControlsViewContainerViewModel.ControlsType(&lazy protocol witness table cache variable for type WaitOnHoldLeadingAccessoryView and conformance WaitOnHoldLeadingAccessoryView, MEMORY[0x1E6995C58]);
  return WaitOnHoldAvatarView.init(leadingView:)();
}

uint64_t closure #10 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = OUTLINED_FUNCTION_39_1(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  OUTLINED_FUNCTION_7_0();
  v8 = *(v7 + 16);

  return v8(a3, a1, v6);
}

id closure #21 in implicit closure #1 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(const char *a1)
{
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, a1, v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  v6 = objc_allocWithZone(MEMORY[0x1E69DC738]);

  return [v6 init];
}

uint64_t closure #23 in IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(void *a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x4B8))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 48))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

id IntelligenceControlsViewContainer.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void IntelligenceControlsViewContainer.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_controlsView) = 0;
  v1 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_features;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_11_2();
    swift_once();
  }

  *(v0 + v1) = static Features.shared;
  *(v0 + OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_callHoldingTranscriptViewModelComposer) = 0;
  v2 = v0 + OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_viewModel;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double IntelligenceControlsViewContainer.systemAperturePreferredContentSize.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_controlsView;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v3 = *&v0[v2];
  if (!v3 || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView), v4 = v3, __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit42SystemAperturePreferredContentSizeProvider_pMd), (swift_dynamicCast() & 1) == 0))
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    goto LABEL_7;
  }

  v5 = *(&v25 + 1);
  if (!*(&v25 + 1))
  {
LABEL_7:
    outlined destroy of IDView<AvatarStackView, [UUID]>(&v24, &_s15ConversationKit42SystemAperturePreferredContentSizeProvider_pSgMd);
    goto LABEL_8;
  }

  v6 = v26;
  __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
  (*(v6 + 8))(v5, v6);
  if ((v8 & 1) == 0)
  {
    v23 = v7;
    __swift_destroy_boxed_opaque_existential_1(&v24);
    v11 = v23;
    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(&v24);
LABEL_8:
  v9 = *&v0[v2];
  if (!v9)
  {
    v11 = 0.0;
    v16 = 1;
LABEL_18:
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, &static Logger.conversationControls);
    v13 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v13, v18))
    {
      goto LABEL_24;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1BBC58000, v13, v18, "Controls View in IntelligenceControlsViewContainer is nil", v15, 2u);
    goto LABEL_22;
  }

  [v9 intrinsicContentSize];
  v11 = v10;
LABEL_10:
  if (!*&v1[v2])
  {
    v16 = 0;
    goto LABEL_18;
  }

  if (v11 > 30.0)
  {
    goto LABEL_26;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, &static Logger.conversationControls);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = v11;
    _os_log_impl(&dword_1BBC58000, v13, v14, "Controls View in IntelligenceControlsViewContainer has a unexpected height of %f", v15, 0xCu);
    v16 = 0;
LABEL_22:
    MEMORY[0x1BFB23DF0](v15, -1, -1);
    goto LABEL_24;
  }

  v16 = 0;
LABEL_24:

  if (v16)
  {
    v11 = 1.79769313e308;
  }

LABEL_26:
  static Layout.ConversationControls.values.getter(&v24);
  v19 = [v1 SBUISA_systemApertureCustomControlsContentLayoutGuide];
  [v19 layoutFrame];
  v21 = v20;

  return v11 + v21;
}

id IntelligenceControlsViewContainer.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id IntelligenceControlsViewContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id (*protocol witness for ControlsView.recipe.modify in conformance IntelligenceControlsViewContainer(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return IntelligenceControlsViewContainer.recipe.modify;
}

uint64_t IntelligenceControlsViewContainer.canUpdate(to:)(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit33IntelligenceControlsViewContainer_viewModel;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (*(v3 + 24))
  {
    outlined init with copy of IDSLookupManager(v3, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v6 = (*(v5 + 16))(a1, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t lazy protocol witness table accessor for type IntelligenceControlsViewContainerViewModel.ControlsType and conformance IntelligenceControlsViewContainerViewModel.ControlsType(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_170();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s15ConversationKit0A14ControlsRecipeVWOhTm_1()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0);
  return v0;
}

id key path getter for UILayoutGuide.centerYAnchor : UILayoutGuide, serialized@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 centerYAnchor];
  *a2 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB020WaitOnHoldAvatarViewVyAD0fgh16LeadingAccessoryJ0VGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>(&lazy protocol witness table cache variable for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>, &_s16CommunicationsUI20WaitOnHoldAvatarViewVyAA0cde16LeadingAccessoryG0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<WaitOnHoldHoldingDetectedView<ApertureButtonRepresentable, ApertureButtonRepresentable>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<WaitOnHoldHoldingDetectedView<ApertureButtonRepresentable, ApertureButtonRepresentable>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<WaitOnHoldHoldingDetectedView<ApertureButtonRepresentable, ApertureButtonRepresentable>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB029WaitOnHoldHoldingDetectedViewVyAD27ApertureButtonRepresentableVAHGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>(&lazy protocol witness table cache variable for type WaitOnHoldHoldingDetectedView<ApertureButtonRepresentable, ApertureButtonRepresentable> and conformance WaitOnHoldHoldingDetectedView<A, B>, &_s16CommunicationsUI29WaitOnHoldHoldingDetectedViewVyAA27ApertureButtonRepresentableVAEGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<WaitOnHoldHoldingDetectedView<ApertureButtonRepresentable, ApertureButtonRepresentable>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<EmptyView, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<EmptyView, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<EmptyView, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA9EmptyViewVAA12_FrameLayoutVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<EmptyView, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IntelligenceBottomApertureView, _BackgroundStyleModifier<Color>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_39_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntelligenceBottomApertureView, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntelligenceBottomApertureView, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntelligenceBottomApertureView, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB030IntelligenceBottomApertureViewVAA24_BackgroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type IntelligenceControlsViewContainerViewModel.ControlsType and conformance IntelligenceControlsViewContainerViewModel.ControlsType(&lazy protocol witness table cache variable for type IntelligenceBottomApertureView and conformance IntelligenceBottomApertureView, MEMORY[0x1E6995C48]);
    lazy protocol witness table accessor for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntelligenceBottomApertureView, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<IntelligenceLabelView<_ConditionalContent<EmptyView, WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IntelligenceLabelView<_ConditionalContent<EmptyView, WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IntelligenceLabelView<_ConditionalContent<EmptyView, WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB021IntelligenceLabelViewVyAA012_ConditionalD0VyAA05EmptyH0VAD016WaitOnHoldAvatarH0VyAD0klm16LeadingAccessoryH0VGGGAA13_OffsetEffectVGMd);
    lazy protocol witness table accessor for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>(&lazy protocol witness table cache variable for type IntelligenceLabelView<_ConditionalContent<EmptyView, WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>>> and conformance IntelligenceLabelView<A>, &_s16CommunicationsUI21IntelligenceLabelViewVy05SwiftB019_ConditionalContentVyAD05EmptyE0VAA016WaitOnHoldAvatarE0VyAA0jkl16LeadingAccessoryE0VGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IntelligenceLabelView<_ConditionalContent<EmptyView, WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_39_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    OUTLINED_FUNCTION_170();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for IntelligenceStrings()
{
  result = type metadata accessor for ConversationControlsRecipe();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ConversationControlsManager(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for CallScreeningService();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TranscriptionViewModel(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for IntelligenceControlsViewContainer()
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<EmptyView, WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9EmptyViewV014CommunicationsB0016WaitOnHoldAvatarF0VyAF0hij16LeadingAccessoryF0VGGMd);
    lazy protocol witness table accessor for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>(&lazy protocol witness table cache variable for type WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView> and conformance WaitOnHoldAvatarView<A>, &_s16CommunicationsUI20WaitOnHoldAvatarViewVyAA0cde16LeadingAccessoryG0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, WaitOnHoldAvatarView<WaitOnHoldLeadingAccessoryView>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

id SystemApertureAlertingManager.systemApertureElementContext.getter()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = [Strong systemApertureElementContext];

  return v1;
}

uint64_t SystemApertureAlertingManager.__allocating_init(systemApertureElement:sceneStateDescriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_15_25();
  v4 = swift_allocObject();
  ObjectType = swift_getObjectType();
  swift_getObjectType();
  v6 = OUTLINED_FUNCTION_1_5();

  return specialized SystemApertureAlertingManager.init(systemApertureElement:sceneStateDescriber:)(v6, v7, v4, ObjectType, v8, a3);
}

uint64_t SystemApertureAlertingManager.init(systemApertureElement:sceneStateDescriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_15_25();
  ObjectType = swift_getObjectType();
  swift_getObjectType();
  v6 = OUTLINED_FUNCTION_1_5();

  return specialized SystemApertureAlertingManager.init(systemApertureElement:sceneStateDescriber:)(v6, v7, v3, ObjectType, v8, a3);
}

Swift::Bool __swiftcall SystemApertureAlertingManager.requestEphemeralAlertingAssertion(reason:shouldOverridePersistentAssertion:includingWhileFullscreen:)(Swift::String reason, Swift::Bool shouldOverridePersistentAssertion, Swift::Bool includingWhileFullscreen)
{
  v4 = v3;
  object = reason._object;
  countAndFlagsBits = reason._countAndFlagsBits;
  v8 = *(v4 + 40);
  if (!v8 || (v10 = [v8 isAutomaticallyInvalidatable], shouldOverridePersistentAssertion) || v10)
  {
    v11 = SystemApertureAlertingManager.startAlerting(reason:includingWhileFullscreen:)(countAndFlagsBits, object, includingWhileFullscreen);
    v12 = *(v4 + 40);
    if (v12)
    {
      if (([swift_unknownObjectRetain() isAutomaticallyInvalidatable] & 1) == 0)
      {
        [v12 setAutomaticallyInvalidatable_];
      }

      swift_unknownObjectRelease();
    }

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = 7104878;
      OUTLINED_FUNCTION_30_1();
      v30 = OUTLINED_FUNCTION_10_40();
      *countAndFlagsBits = 136315394;
      if (*(v4 + 40))
      {
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo44SBUISystemApertureAutomaticallyInvalidatable_pMd);
        v16 = String.init<A>(reflecting:)();
        v18 = v17;
      }

      else
      {
        v18 = 0xE300000000000000;
        v16 = 7104878;
      }

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v30);

      *(countAndFlagsBits + 4) = v19;
      OUTLINED_FUNCTION_18_33();
      v20 = *(v4 + 40);
      if (v20)
      {
        [v20 isAutomaticallyInvalidatable];
        v15 = String.init<A>(reflecting:)();
        v22 = v21;
      }

      else
      {
        v22 = 0xE300000000000000;
      }

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v22, &v30);

      *(countAndFlagsBits + 14) = v23;
      OUTLINED_FUNCTION_11_44();
      _os_log_impl(v24, v25, v26, v27, v28, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_18();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

Swift::Bool __swiftcall SystemApertureAlertingManager.requestPersistentAlertingAssertion(reason:includingWhileFullscreen:)(Swift::String reason, Swift::Bool includingWhileFullscreen)
{
  v4 = v2;
  v5 = SystemApertureAlertingManager.startAlerting(reason:includingWhileFullscreen:)(reason._countAndFlagsBits, reason._object, includingWhileFullscreen);
  v6 = *(v2 + 40);
  if (v6)
  {
    if ([swift_unknownObjectRetain() isAutomaticallyInvalidatable])
    {
      [v6 setAutomaticallyInvalidatable_];
    }

    swift_unknownObjectRelease();
  }

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = 7104878;
    OUTLINED_FUNCTION_30_1();
    v24 = OUTLINED_FUNCTION_10_40();
    *v3 = 136315394;
    if (*(v4 + 40))
    {
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo44SBUISystemApertureAutomaticallyInvalidatable_pMd);
      v10 = String.init<A>(reflecting:)();
      v12 = v11;
    }

    else
    {
      v12 = 0xE300000000000000;
      v10 = 7104878;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v24);

    *(v3 + 4) = v13;
    OUTLINED_FUNCTION_18_33();
    v14 = *(v4 + 40);
    if (v14)
    {
      [v14 isAutomaticallyInvalidatable];
      v9 = String.init<A>(reflecting:)();
      v16 = v15;
    }

    else
    {
      v16 = 0xE300000000000000;
    }

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v16, &v24);

    *(v3 + 14) = v17;
    OUTLINED_FUNCTION_11_44();
    _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_18();
  }

  return v5 & 1;
}

Swift::Void __swiftcall SystemApertureAlertingManager.updatePersistentToEphemeralAlertIfNeeded(reason:)(Swift::String reason)
{
  if (!*(v1 + 40))
  {
LABEL_4:
    oslogb = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_15_29(v2, v3, v4, v5, v6, v7, v8, v9, v32, oslogb))
    {
      v10 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_21_24(v10);
      OUTLINED_FUNCTION_7_14(&dword_1BBC58000, v11, v12, "Ignoring request to update persistent alert because none exist", v13, v14, v15, v16, v33, oslog);
      OUTLINED_FUNCTION_27();
    }

LABEL_13:
    OUTLINED_FUNCTION_9_17();

    return;
  }

  OUTLINED_FUNCTION_15_25();
  if ([swift_unknownObjectRetain() isAutomaticallyInvalidatable])
  {
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v18 = [Strong activeLayoutMode];

  if (v18 != 4)
  {
    osloga = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_9_46();
    if (os_log_type_enabled(osloga, v22))
    {
      v23 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v23);
      OUTLINED_FUNCTION_23_27(&dword_1BBC58000, v24, v25, "Ignoring request to update persistent alert while not in custom layout", v26, v27, v28, v29, v32, osloga);
      OUTLINED_FUNCTION_27();
    }

    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v19 = OUTLINED_FUNCTION_1_5();
  v20(v19);
  OUTLINED_FUNCTION_9_17();

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall SystemApertureAlertingManager.invalidatePersistentAlertingAssertion(reason:)(Swift::String reason)
{
  if (!*(v1 + 40))
  {
LABEL_4:
    oslogb = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_15_29(v2, v3, v4, v5, v6, v7, v8, v9, v32, oslogb))
    {
      v10 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_21_24(v10);
      OUTLINED_FUNCTION_7_14(&dword_1BBC58000, v11, v12, "Ignoring request to invalidate persistent alert because none exist", v13, v14, v15, v16, v33, oslog);
      OUTLINED_FUNCTION_27();
    }

LABEL_13:
    OUTLINED_FUNCTION_9_17();

    return;
  }

  OUTLINED_FUNCTION_15_25();
  if ([swift_unknownObjectRetain() isAutomaticallyInvalidatable])
  {
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v18 = [Strong activeLayoutMode];

  if (v18 != 4)
  {
    osloga = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_9_46();
    if (os_log_type_enabled(osloga, v22))
    {
      v23 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v23);
      OUTLINED_FUNCTION_23_27(&dword_1BBC58000, v24, v25, "Ignoring request to invalidate persistent alert while not in custom layout", v26, v27, v28, v29, v32, osloga);
      OUTLINED_FUNCTION_27();
    }

    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v19 = OUTLINED_FUNCTION_1_5();
  v20(v19);
  OUTLINED_FUNCTION_9_17();

  swift_unknownObjectRelease();
}

uint64_t SystemApertureAlertingManager.handleRecipeTransition(from:to:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_4();
  v116 = v5;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v118 = v7;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v112 = v9;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v114 = v11;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v113 = v13;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v110 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v110 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v110 - v21;
  v23 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4();
  v117 = v25;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v115 = v27;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v110 - v29;
  outlined init with copy of (CGFloat, AutoplayCandidate)(a2, v22, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_2_83(v22);
  if (v38)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s15ConversationKit0A14ControlsRecipeVSgMd);
LABEL_4:
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v32))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_11_44();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_18();
    }

    goto LABEL_40;
  }

  outlined init with take of ConversationControlsRecipe(v22, v30);
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, v19, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_2_83(v19);
  v39 = a1;
  if (v38)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    memset(v123, 0, sizeof(v123));
    v124 = -1;
  }

  else
  {
    outlined init with copy of ConversationControlsType(v19, v123);
    outlined destroy of ConversationControlsRecipe(v19);
  }

  outlined init with copy of ConversationControlsType(v30, &v126);
  v40 = &_s15ConversationKit0A12ControlsTypeOSgMR;
  outlined init with copy of (CGFloat, AutoplayCandidate)(v123, __dst, &_s15ConversationKit0A12ControlsTypeOSgMd);
  outlined init with copy of (CGFloat, AutoplayCandidate)(&v126, &__dst[48], &_s15ConversationKit0A12ControlsTypeOSgMd);
  if (__dst[40] == 255)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v126, &_s15ConversationKit0A12ControlsTypeOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v123, &_s15ConversationKit0A12ControlsTypeOSgMd);
    if (__dst[88] == 255)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit0A12ControlsTypeOSgMd);
      goto LABEL_16;
    }

LABEL_20:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit0A12ControlsTypeOSg_ADtMd);
    goto LABEL_21;
  }

  outlined init with copy of (CGFloat, AutoplayCandidate)(__dst, v122, &_s15ConversationKit0A12ControlsTypeOSgMd);
  if (__dst[88] == 255)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v126, &_s15ConversationKit0A12ControlsTypeOSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v123, &_s15ConversationKit0A12ControlsTypeOSgMd);
    outlined destroy of ConversationControlsType(v122);
    goto LABEL_20;
  }

  v120 = *&__dst[48];
  v121[0] = *&__dst[64];
  *(v121 + 9) = *&__dst[73];
  v41 = static ConversationControlsType.== infix(_:_:)(v122, &v120);
  outlined destroy of ConversationControlsType(&v120);
  v40 = &_s15ConversationKit0A12ControlsTypeOSgMd;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v126, &_s15ConversationKit0A12ControlsTypeOSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v123, &_s15ConversationKit0A12ControlsTypeOSgMd);
  outlined destroy of ConversationControlsType(v122);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit0A12ControlsTypeOSgMd);
  if ((v41 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, v16, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_2_83(v16);
  if (v38)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s15ConversationKit0A14ControlsRecipeVSgMd);
LABEL_43:
    v80 = 254;
    goto LABEL_45;
  }

  memcpy(__dst, &v16[*(v23 + 72)], 0x49uLL);
  outlined init with copy of (CGFloat, AutoplayCandidate)(__dst, v123, &_s15ConversationKit21SystemApertureElementVSgMd);
  outlined destroy of ConversationControlsRecipe(v16);
  if (*__dst == 1)
  {
    goto LABEL_43;
  }

  v80 = __dst[72];
  v81 = *&__dst[48];
  v40 = *&__dst[32];
  v82 = *&__dst[16];

LABEL_45:
  v83 = &v30[*(v23 + 72)];
  v84 = *v83;
  v85 = v83[72];
  if (v84 == 1)
  {
    v86 = -2;
  }

  else
  {
    v86 = v85;
  }

  if (v80 > 0xFD)
  {
    if (v86 <= 0xFDu)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

  if (v86 <= 0xFDu && (static SystemApertureElement.AlertingStyle.== infix(_:_:)(v80, v86) & 1) != 0)
  {
LABEL_53:
    outlined destroy of ConversationControlsRecipe(v30);
    goto LABEL_4;
  }

LABEL_21:
  outlined init with copy of ConversationControlsType(v30, &v126);
  if (v129 == 3)
  {
    outlined destroy of ConversationControlsType(&v126);
  }

  else if (v129 != 7 || v126 != 4 || (v42 = vorrq_s8(v127, v128), *&vorr_s8(*v42.i8, *&vextq_s8(v42, v42, 8uLL))))
  {
    outlined destroy of ConversationControlsType(&v126);
    v43 = &v30[*(v23 + 72)];
    if (*v43 == 1 || *(v43 + 8) != 4)
    {
      v47 = v119;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_18_0(v49))
      {
        *OUTLINED_FUNCTION_33() = 0;
        OUTLINED_FUNCTION_11_44();
        _os_log_impl(v50, v51, v52, v53, v54, 2u);
        OUTLINED_FUNCTION_18();
      }

      (*(*v47 + 216))(0xD00000000000001FLL, 0x80000001BC500760);
      goto LABEL_39;
    }

    v44 = v43[72];
    v45 = v115;
    if (v44 > 0xFD)
    {
      goto LABEL_60;
    }

    v46 = v113;
    outlined init with copy of (CGFloat, AutoplayCandidate)(v39, v113, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    OUTLINED_FUNCTION_2_83(v46);
    if (v38)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v46, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    }

    else
    {
      memcpy(__dst, (v46 + *(v23 + 72)), 0x49uLL);
      outlined init with copy of (CGFloat, AutoplayCandidate)(__dst, v123, &_s15ConversationKit21SystemApertureElementVSgMd);
      outlined destroy of ConversationControlsRecipe(v46);
      if (*__dst != 1)
      {
        v87 = __dst[72];
        v88 = *&__dst[48];
        v89 = *&__dst[32];
        v90 = *&__dst[16];

        v45 = v115;
        goto LABEL_57;
      }
    }

    v87 = 254;
LABEL_57:
    if ((v44 & 0x80) == 0 || v87 > 0xFD || (v87 & 0xC0) != 0x40)
    {
      v78 = SystemApertureAlertingManager.requestAlertingAssertion(style:type:)(v44, v30);
      outlined destroy of ConversationControlsRecipe(v30);
      return v78 & 1;
    }

LABEL_60:
    v91 = v114;
    outlined init with copy of (CGFloat, AutoplayCandidate)(v39, v114, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    outlined init with copy of ConversationControlsRecipe(v30, v45);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v93))
    {
      OUTLINED_FUNCTION_30_1();
      v123[0] = OUTLINED_FUNCTION_10_40();
      *v45 = 136315394;
      v94 = v91;
      v95 = v112;
      outlined init with copy of (CGFloat, AutoplayCandidate)(v94, v112, &_s15ConversationKit0A14ControlsRecipeVSgMd);
      OUTLINED_FUNCTION_2_83(v95);
      v111 = v30;
      if (v38)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v95, &_s15ConversationKit0A14ControlsRecipeVSgMd);
        memset(__dst, 0, 40);
        __dst[40] = -1;
      }

      else
      {
        outlined init with copy of ConversationControlsType(v95, __dst);
        outlined destroy of ConversationControlsRecipe(v95);
      }

      v96 = specialized >> prefix<A>(_:)(__dst);
      v98 = v97;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit0A12ControlsTypeOSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v114, &_s15ConversationKit0A14ControlsRecipeVSgMd);
      v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, v123);

      *(v45 + 4) = v99;
      OUTLINED_FUNCTION_18_33();
      v100 = v115;
      outlined init with copy of ConversationControlsType(v115, __dst);
      v101 = specialized >> prefix<A>(_:)(__dst);
      v103 = v102;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit0A12ControlsTypeOSgMd);
      outlined destroy of ConversationControlsRecipe(v100);
      v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v103, v123);

      *(v45 + 14) = v104;
      OUTLINED_FUNCTION_11_44();
      _os_log_impl(v105, v106, v107, v108, v109, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_18();

      v30 = v111;
      goto LABEL_39;
    }

    outlined destroy of ConversationControlsRecipe(v45);
    v77 = v91;
    goto LABEL_38;
  }

  v55 = a1;
  v56 = v118;
  outlined init with copy of (CGFloat, AutoplayCandidate)(v55, v118, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  v57 = v117;
  outlined init with copy of ConversationControlsRecipe(v30, v117);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  if (!OUTLINED_FUNCTION_18_0(v59))
  {

    outlined destroy of ConversationControlsRecipe(v57);
    v77 = v56;
LABEL_38:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v77, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_30_1();
  v60 = OUTLINED_FUNCTION_10_40();
  v111 = v30;
  *__dst = v60;
  *v40 = 136315394;
  specialized >> prefix<A>(_:)();
  v62 = v61;
  v64 = v63;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v56, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, __dst);

  *(v40 + 1) = v65;
  OUTLINED_FUNCTION_18_33();
  v66 = v116;
  outlined init with copy of ConversationControlsRecipe(v57, v116);
  __swift_storeEnumTagSinglePayload(v66, 0, 1, v23);
  specialized >> prefix<A>(_:)();
  v68 = v67;
  v70 = v69;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v66, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  outlined destroy of ConversationControlsRecipe(v57);
  v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, __dst);

  *(v40 + 14) = v71;
  OUTLINED_FUNCTION_11_44();
  _os_log_impl(v72, v73, v74, v75, v76, 0x16u);
  swift_arrayDestroy();
  v30 = v111;
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_18();

LABEL_39:
  outlined destroy of ConversationControlsRecipe(v30);
LABEL_40:
  v78 = 0;
  return v78 & 1;
}

Swift::Void __swiftcall SystemApertureAlertingManager.invalidateAlertingAssertonIfFullScreen()()
{
  swift_unknownObjectUnownedLoadStrong();
  v1 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  LOBYTE(v1) = (*(v1 + 8))(ObjectType, v1);
  swift_unknownObjectRelease();
  if (v1)
  {
    OUTLINED_FUNCTION_13_38();
    v5 = *(v4 + 216);

    v5(0xD00000000000001ELL, v3 | 0x8000000000000000);
  }

  else
  {
    v23 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_15_29(v6, v7, v8, v9, v10, v11, v12, v13, v21, v23))
    {
      v14 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_21_24(v14);
      OUTLINED_FUNCTION_7_14(&dword_1BBC58000, v15, v16, "Ignoring invalidation request, full-screen presentation hasn't happened yet", v17, v18, v19, v20, v22, v24);
      OUTLINED_FUNCTION_27();
    }
  }
}

uint64_t SystemApertureAlertingManager.requestAlertingAssertion(style:type:)(unsigned __int8 a1, uint64_t a2)
{
  v12 = 0;
  *&v13 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  MEMORY[0x1BFB20B10](0xD000000000000034, 0x80000001BC500860);
  v16 = a1;
  v4 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v4);

  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      OUTLINED_FUNCTION_13_38();
    }

    else
    {
      v12 = 2;
      v13 = 0u;
      v14 = 0u;
      v15 = 7;
      static ConversationControlsType.== infix(_:_:)(a2, &v12);
      outlined destroy of ConversationControlsType(&v12);
      OUTLINED_FUNCTION_13_38();
    }

    v5 = OUTLINED_FUNCTION_15_14();
    v7 = v6(v5);
  }

  else if (a1)
  {
    OUTLINED_FUNCTION_13_38();
    v8 = OUTLINED_FUNCTION_15_14();
    v7 = v9(v8);
  }

  else
  {
    OUTLINED_FUNCTION_15_14();
    v7 = SystemApertureAlertingManager.requestPersistentAlertingAssertionUntilFirstFullScreenPresentation(reason:)();
  }

  v10 = v7;

  return v10 & 1;
}

Swift::Void __swiftcall SystemApertureAlertingManager.invalidateAlertingAssertion(reason:)(Swift::String reason)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    OUTLINED_FUNCTION_15_25();
    if ([swift_unknownObjectRetain() isValid])
    {
      CurrentValueSubject.send(_:)();
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_18_0(v4))
      {
        v5 = OUTLINED_FUNCTION_33();
        *v5 = 0;
        _os_log_impl(&dword_1BBC58000, v3, v4, "Invalidating alerting assertion", v5, 2u);
        OUTLINED_FUNCTION_27();
      }

      v6 = OUTLINED_FUNCTION_1_5();
      v7 = MEMORY[0x1BFB209B0](v6);
      [v2 invalidateWithReason_];
      swift_unknownObjectRelease();

      OUTLINED_FUNCTION_9_17();
      return;
    }

    swift_unknownObjectRelease();
  }

  v8 = (v1 + OBJC_IVAR____TtC15ConversationKit29SystemApertureAlertingManager_logger);
  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_21_24(v10);
    _os_log_impl(&dword_1BBC58000, oslog, v9, "Ignoring invalidation request, there's no valid alert to invalidate", v8, 2u);
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_9_17();
}

uint64_t SystemApertureAlertingManager.requestPersistentAlertingAssertionUntilFirstFullScreenPresentation(reason:)()
{
  OUTLINED_FUNCTION_15_25();
  swift_unknownObjectUnownedLoadStrong();
  v1 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  LOBYTE(v1) = (*(v1 + 8))(ObjectType, v1);
  swift_unknownObjectRelease();
  if (v1)
  {
    v3 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_9_46();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v5);
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v6, v7, "Ignoring request for alerting assertion because full-screen presentation has already happened");
      OUTLINED_FUNCTION_27();
    }

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_38();
    v9 = OUTLINED_FUNCTION_1_5();

    return v10(v9);
  }
}

uint64_t SystemApertureAlertingManager.startAlerting(reason:includingWhileFullscreen:)(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectUnownedLoadStrong();
  v12 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  LOBYTE(v12) = (*(v12 + 16))(ObjectType, v12);
  swift_unknownObjectRelease();
  if ((v12 & 1) != 0 && (a3 & 1) == 0)
  {
    v14 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_9_46();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v16);
      v19 = "No alerting required for recipe transition because call UI is full-screen";
LABEL_12:
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v17, v18, v19);
      OUTLINED_FUNCTION_27();
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v20 = [SystemApertureAlertingManager.systemApertureElementContext.getter() requestAlertingAssertion];
  swift_unknownObjectRelease();
  if (!v20)
  {
    v14 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    OUTLINED_FUNCTION_9_46();
    if (os_log_type_enabled(v14, v34))
    {
      v35 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v35);
      v19 = "Unable to obtain alerting assertion, likely because the system aperture element context isn't ready";
      goto LABEL_12;
    }

LABEL_16:

    return 0;
  }

  if (![v20 isValid])
  {
    v36 = v3 + OBJC_IVAR____TtC15ConversationKit29SystemApertureAlertingManager_logger;
    v14 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_9_46();
    if (os_log_type_enabled(v14, v37))
    {
      v38 = OUTLINED_FUNCTION_33();
      *v38 = 0;
      _os_log_impl(&dword_1BBC58000, v14, v36, "Received an invalid alerting assertion", v38, 2u);
      OUTLINED_FUNCTION_18();
    }

    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v40 = a1;
  v21 = swift_allocObject();
  swift_weakInit();
  v41 = OBJC_IVAR____TtC15ConversationKit29SystemApertureAlertingManager_logger;
  (*(v9 + 16))(&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v4 + OBJC_IVAR____TtC15ConversationKit29SystemApertureAlertingManager_logger, v8);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v9 + 32))(v24 + v22, v11, v8);
  *(v24 + v23) = v21;
  aBlock[4] = partial apply for closure #1 in SystemApertureAlertingManager.startAlerting(reason:includingWhileFullscreen:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed SBUISystemApertureAutomaticallyInvalidatable, @guaranteed String) -> ();
  aBlock[3] = &block_descriptor_35;
  v25 = _Block_copy(aBlock);

  [v20 addInvalidationBlock_];
  _Block_release(v25);
  swift_unknownObjectRetain();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_30_1();
    v29 = swift_slowAlloc();
    v42 = v20;
    aBlock[0] = v29;
    *v28 = 136315394;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo44SBUISystemApertureAutomaticallyInvalidatable_pMd);
    v30 = String.init<A>(reflecting:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, aBlock);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    *(v28 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, a2, aBlock);
    _os_log_impl(&dword_1BBC58000, v26, v27, "Obtained alerting assertion %s for reason: %s", v28, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  *(v4 + 40) = v20;
  swift_unknownObjectRelease();
  return 1;
}

uint64_t closure #1 in SystemApertureAlertingManager.startAlerting(reason:includingWhileFullscreen:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v50 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for DispatchTime();
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  swift_unknownObjectRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v43 = v10;
    v22 = v21;
    v23 = swift_slowAlloc();
    v42 = v12;
    v24 = v23;
    aBlock[0] = v23;
    *v22 = 136315138;
    aBlock[6] = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo44SBUISystemApertureAutomaticallyInvalidatable_pMd);
    v25 = String.init<A>(reflecting:)();
    v27 = a5;
    v28 = v9;
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, aBlock);

    *(v22 + 4) = v29;
    v9 = v28;
    a5 = v27;
    _os_log_impl(&dword_1BBC58000, v19, v20, "Invalidated assertion %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v30 = v24;
    v12 = v42;
    MEMORY[0x1BFB23DF0](v30, -1, -1);
    v31 = v22;
    v10 = v43;
    MEMORY[0x1BFB23DF0](v31, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 40) = 0;

    swift_unknownObjectRelease();
  }

  type metadata accessor for OS_dispatch_queue();
  v43 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v12 = 500;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E7F38], v9);
  MEMORY[0x1BFB20700](v15, v12);
  (*(v10 + 8))(v12, v9);
  v33 = *(v46 + 8);
  v34 = v15;
  v35 = v47;
  v33(v34, v47);
  aBlock[4] = partial apply for closure #1 in closure #1 in SystemApertureAlertingManager.startAlerting(reason:includingWhileFullscreen:);
  aBlock[5] = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_10;
  v36 = _Block_copy(aBlock);

  v37 = v49;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v38 = v44;
  v39 = v51;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v40 = v43;
  MEMORY[0x1BFB21510](v18, v37, v38, v36);
  _Block_release(v36);

  (*(v45 + 8))(v38, v39);
  (*(v50 + 8))(v37, v48);
  return (v33)(v18, v35);
}

uint64_t closure #1 in closure #1 in SystemApertureAlertingManager.startAlerting(reason:includingWhileFullscreen:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    CurrentValueSubject.send(_:)();
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed SBUISystemApertureAutomaticallyInvalidatable, @guaranteed String) -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = swift_unknownObjectRetain();
  v1(v5, v2, v4);

  return swift_unknownObjectRelease();
}

uint64_t SystemApertureAlertingManager.deinit()
{
  outlined destroy of unowned CNKCallDetailsDeferredPresentationManager(v0 + 16);
  outlined destroy of unowned CNKCallDetailsDeferredPresentationManager(v0 + 24);
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC15ConversationKit29SystemApertureAlertingManager_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t SystemApertureAlertingManager.__deallocating_deinit()
{
  SystemApertureAlertingManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized SystemApertureAlertingManager.init(systemApertureElement:sceneStateDescriber:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a3 + 40) = 0;
  v9 = OBJC_IVAR____TtC15ConversationKit29SystemApertureAlertingManager_logger;
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = __swift_project_value_buffer(v10, &static Logger.conversationControls);
  (*(*(v10 - 8) + 16))(a3 + v9, v11, v10);
  v12 = OBJC_IVAR____TtC15ConversationKit29SystemApertureAlertingManager_invalidationInProgressSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd);
  swift_allocObject();
  *(a3 + v12) = CurrentValueSubject.init(_:)();
  swift_unknownObjectUnownedInit();
  *(a3 + 32) = a6;
  swift_unknownObjectUnownedInit();
  CurrentValueSubject.send(_:)();

  swift_unknownObjectRelease();
  return a3;
}

uint64_t type metadata accessor for SystemApertureAlertingManager()
{
  result = type metadata singleton initialization cache for SystemApertureAlertingManager;
  if (!type metadata singleton initialization cache for SystemApertureAlertingManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SystemApertureAlertingManager()
{
  result = type metadata accessor for Logger();
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

uint64_t partial apply for closure #1 in SystemApertureAlertingManager.startAlerting(reason:includingWhileFullscreen:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_15_25();
  type metadata accessor for Logger();
  v4 = OUTLINED_FUNCTION_1_5();

  return closure #1 in SystemApertureAlertingManager.startAlerting(reason:includingWhileFullscreen:)(v4, v5, a3, v6, v7);
}

uint64_t static RecentsJoinButton.fetchButtonImageName(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_4();
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 conversationManager];

  v9 = TUConversationManager.conversation(with:)(a1);
  if (v9)
  {
    v10 = [v9 resolvedAudioVideoMode];

    type metadata accessor for ContactAvatarTileView.ButtonConfiguration.Symbol();
    OUTLINED_FUNCTION_7_0();
    v12 = *(v11 + 104);
    if (v10 == 1)
    {
      v13 = MEMORY[0x1E6995B50];
    }

    else
    {
      v13 = MEMORY[0x1E6995B58];
    }

    v23 = *v13;

    return v12(a2, v23);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BC4BA940;
    outlined init with copy of RecentOngoingConversationMetadata(a1, v2);
    v15 = type metadata accessor for RecentOngoingConversationMetadata(0);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v15);
    specialized >> prefix<A>(_:)();
    v17 = v16;
    v19 = v18;
    outlined destroy of RecentOngoingConversationMetadata?(v2);
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v14 + 32) = v17;
    *(v14 + 40) = v19;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v20 = *MEMORY[0x1E6995B58];
    type metadata accessor for ContactAvatarTileView.ButtonConfiguration.Symbol();
    OUTLINED_FUNCTION_7_0();
    return (*(v21 + 104))(a2, v20);
  }
}

uint64_t static RecentsJoinButton.fetchMenuItems(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16_4();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BC4BA940;
  outlined init with copy of RecentOngoingConversationMetadata(a1, v1);
  v6 = type metadata accessor for RecentOngoingConversationMetadata(0);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v6);
  specialized >> prefix<A>(_:)();
  v8 = v7;
  v10 = v9;
  outlined destroy of RecentOngoingConversationMetadata?(v1);
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v5 + 32) = v8;
  *(v5 + 40) = v10;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v11 = [*(a1 + *(v6 + 24)) handoffEligibility];
  if (!v11)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = v11;
  v13 = [v11 isEligible];

  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for RecentsJoinButton();
  return static RecentsJoinButton.buildItems(_:)(a1);
}

id @nonobjc UIImage.init(named:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = MEMORY[0x1BFB209B0]();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() imageNamed:v4 inBundle:a3];

  return v5;
}

id RecentsJoinButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t key path setter for RecentsJoinButton.conversationMetadata : RecentsJoinButton(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of RecentOngoingConversationMetadata?(a1, &v8 - v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x60))(v6);
}

uint64_t RecentsJoinButton.conversationMetadata.didset()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for RecentOngoingConversationMetadata(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC15ConversationKit17RecentsJoinButton_conversationMetadata;
  swift_beginAccess();
  outlined init with copy of RecentOngoingConversationMetadata?(v1 + v11, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    outlined destroy of RecentOngoingConversationMetadata?(v7);
LABEL_7:
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BC4BA940;
    outlined init with copy of RecentOngoingConversationMetadata?(v1 + v11, v4);
    specialized >> prefix<A>(_:)();
    v20 = v19;
    v22 = v21;
    outlined destroy of RecentOngoingConversationMetadata?(v4);
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  outlined init with take of RecentOngoingConversationMetadata(v7, v10);
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 conversationManager];

  v14 = TUConversationManager.conversation(with:)(v10);
  if (!v14)
  {
    outlined destroy of RecentOngoingConversationMetadata(v10);
    goto LABEL_7;
  }

  v15 = [v14 resolvedAudioVideoMode];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  if (v15 == 1)
  {
    v16 = [objc_opt_self() conversationKit];
    v17 = @nonobjc UIImage.init(named:in:)(0xD000000000000011, 0x80000001BC500C10, v16);
    [v1 setImage:v17 forState:0];
  }

  else
  {
    v17 = v14;
    v24 = [objc_opt_self() conversationKit];
    v14 = @nonobjc UIImage.init(named:in:)(0x7475622D6E696F6ALL, 0xEB000000006E6F74, v24);
    [v1 setImage:v14 forState:0];
  }

  return outlined destroy of RecentOngoingConversationMetadata(v10);
}

uint64_t RecentsJoinButton.conversationMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit17RecentsJoinButton_conversationMetadata;
  swift_beginAccess();
  return outlined init with copy of RecentOngoingConversationMetadata?(v1 + v3, a1);
}

uint64_t RecentsJoinButton.conversationMetadata.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit17RecentsJoinButton_conversationMetadata;
  swift_beginAccess();
  outlined assign with copy of RecentOngoingConversationMetadata?(a1, v1 + v3);
  swift_endAccess();
  RecentsJoinButton.conversationMetadata.didset();
  return outlined destroy of RecentOngoingConversationMetadata?(a1);
}

uint64_t (*RecentsJoinButton.conversationMetadata.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return RecentsJoinButton.conversationMetadata.modify;
}

uint64_t RecentsJoinButton.conversationMetadata.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return RecentsJoinButton.conversationMetadata.didset();
  }

  return result;
}

id RecentsJoinButton.init()()
{
  v1 = type metadata accessor for RecentOngoingConversationMetadata(0);
  OUTLINED_FUNCTION_0_11(v1);
  v12.receiver = v0;
  v12.super_class = type metadata accessor for RecentsJoinButton();
  v2 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 32.0, 32.0);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor_];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v6 = objc_opt_self();
  v7 = v4;
  v8 = @nonobjc UIImage.init(named:in:)(0x7475622D6E696F6ALL, 0xEB000000006E6F74, [v6 conversationKit]);
  [v7 setImage:v8 forState:0];

  v9 = v7;
  v10 = RecentsJoinButton.handoffOrJoinMenu.getter();
  [v9 setMenu_];

  [v9 setShowsMenuAsPrimaryAction_];
  [v9 _setChangesSelectionAsPrimaryAction_];

  return v9;
}

Class RecentsJoinButton.handoffOrJoinMenu.getter()
{
  v0 = [objc_opt_self() currentDeviceRouteGlyphForDisplayStyle_];
  if (!v0)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_os_log);
    v14 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return 0;
  }

  v1 = v0;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction);
  v2 = [objc_opt_self() conversationKit];
  swift__string._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._object = 0x80000001BC500AE0;
  v4._countAndFlagsBits = 0xD000000000000017;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  swift__string._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, swift__string);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = v1;
  v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  type metadata accessor for RecentsJoinButton();
  static RecentsJoinButton.handoffContext.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg_So7UIImageCSgtMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So7UIImageCtMd);
  if (!swift_dynamicCast())
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_os_log);
    v15 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return 0;
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = v17;
  v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1BC4BA930;
  *(preferredElementSize + 32) = v9;
  *(preferredElementSize + 40) = v7;
  v11 = v7;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v18.value.super.isa = 0;
  v18.is_nil = 0;
  v13.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v12, 0, v18, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;

  return v13.super.super.isa;
}

id RecentsJoinButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void RecentsJoinButton.init(coder:)()
{
  v0 = type metadata accessor for RecentOngoingConversationMetadata(0);
  OUTLINED_FUNCTION_0_11(v0);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

UIContextMenuConfiguration_optional __swiftcall RecentsJoinButton.contextMenuInteraction(_:configurationForMenuAtLocation:)(UIContextMenuInteraction _, CGPoint configurationForMenuAtLocation)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_4();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC4BA940;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x58))();
  specialized >> prefix<A>(_:)();
  v8 = v7;
  v10 = v9;
  outlined destroy of RecentOngoingConversationMetadata?(v3);
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (RecentsJoinButton.isHandoffEligible.getter())
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIContextMenuConfiguration);
    *(swift_allocObject() + 16) = v2;
    v11 = v2;
    UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)();
  }

  else
  {
    RecentsJoinButton.joinOngoingConversation()();
    v12 = 0;
  }

  result.value.super.isa = v12;
  result.is_nil = v13;
  return result;
}

id RecentsJoinButton.isHandoffEligible.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for RecentOngoingConversationMetadata(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))(v5);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    outlined destroy of RecentOngoingConversationMetadata?(v3);
    return 0;
  }

  else
  {
    outlined init with take of RecentOngoingConversationMetadata(v3, v7);
    v9 = [*&v7[*(v4 + 24)] handoffEligibility];
    if (v9)
    {
      v10 = v9;
      v8 = [v9 isEligible];
    }

    else
    {
      v8 = 0;
    }

    outlined destroy of RecentOngoingConversationMetadata(v7);
  }

  return v8;
}

uint64_t RecentsJoinButton.joinOngoingConversation()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v7 = type metadata accessor for RecentOngoingConversationMetadata(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v11(v8);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    outlined destroy of RecentOngoingConversationMetadata?(v6);
  }

  else
  {
    outlined init with take of RecentOngoingConversationMetadata(v6, v10);
    v12 = [objc_opt_self() sharedInstance];
    v13 = [v12 conversationManager];

    v14 = TUConversationManager.conversation(with:)(v10);
    if (v14)
    {
      type metadata accessor for RecentsJoinButton();
      static RecentsJoinButton.joinOngoingConversation(conversationToJoin:)(v14);

      return outlined destroy of RecentOngoingConversationMetadata(v10);
    }

    outlined destroy of RecentOngoingConversationMetadata(v10);
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BC4BA940;
  (v11)();
  specialized >> prefix<A>(_:)();
  v18 = v17;
  v20 = v19;
  outlined destroy of RecentOngoingConversationMetadata?(v3);
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

id RecentsJoinButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id RecentsJoinButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecentsJoinButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void static RecentsJoinButton.joinOngoingConversation(conversationToJoin:)(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 state])
  {
    v7 = [objc_opt_self() faceTimeShowInCallUIURL];
    if (v7)
    {
      v8 = v7;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL._bridgeToObjectiveC()(v9);
      v11 = v10;
      (*(v3 + 8))(v6, v2);
      TUOpenURL();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v12 = [objc_opt_self() sharedInstance];
    v15 = TUConversation.joinConversationRequest()();
    [v12 launchAppForJoinRequest_];

    v13 = v15;
  }
}

uint64_t RecentsJoinButton.handoffOngoingConversation()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v7 = type metadata accessor for RecentOngoingConversationMetadata(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v11(v8);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    outlined destroy of RecentOngoingConversationMetadata?(v6);
  }

  else
  {
    outlined init with take of RecentOngoingConversationMetadata(v6, v10);
    v12 = [objc_opt_self() sharedInstance];
    v13 = [v12 conversationManager];

    v14 = TUConversationManager.conversation(with:)(v10);
    if (v14)
    {
      v15 = [v14 handoffEligibility];

      if (v15)
      {
        type metadata accessor for RecentsJoinButton();
        static RecentsJoinButton.handoffOngoingConversation(handoffEligibility:)(v15);

        return outlined destroy of RecentOngoingConversationMetadata(v10);
      }
    }

    outlined destroy of RecentOngoingConversationMetadata(v10);
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BC4BA940;
  (v11)();
  specialized >> prefix<A>(_:)();
  v19 = v18;
  v21 = v20;
  outlined destroy of RecentOngoingConversationMetadata?(v3);
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

void static RecentsJoinButton.handoffOngoingConversation(handoffEligibility:)(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  [v2 continueHandoffForConversationWithEligibility_];
}

id static RecentsJoinButton.handoffContext.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result deviceType];

    if (v2 == 4)
    {
      v3 = [objc_opt_self() conversationKit];
      v16._object = 0xE000000000000000;
      v11._countAndFlagsBits = 0x4F52465F4E494F4ALL;
      v11._object = 0xEE00444150495F4DLL;
      v12.value._countAndFlagsBits = 0x61737265766E6F43;
      v12.value._object = 0xEF74694B6E6F6974;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      v16._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v3, v13, v16)._countAndFlagsBits;
    }

    else if (v2 == 3)
    {
      v3 = [objc_opt_self() conversationKit];
      v15._object = 0xE000000000000000;
      v8._countAndFlagsBits = 0x4F52465F4E494F4ALL;
      v8._object = 0xEE00444F50495F4DLL;
      v9.value._countAndFlagsBits = 0x61737265766E6F43;
      v9.value._object = 0xEF74694B6E6F6974;
      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      v15._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v3, v10, v15)._countAndFlagsBits;
    }

    else
    {
      if (v2 != 2)
      {
        return 0;
      }

      v3 = [objc_opt_self() conversationKit];
      v4._countAndFlagsBits = 0xD000000000000010;
      v14._object = 0xE000000000000000;
      v5.value._countAndFlagsBits = 0x61737265766E6F43;
      v5.value._object = 0xEF74694B6E6F6974;
      v4._object = 0x80000001BC500BD0;
      v6._countAndFlagsBits = 0;
      v6._object = 0xE000000000000000;
      v14._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v14)._countAndFlagsBits;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
    @nonobjc UIImage.__allocating_init(systemName:)();
    return countAndFlagsBits;
  }

  __break(1u);
  return result;
}

void closure #1 in RecentsJoinButton.handoffOrJoinMenu.getter(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

uint64_t static RecentsJoinButton.buildItems(_:)(uint64_t a1)
{
  v2 = type metadata accessor for RecentOngoingConversationMetadata(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = type metadata accessor for MenuItem();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v39 - v10;
  v12 = [objc_opt_self() currentDeviceRouteGlyphForDisplayStyle_];
  if (!v12)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.conversationKit);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1BBC58000, v32, v33, "Unable to obtain separateDeviceImage for the RecentsJoinButton menu", v34, 2u);
      MEMORY[0x1BFB23DF0](v34, -1, -1);
    }

    goto LABEL_13;
  }

  v13 = v12;
  v46 = static RecentsJoinButton.handoffContext.getter();
  v47 = v14;
  v48 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg_So7UIImageCSgtMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So7UIImageCtMd);
  if (!swift_dynamicCast())
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.conversationKit);
    v32 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1BBC58000, v32, v36, "Unable to obtain an image/label for the RecentsJoinButton menu", v37, 2u);
      MEMORY[0x1BFB23DF0](v37, -1, -1);
    }

LABEL_13:
    return MEMORY[0x1E69E7CC0];
  }

  v39[1] = v44;
  v43 = v45;
  Image.init(uiImage:)();
  v41 = v8;
  outlined init with copy of RecentOngoingConversationMetadata(a1, v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = a1;
  v16 = *(v3 + 80);
  v42 = v5;
  v17 = (v16 + 16) & ~v16;
  v18 = swift_allocObject();
  outlined init with take of RecentOngoingConversationMetadata(v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  MenuItem.init(label:icon:action:)();
  v19 = [objc_opt_self() conversationKit];
  v49._object = 0xE000000000000000;
  v20.value._countAndFlagsBits = 0x61737265766E6F43;
  v20.value._object = 0xEF74694B6E6F6974;
  v21._object = 0x80000001BC500AE0;
  v21._countAndFlagsBits = 0xD000000000000017;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v49._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v20, v19, v22, v49);

  v23 = v13;
  Image.init(uiImage:)();
  outlined init with copy of RecentOngoingConversationMetadata(v40, v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = swift_allocObject();
  outlined init with take of RecentOngoingConversationMetadata(v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v17);
  v25 = v41;
  MenuItem.init(label:icon:action:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16CommunicationsUI8MenuItemVGMd);
  v26 = *(v6 + 72);
  v27 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BC4BAA20;
  v29 = v28 + v27;
  v30 = v42;
  (*(v6 + 16))(v29, v11, v42);
  (*(v6 + 32))(v29 + v26, v25, v30);

  (*(v6 + 8))(v11, v30);
  return v28;
}

void closure #1 in static RecentsJoinButton.buildItems(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for RecentOngoingConversationMetadata(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 conversationManager];

  v10 = TUConversationManager.conversation(with:)(a1);
  if (v10 && (v22 = [v10 handoffEligibility], v10, v22))
  {
    type metadata accessor for RecentsJoinButton();
    static RecentsJoinButton.handoffOngoingConversation(handoffEligibility:)(v22);
    v11 = v22;
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.conversationKit);
    outlined init with copy of RecentOngoingConversationMetadata(a1, v7);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315138;
      outlined init with copy of RecentOngoingConversationMetadata(v7, v4);
      __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
      specialized >> prefix<A>(_:)();
      v18 = v17;
      v20 = v19;
      outlined destroy of RecentOngoingConversationMetadata?(v4);
      outlined destroy of RecentOngoingConversationMetadata(v7);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v23);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_1BBC58000, v13, v14, "(Handoff) Could not retrieve conversation for recent conversation metadata: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFB23DF0](v16, -1, -1);
      MEMORY[0x1BFB23DF0](v15, -1, -1);
    }

    else
    {

      outlined destroy of RecentOngoingConversationMetadata(v7);
    }
  }
}

void closure #2 in static RecentsJoinButton.buildItems(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for RecentOngoingConversationMetadata(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 conversationManager];

  v21 = TUConversationManager.conversation(with:)(a1);
  if (v21)
  {
    type metadata accessor for RecentsJoinButton();
    static RecentsJoinButton.joinOngoingConversation(conversationToJoin:)(v21);
    v10 = v21;
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.conversationKit);
    outlined init with copy of RecentOngoingConversationMetadata(a1, v7);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      outlined init with copy of RecentOngoingConversationMetadata(v7, v4);
      __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
      specialized >> prefix<A>(_:)();
      v17 = v16;
      v19 = v18;
      outlined destroy of RecentOngoingConversationMetadata?(v4);
      outlined destroy of RecentOngoingConversationMetadata(v7);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v22);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_1BBC58000, v12, v13, "(Join) Could not retrieve conversation for recent conversation metadata: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1BFB23DF0](v15, -1, -1);
      MEMORY[0x1BFB23DF0](v14, -1, -1);
    }

    else
    {

      outlined destroy of RecentOngoingConversationMetadata(v7);
    }
  }
}

uint64_t outlined init with copy of RecentOngoingConversationMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentOngoingConversationMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RecentOngoingConversationMetadata?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for RecentsJoinButton()
{
  result = type metadata singleton initialization cache for RecentsJoinButton;
  if (!type metadata singleton initialization cache for RecentsJoinButton)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of RecentOngoingConversationMetadata?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of RecentOngoingConversationMetadata?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void type metadata completion function for RecentsJoinButton()
{
  type metadata accessor for RecentOngoingConversationMetadata?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for RecentOngoingConversationMetadata?()
{
  if (!lazy cache variable for type metadata for RecentOngoingConversationMetadata?)
  {
    type metadata accessor for RecentOngoingConversationMetadata(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RecentOngoingConversationMetadata?);
    }
  }
}

uint64_t outlined destroy of RecentOngoingConversationMetadata(uint64_t a1)
{
  v2 = type metadata accessor for RecentOngoingConversationMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_9Tm()
{
  v1 = (type metadata accessor for RecentOngoingConversationMetadata(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v2);

  v4 = *(v2 + v1[9]);
  if (v4)
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in static RecentsJoinButton.buildItems(_:)(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for RecentOngoingConversationMetadata(0);
  OUTLINED_FUNCTION_22(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t ScreenShareAttributes.Style.debugDescription.getter(void *a1)
{
  if (!a1)
  {
    return 0x656E6F6E2ELL;
  }

  if (a1 == 1)
  {
    return 0x7263536C6C75662ELL;
  }

  if (a1 == 2)
  {
    return 0x776F646E69772ELL;
  }

  v2 = [a1 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x1BFB20B10](v3, v5);

  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return 0x79616C707369642ELL;
}

uint64_t ScreenShareAttributes.sessionUUID.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

void *ScreenShareAttributes.style.getter()
{
  OUTLINED_FUNCTION_5_62();
  v2 = *(v0 + v1);
  outlined copy of ScreenShareAttributes.Style(v2);
  return v2;
}

id outlined copy of ScreenShareAttributes.Style(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

BOOL ScreenShareAttributes.displayIsScaled.getter()
{
  v1 = *(v0 + *(type metadata accessor for ScreenShareAttributes(0) + 32));
  v2 = [objc_opt_self() defaultScaleFactor];
  [v2 floatValue];
  v4 = v3;

  return v1 != v4;
}

uint64_t ScreenShareAttributes.originalResolution.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for ScreenShareAttributes(0);
  v10 = (v4 + *(result + 36));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t ScreenShareAttributes.debugDescription.getter()
{
  _StringGuts.grow(_:)(178);
  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10]();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID();
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v1);

  MEMORY[0x1BFB20B10](0x3D656C797473202CLL, 0xE800000000000000);
  v2 = type metadata accessor for ScreenShareAttributes(0);
  v3 = *(v0 + v2[5]);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1BFB20B10](0x616C70736964202CLL, 0xEF3D656C61635379);
  v4 = Double.description.getter();
  MEMORY[0x1BFB20B10](v4);

  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10]();
  if (*(v0 + v2[7] + 8))
  {
    v5 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    v6 = String.init<A>(reflecting:)();
    v5 = v7;
  }

  MEMORY[0x1BFB20B10](v6, v5);

  MEMORY[0x1BFB20B10](0x46656C616373202CLL, 0xEE003D726F746361);
  v8 = *(v0 + v2[8]);
  v9 = Double.description.getter();
  MEMORY[0x1BFB20B10](v9);

  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10](0xD000000000000012);
  v10 = [objc_opt_self() defaultScaleFactor];
  [v10 floatValue];
  v12 = v11;

  if (v8 == v12)
  {
    v13 = 0x65736C6166;
  }

  else
  {
    v13 = 1702195828;
  }

  if (v8 == v12)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  MEMORY[0x1BFB20B10](v13, v14);

  OUTLINED_FUNCTION_2_67();
  MEMORY[0x1BFB20B10]();
  v15 = CGRect.description.getter();
  MEMORY[0x1BFB20B10](v15);

  MEMORY[0x1BFB20B10](0x646E69577369202CLL, 0xED00003D6465776FLL);
  if (v3 == 2)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v3 == 2)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x1BFB20B10](v16, v17);

  MEMORY[0x1BFB20B10](0x727474417574202CLL, 0xEF3D736574756269);
  ScreenShareAttributes.tuCallScreenShareAttributes.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27TUCallScreenShareAttributesCSgMd);
  v18 = String.init<A>(describing:)();
  MEMORY[0x1BFB20B10](v18);

  return 0;
}

id ScreenShareAttributes.tuCallScreenShareAttributes.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69D8A98]) init];
  v2 = type metadata accessor for ScreenShareAttributes(0);
  v3 = *(v0 + v2[5]);
  if (v3 >= 2)
  {
    if (v3 == 2)
    {
      [v1 setWindowed_];
    }

    else
    {
      [v1 setDisplayID_];
      [v1 setWindowed_];
      outlined consume of ScreenShareAttributes.Style(v3);
    }
  }

  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v1 setWindowUUID_];

  v5 = objc_opt_self();
  [v1 setDeviceFamily_];
  [v1 setDeviceHomeButtonType_];
  if (v3 > 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = qword_1BC4CAB50[v3];
  }

  [v1 setStyle_];
  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  [v1 setDisplayScale_];

  v8 = v0 + v2[7];
  if (*(v8 + 8))
  {
    v9 = 0;
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  [v1 setCornerRadius_];

  v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  [v1 setScaleFactor_];

  v11 = (v0 + v2[9]);
  v12 = [objc_opt_self() valueWithRect_];
  OUTLINED_FUNCTION_1_70(v12, sel_setOriginalResolution_);

  return v1;
}

int *ScreenShareAttributes.init(sessionUUID:style:displayScale:displayCornerRadius:scaleFactor:originalResolution:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>)
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v22 + 32))(a5, a1);
  result = OUTLINED_FUNCTION_5_62();
  *(a5 + v24) = a2;
  *(a5 + result[6]) = a6;
  v25 = a5 + result[7];
  *v25 = a3;
  *(v25 + 8) = a4 & 1;
  *(a5 + result[8]) = a7;
  v26 = (a5 + result[9]);
  *v26 = a8;
  v26[1] = a9;
  v26[2] = a10;
  v26[3] = a11;
  return result;
}

uint64_t ScreenShareAttributes.tuStyle.getter()
{
  OUTLINED_FUNCTION_5_62();
  v2 = *(v0 + v1);
  if (v2 > 2)
  {
    return 2;
  }

  else
  {
    return qword_1BC4CAB50[v2];
  }
}

void outlined consume of ScreenShareAttributes.Style(id a1)
{
  if (a1 >= 3)
  {
  }
}

void TUScreenShareAttributes.update(with:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v2 setWindowed_];
  isa = [a1 windowUUID];
  if (isa)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v6 + 8))(v10, v4);
  }

  [v2 setWindowUUID_];

  [v2 setDeviceFamily_];
  [v2 setDeviceHomeButtonType_];
  [v2 setStyle_];
  v12 = [a1 displayScale];
  OUTLINED_FUNCTION_1_70(v12, sel_setDisplayScale_);

  v13 = [a1 scaleFactor];
  OUTLINED_FUNCTION_1_70(v13, sel_setScaleFactor_);

  v14 = [a1 originalResolution];
  OUTLINED_FUNCTION_1_70(v14, sel_setOriginalResolution_);

  v15 = [a1 displayID];
  OUTLINED_FUNCTION_1_70(v15, sel_setDisplayID_);
}

uint64_t key path getter for SingleDisplaySharingSession.sessionDidCreateNewSession : SingleDisplaySharingSession@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed ScreenShareAttributes?) -> ()partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
}

uint64_t key path setter for SingleDisplaySharingSession.sessionDidCreateNewSession : SingleDisplaySharingSession(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed ScreenShareAttributes?) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t SingleDisplaySharingSession.sessionDidCreateNewSession.setter()
{
  OUTLINED_FUNCTION_55();
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*v1);
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t key path getter for SingleDisplaySharingSession.sessionDidBegin : SingleDisplaySharingSession@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed ScreenShareAttributes?) -> ()partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
}

uint64_t key path setter for SingleDisplaySharingSession.sessionDidBegin : SingleDisplaySharingSession(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed ScreenShareAttributes?) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 16);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  return result;
}

uint64_t SingleDisplaySharingSession.sessionDidBegin.setter()
{
  OUTLINED_FUNCTION_55();
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v1 + 16));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t key path getter for SingleDisplaySharingSession.sessionDidEnd : SingleDisplaySharingSession@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
}

uint64_t key path setter for SingleDisplaySharingSession.sessionDidEnd : SingleDisplaySharingSession(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 32);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  return result;
}

uint64_t SingleDisplaySharingSession.sessionDidEnd.setter()
{
  OUTLINED_FUNCTION_55();
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v1 + 32));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t key path getter for SingleDisplaySharingSession.sessionDidChangeAttributes : SingleDisplaySharingSession@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed ScreenShareAttributes?) -> ()partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
}

uint64_t key path setter for SingleDisplaySharingSession.sessionDidChangeAttributes : SingleDisplaySharingSession(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed (@in_guaranteed ScreenShareAttributes?) -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 48);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
  *(a2 + 48) = v6;
  *(a2 + 56) = v5;
  return result;
}

uint64_t SingleDisplaySharingSession.sessionDidChangeAttributes.setter()
{
  OUTLINED_FUNCTION_55();
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v1 + 48));
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t key path getter for SingleDisplaySharingSession.sessionDidChangeContent : SingleDisplaySharingSession@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
}

uint64_t key path setter for SingleDisplaySharingSession.sessionDidChangeContent : SingleDisplaySharingSession(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 64);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
  *(a2 + 64) = v6;
  *(a2 + 72) = v5;
  return result;
}

uint64_t SingleDisplaySharingSession.sessionDidChangeContent.setter()
{
  OUTLINED_FUNCTION_55();
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v1 + 64));
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t key path getter for SingleDisplaySharingSession.sessionPickerCanceled : SingleDisplaySharingSession@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
}

uint64_t key path setter for SingleDisplaySharingSession.sessionPickerCanceled : SingleDisplaySharingSession(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 80);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
  *(a2 + 80) = v6;
  *(a2 + 88) = v5;
  return result;
}

uint64_t SingleDisplaySharingSession.sessionPickerCanceled.setter()
{
  OUTLINED_FUNCTION_55();
  result = outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v1 + 80));
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t SingleDisplaySharingSession.begin(with:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21ScreenShareAttributesVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v48 - v3;
  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ScreenShareAttributes(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  v18 = [objc_opt_self() mainScreen];
  [v18 scale];
  v20 = v19;

  UUID.init()();
  v21 = objc_opt_self();
  v22 = [v21 defaultCornerRadius];
  v23 = v22;
  if (v22)
  {
    [v22 doubleValue];
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = [v21 defaultScaleFactor];
  [v26 floatValue];
  v28 = v27;

  (*(v7 + 32))(v17, v10, v5);
  *&v17[v11[5]] = 1;
  *&v17[v11[6]] = v20;
  v29 = &v17[v11[7]];
  *v29 = v25;
  v29[8] = v23 == 0;
  *&v17[v11[8]] = v28;
  v30 = &v17[v11[9]];
  *v30 = 0u;
  *(v30 + 1) = 0u;
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_7();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, &static Log.screenSharing);
  outlined init with copy of ScreenShareAttributes(v17, v14);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49 = v48;
    *v34 = 136315138;
    outlined init with copy of ScreenShareAttributes(v14, v4);
    OUTLINED_FUNCTION_2_84();
    specialized >> prefix<A>(_:)();
    v35 = v1;
    v37 = v36;
    v39 = v38;
    outlined destroy of ScreenShareAttributes?(v4);
    outlined destroy of ScreenShareAttributes(v14);
    v40 = v37;
    v1 = v35;
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v39, &v49);

    *(v34 + 4) = v41;
    _os_log_impl(&dword_1BBC58000, v32, v33, "Began single display sharing session with attributes %s", v34, 0xCu);
    v42 = v48;
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x1BFB23DF0](v42, -1, -1);
    MEMORY[0x1BFB23DF0](v34, -1, -1);
  }

  else
  {

    outlined destroy of ScreenShareAttributes(v14);
  }

  v43 = *v1;
  if (*v1)
  {
    outlined init with copy of ScreenShareAttributes(v17, v4);
    v44 = OUTLINED_FUNCTION_2_84();
    v43(v44);
    outlined destroy of ScreenShareAttributes?(v4);
  }

  v45 = v1[2];
  if (v45)
  {
    outlined init with copy of ScreenShareAttributes(v17, v4);
    v46 = OUTLINED_FUNCTION_2_84();
    v45(v46);
    outlined destroy of ScreenShareAttributes?(v4);
  }

  return outlined destroy of ScreenShareAttributes(v17);
}

Swift::Void __swiftcall SingleDisplaySharingSession.end()()
{
  v1 = v0;
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_7();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Log.screenSharing);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Ending single display sharing session", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  v6 = *(v1 + 32);
  if (v6)
  {
    v6();
  }
}

double SingleDisplaySharingSession.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 SingleDisplaySharingSession.init(sessionDidCreateNewSession:sessionDidBegin:sessionDidEnd:sessionDidChangeAttributes:sessionDidChangeContent:sessionPickerCanceled:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  return result;
}

uint64_t protocol witness for ScreenSharingSessionProvider.sessionDidCreateNewSession.getter in conformance SingleDisplaySharingSession()
{
  v1 = *v0;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(*v0);
  return v1;
}

uint64_t protocol witness for ScreenSharingSessionProvider.sessionDidBegin.getter in conformance SingleDisplaySharingSession()
{
  v1 = *(v0 + 16);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v1);
  return v1;
}

uint64_t protocol witness for ScreenSharingSessionProvider.sessionDidEnd.getter in conformance SingleDisplaySharingSession()
{
  v1 = *(v0 + 32);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v1);
  return v1;
}

uint64_t protocol witness for ScreenSharingSessionProvider.sessionDidChangeAttributes.getter in conformance SingleDisplaySharingSession()
{
  v1 = *(v0 + 48);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v1);
  return v1;
}

uint64_t protocol witness for ScreenSharingSessionProvider.sessionDidChangeContent.getter in conformance SingleDisplaySharingSession()
{
  v1 = *(v0 + 64);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v1);
  return v1;
}

uint64_t protocol witness for ScreenSharingSessionProvider.sessionPickerCanceled.getter in conformance SingleDisplaySharingSession()
{
  v1 = *(v0 + 80);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v1);
  return v1;
}

uint64_t outlined init with copy of ScreenShareAttributes(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenShareAttributes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ScreenShareAttributes(uint64_t a1)
{
  v2 = type metadata accessor for ScreenShareAttributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of ScreenShareAttributes?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21ScreenShareAttributesVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata completion function for ScreenShareAttributes()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGRect(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Double?()
{
  if (!lazy cache variable for type metadata for Double?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Double?);
    }
  }
}

uint64_t getEnumTagSinglePayload for ScreenShareAttributes.Style(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScreenShareAttributes.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t type metadata completion function for ScreenSharingSessionConfiguration()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t getEnumTagSinglePayload for SingleDisplaySharingSession(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for SingleDisplaySharingSession(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t JoinButtonViewModel.__allocating_init(service:letMeInViewModel:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  JoinButtonViewModel.init(service:letMeInViewModel:)(a1, a2);
  return v4;
}

void *JoinButtonViewModel.init(service:letMeInViewModel:)(__int128 *a1, uint64_t a2)
{
  v2[8] = 0;
  v2[9] = 0;
  closure #1 in variable initialization expression of JoinButtonViewModel.flexibleGlass();
  outlined init with take of TapInteractionHandler(a1, (v2 + 3));
  v2[2] = a2;
  return v2;
}

uint64_t JoinButtonViewModel.controlType.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) != 0 && (v0 = [objc_opt_self() currentDevice], v1 = objc_msgSend(v0, sel_userInterfaceIdiom), v0, !v1))
  {
    return JoinButtonViewModel.staticIconConfig.getter();
  }

  else
  {
    return JoinButtonViewModel.textConfig.getter();
  }
}

uint64_t JoinButtonViewModel.staticIconConfig.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleVyytGMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  if (*(v0 + 72))
  {
    v5 = *(v0 + 72);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI16IconButtonConfigCyytGMd);
    JoinButtonViewModel.buttonStyle.getter(v4);
    v6 = [objc_opt_self() conversationKit];
    v7 = OUTLINED_FUNCTION_1_85();
    v8.super.isa = v6;
    OUTLINED_FUNCTION_17_0(v7, v9, 0x61737265766E6F43, 0xEF74694B6E6F6974, v8);

    swift_allocObject();
    swift_weakInit();
    v5 = IconButtonConfig<A>.init(style:title:hasBadge:accessibilityLabel:accessibilityValue:accessibilityIdentifier:enabled:didTap:)();
    *(v1 + 72) = v5;
  }

  return v5;
}

uint64_t JoinButtonViewModel.textConfig.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CallControlTextButtonStyle(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v1 + 64))
  {
    v6 = *(v1 + 64);
  }

  else
  {
    v7 = [objc_opt_self() systemGreenColor];
    v8 = Color.init(uiColor:)();
    v9 = *(v2 + 20);
    v10 = type metadata accessor for ButtonRole();
    __swift_storeEnumTagSinglePayload(v5 + v9, 1, 1, v10);
    *v5 = v8;
    v11 = objc_opt_self();
    v12 = [v11 conversationKit];
    v13.super.isa = v12;
    v14 = OUTLINED_FUNCTION_17_0(1852403530, 0xE400000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974, v13);
    v16 = v15;

    v17 = [v11 conversationKit];
    v18 = OUTLINED_FUNCTION_1_85();
    v19.super.isa = v17;
    v21 = OUTLINED_FUNCTION_17_0(v18, v20, 0x61737265766E6F43, 0xEF74694B6E6F6974, v19);
    v23 = v22;

    v24 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for CallControlsTextButtonConfiguration(0);
    swift_allocObject();
    v6 = CallControlsTextButtonConfiguration.init(buttonStyle:text:accessibilityLabel:accessibilityIdentifier:enabled:didTap:)(v5, v14, v16, v21, v23, 0x747475426E696F6ALL, 0xEA00000000006E6FLL, 1, partial apply for closure #1 in JoinButtonViewModel.textConfig.getter, v24);
    *(v1 + 64) = v6;
  }

  return v6;
}

void *JoinButtonViewModel.handoffInProgress.getter()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  result = (*(v2 + 8))(v1, v2);
  if (result)
  {
    v4 = result;
    v5 = [result localParticipantAssociation];
    if (v5)
    {

      v6 = [v4 state];
      return (v6 == 1);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t JoinButtonViewModel.enabled(for:)(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  switch(BYTE4(a1) >> 5)
  {
    case 1:
      if ((a1 & 0x100000000) == 0)
      {
        goto LABEL_12;
      }

      v3 = JoinButtonViewModel.handoffInProgress.getter() ^ 1;
      break;
    case 2:
      v3 = BYTE4(a1) ^ 1;
      break;
    case 3:
      if (BYTE4(a1) == 96 && a2 == 3)
      {
        v6 = *(v2 + 16);
        swift_beginAccess();
        v3 = *(v6 + 16) ^ 1;
      }

      else
      {
LABEL_12:
        v3 = 0;
      }

      break;
    default:
      return v3 & 1;
  }

  return v3 & 1;
}

Swift::Void __swiftcall JoinButtonViewModel.didTap()()
{
  LetMeInCountdownViewModel.resetCountdown()();
  OUTLINED_FUNCTION_4_67();
  v0 = OUTLINED_FUNCTION_2_14();
  v1(v0);
}

Swift::Void __swiftcall JoinButtonViewModel.onAppearance()()
{
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  v1 = OUTLINED_FUNCTION_2_14();
  if (v2(v1) == 96)
  {
    OUTLINED_FUNCTION_4_67();
    v3 = OUTLINED_FUNCTION_2_14();
    if (v4(v3) == 3)
    {
      OUTLINED_FUNCTION_4_67();
      v5 = OUTLINED_FUNCTION_2_14();
      v6(v5);
    }
  }
}

uint64_t JoinButtonViewModel.buttonStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for IconButtonWidthRestriction();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Font.Leading();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Image.Scale();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6_GlassVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVyyt_GMd);
  v29 = *(v14 - 8);
  v30 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v17 = [objc_opt_self() systemGreenColor];
  v18 = Color.init(uiColor:)();
  *(&v36 + 1) = MEMORY[0x1E69815C0];
  v37 = MEMORY[0x1E6981568];
  *&v35 = v18;
  v19 = OBJC_IVAR____TtC15ConversationKit19JoinButtonViewModel_flexibleGlass;
  v20 = type metadata accessor for _Glass();
  (*(*(v20 - 8) + 16))(v13, v1 + v19, v20);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v20);
  static Font.Weight.bold.getter();
  static Color.white.getter();
  (*(v8 + 104))(v10, *MEMORY[0x1E69816E0], v7);
  static IconButtonStyle.Defaults.phone.iconFont.getter();
  static IconButtonStyle.SystemSymbol<A>.iosCallControl(name:color:background:glass:scale:font:weight:)();

  (*(v8 + 8))(v10, v7);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s7SwiftUI6_GlassVSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v35, &_s7SwiftUI10ShapeStyle_pSgMd);
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v20);
  static Color.white.getter();
  static Font.subheadline.getter();
  v21 = v27;
  v22 = v28;
  (*(v27 + 104))(v6, *MEMORY[0x1E6980EA8], v28);
  Font.leading(_:)();

  (*(v21 + 8))(v6, v22);
  static IconButtonStyle.Defaults.phone.iconWidth.getter();
  v24 = v31;
  v23 = v32;
  v25 = v33;
  (*(v32 + 104))(v31, *MEMORY[0x1E6995BD0], v33);
  static IconButtonStyle.iosCallControl(symbol:background:glass:labelColor:labelFont:labelPosition:maxWidth:width:widthRestriction:spacing:)();

  (*(v23 + 8))(v24, v25);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s7SwiftUI6_GlassVSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v35, &_s7SwiftUI10ShapeStyle_pSgMd);
  return (*(v29 + 8))(v16, v30);
}

uint64_t closure #1 in JoinButtonViewModel.textConfig.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    JoinButtonViewModel.didTap()();
  }

  return result;
}

uint64_t closure #1 in variable initialization expression of JoinButtonViewModel.flexibleGlass()
{
  v0 = type metadata accessor for _Glass();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static _Glass.regular.getter();
  v4 = [objc_opt_self() systemGreenColor];
  Color.init(uiColor:)();
  _Glass.tintColor(_:)();

  (*(v1 + 8))(v3, v0);
  static _Glass.Options.supportsFlexInteraction.getter();
  return _Glass.options.setter();
}

uint64_t JoinButtonViewModel.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  v1 = OBJC_IVAR____TtC15ConversationKit19JoinButtonViewModel_flexibleGlass;
  type metadata accessor for _Glass();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t JoinButtonViewModel.__deallocating_deinit()
{
  JoinButtonViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JoinButtonViewModel()
{
  result = type metadata singleton initialization cache for JoinButtonViewModel;
  if (!type metadata singleton initialization cache for JoinButtonViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for JoinButtonViewModel()
{
  result = type metadata accessor for _Glass();
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

uint64_t key path getter for CameraViewController.cameraDelegate : CameraViewController@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit20CameraViewController_cameraDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for CameraViewController.cameraDelegate : CameraViewController(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit20CameraViewController_cameraDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t CameraViewController.cameraDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit20CameraViewController_cameraDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CameraViewController.cameraDelegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit20CameraViewController_cameraDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

void CameraViewController.effectBrowserViewController(_:didSelectAppWith:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BC4BA940;
  v10 = MEMORY[0x1E69E6158];
  if (a3)
  {

    v11 = String.init<A>(reflecting:)();
    v13 = v12;
  }

  else
  {
    v13 = 0xE300000000000000;
    v11 = 7104878;
  }

  *(v9 + 56) = v10;
  *(v9 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (a3)
  {
    v14 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v14 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      v15 = &v3[OBJC_IVAR____TtC15ConversationKit20CameraViewController_cameraDelegate];
      OUTLINED_FUNCTION_4_0();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v15 + 1);
        v17 = swift_getObjectType();
        (*(v16 + 8))(a2, a3, v17, v16);
        swift_unknownObjectRelease();
      }
    }

    v18 = MEMORY[0x1BFB209B0](a2, a3);
  }

  else
  {
    v18 = 0;
  }

  v19.receiver = v4;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel_effectBrowserViewController_didSelectAppWithIdentifier_, a1, v18);
}

uint64_t CameraViewController.effectBrowserViewController(_:didSelect:)(uint64_t a1, uint64_t a2)
{
  v9.receiver = v2;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_effectBrowserViewController_didSelectEffect_, a1, a2);
  v5 = &v2[OBJC_IVAR____TtC15ConversationKit20CameraViewController_cameraDelegate];
  OUTLINED_FUNCTION_4_0();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(a2, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CameraViewController.effectBrowserViewController(_:didDismissPickerFor:)(uint64_t a1, void *a2)
{
  v4 = &v2[OBJC_IVAR____TtC15ConversationKit20CameraViewController_cameraDelegate];
  OUTLINED_FUNCTION_4_0();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v8 = [a2 identifier];
    (*(v6 + 24))(v8, [v2 effectsState], ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

id CameraViewController.__allocating_init(captureMode:devicePosition:flashMode:aspectRatioCrop:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_4_44());
  OUTLINED_FUNCTION_1_86();

  return [v1 v2];
}

id CameraViewController.init(captureMode:devicePosition:flashMode:aspectRatioCrop:)()
{
  OUTLINED_FUNCTION_4_44();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC15ConversationKit20CameraViewController_cameraDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_1_86();
  return objc_msgSendSuper2(v2, v3, v0, ObjectType);
}

id CameraViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int MovingToScreeningStateService.Error.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MovingToScreeningStateService.Error()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MovingToScreeningStateService.Error.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t MovingToScreeningStateService.logger.getter()
{
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_46();

  return v1(v0);
}

uint64_t type metadata accessor for MovingToScreeningStateService()
{
  result = type metadata singleton initialization cache for MovingToScreeningStateService;
  if (!type metadata singleton initialization cache for MovingToScreeningStateService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MovingToScreeningStateService.getStreamToken.getter()
{
  type metadata accessor for MovingToScreeningStateService();
  OUTLINED_FUNCTION_11_1();
  return OUTLINED_FUNCTION_46();
}

uint64_t MovingToScreeningStateService.getReceptionistState.getter()
{
  type metadata accessor for MovingToScreeningStateService();
  OUTLINED_FUNCTION_11_1();
  return OUTLINED_FUNCTION_46();
}

uint64_t MovingToScreeningStateService.getCall.getter()
{
  type metadata accessor for MovingToScreeningStateService();
  OUTLINED_FUNCTION_11_1();
  return OUTLINED_FUNCTION_46();
}

uint64_t MovingToScreeningStateService.onProviderCreation.getter()
{
  type metadata accessor for MovingToScreeningStateService();
  OUTLINED_FUNCTION_11_1();
  return OUTLINED_FUNCTION_46();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MovingToScreeningStateService.startScreening(callUUID:)(Swift::String callUUID)
{
  v3 = v1;
  object = callUUID._object;
  countAndFlagsBits = callUUID._countAndFlagsBits;
  v6 = type metadata accessor for MovingToScreeningStateService();
  OUTLINED_FUNCTION_1();
  v66 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v67 = v9;
  v69 = &v59[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v68 = &v59[-v11];
  v65 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v63 = v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v64 = &v59[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v1 + v6[6]);
  v70 = countAndFlagsBits;
  v17 = v16(countAndFlagsBits, object, v14);
  v18 = *(v1 + v6[5]);
  type metadata accessor for Defaults();
  swift_allocObject();
  v19 = *Defaults.init()();
  v20 = (*(v19 + 816))();

  v21 = Logger.logObject.getter();
  if ((v20 & 1) == 0 && (v18 & 1) == 0 && !v17)
  {
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *(v23 + 4) = OUTLINED_FUNCTION_7_55(4.8751e-34);
      OUTLINED_FUNCTION_3_23(&dword_1BBC58000, v24, v25, "Recieved 0 stream token for call: %{public}s");
      OUTLINED_FUNCTION_28_2();
      MEMORY[0x1BFB23DF0](v23, -1, -1);
    }

    lazy protocol witness table accessor for type MovingToScreeningStateService.Error and conformance MovingToScreeningStateService.Error();
    swift_allocError();
    v27 = 0;
    goto LABEL_7;
  }

  v28 = static os_log_type_t.default.getter();

  v29 = os_log_type_enabled(v21, v28);
  v61 = v17;
  v62 = v2;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v60 = v18;
    v31 = object;
    v32 = v17;
    v33 = v30;
    v71 = swift_slowAlloc();
    *v33 = 136446466;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v31, &v71);
    *(v33 + 12) = 2050;
    *(v33 + 14) = v32;
    object = v31;
    v18 = v60;
    _os_log_impl(&dword_1BBC58000, v21, v28, "Connecting call %{public}s to captionsClient with token %{public}ld", v33, 0x16u);
    OUTLINED_FUNCTION_28_2();
    MEMORY[0x1BFB23DF0](v33, -1, -1);
  }

  swift_allocObject();
  v34 = *Defaults.init()();
  v35 = (*(v34 + 816))();

  if ((v35 & 1) == 0)
  {
    if (v18)
    {
      v38 = (*(v3 + v6[8]))(v70, object);
      if (v38)
      {
        v39 = v38;
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v36 = ReceiptionistCaptionsProviderBuilder.build(with:)(v39);
        v65 = v40;

        goto LABEL_20;
      }

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *(v56 + 4) = OUTLINED_FUNCTION_7_55(4.8751e-34);
        OUTLINED_FUNCTION_3_23(&dword_1BBC58000, v57, v58, "Not able to find call for: %{public}s");
        OUTLINED_FUNCTION_28_2();
        MEMORY[0x1BFB23DF0](v56, -1, -1);
      }
    }

    else
    {
      (*(v63 + 16))(v64, v3, v65);
      v41 = objc_allocWithZone(type metadata accessor for CaptionsClientParticipantCaptionsProvider());
      CaptionsClientParticipantCaptionsProvider.init(logger:token:usage:)();
      if (v42)
      {
        v36 = v42;
        v37 = &protocol witness table for CaptionsClientParticipantCaptionsProvider;
        goto LABEL_19;
      }
    }

    lazy protocol witness table accessor for type MovingToScreeningStateService.Error and conformance MovingToScreeningStateService.Error();
    swift_allocError();
    v27 = 1;
LABEL_7:
    *v26 = v27;
    swift_willThrow();
    return;
  }

  type metadata accessor for MockCaptionsProvider();
  swift_allocObject();
  v36 = MockCaptionsProvider.init()();
  v37 = &protocol witness table for MockCaptionsProvider;
LABEL_19:
  v65 = v37;
LABEL_20:
  swift_unknownObjectRetain();
  v43 = v68;
  static TaskPriority.userInitiated.getter();
  v44 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v44);
  v45 = v69;
  outlined init with copy of MovingToScreeningStateService(v3, v69);
  type metadata accessor for MainActor();

  v46 = static MainActor.shared.getter();
  v47 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v48 = (v67 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  v50 = MEMORY[0x1E69E85E0];
  *(v49 + 16) = v46;
  *(v49 + 24) = v50;
  outlined init with take of MovingToScreeningStateService(v45, v49 + v47);
  v51 = (v49 + v48);
  v52 = v65;
  *v51 = v36;
  v51[1] = v52;
  v53 = (v49 + ((v48 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v53 = v70;
  v53[1] = object;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  swift_unknownObjectRelease();
}

uint64_t closure #2 in MovingToScreeningStateService.startScreening(callUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for MainActor();
  v8[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[8] = v10;
  v8[9] = v9;

  return MEMORY[0x1EEE6DFA0](closure #2 in MovingToScreeningStateService.startScreening(callUUID:), v10, v9);
}

uint64_t closure #2 in MovingToScreeningStateService.startScreening(callUUID:)()
{
  OUTLINED_FUNCTION_24_0();
  v1 = v0[2];
  v2 = (v1 + *(type metadata accessor for MovingToScreeningStateService() + 36));
  v9 = (*v2 + **v2);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = closure #2 in MovingToScreeningStateService.startScreening(callUUID:);
  v4 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];

  return v9(v7, v6, v4, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](closure #2 in MovingToScreeningStateService.startScreening(callUUID:), v3, v2);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = *(v0 + 8);

  return v1();
}

int *MovingToScreeningStateService.init(logger:receptionistEnabled:getStreamToken:getReceptionistState:getCall:onProviderCreation:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v19 + 32))(a9, a1);
  result = type metadata accessor for MovingToScreeningStateService();
  *(a9 + result[5]) = a2;
  v21 = (a9 + result[6]);
  *v21 = a3;
  v21[1] = a4;
  v22 = (a9 + result[7]);
  *v22 = a5;
  v22[1] = a6;
  v23 = (a9 + result[8]);
  *v23 = a7;
  v23[1] = a8;
  v24 = (a9 + result[9]);
  *v24 = a10;
  v24[1] = a11;
  return result;
}

unint64_t lazy protocol witness table accessor for type MovingToScreeningStateService.Error and conformance MovingToScreeningStateService.Error()
{
  result = lazy protocol witness table cache variable for type MovingToScreeningStateService.Error and conformance MovingToScreeningStateService.Error;
  if (!lazy protocol witness table cache variable for type MovingToScreeningStateService.Error and conformance MovingToScreeningStateService.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MovingToScreeningStateService.Error and conformance MovingToScreeningStateService.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MovingToScreeningStateService.Error and conformance MovingToScreeningStateService.Error;
  if (!lazy protocol witness table cache variable for type MovingToScreeningStateService.Error and conformance MovingToScreeningStateService.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MovingToScreeningStateService.Error and conformance MovingToScreeningStateService.Error);
  }

  return result;
}

uint64_t outlined init with copy of MovingToScreeningStateService(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MovingToScreeningStateService();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of MovingToScreeningStateService(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MovingToScreeningStateService();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in MovingToScreeningStateService.startScreening(callUUID:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MovingToScreeningStateService() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = partial apply for closure #2 in RecentsListViewController.presentBlockAllAction(of:);

  return closure #2 in MovingToScreeningStateService.startScreening(callUUID:)(a1, v9, v10, v1 + v6, v12, v13, v14, v15);
}

unint64_t type metadata completion function for MovingToScreeningStateService()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MovingToScreeningStateService.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t key path getter for InsulatingView.content : <A>InsulatingView<A>@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

id InsulatingView.content.getter()
{
  v1 = direct field offset for InsulatingView.content;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);

  return v2;
}

void InsulatingView.content.setter(uint64_t a1)
{
  v3 = direct field offset for InsulatingView.content;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for InsulatingView.forwardHits : <A>InsulatingView<A>@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result & 1;
  return result;
}

uint64_t InsulatingView.forwardHits.getter()
{
  v1 = direct field offset for InsulatingView.forwardHits;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t InsulatingView.forwardHits.setter(char a1)
{
  v3 = direct field offset for InsulatingView.forwardHits;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

id InsulatingView.__allocating_init(frame:content:forwardHits:)(void *a1)
{
  OUTLINED_FUNCTION_20_2();
  v3 = objc_allocWithZone(v1);
  OUTLINED_FUNCTION_18_1();
  return InsulatingView.init(frame:content:forwardHits:)(a1);
}

id InsulatingView.init(frame:content:forwardHits:)(void *a1)
{
  OUTLINED_FUNCTION_20_2();
  *(v1 + direct field offset for InsulatingView.content) = v3;
  *(v1 + direct field offset for InsulatingView.forwardHits) = v4;
  v13 = type metadata accessor for InsulatingView();
  v5 = a1;
  v6 = OUTLINED_FUNCTION_18_1();
  v9 = objc_msgSendSuper2(v7, v8, v6, v1, v13);
  v10 = v5;
  v11 = v9;
  [v11 bounds];
  [v10 setBounds_];
  [v11 center];
  [v10 setCenter_];
  [v10 setAutoresizingMask_];
  [v10 _setHostsLayoutEngine_];
  [v11 addSubview_];
  [v10 setNeedsLayout];
  [v10 layoutIfNeeded];

  [v11 setAutoresizingMask_];
  return v11;
}

id InsulatingView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void __swiftcall InsulatingView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  v7 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v3) + 0x80))(with.value.super.isa, *&with.is_nil))
  {
    v8 = *((*v7 & *v3) + 0x68);
    v9 = v8();
    [v3 convertPoint:v9 toCoordinateSpace:{x, y}];
    v11 = v10;
    v13 = v12;

    v14 = v8();
    [v14 hitTest:isa withEvent:{v11, v13}];
  }
}

id @objc InsulatingView.hitTest(_:with:)(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v16.value.super.isa = a5;
  InsulatingView.hitTest(_:with:)(v11, __PAIR128__(*&a3, *&a2), v16);
  v13 = v12;

  return v13;
}

id InsulatingView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id InsulatingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InsulatingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ScreenSharingBroadcasterToolbar.toolbarPlacement.getter(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(a1, 0);
    (*(v6 + 8))(v9, v4);
    return v12[15];
  }

  return a1;
}

uint64_t ScreenSharingBroadcasterToolbar.body.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  a2 &= 1u;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  v11 = a4 & 1;
  *(v10 + 40) = a4 & 1;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = v11;
  *a5 = swift_getKeyPath();
  *(a5 + 8) = 0;
  *(a5 + 16) = partial apply for closure #1 in ScreenSharingBroadcasterToolbar.body.getter;
  *(a5 + 24) = v10;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = partial apply for closure #2 in ScreenSharingBroadcasterToolbar.body.getter;
  *(a5 + 72) = v12;
  outlined copy of Environment<Edge>.Content(a1, a2);

  outlined copy of Environment<Edge>.Content(a1, a2);
}

uint64_t closure #1 in ScreenSharingBroadcasterToolbar.body.getter@<X0>(uint64_t a1@<X2>, char a2@<W3>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v10 = (*(v7 + 8))(v9, v6);
    a1 = v17[1];
  }

  v12 = (*(*a1 + 248))(v10);
  v14 = v13;

  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMd) + 40);
  *(a3 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  result = swift_storeEnumTagMultiPayload();
  *a3 = v12;
  a3[1] = v14;
  return result;
}

uint64_t closure #2 in ScreenSharingBroadcasterToolbar.body.getter(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  a2 &= 1u;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4 & 1;
  outlined copy of Environment<Edge>.Content(a1, a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  Button.init(action:label:)();
  ScreenSharingBroadcasterToolbar.toolbarPlacement.getter(a1, a2);
  v13 = Axis.rawValue.getter();
  v15[3] = v13 != Axis.rawValue.getter();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Label<Text, Image>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMd);
  lazy protocol witness table accessor for type ScreenSharingToolbarButtonStyle and conformance ScreenSharingToolbarButtonStyle();
  View.buttonStyle<A>(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t outlined copy of Environment<Edge>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t closure #1 in closure #2 in ScreenSharingBroadcasterToolbar.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a4 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v10 = (*(v7 + 8))(v9, v6);
    a3 = v13[1];
  }

  (*(*a3 + 232))(v10);
}

uint64_t closure #1 in closure #2 in closure #2 in ScreenSharingBroadcasterToolbar.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() conversationKit];
  v10._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._object = 0x80000001BC500F50;
  v4._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v10);

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t closure #2 in closure #2 in closure #2 in ScreenSharingBroadcasterToolbar.body.getter@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t ScreenSharingBroadcasterToolbar.init()()
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for ScreenSharingBroadcasterViewModel();
  OUTLINED_FUNCTION_0_102();
  lazy protocol witness table accessor for type ScreenSharingBroadcasterViewModel and conformance ScreenSharingBroadcasterViewModel(v1, v2);
  Environment.init<A>(_:)();
  return KeyPath;
}

uint64_t ScreenSharingBroadcasterToolbar.init(toolbarPlacement:)(uint64_t a1)
{
  type metadata accessor for ScreenSharingBroadcasterViewModel();
  OUTLINED_FUNCTION_0_102();
  lazy protocol witness table accessor for type ScreenSharingBroadcasterViewModel and conformance ScreenSharingBroadcasterViewModel(v2, v3);
  Environment.init<A>(_:)();
  return a1;
}

uint64_t ScreenSharingBroadcasterView.model.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit33ScreenSharingBroadcasterViewModelCGMd);
  State.wrappedValue.getter();
  return v1;
}

uint64_t key path getter for ScreenSharingBroadcasterView.model : ScreenSharingBroadcasterView@<X0>(uint64_t *a1@<X8>)
{
  result = ScreenSharingBroadcasterView.model.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for ScreenSharingBroadcasterView.model : ScreenSharingBroadcasterView()
{

  return ScreenSharingBroadcasterView.model.setter();
}

void (*ScreenSharingBroadcasterView.model.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v6;
  v6[6] = a2;
  v6[7] = a3;
  *v6 = a2;
  v6[1] = a3;

  v6[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit33ScreenSharingBroadcasterViewModelCGMd);
  State.wrappedValue.getter();
  return FindoView.viewModel.modify;
}

uint64_t ScreenSharingBroadcasterView.$model.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit33ScreenSharingBroadcasterViewModelCGMd);
  State.projectedValue.getter();
  return v1;
}

uint64_t ScreenSharingBroadcasterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ScreenSharingContentViewVy7SwiftUI08ModifiedE0VyAA20SystemRootLayerProxyVAA19BezelEffectModifierVGAA17TransitioningTextVyAA07FadeOutS12InTransitionVGAA0cD18BroadcasterToolbarVSgGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v47 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit020ScreenSharingContentC0VyAA08ModifiedK0VyAH20SystemRootLayerProxyVAH19BezelEffectModifierVGAH17TransitioningTextVyAH07FadeOutV12InTransitionVGAH0iJ18BroadcasterToolbarVSgG_AH0ijzC5ModelCQo_Md);
  OUTLINED_FUNCTION_1();
  v53 = v10;
  v54 = v9;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_1();
  v48 = v12;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit013ScreenSharingdE0VyACyAJ20SystemRootLayerProxyVAJ19BezelEffectModifierVGAJ17TransitioningTextVyAJ07FadeOutV12InTransitionVGAJ0kL18BroadcasterToolbarVSgG_AJ0klzE5ModelCQo_AA012_TransactionS0VGMd) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_1();
  v49 = v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit013ScreenSharingdE0VyACyAJ20SystemRootLayerProxyVAJ19BezelEffectModifierVGAJ17TransitioningTextVyAJ07FadeOutV12InTransitionVGAJ0kL18BroadcasterToolbarVSgG_AJ0klzE5ModelCQo_AA012_TransactionS0VGAA010_AnimationS0VySbGGMd) - 8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_1();
  v52 = v16;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit013ScreenSharingdE0VyACyAJ20SystemRootLayerProxyVAJ19BezelEffectModifierVGAJ17TransitioningTextVyAJ07FadeOutV12InTransitionVGAJ0kL18BroadcasterToolbarVSgG_AJ0klzE5ModelCQo_AA012_TransactionS0VGAA010_AnimationS0VySbGGAA30_SafeAreaRegionsIgnoringLayoutVGMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_1();
  v51 = v18;
  v60 = a1;
  v61 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit33ScreenSharingBroadcasterViewModelCGMd);
  OUTLINED_FUNCTION_9_47();
  v47[1] = v19;
  v20 = State.wrappedValue.getter();
  v21 = (*(*v58 + 256))(v20);

  OUTLINED_FUNCTION_24();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  OUTLINED_FUNCTION_24();
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  OUTLINED_FUNCTION_24();
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v25 = v5[17];
  *&v8[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  swift_storeEnumTagMultiPayload();
  v8[v5[18]] = (v21 & 1) == 0;
  v26 = &v8[v5[19]];
  *v26 = partial apply for closure #1 in ScreenSharingBroadcasterView.body.getter;
  v26[1] = v22;
  v27 = &v8[v5[20]];
  *v27 = partial apply for closure #2 in ScreenSharingBroadcasterView.body.getter;
  v27[1] = v23;
  v28 = &v8[v5[21]];
  *v28 = partial apply for closure #3 in ScreenSharingBroadcasterView.body.getter;
  v28[1] = v24;
  v60 = a1;
  v61 = a2;
  swift_retain_n();
  swift_retain_n();
  OUTLINED_FUNCTION_9_47();
  State.wrappedValue.getter();
  type metadata accessor for ScreenSharingBroadcasterViewModel();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ScreenSharingContentView<ModifiedContent<SystemRootLayerProxy, BezelEffectModifier>, TransitioningText<FadeOutFadeInTransition>, ScreenSharingBroadcasterToolbar?> and conformance ScreenSharingContentView<A, B, C>, &_s15ConversationKit24ScreenSharingContentViewVy7SwiftUI08ModifiedE0VyAA20SystemRootLayerProxyVAA19BezelEffectModifierVGAA17TransitioningTextVyAA07FadeOutS12InTransitionVGAA0cD18BroadcasterToolbarVSgGMd);
  OUTLINED_FUNCTION_0_102();
  lazy protocol witness table accessor for type ScreenSharingBroadcasterViewModel and conformance ScreenSharingBroadcasterViewModel(v29, v30);
  v31 = v48;
  View.environment<A>(_:)();

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit24ScreenSharingContentViewVy7SwiftUI08ModifiedE0VyAA20SystemRootLayerProxyVAA19BezelEffectModifierVGAA17TransitioningTextVyAA07FadeOutS12InTransitionVGAA0cD18BroadcasterToolbarVSgGMd);
  v32 = v49;
  (*(v53 + 32))(v49, v31, v54);
  v33 = (v32 + *(v50 + 44));
  *v33 = closure #4 in ScreenSharingBroadcasterView.body.getter;
  v33[1] = 0;
  v34 = static Animation.default.getter();
  v60 = a1;
  v61 = a2;
  OUTLINED_FUNCTION_9_47();
  v35 = State.wrappedValue.getter();
  LOBYTE(v31) = (*(*v58 + 256))(v35);

  v36 = v32;
  v37 = v52;
  _s10Foundation3URLVSgWObTm_0(v36, v52, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit013ScreenSharingdE0VyACyAJ20SystemRootLayerProxyVAJ19BezelEffectModifierVGAJ17TransitioningTextVyAJ07FadeOutV12InTransitionVGAJ0kL18BroadcasterToolbarVSgG_AJ0klzE5ModelCQo_AA012_TransactionS0VGMd);
  v38 = v37 + *(v55 + 44);
  *v38 = v34;
  *(v38 + 8) = v31 & 1;
  v39 = static SafeAreaRegions.keyboard.getter();
  v40 = static Edge.Set.all.getter();
  v41 = v51;
  _s10Foundation3URLVSgWObTm_0(v37, v51, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit013ScreenSharingdE0VyACyAJ20SystemRootLayerProxyVAJ19BezelEffectModifierVGAJ17TransitioningTextVyAJ07FadeOutV12InTransitionVGAJ0kL18BroadcasterToolbarVSgG_AJ0klzE5ModelCQo_AA012_TransactionS0VGAA010_AnimationS0VySbGGMd);
  v42 = v41 + *(v56 + 36);
  *v42 = v39;
  *(v42 + 8) = v40;
  v58 = a1;
  v59 = a2;
  State.projectedValue.getter();
  v43 = v60;
  v44 = v61;
  v45 = v62;
  swift_getKeyPath();
  v60 = v43;
  v61 = v44;
  v62 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy15ConversationKit33ScreenSharingBroadcasterViewModelCGMd);
  OUTLINED_FUNCTION_9_47();
  Binding.subscript.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit27RemoteControlOnboardingViewVSgSgMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier>, _AnimationModifier<Bool>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type RemoteControlOnboardingView?? and conformance <A> A?();
  View.sheet<A>(isPresented:onDismiss:content:)();

  return sub_1BBCE9124(v41);
}

double closure #1 in ScreenSharingBroadcasterView.body.getter@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit33ScreenSharingBroadcasterViewModelCGMd);
  v2 = State.wrappedValue.getter();
  v3 = (*(*v7 + 264))(v2);

  if (one-time initialization token for forCurrentDisplay != -1)
  {
    swift_once();
  }

  v4 = xmmword_1EBCDAF60;
  result = *(&xmmword_1EBCDAF60 + 1);
  *a1 = v3;
  v6 = *algn_1EBCDAF50;
  *(a1 + 8) = static BezelMetrics.forCurrentDisplay;
  *(a1 + 24) = v6;
  *(a1 + 40) = v4;
  *(a1 + 48) = result;
  return result;
}

uint64_t closure #2 in ScreenSharingBroadcasterView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit33ScreenSharingBroadcasterViewModelCGMd);
  v2 = State.wrappedValue.getter();
  v3 = (*(*v8 + 248))(v2);
  v5 = v4;

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit17TransitioningTextVyAA07FadeOutE12InTransitionVGMd) + 40);
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  result = swift_storeEnumTagMultiPayload();
  *a1 = v3;
  a1[1] = v5;
  return result;
}

uint64_t closure #3 in ScreenSharingBroadcasterView.body.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit33ScreenSharingBroadcasterViewModelCGMd);
  v2 = State.wrappedValue.getter();
  v3 = (*(*v9 + 256))(v2);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    type metadata accessor for ScreenSharingBroadcasterViewModel();
    lazy protocol witness table accessor for type ScreenSharingBroadcasterViewModel and conformance ScreenSharingBroadcasterViewModel(&lazy protocol witness table cache variable for type ScreenSharingBroadcasterViewModel and conformance ScreenSharingBroadcasterViewModel, type metadata accessor for ScreenSharingBroadcasterViewModel);
    result = Environment.init<A>(_:)();
    v6 = 0;
    v8 = v7 & 1;
  }

  else
  {
    KeyPath = 0;
    result = 0;
    v8 = 0;
    v6 = 255;
  }

  *a1 = KeyPath;
  *(a1 + 8) = v6;
  *(a1 + 16) = result;
  *(a1 + 24) = v8;
  return result;
}

uint64_t objectdestroy_5Tm_1()
{

  OUTLINED_FUNCTION_24();

  return swift_deallocObject();
}

uint64_t key path getter for ScreenSharingBroadcasterViewModel.isPresentingOnboardingView : ScreenSharingBroadcasterViewModel()
{
  OUTLINED_FUNCTION_3_14();
  result = (*(v1 + 192))();
  *v0 = result & 1;
  return result;
}

uint64_t closure #5 in ScreenSharingBroadcasterView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v39 = type metadata accessor for RemoteControlOnboardingView();
  MEMORY[0x1EEE9AC00](v39);
  v37 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v36 - v4;
  v6 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit27RemoteControlOnboardingViewVSgMd);
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v36 - v10;
  v11 = type metadata accessor for Participant();
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_opt_self();
  v15 = [v14 sharedInstance];
  v16 = [v15 frontmostAudioOrVideoCall];

  if (v16)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*((*MEMORY[0x1E69E7D40] & *static ScreenSharingInteractionController.shared) + 0x178))(&v42);
    v17 = v42;
    switch(v42 >> 61)
    {
      case 1uLL:
      case 2uLL:
      case 3uLL:
      case 4uLL:

        outlined consume of RemoteControlState(v17);
        goto LABEL_6;
      case 5uLL:

        goto LABEL_6;
      default:
        v36 = a1;
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVSbtMd);
        v20 = swift_projectBox();
        (*(v40 + 16))(v13, v20 + *(v19 + 48), v41);
        outlined consume of RemoteControlState(v17);
        v21 = v16;
        v22 = [v14 &selRef_isOnScreen];
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v23 = static PlaceholderCallCenter.shared;
        objc_allocWithZone(type metadata accessor for CallCenter());
        CallCenter.init(callCenter:placeholderCallCenter:shouldRegisterForMediaControllerChanges:shouldRegisterForReactionsControllerChanges:)(v22, v23, 0, 0);
        v24 = _s15ConversationKit0A15ControlsManagerC10activeCall10callCenterAcA0F0_p_AA0fH8Provider_ptcfCTf4nen_nAA0fH0C_Tg5Tf4enn_nSo6TUCallC_Tt1g5();
        v25 = (*((*MEMORY[0x1E69E7D40] & *v24) + 0x9D8))();
        MEMORY[0x1EEE9AC00](v25);
        *(&v36 - 2) = v13;
        v27 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in closure #5 in ScreenSharingBroadcasterView.body.getter, (&v36 - 4), v26);
        specialized Collection.first.getter(v27, v5);

        if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit11ParticipantVSgMd);
          v28 = 1;
          v29 = v36;
          v31 = v38;
          v30 = v39;
        }

        else
        {
          _s15ConversationKit11ParticipantVWObTm_2(v5, v8, type metadata accessor for Participant);
          v32 = v37;
          _s15ConversationKit11ParticipantVWObTm_2(v8, v37, type metadata accessor for Participant);
          KeyPath = swift_getKeyPath();
          v30 = v39;
          *(v32 + *(v39 + 24)) = KeyPath;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
          swift_storeEnumTagMultiPayload();
          v34 = *(v30 + 20);
          *(v32 + v34) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
          swift_storeEnumTagMultiPayload();
          v35 = v32;
          v31 = v38;
          _s15ConversationKit11ParticipantVWObTm_2(v35, v38, type metadata accessor for RemoteControlOnboardingView);
          v28 = 0;
          v29 = v36;
        }

        __swift_storeEnumTagSinglePayload(v31, v28, 1, v30);
        outlined init with take of RemoteControlOnboardingView?(v31, v29);
        __swift_storeEnumTagSinglePayload(v29, 0, 1, v9);
        result = (*(v40 + 8))(v13, v41);
        break;
    }
  }

  else
  {
LABEL_6:

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v9);
  }

  return result;
}

uint64_t closure #1 in closure #5 in ScreenSharingBroadcasterView.body.getter(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for Participant(0) + 28));
  if (v1)
  {
    v2 = outlined bridged method (ob) of @objc TUHandle.normalizedValue.getter(v1);
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v5 = Participant.handle.getter();
  if (v4)
  {
    if (v2 == v5 && v4 == v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t ScreenSharingBroadcasterView.init(model:)()
{
  type metadata accessor for ScreenSharingBroadcasterViewModel();
  State.init(wrappedValue:)();
  return v1;
}

void *ScreenSharingBroadcasterViewController.bannerPresentationManager.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit38ScreenSharingBroadcasterViewController_bannerPresentationManager);
  v2 = v1;
  return v1;
}

id ScreenSharingBroadcasterViewController.init(bannerPresentationManager:)(void *a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC15ConversationKit38ScreenSharingBroadcasterViewController_bannerPresentationManager] = a1;
  v4 = one-time initialization token for shared;
  v5 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = static ScreenSharingInteractionController.shared;
  type metadata accessor for ScreenSharingBroadcasterViewModel();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC15ConversationKit38ScreenSharingBroadcasterViewController_model] = ScreenSharingBroadcasterViewModel.init(interactionController:bannerPresentationManager:)(v6, a1);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for ScreenSharingBroadcasterViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);

  return v7;
}

id ScreenSharingBroadcasterViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall ScreenSharingBroadcasterViewController.loadView()()
{
  v1 = v0;
  v47.receiver = v0;
  v47.super_class = type metadata accessor for ScreenSharingBroadcasterViewController();
  objc_msgSendSuper2(&v47, sel_loadView);
  [v0 setOverrideUserInterfaceStyle_];
  v2 = OUTLINED_FUNCTION_4_1();
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 clearColor];
  [v3 setBackgroundColor_];

  type metadata accessor for ScreenSharingBroadcasterViewModel();

  State.init(wrappedValue:)();
  lazy protocol witness table accessor for type ScreenSharingBroadcasterView and conformance ScreenSharingBroadcasterView();
  v6 = View.inLockScreenHostingController()();

  v7 = v6;
  v8 = [v7 view];
  if (!v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  v10 = OUTLINED_FUNCTION_4_1();
  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10;
  v12 = [v4 clearColor];
  [v11 setBackgroundColor_];

  v13 = OUTLINED_FUNCTION_5_63();
  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v13;
  v15 = OUTLINED_FUNCTION_4_1();
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v15;
  [v14 addSubview_];

  [v1 addChildViewController_];
  [v7 didMoveToParentViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BC4BA7F0;
  v18 = OUTLINED_FUNCTION_4_1();
  if (!v18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = OUTLINED_FUNCTION_5_63();
  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = v21;
  v23 = [v21 leadingAnchor];

  v24 = OUTLINED_FUNCTION_2_85();
  *(v17 + 32) = v24;
  v25 = OUTLINED_FUNCTION_4_1();
  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v26 = v25;
  v27 = [v25 trailingAnchor];

  v28 = OUTLINED_FUNCTION_5_63();
  if (!v28)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v29 = v28;
  v30 = [v28 trailingAnchor];

  v31 = OUTLINED_FUNCTION_2_85();
  *(v17 + 40) = v31;
  v32 = OUTLINED_FUNCTION_4_1();
  if (!v32)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v33 = v32;
  v34 = [v32 topAnchor];

  v35 = OUTLINED_FUNCTION_5_63();
  if (!v35)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v36 = v35;
  v37 = [v35 topAnchor];

  v38 = OUTLINED_FUNCTION_2_85();
  *(v17 + 48) = v38;
  v39 = OUTLINED_FUNCTION_4_1();

  if (!v39)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v40 = [v39 bottomAnchor];

  v41 = OUTLINED_FUNCTION_5_63();
  if (v41)
  {
    v42 = v41;
    v43 = objc_opt_self();
    v44 = [v42 bottomAnchor];

    v45 = OUTLINED_FUNCTION_2_85();
    *(v17 + 56) = v45;
    type metadata accessor for NSLayoutConstraint();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v43 activateConstraints_];

    return;
  }

LABEL_27:
  __break(1u);
}

id ScreenSharingBroadcasterViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t ScreenSharingBroadcasterViewController.__ivar_destroyer()
{
}

id ScreenSharingBroadcasterViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenSharingBroadcasterViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier>, _AnimationModifier<Bool>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier>, _AnimationModifier<Bool>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier>, _AnimationModifier<Bool>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit013ScreenSharingdE0VyACyAJ20SystemRootLayerProxyVAJ19BezelEffectModifierVGAJ17TransitioningTextVyAJ07FadeOutV12InTransitionVGAJ0kL18BroadcasterToolbarVSgG_AJ0klzE5ModelCQo_AA012_TransactionS0VGAA010_AnimationS0VySbGGAA30_SafeAreaRegionsIgnoringLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier>, _AnimationModifier<Bool>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit013ScreenSharingdE0VyACyAJ20SystemRootLayerProxyVAJ19BezelEffectModifierVGAJ17TransitioningTextVyAJ07FadeOutV12InTransitionVGAJ0kL18BroadcasterToolbarVSgG_AJ0klzE5ModelCQo_AA012_TransactionS0VGAA010_AnimationS0VySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy15ConversationKit013ScreenSharingdE0VyACyAJ20SystemRootLayerProxyVAJ19BezelEffectModifierVGAJ17TransitioningTextVyAJ07FadeOutV12InTransitionVGAJ0kL18BroadcasterToolbarVSgG_AJ0klzE5ModelCQo_AA012_TransactionS0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit24ScreenSharingContentViewVy7SwiftUI08ModifiedE0VyAA20SystemRootLayerProxyVAA19BezelEffectModifierVGAA17TransitioningTextVyAA07FadeOutS12InTransitionVGAA0cD18BroadcasterToolbarVSgGMd);
    type metadata accessor for ScreenSharingBroadcasterViewModel();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ScreenSharingContentView<ModifiedContent<SystemRootLayerProxy, BezelEffectModifier>, TransitioningText<FadeOutFadeInTransition>, ScreenSharingBroadcasterToolbar?> and conformance ScreenSharingContentView<A, B, C>, &_s15ConversationKit24ScreenSharingContentViewVy7SwiftUI08ModifiedE0VyAA20SystemRootLayerProxyVAA19BezelEffectModifierVGAA17TransitioningTextVyAA07FadeOutS12InTransitionVGAA0cD18BroadcasterToolbarVSgGMd);
    lazy protocol witness table accessor for type ScreenSharingBroadcasterViewModel and conformance ScreenSharingBroadcasterViewModel(&lazy protocol witness table cache variable for type ScreenSharingBroadcasterViewModel and conformance ScreenSharingBroadcasterViewModel, type metadata accessor for ScreenSharingBroadcasterViewModel);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.environment<A>(_:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RemoteControlOnboardingView?? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type RemoteControlOnboardingView?? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type RemoteControlOnboardingView?? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit27RemoteControlOnboardingViewVSgSgMd);
    lazy protocol witness table accessor for type RemoteControlOnboardingView? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlOnboardingView?? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RemoteControlOnboardingView? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type RemoteControlOnboardingView? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type RemoteControlOnboardingView? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit27RemoteControlOnboardingViewVSgMd);
    lazy protocol witness table accessor for type ScreenSharingBroadcasterViewModel and conformance ScreenSharingBroadcasterViewModel(&lazy protocol witness table cache variable for type RemoteControlOnboardingView and conformance RemoteControlOnboardingView, type metadata accessor for RemoteControlOnboardingView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlOnboardingView? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ScreenSharingBroadcasterViewModel and conformance ScreenSharingBroadcasterViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ScreenSharingBroadcasterView and conformance ScreenSharingBroadcasterView()
{
  result = lazy protocol witness table cache variable for type ScreenSharingBroadcasterView and conformance ScreenSharingBroadcasterView;
  if (!lazy protocol witness table cache variable for type ScreenSharingBroadcasterView and conformance ScreenSharingBroadcasterView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingBroadcasterView and conformance ScreenSharingBroadcasterView);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ScreenSharingBroadcasterToolbar(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ScreenSharingBroadcasterToolbar(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t outlined init with take of RemoteControlOnboardingView?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit27RemoteControlOnboardingViewVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ScreenSharingToolbarButtonStyle and conformance ScreenSharingToolbarButtonStyle()
{
  result = lazy protocol witness table cache variable for type ScreenSharingToolbarButtonStyle and conformance ScreenSharingToolbarButtonStyle;
  if (!lazy protocol witness table cache variable for type ScreenSharingToolbarButtonStyle and conformance ScreenSharingToolbarButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingToolbarButtonStyle and conformance ScreenSharingToolbarButtonStyle);
  }

  return result;
}

id @nonobjc UICustomViewMenuElement.__allocating_init(viewProvider:)(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed (@guaranteed UICustomViewMenuElement) -> (@owned UIView);
  v5[3] = &block_descriptor_29;
  v2 = _Block_copy(v5);
  v3 = [swift_getObjCClassFromMetadata() elementWithViewProvider_];
  _Block_release(v2);

  return v3;
}

id thunk for @escaping @callee_guaranteed (@guaranteed UICustomViewMenuElement) -> (@owned UIView)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void ConversationControlsShareMenuButtonProvider.shareScreenCountdownView.didset(void *a1)
{
  v2 = v1;
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = v1[29];
    if (v5)
    {
      v6 = v1[3];
      v5[OBJC_IVAR____TtC15ConversationKit18CountdownLabelView_isCountingDown] = 1;
      v7 = v1[20];
      v8 = v5;
      v9 = ConversationControlsShareMenuButtonProvider.countdownEphemeralAlert.getter();
      (*((*MEMORY[0x1E69E7D40] & *v7) + 0x8E0))(v9);
      [v8 addTarget:v2 action:sel_screenSharingButtonPressed forControlEvents:64];
      v10 = objc_opt_self();
      v11 = swift_allocObject();
      v11[2] = v4;
      v11[3] = v6;
      v11[4] = v8;
      v12 = swift_allocObject();
      *(v12 + 16) = partial apply for closure #1 in ConversationControlsShareMenuButtonProvider.shareScreenCountdownView.didset;
      *(v12 + 24) = v11;
      aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_44_1;
      v13 = _Block_copy(aBlock);
      v14 = v8;
      v15 = v4;

      [v10 performWithoutAnimation_];
      _Block_release(v13);
      LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

      if (v10)
      {
        __break(1u);
        return;
      }

      v16 = *MEMORY[0x1E69DC5C0];
      v17 = *(MEMORY[0x1E69DC5C0] + 8);
      v18 = *(MEMORY[0x1E69DC5C0] + 16);
      v19 = *(MEMORY[0x1E69DC5C0] + 24);
      v20 = v15;
      v22.top = v16;
      v22.leading = v17;
      v22.bottom = v18;
      v22.trailing = v19;
      UIView.addConstraintsToFill(_:insets:)(v20, v22);
    }
  }
}

Class ConversationControlsShareMenuButtonProvider.countdownEphemeralAlert.getter()
{
  OUTLINED_FUNCTION_23_28();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  v2 = objc_opt_self();
  v3 = [v2 conversationKit];
  v4 = OUTLINED_FUNCTION_9_48();
  v6 = OUTLINED_FUNCTION_48_1(v4, v5, v1, 0xEF74694B6E6F6974);
  v8 = v7;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableAttributedString);
  v9._countAndFlagsBits = v6;
  v9._object = v8;
  v10.super.isa = NSAttributedString.__allocating_init(string:)(v9).super.isa;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  v12 = (*(v11 + 192))();
  if (v12)
  {
    v13 = 0xD00000000000002ELL;
  }

  else
  {
    v13 = 0xD00000000000002FLL;
  }

  if (v12)
  {
    v14 = "RTED_SUBTITLE_NOTIFICATIONS_OFF";
  }

  else
  {
    v14 = "SCREEN_SHARING_STOP";
  }

  v15 = [v2 conversationKit];
  v16.super.isa = v15;
  v17 = OUTLINED_FUNCTION_17_0(v13, v14 | 0x8000000000000000, v1, 0xEF74694B6E6F6974, v16);
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  NSAttributedString.__allocating_init(string:)(v20);
  return v10.super.isa;
}

id closure #1 in ConversationControlsShareMenuButtonProvider.shareScreenCountdownView.didset(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 setSelected_];

  return [a1 addSubview_];
}

void ConversationControlsShareMenuButtonProvider.shareScreenCountdownView.setter(void *a1)
{
  v3 = *(v1 + 232);
  *(v1 + 232) = a1;
  v2 = a1;
  ConversationControlsShareMenuButtonProvider.shareScreenCountdownView.didset(v3);
}

Swift::Void __swiftcall ConversationControlsShareMenuButtonProvider.buttonChanged()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GMd);
  OUTLINED_FUNCTION_1();
  v46 = v3;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GGMd);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGGMd);
  OUTLINED_FUNCTION_1();
  v45 = v14;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  ControlsButtonProvider.buttonChanged()();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v41 = v2;
    v42 = v12;
    v43 = v9;
    v44 = v7;
    type metadata accessor for ConversationControlsButton();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      v21 = v20;
      v22 = objc_opt_self();
      v23 = v19;
      v24 = [v22 conversationKit];
      OUTLINED_FUNCTION_5_5();
      v25.super.isa = v24;
      v28 = OUTLINED_FUNCTION_17_0(0xD00000000000001CLL, 0x80000001BC500FD0, v26, v27, v25);
      v30 = v29;

      v31 = (v21 + OBJC_IVAR___CNKConversationControlsButton_localizedName);
      swift_beginAccess();
      *v31 = v28;
      v31[1] = v30;

      ConversationControlsButton.localizedName.didset();
    }

    outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0x6E654D6572616873, 0xEF6E6F7474754275, v19);
    v32 = [v19 addTarget:v1 action:sel_screenSharingButtonPressed forControlEvents:64];
    v33 = v1[20];
    v47 = (*((*MEMORY[0x1E69E7D40] & *v33) + 0x740))(v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<ShareMenuActionState, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGMd);
    lazy protocol witness table accessor for type ShareMenuActionState and conformance ShareMenuActionState();
    Publisher<>.removeDuplicates()();

    OUTLINED_FUNCTION_20();
    swift_allocObject();
    OUTLINED_FUNCTION_20_0();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<ShareMenuActionState, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGGMd);
    v34 = Publisher<>.sink(receiveValue:)();

    (*(v45 + 8))(v17, v13);
    swift_beginAccess();
    v1[6] = v34;

    (*((*MEMORY[0x1E69E7D40] & *v33) + 0x878))(v35);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<ForegroundApp?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GMd);
    lazy protocol witness table accessor for type ForegroundApp? and conformance <A> A?();
    v36 = v41;
    Publisher<>.removeDuplicates()();
    (*(v46 + 8))(v6, v36);
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    OUTLINED_FUNCTION_20_0();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<ForegroundApp?>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GGMd);
    v37 = Publisher<>.sink(receiveValue:)();

    v38 = OUTLINED_FUNCTION_206();
    v39(v38);
    v1[23] = v37;
  }
}

void closure #1 in ConversationControlsShareMenuButtonProvider.buttonChanged()(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 1);
  v4 = a1[16];
  v5 = a1[17];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      [v8 setEnabled_];
      if (v2)
      {
        v10 = 256;
      }

      else
      {
        v10 = 0;
      }

      if (v5)
      {
        v11 = 256;
      }

      else
      {
        v11 = 0;
      }

      ConversationControlsShareMenuButtonProvider.updateShareScreenCountdownView(with:)(v10 | v1, v3, v11 | v4);
      v12 = *(v7 + 160);
      v13 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x860);
      v14 = v12;
      v15 = v13();

      ConversationControlsShareMenuButtonProvider.updateButtonStyle(buttonState:foregroundApp:)(v10 | v1, v3, v11 | v4, v15);
      v16 = v9;
      *&v17.buttonEnabled = v10 | v1;
      [v16 setShowsMenuAsPrimaryAction_];
    }

    else
    {
    }
  }
}

void ConversationControlsShareMenuButtonProvider.updateShareScreenCountdownView(with:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    ConversationControlsShareMenuButtonProvider.shareScreenCountdownView.setter(0);
  }

  else
  {
    v5 = *(v3 + 232);
    if (v5 || (v6 = [objc_allocWithZone(type metadata accessor for CountdownLabelView()) init], ConversationControlsShareMenuButtonProvider.shareScreenCountdownView.setter(v6), (v5 = *(v3 + 232)) != 0))
    {
      v7 = *(v5 + OBJC_IVAR____TtC15ConversationKit18CountdownLabelView_countdownLabel);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumberFormatter);
      v10 = v7;
      v8 = static NSNumberFormatter.localizedStringForInt(_:)(a2);
      outlined bridged method (mbnn) of @objc UILabel.text.setter(v8, v9, v10);
    }
  }
}

__n128 ConversationControlsShareMenuButtonProvider.updateButtonStyle(buttonState:foregroundApp:)(__int16 a1, uint64_t a2, __int16 a3, void *a4)
{
  v5 = v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v11 = Strong;
  if (!*(v5 + 232))
  {
    if ((a1 & 0x100) != 0)
    {
      [Strong setSelected_];
    }

    else
    {
      if ((a3 & 0x100) != 0)
      {
        [Strong setSelected_];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
        v19 = *MEMORY[0x1E69DDCF8];
        v27 = 0;
        v36 = 0x616C706572616873;
        v37 = 0xE900000000000079;
        v38 = 3;
        v39 = v19;
        v40 = 0;
        v41 = 4;
        v42 = 0;
        v43 = 0;
        v28 = 0x616C706572616873;
        v29 = 0xE900000000000079;
        v30 = 3;
        v31 = v19;
        v32 = 0;
        v33 = 4;
        v34 = 0;
        v35 = 0;
        v20 = v19;
        outlined init with copy of SymbolImageDescription(&v36, v26);
        outlined destroy of SymbolImageDescription(&v28);
        v21 = static UIImage.symbolImage(for:)(&v36);
        outlined destroy of SymbolImageDescription(&v36);
        ControlsButtonProvider.image.setter(v21);
        goto LABEL_13;
      }

      if (a4)
      {
        v14 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x80);
        v15 = a4;
        if (v14())
        {
          [v11 setSelected_];
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
          v16 = *MEMORY[0x1E69DDCF8];
          v27 = 0;
          v36 = 0x616C706572616873;
          v37 = 0xE900000000000079;
          v38 = 3;
          v39 = v16;
          v40 = 0;
          v41 = 4;
          v42 = 0;
          v43 = 0;
          v28 = 0x616C706572616873;
          v29 = 0xE900000000000079;
          v30 = 3;
          v31 = v16;
          v32 = 0;
          v33 = 4;
          v34 = 0;
          v35 = 0;
          v17 = v16;
          outlined init with copy of SymbolImageDescription(&v36, v26);
          outlined destroy of SymbolImageDescription(&v28);
          v18 = static UIImage.symbolImage(for:)(&v36);
          outlined destroy of SymbolImageDescription(&v36);
          ControlsButtonProvider.image.setter(v18);

LABEL_13:
          *(v5 + 200) = xmmword_1BC4CB170;
          result.n128_u64[0] = 0x4000000000000000;
          *(v5 + 216) = xmmword_1BC4CB180;
          return result;
        }
      }

      [v11 setSelected_];
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
    v22 = *MEMORY[0x1E69DDCF8];
    v27 = 0;
    v36 = 0xD000000000000028;
    v37 = 0x80000001BC4F3800;
    v38 = 3;
    v39 = v22;
    v40 = 0;
    v41 = 4;
    v42 = 0;
    v43 = 0;
    v28 = 0xD000000000000028;
    v29 = 0x80000001BC4F3800;
    v30 = 3;
    v31 = v22;
    v32 = 0;
    v33 = 4;
    v34 = 0;
    v35 = 0;
    v23 = v22;
    outlined init with copy of SymbolImageDescription(&v36, v26);
    outlined destroy of SymbolImageDescription(&v28);
    v24 = static UIImage.symbolImage(for:)(&v36);
    outlined destroy of SymbolImageDescription(&v36);
    ControlsButtonProvider.image.setter(v24);

    result = *MEMORY[0x1E69DC5C0];
    v25 = *(MEMORY[0x1E69DC5C0] + 16);
    *(v5 + 200) = *MEMORY[0x1E69DC5C0];
    *(v5 + 216) = v25;
    return result;
  }

  [Strong setSelected_];
  v12 = [v11 imageView];
  if (v12)
  {
    v13 = v12;
    [v12 setAlpha_];
  }

  return result;
}

Swift::Bool __swiftcall ConversationControlsShareMenuButtonProvider.shouldEnableMenu(state:)(ConversationKit::ShareMenuActionState state)
{
  v2 = (*&state.buttonEnabled & 0x100) == 0;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  if ((*(v3 + 296))())
  {
    return 0;
  }

  v4 = *(v1 + 232);
  if (v4)
  {
    if (*(v4 + OBJC_IVAR____TtC15ConversationKit18CountdownLabelView_isCountingDown))
    {
      return 0;
    }
  }

  return v2;
}

uint64_t closure #2 in ConversationControlsShareMenuButtonProvider.buttonChanged()(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + 160);
    v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x710);
    v6 = v4;
    LOWORD(v5) = v5();
    v8 = v7;
    v10 = v9;

    ConversationControlsShareMenuButtonProvider.updateButtonStyle(buttonState:foregroundApp:)(v5 & 0x101, v8, v10 & 0x101, v1);
    if (*(v3 + 40) <= 1u)
    {
      v11._object = 0x80000001BC5012A0;
      v11._countAndFlagsBits = 0xD000000000000016;
      ConversationControlsMenuButtonProvider.dismissMenu(context:)(v11);
    }
  }

  return result;
}

Swift::Bool __swiftcall ConversationControlsShareMenuButtonProvider.shouldEnableMenu()()
{
  *&v1.buttonEnabled = (*((*MEMORY[0x1E69E7D40] & **(v0 + 160)) + 0x710))() & 0x101;

  return ConversationControlsShareMenuButtonProvider.shouldEnableMenu(state:)(v1);
}

uint64_t ConversationControlsShareMenuButtonProvider.buttonConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  ConversationControlsMenuButtonProvider.buttonConfiguration.getter(a1);
  UIButton.Configuration.contentInsets.getter();
  UIButton.Configuration.contentInsets.getter();
  UIButton.Configuration.contentInsets.getter();
  UIButton.Configuration.contentInsets.getter();
  return UIButton.Configuration.contentInsets.setter();
}

Swift::Void __swiftcall ConversationControlsShareMenuButtonProvider.didLayoutSubviews(button:)(UIButton *button)
{
  ControlsButtonProvider.didLayoutSubviews(button:)(button);
  v3 = *(v1 + 232);
  if (v3)
  {
    v4 = [v3 layer];
    [(UIButton *)button bounds];
    [v4 setCornerRadius_];
  }

  v5 = [(UIButton *)button imageView];
  if (v5)
  {
    v6 = 0.0;
    if (!*(v1 + 232))
    {
      v6 = 1.0;
    }

    v7 = v5;
    [(UIImageView *)v5 setAlpha:v6];
  }
}

Swift::Void __swiftcall ConversationControlsShareMenuButtonProvider.screenSharingButtonPressed()()
{
  swift_weakInit();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  if (((*(v1 + 296))() & 1) != 0 && (!static Platform.current.getter() || static Platform.current.getter() == 1))
  {
    v2 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 160)) + 0x710))();
    v3 = *(v0 + 232);
    if (v3 && (*(v3 + OBJC_IVAR____TtC15ConversationKit18CountdownLabelView_isCountingDown) & 1) != 0)
    {
      ConversationControlsManager.declineIncomingScreenShareRequests()();
LABEL_13:
      specialized closure #1 in ConversationControlsShareMenuButtonProvider.screenSharingButtonPressed()();
      goto LABEL_14;
    }

    if ((v2 & 0x100) != 0)
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    ConversationControlsManager.presentShareCard(source:)(Strong);
  }

  else
  {
    specialized closure #1 in ConversationControlsShareMenuButtonProvider.screenSharingButtonPressed()();
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      *&v7.buttonEnabled = (*((*MEMORY[0x1E69E7D40] & **(v0 + 160)) + 0x710))() & 0x101;
      [v5 setShowsMenuAsPrimaryAction_];
    }
  }

LABEL_14:
  swift_weakDestroy();
}

uint64_t specialized closure #1 in ConversationControlsShareMenuButtonProvider.screenSharingButtonPressed()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, &static Logger.conversationControls);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BBC58000, v3, v4, "Stopping screen sharing", v5, 2u);
      MEMORY[0x1BFB23DF0](v5, -1, -1);
    }

    v6 = *(v1 + 160);

    v7 = v6;
    ConversationControlsManager.stopScreenShare()();

    v8 = *(v1 + 160);
    v9 = MEMORY[0x1E69E7D40];
    v10 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x710);
    v11 = v8;
    if ((v10() & 0x100) != 0)
    {
      v12 = ConversationControlsShareMenuButtonProvider.endedScreenSharingEphemeralAlert.getter();
      v14 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }

    (*((*v9 & *v11) + 0x8E0))(v12, v13, v14);

    ConversationControlsShareMenuButtonProvider.shareScreenCountdownView.setter(0);
    v15 = *(v1 + 160);
    v16 = *((*v9 & *v15) + 0xA48);
    v17 = v15;
    v16();

    v18 = *(v1 + 160);

    v20 = (*((*v9 & *v18) + 0x710))(v19);
    v22 = v21;
    LOWORD(v16) = v23;

    ConversationControlsShareMenuButtonProvider.updateButtonStyle(buttonState:foregroundApp:)(v20 & 0x101, v22, v16 & 0x101, 0);
  }

  return result;
}

Class ConversationControlsShareMenuButtonProvider.endedScreenSharingEphemeralAlert.getter()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  v2 = objc_opt_self();
  v3 = [v2 conversationKit];
  OUTLINED_FUNCTION_9_48();
  OUTLINED_FUNCTION_23_28();
  v6 = OUTLINED_FUNCTION_48_1(v4, v5, v1, 0xEF74694B6E6F6974);
  v8 = v7;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableAttributedString);
  v9._countAndFlagsBits = v6;
  v9._object = v8;
  isa = NSAttributedString.__allocating_init(string:)(v9).super.isa;
  v11 = [v2 conversationKit];
  OUTLINED_FUNCTION_48_1(0xD00000000000001BLL, 0x80000001BC500FF0, v1, 0xEF74694B6E6F6974);
  OUTLINED_FUNCTION_7_19();

  v12._countAndFlagsBits = OUTLINED_FUNCTION_62_0();
  NSAttributedString.__allocating_init(string:)(v12);
  return isa;
}

Swift::Void __swiftcall ConversationControlsShareMenuButtonProvider.setAutomaticShareState(_:)(Swift::Bool a1)
{
  v2 = v1;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, &static Logger.conversationControls);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_1BBC58000, v5, v6, "togglePlaybackAuthorization: %{BOOL}d", v7, 8u);
    OUTLINED_FUNCTION_27();
  }

  v8 = *(v2 + 160);
  v9 = ConversationControlsShareMenuButtonProvider.shareMediaEphemeralAlert(authorization:)();
  v10 = MEMORY[0x1E69E7D40];
  v11 = (*((*MEMORY[0x1E69E7D40] & *v8) + 0x8E0))(v9);
  v12 = (*((*v10 & *v8) + 0x860))(v11);
  if (v12)
  {
    v13 = v12;
    (*((*v10 & *v12) + 0x90))(a1);
  }
}

Class ConversationControlsShareMenuButtonProvider.shareMediaEphemeralAlert(authorization:)()
{
  v1 = v0;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v2 = *MEMORY[0x1E69DDD40];
  v34 = 0;
  v35[0] = 0x616C706572616873;
  v35[1] = 0xE900000000000079;
  v35[2] = 1;
  v35[3] = v2;
  v36 = 0;
  v37 = 4;
  v38 = 0;
  v39 = 0;
  v40[0] = 0x616C706572616873;
  v40[1] = 0xE900000000000079;
  v40[2] = 1;
  v40[3] = v2;
  v41 = 0;
  v42 = 4;
  v43 = 0;
  v44 = 0;
  v3 = v2;
  outlined init with copy of SymbolImageDescription(v35, v32);
  outlined destroy of SymbolImageDescription(v40);
  v4 = static UIImage.symbolImage(for:)(v35);
  outlined destroy of SymbolImageDescription(v35);
  if (v4)
  {
    v5 = [objc_opt_self() labelColor];
    v6 = [v4 imageWithTintColor_];
  }

  else
  {
    v6 = 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  v7 = objc_opt_self();
  v8 = [v7 conversationKit];
  v9 = OUTLINED_FUNCTION_48_1(0x414C504552414853, 0xE900000000000059, 0x61737265766E6F43, 0xEF74694B6E6F6974);
  v11 = v10;

  memset(v32, 0, sizeof(v32));
  v33 = 1;
  v12 = static NSAttributedString.localizedString(_:prefixImage:imageBounds:)(v9, v11, v6, v32);

  v14 = MEMORY[0x1E69E7D40];
  v15 = (*((*MEMORY[0x1E69E7D40] & **(v1 + 160)) + 0x860))(v13);
  if (v15)
  {
    v16 = v15;
    v17 = (*((*v14 & *v15) + 0x68))(v15);
    v19 = v18;
  }

  else
  {
    v19 = 0x80000001BC501010;
    v17 = 0xD000000000000010;
  }

  v20 = [v7 conversationKit];
  OUTLINED_FUNCTION_5_5();
  v21.super.isa = v20;
  OUTLINED_FUNCTION_17_0(v22, v23, v24, v25, v21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BC4BA940;
  *(v26 + 56) = MEMORY[0x1E69E6158];
  *(v26 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v26 + 32) = v17;
  *(v26 + 40) = v19;
  v27 = String.init(format:_:)();
  v29 = v28;

  v30._countAndFlagsBits = v27;
  v30._object = v29;
  NSAttributedString.__allocating_init(string:)(v30);

  return v12;
}

uint64_t ConversationControlsShareMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v4 + 184) = 0;
  *(v4 + 192) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v7 = *(MEMORY[0x1E69DC5C0] + 16);
  *(v4 + 200) = *MEMORY[0x1E69DC5C0];
  *(v4 + 216) = v7;
  *(v4 + 232) = 0;
  *(v4 + 240) = MEMORY[0x1BFB209B0](0xD000000000000013, 0x80000001BC501030);
  *(v4 + 248) = MEMORY[0x1BFB209B0](0xD00000000000001ALL, 0x80000001BC501050);
  v8 = a4;
  v9 = a1;
  v10 = ConversationControlsMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)();
  v11 = objc_opt_self();

  v12 = [v11 defaultCenter];
  [v12 addObserver:v10 selector:sel_capturedDidChangeNotification_ name:*MEMORY[0x1E69DE370] object:0];

  return v10;
}

void ConversationControlsShareMenuButtonProvider.capturedDidChangeNotification(_:)(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - v5;
  v7 = type metadata accessor for Notification();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, &static Logger.conversationControls);
  v14 = *(v9 + 16);
  v14(v12, a1, v7);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v16))
  {
    v17 = swift_slowAlloc();
    v42 = v2;
    v18 = v17;
    v19 = swift_slowAlloc();
    aBlock = v19;
    *v18 = 136315138;
    v14(v6, v12, v7);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
    specialized >> prefix<A>(_:)(v6, v20, v21, v22, v23, v24, v25, v26, v42, aBlock, v44, v45, v46, v47, v48, v49, v50, v51);
    v28 = v27;
    v30 = v29;
    outlined destroy of Notification?(v6);
    v31 = OUTLINED_FUNCTION_206();
    v32(v31);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &aBlock);

    *(v18 + 4) = v33;
    _os_log_impl(&dword_1BBC58000, v15, v16, "capturedDidChangeNotification: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_27();
    v2 = v42;
    OUTLINED_FUNCTION_27();
  }

  else
  {

    v34 = OUTLINED_FUNCTION_206();
    v35(v34);
  }

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v38 = [Strong contextMenuInteraction];

    if (v38)
    {
      v39 = swift_allocObject();
      *(v39 + 16) = partial apply for closure #1 in ConversationControlsShareMenuButtonProvider.capturedDidChangeNotification(_:);
      *(v39 + 24) = v2;
      v47 = partial apply for thunk for @callee_guaranteed (@guaranteed UIMenu) -> (@owned UIMenu);
      v48 = v39;
      aBlock = MEMORY[0x1E69E9820];
      v44 = 1107296256;
      v45 = thunk for @escaping @callee_guaranteed (@guaranteed UIMenu) -> (@owned UIMenu);
      v46 = &block_descriptor_36;
      v40 = _Block_copy(&aBlock);

      [v38 updateVisibleMenuWithBlock_];

      _Block_release(v40);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }
}

uint64_t closure #1 in ConversationControlsShareMenuButtonProvider.capturedDidChangeNotification(_:)(void *a1)
{
  v1 = a1;
  v2 = [a1 children];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = specialized Array.count.getter(v3);
  if (v4)
  {
    v5 = v4;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if ((v5 & 0x8000000000000000) == 0)
    {
      v22 = v1;
      v7 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1BFB22010](v7, v3);
        }

        else
        {
          v8 = *(v3 + 8 * v7 + 32);
        }

        v9 = v8;
        objc_opt_self();
        v10 = swift_dynamicCastObjCClass();
        if (!v10)
        {
          goto LABEL_17;
        }

        v11 = v10;
        v12 = v9;
        v13 = [v11 identifier];
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;
        if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
        {
        }

        else
        {
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v19 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        ConversationControlsShareMenuButtonProvider.determineState(for:)(v11);
LABEL_16:

LABEL_17:
        ++v7;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v5 == v7)
        {

          v1 = v22;
          goto LABEL_20;
        }
      }
    }

    __break(1u);
  }

  else
  {

LABEL_20:
    isa = Array._bridgeToObjectiveC()().super.isa;

    v21 = [v1 menuByReplacingChildren_];

    return v21;
  }

  return result;
}

Swift::Void __swiftcall ConversationControlsShareMenuButtonProvider.determineState(for:)(UIAction a1)
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  if (((*(v2 + 160))() & 1) == 0)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, &static Logger.conversationControls);
    v9 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v20))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_75(&dword_1BBC58000, v21, v22, "Hardware doesn't support screen sharing");
      OUTLINED_FUNCTION_27();
    }

    [(objc_class *)a1.super.super.isa setAttributes:1];
    v23 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_5_64();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_0_1();
  v4 = (*(v3 + 224))();
  v5 = [objc_opt_self() mainScreen];
  v6 = [v5 isCaptured];

  if (v4 & 1) != 0 && !v6 || (OUTLINED_FUNCTION_0_1(), ((*(v7 + 232))()))
  {
    if (ConversationControlsManager.isShownAboveCoverSheet.getter())
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v8 = type metadata accessor for Logger();
      v9 = __swift_project_value_buffer(v8, &static Logger.conversationControls);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v52 = v13;
        *v12 = 136315138;
        v14 = ConversationControlsManager.isShownAboveCoverSheet.getter();
        v15 = (v14 & 1) == 0;
        if (v14)
        {
          v16 = 1702195828;
        }

        else
        {
          v16 = 0x65736C6166;
        }

        if (v15)
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xE400000000000000;
        }

        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v9, &v52);

        *(v12 + 4) = v17;
        _os_log_impl(&dword_1BBC58000, v10, v11, "controlsManager.isShownAboveCoverSheet:%s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      [(objc_class *)a1.super.super.isa setAttributes:1];
      v18 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_5_64();
LABEL_24:
      OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_48_1(v24, v25, v26, v27);
      OUTLINED_FUNCTION_7_19();

      OUTLINED_FUNCTION_62_0();
      OUTLINED_FUNCTION_62();

      outlined bridged method (mbnn) of @objc UIAction.discoverabilityTitle.setter(v28, v29, v30);
      return;
    }

    [(objc_class *)a1.super.super.isa setAttributes:[(objc_class *)a1.super.super.isa attributes]& 0xFFFFFFFFFFFFFFFELL];
    OUTLINED_FUNCTION_62();

    [v32 v33];
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, &static Logger.conversationControls);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v37))
    {
      v38 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v38 = 136315394;
      v39 = String.init<A>(reflecting:)();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v52);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2080;
      v42 = String.init<A>(reflecting:)();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v52);

      *(v38 + 14) = v44;
      _os_log_impl(&dword_1BBC58000, v36, v37, "screenSharingAvailable:%s, screenIsCaptured:%s", v38, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    [(objc_class *)a1.super.super.isa setAttributes:1];
    v45 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_5_64();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_48_1(v46, v47, v48, v49);
    OUTLINED_FUNCTION_7_19();

    v50 = OUTLINED_FUNCTION_62_0();
    outlined bridged method (mbnn) of @objc UIAction.discoverabilityTitle.setter(v50, v51, a1.super.super.isa);
    OUTLINED_FUNCTION_62();
  }
}

id thunk for @escaping @callee_guaranteed (@guaranteed UIMenu) -> (@owned UIMenu)(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4;
}

Class ConversationControlsShareMenuButtonProvider.menu(for:)()
{
  v1 = v0;
  v2 = *(v0 + 160);
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, &static Logger.conversationControls);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v5))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_75(&dword_1BBC58000, v6, v7, "Displaying Share menu");
    OUTLINED_FUNCTION_27();
  }

  v103 = MEMORY[0x1E69E7CC0];
  v8 = _sSo7UIImageC15ConversationKitE5image5namedAbC9ImageName_p_tFZTf4en_nAC0F5NamesV0B8ControlsO_Tt0g5();
  v9 = objc_opt_self();
  v10 = [v9 labelColor];
  v11 = [v8 imageWithTintColor_];

  v12 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction);
  v13 = objc_opt_self();
  v14 = [v13 conversationKit];
  v15.super.isa = v14;
  OUTLINED_FUNCTION_17_0(0x794D206572616853, 0xEF6E656572635320, 0x61737265766E6F43, 0xEF74694B6E6F6974, v15);

  v16 = *(v1 + 240);
  OUTLINED_FUNCTION_20();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_20_0();
  v96 = v11;
  v18 = v16;
  preferredElementSize = UIMenuElementSizeSmall;
  children._rawValue = 0;
  v91 = v17;
  OUTLINED_FUNCTION_3_0();
  v19 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  ConversationControlsShareMenuButtonProvider.determineState(for:)(v19);
  v20 = v19;
  MEMORY[0x1BFB20CC0](v20);
  OUTLINED_FUNCTION_10_41();
  if (v21)
  {
    OUTLINED_FUNCTION_1_27();
  }

  v22 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v23 = v103;
  v24 = MEMORY[0x1E69E7D40];
  v25 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x988))(v22);
  if (v25)
  {
    v26 = v25;
    if ([v25 state] == 1)
    {
      TUConversationActivitySession.generateType.getter(v104);
      if (LOBYTE(v104[0]) == 6)
      {

        goto LABEL_22;
      }

      v95 = v20;
      v64 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      v65 = *MEMORY[0x1E69DDCF8];
      v66 = [v9 labelColor];
      v97[64] = 0;
      v104[0] = 0x616C706572616873;
      v104[1] = 0xEF6873616C732E79;
      v104[2] = 3;
      v104[3] = v65;
      v105 = 0;
      v106 = 4;
      v107 = 0;
      v108 = v66;
      v98[0] = 0x616C706572616873;
      v98[1] = 0xEF6873616C732E79;
      v98[2] = 3;
      v98[3] = v65;
      v99 = 0;
      v100 = 4;
      v101 = 0;
      v102 = v66;
      outlined init with copy of SymbolImageDescription(v104, v97);
      outlined destroy of SymbolImageDescription(v98);
      v67 = static UIImage.symbolImage(for:)(v104);
      outlined destroy of SymbolImageDescription(v104);
      v68 = [v13 conversationKit];
      OUTLINED_FUNCTION_5_64();
      OUTLINED_FUNCTION_5_5();
      OUTLINED_FUNCTION_48_1(v69, v70, v71, v72);

      v94 = v67;
      TUConversationActivitySession.concatenatedDescription.getter();
      v74 = v73;
      OUTLINED_FUNCTION_20();
      v75 = swift_allocObject();
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_37_0();
      v76 = swift_allocObject();
      v76[2] = v75;
      v76[3] = v2;
      v76[4] = v26;
      v77 = v2;
      v78 = v26;
      children._rawValue = 0;
      preferredElementSize = v74;
      OUTLINED_FUNCTION_3_0();
      v79 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      MEMORY[0x1BFB20CC0](v79);
      OUTLINED_FUNCTION_10_41();
      if (v21)
      {
        OUTLINED_FUNCTION_1_27();
      }

      OUTLINED_FUNCTION_206();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v23 = v103;

      goto LABEL_21;
    }
  }

  OUTLINED_FUNCTION_11_45();
  v28 = (*(v27 + 2144))();
  if (!v28)
  {
    goto LABEL_22;
  }

  v29 = v28;
  if (((*((*v24 & *v28) + 0x80))() & 1) == 0)
  {

    goto LABEL_22;
  }

  v95 = v20;
  OUTLINED_FUNCTION_11_45();
  v31 = (*(v30 + 104))();
  v92 = v32;
  v93 = v31;
  OUTLINED_FUNCTION_11_45();
  v34 = (*(v33 + 120))();
  v35 = [v13 conversationKit];
  OUTLINED_FUNCTION_5_64();
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_48_1(v36, v37, v38, v39);

  OUTLINED_FUNCTION_20();
  v40 = swift_allocObject();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_37_0();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v93;
  v41[4] = v92;

  OUTLINED_FUNCTION_0_71();
  v42 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v43 = [v13 conversationKit];
  OUTLINED_FUNCTION_5_64();
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_48_1(v44, v45, v46, v47);

  OUTLINED_FUNCTION_20();
  v48 = swift_allocObject();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_37_0();
  v49 = swift_allocObject();
  v49[2] = v48;
  v49[3] = v93;
  v49[4] = v92;

  OUTLINED_FUNCTION_0_71();
  v50 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1BC4BA930;
  *(v51 + 32) = v42;
  *(v51 + 40) = v50;
  v52 = v42;
  v53 = v50;
  v54 = [v13 conversationKit];
  OUTLINED_FUNCTION_5_5();
  v55.super.isa = v54;
  OUTLINED_FUNCTION_17_0(v56, v57, v58, v59, v55);

  String.uppercased()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1BC4BA940;
  *(v60 + 56) = MEMORY[0x1E69E6158];
  *(v60 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v60 + 32) = v93;
  *(v60 + 40) = v92;
  String.init(format:_:)();
  OUTLINED_FUNCTION_7_19();

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_0_71();
  v63 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v61, v62, v109, 33, 0xFFFFFFFFFFFFFFFFLL, v51, 0).super.super.isa;
  MEMORY[0x1BFB20CC0]();
  if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v23 = v103;

LABEL_21:
  v20 = v95;
LABEL_22:
  if ([*(v1 + 192) sharePlayDiscoverabilityEnabled])
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICustomViewMenuElement);
    v80 = @nonobjc UICustomViewMenuElement.__allocating_init(viewProvider:)(closure #5 in ConversationControlsShareMenuButtonProvider.menu(for:), 0);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    OUTLINED_FUNCTION_37_0();
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1BC4BAC30;
    *(v81 + 32) = v80;
    v82 = v80;
    OUTLINED_FUNCTION_0_71();
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v83, v84, v110, 33, 0xFFFFFFFFFFFFFFFFLL, v81, children);
    MEMORY[0x1BFB20CC0]();
    OUTLINED_FUNCTION_10_41();
    if (v21)
    {
      OUTLINED_FUNCTION_1_27();
    }

    OUTLINED_FUNCTION_206();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v23 = v103;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
  OUTLINED_FUNCTION_0_71();
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v85, v86, v111, 33, 0xFFFFFFFFFFFFFFFFLL, v23, children).super.super.isa;

  return isa;
}