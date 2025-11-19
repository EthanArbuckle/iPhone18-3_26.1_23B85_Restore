uint64_t thunk for @escaping @callee_guaranteed @async (@in_guaranteed A, @unowned CallScreeningTrackingStateResult) -> ()(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int *a4)
{
  v6 = *a3;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);

  return v9(a2, v6);
}

uint64_t key path setter for AnsweringMachineTrackingServiceAdapter.onResult : <A>AnsweringMachineTrackingServiceAdapter<A>(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = *(a3 + a4 - 8);
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v5;
    v8[4] = v6;
    v9 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @async (@in_guaranteed A, @in_guaranteed CallScreeningTrackingStateResult) -> (@out ());
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = (*a2 + direct field offset for AnsweringMachineTrackingServiceAdapter.onResult);
  swift_beginAccess();
  v11 = *v10;
  *v10 = v9;
  v10[1] = v8;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v5);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);
}

uint64_t thunk for @escaping @callee_guaranteed @async (@in_guaranteed A, @in_guaranteed CallScreeningTrackingStateResult) -> (@out ())(uint64_t a1, char a2, int *a3)
{
  *(v3 + 24) = a2 & 1;
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);

  return v6();
}

uint64_t AnsweringMachineTrackingServiceAdapter.onResult.getter()
{
  v1 = (v0 + direct field offset for AnsweringMachineTrackingServiceAdapter.onResult);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(*v1);
  return v2;
}

uint64_t AnsweringMachineTrackingServiceAdapter.onResult.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for AnsweringMachineTrackingServiceAdapter.onResult);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

uint64_t AnsweringMachineTrackingServiceAdapter.init(logger:answeringMachine:)(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for AnsweringMachineTrackingServiceAdapter.onResult);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v2 + direct field offset for AnsweringMachineTrackingServiceAdapter.currentTrackedCallTask);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = 0;
  v7 = direct field offset for AnsweringMachineTrackingServiceAdapter.logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v8 + 32))(v2 + v7, a1);
  *(v2 + direct field offset for AnsweringMachineTrackingServiceAdapter.answeringMachine) = a2;

  return CallScreeningTrackingService.init()();
}

uint64_t AnsweringMachineTrackingServiceAdapter.startTrackingCall(requester:callUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a2;
  v7 = *(*v3 + 112);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32 - v12;
  static TaskPriority.userInitiated.getter();
  v14 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  v15 = swift_allocObject();
  v34 = v4;
  swift_weakInit();
  v16 = *(v8 + 16);
  v33 = v10;
  v16(v10, a1, v7);
  v17 = one-time initialization token for shared;

  v18 = a3;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_6_8();
  }

  v19 = static CKStateMachineActor.shared;
  OUTLINED_FUNCTION_5_114();
  v22 = _s15ConversationKit19CKStateMachineActorV0E4TypeCAEScAAAWlTm_0(v20, v21);
  v23 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = v19;
  *(v24 + 3) = v22;
  *(v24 + 4) = v7;
  *(v24 + 5) = v15;
  v25 = v35;
  *(v24 + 6) = v35;
  *(v24 + 7) = v18;
  v26 = v18;
  (*(v8 + 32))(&v24[v23], v33, v7);

  OUTLINED_FUNCTION_59();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  v27 = (v34 + direct field offset for AnsweringMachineTrackingServiceAdapter.currentTrackedCallTask);
  v28 = *(v34 + direct field offset for AnsweringMachineTrackingServiceAdapter.currentTrackedCallTask);
  v29 = *(v34 + direct field offset for AnsweringMachineTrackingServiceAdapter.currentTrackedCallTask + 8);
  *v27 = v25;
  v27[1] = v26;
  v27[2] = v30;

  return outlined consume of (callUUID: String, Task<(), Never>)?(v28, v29);
}

uint64_t closure #1 in AnsweringMachineTrackingServiceAdapter.startTrackingCall(requester:callUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static CKStateMachineActor.shared;
  v7[12] = static CKStateMachineActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in AnsweringMachineTrackingServiceAdapter.startTrackingCall(requester:callUUID:), v8, 0);
}

uint64_t closure #1 in AnsweringMachineTrackingServiceAdapter.startTrackingCall(requester:callUUID:)()
{
  OUTLINED_FUNCTION_23_1();
  v18 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = (Strong + direct field offset for AnsweringMachineTrackingServiceAdapter.onResult);
    swift_beginAccess();
    v3 = *v2;
    v0[14] = *v2;
    v0[15] = v2[1];
    if (v3)
    {

      v4 = swift_task_alloc();
      v0[16] = v4;
      *v4 = v0;
      v4[1] = closure #1 in AnsweringMachineTrackingServiceAdapter.startTrackingCall(requester:callUUID:);
      v6 = v0[9];
      v5 = v0[10];

      return specialized AnsweringMachineService.handleNewIncomingCall(_:)(v6, v5);
    }

    v8 = AnsweringMachineTrackingServiceAdapter.description.getter();
    v10 = v9;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_42();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136446210;
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v17);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_1BBC58000, v11, v12, "%{public}s Unable to update with onResult as its nil", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_13();

  return v16();
}

{
  OUTLINED_FUNCTION_44();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;
  v5 = v2[14];
  v6 = *v1;
  *v4 = *v1;
  v3[17] = v0;

  v11 = (v5 + *v5);
  v7 = swift_task_alloc();
  v3[18] = v7;
  *v7 = v6;
  if (v0)
  {
    v7[1] = closure #1 in AnsweringMachineTrackingServiceAdapter.startTrackingCall(requester:callUUID:);
    v8 = v3[11];
    v9 = 1;
  }

  else
  {
    v7[1] = closure #1 in AnsweringMachineTrackingServiceAdapter.startTrackingCall(requester:callUUID:);
    v8 = v3[11];
    v9 = 0;
  }

  return v11(v8, v9);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](closure #1 in AnsweringMachineTrackingServiceAdapter.startTrackingCall(requester:callUUID:), v2, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 112));

  OUTLINED_FUNCTION_13();

  return v1();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](closure #1 in AnsweringMachineTrackingServiceAdapter.startTrackingCall(requester:callUUID:), v2, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 136);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 112));

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t AnsweringMachineTrackingServiceAdapter.description.getter()
{
  _StringGuts.grow(_:)(65);
  MEMORY[0x1BFB20B10](0xD00000000000003FLL, 0x80000001BC511460);
  if (*(v0 + direct field offset for AnsweringMachineTrackingServiceAdapter.currentTrackedCallTask + 8))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  v1 = String.init<A>(describing:)();
  MEMORY[0x1BFB20B10](v1);

  return 0;
}

uint64_t specialized AnsweringMachineService.handleNewIncomingCall(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v3[8] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static CallScreeningActor.shared;
  v3[9] = static CallScreeningActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized AnsweringMachineService.handleNewIncomingCall(_:), v4, 0);
}

uint64_t specialized AnsweringMachineService.handleNewIncomingCall(_:)()
{
  OUTLINED_FUNCTION_23_1();
  v46 = v0;

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_22_0(v3))
  {
    OUTLINED_FUNCTION_17_50();
    v45 = OUTLINED_FUNCTION_37_7();
    OUTLINED_FUNCTION_21_45(4.8751e-34);
    v4 = OUTLINED_FUNCTION_206();
    *(v1 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, v6);
    OUTLINED_FUNCTION_5_12(&dword_1BBC58000, v7, v8, "New incoming call: %{public}s");
    OUTLINED_FUNCTION_72_8();
    OUTLINED_FUNCTION_2_2();
  }

  else
  {
  }

  v9 = (v0[7] + *(*v0[7] + 144));
  swift_beginAccess();
  if (*v9)
  {
    v10 = v9[1] == v0[5] && v9[2] == v0[6];
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_22_0(v12))
      {
        OUTLINED_FUNCTION_17_50();
        v45 = OUTLINED_FUNCTION_37_7();
        OUTLINED_FUNCTION_21_45(4.8751e-34);
        v13 = OUTLINED_FUNCTION_206();
        *(v1 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v15);
        OUTLINED_FUNCTION_5_12(&dword_1BBC58000, v16, v17, "New incoming call already being handled: %{public}s");
        OUTLINED_FUNCTION_72_8();
        OUTLINED_FUNCTION_2_2();
      }

      else
      {
      }

      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_17_3();

      __asm { BRAA            X1, X16 }
    }

    v20 = *v9;
    if (*v9)
    {
      v22 = v9[1];
      v21 = v9[2];
      outlined copy of (task: Task<(), Error>, call: String)?(*v9);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = OUTLINED_FUNCTION_42();
        v26 = swift_slowAlloc();
        v45 = v26;
        *v25 = 136446210;

        *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v45);
        _os_log_impl(&dword_1BBC58000, v23, v24, "Removing call: %{public}s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      else
      {
      }

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      MEMORY[0x1BFB21000](v20, MEMORY[0x1E69E7CA8] + 8, v27, MEMORY[0x1E69E7288]);
    }
  }

  v28 = v0[8];
  v29 = v0[9];
  v30 = v0[6];
  v31 = v0[7];
  v32 = v0[5];
  static TaskPriority.userInitiated.getter();
  v33 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v33);
  v34 = _s15ConversationKit19CKStateMachineActorV0E4TypeCAEScAAAWlTm_0(&lazy protocol witness table cache variable for type CallScreeningActor.ActorType and conformance CallScreeningActor.ActorType, type metadata accessor for CallScreeningActor.ActorType);
  v35 = swift_allocObject();
  v35[2] = v29;
  v35[3] = v34;
  v35[4] = v31;
  v35[5] = v32;
  v35[6] = v30;

  OUTLINED_FUNCTION_59();
  v36 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
  v0[10] = v36;
  v37 = *v9;
  *v9 = v36;
  v9[1] = v32;
  v9[2] = v30;

  outlined consume of (task: Task<(), Error>, call: String)?(v37);
  v38 = swift_task_alloc();
  v0[11] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  *v38 = v0;
  v38[1] = specialized AnsweringMachineService.handleNewIncomingCall(_:);
  OUTLINED_FUNCTION_17_3();

  return MEMORY[0x1EEE6DA10](v39, v40, v41, v42, v43);
}

{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = specialized AnsweringMachineService.handleNewIncomingCall(_:);
  }

  else
  {
    v4 = specialized AnsweringMachineService.handleNewIncomingCall(_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

Swift::Void __swiftcall AnsweringMachineTrackingServiceAdapter.stopTrackingCall(callUUID:)(Swift::String callUUID)
{
  object = callUUID._object;
  countAndFlagsBits = callUUID._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = (v1 + direct field offset for AnsweringMachineTrackingServiceAdapter.currentTrackedCallTask);
  v8 = *(v1 + direct field offset for AnsweringMachineTrackingServiceAdapter.currentTrackedCallTask + 8);
  if (v8 && ((v9 = *v7, v10 = v7[2], *v7 == countAndFlagsBits) ? (v11 = v8 == object) : (v11 = 0), v11 || (OUTLINED_FUNCTION_206(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)))
  {

    static TaskPriority.userInitiated.getter();
    v12 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v12);
    v13 = one-time initialization token for shared;

    if (v13 != -1)
    {
      OUTLINED_FUNCTION_6_8();
    }

    v14 = static CKStateMachineActor.shared;
    OUTLINED_FUNCTION_5_114();
    v17 = _s15ConversationKit19CKStateMachineActorV0E4TypeCAEScAAAWlTm_0(v15, v16);
    v18 = swift_allocObject();
    v18[2] = v14;
    v18[3] = v17;
    v18[4] = v9;
    v18[5] = v8;
    v18[6] = v10;
    v18[7] = v1;

    OUTLINED_FUNCTION_59();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }

  else
  {
    v19 = AnsweringMachineTrackingServiceAdapter.description.getter();
    v21 = v20;

    v29 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v22))
    {
      v23 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v23 = 136446466;
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v30);

      *(v23 + 4) = v24;
      *(v23 + 12) = 2082;
      v25 = OUTLINED_FUNCTION_206();
      *(v23 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v27);
      _os_log_impl(&dword_1BBC58000, v29, v22, "%{public}s Unable to stop tracking call %{public}s", v23, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {

      v28 = v29;
    }
  }
}

uint64_t closure #1 in AnsweringMachineTrackingServiceAdapter.stopTrackingCall(callUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a6;
  *(v7 + 24) = a7;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static CKStateMachineActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in AnsweringMachineTrackingServiceAdapter.stopTrackingCall(callUUID:), v8, 0);
}

uint64_t closure #1 in AnsweringMachineTrackingServiceAdapter.stopTrackingCall(callUUID:)()
{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 24);
  MEMORY[0x1BFB21000](*(v0 + 16), MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  v2 = (v1 + direct field offset for AnsweringMachineTrackingServiceAdapter.currentTrackedCallTask);
  v3 = *(v1 + direct field offset for AnsweringMachineTrackingServiceAdapter.currentTrackedCallTask);
  v4 = *(v1 + direct field offset for AnsweringMachineTrackingServiceAdapter.currentTrackedCallTask + 8);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  outlined consume of (callUUID: String, Task<(), Never>)?(v3, v4);
  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t AnsweringMachineTrackingServiceAdapter.__ivar_destroyer()
{
  v1 = direct field offset for AnsweringMachineTrackingServiceAdapter.logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + direct field offset for AnsweringMachineTrackingServiceAdapter.onResult));
  v3 = *(v0 + direct field offset for AnsweringMachineTrackingServiceAdapter.currentTrackedCallTask);
  v4 = *(v0 + direct field offset for AnsweringMachineTrackingServiceAdapter.currentTrackedCallTask + 8);

  return outlined consume of (callUUID: String, Task<(), Never>)?(v3, v4);
}

uint64_t AnsweringMachineTrackingServiceAdapter.deinit()
{
  v0 = CallScreeningTrackingService.deinit();
  v1 = direct field offset for AnsweringMachineTrackingServiceAdapter.logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + direct field offset for AnsweringMachineTrackingServiceAdapter.onResult));
  outlined consume of (callUUID: String, Task<(), Never>)?(*(v0 + direct field offset for AnsweringMachineTrackingServiceAdapter.currentTrackedCallTask), *(v0 + direct field offset for AnsweringMachineTrackingServiceAdapter.currentTrackedCallTask + 8));
  return v0;
}

uint64_t AnsweringMachineTrackingServiceAdapter.__deallocating_deinit()
{
  AnsweringMachineTrackingServiceAdapter.deinit();

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in AnsweringMachineTrackingServiceAdapter.startTrackingCall(requester:callUUID:)()
{
  OUTLINED_FUNCTION_23_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  OUTLINED_FUNCTION_17_3();

  return closure #1 in AnsweringMachineTrackingServiceAdapter.startTrackingCall(requester:callUUID:)(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t outlined consume of (callUUID: String, Task<(), Never>)?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t specialized AnsweringMachineService.requestToScreen(call:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[3] = a2;
  v3[4] = a1;
  v3[2] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static CallScreeningActor.shared;
  v3[7] = static CallScreeningActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized AnsweringMachineService.requestToScreen(call:), v4, 0);
}

uint64_t specialized AnsweringMachineService.requestToScreen(call:)()
{
  OUTLINED_FUNCTION_27_39();
  OUTLINED_FUNCTION_48();
  v0[8] = direct field offset for AnsweringMachineService.logger;

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_22_0(v3))
  {
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_37_7();
    OUTLINED_FUNCTION_23_43();
    OUTLINED_FUNCTION_21_45(4.8751e-34);
    v4 = OUTLINED_FUNCTION_206();
    *(v1 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, v6);
    OUTLINED_FUNCTION_5_12(&dword_1BBC58000, v7, v8, "Requesting to screen call: %{public}s");
    OUTLINED_FUNCTION_72_8();
    OUTLINED_FUNCTION_2_2();
  }

  else
  {
  }

  v9 = v0[6];
  v0[9] = *(v9 + 32);
  v0[10] = *(v9 + 40);
  type metadata accessor for MainActor();
  v0[11] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_22_6();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

{
  v1 = v0[9];

  v1(v0 + 2, 0);
  v0[12] = 0;
  v2 = v0[7];

  return MEMORY[0x1EEE6DFA0](specialized AnsweringMachineService.requestToScreen(call:), v2, 0);
}

{
  OUTLINED_FUNCTION_23_1();
  v17 = v0;
  v2 = v0[12];

  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[12];
    v8 = v0[4];
    v7 = v0[5];
    v9 = swift_slowAlloc();
    swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_37_7();
    v16 = v10;
    *v9 = 136446466;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v16);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2112;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v1 = v13;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Failed to screen call: %{public}s with error %@", v9, 0x16u);
    outlined destroy of NSObject?(v1);
    OUTLINED_FUNCTION_2_2();
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  swift_willThrow();
  OUTLINED_FUNCTION_13();

  return v14();
}

uint64_t specialized AnsweringMachineService.requestToScreen(call:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_27_39();
  OUTLINED_FUNCTION_48();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_22_0(v12))
  {
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_37_7();
    OUTLINED_FUNCTION_23_43();
    OUTLINED_FUNCTION_21_45(4.8751e-34);
    v13 = OUTLINED_FUNCTION_206();
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v15);
    OUTLINED_FUNCTION_5_12(&dword_1BBC58000, v16, v17, "Screening call: %{public}s");
    OUTLINED_FUNCTION_72_8();
    OUTLINED_FUNCTION_2_2();
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_22_6();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t specialized closure #1 in AnsweringMachineService.handleNewIncomingCall(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a6;
  v6[4] = a4;
  v6[2] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static CallScreeningActor.shared;
  v6[7] = static CallScreeningActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in AnsweringMachineService.handleNewIncomingCall(_:), v7, 0);
}

uint64_t specialized closure #1 in AnsweringMachineService.handleNewIncomingCall(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_27_39();
  OUTLINED_FUNCTION_48();
  v10[8] = direct field offset for AnsweringMachineService.logger;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_22_0(v13))
  {
    OUTLINED_FUNCTION_17_50();
    OUTLINED_FUNCTION_37_7();
    OUTLINED_FUNCTION_23_43();
    OUTLINED_FUNCTION_21_45(4.8751e-34);
    v14 = OUTLINED_FUNCTION_206();
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v16);
    OUTLINED_FUNCTION_5_12(&dword_1BBC58000, v17, v18, "Waiting to screen call: %{public}s");
    OUTLINED_FUNCTION_72_8();
    OUTLINED_FUNCTION_2_2();
  }

  else
  {
  }

  v29 = *(v10[4] + 16) + **(v10[4] + 16);
  v19 = swift_task_alloc();
  v10[9] = v19;
  *v19 = v10;
  v19[1] = specialized closure #1 in AnsweringMachineService.handleNewIncomingCall(_:);
  OUTLINED_FUNCTION_22_6();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10);
}

{
  OUTLINED_FUNCTION_27_39();
  OUTLINED_FUNCTION_48();
  if (*(v10 + 104) == 1 && (static Task<>.isCancelled.getter() & 1) == 0)
  {
    v28 = swift_task_alloc();
    *(v10 + 88) = v28;
    *v28 = v10;
    v28[1] = specialized closure #1 in AnsweringMachineService.handleNewIncomingCall(_:);
    OUTLINED_FUNCTION_22_6();

    return v31(v29, v30, v31, v32, v33, v34, v35, v36, specialized AnsweringMachineService.requestToScreen(call:), a10);
  }

  else
  {

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_22_0(v13))
    {
      OUTLINED_FUNCTION_17_50();
      OUTLINED_FUNCTION_37_7();
      OUTLINED_FUNCTION_23_43();
      OUTLINED_FUNCTION_21_45(4.8751e-34);
      v14 = OUTLINED_FUNCTION_206();
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v16);
      OUTLINED_FUNCTION_5_12(&dword_1BBC58000, v17, v18, "Will not screen call: %{public}s");
      OUTLINED_FUNCTION_72_8();
      OUTLINED_FUNCTION_2_2();
    }

    else
    {
    }

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_22_6();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }
}

uint64_t specialized closure #1 in AnsweringMachineService.handleNewIncomingCall(_:)()
{
  OUTLINED_FUNCTION_44();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 80) = v0;

  v7 = *(v4 + 56);
  if (v0)
  {
    v8 = specialized closure #1 in AnsweringMachineService.handleNewIncomingCall(_:);
  }

  else
  {
    *(v5 + 104) = v3 & 1;
    v8 = specialized closure #1 in AnsweringMachineService.handleNewIncomingCall(_:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

{
  OUTLINED_FUNCTION_44();
  v1 = *(v0 + 80);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_42();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    OUTLINED_FUNCTION_47_0(&dword_1BBC58000, v9, v10, "Failed to handle new incoming call with error: %@");
    outlined destroy of NSObject?(v6);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_27();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_13();

  return v11();
}

{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = specialized closure #1 in AnsweringMachineService.handleNewIncomingCall(_:);
  }

  else
  {
    v4 = closure #1 in VideoMessageInboxController.updateCallItems();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  OUTLINED_FUNCTION_44();
  v1 = *(v0 + 96);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_42();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    OUTLINED_FUNCTION_47_0(&dword_1BBC58000, v9, v10, "Failed to handle new incoming call with error: %@");
    outlined destroy of NSObject?(v6);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_27();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_13();

  return v11();
}

uint64_t partial apply for closure #1 in AnsweringMachineTrackingServiceAdapter.stopTrackingCall(callUUID:)()
{
  OUTLINED_FUNCTION_48();
  v1 = v0[5];
  v3 = v0[6];
  v2 = v0[7];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2(v4);
  *v5 = v6;
  v5[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);
  v7 = OUTLINED_FUNCTION_13_35();

  return closure #1 in AnsweringMachineTrackingServiceAdapter.stopTrackingCall(callUUID:)(v7, v8, v9, v10, v1, v3, v2);
}

uint64_t type metadata completion function for AnsweringMachineTrackingServiceAdapter()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @async (@in_guaranteed A, @in_guaranteed CallScreeningTrackingStateResult) -> (@out ())()
{
  OUTLINED_FUNCTION_44();
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);

  return thunk for @escaping @callee_guaranteed @async (@in_guaranteed A, @in_guaranteed CallScreeningTrackingStateResult) -> (@out ())(v5, v3 & 1, v6);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @async (@in_guaranteed A, @unowned CallScreeningTrackingStateResult) -> ()()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v0 + 24);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_2(v8);
  *v9 = v10;
  v9[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);

  return thunk for @escaping @callee_guaranteed @async (@in_guaranteed A, @unowned CallScreeningTrackingStateResult) -> ()(v6, v4, v2, v7);
}

uint64_t _s15ConversationKit19CKStateMachineActorV0E4TypeCAEScAAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized closure #1 in AnsweringMachineService.handleNewIncomingCall(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = a5[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);

  return specialized closure #1 in AnsweringMachineService.handleNewIncomingCall(_:)(a1, a2, a3, a4, v10, v11);
}

uint64_t partial apply for specialized closure #1 in AnsweringMachineService.handleNewIncomingCall(_:)()
{
  OUTLINED_FUNCTION_44();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);
  v3 = OUTLINED_FUNCTION_13_35();

  return v4(v3);
}

uint64_t outlined consume of (task: Task<(), Error>, call: String)?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined copy of (task: Task<(), Error>, call: String)?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id static UIImage.symbolImage(for:)(uint64_t a1)
{
  if (*(a1 + 48))
  {
    isa = [objc_opt_self() configurationWithTextStyle:*(a1 + 24) scale:*(a1 + 16)];
  }

  else
  {
    v3 = *(a1 + 40);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImageSymbolConfiguration);
    isa = UIImageSymbolConfiguration.init(staticTextStyle:scale:weight:)(*(a1 + 24), *(a1 + 16), v3).super.super.isa;
  }

  v4 = isa;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 configurationWithHierarchicalColor_];
    v9 = [(objc_class *)v4 configurationByApplyingConfiguration:v8];

    v4 = v9;
  }

  v10 = *(a1 + 32);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v12 = *a1;
  v11 = *(a1 + 8);
  if (v10)
  {

    v13 = @nonobjc UIImage.init(_systemName:)(v12, v11);
    if (v13)
    {
      goto LABEL_10;
    }

LABEL_11:

    return 0;
  }

  v13 = @nonobjc UIImage.__allocating_init(systemName:)();
  if (!v13)
  {
    goto LABEL_11;
  }

LABEL_10:
  v14 = v13;
  v15 = [v13 imageWithSymbolConfiguration_];

  return v15;
}

uint64_t static UIImage.image(named:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized static UIImage.image(named:)(v4, v1, v2, v3);
}

id @nonobjc UIImage.init(_systemName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = MEMORY[0x1BFB209B0]();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() _systemImageNamed_];

  return v3;
}

uint64_t protocol witness for static NamedImageProviding.image(named:) in conformance UIImage(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized static UIImage.image(named:)(v4, v1, v2, v3);
}

UIImageSymbolConfiguration __swiftcall UIImageSymbolConfiguration.init(staticTextStyle:scale:weight:)(UIFontTextStyle staticTextStyle, UIImageSymbolScale scale, UIImageSymbolWeight weight)
{
  v6 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v7 = [objc_opt_self() preferredFontDescriptorWithTextStyle:staticTextStyle compatibleWithTraitCollection:v6];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [v7 pointSize];
  v9 = [ObjCClassFromMetadata configurationWithPointSize:weight weight:scale scale:?];

  return v9;
}

uint64_t static UIImage.radialGradient(withColors:size:)(uint64_t a1, double a2, double a3)
{
  result = specialized Array.count.getter(a1);
  if (result < 2)
  {
    __break(1u);
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    *(v8 + 32) = a3;
    v9 = swift_allocObject();
    *(v9 + 16) = partial apply for closure #1 in static UIImage.radialGradient(withColors:size:);
    *(v9 + 24) = v8;
    v12[4] = _sSo30UIGraphicsImageRendererContextCIgg_ABIegg_TRTA_0;
    v12[5] = v9;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
    v12[3] = &block_descriptor_73;
    v10 = _Block_copy(v12);

    v11 = [v7 imageWithActions_];

    _Block_release(v10);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if ((v7 & 1) == 0)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

void closure #1 in static UIImage.radialGradient(withColors:size:)(void *a1, uint64_t a2, double a3, double a4)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v9 = specialized Array.count.getter(a2);
  if (v9)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v9 < 0)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v10 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1BFB22010](v10, a2);
      }

      else
      {
        v11 = *(a2 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      v13 = [v11 CGColor];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v9 != v10);
  }

  if (__OFSUB__(v9, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v9 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v24 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v15 = 0;
    v14 = v24;
    v16 = *(v24 + 16);
    do
    {
      if (v16 >= *(v24 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      *(v24 + 16) = v16 + 1;
      *(v24 + 8 * v16++ + 32) = 1.0 / (v9 - 1) * v15++;
    }

    while (v9 != v15);
  }

  type metadata accessor for CGColorRef(0);
  space = DeviceRGB;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v18 = CGGradientCreateWithColors(space, isa, (v14 + 32));

  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = a4 * 0.5;
  if (a4 >= a3)
  {
    v20 = a3;
  }

  else
  {
    v20 = a4;
  }

  v21 = v20 * 0.5;
  v22 = [a1 CGContext];
  v26.x = a3 * 0.5;
  v26.y = v19;
  v27.x = a3 * 0.5;
  v27.y = v19;
  CGContextDrawRadialGradient(v22, v18, v26, 0.0, v27, v21, 2u);
}

UIImage *UIImage.withPadding(_:)(double a1)
{
  [v1 size];
  v4 = a1 + a1 + v3;
  [v1 size];
  v6 = a1 + a1 + v5;
  [v1 scale];
  v8 = v7;
  v11.width = v4;
  v11.height = v6;
  UIGraphicsBeginImageContextWithOptions(v11, 0, v8);
  [v1 drawAtPoint_];
  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return v9;
}

uint64_t specialized static UIImage.image(named:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a3;
  v23[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v8 = (*(a4 + 8))(a3, a4);
  v10 = v9;
  v11 = objc_opt_self();
  v12 = [v11 conversationKit];
  v13 = [objc_opt_self() mainScreen];
  v14 = [v13 traitCollection];

  v15 = @nonobjc UIImage.__allocating_init(named:in:compatibleWith:)(v8, v10, v12, v14);
  if (v15)
  {
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(v23);
    return v16;
  }

  else
  {
    _StringGuts.grow(_:)(38);
    MEMORY[0x1BFB20B10](0xD000000000000015, 0x80000001BC4F6E90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit9ImageName_pMd);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1BFB20B10](0x7562206D6F726620, 0xED000020656C646ELL);
    v18 = [v11 conversationKit];
    v19 = [v18 description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    MEMORY[0x1BFB20B10](v20, v22);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void __swiftcall ClarityUIOutgoingCallActionsNavigationDestination.init(contact:actions:)(ConversationKit::ClarityUIOutgoingCallActionsNavigationDestination *__return_ptr retstr, ConversationKit::ClarityUIContact contact, Swift::OpaquePointer_optional actions)
{
  v3 = *(contact.cnContact.super.isa + 2);
  v4 = *(contact.cnContact.super.isa + 3);
  *&retstr->contact.cnContact.super.isa = *contact.cnContact.super.isa;
  retstr->contact.id._countAndFlagsBits = v3;
  retstr->contact.id._object = v4;
  retstr->actions.value._rawValue = contact.contactStore.super.isa;
}

void ClarityUIOutgoingCallActionsView.navigationPath.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);

  JUMPOUT(0x1BFB20050);
}

uint64_t key path setter for ClarityUIOutgoingCallActionsView.navigationPath : ClarityUIOutgoingCallActionsView(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return ClarityUIOutgoingCallActionsView.navigationPath.setter();
}

uint64_t ClarityUIOutgoingCallActionsView.navigationPath.setter()
{
  OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for NavigationPath();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  (*(v2 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
  Binding.wrappedValue.setter();
  return (*(v2 + 8))(v0, v1);
}

void (*ClarityUIOutgoingCallActionsView.navigationPath.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = type metadata accessor for NavigationPath();
  *v3 = v4;
  v5 = *(v4 - 8);
  v3[1] = v5;
  v6 = *(v5 + 64);
  v3[2] = __swift_coroFrameAllocStub(v6);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
  v3[4] = v7;
  OUTLINED_FUNCTION_7_0();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v3[5] = v9;
  outlined init with copy of Binding<NavigationPath>(v1, v9);
  MEMORY[0x1BFB20050](v7);
  return ClarityUIOutgoingCallActionsView.navigationPath.modify;
}

void ClarityUIOutgoingCallActionsView.navigationPath.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 16);
  v5 = *(*a1 + 24);
  if (a2)
  {
    v6 = *v2;
    v7 = v2[1];
    (*(v7 + 16))(*(*a1 + 16), v5, *v2);
    Binding.wrappedValue.setter();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    Binding.wrappedValue.setter();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
  }

  free(v3);
  free(v5);
  free(v4);

  free(v2);
}

uint64_t ClarityUIOutgoingCallActionsView.$navigationPath.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);

  return Binding.projectedValue.getter();
}

uint64_t ClarityUIOutgoingCallActionsView.contact.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ClarityUIOutgoingCallActionsView() + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  v8 = v4;
  v9 = v5;
}

uint64_t type metadata accessor for ClarityUIOutgoingCallActionsView()
{
  result = type metadata singleton initialization cache for ClarityUIOutgoingCallActionsView;
  if (!type metadata singleton initialization cache for ClarityUIOutgoingCallActionsView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 ClarityUIOutgoingCallActionsView.contact.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = v1 + *(type metadata accessor for ClarityUIOutgoingCallActionsView() + 20);
  v6 = *v5;
  v7 = *(v5 + 8);

  result = *a1;
  *v5 = *a1;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  return result;
}

double (*ClarityUIOutgoingCallActionsView.contact.modify())(void)
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for ClarityUIOutgoingCallActionsView();
  return TPNumberPadCharacter.rawValue.getter;
}

uint64_t ClarityUIOutgoingCallActionsView.actions.getter()
{
  type metadata accessor for ClarityUIOutgoingCallActionsView();
}

uint64_t ClarityUIOutgoingCallActionsView.actions.setter()
{
  OUTLINED_FUNCTION_17_1();
  v2 = *(type metadata accessor for ClarityUIOutgoingCallActionsView() + 24);

  *(v1 + v2) = v0;
  return result;
}

double (*ClarityUIOutgoingCallActionsView.actions.modify())(void)
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for ClarityUIOutgoingCallActionsView();
  return TPNumberPadCharacter.rawValue.getter;
}

uint64_t ClarityUIOutgoingCallActionsView.effectiveActions.getter()
{
  v1 = type metadata accessor for ClarityUIOutgoingCallActionsView();
  v2 = *(v1 + 24);
  if (*(v0 + v2))
  {
    v3 = *(v0 + v2);
  }

  else
  {
    v4 = v0 + *(v1 + 20);
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    v7 = *(v4 + 24);
    v13 = *v4;
    v14 = v5;
    v15 = v6;
    v16 = v7;
    v8 = v13;
    v9 = v5;

    v3 = ClarityUIOutgoingCallActionProvider.outgoingCallActions(for:)(&v13);
    v10 = v13;
    v11 = v14;
  }

  return v3;
}

uint64_t ClarityUIOutgoingCallActionsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v29[1] = a1;
  v2 = type metadata accessor for ClarityUIOutgoingCallActionsView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyACyACyAA4ListVys5NeverOAA7ForEachVySay15ConversationKit27ClarityUIOutgoingCallActionVGAnL0O14NavigationLink33_043AC4DA0ABA79F8BBBB27146E402EABLLVSgGGAA18_AnimationModifierVyAOGGAA022_EnvironmentKeyWritingZ0VyAA5ColorVSgGGGAA011_AppearanceoZ0VGMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v29 - v8;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA15ModifiedContentVyAIyAA4ListVys5NeverOAA7ForEachVySay15ConversationKit27ClarityUIOutgoingCallActionVGArP0S14NavigationLink33_043AC4DA0ABA79F8BBBB27146E402EABLLVSgGGAA18_AnimationModifierVyASGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd) + 44)];
  v30 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay15ConversationKit27ClarityUIOutgoingCallActionVGAfD0J14NavigationLink33_043AC4DA0ABA79F8BBBB27146E402EABLLVSgGMd);
  lazy protocol witness table accessor for type ForEach<[ClarityUIOutgoingCallAction], ClarityUIOutgoingCallAction, ActionNavigationLink?> and conformance <> ForEach<A, B, C>();
  List<>.init(content:)();
  v11 = static Animation.default.getter();
  v12 = ClarityUIOutgoingCallActionsView.effectiveActions.getter();
  v13 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA7ForEachVySay15ConversationKit27ClarityUIOutgoingCallActionVGAlJ0N14NavigationLink33_043AC4DA0ABA79F8BBBB27146E402EABLLVSgGGAA18_AnimationModifierVyAMGGMd) + 36)];
  *v13 = v11;
  v13[1] = v12;
  v14 = static Color.clear.getter();
  KeyPath = swift_getKeyPath();
  v16 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA7ForEachVySay15ConversationKit27ClarityUIOutgoingCallActionVGAlJ0N14NavigationLink33_043AC4DA0ABA79F8BBBB27146E402EABLLVSgGGAA18_AnimationModifierVyAMGGAA022_EnvironmentKeyWritingY0VyAA5ColorVSgGGMd) + 36)];
  *v16 = KeyPath;
  v16[1] = v14;
  outlined init with copy of ClarityUIOutgoingCallActionsView(v1, v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  outlined init with take of ClarityUIOutgoingCallActionsView(v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v19 = &v9[*(v6 + 36)];
  *v19 = partial apply for closure #2 in ClarityUIOutgoingCallActionsView.body.getter;
  v19[1] = v18;
  v19[2] = 0;
  v19[3] = 0;
  v20 = v1 + *(v3 + 28);
  v21 = *v20;
  v33 = CNContact.clarityUIDisplayName.getter();
  v34 = v22;
  v23 = *(v20 + 8);
  v31 = v21;
  v32 = v23;
  lazy protocol witness table accessor for type ModifiedContent<VStack<ModifiedContent<ModifiedContent<List<Never, ForEach<[ClarityUIOutgoingCallAction], ClarityUIOutgoingCallAction, ActionNavigationLink?>>, _AnimationModifier<[ClarityUIOutgoingCallAction]>>, _EnvironmentKeyWritingModifier<Color?>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type ClarityUIContactAvatar and conformance ClarityUIContactAvatar();
  v24 = v21;
  v25 = v23;
  View.navigationTitle<A, B>(_:icon:)();
  v26 = v31;
  v27 = v32;

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s7SwiftUI15ModifiedContentVyAA6VStackVyACyACyAA4ListVys5NeverOAA7ForEachVySay15ConversationKit27ClarityUIOutgoingCallActionVGAnL0O14NavigationLink33_043AC4DA0ABA79F8BBBB27146E402EABLLVSgGGAA18_AnimationModifierVyAOGGAA022_EnvironmentKeyWritingZ0VyAA5ColorVSgGGGAA011_AppearanceoZ0VGMd);
}

uint64_t closure #1 in closure #1 in ClarityUIOutgoingCallActionsView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for ClarityUIOutgoingCallActionsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v8[1] = ClarityUIOutgoingCallActionsView.effectiveActions.getter();
  swift_getKeyPath();
  outlined init with copy of ClarityUIOutgoingCallActionsView(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of ClarityUIOutgoingCallActionsView(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit27ClarityUIOutgoingCallActionVGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20ActionNavigationLink33_043AC4DA0ABA79F8BBBB27146E402EABLLVSgMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [ClarityUIOutgoingCallAction] and conformance [A], &_sSay15ConversationKit27ClarityUIOutgoingCallActionVGMd);
  lazy protocol witness table accessor for type ClarityUIOutgoingCallAction and conformance ClarityUIOutgoingCallAction();
  lazy protocol witness table accessor for type ActionNavigationLink? and conformance <A> A?();
  return ForEach<>.init(_:id:content:)();
}

unint64_t lazy protocol witness table accessor for type ForEach<[ClarityUIOutgoingCallAction], ClarityUIOutgoingCallAction, ActionNavigationLink?> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[ClarityUIOutgoingCallAction], ClarityUIOutgoingCallAction, ActionNavigationLink?> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[ClarityUIOutgoingCallAction], ClarityUIOutgoingCallAction, ActionNavigationLink?> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay15ConversationKit27ClarityUIOutgoingCallActionVGAfD0J14NavigationLink33_043AC4DA0ABA79F8BBBB27146E402EABLLVSgGMd);
    lazy protocol witness table accessor for type ActionNavigationLink? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[ClarityUIOutgoingCallAction], ClarityUIOutgoingCallAction, ActionNavigationLink?> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActionNavigationLink? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ActionNavigationLink? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ActionNavigationLink? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit20ActionNavigationLink33_043AC4DA0ABA79F8BBBB27146E402EABLLVSgMd);
    lazy protocol witness table accessor for type ActionNavigationLink and conformance ActionNavigationLink();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionNavigationLink? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActionNavigationLink and conformance ActionNavigationLink()
{
  result = lazy protocol witness table cache variable for type ActionNavigationLink and conformance ActionNavigationLink;
  if (!lazy protocol witness table cache variable for type ActionNavigationLink and conformance ActionNavigationLink)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionNavigationLink and conformance ActionNavigationLink);
  }

  return result;
}

double closure #1 in closure #1 in closure #1 in ClarityUIOutgoingCallActionsView.body.getter@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  if (v4)
  {
    v6 = *(a1 + 16);
    v8 = *a1;
    v7 = a1[1];
    v9 = a2 + *(type metadata accessor for ClarityUIOutgoingCallActionsView() + 20);
    v10 = *v9;
    v11 = *(v9 + 8);
    v13 = *(v9 + 16);
    v12 = *(v9 + 24);
    v14 = *v9;
    v15 = v11;

    v16 = v5;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v13 = 0;
    v12 = 0;
    v8 = 0;
    v7 = 0;
    v16 = 0;
    v6 = 0;
  }

  *a3 = v10;
  a3[1] = v11;
  a3[2] = v13;
  a3[3] = v12;
  a3[4] = v8;
  a3[5] = v7;
  a3[6] = v6;
  a3[7] = v4;
  a3[8] = v16;

  *&result = outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v4, v5).n128_u64[0];
  return result;
}

void closure #2 in ClarityUIOutgoingCallActionsView.body.getter(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for ClarityUIOutgoingCallActionsView() + 20);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v9 = *v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v5 = v9;
  v6 = v2;

  v14.cnContact.super.isa = &v9;
  ClarityUICallHistory.markRecentCallsAsRead(for:)(v14);
  v7 = v10;
  v8 = v9;
}

uint64_t ClarityUIOutgoingCallActionsView.init(navigationPath:contact:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  outlined init with take of Binding<NavigationPath>(a1, a4);
  v9 = type metadata accessor for ClarityUIOutgoingCallActionsView();
  v10 = a4 + v9[5];
  *v10 = *a2;
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  *(a4 + v9[6]) = a3;
  v11 = v9[7];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(a4 + v11) = static ClarityUIOutgoingCallActionProvider.shared;
  v12 = v9[8];
  v13 = one-time initialization token for shared;

  if (v13 != -1)
  {
    swift_once();
  }

  *(a4 + v12) = static ClarityUICallHistory.shared;
}

uint64_t ActionNavigationLink.body.getter@<X0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = v1[1];
  v25[0] = *v1;
  v25[1] = v3;
  v4 = v1[2];
  v20 = v3;
  v21 = v4;
  v22 = *(v1 + 6);
  v5 = __dst[7];
  v6 = __dst[8];
  v24 = v4;
  v19 = v25[0];
  v13 = v25[0];
  v14 = v3;
  v15 = v4;
  v16 = v22;
  v17 = __dst[7];
  v18 = __dst[8];
  outlined init with copy of ClarityUIContact(v25, v12);
  outlined init with copy of String(&v24, v12);
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5LabelVyAA4TextVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGAKyAA13AnyShapeStyleVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<Label<Text, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ClarityUIPreviewNavigationDestination and conformance ClarityUIPreviewNavigationDestination();
  NavigationLink<>.init<A>(value:label:)();
  v7 = v5 == 0;
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyACyAA5LabelVyAA4TextVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGAMyAA13AnyShapeStyleVSgGGs5NeverOGAA01_jk9TransformM0VySbGGMd);
  v11 = (a1 + *(result + 36));
  *v11 = KeyPath;
  v11[1] = partial apply for closure #1 in View.disabled(_:);
  v11[2] = v9;
  return result;
}

uint64_t closure #1 in ActionNavigationLink.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-v6];
  v16 = a1;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  Label.init(title:icon:)();
  if (*(a1 + 48))
  {
    v8 = static Color.green.getter();
  }

  else
  {
    v8 = static Color.orange.getter();
  }

  v9 = v8;
  KeyPath = swift_getKeyPath();
  v17 = v9;
  v11 = AnyShapeStyle.init<A>(_:)();
  (*(v5 + 32))(a2, v7, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5LabelVyAA4TextVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGAKyAA13AnyShapeStyleVSgGGMd);
  v13 = (a2 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = v11;
  return result;
}

uint64_t closure #1 in closure #1 in ActionNavigationLink.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = "ASSISTIVE_ACCESS_VOICE_ONLY";
  if (*(a1 + 48))
  {
    v3 = "ASSISTIVE_ACCESS_VIDEO_CALL";
  }

  v4 = v3 - 32;
  v5 = [objc_opt_self() conversationKit];
  v13._object = 0xE000000000000000;
  v6.value._countAndFlagsBits = 0x61737265766E6F43;
  v6.value._object = 0xEF74694B6E6F6974;
  v7._object = (v4 | 0x8000000000000000);
  v7._countAndFlagsBits = 0xD00000000000001BLL;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v13);

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v12;
  return result;
}

uint64_t closure #2 in closure #1 in ActionNavigationLink.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV21TemplateRenderingModeOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  Image.init(systemName:)();
  v5 = *MEMORY[0x1E6981698];
  v6 = type metadata accessor for Image.TemplateRenderingMode();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v6);
  v7 = Image.renderingMode(_:)();

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s7SwiftUI5ImageV21TemplateRenderingModeOSgMd);
  v8 = static Color.white.getter();
  result = swift_getKeyPath();
  *a1 = v7;
  a1[1] = result;
  a1[2] = v8;
  return result;
}

uint64_t ClarityUIOutgoingCallActionsNavigationDestination.contact.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  v6 = v2;
  v7 = v3;
}

__n128 ClarityUIOutgoingCallActionsNavigationDestination.contact.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = *v1;
  v6 = *(v1 + 8);

  result = *a1;
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t ClarityUIOutgoingCallActionsNavigationDestination.actions.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t static ClarityUIOutgoingCallActionsNavigationDestination.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a2[4];
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v5 & 1) != 0))
  {
    if (v2)
    {
      if (v3)
      {
        _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit27ClarityUIOutgoingCallActionV_Tt1g5();
        if (v7)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

void ClarityUIOutgoingCallActionsNavigationDestination.hash(into:)()
{
  v1 = *(v0 + 32);
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);

    specialized Array<A>.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int ClarityUIOutgoingCallActionsNavigationDestination.hashValue.getter()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    specialized Array<A>.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ClarityUIOutgoingCallActionsNavigationDestination()
{
  Hasher.init(_seed:)();
  ClarityUIOutgoingCallActionsNavigationDestination.hash(into:)();
  return Hasher._finalize()();
}

uint64_t key path getter for EnvironmentValues.tintColor : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t outlined init with copy of ClarityUIOutgoingCallActionsView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClarityUIOutgoingCallActionsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ClarityUIOutgoingCallActionsView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClarityUIOutgoingCallActionsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #2 in ClarityUIOutgoingCallActionsView.body.getter()
{
  v1 = *(type metadata accessor for ClarityUIOutgoingCallActionsView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  closure #2 in ClarityUIOutgoingCallActionsView.body.getter(v2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<ModifiedContent<ModifiedContent<List<Never, ForEach<[ClarityUIOutgoingCallAction], ClarityUIOutgoingCallAction, ActionNavigationLink?>>, _AnimationModifier<[ClarityUIOutgoingCallAction]>>, _EnvironmentKeyWritingModifier<Color?>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<ModifiedContent<ModifiedContent<List<Never, ForEach<[ClarityUIOutgoingCallAction], ClarityUIOutgoingCallAction, ActionNavigationLink?>>, _AnimationModifier<[ClarityUIOutgoingCallAction]>>, _EnvironmentKeyWritingModifier<Color?>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<ModifiedContent<ModifiedContent<List<Never, ForEach<[ClarityUIOutgoingCallAction], ClarityUIOutgoingCallAction, ActionNavigationLink?>>, _AnimationModifier<[ClarityUIOutgoingCallAction]>>, _EnvironmentKeyWritingModifier<Color?>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyACyACyAA4ListVys5NeverOAA7ForEachVySay15ConversationKit27ClarityUIOutgoingCallActionVGAnL0O14NavigationLink33_043AC4DA0ABA79F8BBBB27146E402EABLLVSgGGAA18_AnimationModifierVyAOGGAA022_EnvironmentKeyWritingZ0VyAA5ColorVSgGGGAA011_AppearanceoZ0VGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type VStack<ModifiedContent<ModifiedContent<List<Never, ForEach<[ClarityUIOutgoingCallAction], ClarityUIOutgoingCallAction, ActionNavigationLink?>>, _AnimationModifier<[ClarityUIOutgoingCallAction]>>, _EnvironmentKeyWritingModifier<Color?>>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA15ModifiedContentVyAEyAA4ListVys5NeverOAA7ForEachVySay15ConversationKit27ClarityUIOutgoingCallActionVGAnL0O14NavigationLink33_043AC4DA0ABA79F8BBBB27146E402EABLLVSgGGAA18_AnimationModifierVyAOGGAA022_EnvironmentKeyWritingZ0VyAA5ColorVSgGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<ModifiedContent<ModifiedContent<List<Never, ForEach<[ClarityUIOutgoingCallAction], ClarityUIOutgoingCallAction, ActionNavigationLink?>>, _AnimationModifier<[ClarityUIOutgoingCallAction]>>, _EnvironmentKeyWritingModifier<Color?>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata completion function for ClarityUIOutgoingCallActionsView()
{
  type metadata accessor for Binding<NavigationPath>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [ClarityUIOutgoingCallAction]?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ClarityUIOutgoingCallActionProvider();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ClarityUICallHistory();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Binding<NavigationPath>()
{
  if (!lazy cache variable for type metadata for Binding<NavigationPath>)
  {
    type metadata accessor for NavigationPath();
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<NavigationPath>);
    }
  }
}

void type metadata accessor for [ClarityUIOutgoingCallAction]?()
{
  if (!lazy cache variable for type metadata for [ClarityUIOutgoingCallAction]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15ConversationKit27ClarityUIOutgoingCallActionVGMd);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [ClarityUIOutgoingCallAction]?);
    }
  }
}

uint64_t getEnumTagSinglePayload for ActionNavigationLink(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for ActionNavigationLink(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Label<Text, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Label<Text, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Label<Text, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5LabelVyAA4TextVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGAKyAA13AnyShapeStyleVSgGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Label<Text, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Label<Text, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

double partial apply for closure #1 in closure #1 in closure #1 in ClarityUIOutgoingCallActionsView.body.getter@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for ClarityUIOutgoingCallActionsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in closure #1 in closure #1 in ClarityUIOutgoingCallActionsView.body.getter(a1, v6, a2);
}

unint64_t lazy protocol witness table accessor for type ClarityUIOutgoingCallAction and conformance ClarityUIOutgoingCallAction()
{
  result = lazy protocol witness table cache variable for type ClarityUIOutgoingCallAction and conformance ClarityUIOutgoingCallAction;
  if (!lazy protocol witness table cache variable for type ClarityUIOutgoingCallAction and conformance ClarityUIOutgoingCallAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIOutgoingCallAction and conformance ClarityUIOutgoingCallAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClarityUIOutgoingCallAction and conformance ClarityUIOutgoingCallAction;
  if (!lazy protocol witness table cache variable for type ClarityUIOutgoingCallAction and conformance ClarityUIOutgoingCallAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIOutgoingCallAction and conformance ClarityUIOutgoingCallAction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationLink<ModifiedContent<Label<Text, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Never>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<ModifiedContent<Label<Text, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Never>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<ModifiedContent<Label<Text, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Never>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA14NavigationLinkVyACyAA5LabelVyAA4TextVACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGAMyAA13AnyShapeStyleVSgGGs5NeverOGAA01_jk9TransformM0VySbGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type NavigationLink<ModifiedContent<Label<Text, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Never> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAA5LabelVyAA4TextVAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGAMyAA13AnyShapeStyleVSgGGs5NeverOGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationLink<ModifiedContent<Label<Text, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>, Never>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t LiveVoicemailIntroView.init(_:)()
{
  type metadata accessor for TranscriptionViewModel(0);
  lazy protocol witness table accessor for type TranscriptionViewModel and conformance TranscriptionViewModel();

  return ObservedObject.init(wrappedValue:)();
}

unint64_t lazy protocol witness table accessor for type TranscriptionViewModel and conformance TranscriptionViewModel()
{
  result = lazy protocol witness table cache variable for type TranscriptionViewModel and conformance TranscriptionViewModel;
  if (!lazy protocol witness table cache variable for type TranscriptionViewModel and conformance TranscriptionViewModel)
  {
    type metadata accessor for TranscriptionViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranscriptionViewModel and conformance TranscriptionViewModel);
  }

  return result;
}

uint64_t key path getter for LiveVoicemailIntroView.viewModel : LiveVoicemailIntroView@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = LiveVoicemailIntroView.viewModel.getter();
  *a2 = v3;
  return result;
}

uint64_t LiveVoicemailIntroView.viewModel.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

void LiveVoicemailIntroView.$viewModel.getter()
{
  OUTLINED_FUNCTION_6_7();
  type metadata accessor for TranscriptionViewModel(0);
  lazy protocol witness table accessor for type TranscriptionViewModel and conformance TranscriptionViewModel();

  JUMPOUT(0x1BFB1E3A0);
}

BOOL LiveVoicemailIntroView.showDivider.getter()
{
  v0 = *(TranscriptionViewModel.captions.getter() + 16);

  return v0 != 0;
}

uint64_t LiveVoicemailIntroView.body.getter()
{
  OUTLINED_FUNCTION_6_7();
  v1 = v0;
  *v0 = static HorizontalAlignment.center.getter();
  v1[1] = 0;
  *(v1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA15ModifiedContentVyAA0D0PAAE10fontWeightyQrAA4FontV0M0VSgFQOyAA5ImageV_Qo_AA010_FixedSizeG0VG_AMyAA4TextVAZGtGG_AMyAMyA1_AA30_EnvironmentKeyWritingModifierVyAA0R9AlignmentOGGAZGAMyAMyAMyAA7DividerVAA016_BackgroundStyleV0VyAA5ColorVGGAA08_PaddingG0VGA21_GSgtGGMd);
  return closure #1 in LiveVoicemailIntroView.body.getter(v1 + *(v2 + 44));
}

uint64_t closure #1 in LiveVoicemailIntroView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA7DividerVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGAMGMd);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v56 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA7DividerVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGAMGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v56 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAA5ImageV_Qo_AA16_FixedSizeLayoutVG_AGyAA4TextVATGtGGMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v61 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE10fontWeightyQrAA4FontV0L0VSgFQOyAA5ImageV_Qo_AA010_FixedSizeG0VG_AKyAA4TextVAXGtGGMd);
  closure #1 in closure #1 in LiveVoicemailIntroView.body.getter(&v13[*(v14 + 44)]);
  v15.super.isa = [objc_opt_self() conversationKit];
  v71._object = 0xE000000000000000;
  v16.value._countAndFlagsBits = 0x61737265766E6F43;
  v16.value._object = 0xEF74694B6E6F6974;
  v17._object = 0x80000001BC511570;
  v17._countAndFlagsBits = 0xD000000000000014;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v71._countAndFlagsBits = 0;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v16, v15, v18, v71);

  v65 = v19;
  lazy protocol witness table accessor for type String and conformance String();
  v20 = Text.init<A>(_:)();
  v59 = v22;
  v60 = v21;
  LOBYTE(v15.super.isa) = v23;
  KeyPath = swift_getKeyPath();
  v24 = v15.super.isa & 1;
  LOBYTE(v65._countAndFlagsBits) = v15.super.isa & 1;
  v25 = *(TranscriptionViewModel.captions.getter() + 16);

  if (v25)
  {
    Divider.init()();
    v26 = static Color.white.getter();
    v27 = static Edge.Set.all.getter();
    v28 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7DividerVAA24_BackgroundStyleModifierVyAA5ColorVGGMd) + 36)];
    *v28 = v26;
    v28[8] = v27;
    LOBYTE(v26) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA7DividerVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGMd) + 36)];
    *v37 = v26;
    *(v37 + 1) = v30;
    *(v37 + 2) = v32;
    *(v37 + 3) = v34;
    *(v37 + 4) = v36;
    v37[40] = 0;
    LOBYTE(v26) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v38 = &v3[*(v1 + 36)];
    *v38 = v26;
    *(v38 + 1) = v39;
    *(v38 + 2) = v40;
    *(v38 + 3) = v41;
    *(v38 + 4) = v42;
    v38[40] = 0;
    outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<Divider, _BackgroundStyleModifier<Color>>, _PaddingLayout>, _PaddingLayout>(v3, v8);
    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v44 = v8;
  __swift_storeEnumTagSinglePayload(v8, v43, 1, v1);
  v45 = v61;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Divider, _BackgroundStyleModifier<Color>>, _PaddingLayout>, _PaddingLayout>?();
  v46 = v62;
  v56 = v13;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Divider, _BackgroundStyleModifier<Color>>, _PaddingLayout>, _PaddingLayout>?();
  v47 = v57;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Divider, _BackgroundStyleModifier<Color>>, _PaddingLayout>, _PaddingLayout>?();
  v48 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAA5ImageV_Qo_AA16_FixedSizeLayoutVG_AGyAA4TextVATGtGG_AGyAGyAwA30_EnvironmentKeyWritingModifierVyAA0O9AlignmentOGGATGAGyAGyAGyAA7DividerVAA016_BackgroundStyleS0VyAA5ColorVGGAA08_PaddingN0VGA15_GSgtMd) + 48));
  v49 = v20;
  v50 = v60;
  *&v63 = v20;
  *(&v63 + 1) = v60;
  v51 = v24;
  v64[0] = v24;
  v52 = KeyPath;
  v53 = v59;
  *&v64[8] = v59;
  *&v64[16] = KeyPath;
  *&v64[24] = 1;
  v64[26] = 1;
  v54 = *v64;
  *v48 = v63;
  v48[1] = v54;
  *(v48 + 27) = *&v64[11];
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Divider, _BackgroundStyleModifier<Color>>, _PaddingLayout>, _PaddingLayout>?();
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Divider, _BackgroundStyleModifier<Color>>, _PaddingLayout>, _PaddingLayout>?();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v44, &_s7SwiftUI15ModifiedContentVyACyACyAA7DividerVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGAMGSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v56, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAA5ImageV_Qo_AA16_FixedSizeLayoutVG_AGyAA4TextVATGtGGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v46, &_s7SwiftUI15ModifiedContentVyACyACyAA7DividerVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGAMGSgMd);
  v65._countAndFlagsBits = v49;
  v65._object = v50;
  v66 = v51;
  v67 = v53;
  v68 = v52;
  v69 = 1;
  v70 = 1;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v65, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA16_FixedSizeLayoutVGMd);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v45, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0I0VSgFQOyAA5ImageV_Qo_AA16_FixedSizeLayoutVG_AGyAA4TextVATGtGGMd);
}

uint64_t closure #1 in closure #1 in LiveVoicemailIntroView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA5ImageV_Qo_AA16_FixedSizeLayoutVGMd);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - v5;
  v35._countAndFlagsBits = Image.init(systemName:)();
  static Font.Weight.semibold.getter();
  View.fontWeight(_:)();

  *&v6[*(v2 + 44)] = 257;
  v7 = [objc_opt_self() conversationKit];
  v36._object = 0xE000000000000000;
  v8.value._countAndFlagsBits = 0x61737265766E6F43;
  v8.value._object = 0xEF74694B6E6F6974;
  v9._object = 0x80000001BC511590;
  v9._countAndFlagsBits = 0xD00000000000001BLL;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v8, v7, v10, v36);

  v35 = v11;
  lazy protocol witness table accessor for type String and conformance String();
  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  static Font.Weight.semibold.getter();
  v17 = Text.fontWeight(_:)();
  v19 = v18;
  v21 = v20;
  outlined consume of Text.Storage(v12, v14, v16 & 1);

  static Font.title.getter();
  v22 = Text.font(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  outlined consume of Text.Storage(v17, v19, v21 & 1);

  v29 = v33;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Divider, _BackgroundStyleModifier<Color>>, _PaddingLayout>, _PaddingLayout>?();
  v30 = v34;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Divider, _BackgroundStyleModifier<Color>>, _PaddingLayout>, _PaddingLayout>?();
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA5ImageV_Qo_AA16_FixedSizeLayoutVG_ACyAA4TextVAPGtMd) + 48);
  *v31 = v22;
  *(v31 + 8) = v24;
  *(v31 + 16) = v26 & 1;
  *(v31 + 24) = v28;
  *(v31 + 32) = 257;
  outlined copy of Text.Storage(v22, v24, v26 & 1);

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA5ImageV_Qo_AA16_FixedSizeLayoutVGMd);
  outlined consume of Text.Storage(v22, v24, v26 & 1);

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyAA5ImageV_Qo_AA16_FixedSizeLayoutVGMd);
}

unint64_t lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FixedSizeLayout>, ModifiedContent<Text, _FixedSizeLayout>)>>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Divider, _BackgroundStyleModifier<Color>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>()
{
  result = lazy protocol witness table cache variable for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FixedSizeLayout>, ModifiedContent<Text, _FixedSizeLayout>)>>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Divider, _BackgroundStyleModifier<Color>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>;
  if (!lazy protocol witness table cache variable for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FixedSizeLayout>, ModifiedContent<Text, _FixedSizeLayout>)>>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Divider, _BackgroundStyleModifier<Color>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAA0E0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyAA5ImageV_Qo_AA16_FixedSizeLayoutVG_AIyAA4TextVAVGtGG_AIyAIyAyA30_EnvironmentKeyWritingModifierVyAA0P9AlignmentOGGAVGAIyAIyAIyAA7DividerVAA016_BackgroundStyleT0VyAA5ColorVGGAA08_PaddingO0VGA17_GSgtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _FixedSizeLayout>, ModifiedContent<Text, _FixedSizeLayout>)>>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _FixedSizeLayout>, ModifiedContent<ModifiedContent<ModifiedContent<Divider, _BackgroundStyleModifier<Color>>, _PaddingLayout>, _PaddingLayout>?)>> and conformance VStack<A>);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<Divider, _BackgroundStyleModifier<Color>>, _PaddingLayout>, _PaddingLayout>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA7DividerVAA24_BackgroundStyleModifierVyAA5ColorVGGAA14_PaddingLayoutVGAMGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Divider, _BackgroundStyleModifier<Color>>, _PaddingLayout>, _PaddingLayout>?()
{
  OUTLINED_FUNCTION_6_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 16))(v0, v1);
  return v0;
}

id static UIVibrancyEffect.inCallControlsEffect.getter()
{
  v0 = objc_opt_self();
  if (one-time initialization token for backgroundBlurEffect != -1)
  {
    swift_once();
  }

  v1 = [v0 _effectForBlurEffect_vibrancyStyle_];

  return v1;
}

uint64_t RecentsCollectionViewDataSource.mapping()()
{
  OUTLINED_FUNCTION_0_1();
  v2 = (*(v1 + 240))();
  v3 = _s15ConversationKit17IndexPathMappablePAAE7mapping4from2inSDyS2iGSo26UICollectionViewDataSource_p_So0iJ0CtFAA017RecentsCollectionjkL0C_Tt1g5Tf4en_n5UIKit0ij8DiffablekL0CyAA0mnJ7SectionOAA0M8CallItemVG_Tg5(v2, *(v0 + 16));

  return v3;
}

void *RecentsCollectionViewDataSource.videoId(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  (*(*v1 + 280))(a1);
  if (closure #1 in RecentsCollectionViewDataSource.videoId(for:)(v1, v8))
  {
LABEL_2:
    v9 = 0;
    goto LABEL_9;
  }

  outlined init with copy of RecentsCallItem?(v8, v6);
  v10 = type metadata accessor for RecentsCallItem(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    outlined destroy of RecentsCallItem?(v8);
    v9 = 0;
    v8 = v6;
  }

  else
  {
    v9 = RecentsCallItem.messageIndicatorViewModel.getter();
    outlined destroy of RecentsCallItem(v6, type metadata accessor for RecentsCallItem);
    if (!v9)
    {
      goto LABEL_9;
    }

    v11 = outlined bridged method (ob) of @objc TPMessageIndicatorViewModel.identifier.getter(v9);
    if (!v12)
    {
      goto LABEL_2;
    }

    v9 = MEMORY[0x1BFB20BA0](v11);
  }

LABEL_9:
  outlined destroy of RecentsCallItem?(v8);
  return v9;
}

id closure #1 in RecentsCollectionViewDataSource.videoId(for:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentsCallItemType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecentCallRecentItemMetadata(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22 - v14;
  if (*(a1 + 88) != 1)
  {
    return 0;
  }

  outlined init with copy of RecentsCallItem?(a2, v15);
  v16 = type metadata accessor for RecentsCallItem(0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    outlined destroy of RecentsCallItem?(v15);
    return 0;
  }

  outlined init with copy of RecentsCallItemType(v15, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 2)
  {
    outlined destroy of RecentsCallItem(v6, type metadata accessor for RecentsCallItemType);
    outlined destroy of RecentsCallItem(v15, type metadata accessor for RecentsCallItem);
    return 0;
  }

  if ((EnumCaseMultiPayload - 3) >= 2)
  {
    v18 = v10;
  }

  else
  {
    v18 = v12;
  }

  _s15ConversationKit15RecentsCallItemVWObTm_3(v6, v18, type metadata accessor for RecentCallRecentItemMetadata);
  v19 = *(v18 + *(v7 + 52));
  v20 = v19;
  outlined destroy of RecentsCallItem(v18, type metadata accessor for RecentCallRecentItemMetadata);
  outlined destroy of RecentsCallItem(v15, type metadata accessor for RecentsCallItem);
  if (v19)
  {
    v19 = [v20 isSensitive];
  }

  return v19;
}

uint64_t RecentsCollectionViewDataSource.visibleIndexPaths()()
{
  v1 = [*(v0 + 16) indexPathsForVisibleItems];
  type metadata accessor for IndexPath();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t RecentsCollectionViewDataSource.container(at:)()
{
  v1 = *(v0 + 16);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [v1 cellForItemAtIndexPath_];

  if (v3)
  {
    swift_getObjectType();
    result = dynamic_cast_existential_1_conditional(v3);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t RecentsCollectionViewDataSource.isActive.getter()
{
  OUTLINED_FUNCTION_0_1();
  v1 = (*(v0 + 184))();
  OUTLINED_FUNCTION_4_120();
  v3 = (*((*MEMORY[0x1E69E7D40] & v2) + 0x2D0))();

  return v3 & 1;
}

uint64_t RecentsCollectionViewDataSource.videoMessages.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine5EmptyVySay15ConversationKit15RecentsCallItemVGs5NeverOGMd);
  OUTLINED_FUNCTION_2_7();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v10 - v4;
  OUTLINED_FUNCTION_0_1();
  v7 = (*(v6 + 208))();
  if (v7)
  {
    v10[1] = (*(*v7 + 104))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay15ConversationKit15RecentsCallItemVGs5NeverOGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<[RecentsCallItem], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay15ConversationKit15RecentsCallItemVGs5NeverOGMd);
    v8 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit15RecentsCallItemVGMd);
    Empty.init(completeImmediately:)();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Empty<[RecentsCallItem], Never> and conformance Empty<A, B>, &_s7Combine5EmptyVySay15ConversationKit15RecentsCallItemVGs5NeverOGMd);
    v8 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v5, v0);
  }

  return v8;
}

void RecentsCollectionViewDataSource.collator.setter(uint64_t a1)
{
  v2 = *(v1 + 96);
  *(v1 + 96) = a1;
}

void (*RecentsCollectionViewDataSource.collator.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = RecentsCollectionViewDataSource.collator.getter();
  return RecentsCollectionViewDataSource.collator.modify;
}

void RecentsCollectionViewDataSource.collator.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 96);
  *(v1 + 96) = v2;
}

uint64_t key path setter for RecentsCollectionViewDataSource.messageInboxController : RecentsCollectionViewDataSource(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 216);

  return v2(v3);
}

uint64_t RecentsCollectionViewDataSource.messageInboxController.setter(uint64_t a1)
{
  v2 = *(v1 + 104);
  *(v1 + 104) = a1;
  return outlined consume of TranslationTextView??(v2);
}

uint64_t (*RecentsCollectionViewDataSource.messageInboxController.modify(void *a1))(void *a1, char a2)
{
  a1[1] = v1;
  *a1 = RecentsCollectionViewDataSource.messageInboxController.getter();
  return RecentsCollectionViewDataSource.messageInboxController.modify;
}

uint64_t RecentsCollectionViewDataSource.messageInboxController.modify(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 104) = *a1;
  if (a2)
  {

    outlined consume of TranslationTextView??(v3);
  }

  else
  {

    return outlined consume of TranslationTextView??(v3);
  }
}

uint64_t RecentsCollectionViewDataSource.cellProvider.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t RecentsCollectionViewDataSource.supplementaryViewProvider.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t RecentsCollectionViewDataSource.__allocating_init(collectionView:recentsController:conversationManager:linkController:cellProvider:supplementaryViewProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_5_115();
  outlined init with copy of IDSLookupManager(v11, v19);
  v17 = (*(v8 + 232))(v12, v19, v10, v9, 0, a5, a6, a7, a8);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v17;
}

uint64_t RecentsCollectionViewDataSource.__allocating_init(collectionView:recentsController:conversationManager:linkController:sensitiveContentTipViewModel:cellProvider:supplementaryViewProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_5_115();
  v17 = *(v15 + 24);
  v16 = *(v15 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v15, v17);
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v21 = v20 - v19;
  (*(v22 + 16))(v20 - v19);
  v23 = a10(v14, v21, v12, v11, a5, a6, a7, a8, a9, v10, v17, v16);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v23;
}

void RecentsCollectionViewDataSource.dataSource.setter(uint64_t a1)
{
  v2 = *(v1 + 144);
  *(v1 + 144) = a1;
}

void (*RecentsCollectionViewDataSource.dataSource.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = RecentsCollectionViewDataSource.dataSource.getter();
  return RecentsCollectionViewDataSource.dataSource.modify;
}

void RecentsCollectionViewDataSource.dataSource.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 144);
  *(v1 + 144) = v2;
}

uint64_t RecentsCollectionViewDataSource.section(for:)()
{
  v1 = IndexPath.section.getter();
  v2 = *(*v0 + 264);

  return v2(v1);
}

void RecentsCollectionViewDataSource.callItem(for:)(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_0_1();
  v5 = (*(v4 + 240))();
  a2(a1);
}

uint64_t RecentsCollectionViewDataSource.callItems(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v33 - v3;
  v5 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_2_7();
  v33[1] = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v38 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_0_1();
  v16 += 35;
  v36 = *v16;
  v19 = *(v17 + 16);
  v18 = v17 + 16;
  v20 = a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
  v34 = *(v18 + 56);
  v35 = v19;
  v21 = (v18 - 8);
  v22 = MEMORY[0x1E69E7CC0];
  v33[2] = v16;
  v23 = v5;
  v33[0] = v5;
  v37 = v10;
  do
  {
    v24 = v38;
    v25 = v18;
    v35(v14, v20, v38);
    v36(v14);
    (*v21)(v14, v24);
    if (__swift_getEnumTagSinglePayload(v4, 1, v23) == 1)
    {
      outlined destroy of RecentsCallItem?(v4);
    }

    else
    {
      OUTLINED_FUNCTION_2_131();
      _s15ConversationKit15RecentsCallItemVWObTm_3(v4, v37, v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v22 = v30;
      }

      v27 = *(v22 + 16);
      if (v27 >= *(v22 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v22 = v31;
      }

      *(v22 + 16) = v27 + 1;
      OUTLINED_FUNCTION_2_131();
      _s15ConversationKit15RecentsCallItemVWObTm_3(v37, v28, v29);
      v23 = v33[0];
    }

    v20 += v34;
    --v15;
    v18 = v25;
  }

  while (v15);
  return v22;
}

void RecentsCollectionViewDataSource.deleteCallItems(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 184))();
  OUTLINED_FUNCTION_4_120();
  v9 = v7;
  (*((*MEMORY[0x1E69E7D40] & v8) + 0x430))(a1, a2, a3);
}

Swift::Void __swiftcall RecentsCollectionViewDataSource.suspend()()
{
  OUTLINED_FUNCTION_0_1();
  (*(v0 + 184))();
  OUTLINED_FUNCTION_4_120();
  v3 = v1;
  (*((*MEMORY[0x1E69E7D40] & v2) + 0x2E0))();
}

void RecentsCollectionViewDataSource.deleteCallFilteringTip(completion:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 184))();
  OUTLINED_FUNCTION_4_120();
  v7 = v5;
  (*((*MEMORY[0x1E69E7D40] & v6) + 0x438))(a1, a2);
}

uint64_t RecentsCollectionViewDataSource.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  outlined consume of TranslationTextView??(*(v0 + 104));

  return v0;
}

uint64_t RecentsCollectionViewDataSource.__deallocating_deinit()
{
  RecentsCollectionViewDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined bridged method (ob) of @objc TPMessageIndicatorViewModel.identifier.getter(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t _s15ConversationKit17IndexPathMappablePAAE7mapping4from2inSDyS2iGSo26UICollectionViewDataSource_p_So0iJ0CtFAA017RecentsCollectionjkL0C_Tt1g5Tf4en_n5UIKit0ij8DiffablekL0CyAA0mnJ7SectionOAA0M8CallItemVG_Tg5(void *a1, void *a2)
{
  if ([a1 respondsToSelector_])
  {
    v4 = [a1 numberOfSectionsInCollectionView_];
  }

  else
  {
    v4 = 1;
  }

  v5 = Dictionary.init(dictionaryLiteral:)();
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = v5;
    v7 = a1;
    v8 = a2;
    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {

        return v6;
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v10 = [v7 collectionView:v8 numberOfItemsInSection:i];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(i);
      v14 = v6[2];
      v15 = (v13 & 1) == 0;
      v16 = v14 + v15;
      if (__OFADD__(v14, v15))
      {
        goto LABEL_19;
      }

      v17 = v12;
      v18 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2iGMd);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v16))
      {
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(i);
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_22;
        }

        v17 = v19;
      }

      if (v18)
      {
        *(v6[7] + 8 * v17) = v10;
      }

      else
      {
        v6[(v17 >> 6) + 8] |= 1 << v17;
        *(v6[6] + 8 * v17) = i;
        *(v6[7] + 8 * v17) = v10;
        v21 = v6[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_20;
        }

        v6[2] = v23;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t outlined init with copy of RecentsCallItem?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RecentsCallItem?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of RecentsCollectionViewDataSource.section(for:)()
{
  return (*(*v0 + 264))();
}

{
  return (*(*v0 + 272))();
}

uint64_t outlined init with copy of RecentsCallItemType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentsCallItemType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DockKitAccessoryManager.systemEventData(info:data:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a2;
  aBlock[4] = partial apply for closure #1 in DockKitAccessoryManager.systemEventData(info:data:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_74;
  v18 = _Block_copy(aBlock);
  v19 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v14, v8, v18);
  _Block_release(v18);

  (*(v5 + 8))(v8, v3);
  return (*(v11 + 8))(v14, v9);
}

void closure #1 in DockKitAccessoryManager.systemEventData(info:data:)(uint64_t a1, void *a2)
{
  swift_getObjectType();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1BBC58000, v11, v12, "Camera Controller delegate is nil", v13, 2u);
      MEMORY[0x1BFB23DF0](v13, -1, -1);
    }

    goto LABEL_22;
  }

  v5 = *(v4 + 56);
  v6 = AccessorySystemEvent.header.getter();
  if (static AccessorySystemEvent.kHeaderCameraShutter.getter() != v6)
  {
    if (static AccessorySystemEvent.kHeaderCameraFlip.getter() == v6)
    {
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1BBC58000, v14, v15, "Remote control accessory flip button pressed.", v16, 2u);
        MEMORY[0x1BFB23DF0](v16, -1, -1);
      }

      ObjectType = swift_getObjectType();
      (*(v5 + 16))(ObjectType, v5);
      goto LABEL_28;
    }

    if (static AccessorySystemEvent.kHeaderCameraZoom.getter() == v6)
    {
      v20 = a2;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 67109120;
        *(v23 + 4) = AccessorySystemEvent.payload.getter();

        _os_log_impl(&dword_1BBC58000, v21, v22, "Remote control accessory zoom button pressed with payload %u", v23, 8u);
        MEMORY[0x1BFB23DF0](v23, -1, -1);
      }

      else
      {

        v21 = v20;
      }

      if (AccessorySystemEvent.payload.getter())
      {
        v26 = 1;
      }

      else
      {
        v26 = -1;
      }

      v27 = swift_getObjectType();
      (*(v5 + 24))(v26, v27, v5, 0.1);
LABEL_28:
      swift_unknownObjectRelease();

      return;
    }

    v11 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1BBC58000, v11, v24, "Remote control accessory unknown button pressed, ignoring", v25, 2u);
      MEMORY[0x1BFB23DF0](v25, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_22:

    return;
  }

  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = AccessorySystemEvent.payload.getter();

    _os_log_impl(&dword_1BBC58000, v8, v9, "Remote control accessory shutter button pressed with payload %u", v10, 8u);
    MEMORY[0x1BFB23DF0](v10, -1, -1);
  }

  else
  {

    v8 = v7;
  }

  v18 = AccessorySystemEvent.payload.getter();
  if (v18 == static AccessorySystemEvent.kHeaderEventRelease.getter())
  {
    v19 = swift_getObjectType();
    (*(v5 + 8))(v19, v5);
  }

  swift_unknownObjectRelease();
}

uint64_t specialized Sequence.compactMap<A>(_:)(uint64_t a1)
{
  v1 = a1;
  v22 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
    v6 = v21;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
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

    v5 = 0;
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_20:
      outlined consume of Set<TUHandle>.Iterator._Variant();
      return v10;
    }

    while (1)
    {
      [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];

      MEMORY[0x1BFB20CC0]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = v22;
      v5 = v13;
      v6 = v14;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
        swift_dynamicCast();
        v15 = v16;
        v13 = v5;
        v14 = v6;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

{
  v1 = a1;
  v22 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CHHandle);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type CHHandle and conformance NSObject, &lazy cache variable for type metadata for CHHandle);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
    v6 = v21;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
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

    v5 = 0;
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_20:
      outlined consume of Set<TUHandle>.Iterator._Variant();
      return v10;
    }

    while (1)
    {
      CHHandle.tuHandle.getter();

      MEMORY[0x1BFB20CC0]();
      if (*(v22 + 16) >= *(v22 + 24) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = v22;
      v5 = v13;
      v6 = v14;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CHHandle);
        swift_dynamicCast();
        v15 = v16;
        v13 = v5;
        v14 = v6;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_SSs5NeverOTg50153_s15ConversationKit15RecentsCallItemV32formattedOriginatorTitleFromLink33_82A9A7220E7FDFEBE573EE0F414688B9LL_2inSSSgAA0aJ0V_So14TUConversationCSgtFZSSSo8D6CXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v36 = v41;
    v38 = specialized Set.startIndex.getter(v1);
    v39 = v3;
    v40 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (!__OFADD__(v5++, 1))
      {
        v7 = v38;
        v8 = v40;
        v35 = v39;
        v9 = v1;
        specialized Set.subscript.getter(v38, v39, v40, v1);
        v11 = v10;
        v12 = [v10 value];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16 = v36;
        v41 = v36;
        v17 = *(v36 + 16);
        if (v17 >= *(v36 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v16 = v41;
        }

        *(v16 + 16) = v17 + 1;
        v18 = v16 + 16 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
        v36 = v16;
        if (v34)
        {
          if (!v8)
          {
            goto LABEL_36;
          }

          v1 = v9;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v23 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd);
          v24 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v24(v37, 0);
        }

        else
        {
          if (v8)
          {
            goto LABEL_37;
          }

          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v1 = v9;
          v19 = 1 << *(v9 + 32);
          if (v7 >= v19)
          {
            goto LABEL_32;
          }

          v20 = v7 >> 6;
          v21 = *(v32 + 8 * (v7 >> 6));
          if (((v21 >> v7) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v9 + 36) != v35)
          {
            goto LABEL_34;
          }

          v22 = v21 & (-2 << (v7 & 0x3F));
          if (v22)
          {
            v19 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
            v23 = v33;
          }

          else
          {
            v25 = v20 << 6;
            v26 = v20 + 1;
            v27 = (v31 + 8 * v20);
            v23 = v33;
            while (v26 < (v19 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v7, v35, 0);
                v19 = __clz(__rbit64(v28)) + v25;
                goto LABEL_27;
              }
            }

            outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v7, v35, 0);
          }

LABEL_27:
          v30 = *(v9 + 36);
          v38 = v19;
          v39 = v30;
          v40 = 0;
        }

        if (v5 == v23)
        {
          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v38, v39, v40);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

void specialized Sequence.flatMap<A>(_:)(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember);
    Set.Iterator.init(_cocoa:)();
    v1 = v18;
    v2 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v16 = v3;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      outlined consume of Set<TUHandle>.Iterator._Variant();
      return;
    }

    while (1)
    {
      v14 = [v13 handles];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
      lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
      v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      specialized Array.append<A>(contentsOf:)(v15);
      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
        swift_dynamicCast();
        v13 = v17;
        v11 = v4;
        v12 = v5;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t RecentsCallItem.init(message:title:contact:messageType:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, unsigned __int16 a5@<W4>, uint64_t a6@<X8>)
{
  v121 = type metadata accessor for RecentCallRecentItemMetadata(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_32();
  v127 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4();
  v122 = v16;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_32();
  v118 = v18;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v134 = v19;
  v135 = v20;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  v133 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20FaceTimeMessageStore10TranscriptVSgMd);
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_174();
  v25 = type metadata accessor for Summary();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_24_5();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20FaceTimeMessageStore7SummaryVSgMd);
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_140_0();
  v124 = type metadata accessor for RecentsCallItem(0);
  v129 = a6;
  *(a6 + *(v124 + 60)) = 0;
  v123 = objc_opt_self();
  v29 = [v123 conversationKit];
  OUTLINED_FUNCTION_24_3();
  v30.super.isa = v29;
  v34 = OUTLINED_FUNCTION_17_0(v31, v32, v33, 0xEF74694B6E6F6974, v30);
  v130 = v35;

  v36 = a1;
  dispatch thunk of Message.summary.getter();
  if (__swift_getEnumTagSinglePayload(v7, 1, v25))
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s20FaceTimeMessageStore7SummaryVSgMd);
  }

  else
  {
    v47 = v34;
    OUTLINED_FUNCTION_158();
    v48();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s20FaceTimeMessageStore7SummaryVSgMd);
    v42 = Summary.text.getter();
    v44 = v49;
    v50 = OUTLINED_FUNCTION_7_8();
    v51(v50);
    OUTLINED_FUNCTION_38_2();
    if (String.count.getter() >= 1)
    {
      goto LABEL_10;
    }

    v34 = v47;
  }

  v37 = v34;
  dispatch thunk of Message.transcript.getter();
  v38 = type metadata accessor for Transcript();
  v39 = OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_115(v39, v40, v38);
  if (v41)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s20FaceTimeMessageStore10TranscriptVSgMd);
LABEL_8:
    v44 = v130;
    v116 = v37;
    goto LABEL_11;
  }

  v42 = Transcript.text.getter();
  v44 = v43;
  OUTLINED_FUNCTION_2_3();
  v45 = OUTLINED_FUNCTION_39_5();
  v46(v45);
  OUTLINED_FUNCTION_38_2();
  if (String.count.getter() < 1)
  {

    goto LABEL_8;
  }

LABEL_10:

  v116 = v42;
LABEL_11:
  dispatch thunk of Message.duration.getter();
  v53 = v52;
  dispatch thunk of Message.recordUUID.getter();
  v115 = UUID.uuidString.getter();
  v114 = v54;
  v131 = *(v135 + 8);
  v131(v133, v134);
  dispatch thunk of Message.messageFile.getter();
  type metadata accessor for URL();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  dispatch thunk of Message.messageThumbnail.getter();

  v113 = dispatch thunk of Message.isRead.getter();
  v112 = dispatch thunk of Message.isSensitive.getter();
  v59 = v44;
  v60 = MessageType.rawValue.getter();
  LOBYTE(v60) = v60 == MessageType.rawValue.getter();
  v61 = objc_opt_self();
  v62 = dispatch thunk of Message.from.getter();
  v63 = MEMORY[0x1BFB209B0](v62);

  v64 = [v61 normalizedHandleWithDestinationID_];

  v65 = objc_allocWithZone(MEMORY[0x1E69D89D8]);
  v119 = @nonobjc TPMessageIndicatorViewModel.init(duration:identifier:mediaURL:thumbnailURL:transcriptSummary:isRead:isSensitive:isVideo:from:)(v53, v115, v114, v118, v122, v116, v59, v113 & 1, v112 & 1, v60, v64);
  dispatch thunk of Message.conversationID.getter();
  v117 = UUID.uuidString.getter();
  v67 = v66;
  v131(v133, v134);
  dispatch thunk of Message.dateCreated.getter();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  v72 = MessageType.mediaType.getter(a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit17RecentsCallHandleVGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA940;
  v74.value._countAndFlagsBits = dispatch thunk of Message.from.getter();
  RecentsCallHandle.init(value:)(v74);
  v75 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15ConversationKit17RecentsCallHandleV_SayAFGTt0g5(inited);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v134);
  dispatch thunk of Message.conversationID.getter();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v134);
  v82 = v121[6];
  v83 = v6 + v121[11];
  *v83 = 0;
  *(v83 + 1) = 0;
  *(v83 + 2) = 0;
  v84 = v121[13];
  *(v6 + v84) = 0;
  *(v6 + v121[14]) = 0;
  *v6 = v117;
  v6[1] = v67;
  *(v6 + v82) = 0;
  v85 = v6 + v121[7];
  *v85 = v72;
  v85[8] = 0;
  *(v6 + v121[8]) = v75;
  *(v6 + v121[9]) = 0;
  outlined consume of ConversationLink?(*v83);
  *v83 = 0;
  *(v83 + 1) = 0;
  *(v83 + 2) = 0;
  *(v127 + v121[6]) = 0;
  v86 = (v127 + v121[11]);
  *v86 = 0;
  v86[1] = 0;
  v86[2] = 0;
  *(v127 + v121[13]) = 0;
  v87 = v121[14];
  *(v127 + v87) = 0;
  *(v6 + v84) = v119;
  v120 = v119;
  v88 = OUTLINED_FUNCTION_46();
  outlined consume of ConversationLink?(v88);
  OUTLINED_FUNCTION_2_132();
  OUTLINED_FUNCTION_244_1();
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
  v89 = *(v127 + v87);
  v90 = v36;

  *(v127 + v87) = v36;
  if (a5 >= 2u)
  {
    v93 = v129;
    v94 = v124;
    if (a5 == 2)
    {
      v91 = 0xEE004F454449565FLL;
      v92 = 3;
    }

    else
    {
      v92 = 0;
      v91 = 0xE800000000000000;
    }
  }

  else
  {
    v91 = 0xEE004F494455415FLL;
    v92 = 4;
    v93 = v129;
    v94 = v124;
  }

  OUTLINED_FUNCTION_6_94();
  OUTLINED_FUNCTION_157();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_252_0();
  swift_storeEnumTagMultiPayload();
  v95 = [v123 conversationKit];
  OUTLINED_FUNCTION_53_14();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_14_2();
  v96.super.isa = v95;
  OUTLINED_FUNCTION_17_0(v97, v98, v99, v100, v96);
  OUTLINED_FUNCTION_7_19();

  v101 = (v93 + v94[6]);
  *v101 = v91;
  v101[1] = v92;
  v102 = (v93 + v94[5]);
  *v102 = a2;
  v102[1] = a3;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  *(v93 + v94[10]) = [objc_opt_self() systemRedColor];
  v103 = (v93 + v94[7]);
  *v103 = 0;
  v103[1] = 0;
  v104 = (v93 + v94[8]);
  *v104 = 0;
  v104[1] = 0;
  *(v93 + v94[11]) = 0;
  v105 = a4;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_1BC4BAC30;
    v105 = a4;
    OUTLINED_FUNCTION_224_0();

    *(v106 + 32) = v105;
  }

  else
  {
    OUTLINED_FUNCTION_224_0();

    v106 = MEMORY[0x1E69E7CC0];
  }

  *(v93 + v94[12]) = v106;
  dispatch thunk of Message.recordUUID.getter();

  v107 = UUID.uuidString.getter();
  v109 = v108;

  v131(v133, v134);
  v110 = (v93 + v94[13]);
  *v110 = v107;
  v110[1] = v109;
  *(v93 + v94[14]) = 0;
  *(v93 + v94[16]) = 0;
  OUTLINED_FUNCTION_1_137();
  return _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
}

void static RecentsCallItem.contactDetails(from:cache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_104_5();
  v15 = v14;
  v17 = [v16 value];
  if (!v17)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = MEMORY[0x1BFB209B0](v18);
  }

  v19 = [v17 destinationIdIsTemporary];

  if (v19)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    *v15 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_6();
    ParticipantContactDetailsCache.contactDetails(for:nickname:)();
    v20 = a13;
    v21 = a14;
    v24 = a10;

    static ParticipantContactDetails.initialsFor(_:)(a10);
    lazy protocol witness table accessor for type String and conformance String();
    v22 = StringProtocol.localizedUppercase.getter();
    v23 = v25;

    *v15 = a10;
    v15[1] = a11;
    v15[2] = a12;
  }

  v15[3] = v20;
  v15[4] = v21;
  v15[5] = v22;
  v15[6] = v23;
  OUTLINED_FUNCTION_31_0();
}

void _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_185_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_4_121();
  _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v6, v7);
  v8 = OUTLINED_FUNCTION_15_14();
  MEMORY[0x1BFB21140](v8);
  v9 = *(v0 + 16);
  if (v9)
  {
    OUTLINED_FUNCTION_136_2();
    do
    {
      v10 = OUTLINED_FUNCTION_308();
      v2(v10);
      OUTLINED_FUNCTION_33_0();
      specialized Set._Variant.insert(_:)();
      v11 = OUTLINED_FUNCTION_206();
      v12(v11);
      v1 += v3;
      --v9;
    }

    while (v9);
  }

  else
  {
    OUTLINED_FUNCTION_28_0();
  }

  OUTLINED_FUNCTION_30_0();
}

void _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15ConversationKit0B14ControlsActionO_SayAFGTt0g5()
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_17_1();
  v2 = type metadata accessor for ConversationControlsAction();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_224();
  _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type ConversationControlsAction and conformance ConversationControlsAction, type metadata accessor for ConversationControlsAction);
  v5 = OUTLINED_FUNCTION_7_8();
  MEMORY[0x1BFB21140](v5);
  v6 = *(v0 + 16);
  if (v6)
  {
    OUTLINED_FUNCTION_198_2();
    do
    {
      OUTLINED_FUNCTION_206();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      v7 = OUTLINED_FUNCTION_1_5();
      specialized Set._Variant.insert(_:)(v7);
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      v2 += v1;
      --v6;
    }

    while (v6);
  }

  OUTLINED_FUNCTION_49();
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15ConversationKit0B12ControlsTypeO_SayAFGTt0g5()
{
  OUTLINED_FUNCTION_232_1();
  v2 = lazy protocol witness table accessor for type ConversationControlsType and conformance ConversationControlsType();
  v8 = MEMORY[0x1BFB21140](v1, &type metadata for ConversationControlsType, v2);
  v3 = *(v0 + 16);
  if (v3)
  {
    v4 = v0 + 32;
    do
    {
      outlined init with copy of ConversationControlsType(v4, v6);
      specialized Set._Variant.insert(_:)(v7, v6);
      outlined destroy of ConversationControlsType(v7);
      v4 += 48;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    OUTLINED_FUNCTION_28_0();
  }

  return v1;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15ConversationKit17RecentsCallHandleV_SayAFGTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type RecentsCallHandle and conformance RecentsCallHandle();
  result = MEMORY[0x1BFB21140](v2, &type metadata for RecentsCallHandle, v3);
  v5 = 0;
  v12 = result;
  v6 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v6 == v5)
    {

      return v12;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    ++v5;
    v9 = *(i - 1);
    v8 = *i;
    v10 = *(i - 16);

    specialized Set._Variant.insert(_:)(&v11, v10, v9, v8);
  }

  __break(1u);
  return result;
}

void _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15ConversationKit15RecentsCallItemV_SayAFGTt0g5()
{
  OUTLINED_FUNCTION_50_2();
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = type metadata accessor for RecentsCallItem(v2);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_224();
  _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type RecentsCallItem and conformance RecentsCallItem, type metadata accessor for RecentsCallItem);
  v6 = OUTLINED_FUNCTION_7_8();
  MEMORY[0x1BFB21140](v6);
  v7 = *(v0 + 16);
  if (v7)
  {
    OUTLINED_FUNCTION_198_2();
    do
    {
      OUTLINED_FUNCTION_206();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      OUTLINED_FUNCTION_1_5();
      specialized Set._Variant.insert(_:)();
      OUTLINED_FUNCTION_5_116();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      v3 += v1;
      --v7;
    }

    while (v7);
  }

  OUTLINED_FUNCTION_49();
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs6UInt64V_SayAEGTt0g5(uint64_t a1)
{
  v3 = MEMORY[0x1BFB21140](*(a1 + 16), MEMORY[0x1E69E76D8], MEMORY[0x1E69E76E8]);
  v16 = v3;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 32;
    do
    {
      v12 = OUTLINED_FUNCTION_151_0(v3, *(a1 + v11), v4, v5, v6, v7, v8, v9, v15);
      v3 = specialized Set._Variant.insert(_:)(v12, v13);
      v11 += 8;
      --v10;
    }

    while (v10);

    return v16;
  }

  else
  {
    OUTLINED_FUNCTION_28_0();
  }

  return v1;
}

void _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC20LiveCommunicationKit6HandleV_SayAFGTt0g5()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for Handle();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_185_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_7();
  _s14GameController19GCButtonElementNameVACSHAAWlTm_1(&lazy protocol witness table cache variable for type Handle and conformance Handle, MEMORY[0x1E696EDC8]);
  v6 = OUTLINED_FUNCTION_15_14();
  MEMORY[0x1BFB21140](v6);
  v7 = *(v0 + 16);
  if (v7)
  {
    OUTLINED_FUNCTION_136_2();
    do
    {
      v8 = OUTLINED_FUNCTION_308();
      v2(v8);
      v9 = OUTLINED_FUNCTION_33_0();
      specialized Set._Variant.insert(_:)(v9, v10);
      v11 = OUTLINED_FUNCTION_206();
      v12(v11);
      v1 += v3;
      --v7;
    }

    while (v7);
  }

  else
  {
    OUTLINED_FUNCTION_28_0();
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15ConversationKit22TranscriptionViewModelC9CaptionIDV_SayAHGTt0g5()
{
  OUTLINED_FUNCTION_232_1();
  v2 = lazy protocol witness table accessor for type TranscriptionViewModel.CaptionID and conformance TranscriptionViewModel.CaptionID();
  v15 = MEMORY[0x1BFB21140](v1, &type metadata for TranscriptionViewModel.CaptionID, v2);
  v3 = *(v0 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      OUTLINED_FUNCTION_164();
      OUTLINED_FUNCTION_151_0(v5, v6, v7, v8, v9, v10, v11, v12, v14);
      OUTLINED_FUNCTION_182_3();
      specialized Set._Variant.insert(_:)();
      v4 += 8;
      --v3;
    }

    while (v3);

    return v15;
  }

  else
  {
    OUTLINED_FUNCTION_28_0();
  }

  return v1;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15ConversationKit16CaptionSectionerV0D2IDV_SayAHGTt0g5()
{
  OUTLINED_FUNCTION_232_1();
  v2 = lazy protocol witness table accessor for type CaptionSectioner.CaptionID and conformance CaptionSectioner.CaptionID();
  v15 = MEMORY[0x1BFB21140](v1, &type metadata for CaptionSectioner.CaptionID, v2);
  v3 = *(v0 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      OUTLINED_FUNCTION_163_1();
      OUTLINED_FUNCTION_151_0(v5, v6, v7, v8, v9, v10, v11, v12, v14);
      OUTLINED_FUNCTION_182_3();
      specialized Set._Variant.insert(_:)();
      v4 += 8;
      --v3;
    }

    while (v3);

    return v15;
  }

  else
  {
    OUTLINED_FUNCTION_28_0();
  }

  return v1;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15ConversationKit19InCallControlsStateO_SayAFGTt0g5()
{
  OUTLINED_FUNCTION_232_1();
  v2 = lazy protocol witness table accessor for type InCallControlsState and conformance InCallControlsState();
  v3 = MEMORY[0x1BFB21140](v1, &type metadata for InCallControlsState, v2);
  v16 = v3;
  v10 = *(v0 + 16);
  if (v10)
  {
    v11 = 32;
    do
    {
      v12 = OUTLINED_FUNCTION_151_0(v3, *(v0 + v11), v4, v5, v6, v7, v8, v9, v15);
      v3 = specialized Set._Variant.insert(_:)(v12, v13);
      v11 += 8;
      --v10;
    }

    while (v10);

    return v16;
  }

  else
  {
    OUTLINED_FUNCTION_28_0();
  }

  return v1;
}

uint64_t RecentOngoingConversationMetadata.isRestricted.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecentOngoingConversationMetadata(0) + 24));
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (*((*MEMORY[0x1E69E7D40] & *static RestrictedConversationChecker.shared) + 0x80))(v1) & 1;
}

BOOL RecentsCallItem.isRecentCall.getter()
{
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_15_14();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_45_1();
  v1 = swift_getEnumCaseMultiPayload() - 3 < 0xFFFFFFFE;
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  return v1;
}

void RecentsCallItemType.conversationUUID()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_96();
  v4 = type metadata accessor for RecentOngoingConversationMetadata(v3);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_40_2();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_32_2();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_10_71();
      OUTLINED_FUNCTION_206();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_7_58();
      v15 = OUTLINED_FUNCTION_44_0();
      v16(v15);
      OUTLINED_FUNCTION_8_84();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      v7 = OUTLINED_FUNCTION_66_7();
      goto LABEL_6;
    case 2u:
      v11 = *v0;
      v12 = [*v0 groupUUID];
      if (v12)
      {
        v13 = v12;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v14 = 0;
      }

      else
      {
        v14 = 1;
      }

      type metadata accessor for UUID();
      v17 = OUTLINED_FUNCTION_206_0();
      __swift_storeEnumTagSinglePayload(v17, v14, 1, v18);
      OUTLINED_FUNCTION_38_2();
      outlined init with take of CaptionSectioner.SpeakerSection?();

      break;
    default:
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      type metadata accessor for UUID();
      v7 = OUTLINED_FUNCTION_2_10();
LABEL_6:
      __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
      break;
  }
}

void RecentsCallItem.hasURL.getter()
{
  OUTLINED_FUNCTION_50_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_117_0();
  RecentsCallItem.conversationLink.getter();
  if (v18)
  {
    v4 = [v18 URL];
    if (v4)
    {
      v5 = v4;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v6 = type metadata accessor for URL();
    OUTLINED_FUNCTION_175_2();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    OUTLINED_FUNCTION_45_1();
    outlined init with take of CaptionSectioner.SpeakerSection?();
    v15 = OUTLINED_FUNCTION_208();
    outlined consume of ConversationLink?(v15);
    type metadata accessor for URL();
    v16 = OUTLINED_FUNCTION_18_12();
    OUTLINED_FUNCTION_115(v16, v17, v6);
  }

  else
  {
    type metadata accessor for URL();
    v7 = OUTLINED_FUNCTION_2_10();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation3URLVSgMd);
  OUTLINED_FUNCTION_49();
}

void RecentsCallItem.conversationLink.getter()
{
  OUTLINED_FUNCTION_50_2();
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for RecentOngoingConversationMetadata(v4);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_57();
  v7 = type metadata accessor for RecentCallRecentItemMetadata(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_258_0();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_179_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_10_71();
      OUTLINED_FUNCTION_138_2();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      v16 = (v1 + *(v5 + 28));
      v17 = *v16;
      v18 = v16[1];
      v14 = v16[2];
      OUTLINED_FUNCTION_158();
      outlined copy of ConversationLink?(v19);
      OUTLINED_FUNCTION_8_84();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      *v0 = v17;
      v0[1] = v18;
      goto LABEL_6;
    case 2u:
      v10 = *(v3 + 16);
      *v0 = *v3;
      v0[2] = v10;
      break;
    case 3u:
    case 4u:
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      v0[1] = 0;
      v0[2] = 0;
      *v0 = 0;
      break;
    default:
      OUTLINED_FUNCTION_2_132();
      OUTLINED_FUNCTION_39_5();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      v11 = (v2 + *(v7 + 44));
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      v15 = OUTLINED_FUNCTION_15_14();
      outlined copy of ConversationLink?(v15);
      OUTLINED_FUNCTION_1_137();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      *v0 = v12;
      v0[1] = v13;
LABEL_6:
      v0[2] = v14;
      break;
  }

  OUTLINED_FUNCTION_49();
}

void RecentsCallItem.isInContacts.getter()
{
  OUTLINED_FUNCTION_34_0();
  RecentsCallItem.tuHandles.getter();
  if (one-time initialization token for faceTime != -1)
  {
LABEL_12:
    OUTLINED_FUNCTION_11_4();
  }

  v0 = OUTLINED_FUNCTION_38_2();
  specialized Sequence.compactMap<A>(_:)(v0);
  v2 = v1;

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
  v5 = *(v2 + 16);
LABEL_3:
  v6 = 56 * v3 + 32;
  while (v5 != v3)
  {
    if (v3 >= *(v2 + 16))
    {
      __break(1u);
      goto LABEL_12;
    }

    ++v3;
    v7 = *(v2 + v6);
    v6 += 56;
    if (v7)
    {
      v7;
      MEMORY[0x1BFB20CC0]();
      v8 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v8 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v8);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_33_0();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v9;
      goto LABEL_3;
    }
  }

  specialized Array.count.getter(v4);

  OUTLINED_FUNCTION_1_3();
}

void *RecentsCallItem.messageStoreMessage.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit010RecentCallC12ItemMetadataVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - v3;
  RecentsCallItemType.recentCallRecentItemMetadata.getter();
  type metadata accessor for RecentCallRecentItemMetadata(0);
  v5 = OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_83_0(v5);
  if (v6)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit010RecentCallC12ItemMetadataVSgMd);
    return 0;
  }

  else
  {
    v7 = *&v4[*(v0 + 56)];
    v8 = v7;
    OUTLINED_FUNCTION_1_137();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  }

  return v7;
}

BOOL RecentsCallItem.isOrphanedVideoMessage.getter()
{
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_15_14();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_45_1();
  v1 = swift_getEnumCaseMultiPayload() == 3;
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  return v1;
}

BOOL RecentsCallItem.wantsStagingArea.getter()
{
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_1();
  RecentsCallItem.conversationLink.getter();
  if (v4)
  {
    outlined consume of ConversationLink?(v4);
    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_0_169();
    OUTLINED_FUNCTION_15_14();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
    OUTLINED_FUNCTION_45_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    OUTLINED_FUNCTION_3_129();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    return EnumCaseMultiPayload == 1 && RecentsCallItem.shouldDisplayStagingAreaForOngoingCall()();
  }
}

void RecentsCallItem.atLeastOneUnknownCaller.getter()
{
  OUTLINED_FUNCTION_34_0();
  RecentsCallItem.tuHandles.getter();
  if (one-time initialization token for faceTime != -1)
  {
LABEL_12:
    OUTLINED_FUNCTION_11_4();
  }

  v1 = OUTLINED_FUNCTION_15_14();
  specialized Sequence.compactMap<A>(_:)(v1);
  OUTLINED_FUNCTION_212();

  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
  v4 = *(v0 + 16);
LABEL_3:
  v5 = 56 * v2 + 32;
  while (v4 != v2)
  {
    if (v2 >= *(v0 + 16))
    {
      __break(1u);
      goto LABEL_12;
    }

    ++v2;
    v6 = *(v0 + v5);
    v5 += 56;
    if (v6)
    {
      v6;
      MEMORY[0x1BFB20CC0]();
      v7 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v7 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v7);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_7_8();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = v9;
      goto LABEL_3;
    }
  }

  specialized Array.count.getter(v3);

  RecentsCallItem.tuHandles.getter();
  specialized Set.count.getter(v8);
  OUTLINED_FUNCTION_28_0();

  OUTLINED_FUNCTION_1_3();
}

uint64_t RecentsCallItem.isTelephony.getter()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_26_38();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_13_63();
  type metadata accessor for RecentsCallItemType(v3);
  OUTLINED_FUNCTION_25_39();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_1_5();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  if (OUTLINED_FUNCTION_215_1())
  {
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    v5 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_2_132();
    OUTLINED_FUNCTION_45_1();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
    v6 = OUTLINED_FUNCTION_217_2();
    if (v6 && (v7 = [v6 serviceProvider]) != 0)
    {
      v8 = v7;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_96_1();
    }

    else
    {
      v1 = 0;
      v0 = 0;
    }

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v0)
    {
      if (v1 == v9 && v0 == v10)
      {
        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_91_2();
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v5 = 0;
    }

    OUTLINED_FUNCTION_1_137();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  }

  return v5 & 1;
}

id RecentOngoingConversationMetadata.isEligibleForHandoff.getter()
{
  v1 = [*(v0 + *(type metadata accessor for RecentOngoingConversationMetadata(0) + 24)) handoffEligibility];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 isEligible];

  return v3;
}

void RecentsCallItem.init(link:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v94 = v8;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_32();
  v95 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_117_0();
  v14 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_2();
  v16 = *v3;
  v97 = *(v3 + 8);
  v17 = *(v3 + 16);
  *(v1 + *(v18 + 60)) = 0;
  v19 = [v16 URL];
  if (v19)
  {
    v20 = v19;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = type metadata accessor for URL();
    v22 = 0;
  }

  else
  {
    v21 = type metadata accessor for URL();
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v0, v22, 1, v21);
  OUTLINED_FUNCTION_45_1();
  outlined init with take of CaptionSectioner.SpeakerSection?();
  type metadata accessor for URL();
  v23 = OUTLINED_FUNCTION_18_12();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, v24, v21);
  v26 = OUTLINED_FUNCTION_205_2();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v26, v27);
  if (EnumTagSinglePayload != 1)
  {
    *v1 = v16;
    v1[1] = v97;
    v1[2] = v17;
    OUTLINED_FUNCTION_252_0();
    swift_storeEnumTagMultiPayload();
    v29 = v16;
    OUTLINED_FUNCTION_28_0();

    v96 = v16;
    v30 = [v16 invitedMemberHandles];
    v31 = MEMORY[0x1E69E7CC0];
    v93 = v5;
    if (v30)
    {
      v32 = v30;
      OUTLINED_FUNCTION_30_20();
      type metadata accessor for NSObject(v33, v34);
      OUTLINED_FUNCTION_30_20();
      lazy protocol witness table accessor for type TUHandle and conformance NSObject(v35, v36);
      OUTLINED_FUNCTION_40_4();
      v37 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      specialized Sequence.compactMap<A>(_:)(v37);
      v39 = v38;
    }

    else
    {
      v39 = MEMORY[0x1E69E7CC0];
    }

    v40 = 0;
    v98[0] = v31;
    v41 = *(v39 + 16);
LABEL_10:
    v42 = 56 * v40 + 32;
    while (v41 != v40)
    {
      if (v40 >= *(v39 + 16))
      {
        __break(1u);
        return;
      }

      ++v40;
      v43 = *(v39 + v42);
      v42 += 56;
      if (v43)
      {
        MEMORY[0x1BFB20CC0](v43);
        v44 = *((v98[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v98[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v44 >> 1)
        {
          OUTLINED_FUNCTION_59_3(v44);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v31 = v98[0];
        goto LABEL_10;
      }
    }

    *(v1 + v14[12]) = v31;
    v98[0] = v96;
    v98[1] = v97;
    v98[2] = v17;
    v45 = ConversationLink.displayName.getter();
    v47 = v46;
    v48 = [v96 invitedMemberHandles];
    if (v48)
    {
      v49 = v48;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
      lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
      OUTLINED_FUNCTION_40_4();
      v50 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v5 = v93;
    }

    else
    {
      v5 = v93;
      if (specialized Array.count.getter(MEMORY[0x1E69E7CC0]))
      {
        v50 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8TUHandleC_Tt0g5(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v50 = MEMORY[0x1E69E7CD0];
      }
    }

    v51 = specialized _copyCollectionToContiguousArray<A>(_:)(v50);

    static RecentsCallItem.genericStringForFaceTimeLink(_:)(v51);
    v53 = v52;
    v55 = v54;

    v56 = v96;
    OUTLINED_FUNCTION_222_2();
    v57 = static RecentsCallItem.formattedOriginatorTitleFromLink(_:in:)(v98, 0);
    if (v58)
    {
      v59 = (v1 + v14[5]);
      *v59 = v57;
      v59[1] = v58;
      if (v47)
      {

        v55 = v47;
LABEL_29:
        v77 = (v1 + v14[6]);
        *v77 = v45;
        v77[1] = v55;
        OUTLINED_FUNCTION_222_2();
        ConversationLink.date.getter(v94);
        v78 = type metadata accessor for Date();
        OUTLINED_FUNCTION_115(v94, 1, v78);
        if (v79)
        {
          Date.init()();
          OUTLINED_FUNCTION_115(v94, 1, v78);
          if (!v79)
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v94, &_s10Foundation4DateVSgMd);
          }
        }

        else
        {
          OUTLINED_FUNCTION_2_3();
          v80 = OUTLINED_FUNCTION_15_14();
          v81(v80);
        }

        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v82, v83, v84, v78);
        outlined init with take of CaptionSectioner.SpeakerSection?();
        *(v1 + v14[10]) = [objc_opt_self() whiteColor];
        OUTLINED_FUNCTION_222_2();
        ConversationLink.uniqueId.getter();
        v85 = (v1 + v14[13]);
        *v85 = v86;
        v85[1] = v87;
        v88 = (v1 + v14[7]);
        *v88 = 0;
        v88[1] = 0;
        v89 = (v1 + v14[8]);
        *v89 = 0;
        v89[1] = 0;
        OUTLINED_FUNCTION_222_2();
        ConversationLink.prevailingSuggestion.getter();
        v91 = v90;

        if (v91)
        {
          v92 = SGURL.applicationIcon.getter();
        }

        else
        {
          v92 = 0;
        }

        *(v1 + v14[11]) = v92;
        *(v1 + v14[14]) = 0;
        *(v1 + v14[16]) = 0;
        OUTLINED_FUNCTION_21_46();
        OUTLINED_FUNCTION_32_2();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
        v28 = 0;
        goto LABEL_37;
      }
    }

    else
    {
      if (!v47)
      {
        v61 = objc_opt_self();
        v62 = [v61 conversationKit];
        OUTLINED_FUNCTION_53_14();
        OUTLINED_FUNCTION_24_3();
        v63.super.isa = v62;
        v67 = OUTLINED_FUNCTION_17_0(v64, v65, v66, 0xEF74694B6E6F6974, v63);
        v69 = v68;

        v70 = (v1 + v14[5]);
        *v70 = v67;
        v70[1] = v69;
        v56 = v96;
        v71 = [v61 conversationKit];
        OUTLINED_FUNCTION_53_14();
        OUTLINED_FUNCTION_24_3();
        v72.super.isa = v71;
        v45 = OUTLINED_FUNCTION_17_0(v73, v74, v75, 0xEF74694B6E6F6974, v72);
        v55 = v76;

        goto LABEL_29;
      }

      v60 = (v1 + v14[5]);
      *v60 = v45;
      v60[1] = v47;
    }

    v45 = v53;
    goto LABEL_29;
  }

  v28 = 1;
LABEL_37:
  __swift_storeEnumTagSinglePayload(v5, v28, 1, v14);
  OUTLINED_FUNCTION_30_0();
}

id RecentsCallItem.shouldConfirmDelete.getter()
{
  RecentsCallItem.conversationLink.getter();
  v0 = v4;
  if (v4)
  {
    v1 = v4;
    v2 = OUTLINED_FUNCTION_44_0();
    outlined consume of ConversationLink?(v2);
    v0 = [v1 isLocallyCreated];
  }

  return v0;
}

void static RecentsCallItem.contactDetails(from:cache:)(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_6_7();

    v1 = OUTLINED_FUNCTION_38_2();
    specialized Sequence.compactMap<A>(_:)(v1);
  }
}

void RecentsCallItem.allowsFaceTimeSpamReporting.getter()
{
  OUTLINED_FUNCTION_29();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19RecentsCallItemTypeOSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_188();
  v6 = type metadata accessor for RecentsCallItem(0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_23_19();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_115_3();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_67_1();
  v12 = OUTLINED_FUNCTION_20_44();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_224();
  if (RecentsCallItem.isTelephony.getter())
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_124();
    }

    v14 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v14, static ReportSpamManager.logger);
    OUTLINED_FUNCTION_7_85();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
LABEL_21:

      goto LABEL_22;
    }

    v17 = swift_slowAlloc();
    *v17 = 67109120;
    v18 = RecentsCallItem.isTelephony.getter() & 1;
    OUTLINED_FUNCTION_5_116();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    *(v17 + 4) = v18;
    _os_log_impl(&dword_1BBC58000, v15, v16, "allowsFaceTimeSpamReporting is false, because isTelephony: %{BOOL}d", v17, 8u);
LABEL_20:
    OUTLINED_FUNCTION_27();
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_29_6();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_40_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_3_129();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  if (EnumCaseMultiPayload == 1)
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_124();
    }

    v20 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v20, static ReportSpamManager.logger);
    v15 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (!OUTLINED_FUNCTION_25(v21))
    {
      goto LABEL_21;
    }

    v22 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v22);
    OUTLINED_FUNCTION_132();
    _os_log_impl(v23, v24, v25, v26, v27, 2u);
    goto LABEL_20;
  }

  v28 = RecentsCallItem.initiator.getter();
  if (v28)
  {
  }

  else
  {
    RecentsCallItem.isInContacts.getter();
    if ((v29 & 1) == 0)
    {
LABEL_23:
      if (one-time initialization token for logger != -1)
      {
        OUTLINED_FUNCTION_0_124();
      }

      v36 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v36, static ReportSpamManager.logger);
      OUTLINED_FUNCTION_7_85();
      OUTLINED_FUNCTION_205_2();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = OUTLINED_FUNCTION_42();
        v51 = OUTLINED_FUNCTION_23();
        *v39 = 136315138;
        OUTLINED_FUNCTION_0_169();
        OUTLINED_FUNCTION_2_100();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v40, v41, v42, v1);
        specialized >> prefix<A>(_:)();
        OUTLINED_FUNCTION_96_1();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit19RecentsCallItemTypeOSgMd);
        OUTLINED_FUNCTION_5_116();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
        v43 = OUTLINED_FUNCTION_91_2();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v45);
        OUTLINED_FUNCTION_212();

        *(v39 + 4) = v0;
        _os_log_impl(&dword_1BBC58000, v37, v38, "RecentsCallItem type: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      else
      {

        OUTLINED_FUNCTION_5_116();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      }

      OUTLINED_FUNCTION_0_169();
      OUTLINED_FUNCTION_44_0();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      switch(OUTLINED_FUNCTION_215_1())
      {
        case 1u:
        case 2u:
          OUTLINED_FUNCTION_3_129();
          goto LABEL_32;
        case 3u:
        case 4u:
          OUTLINED_FUNCTION_3_129();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
          break;
        default:
          OUTLINED_FUNCTION_7_85();
          _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            *v48 = 67109120;
            RecentsCallItem.isIncomingCall.getter();
            v50 = v49 & 1;
            OUTLINED_FUNCTION_5_116();
            _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
            *(v48 + 4) = v50;
            _os_log_impl(&dword_1BBC58000, v46, v47, "isIncomingCall: %{BOOL}d", v48, 8u);
            OUTLINED_FUNCTION_27();
          }

          else
          {
            OUTLINED_FUNCTION_5_116();
            _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
          }

          RecentsCallItem.isIncomingCall.getter();
          OUTLINED_FUNCTION_3_129();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
          break;
      }

      goto LABEL_22;
    }
  }

  RecentsCallItem.isInitiatorInContacts.getter();
  if ((v30 & 1) == 0)
  {
    goto LABEL_23;
  }

  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_124();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static ReportSpamManager.logger);
  OUTLINED_FUNCTION_12_66();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  v15 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 67109378;
    RecentsCallItem.isInitiatorInContacts.getter();
    OUTLINED_FUNCTION_32_22();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    *(v33 + 4) = v3;
    *(v33 + 8) = 2112;
    v35 = RecentsCallItem.initiator.getter();
    *(v33 + 10) = v35;
    *v34 = v35;
    OUTLINED_FUNCTION_157();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    _os_log_impl(&dword_1BBC58000, v15, v32, "allowsFaceTimeSpamReporting is false, isInContacts: %{BOOL}d; initiator: %@", v33, 0x12u);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v34, &_sSo8NSObjectCSgMd);
    OUTLINED_FUNCTION_27();
    goto LABEL_20;
  }

  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();

  OUTLINED_FUNCTION_138_2();
LABEL_32:
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
LABEL_22:
  OUTLINED_FUNCTION_30_0();
}

uint64_t RecentsCallItem.itemStyle.getter()
{
  v1 = OUTLINED_FUNCTION_30();
  type metadata accessor for RecentsCallItemType(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13_57();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_4_31();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_208();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v7 = *MEMORY[0x1E69D8928];
      type metadata accessor for RecentsCallItemStyle();
      OUTLINED_FUNCTION_7_0();
      (*(v8 + 104))(v0, v7);
      OUTLINED_FUNCTION_3_129();
      result = _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      break;
    case 2u:
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      v3 = MEMORY[0x1E69D8918];
      goto LABEL_4;
    default:
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      v3 = MEMORY[0x1E69D8920];
LABEL_4:
      v4 = *v3;
      type metadata accessor for RecentsCallItemStyle();
      OUTLINED_FUNCTION_7_0();
      result = (*(v5 + 104))(v0, v4);
      break;
  }

  return result;
}

id RecentsCallItem.isRead.getter()
{
  v2 = OUTLINED_FUNCTION_20_44();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13_57();
  OUTLINED_FUNCTION_251_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_91_2();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  if (swift_getEnumCaseMultiPayload() - 3 > 1)
  {
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_38_2();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
    v4 = *(v0 + *(v1 + 52));
    if (v4)
    {
      v5 = [v4 isRead];
    }

    else
    {
      v5 = 0;
    }

    OUTLINED_FUNCTION_1_137();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  }

  return v5;
}

ConversationKit::RecentsCallHandleType_optional __swiftcall RecentsCallHandleType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RecentsCallHandleType@<X0>(uint64_t *a1@<X8>)
{
  result = RecentsCallHandleType.rawValue.getter();
  *a1 = result;
  return result;
}

id RecentsCallHandle.tuHandle()()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);

  v2 = OUTLINED_FUNCTION_15_14();
  return TUHandle.__allocating_init(type:value:)(v2, v3, v1);
}

ConversationKit::RecentsCallHandle __swiftcall RecentsCallHandle.init(value:)(Swift::String_optional value)
{
  OUTLINED_FUNCTION_331();
  v20 = v2;
  v21 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (v4 && (objc_opt_self(), OUTLINED_FUNCTION_212(), , v10 = OUTLINED_FUNCTION_4_31(), v11 = MEMORY[0x1BFB209B0](v10), , v12 = [v1 normalizedHandleWithDestinationID_], v11, v12))
  {

    TUHandle.recentsCallHandleType.getter(v19);
    v13 = v19[0];
    v14 = [v12 value];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v15;
  }

  else
  {
    v13 = 1;
  }

  *v9 = v13;
  *(v9 + 8) = v7;
  *(v9 + 16) = v5;
  OUTLINED_FUNCTION_9_17();
  result.value.value._object = v18;
  result.value.value._countAndFlagsBits = v17;
  result.type = v16;
  return result;
}

unint64_t TUHandle.recentsCallHandleType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [v1 type];
  v4 = 0x3020101u >> (8 * result);
  if (result >= 4)
  {
    LOBYTE(v4) = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t static RecentsCallHandle.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v3 = *(a1 + 2);
    v4 = *(a2 + 2);
    if (v3)
    {
      if (v4)
      {
        v5 = *(a1 + 1) == *(a2 + 1) && v3 == v4;
        if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

Swift::Int RecentsCallHandle.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t RecentCallRecentItemMetadata.date.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  type metadata accessor for RecentCallRecentItemMetadata(v0);
  return OUTLINED_FUNCTION_248();
}

void *RecentCallRecentItemMetadata.recentCall.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecentCallRecentItemMetadata(0) + 24));
  v2 = v1;
  return v1;
}

void RecentCallRecentItemMetadata.recentCall.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for RecentCallRecentItemMetadata(v2) + 24);

  *(v1 + v3) = v0;
}

uint64_t RecentCallRecentItemMetadata.recentCall.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for RecentCallRecentItemMetadata(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t RecentCallRecentItemMetadata.remoteParticipantHandles.getter()
{
  type metadata accessor for RecentCallRecentItemMetadata(0);
}

uint64_t RecentCallRecentItemMetadata.groupUUID.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  type metadata accessor for RecentCallRecentItemMetadata(v0);
  return OUTLINED_FUNCTION_248();
}

void *RecentCallRecentItemMetadata.conversationLink.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for RecentCallRecentItemMetadata(v0);
  v2 = OUTLINED_FUNCTION_208_2(*(v1 + 44));

  return outlined copy of ConversationLink?(v2);
}

__n128 RecentCallRecentItemMetadata.conversationLink.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = v1 + *(type metadata accessor for RecentCallRecentItemMetadata(0) + 44);
  outlined consume of ConversationLink?(*v3);
  result = v5;
  *v3 = v5;
  *(v3 + 16) = v2;
  return result;
}

uint64_t RecentCallRecentItemMetadata.conversationLink.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for RecentCallRecentItemMetadata(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t RecentCallRecentItemMetadata.conversationID.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  type metadata accessor for RecentCallRecentItemMetadata(v0);
  return OUTLINED_FUNCTION_248();
}

void *RecentCallRecentItemMetadata.messageIndicatorViewModel.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecentCallRecentItemMetadata(0) + 52));
  v2 = v1;
  return v1;
}

void RecentCallRecentItemMetadata.messageIndicatorViewModel.setter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = *(type metadata accessor for RecentCallRecentItemMetadata(v2) + 52);

  *(v1 + v3) = v0;
}

uint64_t RecentCallRecentItemMetadata.messageIndicatorViewModel.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for RecentCallRecentItemMetadata(v0);
  return OUTLINED_FUNCTION_26_0();
}

void RecentCallRecentItemMetadata.init(metadata:conversationLink:)()
{
  OUTLINED_FUNCTION_331();
  v1 = v0;
  v3 = v2;
  v9 = *v4;
  v5 = *(v4 + 2);
  v6 = type metadata accessor for RecentCallRecentItemMetadata(0);
  *(v3 + v6[6]) = 0;
  v7 = v3 + v6[11];
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *(v3 + v6[13]) = 0;
  *(v3 + v6[14]) = 0;
  v8 = v1 + v6[11];
  OUTLINED_FUNCTION_250_0();
  *v8 = v9;
  *(v8 + 16) = v5;
  outlined consume of ConversationLink?(*v7);
  OUTLINED_FUNCTION_2_132();
  OUTLINED_FUNCTION_46();
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
  OUTLINED_FUNCTION_9_17();
}

void *RecentCallRecentItemMetadata.messageStoreMessage.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecentCallRecentItemMetadata(0) + 56));
  v2 = v1;
  return v1;
}

uint64_t RecentCallRecentItemMetadata.init(updateCallMetadata:from:)()
{
  OUTLINED_FUNCTION_6_7();
  v3 = type metadata accessor for RecentCallRecentItemMetadata(0);
  v4 = *(v0 + OUTLINED_FUNCTION_95_5(v3)[13]);
  v5 = v4;
  OUTLINED_FUNCTION_1_137();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  v6 = *(v2 + 52);

  *(v1 + v6) = v4;
  OUTLINED_FUNCTION_250_0();
  OUTLINED_FUNCTION_2_132();
  OUTLINED_FUNCTION_15_14();
  return _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
}

uint64_t RecentCallRecentItemMetadata.init(updateMessageMetadata:from:)()
{
  OUTLINED_FUNCTION_6_7();
  v3 = type metadata accessor for RecentCallRecentItemMetadata(0);
  v4 = *(v0 + OUTLINED_FUNCTION_95_5(v3)[6]);
  v5 = v4;
  OUTLINED_FUNCTION_1_137();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  v6 = *(v2 + 24);

  *(v1 + v6) = v4;
  OUTLINED_FUNCTION_250_0();
  OUTLINED_FUNCTION_2_132();
  OUTLINED_FUNCTION_15_14();
  return _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
}

uint64_t RecentCallRecentItemMetadata.init(metadata:messageIndicatorViewModel:)()
{
  OUTLINED_FUNCTION_6_7();
  v3 = v2;
  v4 = type metadata accessor for RecentCallRecentItemMetadata(0);
  *(v3 + v4[6]) = 0;
  v5 = v3 + v4[11];
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *(v3 + v4[13]) = 0;
  *(v3 + v4[14]) = 0;
  v6 = v4[13];

  *(v1 + v6) = v0;
  outlined consume of ConversationLink?(*v5);
  OUTLINED_FUNCTION_2_132();
  OUTLINED_FUNCTION_15_14();
  return _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
}

void RecentCallRecentItemMetadata.hash(into:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v56 = v4;
  v57 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v55 = (v6 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v54 = v9;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_67_1();
  v11 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = (v16 - v15);
  v18 = OUTLINED_FUNCTION_258_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v18);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54 - v21;
  String.hash(into:)();
  v23 = type metadata accessor for RecentCallRecentItemMetadata(0);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v24 = OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_115(v24, v25, v11);
  if (v26)
  {
    OUTLINED_FUNCTION_165_3();
  }

  else
  {
    (*(v13 + 32))(v17, v22, v11);
    OUTLINED_FUNCTION_166_2();
    OUTLINED_FUNCTION_47_13();
    _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v27, v28);
    OUTLINED_FUNCTION_40_4();
    v22 = v17;
    dispatch thunk of Hashable.hash(into:)();
    (*(v13 + 8))(v17, v11);
  }

  v29 = *(v2 + v23[6]);
  if (v29)
  {
    OUTLINED_FUNCTION_166_2();
    v30 = v29;
    OUTLINED_FUNCTION_28_0();
    NSObject.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_165_3();
  }

  v31 = v57;
  v32 = (v2 + v23[7]);
  if (*(v32 + 8) == 1)
  {
    OUTLINED_FUNCTION_165_3();
  }

  else
  {
    v33 = *v32;
    OUTLINED_FUNCTION_166_2();
    MEMORY[0x1BFB22640](v33);
  }

  if (*(v2 + v23[8]))
  {
    OUTLINED_FUNCTION_166_2();
    v34 = OUTLINED_FUNCTION_304();
    specialized Set.hash(into:)(v34, v35);
  }

  else
  {
    OUTLINED_FUNCTION_165_3();
  }

  MEMORY[0x1BFB22640](*(v2 + v23[9]));
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_115(v1, 1, v31);
  if (v26)
  {
    OUTLINED_FUNCTION_165_3();
  }

  else
  {
    v36 = OUTLINED_FUNCTION_179_0();
    v37(v36);
    OUTLINED_FUNCTION_166_2();
    OUTLINED_FUNCTION_4_121();
    _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v38, v39);
    OUTLINED_FUNCTION_40_4();
    dispatch thunk of Hashable.hash(into:)();
    v40 = OUTLINED_FUNCTION_39_5();
    v41(v40);
  }

  if (*(v2 + v23[11]))
  {
    OUTLINED_FUNCTION_166_2();
    NSObject.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_165_3();
  }

  v42 = v54;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v43 = OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_115(v43, v44, v31);
  if (v26)
  {
    OUTLINED_FUNCTION_165_3();
  }

  else
  {
    v45 = v55;
    v46 = OUTLINED_FUNCTION_138_2();
    v47(v46);
    OUTLINED_FUNCTION_166_2();
    OUTLINED_FUNCTION_4_121();
    _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v48, v49);
    OUTLINED_FUNCTION_40_4();
    v42 = v45;
    dispatch thunk of Hashable.hash(into:)();
    v50 = OUTLINED_FUNCTION_39_5();
    v51(v50);
  }

  v52 = *(v2 + v23[13]);
  if (v52)
  {
    OUTLINED_FUNCTION_166_2();
    v53 = v52;
    OUTLINED_FUNCTION_28_0();
    NSObject.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_165_3();
  }

  if (*(v2 + v23[14]))
  {
    OUTLINED_FUNCTION_166_2();
    MEMORY[0x1BFB22640](1);
  }

  else
  {
    OUTLINED_FUNCTION_165_3();
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t RecentOngoingConversationMetadata.uuid.getter()
{
  OUTLINED_FUNCTION_30();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_46();

  return v1(v0);
}

uint64_t RecentOngoingConversationMetadata.remoteParticipantHandles.getter()
{
  type metadata accessor for RecentOngoingConversationMetadata(0);
}

id RecentOngoingConversationMetadata.conversation.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecentOngoingConversationMetadata(0) + 24));

  return v1;
}

void *RecentOngoingConversationMetadata.conversationLink.getter()
{
  v0 = OUTLINED_FUNCTION_30();
  v1 = type metadata accessor for RecentOngoingConversationMetadata(v0);
  v2 = OUTLINED_FUNCTION_208_2(*(v1 + 28));

  return outlined copy of ConversationLink?(v2);
}

void static RecentOngoingConversationMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_50_2();
  v1 = v0;
  v3 = v2;
  if (static UUID.== infix(_:_:)())
  {
    v4 = type metadata accessor for RecentOngoingConversationMetadata(0);
    if (_sSh2eeoiySbShyxG_ABtFZSo8TUHandleC_Tt1g5())
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
      if (static NSObject.== infix(_:_:)())
      {
        v5 = *(v4 + 28);
        v6 = *(v3 + v5);
        v7 = *(v1 + v5);
        if (v6)
        {
          v8 = OUTLINED_FUNCTION_1_5();
          if (v7)
          {
            outlined copy of ConversationLink?(v8);
            OUTLINED_FUNCTION_89_4();
            outlined copy of ConversationLink?(v9);
            v10 = OUTLINED_FUNCTION_1_5();
            outlined copy of ConversationLink?(v10);
            OUTLINED_FUNCTION_153_2();
            static NSObject.== infix(_:_:)();
            OUTLINED_FUNCTION_89_4();
            outlined consume of ConversationLink?(v11);

            v12 = OUTLINED_FUNCTION_1_5();
            outlined consume of ConversationLink?(v12);
            goto LABEL_11;
          }

          outlined copy of ConversationLink?(v8);
          OUTLINED_FUNCTION_89_4();
          outlined copy of ConversationLink?(v14);
          v15 = OUTLINED_FUNCTION_1_5();
          outlined copy of ConversationLink?(v15);
        }

        else
        {
          outlined copy of ConversationLink?(0);
          if (!v7)
          {
            OUTLINED_FUNCTION_89_4();
            outlined copy of ConversationLink?(v18);
            outlined consume of ConversationLink?(0);
            goto LABEL_11;
          }

          OUTLINED_FUNCTION_89_4();
          outlined copy of ConversationLink?(v13);
        }

        v16 = OUTLINED_FUNCTION_1_5();
        outlined consume of ConversationLink?(v16);
        OUTLINED_FUNCTION_89_4();
        outlined consume of ConversationLink?(v17);
      }
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_49();
}

void RecentOngoingConversationMetadata.hash(into:)()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_4_121();
  _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v2, v3);
  OUTLINED_FUNCTION_29_6();
  dispatch thunk of Hashable.hash(into:)();
  v4 = type metadata accessor for RecentOngoingConversationMetadata(0);
  specialized Set.hash(into:)(v0, *(v1 + *(v4 + 20)));
  NSObject.hash(into:)();
  if (*(v1 + *(v4 + 28)))
  {
    OUTLINED_FUNCTION_166_2();
    NSObject.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_165_3();
  }
}

__n128 RecentOngoingConversationMetadata.init(uuid:remoteParticipantHandles:conversation:conversationLink:)()
{
  OUTLINED_FUNCTION_331();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v13 = *v6;
  v7 = *(v6 + 2);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v8 = OUTLINED_FUNCTION_1_5();
  v9(v8);
  v10 = type metadata accessor for RecentOngoingConversationMetadata(0);
  *(v5 + v10[5]) = v3;
  *(v5 + v10[6]) = v1;
  v11 = v5 + v10[7];
  *v11 = v13;
  *(v11 + 16) = v7;
  OUTLINED_FUNCTION_9_17();
  return result;
}

void RecentsCallItemType.recentCallRecentItemMetadata.getter()
{
  OUTLINED_FUNCTION_29();
  v2 = OUTLINED_FUNCTION_30();
  type metadata accessor for RecentsCallItemType(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13_57();
  OUTLINED_FUNCTION_251_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_214();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_170_0();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_200_0();
  if (v6)
  {
    OUTLINED_FUNCTION_208();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v7, static Logger.conversationKit);
    OUTLINED_FUNCTION_6_94();
    OUTLINED_FUNCTION_40_2();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v9))
    {
      v10 = OUTLINED_FUNCTION_42();
      v11 = OUTLINED_FUNCTION_23();
      v20 = v11;
      *v10 = 136315138;
      v12 = *(v1 + *(v0 + 24));
      if (v12)
      {
        [v12 numberOfOccurrences];
        v13 = String.init<A>(reflecting:)();
        v15 = v14;
      }

      else
      {
        v15 = 0xE300000000000000;
        v13 = 7104878;
      }

      OUTLINED_FUNCTION_1_137();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v20);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_1BBC58000, v8, v9, "[SpamReporting] metadata.recentcall.numberOfOccurrences: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {

      OUTLINED_FUNCTION_1_137();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    }

    OUTLINED_FUNCTION_2_132();
    OUTLINED_FUNCTION_309();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
  }

  else
  {
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  }

  v17 = OUTLINED_FUNCTION_231_2();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v0);
  OUTLINED_FUNCTION_30_0();
}

void key path setter for RecentsCallItemType.recentCallRecentItemMetadata : RecentsCallItemType()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit010RecentCallC12ItemMetadataVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  RecentsCallItemType.recentCallRecentItemMetadata.setter();
}

void RecentsCallItemType.recentCallRecentItemMetadata.setter()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_7_10();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit010RecentCallC12ItemMetadataVSgMd);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v48 = v6;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_116_3();
  v8 = type metadata accessor for RecentCallRecentItemMetadata(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_78();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v12 = OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_115(v12, v13, v8);
  if (v14)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s15ConversationKit010RecentCallC12ItemMetadataVSgMd);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v15 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v15, static Logger.conversationKit);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v17))
    {
      v18 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v18);
      OUTLINED_FUNCTION_132();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      OUTLINED_FUNCTION_26();
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit010RecentCallC12ItemMetadataVSgMd);
  }

  else
  {
    OUTLINED_FUNCTION_2_132();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
    OUTLINED_FUNCTION_0_169();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
    OUTLINED_FUNCTION_246_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
      case 2:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit010RecentCallC12ItemMetadataVSgMd);
        OUTLINED_FUNCTION_1_137();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
        goto LABEL_23;
      case 3:
        OUTLINED_FUNCTION_3_129();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
        v45 = v2;
        goto LABEL_21;
      case 4:
        OUTLINED_FUNCTION_3_129();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_2_9();
        }

        v25 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v25, static Logger.conversationKit);
        OUTLINED_FUNCTION_6_94();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();
        if (!OUTLINED_FUNCTION_18_0(v27))
        {
          goto LABEL_19;
        }

        v46 = OUTLINED_FUNCTION_42();
        v49 = OUTLINED_FUNCTION_23();
        *v46 = 136315138;
        OUTLINED_FUNCTION_6_94();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v28, v29, v30, v8);
        specialized >> prefix<A>(_:)();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v48, &_s15ConversationKit010RecentCallC12ItemMetadataVSgMd);
        OUTLINED_FUNCTION_1_137();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
        v31 = OUTLINED_FUNCTION_29_6();
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v33);

        *(v46 + 4) = v34;
        _os_log_impl(&dword_1BBC58000, v26, v27, "[SpamReporting] updated audioMessage metadata: %s", v46, 0xCu);
        v35 = v49;
        goto LABEL_18;
      default:
        OUTLINED_FUNCTION_3_129();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_2_9();
        }

        v36 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v36, static Logger.conversationKit);
        OUTLINED_FUNCTION_6_94();
        _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
        v26 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_18_0(v37))
        {
          v47 = OUTLINED_FUNCTION_42();
          v50 = OUTLINED_FUNCTION_23();
          *v47 = 136315138;
          OUTLINED_FUNCTION_6_94();
          _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
          OUTLINED_FUNCTION_12();
          __swift_storeEnumTagSinglePayload(v38, v39, v40, v8);
          specialized >> prefix<A>(_:)();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v48, &_s15ConversationKit010RecentCallC12ItemMetadataVSgMd);
          OUTLINED_FUNCTION_1_137();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
          v41 = OUTLINED_FUNCTION_29_6();
          v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v43);

          *(v47 + 4) = v44;
          _os_log_impl(&dword_1BBC58000, v26, v37, "[SpamReporting] updated recent metadata: %s", v47, 0xCu);
          v35 = v50;
LABEL_18:
          __swift_destroy_boxed_opaque_existential_1(v35);
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_26();

          v45 = v2;
LABEL_21:
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v45, &_s15ConversationKit010RecentCallC12ItemMetadataVSgMd);
        }

        else
        {
LABEL_19:

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit010RecentCallC12ItemMetadataVSgMd);
          OUTLINED_FUNCTION_1_137();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
        }

        OUTLINED_FUNCTION_2_132();
        OUTLINED_FUNCTION_196_2();
        _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
        OUTLINED_FUNCTION_32_2();
        swift_storeEnumTagMultiPayload();
LABEL_23:
        OUTLINED_FUNCTION_3_129();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
        break;
    }
  }

  OUTLINED_FUNCTION_30_0();
}

void (*RecentsCallItemType.recentCallRecentItemMetadata.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit010RecentCallC12ItemMetadataVSgMd);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  RecentsCallItemType.recentCallRecentItemMetadata.getter();
  return RecentsCallItemType.recentCallRecentItemMetadata.modify;
}

void RecentsCallItemType.recentCallRecentItemMetadata.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    OUTLINED_FUNCTION_45_1();
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    RecentsCallItemType.recentCallRecentItemMetadata.setter();
    OUTLINED_FUNCTION_158();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, v5);
  }

  else
  {
    RecentsCallItemType.recentCallRecentItemMetadata.setter();
  }

  free(v3);

  free(v2);
}

void RecentsCallItemType.hash(into:)()
{
  OUTLINED_FUNCTION_50_2();
  v3 = OUTLINED_FUNCTION_17_1();
  v4 = type metadata accessor for RecentOngoingConversationMetadata(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_1();
  v6 = type metadata accessor for RecentCallRecentItemMetadata(0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_0_169();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_43_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_10_71();
      OUTLINED_FUNCTION_2_40();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      MEMORY[0x1BFB22640](1);
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_4_121();
      _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v11, v12);
      OUTLINED_FUNCTION_40_4();
      dispatch thunk of Hashable.hash(into:)();
      specialized Set.hash(into:)(v0, *(v1 + *(v4 + 20)));
      NSObject.hash(into:)();
      v13 = *(v1 + *(v4 + 28));
      if (!v13)
      {
        OUTLINED_FUNCTION_165_3();
        OUTLINED_FUNCTION_8_84();
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_166_2();
      v13;

      NSObject.hash(into:)();
      OUTLINED_FUNCTION_8_84();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      OUTLINED_FUNCTION_89_4();
      outlined consume of ConversationLink?(v14);
      goto LABEL_8;
    case 2u:
      v10 = *v2;
      MEMORY[0x1BFB22640](2);
      NSObject.hash(into:)();

      goto LABEL_8;
    case 3u:
      OUTLINED_FUNCTION_2_132();
      OUTLINED_FUNCTION_7_8();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      v9 = 3;
      goto LABEL_6;
    case 4u:
      OUTLINED_FUNCTION_2_132();
      OUTLINED_FUNCTION_7_8();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      v9 = 4;
      goto LABEL_6;
    default:
      OUTLINED_FUNCTION_2_132();
      OUTLINED_FUNCTION_7_8();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      v9 = 0;
LABEL_6:
      MEMORY[0x1BFB22640](v9);
      RecentCallRecentItemMetadata.hash(into:)();
      OUTLINED_FUNCTION_1_137();
LABEL_7:
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
LABEL_8:
      OUTLINED_FUNCTION_49();
      return;
  }
}

Swift::Int SkipHashableMessage.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SkipHashableMessage()
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](1);
  return Hasher._finalize()();
}

id one-time initialization function for featureFlags()
{
  result = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  static RecentsCallItem.featureFlags = result;
  return result;
}

{
  result = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  static CallParticipantLabelDescriptor.featureFlags = result;
  return result;
}

uint64_t *RecentsCallItem.featureFlags.unsafeMutableAddressor()
{
  if (one-time initialization token for featureFlags != -1)
  {
    OUTLINED_FUNCTION_120_3();
  }

  return &static RecentsCallItem.featureFlags;
}

id static RecentsCallItem.featureFlags.getter()
{
  if (one-time initialization token for featureFlags != -1)
  {
    OUTLINED_FUNCTION_120_3();
  }

  v1 = static RecentsCallItem.featureFlags;

  return v1;
}

uint64_t RecentsCallItem.title.getter()
{
  type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_145_3();
  return OUTLINED_FUNCTION_46();
}

uint64_t RecentsCallItem.subtitle.getter()
{
  type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_145_3();
  return OUTLINED_FUNCTION_46();
}

uint64_t RecentsCallItem.senderIdentity.getter()
{
  type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_145_3();
  return OUTLINED_FUNCTION_46();
}

uint64_t RecentsCallItem.occurrenceCount.getter()
{
  type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_145_3();
  return OUTLINED_FUNCTION_46();
}

id RecentsCallItem.titleColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecentsCallItem(0) + 40));

  return v1;
}

void *RecentsCallItem.applicationIcon.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecentsCallItem(0) + 44));
  v2 = v1;
  return v1;
}

uint64_t RecentsCallItem.contacts.getter()
{
  type metadata accessor for RecentsCallItem(0);
}

uint64_t RecentsCallItem.isJunk.setter(char a1)
{
  result = type metadata accessor for RecentsCallItem(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t RecentsCallItem.isJunk.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for RecentsCallItem(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t RecentsCallItem.isSuggested.setter(char a1)
{
  result = type metadata accessor for RecentsCallItem(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t RecentsCallItem.isSuggested.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for RecentsCallItem(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t RecentsCallItem.isCommTrustBlocked.setter(char a1)
{
  result = type metadata accessor for RecentsCallItem(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t RecentsCallItem.isCommTrustBlocked.modify()
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for RecentsCallItem(v0);
  return OUTLINED_FUNCTION_26_0();
}

uint64_t RecentsCallItem.destination.getter()
{
  v2 = OUTLINED_FUNCTION_26_38();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_13_63();
  type metadata accessor for RecentsCallItemType(v3);
  OUTLINED_FUNCTION_25_39();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_1_5();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  if (OUTLINED_FUNCTION_215_1())
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_132();
  OUTLINED_FUNCTION_45_1();
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
  v5 = *(v1 + 32);
  v6 = *(v0 + v5);
  if (!v6)
  {
LABEL_6:
    OUTLINED_FUNCTION_1_137();
LABEL_7:
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    return 0;
  }

  result = specialized Set.startIndex.getter(*(v0 + v5));
  if (v9)
  {
    goto LABEL_10;
  }

  if (*(v6 + 36) != v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (result == 1 << *(v6 + 32))
  {
    goto LABEL_6;
  }

  specialized Set.subscript.getter(result, v8, v6, v10);
  OUTLINED_FUNCTION_1_137();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  return v11;
}

uint64_t RecentsCallItem.formattedTUHandles.getter()
{
  RecentsCallItem.tuHandles.getter();
  specialized Sequence.compactMap<A>(_:)(v1);
  OUTLINED_FUNCTION_28_0();

  return v0;
}

uint64_t RecentsCallItem.handleForMailCallback.getter()
{
  v2 = OUTLINED_FUNCTION_20_44();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_13_63();
  type metadata accessor for RecentCallRecentItemMetadata(v3);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_309();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_76();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4 || ((1 << EnumCaseMultiPayload) & 0x19) == 0)
  {
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  }

  else
  {
    OUTLINED_FUNCTION_44_0();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
    v7 = *(v1 + *(v0 + 52));
    OUTLINED_FUNCTION_1_137();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    v8 = [v7 fromHandle];
  }

  return OUTLINED_FUNCTION_230_2();
}

uint64_t RecentsCallItem.idsCanonicalDestinations.getter()
{
  v1 = RecentsCallItem.contact.getter();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 allIDSDestinations];
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v4);
  }

  else
  {
    RecentsCallItem.tuHandles.getter();
    specialized Sequence.compactMap<A>(_:)(v6);
    OUTLINED_FUNCTION_28_0();

    return _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v0);
  }

  return v5;
}

void RecentsCallItem.groupUUID.getter()
{
  OUTLINED_FUNCTION_50_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_96();
  v4 = type metadata accessor for RecentOngoingConversationMetadata(v3);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for RecentCallRecentItemMetadata(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_153_2();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_179_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_10_71();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_7_58();
      v16 = OUTLINED_FUNCTION_44_0();
      v17(v16);
      OUTLINED_FUNCTION_8_84();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      v8 = OUTLINED_FUNCTION_66_7();
      goto LABEL_7;
    case 2u:
      v12 = *v0;
      v13 = [*v0 groupUUID];
      if (v13)
      {
        v14 = v13;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = 0;
      }

      else
      {
        v15 = 1;
      }

      type metadata accessor for UUID();
      v18 = OUTLINED_FUNCTION_206_0();
      __swift_storeEnumTagSinglePayload(v18, v15, 1, v19);
      OUTLINED_FUNCTION_38_2();
      outlined init with take of CaptionSectioner.SpeakerSection?();

      break;
    case 3u:
    case 4u:
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      type metadata accessor for UUID();
      v8 = OUTLINED_FUNCTION_2_10();
LABEL_7:
      __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
      break;
    default:
      OUTLINED_FUNCTION_2_132();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      OUTLINED_FUNCTION_1_137();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      break;
  }

  OUTLINED_FUNCTION_49();
}

uint64_t RecentsCallItem.callUniqueId.getter()
{
  v0 = OUTLINED_FUNCTION_20_44();
  MEMORY[0x1EEE9AC00](v0);
  v1 = OUTLINED_FUNCTION_13_63();
  v2 = type metadata accessor for RecentCallRecentItemMetadata(v1);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_309();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_76();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 3) >= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      OUTLINED_FUNCTION_46();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();

      OUTLINED_FUNCTION_1_137();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44_0();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();

    OUTLINED_FUNCTION_1_137();
  }

  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  return OUTLINED_FUNCTION_29_6();
}

uint64_t RecentsCallItem.ttyType.getter(SEL *a1)
{
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_57();
  OUTLINED_FUNCTION_251_1();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_78();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_200_0();
  if (v6)
  {
    OUTLINED_FUNCTION_208();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
    v7 = *(v2 + *(v1 + 24));
    v8 = v7;
    OUTLINED_FUNCTION_1_137();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    if (v7)
    {
      [v8 *a1];
    }
  }

  else
  {
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  }

  return OUTLINED_FUNCTION_230_2();
}

void static RecentsCallItem.shouldTargetUpcoming(for:)()
{
  OUTLINED_FUNCTION_50_2();
  v1 = OUTLINED_FUNCTION_43_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_96();
  v4 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_78();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v9 = OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_115(v9, v10, v4);
  if (v11)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4DateVSgMd);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_91_2();
    v13(v12);
    type metadata accessor for RecentsLinkController();
    static RecentsLinkController.shouldTargetUpcomingSectionDate.getter();
    OUTLINED_FUNCTION_1_5();
    static Date.> infix(_:_:)();
    v14 = *(v6 + 8);
    v15 = OUTLINED_FUNCTION_45_1();
    v14(v15);
    v16 = OUTLINED_FUNCTION_309();
    v14(v16);
  }

  OUTLINED_FUNCTION_49();
}

void RecentsCallItem.isInitiatorInContacts.getter()
{
  OUTLINED_FUNCTION_104_5();
  v1 = RecentsCallItem.initiator.getter();
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BAC30;
    *(inited + 32) = v2;
    if (specialized Array.count.getter(inited))
    {
      v4 = v2;
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8TUHandleC_Tt0g5(inited);
    }

    else
    {
      swift_setDeallocating();
      v5 = v2;
      specialized _ContiguousArrayStorage.__deallocating_deinit();
    }

    if (one-time initialization token for faceTime != -1)
    {
LABEL_17:
      OUTLINED_FUNCTION_11_4();
    }

    v6 = OUTLINED_FUNCTION_15_14();
    specialized Sequence.compactMap<A>(_:)(v6);
    OUTLINED_FUNCTION_212();

    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v13 = MEMORY[0x1E69E7CC0];
    v9 = *(v0 + 16);
LABEL_7:
    v10 = 56 * v7 + 32;
    while (v9 != v7)
    {
      if (v7 >= *(v0 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      ++v7;
      v11 = *(v0 + v10);
      v10 += 56;
      if (v11)
      {
        v11;
        MEMORY[0x1BFB20CC0]();
        v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v12 >> 1)
        {
          OUTLINED_FUNCTION_59_3(v12);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        OUTLINED_FUNCTION_7_8();
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v8 = v13;
        goto LABEL_7;
      }
    }

    specialized Array.count.getter(v8);
  }

  OUTLINED_FUNCTION_31_0();
}

uint64_t RecentsCallItem.initiator.getter()
{
  v2 = OUTLINED_FUNCTION_20_44();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_13_63();
  type metadata accessor for RecentCallRecentItemMetadata(v3);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_309();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_76();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      break;
    default:
      OUTLINED_FUNCTION_44_0();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      v6 = *(v1 + *(v0 + 24));
      v7 = v6;
      OUTLINED_FUNCTION_1_137();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      if (v6)
      {
        v8 = [v7 initiator];

        if (v8)
        {
          CHHandle.tuHandle.getter();
        }
      }

      break;
  }

  return OUTLINED_FUNCTION_230_2();
}

void RecentsCallItem.isOneToOne.getter()
{
  OUTLINED_FUNCTION_29();
  v3 = OUTLINED_FUNCTION_129();
  v4 = type metadata accessor for RecentCallRecentItemMetadata(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_32();
  v47 = v10;
  v11 = OUTLINED_FUNCTION_4_24();
  v12 = type metadata accessor for RecentsCallItemType(v11);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19RecentsCallItemTypeOSgMd);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v44 - v16;
  v18 = type metadata accessor for RecentsCallItem(0);
  v19 = OUTLINED_FUNCTION_22(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v20 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v20, static Logger.conversationKit);
  OUTLINED_FUNCTION_7_85();
  OUTLINED_FUNCTION_304();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  v46 = v1;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_42();
    v44[2] = v0;
    v24 = v23;
    v25 = OUTLINED_FUNCTION_23();
    v45 = v4;
    v26 = v25;
    v49 = v25;
    *v24 = 136315138;
    OUTLINED_FUNCTION_0_169();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v12);
    specialized >> prefix<A>(_:)();
    v44[0] = v8;
    v44[1] = v2;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s15ConversationKit19RecentsCallItemTypeOSgMd);
    OUTLINED_FUNCTION_5_116();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    v30 = OUTLINED_FUNCTION_258_0();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v32);
    v8 = v44[0];

    *(v24 + 4) = v33;
    _os_log_impl(&dword_1BBC58000, v21, v22, "[SpamReporting] RecentsCallItem: type: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v4 = v45;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    OUTLINED_FUNCTION_5_116();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  }

  OUTLINED_FUNCTION_76();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_258_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 3) < 2 || EnumCaseMultiPayload)
  {
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  }

  else
  {
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
    OUTLINED_FUNCTION_6_94();
    OUTLINED_FUNCTION_246_0();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v36))
    {
      v37 = OUTLINED_FUNCTION_42();
      v38 = OUTLINED_FUNCTION_23();
      v49 = v38;
      *v37 = 136315138;
      v39 = *(v8 + *(v4 + 32));
      if (v39)
      {
        v48 = *(v39 + 16);
        v40 = String.init<A>(reflecting:)();
        v42 = v41;
      }

      else
      {
        v42 = 0xE300000000000000;
        v40 = 7104878;
      }

      OUTLINED_FUNCTION_1_137();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v49);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_1BBC58000, v35, v36, "[SpamReporting] RecentsCallItem: recentCallRecentItemMetadata.remoteHandles.count = %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {

      OUTLINED_FUNCTION_1_137();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    }

    OUTLINED_FUNCTION_1_137();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  }

  OUTLINED_FUNCTION_30_0();
}

void RecentsCallItem.isGroupFaceTimeCall.getter()
{
  OUTLINED_FUNCTION_50_2();
  v1 = OUTLINED_FUNCTION_129();
  v2 = type metadata accessor for RecentsCallItem(v1);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_224();
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_58();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_76();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_78();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_3_129();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  if (EnumCaseMultiPayload != 2)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.conversationKit);
    OUTLINED_FUNCTION_12_66();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
    OUTLINED_FUNCTION_44_0();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109376;
      RecentsCallItem.isTelephony.getter();
      OUTLINED_FUNCTION_32_22();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      *(v10 + 4) = v0;
      *(v10 + 8) = 1024;
      RecentsCallItem.isOneToOne.getter();
      v12 = v11 & 1;
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      *(v10 + 10) = v12;
      _os_log_impl(&dword_1BBC58000, v8, v9, "[SpamReporting] isTelephony: %{BOOL}d, isOneToOne: %{BOOL}d", v10, 0xEu);
      OUTLINED_FUNCTION_27();
    }

    else
    {
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      OUTLINED_FUNCTION_91_2();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    }

    if ((RecentsCallItem.isTelephony.getter() & 1) == 0)
    {
      RecentsCallItem.isOneToOne.getter();
    }
  }

  OUTLINED_FUNCTION_49();
}

unint64_t RecentsCallItem.faceTimeSpamCallType.getter()
{
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  RecentsCallItem.isOneToOne.getter();
  if ((v1 & 1) != 0 && (RecentsCallItem.isTelephony.getter() & 1) == 0)
  {
    return 0xD000000000000013;
  }

  v2 = 0x656D697465636166;
  RecentsCallItem.isGroupFaceTimeCall.getter();
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_0_169();
    OUTLINED_FUNCTION_208();
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
    OUTLINED_FUNCTION_1_5();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    OUTLINED_FUNCTION_3_129();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    if (EnumCaseMultiPayload != 2)
    {
      return 0;
    }
  }

  return v2;
}

uint64_t RecentsCallItem.duration.getter()
{
  v0 = OUTLINED_FUNCTION_26_38();
  MEMORY[0x1EEE9AC00](v0);
  v1 = OUTLINED_FUNCTION_13_63();
  type metadata accessor for RecentsCallItemType(v1);
  OUTLINED_FUNCTION_25_39();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_1_5();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  if (OUTLINED_FUNCTION_215_1())
  {
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_2_132();
    OUTLINED_FUNCTION_45_1();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
    v4 = OUTLINED_FUNCTION_217_2();
    if (v4)
    {
      [v4 duration];
      v3 = v5;
    }

    else
    {
      v3 = 0;
    }

    OUTLINED_FUNCTION_1_137();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  }

  return v3;
}

void RecentsCallItem.shouldShowDate.getter()
{
  OUTLINED_FUNCTION_50_2();
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_214();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_116_3();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_91_2();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    OUTLINED_FUNCTION_3_129();
LABEL_10:
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    goto LABEL_13;
  }

  v4 = *v0;
  ConversationLink.prevailingSuggestion.getter();
  if (v5)
  {
    v6 = v5;
    v7 = SGURL.hasEventDate.getter();

    if (v7)
    {
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_40_2();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_32_2();
  if (swift_getEnumCaseMultiPayload() != 2)
  {

    OUTLINED_FUNCTION_3_129();
    goto LABEL_10;
  }

  v8 = *v1;
  OUTLINED_FUNCTION_162_1();
  static RecentsCallItem.shouldTargetUpcoming(for:)();
  if ((v9 & 1) == 0)
  {

LABEL_12:

    goto LABEL_13;
  }

  ConversationLink.prevailingSuggestion.getter();
  if (v10)
  {
    v11 = v10;
    SGURL.hasEventDate.getter();
  }

  else
  {
  }

LABEL_13:
  OUTLINED_FUNCTION_49();
}

void RecentsCallItem.linkName.getter()
{
  OUTLINED_FUNCTION_50_2();
  v4 = type metadata accessor for RecentOngoingConversationMetadata(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_13_63();
  type metadata accessor for RecentCallRecentItemMetadata(v6);
  OUTLINED_FUNCTION_25_39();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_57();
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_308();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_43_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_10_71();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      v13 = *(v0 + *(v4 + 28));
      if (v13)
      {
        v14 = [v13 linkName];
        if (v14)
        {
          v15 = v14;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          OUTLINED_FUNCTION_7_19();
        }
      }

      OUTLINED_FUNCTION_8_84();
      goto LABEL_12;
    case 2u:
      v9 = *v3;
      outlined bridged method (pb) of @objc TUConversationLink.linkName.getter(*v3);
      OUTLINED_FUNCTION_7_19();

      break;
    case 3u:
    case 4u:
      OUTLINED_FUNCTION_3_129();
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      break;
    default:
      OUTLINED_FUNCTION_2_132();
      OUTLINED_FUNCTION_170_0();
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      v10 = *(v1 + *(v2 + 44));
      if (v10)
      {
        v11 = [v10 linkName];
        if (v11)
        {
          v12 = v11;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          OUTLINED_FUNCTION_7_19();
        }
      }

      OUTLINED_FUNCTION_1_137();
LABEL_12:
      _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
      break;
  }

  OUTLINED_FUNCTION_49();
}

uint64_t RecentsCallItem.extraSubtitleWithDate.getter()
{
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_38_2();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_44_0();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v2 = *v0;
    RecentsCallItem.shouldShowDate.getter();
    if (v3)
    {
      OUTLINED_FUNCTION_181_1();
      ConversationLink.extraSubtitleStringWithDate.getter();
    }

    else
    {
      OUTLINED_FUNCTION_181_1();
      ConversationLink.extraSubtitleString.getter();
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_129();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  }

  return OUTLINED_FUNCTION_46();
}

uint64_t RecentsCallItem.extraSubtitle.getter()
{
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_38_2();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_44_0();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v2 = *v0;
    OUTLINED_FUNCTION_181_1();
    ConversationLink.extraSubtitleString.getter();
  }

  else
  {
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  }

  return OUTLINED_FUNCTION_46();
}

uint64_t static RecentsCallItem.titleUsingLink(_:in:)(uint64_t a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v42 = *a1;
  v43 = v4;
  v44 = v5;
  v6 = ConversationLink.displayName.getter();
  if (v7)
  {
    return v6;
  }

  v37[0] = v3;
  v37[1] = v4;
  v37[2] = v5;
  v6 = static RecentsCallItem.formattedOriginatorTitleFromLink(_:in:)(v37, a2);
  if (v8)
  {
    return v6;
  }

  if (!a2)
  {
LABEL_31:
    static RecentsCallItem.genericStringForFaceTimeLink(_:)(a2);
    v9 = v36;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  v11 = [a2 remoteMembers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember);
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = specialized Set.count.getter(v12);
  if (!v13)
  {

    a2 = MEMORY[0x1E69E7CC0];
    goto LABEL_31;
  }

  v14 = v13;
  v41 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  result = specialized Set.startIndex.getter(v12);
  v38 = result;
  v39 = v15;
  v40 = v16 & 1;
  if ((v14 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    while (!__OFADD__(v17++, 1))
    {
      v19 = v38;
      v20 = v39;
      v21 = v40;
      specialized Set.subscript.getter(v38, v39, v40, v12);
      v23 = v22;
      v24 = [v22 handle];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      if ((v12 & 0xC000000000000001) != 0)
      {
        if (!v21)
        {
          goto LABEL_37;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo20TUConversationMemberC_GMd);
        v29 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v29(v37, 0);
      }

      else
      {
        if (v21)
        {
          goto LABEL_38;
        }

        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_33;
        }

        v25 = 1 << *(v12 + 32);
        if (v19 >= v25)
        {
          goto LABEL_33;
        }

        v26 = v19 >> 6;
        v27 = *(v12 + 56 + 8 * (v19 >> 6));
        if (((v27 >> v19) & 1) == 0)
        {
          goto LABEL_34;
        }

        if (*(v12 + 36) != v20)
        {
          goto LABEL_35;
        }

        v28 = v27 & (-2 << (v19 & 0x3F));
        if (v28)
        {
          v25 = __clz(__rbit64(v28)) | v19 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v30 = v26 << 6;
          v31 = v26 + 1;
          v32 = (v12 + 64 + 8 * v26);
          while (v31 < (v25 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v19, v20, 0);
              v25 = __clz(__rbit64(v33)) + v30;
              goto LABEL_27;
            }
          }

          result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v19, v20, 0);
        }

LABEL_27:
        v35 = *(v12 + 36);
        v38 = v25;
        v39 = v35;
        v40 = 0;
      }

      if (v17 == v14)
      {

        outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v38, v39, v40);
        a2 = v41;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void RecentsCallItem.init(conversation:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_30();
  v4 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_2();
  v8 = type metadata accessor for RecentsCallItem(0);
  *(v0 + v8[15]) = 0;
  v9 = [v3 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = [v3 remoteMembers];
  OUTLINED_FUNCTION_41();
  type metadata accessor for NSObject(v11, v12);
  OUTLINED_FUNCTION_41();
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(v13, v14);
  OUTLINED_FUNCTION_112_6();
  v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Sequence.flatMap<A>(_:)(v15);
  OUTLINED_FUNCTION_246();
  v16 = v3;

  v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5(v10);
  v18 = [v3 link];
  v60 = v4;
  v61 = v1;
  v59 = v3;
  if (v18)
  {
    v19 = v18;
    v20 = v4;
    if (specialized Array.count.getter(MEMORY[0x1E69E7CC0]))
    {
      v21 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo5SGURLC_Tt0gq5(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v21 = MEMORY[0x1E69E7CD0];
    }

    v28 = v21;
    if (one-time initialization token for faceTime != -1)
    {
      OUTLINED_FUNCTION_11_4();
    }

    v29 = static ParticipantContactDetailsCache.faceTime;
    v30 = OUTLINED_FUNCTION_44_0();
    v31(v30);
    v32 = type metadata accessor for RecentOngoingConversationMetadata(0);
    OUTLINED_FUNCTION_197_1(v32);
    v34 = (v0 + v33);
    *v34 = v19;
    v34[1] = v28;
    v34[2] = v29;
    OUTLINED_FUNCTION_252_0();
    OUTLINED_FUNCTION_231_2();
    swift_storeEnumTagMultiPayload();
    v62[0] = v19;
    v62[1] = v28;
    v62[2] = v29;

    v35 = v16;
    swift_retain_n();
    v36 = v19;

    static RecentsCallItem.titleUsingLink(_:in:)(v62, v16);
    OUTLINED_FUNCTION_96_1();
    v27 = v17;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_76();
    v23(v22);
    v24 = type metadata accessor for RecentOngoingConversationMetadata(0);
    OUTLINED_FUNCTION_197_1(v24);
    v20 = (v0 + v25);
    OUTLINED_FUNCTION_252_0();
    v20[1] = 0;
    v20[2] = 0;
    *v20 = 0;
    OUTLINED_FUNCTION_231_2();
    swift_storeEnumTagMultiPayload();

    v26 = [v3 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_96_1();

    v27 = v17;
  }

  v37 = (v0 + v8[5]);
  *v37 = v16;
  v37[1] = v20;
  v38 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_14_2();
  v39.super.isa = v38;
  v43 = OUTLINED_FUNCTION_17_0(v40, 0xE90000000000004CLL, v41, v42, v39);
  v45 = v44;

  v46 = (v0 + v8[6]);
  *v46 = v43;
  v46[1] = v45;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  *(v0 + v8[10]) = [objc_opt_self() whiteColor];
  v51 = (v0 + v8[7]);
  *v51 = 0;
  v51[1] = 0;
  v52 = (v0 + v8[8]);
  *v52 = 0;
  v52[1] = 0;
  *(v0 + v8[11]) = 0;
  v53 = specialized Sequence.compactMap<A>(_:)(v27);

  *(v0 + v8[12]) = v53;
  v54 = UUID.uuidString.getter();
  v56 = v55;

  v57 = OUTLINED_FUNCTION_196_2();
  outlined consume of ConversationLink?(v57);
  (*(v6 + 8))(v61, v60);
  v58 = (v0 + v8[13]);
  *v58 = v54;
  v58[1] = v56;
  *(v0 + v8[14]) = 0;
  *(v0 + v8[16]) = 0;
  OUTLINED_FUNCTION_30_0();
}

uint64_t MessageType.mediaType.getter(unsigned __int16 a1)
{
  if (a1 < 3u)
  {
    return qword_1BC4DB718[a1];
  }

  _StringGuts.grow(_:)(26);

  MessageType.rawValue.getter();
  v2 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v2);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void static RecentsCallItem.genericStringForFaceTimeLink(_:)(uint64_t a1)
{
  v1 = 0xEE004F454449565FLL;
  if (a1)
  {
    v3 = specialized Array.count.getter(a1);
    v4 = 0;
    while (1)
    {
      if (v3 == v4)
      {
        v1 = 0xEE004F454449565FLL;
        goto LABEL_14;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1BFB22010](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v7 = [v5 value];
      if (!v7)
      {
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = MEMORY[0x1BFB209B0](v8);
      }

      v9 = [v7 destinationIdIsTemporary];

      ++v4;
      if (v9)
      {
        v1 = 0xED00004B4E494C5FLL;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:
    v10 = [objc_opt_self() conversationKit];
    v14._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0x454D495445434146;
    v12.value._countAndFlagsBits = 0x61737265766E6F43;
    v12.value._object = 0xEF74694B6E6F6974;
    v11._object = v1;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v14._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v14);
  }
}

uint64_t static RecentsCallItem.formattedOriginatorTitleFromLink(_:in:)(id *a1, void *a2)
{
  v3 = *a1;
  v4 = [*a1 invitedMemberHandles];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v46 = v6;
  if (([v3 isLocallyCreated] & 1) == 0)
  {
    v7 = [v3 originatorHandle];
    if (v7)
    {
      if (!v6)
      {

        if (!a2)
        {
          goto LABEL_11;
        }

        goto LABEL_9;
      }

      specialized Set._Variant.insert(_:)(&v45, v7);
    }
  }

  if (!a2)
  {
LABEL_11:
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

LABEL_9:
  v8 = [a2 localMember];
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v8 handles];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_SSs5NeverOTg50153_s15ConversationKit15RecentsCallItemV32formattedOriginatorTitleFromLink33_82A9A7220E7FDFEBE573EE0F414688B9LL_2inSSSgAA0aJ0V_So14TUConversationCSgtFZSSSo8D6CXEfU_Tf1cn_n(v11);
  v13 = v12;

LABEL_12:
  v45 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v13);
  v14 = [objc_opt_self() sharedController];
  [v14 blockUntilConnected];

  v15 = [objc_opt_self() sharedInstance];
  if (!v15 || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMServiceImpl), ObjCClassFromMetadata = swift_getObjCClassFromMetadata(), v17 = v15, v18 = [ObjCClassFromMetadata facetimeService], v19 = objc_msgSend(v17, sel_bestAccountForService_, v18), v17, v18, !v19) || (v20 = outlined bridged method (ob) of @objc IMAccount.aliases.getter(v19)) == 0 || (v21 = specialized _arrayConditionalCast<A, B>(_:)(v20), , !v21))
  {

    v21 = MEMORY[0x1E69E7CC0];
  }

  specialized Set.formUnion<A>(_:)(v21);
  if (v46)
  {

    v23 = specialized Set._Variant.filter(_:)(v22, &v45);

    specialized Sequence.compactMap<A>(_:)(v23);
    v25 = v24;
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  v26 = *(v25 + 16);
  if (!v26)
  {

    v27 = 0;
    goto LABEL_28;
  }

  v27 = *(v25 + 40);
  v28 = *(v25 + 48);
  v29 = *(v25 + 32);

  if (v26 == 2)
  {
    v44 = v29;
    v31 = [objc_opt_self() conversationKit];
    v47._object = 0xE000000000000000;
    v32.value._countAndFlagsBits = 0x61737265766E6F43;
    v32.value._object = 0xEF74694B6E6F6974;
    v33._object = 0x80000001BC511850;
    v33._countAndFlagsBits = 0xD000000000000030;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v47._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v32, v31, v34, v47);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1BC4BA940;
    *(v35 + 56) = MEMORY[0x1E69E6158];
    *(v35 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v35 + 32) = v27;
    *(v35 + 40) = v28;
LABEL_27:

    v27 = String.init(format:_:)();

    goto LABEL_28;
  }

  v30 = v26 - 1;
  if (v30)
  {
    v44 = v29;
    v36 = [objc_opt_self() conversationKit];
    v48._object = 0xE000000000000000;
    v37.value._countAndFlagsBits = 0x61737265766E6F43;
    v37.value._object = 0xEF74694B6E6F6974;
    v38._countAndFlagsBits = 0xD000000000000036;
    v38._object = 0x80000001BC511810;
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    v48._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v37, v36, v39, v48);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1BC4BAA20;
    *(v40 + 56) = MEMORY[0x1E69E6158];
    v41 = lazy protocol witness table accessor for type String and conformance String();
    *(v40 + 32) = v27;
    *(v40 + 40) = v28;
    v42 = MEMORY[0x1E69E65A8];
    *(v40 + 96) = MEMORY[0x1E69E6530];
    *(v40 + 104) = v42;
    *(v40 + 64) = v41;
    *(v40 + 72) = v30;
    goto LABEL_27;
  }

LABEL_28:

  return v27;
}

void RecentsCallItem.init(recentItem:linkItem:)()
{
  OUTLINED_FUNCTION_29();
  v109 = v5;
  v110 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19RecentsCallItemTypeOSgMd);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_1();
  v102 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_1();
  v103 = v13;
  OUTLINED_FUNCTION_4_24();
  v108 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v105 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v101 = v17 - v16;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_1();
  v106 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v21 = OUTLINED_FUNCTION_22(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4();
  v104 = v22;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_214();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v91 - v25;
  v27 = type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_23_19();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_224();
  v30 = type metadata accessor for RecentCallRecentItemMetadata(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_115_3();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v91 - v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_116_3();
  OUTLINED_FUNCTION_0_169();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_9_79();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    OUTLINED_FUNCTION_3_129();
LABEL_7:
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    goto LABEL_8;
  }

  v98 = v26;
  v99 = v30;
  v36 = v108;
  v96 = v3;
  v97 = v34;
  v100 = v7;
  OUTLINED_FUNCTION_2_132();
  OUTLINED_FUNCTION_91_2();
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
  OUTLINED_FUNCTION_0_169();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_179_0();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    OUTLINED_FUNCTION_9_79();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    OUTLINED_FUNCTION_1_137();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    OUTLINED_FUNCTION_3_129();
    goto LABEL_7;
  }

  v37 = *v2;
  v95 = *(v2 + 8);
  v38 = *(v2 + 16);
  v93 = v27;
  v94 = v37;
  v39 = [v37 groupUUID];
  if (v39)
  {
    v40 = v39;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v46 = v107;
  __swift_storeEnumTagSinglePayload(v1, v41, 1, v36);
  v47 = v98;
  outlined init with take of CaptionSectioner.SpeakerSection?();
  v48 = v46[12];
  v49 = v106;
  OUTLINED_FUNCTION_41();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_83_0(v49);
  if (v52)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v47, &_s10Foundation4UUIDVSgMd);
    OUTLINED_FUNCTION_83_0(v49 + v48);
    v50 = v95;
    if (v52)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v49, &_s10Foundation4UUIDVSgMd);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v51 = v104;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_83_0(v49 + v48);
  if (v52)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v47, &_s10Foundation4UUIDVSgMd);
    v53 = OUTLINED_FUNCTION_91_2();
    v54(v53);
LABEL_19:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v49, &_s10Foundation4UUIDVSg_ADtMd);
LABEL_20:

    OUTLINED_FUNCTION_9_79();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    OUTLINED_FUNCTION_1_137();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    goto LABEL_8;
  }

  v55 = v105;
  (*(v105 + 32))(v101, v49 + v48, v36);
  OUTLINED_FUNCTION_4_121();
  _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v56, v57);
  OUTLINED_FUNCTION_153_2();
  LODWORD(v107) = dispatch thunk of static Equatable.== infix(_:_:)();
  v58 = *(v55 + 8);
  v59 = OUTLINED_FUNCTION_138_2();
  v58(v59);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v47, &_s10Foundation4UUIDVSgMd);
  (v58)(v51, v36);
  v60 = OUTLINED_FUNCTION_244_1();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v60, v61);
  v50 = v95;
  if ((v107 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_22:
  OUTLINED_FUNCTION_6_94();
  v108 = v0;
  v62 = v96;
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  v63 = v99;
  v64 = v97;
  *&v97[v99[6]] = 0;
  v65 = v64 + v63[11];
  *v65 = 0;
  *(v65 + 8) = 0;
  *(v65 + 16) = 0;
  *(v64 + v63[13]) = 0;
  *(v64 + v63[14]) = 0;
  v66 = (v62 + v63[11]);
  v67 = v66[1];
  v68 = v66[2];
  v69 = v94;
  *v66 = v94;
  v66[1] = v50;
  v66[2] = v38;
  v70 = v69;

  v71 = OUTLINED_FUNCTION_15_14();
  outlined consume of ConversationLink?(v71);
  outlined consume of ConversationLink?(*v65);
  OUTLINED_FUNCTION_2_132();
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
  v111 = v70;
  v112 = v50;
  v113 = v38;
  ConversationLink.displayName.getter();
  if (v72)
  {
    OUTLINED_FUNCTION_7_19();
  }

  else
  {
    v73 = (v100 + *(type metadata accessor for RecentsCallItem(0) + 24));
    v67 = *v73;
    v68 = v73[1];
  }

  v111 = v70;
  v112 = v50;
  v113 = v38;
  ConversationLink.prevailingSuggestion.getter();
  v92 = v38;
  v107 = v70;
  if (v74)
  {
    v75 = v74;
    v76 = SGURL.applicationIcon.getter();
  }

  else
  {
    v76 = 0;
  }

  OUTLINED_FUNCTION_6_94();
  OUTLINED_FUNCTION_179_0();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  v77 = type metadata accessor for RecentsCallItem(0);
  v78 = (v100 + *(v77 + 20));
  v79 = *v78;
  v80 = v78[1];
  v81 = v102;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v93);

  LOBYTE(v89) = 0;
  v88 = v76;
  v85 = v103;
  v86 = OUTLINED_FUNCTION_246_0();
  RecentsCallItem.init(recentsCallMetadata:contacts:title:subtitle:forcedSubtitle:senderIdentity:occurrenceCount:applicationIcon:type:isCommTrustBlocked:)(v86, v87, v79, v80, v67, v68, v67, v68, 0, 0, 0, 0, v88, v81, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
  OUTLINED_FUNCTION_224_0();

  OUTLINED_FUNCTION_9_79();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  OUTLINED_FUNCTION_45_21();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  if (!__swift_getEnumTagSinglePayload(v85, 1, v77))
  {
    OUTLINED_FUNCTION_21_46();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
    v42 = OUTLINED_FUNCTION_66_7();
    goto LABEL_9;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v85, &_s15ConversationKit15RecentsCallItemVSgMd);
LABEL_8:
  type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_10_0();
LABEL_9:
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  OUTLINED_FUNCTION_30_0();
}

void RecentsCallItem.init(recentItem:messageItem:)()
{
  OUTLINED_FUNCTION_29();
  v5 = v4;
  v7 = v6;
  v166 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19RecentsCallItemTypeOSgMd);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_1();
  v153 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4();
  v154 = v14;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_32();
  v149 = v16;
  OUTLINED_FUNCTION_4_24();
  v161 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v156 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v150 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_1();
  v155 = v23;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_1();
  v162 = v25;
  v26 = OUTLINED_FUNCTION_4_24();
  v27 = type metadata accessor for RecentCallRecentItemMetadata(v26);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4();
  v159 = v29;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v152 = v31;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v157 = v33;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v158 = v35;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  v163 = v37;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v148 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit010RecentCallC12ItemMetadataVSgMd);
  v42 = OUTLINED_FUNCTION_22(v41);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_4();
  v151 = v43;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_23_19();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_214();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_224();
  v167 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7_85();
  v168 = v49;
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  v165 = v7;
  RecentsCallItemType.recentCallRecentItemMetadata.getter();
  v164 = v5;
  RecentsCallItemType.recentCallRecentItemMetadata.getter();
  OUTLINED_FUNCTION_153_2();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v50 = OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_115(v50, v51, v27);
  if (v52)
  {
    v3 = v2;
LABEL_7:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit010RecentCallC12ItemMetadataVSgMd);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v53 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v53, static Logger.conversationKit);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v55))
    {
      v56 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v56);
      OUTLINED_FUNCTION_132();
      _os_log_impl(v57, v58, v59, v60, v61, 2u);
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_9_79();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_2_132();
  OUTLINED_FUNCTION_157();
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_115(v3, 1, v27);
  if (v52)
  {
    OUTLINED_FUNCTION_1_137();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_132();
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
  v70 = *(v160 + 48);
  v71 = v162;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v72 = v161;
  OUTLINED_FUNCTION_115(v71, 1, v161);
  if (!v73)
  {
    v74 = v155;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    OUTLINED_FUNCTION_115(v71 + v70, 1, v72);
    if (!v75)
    {
      v85 = v156;
      v86 = v71 + v70;
      v87 = v150;
      v156[4](v150, v86, v72);
      OUTLINED_FUNCTION_4_121();
      _s14GameController19GCButtonElementNameVACSHAAWlTm_1(v88, v89);
      OUTLINED_FUNCTION_244_1();
      LODWORD(v160) = dispatch thunk of static Equatable.== infix(_:_:)();
      v90 = v74;
      v91 = v85[1];
      v91(v87, v72);
      v91(v90, v72);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v162, &_s10Foundation4UUIDVSgMd);
      if (v160)
      {
        goto LABEL_29;
      }

      goto LABEL_23;
    }

    (v156[1])(v74, v72);
LABEL_22:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s10Foundation4UUIDVSg_ADtMd);
LABEL_23:
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v76 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v76, static Logger.conversationKit);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_25(v78))
    {
      v79 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v79);
      OUTLINED_FUNCTION_132();
      _os_log_impl(v80, v81, v82, v83, v84, 2u);
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_9_79();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    OUTLINED_FUNCTION_45_21();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
LABEL_12:
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    OUTLINED_FUNCTION_31_2();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v62, v63);
    v64 = OUTLINED_FUNCTION_309();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v64, v65);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_115(v71 + v70, 1, v72);
  if (!v52)
  {
    goto LABEL_22;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s10Foundation4UUIDVSgMd);
LABEL_29:
  v161 = v1;
  v162 = v0;
  v92 = v157;
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  v93 = v152;
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  v94 = v158;
  *(v158 + v27[6]) = 0;
  v95 = v94 + v27[11];
  *v95 = 0;
  *(v95 + 8) = 0;
  *(v95 + 16) = 0;
  *(v94 + v27[13]) = 0;
  *(v94 + v27[14]) = 0;
  v96 = *(v93 + v27[6]);
  v97 = v96;
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  v98 = v27;
  v99 = v40;
  v100 = v98[6];

  *(v92 + v100) = v96;
  outlined consume of ConversationLink?(*v95);
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
  v160 = v99;
  OUTLINED_FUNCTION_205_2();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  v101 = v159;
  *(v159 + v98[6]) = 0;
  v102 = (v101 + v98[11]);
  *v102 = 0;
  v102[1] = 0;
  v102[2] = 0;
  *(v101 + v98[13]) = 0;
  *(v101 + v98[14]) = 0;
  v103 = *(v93 + v98[13]);
  v104 = v103;
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  v105 = v98[13];

  *(v92 + v105) = v103;
  OUTLINED_FUNCTION_250_0();
  _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
  OUTLINED_FUNCTION_31_2();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v106, v107, v108, v98);
  RecentsCallItemType.recentCallRecentItemMetadata.setter();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v109 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v109, static Logger.conversationKit);
  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.default.getter();
  v112 = OUTLINED_FUNCTION_25(v111);
  v113 = v167;
  if (v112)
  {
    v114 = OUTLINED_FUNCTION_42();
    v115 = OUTLINED_FUNCTION_23();
    v169 = v115;
    *v114 = 136315138;
    swift_beginAccess();
    OUTLINED_FUNCTION_7_85();
    v116 = v149;
    _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v117, v118, v119, v113);
    specialized >> prefix<A>(_:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v116, &_s15ConversationKit15RecentsCallItemVSgMd);
    v120 = OUTLINED_FUNCTION_32_2();
    v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v121, v122);

    *(v114 + 4) = v123;
    OUTLINED_FUNCTION_132();
    _os_log_impl(v124, v125, v126, v127, v128, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v115);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_6_94();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_0_169();
  v129 = v153;
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  type metadata accessor for RecentsCallItemType(0);
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v130, v131, v132, v133);

  LOBYTE(v146) = 0;
  v145 = v129;
  v134 = v154;
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_182_3();
  RecentsCallItem.init(recentsCallMetadata:contacts:title:subtitle:forcedSubtitle:senderIdentity:occurrenceCount:applicationIcon:type:isCommTrustBlocked:)(v135, v136, v137, v138, v139, v140, 0, 0, 0, 0, 0, 0, 0, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158);
  OUTLINED_FUNCTION_9_79();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  OUTLINED_FUNCTION_45_21();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  OUTLINED_FUNCTION_30_20();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v141, v142);
  OUTLINED_FUNCTION_30_20();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v143, v144);
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  if (__swift_getEnumTagSinglePayload(v134, 1, v113))
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v134, &_s15ConversationKit15RecentsCallItemVSgMd);
  }

  else
  {
    OUTLINED_FUNCTION_21_46();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
  }

LABEL_13:
  OUTLINED_FUNCTION_5_116();
  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  OUTLINED_FUNCTION_175_2();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  OUTLINED_FUNCTION_30_0();
}

void RecentsCallItem.hash(into:)()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = type metadata accessor for RecentsCallItem(v2);
  String.hash(into:)();
  RecentsCallItemType.hash(into:)();
  if (*&v1[v3[5] + 8])
  {
    OUTLINED_FUNCTION_166_2();
    OUTLINED_FUNCTION_89_4();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_165_3();
  }

  if (*&v1[v3[6] + 8])
  {
    OUTLINED_FUNCTION_166_2();
    OUTLINED_FUNCTION_89_4();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_165_3();
  }

  if (*&v1[v3[7] + 8])
  {
    OUTLINED_FUNCTION_166_2();
    OUTLINED_FUNCTION_89_4();
    String.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_165_3();
  }

  v4 = *&v1[v3[11]];
  if (v4)
  {
    OUTLINED_FUNCTION_166_2();
    v5 = v4;
    OUTLINED_FUNCTION_28_0();
    NSObject.hash(into:)();
  }

  else
  {
    OUTLINED_FUNCTION_165_3();
  }

  specialized Array<A>.hash(into:)(v0, *&v1[v3[12]]);
  Hasher._combine(_:)(v1[v3[14]]);
  Hasher._combine(_:)(v1[v3[15]]);
  Hasher._combine(_:)(v1[v3[16]]);
}

Swift::Int RecentCallRecentItemMetadata.hashValue.getter(void (*a1)(_BYTE *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RecentCallRecentItemMetadata(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

Swift::Int RecentsCallItem.VideoMessageError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RecentsCallItem.VideoMessageError()
{
  Hasher.init(_seed:)();
  RecentsCallItem.VideoMessageError.hash(into:)();
  return Hasher._finalize()();
}

void RecentsCallItem.saveVideoMessage(_:)()
{
  OUTLINED_FUNCTION_29();
  v53 = v4;
  v54 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_1();
  v51 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_116_3();
  v11 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v50 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_32();
  v52 = v17;
  v18 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for RecentsCallItemType(v18);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6_1();
  v20 = type metadata accessor for RecentCallRecentItemMetadata(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_44_0();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    OUTLINED_FUNCTION_2_132();
    OUTLINED_FUNCTION_244_1();
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
    v22 = *(v1 + *(v20 + 52));
    if (v22)
    {
      v23 = [v22 messageUUID];
      if (v23)
      {
        v24 = v23;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v25 = 0;
      }

      else
      {
        v25 = 1;
      }

      __swift_storeEnumTagSinglePayload(v2, v25, 1, v11);
      outlined init with take of CaptionSectioner.SpeakerSection?();
      v29 = OUTLINED_FUNCTION_44_13();
      OUTLINED_FUNCTION_115(v29, v30, v11);
      if (!v31)
      {
        v33 = v50;
        v49 = *(v50 + 32);
        v34 = OUTLINED_FUNCTION_170_0();
        v35(v34);
        type metadata accessor for MessageStoreController();
        v48 = static MessageStoreController.shared.getter();
        static TaskPriority.userInitiated.getter();
        type metadata accessor for TaskPriority();
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
        OUTLINED_FUNCTION_89_4();
        v40();
        v41 = (*(v33 + 80) + 40) & ~*(v33 + 80);
        v42 = swift_allocObject();
        *(v42 + 2) = 0;
        *(v42 + 3) = 0;
        v43 = v49;
        *(v42 + 4) = v48;
        v43(&v42[v41], &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
        v44 = &v42[(v14 + v41 + 7) & 0xFFFFFFFFFFFFFFF8];
        v45 = v53;
        *v44 = v54;
        v44[1] = v45;

        v46 = OUTLINED_FUNCTION_1_5();
        outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v46);
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

        (*(v33 + 8))(v52, v11);
        OUTLINED_FUNCTION_1_137();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
        goto LABEL_13;
      }
    }

    else
    {
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v11);
    }

    OUTLINED_FUNCTION_1_137();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0, &_s10Foundation4UUIDVSgMd);
  }

  else
  {
    OUTLINED_FUNCTION_3_129();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  }

  if (v54)
  {
    lazy protocol witness table accessor for type RecentsCallItem.VideoMessageError and conformance RecentsCallItem.VideoMessageError();
    v32 = swift_allocError();
    v54(v32, 1);
  }

LABEL_13:
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in RecentsCallItem.saveVideoMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsCallItem.saveVideoMessage(_:), 0, 0);
}

uint64_t closure #1 in RecentsCallItem.saveVideoMessage(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v1 = swift_allocObject();
  *(v0 + 48) = v1;
  *(v1 + 16) = xmmword_1BC4BA940;
  OUTLINED_FUNCTION_30_20();
  v2();
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = closure #1 in RecentsCallItem.saveVideoMessage(_:);

  return MEMORY[0x1EEE03C28](v1);
}

{
  OUTLINED_FUNCTION_24_0();
  *(*v1 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for MainActor();
  *(v0 + 72) = static MainActor.shared.getter();
  OUTLINED_FUNCTION_28_0();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsCallItem.saveVideoMessage(_:), v2, v1);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 32);

  if (v1)
  {
    (*(v0 + 32))(0, 0);
  }

  v2 = *(v0 + 8);

  return v2();
}

{
  OUTLINED_FUNCTION_24_0();

  type metadata accessor for MainActor();
  *(v0 + 80) = static MainActor.shared.getter();
  OUTLINED_FUNCTION_28_0();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsCallItem.saveVideoMessage(_:), v2, v1);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 32);

  if (v1)
  {
    (*(v0 + 32))(*(v0 + 64), 1);
  }

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = *(v0 + 8);

  return v1();
}

void RecentsCallItem.includeOriginalIfCombined(after:)()
{
  OUTLINED_FUNCTION_29();
  v3 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for RecentsCallItemType(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_57();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_23_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_224();
  v8 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_0_169();
  OUTLINED_FUNCTION_170_0();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v12 = *v0;
    ConversationLink.prevailingSuggestion.getter();
    if (v13)
    {
      v14 = v13;
      SGURL.endDate.getter(v2);

      v15 = OUTLINED_FUNCTION_180();
      OUTLINED_FUNCTION_115(v15, v16, v8);
      if (!v17)
      {
        v18 = *(v10 + 32);
        v19 = OUTLINED_FUNCTION_153_2();
        v18(v19);

        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v20, v21, v22, v8);
LABEL_11:
        v26 = OUTLINED_FUNCTION_33_0();
        v18(v26);
        static Date.> infix(_:_:)();
        v27 = OUTLINED_FUNCTION_206();
        v28(v27);
        goto LABEL_12;
      }
    }

    else
    {
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v8);
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s10Foundation4DateVSgMd);
  }

  else
  {
    OUTLINED_FUNCTION_3_129();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  }

  OUTLINED_FUNCTION_162_1();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_115(v1, 1, v8);
  if (!v17)
  {
    v18 = *(v10 + 32);
    goto LABEL_11;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s10Foundation4DateVSgMd);
LABEL_12:
  OUTLINED_FUNCTION_30_0();
}

BOOL RecentsCallItem.shouldDisplayStagingAreaForOngoingCall()()
{
  v0 = type metadata accessor for RecentOngoingConversationMetadata(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for RecentsCallItemType(0);
  MEMORY[0x1EEE9AC00](v3);
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
    v4 = [*&v2[*(v0 + 24)] resolvedAudioVideoMode] == 2;
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  }

  else
  {
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    return 0;
  }

  return v4;
}

id @nonobjc TPMessageIndicatorViewModel.init(duration:identifier:mediaURL:thumbnailURL:transcriptSummary:isRead:isSensitive:isVideo:from:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, char a10, void *a11)
{
  v12 = v11;
  if (a3)
  {
    v19 = MEMORY[0x1BFB209B0]();
  }

  else
  {
    v19 = 0;
  }

  v20 = type metadata accessor for URL();
  v21 = OUTLINED_FUNCTION_44_13();
  v24 = 0;
  if (__swift_getEnumTagSinglePayload(v21, v22, v20) != 1)
  {
    URL._bridgeToObjectiveC()(v23);
    v24 = v25;
    OUTLINED_FUNCTION_2_3();
    (*(v26 + 8))(a4, v20);
  }

  OUTLINED_FUNCTION_115(a5, 1, v20);
  if (v28)
  {
    v30 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v27);
    v30 = v29;
    OUTLINED_FUNCTION_2_3();
    (*(v31 + 8))(a5, v20);
  }

  if (a7)
  {
    v32 = OUTLINED_FUNCTION_2_100();
    v33 = MEMORY[0x1BFB209B0](v32);
  }

  else
  {
    v33 = 0;
  }

  LOBYTE(v36) = a10 & 1;
  v34 = [v12 initWithDuration:v19 identifier:v24 mediaURL:v30 thumbnailURL:v33 transcriptSummary:a8 & 1 isRead:a9 & 1 isSensitive:a1 isVideo:v36 fromHandle:a11];

  return v34;
}

BOOL specialized Set._Variant.insert(_:)(uint64_t a1, Swift::Int a2)
{
  OUTLINED_FUNCTION_245_0();
  Hasher._combine(_:)(a2);
  Hasher._finalize()();
  OUTLINED_FUNCTION_86_5();
  while (1)
  {
    OUTLINED_FUNCTION_178();
    if (v7)
    {
      break;
    }

    if (*(*(v4 + 48) + 4 * v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_128_2();
  v9 = specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v3, v8);
  OUTLINED_FUNCTION_221_0(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19);
LABEL_6:
  result = v5 == 0;
  *v2 = a2;
  return result;
}

BOOL specialized Set._Variant.insert(_:)(uint64_t a1)
{
  v17 = a1;
  v2 = type metadata accessor for ConversationControlsAction();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1;
  v5 = *v1;
  Hasher.init(_seed:)();
  ConversationControlsAction.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      v12 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
      v18 = *v12;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v4, v8, isUniquelyReferenced_nonNull_native);
      *v12 = v18;
      _s15ConversationKit010RecentCallC12ItemMetadataVWObTm_1();
      return v9 == 0;
    }

    _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
    static ConversationControlsAction.== infix(_:_:)();
    v11 = v10;
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
    if (v11)
    {
      break;
    }

    v6 = v8 + 1;
  }

  _s15ConversationKit19RecentsCallItemTypeOWOhTm_4();
  _s15ConversationKit19RecentsCallItemTypeOWOcTm_2();
  return v9 == 0;
}

BOOL specialized Set._Variant.insert(_:)(_OWORD *a1, _OWORD *a2)
{
  v3 = v2;
  v5 = *v2;
  Hasher.init(_seed:)();
  ConversationControlsType.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      outlined init with copy of ConversationControlsType(a2, v16);
      v15 = *v3;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v16, v8, isUniquelyReferenced_nonNull_native);
      *v3 = v15;
      v12 = a2[1];
      *a1 = *a2;
      a1[1] = v12;
      *(a1 + 25) = *(a2 + 25);
      return v9 == 0;
    }

    outlined init with copy of ConversationControlsType(*(v5 + 48) + 48 * v8, v16);
    v10 = static ConversationControlsType.== infix(_:_:)(v16, a2);
    outlined destroy of ConversationControlsType(v16);
    if (v10)
    {
      break;
    }

    v6 = v8 + 1;
  }

  outlined destroy of ConversationControlsType(a2);
  outlined init with copy of ConversationControlsType(*(v5 + 48) + 48 * v8, a1);
  return v9 == 0;
}

void specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_42_4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = *v9;
  if ((*v9 & 0xC000000000000001) == 0)
  {
    type metadata accessor for CoupledHUDActivity(0);
    Hasher.init(_seed:)();
    HUDActivity.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_16_7();
    v20 = ~v19;
    while (1)
    {
      v21 = v18 & v20;
      OUTLINED_FUNCTION_239_1();
      if (((*(v15 + 56 + v22) >> v21) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = *v10;

        specialized _NativeSet.insertNew(_:at:isUnique:)(v29, v21, isUniquelyReferenced_nonNull_native);
        *v10 = v30;
        goto LABEL_16;
      }

      v24 = static HUDActivity.== infix(_:_:)(v23, v12);

      if (v24)
      {
        break;
      }

      v18 = v21 + 1;
    }

    *v14 = *(*(v15 + 48) + 8 * v21);

    goto LABEL_18;
  }

  if (v15 < 0)
  {
    v16 = *v9;
  }

  else
  {
    v16 = v15 & 0xFFFFFFFFFFFFFF8;
  }

  OUTLINED_FUNCTION_4_31();
  v17 = __CocoaSet.member(for:)();

  if (v17)
  {

    type metadata accessor for CoupledHUDActivity(0);
    swift_dynamicCast();
    *v14 = a9;
LABEL_18:
    OUTLINED_FUNCTION_43_6();
    return;
  }

  v25 = __CocoaSet.count.getter();
  if (!__OFADD__(v25, 1))
  {
    v26 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC15ConversationKit18CoupledHUDActivity33_1110C52F52D8EDCF5F7A893547109D29LLC_Tt1g5(v16, v25 + 1);
    if (*(v26 + 24) <= *(v26 + 16))
    {
      specialized _NativeSet.resize(capacity:)();
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v27, v26);

    *v10 = v26;
LABEL_16:
    *v14 = v12;
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a2);
  if (a4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_17:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v4;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, a4, v11, isUniquelyReferenced_nonNull_native);
    *v4 = v23;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v8 + 48);
  while (1)
  {
    v14 = (v13 + 24 * v11);
    if (*v14 != a2)
    {
      goto LABEL_16;
    }

    v15 = *(v14 + 2);
    if (v15)
    {
      break;
    }

    if (!a4)
    {
      goto LABEL_18;
    }

LABEL_16:
    v11 = (v11 + 1) & v12;
    if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (!a4)
  {
    goto LABEL_16;
  }

  v16 = *(v14 + 1) == a3 && v15 == a4;
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_18:

  v19 = *(v8 + 48) + 24 * v11;
  v21 = *(v19 + 8);
  v20 = *(v19 + 16);
  *a1 = *v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v20;

  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationInvitationPreference);
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo34TUConversationInvitationPreferenceC_Tt1g5(v7, result + 1);
        if (*(v16 + 24) <= *(v16 + 16))
        {
          specialized _NativeSet.resize(capacity:)();
        }

        v17 = v8;
        specialized _NativeSet._unsafeInsertNew(_:)();

        *v3 = v16;
LABEL_16:
        *a1 = v17;
        return 1;
      }
    }
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationInvitationPreference);
    v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *v3;
        v17 = a2;
        specialized _NativeSet.insertNew(_:at:isUnique:)(v17, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v22;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v19 = *(*(v6 + 48) + 8 * v13);
    *a1 = v19;
    v20 = v19;
    return 0;
  }

  return result;
}

BOOL specialized Set._Variant.insert(_:)(uint64_t a1, unsigned __int8 a2)
{
  OUTLINED_FUNCTION_245_0();
  MEMORY[0x1BFB22640](a2);
  Hasher._finalize()();
  OUTLINED_FUNCTION_86_5();
  while (1)
  {
    OUTLINED_FUNCTION_178();
    if (v7)
    {
      break;
    }

    if (*(*(v4 + 48) + v3) == a2)
    {
      goto LABEL_6;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_128_2();
  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v3, v8);
  OUTLINED_FUNCTION_221_0(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19);
LABEL_6:
  result = v5 == 0;
  *v2 = a2;
  return result;
}

BOOL specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = MEMORY[0x1BFB22620](*(v6 + 40));
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v9, isUniquelyReferenced_nonNull_native);
  *v3 = v13;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a2);
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      break;
    }

    if (*(*(v5 + 48) + 8 * v8) == a2)
    {
      goto LABEL_6;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
  *v2 = v12;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}