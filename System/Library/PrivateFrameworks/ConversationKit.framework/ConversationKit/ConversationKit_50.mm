uint64_t ScreenSharingInteractionSession.resumeRemoteControlSession()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_116_0();
  v17 = v15[7];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v18 = *(v17 + 144);
  os_unfair_lock_lock((v18 + 24));
  v19 = *(v18 + 16);
  v15[14] = v19;
  OUTLINED_FUNCTION_177_2();
  if ((v19 >> 61) < 4)
  {
    goto LABEL_2;
  }

  if (v19 >> 61 != 4)
  {
    goto LABEL_3;
  }

  v16 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (v16 >> 61 != 3)
  {
LABEL_2:
    outlined consume of RemoteControlState(v19);
LABEL_3:
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_162();
      swift_once();
    }

    v20 = OUTLINED_FUNCTION_190_0();
    OUTLINED_FUNCTION_50_17(v20, &static Log.screenSharing);

    v21 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    OUTLINED_FUNCTION_72_12();

    if (OUTLINED_FUNCTION_112_2())
    {
      OUTLINED_FUNCTION_13_10();
      swift_slowAlloc();
      OUTLINED_FUNCTION_21_4();
      OUTLINED_FUNCTION_89_3();
      *v14 = 136315138;
      v22 = *(v17 + 144);
      os_unfair_lock_lock(v22 + 6);
      OUTLINED_FUNCTION_46_19();
      v15[5] = v16;
      v23 = String.init<A>(reflecting:)();
      OUTLINED_FUNCTION_161_1(v23, v24, v25, v26, v27);
      OUTLINED_FUNCTION_102_1();
      *(v14 + 4) = v22;
      OUTLINED_FUNCTION_112_0();
      _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
      OUTLINED_FUNCTION_9_7();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    OUTLINED_FUNCTION_162_0();

    OUTLINED_FUNCTION_5_102();
    OUTLINED_FUNCTION_79_9();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
  }

  v42 = v15[12];
  v43 = v15[13];
  v44 = v15[10];
  v45 = v15[11];
  v46 = v15[7];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestV_15GroupActivities11ParticipantVtMd);
  v48 = swift_projectBox();
  v49 = *(v47 + 48);
  OUTLINED_FUNCTION_2_126();
  outlined init with copy of RemoteControlMessage(v50, v43);
  (*(v45 + 16))(v42, v48 + v49, v44);
  if (*(v46 + 112))
  {

    AnyCancellable.cancel()();
  }

  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v51 = OUTLINED_FUNCTION_190_0();
  OUTLINED_FUNCTION_50_17(v51, &static Log.screenSharing);

  v52 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_72_12();

  if (OUTLINED_FUNCTION_112_2())
  {
    OUTLINED_FUNCTION_13_10();
    swift_slowAlloc();
    OUTLINED_FUNCTION_21_4();
    OUTLINED_FUNCTION_89_3();
    *v44 = 136315138;
    v53 = *(v17 + 144);
    os_unfair_lock_lock(v53 + 6);
    OUTLINED_FUNCTION_46_19();
    v15[6] = v48;
    v54 = String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_161_1(v54, v55, v56, v57, v58);
    OUTLINED_FUNCTION_102_1();
    *(v44 + 4) = v53;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v59, v60, v61, v62, v63, 0xCu);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  v64 = v15[9];
  OUTLINED_FUNCTION_2_126();
  outlined init with copy of RemoteControlMessage(v65, v64);
  OUTLINED_FUNCTION_38_2();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_57_8();
  v76 = v66 + 568;
  v77 = *(v66 + 568) + **(v66 + 568);
  v67 = swift_task_alloc();
  v15[15] = v67;
  *v67 = v15;
  v67[1] = ScreenSharingInteractionSession.resumeRemoteControlSession();
  OUTLINED_FUNCTION_71_10(v15[9]);
  OUTLINED_FUNCTION_79_9();

  return v70(v68, v69, v70, v71, v72, v73, v74, v75, a9, v76, v77, a12, a13, a14);
}

void ScreenSharingInteractionSession.handleRemoteControlMessage(_:from:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v84 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_1();
  v91 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlMessageOSgMd);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_1();
  v98 = v14;
  OUTLINED_FUNCTION_4_24();
  v99 = type metadata accessor for Participant();
  OUTLINED_FUNCTION_1();
  v96 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v95 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v84 - v20;
  v97 = type metadata accessor for RemoteControlMessage(0);
  OUTLINED_FUNCTION_1();
  v93 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  v94 = &v84 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v84 - v29;
  if (FTServerBag.remoteControlEnabled.getter())
  {
    v90 = v8;
    OUTLINED_FUNCTION_142_1();
    swift_beginAccess();
    v92 = v4;
    RemoteControlStateMachine.validateIncomingMessage(_:from:)();
    v36 = v2;
    v88 = v0;
    swift_endAccess();
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_162();
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v37, &static Log.screenSharing);
    OUTLINED_FUNCTION_4_116();
    v38 = v92;
    outlined init with copy of RemoteControlMessage(v92, v30);
    v39 = v96;
    v40 = v99;
    v89 = *(v96 + 16);
    v89(v21, v36, v99);
    v41 = Logger.logObject.getter();
    HIDWORD(v87) = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(BYTE4(v87)))
    {
      v42 = OUTLINED_FUNCTION_30_1();
      v84 = v41;
      v43 = v42;
      v85 = OUTLINED_FUNCTION_29_7();
      v100 = v85;
      *v43 = 136315394;
      OUTLINED_FUNCTION_4_116();
      v86 = v36;
      v44 = v98;
      outlined init with copy of RemoteControlMessage(v30, v98);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v97);
      specialized >> prefix<A>(_:)();
      v49 = v48;
      v51 = v50;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v44, &_s15ConversationKit20RemoteControlMessageOSgMd);
      OUTLINED_FUNCTION_1_131();
      outlined destroy of RemoteControlMessage(v30, v52);
      v53 = v49;
      v40 = v99;
      v54 = v39;
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v51, &v100);

      *(v43 + 4) = v55;
      *(v43 + 12) = 2080;
      v56 = v91;
      v89(v91, v21, v40);
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v40);
      specialized >> prefix<A>(_:)(v56, v60, v61, v62, v63, v64, v65, v66, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
      v67 = v56;
      v36 = v86;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v67, &_s15GroupActivities11ParticipantVSgMd);
      (*(v54 + 8))(v21, v40);
      v68 = OUTLINED_FUNCTION_316();
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, v70);

      *(v43 + 14) = v71;
      v38 = v92;
      v72 = v84;
      _os_log_impl(&dword_1BBC58000, v84, BYTE4(v87), "Handling remote control message: %s from participant: %s", v43, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    else
    {

      (*(v39 + 8))(v21, v40);
      OUTLINED_FUNCTION_1_131();
      outlined destroy of RemoteControlMessage(v30, v73);
      v54 = v39;
    }

    v74 = v90;
    v75 = type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_168(v74, v76, v77, v75);
    OUTLINED_FUNCTION_4_116();
    v78 = v94;
    outlined init with copy of RemoteControlMessage(v38, v94);
    v79 = v95;
    v89(v95, v36, v40);
    v80 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v81 = (v24 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
    v82 = (*(v54 + 80) + v81 + 8) & ~*(v54 + 80);
    v83 = swift_allocObject();
    *(v83 + 16) = 0;
    *(v83 + 24) = 0;
    outlined init with take of RemoteControlResponse(v78, v83 + v80);
    *(v83 + v81) = v88;
    (*(v54 + 32))(v83 + v82, v79, v40);

    OUTLINED_FUNCTION_59();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_162();
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v31, &static Log.screenSharing);
    v99 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v99, v32))
    {
      v33 = OUTLINED_FUNCTION_33();
      *v33 = 0;
      _os_log_impl(&dword_1BBC58000, v99, v32, "Dropping incoming message due to server bag disabling the feature", v33, 2u);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    OUTLINED_FUNCTION_30_0();
  }
}

uint64_t closure #1 in ScreenSharingInteractionSession.handleRemoteControlMessage(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  type metadata accessor for RemoteControlResponse(0);
  v6[8] = swift_task_alloc();
  type metadata accessor for RemoteControlRequest(0);
  v6[9] = swift_task_alloc();
  v6[10] = type metadata accessor for RemoteControlMessage(0);
  v6[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in ScreenSharingInteractionSession.handleRemoteControlMessage(_:from:), 0, 0);
}

uint64_t closure #1 in ScreenSharingInteractionSession.handleRemoteControlMessage(_:from:)()
{
  OUTLINED_FUNCTION_24_0();
  v1 = v0[11];
  OUTLINED_FUNCTION_4_116();
  outlined init with copy of RemoteControlMessage(v2, v1);
  OUTLINED_FUNCTION_38_2();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_73_9();
      outlined init with take of RemoteControlResponse(v10, v11);
      v12 = swift_task_alloc();
      v0[13] = v12;
      *v12 = v0;
      v12[1] = closure #1 in ScreenSharingInteractionSession.handleRemoteControlMessage(_:from:);
      OUTLINED_FUNCTION_71_10(v0[8]);

      result = ScreenSharingInteractionSession.handleRemoteControlResponse(_:)();
      break;
    case 2u:
      v8 = swift_task_alloc();
      v0[14] = v8;
      *v8 = v0;
      v8[1] = closure #1 in ScreenSharingInteractionSession.handleRemoteControlMessage(_:from:);

      result = ScreenSharingInteractionSession.handleRemoteControlCancellation()();
      break;
    case 3u:
      v9 = swift_task_alloc();
      v0[15] = v9;
      *v9 = v0;
      v9[1] = closure #1 in ScreenSharingInteractionSession.handleRemoteControlMessage(_:from:);

      result = ScreenSharingInteractionSession.handleRemoteControlSessionEnded()();
      break;
    case 4u:
      v7 = swift_task_alloc();
      v0[16] = v7;
      *v7 = v0;
      OUTLINED_FUNCTION_130(v7);

      result = ScreenSharingInteractionSession.handleRemoteControlSuspended()();
      break;
    case 5u:
      v13 = swift_task_alloc();
      v14 = OUTLINED_FUNCTION_119_2(v13);
      *v14 = v15;
      OUTLINED_FUNCTION_130(v14);

      result = ScreenSharingInteractionSession.handleRemoteControlResumed()();
      break;
    case 6u:

      OUTLINED_FUNCTION_13();

      result = v16();
      break;
    default:
      OUTLINED_FUNCTION_28_40();
      outlined init with take of RemoteControlResponse(v3, v4);
      v5 = swift_task_alloc();
      v0[12] = v5;
      *v5 = v0;
      v5[1] = closure #1 in ScreenSharingInteractionSession.handleRemoteControlMessage(_:from:);
      OUTLINED_FUNCTION_71_10(v0[9]);

      result = ScreenSharingInteractionSession.handleRemoteControlRequest(_:from:)();
      break;
  }

  return result;
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void closure #1 in ScreenSharingInteractionSession.handleRemoteControlMessage(_:from:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_3_123();
  outlined destroy of RemoteControlMessage(v0, v1);
  Strong = swift_unknownObjectUnownedLoadStrong();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_159_1();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_59_9(v3, v4, v5, v6, v7, v8, v9, v10, v21, v23);

  OUTLINED_FUNCTION_160_1(v11, v12, v13, v14, v15, v16, v17, v18, v22, v24);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_183_1();

  __asm { BRAA            X1, X16 }
}

{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_5_108();
  outlined destroy of RemoteControlMessage(v0, v1);
  Strong = swift_unknownObjectUnownedLoadStrong();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_159_1();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_59_9(v3, v4, v5, v6, v7, v8, v9, v10, v21, v23);

  OUTLINED_FUNCTION_160_1(v11, v12, v13, v14, v15, v16, v17, v18, v22, v24);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_183_1();

  __asm { BRAA            X1, X16 }
}

{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_1_131();
  outlined destroy of RemoteControlMessage(v0, v1);
  Strong = swift_unknownObjectUnownedLoadStrong();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_159_1();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_59_9(v3, v4, v5, v6, v7, v8, v9, v10, v21, v23);

  OUTLINED_FUNCTION_160_1(v11, v12, v13, v14, v15, v16, v17, v18, v22, v24);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_183_1();

  __asm { BRAA            X1, X16 }
}

uint64_t ScreenSharingInteractionSession.handleRemoteControlRequest(_:from:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v3;
  v4 = type metadata accessor for RemoteControlMessage(0);
  v1[17] = v4;
  OUTLINED_FUNCTION_22(v4);
  v1[18] = OUTLINED_FUNCTION_109_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21RemoteControlResponseVSgMd);
  OUTLINED_FUNCTION_22(v5);
  v1[19] = OUTLINED_FUNCTION_109_4();
  v6 = type metadata accessor for RemoteControlResponse(0);
  v1[20] = v6;
  OUTLINED_FUNCTION_22(v6);
  v1[21] = OUTLINED_FUNCTION_74();
  v1[22] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit20RemoteControlRequestVSgMd);
  OUTLINED_FUNCTION_22(v7);
  v1[23] = OUTLINED_FUNCTION_109_4();
  v8 = type metadata accessor for RemoteControlRequest(0);
  v1[24] = v8;
  OUTLINED_FUNCTION_22(v8);
  v1[25] = OUTLINED_FUNCTION_109_4();
  v9 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 224);

  v1(v0 + 64);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0 + 64, &_s15ConversationKit0A12ControlsTypeOSgMd);
  v2 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v7 = v6;
  *(v8 + 264) = v0;

  OUTLINED_FUNCTION_1_131();
  outlined destroy of RemoteControlMessage(v5, v9);
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_5_108();
  outlined destroy of RemoteControlMessage(v1, v2);
  if (*(v0[16] + 56))
  {

    ScreenSharingInteractionTelemetryConsumer.handleRemoteControlRequestAutomaticallyDeclined()();
  }

  OUTLINED_FUNCTION_163_0();
  v3 += 704;
  v0[34] = *v3;
  v0[35] = v3 & 0xFFFFFFFFFFFFLL | 0x31C4000000000000;
  type metadata accessor for MainActor();
  v0[36] = OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_21_1();
  v4 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 272);

  v1(v0 + 16);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0 + 16, &_s15ConversationKit0A12ControlsTypeOSgMd);
  v2 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5_108();
  outlined destroy of RemoteControlMessage(v1, v2);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  v5 = OUTLINED_FUNCTION_163(v4);
  v6 = v0[33];
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_182_0(v7);
    OUTLINED_FUNCTION_140();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  if (*(v0[16] + 56))
  {

    ScreenSharingInteractionTelemetryConsumer.handleRemoteControlRequestAutomaticallyDeclined()();
  }

  OUTLINED_FUNCTION_163_0();
  v13 += 704;
  v0[34] = *v13;
  v0[35] = v13 & 0xFFFFFFFFFFFFLL | 0x31C4000000000000;
  type metadata accessor for MainActor();
  v0[36] = OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_21_1();
  v14 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t ScreenSharingInteractionSession.handleRemoteControlRequest(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_116_0();
  v16 = *(v14 + 128);
  v17 = *(v16 + 56);
  if (v17)
  {
    v18 = *(v17 + 40);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      __break(1u);
      goto LABEL_23;
    }

    *(v17 + 40) = v20;
    v16 = *(v14 + 128);
  }

  v21 = [objc_allocWithZone(MEMORY[0x1E69D8B00]) initWithContactsDataSource_];
  *(v14 + 208) = v21;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  Participant.handle.getter();
  v22 = TUHandle.init(destinationID:)();
  *(v14 + 216) = v22;
  if ([v21 isHandleEligibleForScreenSharingRequests_])
  {
    if (one-time initialization token for screenSharing == -1)
    {
LABEL_6:
      v23 = type metadata accessor for Logger();
      v24 = __swift_project_value_buffer(v23, &static Log.screenSharing);
      OUTLINED_FUNCTION_2_126();
      v25 = OUTLINED_FUNCTION_46();
      outlined init with copy of RemoteControlMessage(v25, v26);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      v29 = OUTLINED_FUNCTION_22_0(v28);
      v30 = *(v14 + 200);
      if (v29)
      {
        v31 = *(v14 + 184);
        OUTLINED_FUNCTION_13_10();
        swift_slowAlloc();
        OUTLINED_FUNCTION_21_4();
        OUTLINED_FUNCTION_89_3();
        *v24 = 136315138;
        OUTLINED_FUNCTION_2_126();
        OUTLINED_FUNCTION_145_2();
        OUTLINED_FUNCTION_15_47();
        specialized >> prefix<A>(_:)();
        OUTLINED_FUNCTION_29_13();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v31, &_s15ConversationKit20RemoteControlRequestVSgMd);
        OUTLINED_FUNCTION_3_123();
        outlined destroy of RemoteControlMessage(v30, v32);
        v33 = OUTLINED_FUNCTION_21_20();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v35);
        OUTLINED_FUNCTION_146_0();
        *(v24 + 4) = v30;
        OUTLINED_FUNCTION_112_0();
        _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
      }

      else
      {

        OUTLINED_FUNCTION_3_123();
        outlined destroy of RemoteControlMessage(v30, v66);
      }

      v67 = *(v14 + 128);
      *(v14 + 64) = Participant.displayName.getter();
      *(v14 + 72) = v68;
      *(v14 + 104) = 4;
      v69 = *v67;
      *(v14 + 224) = *(*v67 + 704);
      *(v14 + 232) = (v69 + 704) & 0xFFFFFFFFFFFFLL | 0x31C4000000000000;
      type metadata accessor for MainActor();
      *(v14 + 240) = OUTLINED_FUNCTION_79_1();
      OUTLINED_FUNCTION_28_0();
      dispatch thunk of Actor.unownedExecutor.getter();
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_79_9();

      return MEMORY[0x1EEE6DFA0](v70, v71, v72);
    }

LABEL_23:
    OUTLINED_FUNCTION_0_162();
    swift_once();
    goto LABEL_6;
  }

  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  *(v14 + 248) = OUTLINED_FUNCTION_52(v41, &static Log.screenSharing);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_182_0(v44);
    _os_log_impl(&dword_1BBC58000, v42, v43, "Received remote control request from ineligble contact: sending auto-rejection", v15, 2u);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  v45 = *(v14 + 176);
  v46 = *(v14 + 160);
  v47 = *(v14 + 112);

  UUID.init()();
  v48 = *(v46 + 20);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v49 + 16))(v45 + v48, v47);
  Date.init()();
  *(v45 + *(v46 + 28)) = 0;
  OUTLINED_FUNCTION_6_90();
  v50 = OUTLINED_FUNCTION_316();
  outlined init with copy of RemoteControlMessage(v50, v51);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  v54 = OUTLINED_FUNCTION_22_0(v53);
  v55 = *(v14 + 168);
  if (v54)
  {
    v56 = *(v14 + 152);
    OUTLINED_FUNCTION_13_10();
    swift_slowAlloc();
    OUTLINED_FUNCTION_21_4();
    OUTLINED_FUNCTION_89_3();
    *v45 = 136315138;
    OUTLINED_FUNCTION_6_90();
    OUTLINED_FUNCTION_145_2();
    OUTLINED_FUNCTION_15_47();
    specialized >> prefix<A>(_:)();
    OUTLINED_FUNCTION_29_13();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v56, &_s15ConversationKit21RemoteControlResponseVSgMd);
    OUTLINED_FUNCTION_5_108();
    outlined destroy of RemoteControlMessage(v55, v57);
    v58 = OUTLINED_FUNCTION_21_20();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v60);
    OUTLINED_FUNCTION_146_0();
    *(v45 + 4) = v55;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v61, v62, v63, v64, v65, 0xCu);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  else
  {

    OUTLINED_FUNCTION_5_108();
    outlined destroy of RemoteControlMessage(v55, v74);
  }

  v75 = *(v14 + 144);
  OUTLINED_FUNCTION_6_90();
  outlined init with copy of RemoteControlMessage(v76, v75);
  OUTLINED_FUNCTION_38_2();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_57_8();
  v88 = v77 + 568;
  v89 = *(v77 + 568) + **(v77 + 568);
  v78 = swift_task_alloc();
  *(v14 + 256) = v78;
  *v78 = v14;
  v78[1] = ScreenSharingInteractionSession.handleRemoteControlRequest(_:from:);
  OUTLINED_FUNCTION_71_10(*(v14 + 144));
  OUTLINED_FUNCTION_79_9();

  return v81(v79, v80, v81, v82, v83, v84, v85, v86, a9, v88, v89, a12, a13, a14);
}

uint64_t ScreenSharingInteractionSession.handleRemoteControlRequest(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_48();
  v11 = *(v10 + 208);

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_69();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t ScreenSharingInteractionSession.handleRemoteControlResponse(_:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21RemoteControlResponseVSgMd);
  OUTLINED_FUNCTION_22(v3);
  v1[4] = OUTLINED_FUNCTION_109_4();
  v4 = type metadata accessor for RemoteControlResponse(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_22(v4);
  v1[6] = OUTLINED_FUNCTION_109_4();
  v5 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_23_1();
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v2 = __swift_project_value_buffer(v1, &static Log.screenSharing);
  OUTLINED_FUNCTION_6_90();
  v3 = OUTLINED_FUNCTION_46();
  outlined init with copy of RemoteControlMessage(v3, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = OUTLINED_FUNCTION_22_0(v6);
  v8 = v0[6];
  if (v7)
  {
    v9 = v0[4];
    OUTLINED_FUNCTION_13_10();
    swift_slowAlloc();
    OUTLINED_FUNCTION_21_4();
    *v2 = 136315138;
    OUTLINED_FUNCTION_6_90();
    OUTLINED_FUNCTION_145_2();
    OUTLINED_FUNCTION_15_47();
    specialized >> prefix<A>(_:)();
    OUTLINED_FUNCTION_29_13();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit21RemoteControlResponseVSgMd);
    OUTLINED_FUNCTION_5_108();
    outlined destroy of RemoteControlMessage(v8, v10);
    v11 = OUTLINED_FUNCTION_21_20();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v13);
    OUTLINED_FUNCTION_146_0();
    *(v2 + 4) = v8;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  else
  {

    OUTLINED_FUNCTION_5_108();
    outlined destroy of RemoteControlMessage(v8, v19);
  }

  v20 = swift_task_alloc();
  v0[7] = v20;
  *v20 = v0;
  v20[1] = ScreenSharingInteractionSession.handleRemoteControlResponse(_:);

  return ScreenSharingInteractionSession.updateInteractionState()();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t ScreenSharingInteractionSession.handleRemoteControlCancellation()()
{
  *(v1 + 64) = v0;
  return OUTLINED_FUNCTION_7_82(ScreenSharingInteractionSession.handleRemoteControlCancellation());
}

{
  OUTLINED_FUNCTION_9();
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v1, &static Log.screenSharing);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_22_0(v3))
  {
    v4 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v4);
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  v10 = *(v0 + 64);

  *(v0 + 56) = -1;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v11 = *v10;
  *(v0 + 72) = *(*v10 + 704);
  *(v0 + 80) = (v11 + 704) & 0xFFFFFFFFFFFFLL | 0x31C4000000000000;
  type metadata accessor for MainActor();
  *(v0 + 88) = OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_21_1();
  v12 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 72);

  v1(v0 + 16);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0 + 16, &_s15ConversationKit0A12ControlsTypeOSgMd);
  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t ScreenSharingInteractionSession.handleRemoteControlSessionEnded()()
{
  OUTLINED_FUNCTION_24_0();
  *(v1 + 64) = v0;
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_130(v2);

  return ScreenSharingInteractionSession.updateInteractionState()();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_9();
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v1, &static Log.screenSharing);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_22_0(v3))
  {
    v4 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v4);
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  v10 = *(v0 + 64);

  *(v0 + 56) = -1;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v11 = *v10;
  *(v0 + 80) = *(*v10 + 704);
  *(v0 + 88) = (v11 + 704) & 0xFFFFFFFFFFFFLL | 0x31C4000000000000;
  type metadata accessor for MainActor();
  *(v0 + 96) = OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_28_0();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_21_1();
  v12 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 80);

  v1(v0 + 16);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0 + 16, &_s15ConversationKit0A12ControlsTypeOSgMd);
  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t ScreenSharingInteractionSession.handleRemoteControlSuspended()()
{
  return OUTLINED_FUNCTION_7_82(ScreenSharingInteractionSession.handleRemoteControlSuspended());
}

{
  OUTLINED_FUNCTION_9();
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v0, &static Log.screenSharing);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_22_0(v2))
  {
    v3 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v3);
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  OUTLINED_FUNCTION_13();

  return v9();
}

uint64_t ScreenSharingInteractionSession.handleRemoteControlResumed()()
{
  return OUTLINED_FUNCTION_7_82(ScreenSharingInteractionSession.handleRemoteControlResumed());
}

{
  OUTLINED_FUNCTION_9();
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v0, &static Log.screenSharing);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_22_0(v2))
  {
    v3 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v3);
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  OUTLINED_FUNCTION_13();

  return v9();
}

uint64_t ScreenSharingInteractionSession.observeInteractionState()()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy16ScreenSharingKit16InteractionStateO_GMd);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_38_4();
  result = (*(v7 + 288))();
  if (result)
  {
    PlaybackServer.$interactionState.getter();
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_6_10();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v9, v10);
    v11 = Publisher<>.sink(receiveValue:)();

    (*(v5 + 8))(v1, v3);
    *(v2 + 128) = v11;
  }

  return result;
}

uint64_t closure #1 in ScreenSharingInteractionSession.observeInteractionState()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v16 - v1;
  v3 = type metadata accessor for InteractionState();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    (*(v4 + 104))(v6, *MEMORY[0x1E69C9D48], v3);
    v9 = static InteractionState.== infix(_:_:)();
    (*(v4 + 8))(v6, v3);
    if (v9)
    {
      if (one-time initialization token for screenSharing != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, &static Log.screenSharing);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1BBC58000, v11, v12, "Suspending remote control due to local device activity", v13, 2u);
        MEMORY[0x1BFB23DF0](v13, -1, -1);
      }

      v14 = type metadata accessor for TaskPriority();
      __swift_storeEnumTagSinglePayload(v2, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v8;
      _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in ScreenSharingInteractionSession.observeInteractionState()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = 1;
  v7 = (*(*a4 + 600) + **(*a4 + 600));
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = closure #1 in closure #1 in ScreenSharingInteractionSession.observeInteractionState();

  return v7(v4 + 32);
}

uint64_t closure #1 in closure #1 in ScreenSharingInteractionSession.observeInteractionState()()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_5_6();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_13();
  return v0();
}

void ScreenSharingInteractionSession.observeDisplayLayerVisibility()()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  OUTLINED_FUNCTION_0_1();
  v27 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_34();
  v26 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  OUTLINED_FUNCTION_0_1();
  (*(v16 + 128))(v17);
  v18 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_168(v1, v19, v20, v18);
  OUTLINED_FUNCTION_20();
  v21 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v12, v15, v6);
  v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v8 + 32))(v24 + v22, v12, v6);
  *(v24 + v23) = v21;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;
  OUTLINED_FUNCTION_59();
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for AnyCancellable();
  OUTLINED_FUNCTION_84();
  v25 = AnyCancellable.init(_:)();
  (*(v8 + 8))(v15, v6);
  *(v2 + 104) = v25;

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in ScreenSharingInteractionSession.observeDisplayLayerVisibility()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in ScreenSharingInteractionSession.observeDisplayLayerVisibility(), 0, 0);
}

uint64_t closure #1 in ScreenSharingInteractionSession.observeDisplayLayerVisibility()()
{
  OUTLINED_FUNCTION_24_0();
  static Clock<>.continuous.getter();
  v0 = OUTLINED_FUNCTION_16_11();
  v1 = OUTLINED_FUNCTION_119_2(v0);
  *v1 = v2;
  v1[1] = closure #1 in ScreenSharingInteractionSession.observeDisplayLayerVisibility();
  OUTLINED_FUNCTION_71_10(2000000000000000000);
  OUTLINED_FUNCTION_3_0();

  return v4();
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v6 + 144) = v0;

  v7 = OUTLINED_FUNCTION_44_0();
  v8(v7);
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_172_0();
  v1 = OUTLINED_FUNCTION_43_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_6_10();
  v4 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v3, &_s7Combine9PublishedV9PublisherVySb_GMd);
  MEMORY[0x1BFB1DE80](v2, v4);
  OUTLINED_FUNCTION_90_5();
  AsyncPublisher.makeAsyncIterator()();
  v5 = OUTLINED_FUNCTION_316();
  v6(v5);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 152) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_21_43(v7);
  OUTLINED_FUNCTION_17_3();

  return MEMORY[0x1EEE6D8C8](v9);
}

{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  *(v0 + 194) = *(v0 + 192);
  return OUTLINED_FUNCTION_7_82(closure #1 in ScreenSharingInteractionSession.observeDisplayLayerVisibility());
}

{
  OUTLINED_FUNCTION_44();
  if (*(v0 + 194) == 2 || (Strong = swift_weakLoadStrong(), (*(v0 + 168) = Strong) == 0))
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    OUTLINED_FUNCTION_5_102();
    OUTLINED_FUNCTION_183_1();

    __asm { BRAA            X1, X16 }
  }

  if (*(v0 + 194))
  {
    if (one-time initialization token for screenSharing != -1)
    {
      OUTLINED_FUNCTION_0_162();
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v2, &static Log.screenSharing);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v4))
    {
      v5 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_182_0(v5);
      OUTLINED_FUNCTION_140();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    *(v0 + 193) = 2;
    v11 = swift_task_alloc();
    *(v0 + 176) = v11;
    *v11 = v0;
    OUTLINED_FUNCTION_130(v11);
    OUTLINED_FUNCTION_183_1();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 152) = v16;
  *v16 = v17;
  OUTLINED_FUNCTION_21_43();
  OUTLINED_FUNCTION_183_1();

  return MEMORY[0x1EEE6D8C8](v18);
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 40) = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v1 = MEMORY[0x1E69E73E0];
  v2 = OUTLINED_FUNCTION_31_9();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 152) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_21_43();

  return MEMORY[0x1EEE6D8C8](v3);
}

{
  OUTLINED_FUNCTION_9();

  v0 = OUTLINED_FUNCTION_38_2();
  v1(v0);

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t ScreenSharingInteractionSession.updateInteractionState()()
{
  OUTLINED_FUNCTION_24_0();
  v1[6] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16ScreenSharingKit16InteractionStateOSgMd);
  OUTLINED_FUNCTION_22(v2);
  v1[7] = OUTLINED_FUNCTION_109_4();
  v3 = type metadata accessor for InteractionState();
  v1[8] = v3;
  OUTLINED_FUNCTION_9_0(v3);
  v1[9] = v4;
  v1[10] = OUTLINED_FUNCTION_74();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_1();
  v2 = (*(v1 + 288))();
  *(v0 + 112) = v2;
  if (v2)
  {
    type metadata accessor for MainActor();
    *(v0 + 120) = OUTLINED_FUNCTION_79_1();
    OUTLINED_FUNCTION_28_0();
    dispatch thunk of Actor.unownedExecutor.getter();
    OUTLINED_FUNCTION_21_1();
    v3 = OUTLINED_FUNCTION_1_4();

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_155_0();

    OUTLINED_FUNCTION_13();

    return v6();
  }
}

{
  OUTLINED_FUNCTION_24_0();

  PlaybackServer.interactionState.getter();
  v0 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[8];

  v4 = OUTLINED_FUNCTION_44_0();
  v1(v4);
  (v1)(v2, v3);
  OUTLINED_FUNCTION_155_0();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_319();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t ScreenSharingInteractionSession.updateInteractionState()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_86_2();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_48();
  a16 = v18;
  v21 = v18[19];
  v22 = v18[17];
  v23 = v18[13];
  v24 = v18[8];
  v25 = v18[9] + 8;

  v26 = OUTLINED_FUNCTION_32_2();
  v22(v26);
  (v22)(v23, v24);
  v27 = v21;
  v28 = Logger.logObject.getter();
  LOBYTE(v23) = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v23))
  {
    v29 = v18[19];
    OUTLINED_FUNCTION_13_10();
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_0();
    v31 = swift_slowAlloc();
    a9 = v31;
    *v30 = 136315138;
    v18[5] = v29;
    v32 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v33 = String.init<A>(reflecting:)();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &a9);
    OUTLINED_FUNCTION_420();
    *(v30 + 4) = v25;
    OUTLINED_FUNCTION_140();
    _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  else
  {
    v40 = v18[19];
  }

  OUTLINED_FUNCTION_155_0();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_69();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
}

uint64_t RemoteControlState.interactionState(displayScale:)@<X0>(double a1@<X0>, char a2@<W1>, double *a3@<X8>)
{
  v5 = 1 << (*v3 >> 61);
  if ((v5 & 0x23) != 0)
  {
    if (a2)
    {
      a1 = 1.0;
    }

    *a3 = a1;
    v7 = MEMORY[0x1E69C9D40];
  }

  else if ((v5 & 0xC) != 0)
  {
    v7 = MEMORY[0x1E69C9D50];
  }

  else
  {
    v7 = MEMORY[0x1E69C9D48];
  }

  v8 = *v7;
  type metadata accessor for InteractionState();
  OUTLINED_FUNCTION_7_0();
  v11 = *(v10 + 104);

  return v11(a3, v8, v9);
}

Swift::Void __swiftcall ScreenSharingInteractionSession.handleRemoteControlUserResponse(allowRemoteControl:)(Swift::Bool allowRemoteControl)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16_4();
  v5 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_111_5(v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = v1;
  *(v6 + 40) = allowRemoteControl;

  OUTLINED_FUNCTION_59();
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in ScreenSharingInteractionSession.handleRemoteControlUserResponse(allowRemoteControl:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 184) = a5;
  *(v5 + 48) = a4;
  *(v5 + 56) = type metadata accessor for RemoteControlMessage(0);
  *(v5 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd);
  *(v5 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21RemoteControlResponseVSgMd);
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = type metadata accessor for RemoteControlResponse(0);
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();
  v6 = type metadata accessor for Participant();
  *(v5 + 112) = v6;
  *(v5 + 120) = *(v6 - 8);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  type metadata accessor for RemoteControlRequest(0);
  *(v5 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in ScreenSharingInteractionSession.handleRemoteControlUserResponse(allowRemoteControl:), 0, 0);
}

uint64_t closure #1 in ScreenSharingInteractionSession.handleRemoteControlUserResponse(allowRemoteControl:)()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_1_131();
  outlined destroy of RemoteControlMessage(v5, v9);
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_116_0();
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[13];
  v5 = v0[14];
  OUTLINED_FUNCTION_5_108();
  outlined destroy of RemoteControlMessage(v6, v7);
  v2(v4, v5);
  OUTLINED_FUNCTION_3_123();
  outlined destroy of RemoteControlMessage(v3, v8);
  outlined consume of RemoteControlState(v1);

  OUTLINED_FUNCTION_13();

  return v9();
}

uint64_t closure #1 in ScreenSharingInteractionSession.handleRemoteControlUserResponse(allowRemoteControl:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_48();
  if (*(*(v10 + 48) + 56))
  {
    v11 = *(v10 + 184);

    ScreenSharingInteractionTelemetryConsumer.handleRemoteControlResponse(allowRemoteControl:)(v11);
  }

  v12 = *(v10 + 152);
  v13 = *(v10 + 160);
  v14 = *(v10 + 144);
  OUTLINED_FUNCTION_5_108();
  outlined destroy of RemoteControlMessage(v15, v16);
  v17 = OUTLINED_FUNCTION_316();
  v13(v17);
  OUTLINED_FUNCTION_3_123();
  outlined destroy of RemoteControlMessage(v14, v18);
  outlined consume of RemoteControlState(v12);
  OUTLINED_FUNCTION_152_1();

  OUTLINED_FUNCTION_5_102();
  OUTLINED_FUNCTION_69();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

void ScreenSharingInteractionSession.updateHUDActivity(type:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v44 = v2;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v4 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for HUDActivityManager.BannerUpdate(v4);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  if (one-time initialization token for screenSharing != -1)
  {
    OUTLINED_FUNCTION_0_162();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, &static Log.screenSharing);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_13_10();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_0();
    v13 = swift_slowAlloc();
    *&v49 = v13;
    *v12 = 136315138;
    if (*(v1 + 152))
    {
      *&v47 = *(v1 + 152);
      type metadata accessor for HUDActivity(0);

      v14 = String.init<A>(reflecting:)();
      v16 = v15;
    }

    else
    {
      v14 = 7104878;
      v16 = 0xE300000000000000;
    }

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v49);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1BBC58000, v10, v11, "Ending current HUD activity %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  else
  {
  }

  if (*(v1 + 152))
  {
    OUTLINED_FUNCTION_0_1();
    v19 = *(v18 + 304);

    v19(v20);
  }

  outlined init with copy of Notice?(v44, &v47, &_s15ConversationKit0A12ControlsTypeOSgMd);
  if (v48[24] == 255)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v47, &_s15ConversationKit0A12ControlsTypeOSgMd);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v27);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }
  }

  else
  {
    v49 = v47;
    *v50 = *v48;
    *&v50[9] = *&v48[9];
    outlined init with copy of ConversationControlsType(&v49, &v47);
    if (v48[24] == 5)
    {
      outlined init with copy of ConversationControlsType(&v49, v46);
      UUID.init()();
      OUTLINED_FUNCTION_88_4();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_188_1();
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      OUTLINED_FUNCTION_88_4();
      swift_unknownObjectWeakAssign();
      *(v8 + 65) = 1;
      v21 = OUTLINED_FUNCTION_139_3();
      v22(v21);
      static Date.now.getter();
      v23 = OUTLINED_FUNCTION_44_12();
      v24(v23);
      outlined destroy of ConversationControlsType(v46);
      OUTLINED_FUNCTION_171_0();
    }

    else
    {
      outlined init with copy of ConversationControlsType(&v49, v46);
      UUID.init()();
      OUTLINED_FUNCTION_88_4();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_188_1();
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      OUTLINED_FUNCTION_88_4();
      swift_unknownObjectWeakAssign();
      *(v8 + 65) = 0;
      v28 = OUTLINED_FUNCTION_139_3();
      v29(v28);
      static Date.now.getter();
      v30 = OUTLINED_FUNCTION_44_12();
      v31(v30);
      outlined destroy of ConversationControlsType(v46);
      OUTLINED_FUNCTION_171_0();
      outlined destroy of ConversationControlsType(&v47);
    }

    *(v1 + 152) = (*(*v1 + 712))(v8);

    outlined init with copy of ConversationControlsType(&v49, &v47);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_30_1();
      v45 = OUTLINED_FUNCTION_29_7();
      *v34 = 136315394;
      outlined init with copy of ConversationControlsType(&v47, v46);
      v35 = specialized >> prefix<A>(_:)(v46);
      v37 = v36;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v46, &_s15ConversationKit0A12ControlsTypeOSgMd);
      outlined destroy of ConversationControlsType(&v47);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v45);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v39 = *(v1 + 152);
      if (v39)
      {
        v46[0] = v39;
        type metadata accessor for HUDActivity(0);

        v40 = String.init<A>(reflecting:)();
        v42 = v41;
      }

      else
      {
        v40 = 7104878;
        v42 = 0xE300000000000000;
      }

      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v45);

      *(v34 + 14) = v43;
      _os_log_impl(&dword_1BBC58000, v32, v33, "Created new hud activity for control type %s %s", v34, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    else
    {

      outlined destroy of ConversationControlsType(&v47);
    }

    outlined destroy of RemoteControlMessage(v8, type metadata accessor for HUDActivityManager.BannerUpdate);
    outlined destroy of ConversationControlsType(&v49);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t ScreenSharingInteractionSession.presentBannerUpdate(_:)(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (SBUIIsSystemApertureEnabled())
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    return (*((*MEMORY[0x1E69E7D40] & *static HUDActivityManager.shared) + 0x120))(a1);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    return (*((*MEMORY[0x1E69E7D40] & *static BannerActivityManager.shared) + 0x110))(a1);
  }
}

uint64_t ScreenSharingInteractionSession.deinit()
{

  outlined consume of RemoteControlState(*(v0 + 136));

  swift_unknownObjectUnownedDestroy();
  return v0;
}

uint64_t ScreenSharingInteractionSession.__deallocating_deinit()
{
  ScreenSharingInteractionSession.deinit();

  return swift_deallocClassInstance();
}

unint64_t ScreenSharingInteractionSession.activeControlParticipant.getter@<X0>(char *a1@<X8>)
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v3 = *(v1 + 144);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  outlined copy of RemoteControlState(v4);
  os_unfair_lock_unlock((v3 + 24));
  v5 = v4 >> 61;
  if (v4 >> 61 == 2)
  {
    OUTLINED_FUNCTION_0_1();
    v10 = (*(v11 + 184))();
  }

  else
  {
    if (v5 != 3)
    {
      if (v5 == 4)
      {
        v6 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        result = outlined consume of RemoteControlState(v4);
        if (v6 == 1)
        {
          v8 = 1;
          goto LABEL_13;
        }
      }

      else
      {
        result = outlined consume of RemoteControlState(v4);
      }

      v8 = 0;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_0_1();
    v10 = (*(v9 + 232))();
  }

  v12 = v10;
  result = outlined consume of RemoteControlState(v4);
  if (v12)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

LABEL_13:
  *a1 = v8;
  return result;
}

uint64_t ScreenSharingInteractionSession.validateIncomingMessage(_:from:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_142_1();
  swift_beginAccess();
  a3(a1, a2);
  return swift_endAccess();
}

void *specialized _NativeSet.filter(_:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v59 = *MEMORY[0x1E69E9840];
  v52 = type metadata accessor for UUID();
  v6 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v50 = v38 - v9;
  v49 = type metadata accessor for Participant();
  v10 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = v38 - v13;
  v14 = a1[32];
  v15 = v14 & 0x3F;
  v16 = ((1 << v14) + 63) >> 6;
  v17 = 8 * v16;
  v54 = a2;

  if (v15 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v38[3] = v3;
    v38[1] = v38;
    MEMORY[0x1EEE9AC00](v18);
    v38[2] = v16;
    v39 = v38 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v16, v39);
    v16 = 0;
    v53 = a1;
    v20 = *(a1 + 7);
    a1 += 56;
    v19 = v20;
    v42 = a1;
    v21 = 1 << *(a1 - 24);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v19;
    v40 = 0;
    v41 = (v21 + 63) >> 6;
    v55 = v10;
    v45 = v10 + 8;
    v46 = v10 + 16;
    v44 = (v6 + 8);
    while (v23)
    {
      v58 = (v23 - 1) & v23;
      v24 = __clz(__rbit64(v23)) | (v16 << 6);
      v25 = v55;
LABEL_12:
      v28 = *(v53 + 6);
      v29 = *(v25 + 72);
      v43 = v24;
      v6 = v47;
      v10 = v49;
      (*(v25 + 16))(v47, v28 + v29 * v24, v49);
      v3 = v50;
      Participant.id.getter();
      v30 = v48;
      GroupSession.localParticipant.getter();
      v31 = v51;
      Participant.id.getter();
      v57 = *(v25 + 8);
      v57(v30, v10);
      lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v17 = v52;
      v56 = dispatch thunk of static Equatable.== infix(_:_:)();
      a1 = *v44;
      (*v44)(v31, v17);
      (a1)(v3, v17);
      v57(v6, v10);
      v23 = v58;
      if ((v56 & 1) == 0)
      {
        *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
        if (__OFADD__(v40++, 1))
        {
          __break(1u);
LABEL_16:
          specialized _NativeSet.extractSubset(using:count:)();
          v34 = v33;

          return v34;
        }
      }
    }

    v26 = v16;
    v25 = v55;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v16 >= v41)
      {
        goto LABEL_16;
      }

      v27 = *&v42[8 * v16];
      ++v26;
      if (v27)
      {
        v58 = (v27 - 1) & v27;
        v24 = __clz(__rbit64(v27)) | (v16 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v36 = swift_slowAlloc();
  v37 = v54;

  v34 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy15GroupActivities11ParticipantVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab9VKXEfU_15i12Activities11K5V_TG5AKxSbs5Error_pRi_zRi0_zlyAJIsgndzo_Tf1nc_n0136_s15ConversationKit33ScreenSharingInteractionTransportC4send_11reliabilityy10Foundation4DataV_0cdB025ControlMessageReliabilityOtYaKFSb15irK6VXEfU_0V3Kit0xyZ9TransportCTf1nnc_n(v36, v16, a1, v37);

  MEMORY[0x1BFB23DF0](v36, -1, -1);

  return v34;
}

{
  v3 = v2;
  v59 = *MEMORY[0x1E69E9840];
  v52 = type metadata accessor for UUID();
  v6 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v50 = v38 - v9;
  v49 = type metadata accessor for Participant();
  v10 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = v38 - v13;
  v14 = a1[32];
  v15 = v14 & 0x3F;
  v16 = ((1 << v14) + 63) >> 6;
  v17 = 8 * v16;
  v54 = a2;

  if (v15 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v38[3] = v3;
    v38[1] = v38;
    MEMORY[0x1EEE9AC00](v18);
    v38[2] = v16;
    v39 = v38 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v16, v39);
    v16 = 0;
    v53 = a1;
    v20 = *(a1 + 7);
    a1 += 56;
    v19 = v20;
    v42 = a1;
    v21 = 1 << *(a1 - 24);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v19;
    v40 = 0;
    v41 = (v21 + 63) >> 6;
    v55 = v10;
    v45 = v10 + 8;
    v46 = v10 + 16;
    v44 = (v6 + 8);
    while (v23)
    {
      v58 = (v23 - 1) & v23;
      v24 = __clz(__rbit64(v23)) | (v16 << 6);
      v25 = v55;
LABEL_12:
      v28 = *(v53 + 6);
      v29 = *(v25 + 72);
      v43 = v24;
      v6 = v47;
      v10 = v49;
      (*(v25 + 16))(v47, v28 + v29 * v24, v49);
      v3 = v50;
      Participant.id.getter();
      v30 = v48;
      GroupSession.localParticipant.getter();
      v31 = v51;
      Participant.id.getter();
      v57 = *(v25 + 8);
      v57(v30, v10);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v17 = v52;
      v56 = dispatch thunk of static Equatable.== infix(_:_:)();
      a1 = *v44;
      (*v44)(v31, v17);
      (a1)(v3, v17);
      v57(v6, v10);
      v23 = v58;
      if ((v56 & 1) == 0)
      {
        *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
        if (__OFADD__(v40++, 1))
        {
          __break(1u);
LABEL_16:
          specialized _NativeSet.extractSubset(using:count:)();
          v34 = v33;

          return v34;
        }
      }
    }

    v26 = v16;
    v25 = v55;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v16 >= v41)
      {
        goto LABEL_16;
      }

      v27 = *&v42[8 * v16];
      ++v26;
      if (v27)
      {
        v58 = (v27 - 1) & v27;
        v24 = __clz(__rbit64(v27)) | (v16 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v36 = swift_slowAlloc();
  v37 = v54;

  v34 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy15GroupActivities11ParticipantVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab9VKXEfU_15i12Activities11K5V_TG5AKxSbs5Error_pRi_zRi0_zlyAJIsgndzo_Tf1nc_n088_s15ConversationKit34ScreenSharingInteractionControllerC20requestRemoteControlyyYaKFSb15irK6VXEfU_0V3Kit0xyZ7SessionCTf1nnc_n(v36, v16, a1, v37);

  MEMORY[0x1BFB23DF0](v36, -1, -1);

  return v34;
}

void specialized closure #1 in _NativeSet.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  v51 = a4;
  v35 = a1;
  v49 = type metadata accessor for UUID();
  v5 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v34 - v8;
  v46 = type metadata accessor for Participant();
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v43 = &v34 - v13;
  v14 = 0;
  v50 = a3;
  v15 = *(a3 + 56);
  v38 = a3 + 56;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v36 = 0;
  v37 = (v16 + 63) >> 6;
  v45 = v11;
  v41 = v11 + 8;
  v42 = v11 + 16;
  v40 = (v5 + 8);
  v19 = v43;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v54 = (v18 - 1) & v18;
LABEL_11:
    v23 = v20 | (v14 << 6);
    v24 = *(v50 + 48);
    v25 = v45;
    v26 = v46;
    v27 = *(v45 + 72);
    v39 = v23;
    (*(v45 + 16))(v19, v24 + v27 * v23, v46, v12);
    v28 = v47;
    Participant.id.getter();
    v29 = v44;
    GroupSession.localParticipant.getter();
    v30 = v48;
    Participant.id.getter();
    v53 = *(v25 + 8);
    v53(v29, v26);
    lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v31 = v49;
    v52 = dispatch thunk of static Equatable.== infix(_:_:)();
    v32 = *v40;
    (*v40)(v30, v31);
    v32(v28, v31);
    v53(v19, v26);
    v18 = v54;
    if ((v52 & 1) == 0)
    {
      *(v35 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
LABEL_15:

        specialized _NativeSet.extractSubset(using:count:)();

        return;
      }
    }
  }

  v21 = v14;
  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= v37)
    {
      goto LABEL_15;
    }

    v22 = *(v38 + 8 * v14);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v54 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
}

{
  v21 = a3;
  v22 = a4;
  v18[5] = a2;
  v19 = a1;
  v20 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v23 = *(*(v21 + 48) + 8 * v13);
    MEMORY[0x1EEE9AC00](a1);
    v18[2] = &v23;
    v15 = v14;
    v16 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v18, v22);

    if (!v16)
    {
      *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_15:

        specialized _NativeSet.extractSubset(using:count:)();

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

{
  v28 = a2;
  v40 = a4;
  v30 = a1;
  v37 = type metadata accessor for UUID();
  v5 = *(v37 - 8);
  v6 = MEMORY[0x1EEE9AC00](v37);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = 0;
  v34 = a3;
  v12 = *(a3 + 56);
  v29 = a3 + 56;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v38 = v5 + 8;
  v39 = v5 + 16;
  v31 = v16;
  v32 = 0;
  v17 = v37;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v35 = (v15 - 1) & v15;
LABEL_11:
    v36 = v11;
    v21 = v18 | (v11 << 6);
    v22 = *(v34 + 48);
    v33 = v21;
    v41 = *(v22 + 8 * v21);
    if ([v41 originType] == 1 && objc_msgSend(v41, sel_isLocallyOriginated) && objc_msgSend(v41, sel_type) == 1)
    {
LABEL_17:

      v16 = v31;
      v15 = v35;
      v11 = v36;
    }

    else
    {
      v23 = 0;
      v24 = *(v40 + 16);
      while (v24 != v23)
      {
        (*(v5 + 16))(v10, v40 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23++, v17);
        v25 = [v41 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v25) = static UUID.== infix(_:_:)();
        v26 = *(v5 + 8);
        v26(v8, v17);
        v26(v10, v17);
        if (v25)
        {
          goto LABEL_17;
        }
      }

      *(v30 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      v16 = v31;
      v27 = __OFADD__(v32++, 1);
      v15 = v35;
      v11 = v36;
      if (v27)
      {
        __break(1u);
LABEL_21:

        specialized _NativeSet.extractSubset(using:count:)();

        return;
      }
    }
  }

  v19 = v11;
  while (1)
  {
    v11 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      goto LABEL_21;
    }

    v20 = *(v29 + 8 * v11);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v35 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
}

{
  v34 = a2;
  v51 = a4;
  v35 = a1;
  v49 = type metadata accessor for UUID();
  v5 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v34 - v8;
  v46 = type metadata accessor for Participant();
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v43 = &v34 - v13;
  v14 = 0;
  v50 = a3;
  v15 = *(a3 + 56);
  v38 = a3 + 56;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v36 = 0;
  v37 = (v16 + 63) >> 6;
  v45 = v11;
  v41 = v11 + 8;
  v42 = v11 + 16;
  v40 = (v5 + 8);
  v19 = v43;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v54 = (v18 - 1) & v18;
LABEL_11:
    v23 = v20 | (v14 << 6);
    v24 = *(v50 + 48);
    v25 = v45;
    v26 = v46;
    v27 = *(v45 + 72);
    v39 = v23;
    (*(v45 + 16))(v19, v24 + v27 * v23, v46, v12);
    v28 = v47;
    Participant.id.getter();
    v29 = v44;
    GroupSession.localParticipant.getter();
    v30 = v48;
    Participant.id.getter();
    v53 = *(v25 + 8);
    v53(v29, v26);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v31 = v49;
    v52 = dispatch thunk of static Equatable.== infix(_:_:)();
    v32 = *v40;
    (*v40)(v30, v31);
    v32(v28, v31);
    v53(v19, v26);
    v18 = v54;
    if ((v52 & 1) == 0)
    {
      *(v35 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
LABEL_15:

        specialized _NativeSet.extractSubset(using:count:)();

        return;
      }
    }
  }

  v21 = v14;
  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= v37)
    {
      goto LABEL_15;
    }

    v22 = *(v38 + 8 * v14);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v54 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy15GroupActivities11ParticipantVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab9VKXEfU_15i12Activities11K5V_TG5AKxSbs5Error_pRi_zRi0_zlyAJIsgndzo_Tf1nc_n0136_s15ConversationKit33ScreenSharingInteractionTransportC4send_11reliabilityy10Foundation4DataV_0cdB025ControlMessageReliabilityOtYaKFSb15irK6VXEfU_0V3Kit0xyZ9TransportCTf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_retain_n();
    specialized closure #1 in _NativeSet.filter(_:)(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScreenSharingInteractionTransport.Errors and conformance ScreenSharingInteractionTransport.Errors()
{
  result = lazy protocol witness table cache variable for type ScreenSharingInteractionTransport.Errors and conformance ScreenSharingInteractionTransport.Errors;
  if (!lazy protocol witness table cache variable for type ScreenSharingInteractionTransport.Errors and conformance ScreenSharingInteractionTransport.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingInteractionTransport.Errors and conformance ScreenSharingInteractionTransport.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScreenSharingInteractionTransport.Errors and conformance ScreenSharingInteractionTransport.Errors;
  if (!lazy protocol witness table cache variable for type ScreenSharingInteractionTransport.Errors and conformance ScreenSharingInteractionTransport.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSharingInteractionTransport.Errors and conformance ScreenSharingInteractionTransport.Errors);
  }

  return result;
}

uint64_t partial apply for closure #2 in ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #2 in ScreenSharingInteractionSession.init(session:controller:serverBag:contactManager:)(v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ScreenSharingInteractionSession.invalidate()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in ScreenSharingInteractionSession.invalidate()(v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ScreenSharingInteractionSession.presentRemoteControlOnboarding()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in ScreenSharingInteractionSession.presentRemoteControlOnboarding()(v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ScreenSharingInteractionSession.suspendRemoteControlSession(reason:)()
{
  OUTLINED_FUNCTION_196_1();
  OUTLINED_FUNCTION_44();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AA9PublishedV9PublisherVy15ConversationKit24DeviceInactivityObserverC5StateO_GAIySb_GGMd);
  OUTLINED_FUNCTION_9_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v2[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_194_2();

  return closure #1 in ScreenSharingInteractionSession.suspendRemoteControlSession(reason:)(v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in ScreenSharingInteractionSession.handleRemoteControlUserResponse(allowRemoteControl:)()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_319();

  return closure #1 in ScreenSharingInteractionSession.handleRemoteControlUserResponse(allowRemoteControl:)(v3, v4, v5, v6, v7);
}

uint64_t outlined destroy of RemoteControlMessage(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata completion function for ScreenSharingInteractionTransport()
{
  result = type metadata accessor for ObservationRegistrar();
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

_BYTE *storeEnumTagSinglePayload for ScreenSharingInteractionTransport.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of ScreenSharingInteractionSession.presentRemoteControlOnboarding()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_1();
  v14 = (v0 + 560);
  v15 = *v14 + **v14;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_92(v1);
  *v2 = v3;
  v11 = OUTLINED_FUNCTION_60(v2, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);

  return v11();
}

uint64_t dispatch thunk of ScreenSharingInteractionSession.sendRemoteControlMessage(_:to:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_0_1();
  v6 = (*(v0 + 568) + **(v0 + 568));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_92(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_130(v2);
  v4 = OUTLINED_FUNCTION_45_1();

  return v6(v4);
}

uint64_t dispatch thunk of ScreenSharingInteractionSession.beginRemoteControlSession()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_1();
  v14 = (v0 + 576);
  v15 = *v14 + **v14;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_92(v1);
  *v2 = v3;
  v11 = OUTLINED_FUNCTION_60(v2, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);

  return v11();
}

uint64_t dispatch thunk of ScreenSharingInteractionSession.cancelRemoteControlRequest()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_1();
  v14 = (v0 + 584);
  v15 = *v14 + **v14;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_92(v1);
  *v2 = v3;
  v11 = OUTLINED_FUNCTION_60(v2, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);

  return v11();
}

uint64_t dispatch thunk of ScreenSharingInteractionSession.endRemoteControlSession()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_1();
  v14 = (v0 + 592);
  v15 = *v14 + **v14;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_92(v1);
  *v2 = v3;
  v11 = OUTLINED_FUNCTION_60(v2, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);

  return v11();
}

uint64_t dispatch thunk of ScreenSharingInteractionSession.suspendRemoteControlSession(reason:)()
{
  OUTLINED_FUNCTION_9();
  v1 = v0;
  OUTLINED_FUNCTION_0_1();
  v7 = (*(v2 + 600) + **(v2 + 600));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_92(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_130(v4);

  return v7(v1);
}

uint64_t dispatch thunk of ScreenSharingInteractionSession.resumeRemoteControlSession()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_1();
  v14 = (v0 + 608);
  v15 = *v14 + **v14;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_92(v1);
  *v2 = v3;
  v11 = OUTLINED_FUNCTION_60(v2, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15);

  return v11();
}

uint64_t outlined init with copy of RemoteControlMessage(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

{
  v4 = type metadata accessor for RemoteControlMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of RemoteControlResponse(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

uint64_t partial apply for closure #1 in ScreenSharingInteractionSession.handleRemoteControlMessage(_:from:)()
{
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_48();
  v1 = type metadata accessor for RemoteControlMessage(0);
  OUTLINED_FUNCTION_9_0(v1);
  v2 = type metadata accessor for Participant();
  OUTLINED_FUNCTION_22(v2);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  OUTLINED_FUNCTION_92_5();
  OUTLINED_FUNCTION_69();

  return closure #1 in ScreenSharingInteractionSession.handleRemoteControlMessage(_:from:)(v4, v5, v6, v7, v8, v9);
}

uint64_t partial apply for closure #1 in ScreenSharingInteractionTransport.didReceiveData()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in ScreenSharingInteractionTransport.didReceiveData()(v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in ScreenSharingInteractionTransport.didReceiveData()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in closure #1 in ScreenSharingInteractionTransport.didReceiveData()(v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ScreenSharingInteractionSession.observeDisplayLayerVisibility()()
{
  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_48();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_9_0(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  OUTLINED_FUNCTION_92_5();
  OUTLINED_FUNCTION_69();

  return closure #1 in ScreenSharingInteractionSession.observeDisplayLayerVisibility()(v3, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in closure #1 in ScreenSharingInteractionSession.observeInteractionState()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in closure #1 in ScreenSharingInteractionSession.observeInteractionState()(v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in ScreenSharingInteractionTransport.receiveData()()
{
  OUTLINED_FUNCTION_196_1();
  OUTLINED_FUNCTION_44();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy10Foundation4DataV_GMd);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_144();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v2[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_194_2();

  return closure #1 in closure #1 in ScreenSharingInteractionTransport.receiveData()(v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #2 in closure #1 in ScreenSharingInteractionTransport.receiveData()()
{
  OUTLINED_FUNCTION_196_1();
  OUTLINED_FUNCTION_44();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy10Foundation4DataV_GMd);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_144();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v2[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_194_2();

  return closure #2 in closure #1 in ScreenSharingInteractionTransport.receiveData()(v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in ScreenSharingInteractionTransport.didSendData()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in ScreenSharingInteractionTransport.didSendData()(v3, v4, v5, v6);
}

uint64_t objectdestroy_13Tm_0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in ScreenSharingInteractionTransport.didSendData()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in closure #1 in ScreenSharingInteractionTransport.didSendData()(v3, v4, v5, v6);
}

uint64_t lazy protocol witness table accessor for type ScreenSharingInteractionTransport and conformance ScreenSharingInteractionTransport(unint64_t *a1, void (*a2)(uint64_t))
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

void partial apply for closure #1 in closure #1 in ScreenSharingInteractionTransport.activate()(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy16ScreenSharingKit21ControlMessengerStateO_GMd);
  OUTLINED_FUNCTION_22(v3);
  v4 = *(v1 + 16);

  closure #1 in closure #1 in ScreenSharingInteractionTransport.activate()(a1, v4);
}

uint64_t objectdestroy_201Tm(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_226();
  v2(v1);
  OUTLINED_FUNCTION_369();

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in closure #1 in ScreenSharingInteractionTransport.activate()()
{
  OUTLINED_FUNCTION_196_1();
  OUTLINED_FUNCTION_44();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy16ScreenSharingKit21ControlMessengerStateO_GMd);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_144();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v2[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  OUTLINED_FUNCTION_16_2();
  OUTLINED_FUNCTION_194_2();

  return closure #2 in closure #1 in ScreenSharingInteractionTransport.activate()(v4, v5, v6, v7, v8);
}

void OUTLINED_FUNCTION_121_0()
{
  outlined copy of RemoteControlState(*(v0 + 16));

  os_unfair_lock_unlock((v0 + 24));
}

uint64_t OUTLINED_FUNCTION_130_2()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_131_1()
{
}

uint64_t OUTLINED_FUNCTION_146_0()
{
}

uint64_t OUTLINED_FUNCTION_149_2()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_152_1()
{
}

uint64_t OUTLINED_FUNCTION_160_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  outlined consume of RemoteControlState(a10);
}

void OUTLINED_FUNCTION_177_2()
{
  outlined copy of RemoteControlState(v1);

  os_unfair_lock_unlock(v0 + 6);
}

void OUTLINED_FUNCTION_186_0()
{

  JUMPOUT(0x1BFB1DE80);
}

uint64_t OUTLINED_FUNCTION_190_0()
{

  return type metadata accessor for Logger();
}

char *PushToTalkTalkCircularButton.init(viewModel:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC15ConversationKit28PushToTalkTalkCircularButton_controller) = 0;
  v3 = OBJC_IVAR____TtC15ConversationKit28PushToTalkTalkCircularButton_stateConfiguration;
  if (one-time initialization token for pttTalkButtonFullScreen != -1)
  {
    OUTLINED_FUNCTION_0_163();
    swift_once();
  }

  *(v1 + v3) = static Colors.InCallControls.pttTalkButtonFullScreen;
  *(v1 + OBJC_IVAR____TtC15ConversationKit28PushToTalkTalkCircularButton_viewModel) = a1;
  swift_bridgeObjectRetain_n();

  v4 = CircularButton.init(symbol:stateConfiguration:context:)();
  type metadata accessor for PushToTalkTalkButtonController();
  swift_allocObject();
  v5 = v4;
  *&v5[OBJC_IVAR____TtC15ConversationKit28PushToTalkTalkCircularButton_controller] = PushToTalkTalkButtonController.init(button:viewModel:)(v5, a1);

  return v5;
}

id PushToTalkTalkCircularButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PushToTalkTalkCircularButton.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkTalkCircularButton_controller) = 0;
  v1 = OBJC_IVAR____TtC15ConversationKit28PushToTalkTalkCircularButton_stateConfiguration;
  if (one-time initialization token for pttTalkButtonFullScreen != -1)
  {
    OUTLINED_FUNCTION_0_163();
    swift_once();
  }

  *(v0 + v1) = static Colors.InCallControls.pttTalkButtonFullScreen;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t PushToTalkTalkCircularButton.computedState.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkTalkCircularButton_controller);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*v1 + 216);

  v4 = v2(v3);

  return v4;
}

Swift::Void __swiftcall PushToTalkTalkCircularButton.updateConfiguration()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit31UIConfigurationColorTransformerVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v58 - v3;
  v5 = type metadata accessor for UIButton.Configuration.CornerStyle();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v72 = &v58 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v58 - v23;
  v25 = (*(**(v0 + OBJC_IVAR____TtC15ConversationKit28PushToTalkTalkCircularButton_viewModel) + 112))(v22);
  if ((v25 & 0xFE) == 2 || (v25 & 1) == 0)
  {
    v34 = type metadata accessor for PushToTalkTalkCircularButton();
    v79.receiver = v0;
    v79.super_class = v34;
    objc_msgSendSuper2(&v79, sel_updateConfiguration);
  }

  else
  {
    v68 = v4;
    v77 = &type metadata for SymbolImageDescribers.ConversationControls;
    v78 = &protocol witness table for SymbolImageDescribers.ConversationControls;
    v76[0] = 22;
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC8))();
    specialized Dictionary.subscript.getter();
    v26 = v82;
    v62 = v86;
    outlined init with copy of SymbolImageDescribing?(v76, v73);
    v27 = v74;
    v64 = v26;
    if (v74)
    {
      v70 = v7;
      v28 = v5;
      v29 = v12;
      v30 = v75;
      __swift_project_boxed_opaque_existential_1(v73, v74);
      v31 = *(v30 + 8);
      v32 = v30;
      v12 = v29;
      v5 = v28;
      v7 = v70;
      v31(&v87, v27, v32);
      __swift_destroy_boxed_opaque_existential_1(v73);
      type metadata accessor for UIImage();
      v66 = static UIImage.symbolImage(for:)(&v87);
      outlined destroy of SymbolImageDescription(&v87);
      v33 = v82;
    }

    else
    {
      outlined destroy of TapInteractionHandler?(v73, &_s15ConversationKit21SymbolImageDescribing_pSgMd);
      v66 = 0;
      v33 = v26;
    }

    v67 = v1;
    v63 = v10;
    if (v33)
    {
      v61 = v12;
      v60 = v80[0];
      v69 = v80[1];
      LODWORD(v70) = v81;
      v35 = v83;
      v59 = v84;
      LODWORD(v65) = v85;
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v36 = (*static Defaults.shared + 336);
      v37 = *v36;
      v38 = (*v36)();
      v39 = (v38 & 1) == 0;
      if (v38)
      {
        v40 = v35;
      }

      else
      {
        v40 = v60;
      }

      if (v39)
      {
        v41 = v69;
      }

      else
      {
        v41 = v59;
      }

      if (v39)
      {
        v42 = v70;
      }

      else
      {
        v42 = v65;
      }

      v65 = v40;
      v70 = v41;
      LODWORD(v69) = v42;
      v43 = outlined copy of ButtonBackgroundStyle(v40, v41, v42);
      v44 = (v37)(v43);
      v45 = v64;
      if (v44)
      {
        v45 = v62;
      }

      v64 = v45;
      v12 = v61;
    }

    else
    {
      v46 = objc_opt_self();
      v65 = [v46 systemGrayColor];
      v64 = [v46 labelColor];
      v70 = 0;
      LODWORD(v69) = 64;
    }

    static UIButton.Configuration.filled()();
    v47 = *(v12 + 16);
    v48 = v63;
    v47(v18, v15, v63);
    (*(v7 + 13))(v71, *MEMORY[0x1E69DC508], v5);
    UIButton.Configuration.cornerStyle.setter();
    v49 = *(v12 + 8);
    v49(v15, v48);
    v50 = v72;
    v51 = v65;
    UIButton.Configuration.withBackgroundStyle(_:)(v65, v70, v69, v72);
    v49(v18, v48);
    v47(v24, v50, v48);
    UIButton.Configuration.contentInsets.setter();
    UIButton.Configuration.imagePadding.setter();
    v49(v50, v48);
    v52 = v66;
    UIButton.Configuration.image.setter();
    v53 = swift_allocObject();
    v54 = v64;
    *(v53 + 16) = v64;
    v55 = v54;
    v56 = v68;
    UIConfigurationColorTransformer.init(_:)();
    v57 = type metadata accessor for UIConfigurationColorTransformer();
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v57);
    UIButton.Configuration.imageColorTransformer.setter();
    outlined consume of ButtonBackgroundStyle(v51, v70, v69);

    outlined destroy of TapInteractionHandler?(v80, &_s15ConversationKit11ButtonStyleVSgMd);
    outlined destroy of TapInteractionHandler?(v76, &_s15ConversationKit21SymbolImageDescribing_pSgMd);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v48);
    UIButton.configuration.setter();
  }
}

uint64_t PushToTalkTalkCircularButton.__ivar_destroyer()
{
}

id PushToTalkTalkCircularButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PushToTalkTalkCircularButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall ConversationControlsOpenMessagesButtonProvider.buttonChanged()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - v4;
  ControlsButtonProvider.buttonChanged()();
  v6 = (*(*v0 + 192))();
  if (v6)
  {
    v8 = v6;
    v9 = v7;
    outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD000000000000012, 0x80000001BC4F7930, v6);
    v10 = v0[20];
    v11 = [v8 addTarget:v1[20] action:sel_openMessagesButtonTapped forControlEvents:64];
    (*((*MEMORY[0x1E69E7D40] & *v10) + 0x5A8))(v11);
    *(swift_allocObject() + 24) = v9;
    swift_unknownObjectWeakInit();
    lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher();
    v12 = Publisher<>.sink(receiveValue:)();

    (*(v3 + 8))(v5, v2);
    (*(*v1 + 248))(v12);
  }
}

void closure #1 in ConversationControlsOpenMessagesButtonProvider.buttonChanged()(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setEnabled_];
  }
}

uint64_t ConversationControlsOpenMessagesButtonProvider.deinit()
{
  v0 = ControlsButtonProvider.deinit();

  return v0;
}

uint64_t ConversationControlsOpenMessagesButtonProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t EnhancedEmergencyControlsRecipeGenerator.init()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t EnhancedEmergencyControlsRecipeGenerator.enhancedEmergencyMediaUploadRequestRecipe(controlsManager:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v5);
  v115 = type metadata accessor for SystemApertureIcon(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v116 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v16);
  v17 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_17();
  v21 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_32();
  v125 = v23;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v124 = a1;
  v126 = v17;
  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, &static Logger.conversationControls);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_25(v26))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v27, v28, "EnhancedEmergency: going to make recipe for enhancedEmergencyMediaUploadRequest");
    OUTLINED_FUNCTION_27();
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  v29 = objc_opt_self();
  v30 = [v29 conversationKit];
  v31.super.isa = v30;
  v32 = OUTLINED_FUNCTION_17_0(0xD000000000000011, 0x80000001BC50FEC0, 0x61737265766E6F43, 0xEF74694B6E6F6974, v31);
  v34 = v33;

  v35._countAndFlagsBits = v32;
  v35._object = v34;
  v118.super.isa = NSAttributedString.__allocating_init(string:)(v35).super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1BC4BAC30;
  v37 = [v29 conversationKit];
  v38.super.isa = v37;
  v39 = OUTLINED_FUNCTION_17_0(0xD000000000000014, 0x80000001BC50FEE0, 0x61737265766E6F43, 0xEF74694B6E6F6974, v38);
  v41 = v40;

  v42._countAndFlagsBits = v39;
  v42._object = v41;
  *(v36 + 32) = NSAttributedString.__allocating_init(string:)(v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd);
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for ConversationControlsAction();
  OUTLINED_FUNCTION_15_48();
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1BC4BAA20;
  v128 = v43;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  static ConversationHUDControlsButtonShelfView.Configuration.fillEqually.getter(v132);
  v113 = v132[1];
  v114 = v132[0];
  v112 = v133;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v44 = OUTLINED_FUNCTION_11_78();
  if (v44)
  {
    v45 = v44;
    v46 = [v44 imageWithRenderingMode_];
  }

  else
  {
    v46 = 0;
  }

  v120 = v46;
  v47 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v48 = [objc_opt_self() redColor];
  [v47 setTintColor_];

  v49 = v47;
  v50 = [v49 hash];
  OUTLINED_FUNCTION_21_44(15);
  __dst[40] = 7;
  v51 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v51);
  v55 = v126[9];
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v51);
  v59 = (&v21->super.isa + v126[10]);
  v60 = v21 + v126[15];
  *(v60 + 4) = 0;
  *v60 = 0u;
  *(v60 + 1) = 0u;
  v60[40] = -2;
  *(&v21->super.isa + v126[16]) = 0;
  v61 = v21 + v126[17];
  v62 = (&v21->super.isa + v126[18]);
  *v62 = 1;
  v63 = OUTLINED_FUNCTION_9_77(v62, 0);
  outlined init with copy of ConversationControlsType(v63, v21);
  v21[6].super.isa = 0;
  v21[7].super.isa = v49;
  v21[8].super.isa = 0;
  v21[9].super.isa = v50;
  v21[10].super.isa = v118.super.isa;
  v21[11].super.isa = v36;
  v59[1] = 0;
  v59[2] = 0;
  *v59 = 0;
  v64 = v49;
  v119 = v118.super.isa;
  outlined assign with copy of AttributedString?(v121, v21 + v55);
  *(&v21->super.isa + v126[11]) = 2;
  *(&v21->super.isa + v126[12]) = 0;
  *(&v21->super.isa + v126[13]) = 3;
  *(&v21->super.isa + v126[14]) = 5;
  *v61 = 0;
  *(v61 + 1) = 0;
  v61[16] = -1;
  if (*(v128 + 16) <= 5uLL)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v121, &_s10Foundation16AttributedStringVSgMd);
    outlined destroy of ConversationControlsType(__dst);
    *v60 = v128;
    *(v60 + 24) = v113;
    *(v60 + 8) = v114;
    v60[40] = v112 | 0x80;
    v72 = v122;
    _s15ConversationKit0A14ControlsRecipeVWOcTm_1(v21, v122, type metadata accessor for ConversationControlsRecipe);
    v73 = OUTLINED_FUNCTION_13_61();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v126);
    _s15ConversationKit0A14ControlsRecipeVWOhTm_2();
    v76 = v124;
  }

  else
  {

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v130 = v68;
      *v67 = 136315138;
      v69 = String.init<A>(reflecting:)();
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, &v130);

      *(v67 + 4) = v71;
      _os_log_impl(&dword_1BBC58000, v65, v66, "Too many buttonShelf actions (%s)", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v68);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v121, &_s10Foundation16AttributedStringVSgMd);
    outlined destroy of ConversationControlsType(__dst);
    v76 = v124;
    OUTLINED_FUNCTION_9_4();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_2();
    v72 = v122;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v126);
  }

  if (__swift_getEnumTagSinglePayload(v72, 1, v126) == 1)
  {

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v72, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    OUTLINED_FUNCTION_10_0();
    return __swift_storeEnumTagSinglePayload(v80, v81, v82, v126);
  }

  else
  {
    OUTLINED_FUNCTION_7_3();
    _s15ConversationKit0A14ControlsRecipeVWObTm_1(v72, v125, v84);
    SystemApertureIconFactory.makeStatusIcon(with:for:)(0, 0, v76);
    if (__swift_getEnumTagSinglePayload(v123, 1, v115) == 1)
    {

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v123, &_s15ConversationKit18SystemApertureIconVSgMd);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_25(v86))
      {
        *OUTLINED_FUNCTION_33() = 0;
        OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v87, v88, "EnhancedEmergency: [SystemAperture] missing status icon");
        OUTLINED_FUNCTION_27();
      }

      v89 = v125;
    }

    else
    {
      v129 = v64;
      v90 = _s15ConversationKit0A14ControlsRecipeVWObTm_1(v123, v117, type metadata accessor for SystemApertureIcon);
      v91 = *((*MEMORY[0x1E69E7D40] & *v76) + 0x2A0);
      v91(v90);
      OUTLINED_FUNCTION_17_1();
      v92 = type metadata accessor for SystemApertureInCallLeadingView();
      v93 = _s15ConversationKit0A14ControlsRecipeVWOcTm_1(v117, v116, type metadata accessor for SystemApertureIcon);
      v94 = (v91)(v93);
      v96 = v95;
      ObjectType = swift_getObjectType();
      *__dst = v94;
      v98 = specialized SystemApertureInCallLeadingView.__allocating_init(icon:callDurationProvider:)(v116, __dst, v92, ObjectType, *(v96 + 8));
      objc_opt_self();
      v99 = swift_dynamicCastObjCClass();
      if (v99)
      {
        swift_unknownObjectRetain();
      }

      type metadata accessor for SystemApertureInCallWaveformTrailingView();
      static WaveformConfigurations.inCallNumberOfBands.getter();
      v100 = SystemApertureInCallWaveformTrailingView.__allocating_init(call:numBands:)(v99);
      _s15ConversationKit0A14ControlsRecipeVWOcTm_1(v117, v116, type metadata accessor for SystemApertureIcon);
      v101 = type metadata accessor for SystemApertureIconView(0);
      v102 = objc_allocWithZone(v101);
      SystemApertureIconView.init(icon:isDetached:)();
      v104 = v103;
      _s15ConversationKit0A14ControlsRecipeVWOcTm_1(v117, v116, type metadata accessor for SystemApertureIcon);
      v105 = objc_allocWithZone(v101);
      SystemApertureIconView.init(icon:isDetached:)();
      v107 = v106;

      swift_unknownObjectRelease();
      _s15ConversationKit0A14ControlsRecipeVWOhTm_2();
      v89 = v125;
      v108 = (v125 + v126[18]);
      memcpy(__dst, v108, sizeof(__dst));
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit21SystemApertureElementVSgMd);
      *v108 = v98;
      v108[1] = &protocol witness table for SystemApertureInCallLeadingView;
      v108[2] = v100;
      v108[3] = &protocol witness table for SystemApertureInCallWaveformTrailingView;
      v108[4] = v104;
      v108[5] = &protocol witness table for SystemApertureIconView;
      v108[6] = v107;
      v108[7] = &protocol witness table for SystemApertureIconView;
      v108[8] = 4;
      *(v108 + 72) = 65;
    }

    _s15ConversationKit0A14ControlsRecipeVWOcTm_1(v89, a2, type metadata accessor for ConversationControlsRecipe);
    v109 = OUTLINED_FUNCTION_13_61();
    __swift_storeEnumTagSinglePayload(v109, v110, v111, v126);
    return _s15ConversationKit0A14ControlsRecipeVWOhTm_2();
  }
}

uint64_t EnhancedEmergencyControlsRecipeGenerator.enhancedEmergencyVideoStreamingRequestRecipe(controlsManager:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v123 = a2;
  v134 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_1();
  v131 = v6;
  v122 = type metadata accessor for SystemApertureIcon(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  v124 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v118 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v18);
  v19 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_17();
  v23 = (v21 - v22);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_32();
  v133 = v25;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v26 = type metadata accessor for Logger();
  v126 = __swift_project_value_buffer(v26, &static Logger.conversationControls);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_25(v28))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_15_2(&dword_1BBC58000, v29, v30, "EnhancedEmergency: going to make recipe for enhancedEmergencyVideoStreamingRequestRecipe");
    OUTLINED_FUNCTION_27();
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  v31 = [objc_opt_self() conversationKit];
  v32.super.isa = v31;
  v33 = OUTLINED_FUNCTION_17_0(0xD000000000000016, 0x80000001BC50FF00, 0x61737265766E6F43, 0xEF74694B6E6F6974, v32);
  v35 = v34;

  v36._countAndFlagsBits = v33;
  v36._object = v35;
  isa = NSAttributedString.__allocating_init(string:)(v36).super.isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd);
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for ConversationControlsAction();
  OUTLINED_FUNCTION_15_48();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1BC4BAA20;
  v127 = v37;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  static ConversationHUDControlsButtonShelfView.Configuration.fillEqually.getter(v138);
  v120 = v138[1];
  v121 = v138[0];
  v119 = v139;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v38 = OUTLINED_FUNCTION_11_78();
  v132 = a1;
  if (v38)
  {
    v39 = v38;
    v40 = [v38 imageWithRenderingMode_];
  }

  else
  {
    v40 = 0;
  }

  v41 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
  v129 = v40;
  v42 = [v41 initWithImage_];
  v43 = [objc_opt_self() redColor];
  [v42 setTintColor_];

  v44 = v42;
  v45 = [v44 hash];
  OUTLINED_FUNCTION_21_44(14);
  LOBYTE(__dst[5]) = 7;
  v46 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v46);
  v50 = v15;
  v51 = v19[9];
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v46);
  v55 = (v23 + v19[10]);
  v56 = v23 + v19[15];
  *(v56 + 4) = 0;
  *v56 = 0u;
  *(v56 + 1) = 0u;
  v56[40] = -2;
  *(v23 + v19[16]) = 0;
  v57 = v23 + v19[17];
  v58 = (v23 + v19[18]);
  *v58 = 1;
  v59 = v19;
  v60 = OUTLINED_FUNCTION_9_77(v58, 0);
  outlined init with copy of ConversationControlsType(v60, v23);
  v23[6] = 0;
  v23[7] = v44;
  v61 = MEMORY[0x1E69E7CC0];
  v23[8] = 0;
  v23[9] = v45;
  v62 = isa;
  v23[10] = isa;
  v23[11] = v61;
  v55[1] = 0;
  v55[2] = 0;
  *v55 = 0;
  v63 = v44;
  isa = v62;
  outlined assign with copy of AttributedString?(v50, v23 + v51);
  *(v23 + v19[11]) = 2;
  *(v23 + v19[12]) = 0;
  *(v23 + v19[13]) = 3;
  *(v23 + v19[14]) = 5;
  *v57 = 0;
  *(v57 + 1) = 0;
  v57[16] = -1;
  v64 = v127;
  v65 = *(v127 + 16);
  if (v65 <= 5)
  {
    v79 = v119 | 0x80;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v50, &_s10Foundation16AttributedStringVSgMd);
    outlined destroy of ConversationControlsType(__dst);
    *v56 = v64;
    *(v56 + 24) = v120;
    *(v56 + 8) = v121;
    v56[40] = v79;
    v75 = v130;
    _s15ConversationKit0A14ControlsRecipeVWOcTm_1(v23, v130, type metadata accessor for ConversationControlsRecipe);
    OUTLINED_FUNCTION_24_38();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_2();
    v73 = v131;
    v74 = v132;
  }

  else
  {
    *&v121 = v63;

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v135 = v65;
      v136 = v69;
      *v68 = 136315138;
      v70 = String.init<A>(reflecting:)();
      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, &v136);

      *(v68 + 4) = v72;
      _os_log_impl(&dword_1BBC58000, v66, v67, "Too many buttonShelf actions (%s)", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v69);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v50, &_s10Foundation16AttributedStringVSgMd);
    outlined destroy of ConversationControlsType(__dst);
    v73 = v131;
    v74 = v132;
    v75 = v130;
    OUTLINED_FUNCTION_9_4();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_2();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v76, v77, v78, v59);
    v63 = v121;
  }

  if (__swift_getEnumTagSinglePayload(v75, 1, v59) == 1)
  {

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v75, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    OUTLINED_FUNCTION_10_0();
    return __swift_storeEnumTagSinglePayload(v80, v81, v82, v59);
  }

  else
  {
    OUTLINED_FUNCTION_7_3();
    _s15ConversationKit0A14ControlsRecipeVWObTm_1(v75, v133, v84);
    SystemApertureIconFactory.makeStatusIcon(with:for:)(0, 0, v74);
    if (__swift_getEnumTagSinglePayload(v73, 1, v122) == 1)
    {

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v73, &_s15ConversationKit18SystemApertureIconVSgMd);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v85, v86))
      {
        *OUTLINED_FUNCTION_33() = 0;
        OUTLINED_FUNCTION_23_42(&dword_1BBC58000, v87, v88, "EnhancedEmergency: [SystemAperture] missing status icon.");
        OUTLINED_FUNCTION_27();
      }

      v89 = v133;
    }

    else
    {
      *&v121 = v63;
      v90 = v125;
      v91 = _s15ConversationKit0A14ControlsRecipeVWObTm_1(v73, v125, type metadata accessor for SystemApertureIcon);
      v92 = *((*MEMORY[0x1E69E7D40] & *v74) + 0x2A0);
      v92(v91);
      v93 = type metadata accessor for SystemApertureInCallLeadingView();
      v94 = v90;
      v95 = v124;
      v96 = _s15ConversationKit0A14ControlsRecipeVWOcTm_1(v94, v124, type metadata accessor for SystemApertureIcon);
      v97 = (v92)(v96);
      v99 = v98;
      ObjectType = swift_getObjectType();
      __dst[0] = v97;
      v101 = specialized SystemApertureInCallLeadingView.__allocating_init(icon:callDurationProvider:)(v95, __dst, v93, ObjectType, *(v99 + 8));
      objc_opt_self();
      v102 = swift_dynamicCastObjCClass();
      if (v102)
      {
        swift_unknownObjectRetain();
      }

      type metadata accessor for SystemApertureInCallWaveformTrailingView();
      static WaveformConfigurations.inCallNumberOfBands.getter();
      v103 = SystemApertureInCallWaveformTrailingView.__allocating_init(call:numBands:)(v102);
      v104 = v125;
      v105 = v124;
      _s15ConversationKit0A14ControlsRecipeVWOcTm_1(v125, v124, type metadata accessor for SystemApertureIcon);
      v106 = type metadata accessor for SystemApertureIconView(0);
      v107 = objc_allocWithZone(v106);
      SystemApertureIconView.init(icon:isDetached:)();
      v109 = v108;
      _s15ConversationKit0A14ControlsRecipeVWOcTm_1(v104, v105, type metadata accessor for SystemApertureIcon);
      v110 = objc_allocWithZone(v106);
      SystemApertureIconView.init(icon:isDetached:)();
      v112 = v111;

      v113 = v121;
      swift_unknownObjectRelease();
      _s15ConversationKit0A14ControlsRecipeVWOhTm_2();
      v89 = v133;
      v114 = (v133 + *(v59 + 72));
      memcpy(__dst, v114, 0x49uLL);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit21SystemApertureElementVSgMd);
      *v114 = v101;
      v114[1] = &protocol witness table for SystemApertureInCallLeadingView;
      v114[2] = v103;
      v114[3] = &protocol witness table for SystemApertureInCallWaveformTrailingView;
      v114[4] = v109;
      v114[5] = &protocol witness table for SystemApertureIconView;
      v114[6] = v112;
      v114[7] = &protocol witness table for SystemApertureIconView;
      v114[8] = 4;
      *(v114 + 72) = 65;
    }

    _s15ConversationKit0A14ControlsRecipeVWOcTm_1(v89, v134, type metadata accessor for ConversationControlsRecipe);
    v115 = OUTLINED_FUNCTION_13_61();
    __swift_storeEnumTagSinglePayload(v115, v116, v117, v59);
    return _s15ConversationKit0A14ControlsRecipeVWOhTm_2();
  }
}

uint64_t EnhancedEmergencyControlsRecipeGenerator.enhancedEmergencyRTTMediaUploadRequestRecipe(controlsManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, &static Logger.conversationControls);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_23_42(&dword_1BBC58000, v22, v23, a3);
    OUTLINED_FUNCTION_27();
  }

  a4(a1, a2);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    OUTLINED_FUNCTION_10_0();
    return __swift_storeEnumTagSinglePayload(v24, v25, v26, v15);
  }

  else
  {
    _s15ConversationKit0A14ControlsRecipeVWObTm_1(v14, v18, type metadata accessor for ConversationControlsRecipe);
    outlined destroy of ConversationControlsType(v18);
    *v18 = a5;
    *(v18 + 8) = 0u;
    *(v18 + 24) = 0u;
    v18[40] = 7;
    v28 = &v18[*(v15 + 72)];
    memcpy(__dst, v28, 0x49uLL);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit21SystemApertureElementVSgMd);
    *v28 = 1;
    *(v28 + 8) = 0u;
    *(v28 + 24) = 0u;
    *(v28 + 40) = 0u;
    *(v28 + 56) = 0u;
    v28[72] = 0;
    _s15ConversationKit0A14ControlsRecipeVWOcTm_1(v18, v30, type metadata accessor for ConversationControlsRecipe);
    OUTLINED_FUNCTION_24_38();
    return _s15ConversationKit0A14ControlsRecipeVWOhTm_2();
  }
}

uint64_t _s15ConversationKit0A14ControlsRecipeVWObTm_1(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t _s15ConversationKit0A14ControlsRecipeVWOcTm_1(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t _s15ConversationKit0A14ControlsRecipeVWOhTm_2()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t NotifyDispatchName.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t notifyRegisterDispatch(name:queue:handler:)(uint64_t a1, unint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v9 = String.utf8CString.getter();
    out_token = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
      v9 = v10;
    }

    if (!*(v9 + 16))
    {
      __break(1u);
    }

    v11 = swift_allocObject();
    *(v11 + 16) = a4;
    *(v11 + 24) = a5;
    aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
    aBlock[3] = &block_descriptor_69;
    v12 = _Block_copy(aBlock);

    notify_register_dispatch((v9 + 32), &out_token, a3, v12);
    _Block_release(v12);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NotifyDispatchName and conformance NotifyDispatchName()
{
  result = lazy protocol witness table cache variable for type NotifyDispatchName and conformance NotifyDispatchName;
  if (!lazy protocol witness table cache variable for type NotifyDispatchName and conformance NotifyDispatchName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotifyDispatchName and conformance NotifyDispatchName);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NotifyDispatchName and conformance NotifyDispatchName;
  if (!lazy protocol witness table cache variable for type NotifyDispatchName and conformance NotifyDispatchName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotifyDispatchName and conformance NotifyDispatchName);
  }

  return result;
}

id MaterialView.init(privateBlurStyle:)(uint64_t a1)
{
  v1 = [objc_opt_self() effectWithStyle_];

  return v1;
}

id MaterialView.makeUIView(context:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(MEMORY[0x1E69DD298]);

  return [v3 initWithEffect_];
}

unint64_t lazy protocol witness table accessor for type MaterialView and conformance MaterialView()
{
  result = lazy protocol witness table cache variable for type MaterialView and conformance MaterialView;
  if (!lazy protocol witness table cache variable for type MaterialView and conformance MaterialView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialView and conformance MaterialView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialView and conformance MaterialView;
  if (!lazy protocol witness table cache variable for type MaterialView and conformance MaterialView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialView and conformance MaterialView);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance MaterialView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type MaterialView and conformance MaterialView();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance MaterialView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type MaterialView and conformance MaterialView();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance MaterialView()
{
  lazy protocol witness table accessor for type MaterialView and conformance MaterialView();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t key path setter for CallAgainHUDView.recipe : CallAgainHUDView(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ConversationControlsRecipe(a1, v6);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xC8))(v6);
}

uint64_t CallAgainHUDView.recipe.didset()
{
  v1 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_recipe;
  swift_beginAccess();
  outlined init with copy of ConversationControlsRecipe(v0 + v4, v3);
  CallAgainHUDView.updateFromRecipe(_:)(v3);
  return outlined destroy of ConversationControlsRecipe(v3);
}

uint64_t CallAgainHUDView.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_recipe;
  swift_beginAccess();
  return outlined init with copy of ConversationControlsRecipe(v1 + v3, a1);
}

uint64_t CallAgainHUDView.recipe.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_recipe;
  swift_beginAccess();
  outlined assign with copy of ConversationControlsRecipe(a1, v1 + v3);
  swift_endAccess();
  CallAgainHUDView.recipe.didset();
  return outlined destroy of ConversationControlsRecipe(a1);
}

uint64_t (*CallAgainHUDView.recipe.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CallAgainHUDView.recipe.modify;
}

uint64_t CallAgainHUDView.recipe.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return CallAgainHUDView.recipe.didset();
  }

  return result;
}

id closure #1 in variable initialization expression of CallAgainHUDView.primaryLabel()
{
  result = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (result)
  {
    v1 = result;
    isa = UIFont.withTraits(_:)(0x8000u).super.isa;

    v3 = UIFont.caseSensitive()().super.isa;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UILabel);
    v4 = objc_opt_self();
    v5 = v3;
    v9.value.super.isa = [v4 labelColor];
    UILabel.init(font:textColor:)(v6, v5, v9);
    v8 = v7;
    [v7 setNumberOfLines_];
    [v8 setTextAlignment_];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id closure #1 in variable initialization expression of CallAgainHUDView.avatarStack(void *a1)
{
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  [a1 setAxis_];
  [a1 setAlignment_];
  [a1 setSpacing_];

  return a1;
}

id closure #1 in variable initialization expression of CallAgainHUDView.videoMessageStackView(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  [a1 setAxis_];
  [a1 setDistribution_];
  [a1 setSpacing_];

  return a1;
}

uint64_t closure #1 in variable initialization expression of CallAgainHUDView.callBackButton()
{
  v0 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v23 - v2;
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  static UIButton.Configuration.roundButtonConfiguration(using:)(10);
  v11 = [objc_opt_self() conversationKit];
  v25._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0x4147415F4C4C4143;
  v13.value._countAndFlagsBits = 0x61737265766E6F43;
  v13.value._object = 0xEF74694B6E6F6974;
  v12._object = 0xEA00000000004E49;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v25);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v15 = type metadata accessor for AttributedString();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v15);
  UIButton.Configuration.attributedTitle.setter();
  v16 = objc_opt_self();
  v17 = [v16 systemGreenColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v18 = [v16 whiteColor];
  UIButton.Configuration.baseForegroundColor.setter();
  v19 = UIButton.Configuration.attributedTitle.modify();
  if (!__swift_getEnumTagSinglePayload(v20, 1, v15))
  {
    v23[1] = [objc_opt_self() _preferredFontForTextStyle_weight_];
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
    AttributedString.subscript.setter();
  }

  v19(v24, 0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIButton);
  (*(v5 + 16))(v7, v10, v4);
  v21 = UIButton.init(configuration:primaryAction:)();
  (*(v5 + 8))(v10, v4);
  return v21;
}

uint64_t static UIButton.Configuration.roundButtonConfiguration(using:)(char a1)
{
  v2 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIButton.Configuration.filled()();
  SymbolImageDescribers.LocalParticipantView.symbolImageDescription.getter(a1, v10);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v6 = v10[0];
  v7 = v10[1];

  @nonobjc UIImage.init(_systemName:)(v6, v7);
  UIButton.Configuration.image.setter();
  v8 = [objc_opt_self() configurationWithTextStyle:v10[3] scale:v10[2]];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69DC508], v2);
  UIButton.Configuration.cornerStyle.setter();
  UIButton.Configuration.imagePadding.setter();
  return outlined destroy of SymbolImageDescription(v10);
}

id closure #1 in variable initialization expression of CallAgainHUDView.closeButton()
{
  v0 = type metadata accessor for UIButton.Configuration();
  MEMORY[0x1EEE9AC00](v0 - 8);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIButton);
  static UIButton.Configuration.closeButtonConfiguration()();
  v1 = UIButton.init(configuration:primaryAction:)();
  static Layout.ConversationControls.values.getter(v3);
  [v1 _setTouchInsets_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];

  return v1;
}

uint64_t static UIButton.Configuration.closeButtonConfiguration()()
{
  v0 = type metadata accessor for UIBackgroundConfiguration();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v18 - v3;
  v5 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIButton.Configuration.filled()();
  UIButton.Configuration.contentInsets.setter();
  (*(v6 + 104))(v8, *MEMORY[0x1E69DC508], v5);
  UIButton.Configuration.cornerStyle.setter();
  v9 = [objc_opt_self() conversationKit];
  v20._object = 0xE000000000000000;
  v10.value._countAndFlagsBits = 0x61737265766E6F43;
  v10.value._object = 0xEF74694B6E6F6974;
  v11._object = 0x80000001BC502CF0;
  v11._countAndFlagsBits = 0xD000000000000010;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, v9, v12, v20);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v13 = type metadata accessor for AttributedString();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v13);
  UIButton.Configuration.attributedTitle.setter();
  v14 = UIButton.Configuration.attributedTitle.modify();
  if (!__swift_getEnumTagSinglePayload(v15, 1, v13))
  {
    v18[1] = [objc_opt_self() _preferredFontForTextStyle_weight_];
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
    AttributedString.subscript.setter();
  }

  v14(v19, 0);
  static UIBackgroundConfiguration.listGroupedCell()();
  v16 = [objc_opt_self() whiteColor];
  UIBackgroundConfiguration.backgroundColor.setter();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIVibrancyEffect);
  static UIVibrancyEffect.inCallControlsEffect.getter();
  UIBackgroundConfiguration.visualEffect.setter();
  return UIButton.Configuration.background.setter();
}

uint64_t closure #1 in variable initialization expression of CallAgainHUDView.videoMessageButton()
{
  v0 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v31 - v2;
  v31[0] = type metadata accessor for UIButton.Configuration();
  v4 = *(v31[0] - 8);
  MEMORY[0x1EEE9AC00](v31[0]);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v31 - v8;
  static UIButton.Configuration.roundButtonConfiguration(using:)(5);
  static Platform.current.getter();
  UIButton.Configuration.contentInsets.setter();
  v10 = [objc_opt_self() conversationKit];
  v33._object = 0x80000001BC5101C0;
  v11.value._countAndFlagsBits = 0x61737265766E6F43;
  v11.value._object = 0xEF74694B6E6F6974;
  v12._object = 0x80000001BC5101A0;
  v33._countAndFlagsBits = 0xD00000000000002DLL;
  v12._countAndFlagsBits = 0xD000000000000013;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v11, v10, v13, v33);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v14 = type metadata accessor for AttributedString();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v14);
  UIButton.Configuration.attributedTitle.setter();
  v15 = UIButton.Configuration.preferredSymbolConfigurationForImage.getter();
  if (v15)
  {
    v16 = v15;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImageSymbolConfiguration);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BC4BA930;
    v18 = objc_opt_self();
    *(v17 + 32) = [v18 systemRedColor];
    *(v17 + 40) = [v18 systemRedColor];
    v19 = @nonobjc UIImageSymbolConfiguration.__allocating_init(paletteColors:)();
    v20 = [objc_opt_self() configurationWithWeight_];
    v21 = [v19 configurationByApplyingConfiguration_];

    v22 = [v16 configurationByApplyingConfiguration_];
  }

  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v23 = objc_opt_self();
  v24 = [v23 whiteColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v25 = [v23 blackColor];
  UIButton.Configuration.baseForegroundColor.setter();
  v26 = UIButton.Configuration.attributedTitle.modify();
  if (!__swift_getEnumTagSinglePayload(v27, 1, v14))
  {
    v31[1] = [objc_opt_self() _preferredFontForTextStyle_weight_];
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
    AttributedString.subscript.setter();
  }

  v26(v32, 0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIButton);
  v28 = v31[0];
  (*(v4 + 16))(v6, v9, v31[0]);
  v29 = UIButton.init(configuration:primaryAction:)();
  (*(v4 + 8))(v9, v28);
  return v29;
}

id @nonobjc UIImageSymbolConfiguration.__allocating_init(paletteColors:)()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v1 = [swift_getObjCClassFromMetadata() configurationWithPaletteColors_];

  return v1;
}

id closure #1 in variable initialization expression of CallAgainHUDView.showCallDetailsButton()
{
  v0 = [objc_opt_self() buttonWithType_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setPointerInteractionEnabled_];
  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTintColor_];

  return v0;
}

char *CallAgainHUDView.init(recipe:)(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_bottomButtonConstraint] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_avatarBottomConstraint] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_primaryLabel;
  *&v1[v4] = closure #1 in variable initialization expression of CallAgainHUDView.primaryLabel();
  v5 = OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_callTypeLabel;
  v6 = [objc_opt_self() preferredFontForTextStyle_];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UILabel);
  v49 = objc_opt_self();
  v51.value.super.isa = [v49 secondaryLabelColor];
  UILabel.init(font:textColor:)(v7, v6, v51);
  *&v2[v5] = v8;
  v9 = OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_avatarStack;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v11 = closure #1 in variable initialization expression of CallAgainHUDView.avatarStack(v10);

  *&v2[v9] = v11;
  v12 = OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_videoMessageStackView;
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v14 = closure #1 in variable initialization expression of CallAgainHUDView.videoMessageStackView(v13);

  *&v2[v12] = v14;
  v15 = OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_callBackButton;
  *&v2[v15] = closure #1 in variable initialization expression of CallAgainHUDView.callBackButton();
  v16 = OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_closeButton;
  *&v2[v16] = closure #1 in variable initialization expression of CallAgainHUDView.closeButton();
  v17 = OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_videoMessageButton;
  *&v2[v17] = closure #1 in variable initialization expression of CallAgainHUDView.videoMessageButton();
  v18 = OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_effectsView;
  *&v2[v18] = closure #1 in LocalParticipantView.overlayBlurView.getter();
  *&v2[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_avatarStackVerticalSpacingDivisor] = 0x3FCCAC083126E979;
  v19 = OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_showCallDetailsButton;
  *&v2[v19] = closure #1 in variable initialization expression of CallAgainHUDView.showCallDetailsButton();
  outlined init with copy of ConversationControlsRecipe(a1, &v2[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_recipe]);
  v50.receiver = v2;
  v50.super_class = type metadata accessor for CallAgainHUDView();
  v20 = objc_msgSendSuper2(&v50, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v21 = *&v20[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_effectsView];
  v22 = v20;
  [v22 addSubview_];
  CallAgainHUDView.updateFromRecipe(_:)(a1);
  v23 = OUTLINED_FUNCTION_4_117();
  [v23 v24];
  v25 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  LOBYTE(v14) = [v25 videoMessagingCalalystEnabled];

  if ((v14 & 1) != 0 || static Platform.current.getter() != 3)
  {
    OUTLINED_FUNCTION_3_124();
    [v30 v31];
    OUTLINED_FUNCTION_3_124();
    [v32 v33];
    v34 = OUTLINED_FUNCTION_4_117();
    [v34 v35];
    v28 = OUTLINED_FUNCTION_4_117();
  }

  else
  {
    OUTLINED_FUNCTION_3_124();
    [v26 v27];
    OUTLINED_FUNCTION_3_124();
  }

  [v28 v29];
  v36 = OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_avatarStack;
  v37 = OUTLINED_FUNCTION_4_117();
  [v37 v38];
  v39 = OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_primaryLabel;
  [*&v22[v36] addArrangedSubview_];
  OUTLINED_FUNCTION_3_124();
  [v40 v41];
  v42 = [*&v22[v36] setCustomSpacing:*&v22[v39] afterView:2.0];
  (*((*MEMORY[0x1E69E7D40] & *v22) + 0x170))(v42);
  v43 = v22;
  v44 = [v49 clearColor];
  v45 = OUTLINED_FUNCTION_2_52();
  [v45 v46];

  v47 = [objc_opt_self() defaultCenter];
  [v47 addObserver:v43 selector:sel_handleContentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  outlined destroy of ConversationControlsRecipe(a1);
  return v43;
}

uint64_t type metadata accessor for CallAgainHUDView()
{
  result = type metadata singleton initialization cache for CallAgainHUDView;
  if (!type metadata singleton initialization cache for CallAgainHUDView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void CallAgainHUDView.updateFromRecipe(_:)(uint64_t a1)
{
  CallAgainHUDView.updateAvatar()();
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_primaryLabel);
  v4 = specialized BidirectionalCollection.last.getter(*(a1 + 88));
  [v3 setAttributedText_];

  v5 = *(v1 + OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_callTypeLabel);
  v6 = [objc_opt_self() conversationKit];
  v12._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0x454D495445434146;
  v7._object = 0xEE004F454449565FLL;
  v8.value._countAndFlagsBits = 0x61737265766E6F43;
  v8.value._object = 0xEF74694B6E6F6974;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v12);

  outlined bridged method (mbnn) of @objc UILabel.text.setter(v10._countAndFlagsBits, v10._object, v5);
}

void CallAgainHUDView.updateAvatar()()
{
  v1 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xC0);
  v8(v5);
  v9 = *(v7 + 7);
  if (v9)
  {
    v10 = v9;
    outlined destroy of ConversationControlsRecipe(v7);
    [v10 removeFromSuperview];
  }

  else
  {
    v11 = outlined destroy of ConversationControlsRecipe(v7);
  }

  (v8)(v11);
  v12 = *(v3 + 7);
  if (v12)
  {
    v13 = v12;
    outlined destroy of ConversationControlsRecipe(v3);
    v14 = [v13 layer];
    [v14 setAllowsHitTesting_];

    [v13 setUserInteractionEnabled_];
    [*(v0 + OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_avatarStack) insertArrangedSubview:v13 atIndex:0];
    swift_unknownObjectWeakAssign();
  }

  else
  {
    outlined destroy of ConversationControlsRecipe(v3);
  }
}

id CallAgainHUDView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CallAgainHUDView.init(coder:)()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_bottomButtonConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_avatarBottomConstraint) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_primaryLabel;
  *(v1 + v2) = closure #1 in variable initialization expression of CallAgainHUDView.primaryLabel();
  v3 = OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_callTypeLabel;
  v4 = [objc_opt_self() preferredFontForTextStyle_];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UILabel);
  v18.value.super.isa = [objc_opt_self() secondaryLabelColor];
  UILabel.init(font:textColor:)(v5, v4, v18);
  *(v1 + v3) = v6;
  v7 = OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_avatarStack;
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v9 = closure #1 in variable initialization expression of CallAgainHUDView.avatarStack(v8);

  *(v1 + v7) = v9;
  v10 = OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_videoMessageStackView;
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v12 = closure #1 in variable initialization expression of CallAgainHUDView.videoMessageStackView(v11);

  *(v1 + v10) = v12;
  v13 = OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_callBackButton;
  *(v1 + v13) = closure #1 in variable initialization expression of CallAgainHUDView.callBackButton();
  v14 = OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_closeButton;
  *(v1 + v14) = closure #1 in variable initialization expression of CallAgainHUDView.closeButton();
  v15 = OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_videoMessageButton;
  *(v1 + v15) = closure #1 in variable initialization expression of CallAgainHUDView.videoMessageButton();
  v16 = OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_effectsView;
  *(v1 + v16) = closure #1 in LocalParticipantView.overlayBlurView.getter();
  *(v1 + OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_avatarStackVerticalSpacingDivisor) = 0x3FCCAC083126E979;
  v17 = OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_showCallDetailsButton;
  *(v1 + v17) = closure #1 in variable initialization expression of CallAgainHUDView.showCallDetailsButton();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CallAgainHUDView.constrainViews()()
{
  v1 = v0;
  static Layout.LocalParticipantViewCameraControls.iOS.getter(v101);
  v2 = v102;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BA930;
    v6 = [v4 widthAnchor];
    v7 = [v6 constraintEqualToConstant_];

    *(inited + 32) = v7;
    v8 = [v4 heightAnchor];
    v9 = [v4 widthAnchor];
    v10 = [v8 constraintEqualToAnchor_];

    *(inited + 40) = v10;
    specialized Array.append<A>(contentsOf:)(inited);
  }

  v11 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v12 = [v11 videoMessagingCalalystEnabled];

  v13 = &OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_closeButton;
  if ((v12 & 1) == 0 && static Platform.current.getter() == 3)
  {
    v13 = &OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_videoMessageStackView;
  }

  v14 = *&v1[*v13];
  v15 = [v1 bottomAnchor];
  v99 = v14;
  v16 = [v14 &off_1E7FE9D20 + 5];
  v17 = [v15 constraintEqualToAnchor_];

  v100 = *&v1[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_videoMessageStackView];
  v18 = [v100 topAnchor];
  v98 = OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_avatarStack;
  v19 = [*&v1[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_avatarStack] &off_1E7FE9D20 + 5];
  v20 = [v18 constraintEqualToAnchor_];

  v21 = *&v1[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_bottomButtonConstraint];
  *&v1[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_bottomButtonConstraint] = v17;
  v96 = v17;

  v22 = *&v1[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_avatarBottomConstraint];
  *&v1[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_avatarBottomConstraint] = v20;
  v94 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1BC4BA7F0;
  v24 = *&v1[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_effectsView];
  v25 = [v24 topAnchor];
  v26 = [v1 topAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v23 + 32) = v27;
  v28 = [v24 bottomAnchor];
  v29 = OUTLINED_FUNCTION_2_127([v1 bottomAnchor]);

  *(v23 + 40) = v29;
  v30 = [v24 trailingAnchor];
  v31 = OUTLINED_FUNCTION_2_127([v1 trailingAnchor]);

  *(v23 + 48) = v31;
  v32 = [v24 leadingAnchor];
  v33 = [v1 leadingAnchor];
  v34 = OUTLINED_FUNCTION_2_52();
  v36 = [v34 v35];

  *(v23 + 56) = v36;
  specialized Array.append<A>(contentsOf:)(v23);
  v37 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  LOBYTE(v33) = [v37 videoMessagingCalalystEnabled];

  if ((v33 & 1) != 0 || static Platform.current.getter() != 3)
  {
    v38 = swift_initStackObject();
    *(v38 + 16) = xmmword_1BC4BA920;
    v39 = *&v1[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_closeButton];
    v40 = [v39 topAnchor];
    v41 = [v100 bottomAnchor];
    v42 = [v40 constraintEqualToAnchor:v41 constant:15.0];

    *(v38 + 32) = v42;
    v43 = [v39 leadingAnchor];
    v44 = OUTLINED_FUNCTION_2_127([v100 leadingAnchor]);

    *(v38 + 40) = v44;
    v45 = [v39 trailingAnchor];
    v46 = [v100 trailingAnchor];
    v47 = OUTLINED_FUNCTION_2_52();
    v49 = [v47 v48];

    *(v38 + 48) = v49;
    v50 = [v1 safeAreaLayoutGuide];
    v51 = [v50 trailingAnchor];

    v52 = *&v1[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_showCallDetailsButton];
    v53 = [v52 trailingAnchor];
    v54 = [v51 constraintEqualToAnchor:v53 constant:v2 + 12.0];

    *(v38 + 56) = v54;
    v55 = [v52 topAnchor];
    v56 = [v1 safeAreaLayoutGuide];
    v57 = [v56 topAnchor];

    v58 = [v55 constraintEqualToAnchor:v57 constant:v2 + -8.0];
    *(v38 + 64) = v58;
    specialized Array.append<A>(contentsOf:)(v38);
  }

  v59 = swift_initStackObject();
  *(v59 + 16) = xmmword_1BC4BA920;
  *(v59 + 32) = v96;
  *(v59 + 40) = v94;
  v60 = *&v1[v98];
  v97 = v96;
  v95 = v94;
  v61 = [v60 centerXAnchor];
  v62 = [v1 centerXAnchor];
  v63 = OUTLINED_FUNCTION_2_52();
  v65 = [v63 v64];

  *(v59 + 48) = v65;
  v66 = [*&v1[v98] leadingAnchor];
  v67 = [v1 leadingAnchor];
  v68 = v2 + -3.0;
  v69 = OUTLINED_FUNCTION_2_52();
  v71 = [v69 v70];

  *(v59 + 56) = v71;
  v72 = [v1 trailingAnchor];
  v73 = [*&v1[v98] trailingAnchor];
  v74 = OUTLINED_FUNCTION_2_52();
  v76 = [v74 v75];

  *(v59 + 64) = v76;
  specialized Array.append<A>(contentsOf:)(v59);
  if (static Platform.current.getter() == 1)
  {
    v77 = swift_initStackObject();
    *(v77 + 16) = xmmword_1BC4BAC30;
    v78 = [v100 centerXAnchor];
    v79 = [v1 centerXAnchor];
    v80 = [v78 constraintEqualToAnchor_];

    *(v77 + 32) = v80;
    specialized Array.append<A>(contentsOf:)(v77);
    v81 = swift_initStackObject();
    *(v81 + 16) = xmmword_1BC4BAC30;
    v82 = [v100 widthAnchor];
    v83 = [v82 constraintEqualToConstant_];

    *(v81 + 32) = v83;
  }

  else
  {
    v81 = swift_initStackObject();
    *(v81 + 16) = xmmword_1BC4BA930;
    v84 = [v100 leadingAnchor];
    v85 = [v1 leadingAnchor];
    v86 = OUTLINED_FUNCTION_2_52();
    v88 = [v86 v87];

    *(v81 + 32) = v88;
    v89 = [v1 trailingAnchor];
    v90 = [v100 trailingAnchor];
    v91 = [v89 constraintEqualToAnchor:v90 constant:v68];

    *(v81 + 40) = v91;
  }

  specialized Array.append<A>(contentsOf:)(v81);
  v92 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v92 activateConstraints_];
}

Swift::Void __swiftcall CallAgainHUDView.layoutSubviews()()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for CallAgainHUDView();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_bottomButtonConstraint];
  if (v1)
  {
    v2 = v1;
    [v0 frame];
    v4 = v3;
    v5 = CallAgainHUDView.buttonBottomPaddingDivisor.getter();
    OUTLINED_FUNCTION_5_109(v4 - v4 * (1.0 - v5));
  }

  v6 = *&v0[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_avatarBottomConstraint];
  if (v6)
  {
    v7 = v6;
    [v0 frame];
    OUTLINED_FUNCTION_5_109(v8 - v8 * (1.0 - *&v0[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_avatarStackVerticalSpacingDivisor]));
  }
}

id CallAgainHUDView.handleContentSizeCategoryDidChange(_:)()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = UIContentSizeCategory.isAccessibilityCategory.getter();
  v4 = *&v0[OBJC_IVAR____TtC15ConversationKit16CallAgainHUDView_videoMessageStackView];

  return [v4 setAxis_];
}

id CallAgainHUDView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CallAgainHUDView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CallAgainHUDView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata completion function for CallAgainHUDView()
{
  result = type metadata accessor for ConversationControlsRecipe();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

id TUJoinConversationRequest.__allocating_init(remoteMembers:)()
{
  OUTLINED_FUNCTION_247();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_41();
  type metadata accessor for NSObject(v1, v2);
  OUTLINED_FUNCTION_41();
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(v3, v4);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v6 = [v0 initWithRemoteMembers_];

  return v6;
}

uint64_t key path getter for PeoplePickerCallCreator.presentScreenTimeShield : PeoplePickerCallCreator@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 96))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CNComposeRecipient) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for PeoplePickerCallCreator.presentScreenTimeShield : PeoplePickerCallCreator(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CNComposeRecipient) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 104);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t PeoplePickerCallCreator.presentScreenTimeShield.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v1);
  return v1;
}

uint64_t PeoplePickerCallCreator.init(callCenter:)(__int128 *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  outlined init with take of TapInteractionHandler(a1, v1 + 32);
  return v1;
}

void PeoplePickerCallCreator.invitePeople(_:withVideo:callerID:activity:messagesGroup:)(id *a1, int a2, void *a3, void *a4, char *a5)
{
  v85 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13MessagesGroupVSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v74 - v15;
  v16 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_3_125();
  v89 = a1;
  if (specialized Array.count.getter(a1) < 1)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();

    os_log(_:dso:log:type:_:)();
    return;
  }

  v76 = v18;
  v77 = v16;
  v80 = v13;
  v81 = a4;
  v82 = v5;
  if (one-time initialization token for conversationKit != -1)
  {
LABEL_46:
    OUTLINED_FUNCTION_0_6();
  }

  v83 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BC4BB980;
  v90 = v89;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit14PickablePersonCGMd);
  v21 = String.init<A>(reflecting:)();
  v23 = v22;
  v24 = MEMORY[0x1E69E6158];
  *(v20 + 56) = MEMORY[0x1E69E6158];
  v25 = lazy protocol witness table accessor for type String and conformance String();
  *(v20 + 64) = v25;
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  LOBYTE(v90) = v85 & 1;
  v26 = String.init<A>(reflecting:)();
  *(v20 + 96) = v24;
  *(v20 + 104) = v25;
  *(v20 + 72) = v26;
  *(v20 + 80) = v27;
  v79 = a5;
  v75 = v6;
  v78 = a3;
  if (a3)
  {
    v90 = a3;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
    v28 = a3;
    v29 = String.init<A>(reflecting:)();
  }

  else
  {
    v30 = 0xE300000000000000;
    v29 = 7104878;
  }

  *(v20 + 136) = v24;
  *(v20 + 144) = v25;
  *(v20 + 112) = v29;
  *(v20 + 120) = v30;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v90 = MEMORY[0x1E69E7CC0];
  v31 = v89;
  v32 = specialized Array.count.getter(v89);
  v33 = 0;
  v87 = v31 & 0xFFFFFFFFFFFFFF8;
  v88 = v31 & 0xC000000000000001;
  v86 = xmmword_1BC4BAC30;
  a3 = 0x1E69D8C00;
  while (v32 != v33)
  {
    if (v88)
    {
      v34 = MEMORY[0x1BFB22010](v33, v89);
    }

    else
    {
      if (v33 >= *(v87 + 16))
      {
        goto LABEL_45;
      }

      v34 = v89[v33 + 4];
    }

    a5 = v34;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v35 = objc_opt_self();
    v36 = MEMORY[0x1BFB209B0](*&a5[OBJC_IVAR____TtC15ConversationKit14PickablePerson_address], *&a5[OBJC_IVAR____TtC15ConversationKit14PickablePerson_address + 8]);
    v37 = [v35 normalizedHandleWithDestinationID_];

    if (v37)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      inited = swift_initStackObject();
      *(inited + 16) = v86;
      *(inited + 32) = v37;
      v6 = v37;
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8TUHandleC_Tt0g5(inited);
      v39 = objc_allocWithZone(MEMORY[0x1E69D8B80]);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
      lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
      isa = Set._bridgeToObjectiveC()().super.isa;

      v41 = [v39 initWithHandles_];

      if (!v41)
      {
        goto LABEL_23;
      }

      MEMORY[0x1BFB20CC0]();
      a5 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a5 >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v83 = v90;
      ++v33;
    }

    else
    {

LABEL_23:
      ++v33;
    }
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUJoinConversationRequest);
  v42 = v83;

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo20TUConversationMemberC_SayAEGTt0g5(v43);
  v44 = TUJoinConversationRequest.__allocating_init(remoteMembers:)();
  v45 = v85;
  [v44 setVideoEnabled_];
  v46 = specialized Array.count.getter(v42);

  if (v46 == 1)
  {
    [v44 setVideo_];
    if ((v45 & 1) == 0)
    {
      v47 = [objc_opt_self() expanseProvider];
      OUTLINED_FUNCTION_7_83(v47, sel_setProvider_);
    }
  }

  [v44 setCallerID_];
  v48 = v79;
  if (one-time initialization token for startMultiwayCall != -1)
  {
    swift_once();
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationInvitationPreference);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationInvitationPreference and conformance NSObject, &lazy cache variable for type metadata for TUConversationInvitationPreference);
  v49.super.isa = Set._bridgeToObjectiveC()().super.isa;
  OUTLINED_FUNCTION_7_83(v49.super.isa, sel_setInvitationPreferences_);

  [v44 setWantsStagingArea_];
  v50 = v84;
  outlined init with copy of MessagesGroup?(v48, v84);
  type metadata accessor for MessagesGroup();
  v51 = OUTLINED_FUNCTION_247();
  if (__swift_getEnumTagSinglePayload(v51, 1, v49.super.isa) == 1)
  {
    outlined destroy of MessagesGroup?(v50);
    v52 = 0;
  }

  else
  {
    v54 = v76;
    v53 = v77;
    v55 = v75;
    (*(v76 + 16))(v75, v50, v77);
    outlined destroy of MessagesGroup(v50);
    v52 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v54 + 8))(v55, v53);
  }

  v57 = v80;
  v56 = v81;
  [v44 setMessagesGroupUUID_];

  outlined init with copy of MessagesGroup?(v48, v57);
  if (__swift_getEnumTagSinglePayload(v57, 1, v49.super.isa) == 1)
  {
    v58 = outlined destroy of MessagesGroup?(v57);
    v59 = 0;
  }

  else
  {
    v60 = v57 + *(v49.super.isa + 5);
    v59 = *v60;
    v61 = *(v60 + 8);

    outlined destroy of MessagesGroup(v57);
    MEMORY[0x1BFB209B0](v59, v61);
    OUTLINED_FUNCTION_247();
  }

  OUTLINED_FUNCTION_7_83(v58, sel_setMessagesGroupName_);

  v62 = [v44 setOriginatingUIType_];
  if (v56)
  {
    v63 = v56;
    OUTLINED_FUNCTION_7_83(v63, sel_setActivity_);
    v64 = [objc_opt_self() expanseProvider];
    [v44 setProvider_];

    [v44 setShouldLaunchBackgroundInCallUI_];
  }

  v65 = v82;
  v66 = (*(*v82 + 96))(v62);
  if (v66)
  {
    v68 = v66;
    v69 = v67;
    v70 = [objc_opt_self() sharedInstance];
    v71 = [v70 callFilterController];

    LODWORD(v70) = [v71 shouldRestrictJoinConversationRequest:v44 performSynchronously:1];
    if (v70)
    {
      v44 = v44;
      v68();

      outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v68, v69);
      goto LABEL_43;
    }

    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v68, v69);
  }

  v72 = v65[7];
  v73 = v65[8];
  __swift_project_boxed_opaque_existential_1(v65 + 4, v72);
  (*(v73 + 224))(v44, v72, v73);
LABEL_43:
}

void PeoplePickerCallCreator.dialCall(provider:video:contact:handle:senderIdentity:ttyType:originatingUIType:)(void *a1, char a2, void *a3, void *a4, void *a5, uint64_t a6, unsigned int a7)
{
  v9 = v7;
  v15 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_3_125();
  v19 = PeoplePickerCallCreator.handleForDialRequest(withProvider:handle:contact:)(a1, a4, a3);
  if (v19)
  {
    v20 = v19;
    v21 = [objc_allocWithZone(MEMORY[0x1E69D8BD0]) initWithProvider_];
    [v21 setVideo_];
    if (a3)
    {
      v22 = [a3 identifier];
      if (!v22)
      {
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = MEMORY[0x1BFB209B0](v23);
      }
    }

    else
    {
      v22 = 0;
    }

    [v21 setContactIdentifier_];

    [v21 setHandle_];
    if (a5)
    {
      v24 = [a5 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v25.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v17 + 8))(v8, v15);
    }

    else
    {
      v25.super.isa = 0;
    }

    [v21 setLocalSenderIdentityUUID_];

    [v21 setTtyType_];
    [v21 setOriginatingUIType_];
    v26 = (*(*v9 + 96))([v21 setPreferDefaultApp_]);
    if (v26)
    {
      v28 = v26;
      v29 = v27;
      v30 = [objc_opt_self() sharedInstance];
      v31 = [v30 callFilterController];

      LODWORD(v30) = [v31 shouldRestrictDialRequest:v21 performSynchronously:1];
      if (v30)
      {
        v32 = v21;
        v28();

        outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v28, v29);
        return;
      }

      outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v28, v29);
    }

    v33 = v9[8];
    __swift_project_boxed_opaque_existential_1(v9 + 4, v9[7]);
    *(swift_allocObject() + 16) = v21;
    v34 = *(v33 + 232);
    v35 = v21;
    v34();
  }
}

id PeoplePickerCallCreator.handleForDialRequest(withProvider:handle:contact:)(void *a1, id a2, void *a3)
{
  if (![a1 isTelephonyProvider] || objc_msgSend(a2, sel_type) == 2)
  {
    v5 = a2;
    return a2;
  }

  if (a3)
  {
    v6 = [a3 phoneNumbers];
    __swift_instantiateConcreteTypeFromMangledNameV2(_sSo14CNLabeledValueCMd);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (specialized Array.count.getter(v7))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v7 & 0xC000000000000001) == 0, v7);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB22010](0, v7);
      }

      else
      {
        v8 = *(v7 + 32);
      }

      v9 = v8;

      v10 = [v9 value];

      if (v10)
      {
        v11 = [v10 stringValue];
        if (!v11)
        {
          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v11 = MEMORY[0x1BFB209B0](v12);
        }

        v13 = outlined bridged method (pb) of @objc CNPhoneNumber.countryCode.getter(v10);
        if (v14)
        {
          v15 = MEMORY[0x1BFB209B0](v13);
        }

        else
        {
          v15 = 0;
        }

        a2 = [objc_opt_self() normalizedPhoneNumberHandleForValue:v11 isoCountryCode:v15];

        return a2;
      }
    }

    else
    {
    }
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BC4BAA20;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  v17 = a2;
  v18 = String.init<A>(reflecting:)();
  v20 = v19;
  v21 = MEMORY[0x1E69E6158];
  *(v16 + 56) = MEMORY[0x1E69E6158];
  v22 = lazy protocol witness table accessor for type String and conformance String();
  *(v16 + 64) = v22;
  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  if (a3)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact);
    v23 = a3;
    v24 = String.init<A>(reflecting:)();
  }

  else
  {
    v25 = 0xE300000000000000;
    v24 = 7104878;
  }

  *(v16 + 96) = v21;
  *(v16 + 104) = v22;
  *(v16 + 72) = v24;
  *(v16 + 80) = v25;
  os_log(_:dso:log:type:_:)();

  return 0;
}

uint64_t closure #1 in PeoplePickerCallCreator.dialCall(provider:video:contact:handle:senderIdentity:ttyType:originatingUIType:)(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = result;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BC4BAA20;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUDialRequest);
    v5 = a2;
    v6 = String.init<A>(reflecting:)();
    v8 = v7;
    v9 = MEMORY[0x1E69E6158];
    *(v4 + 56) = MEMORY[0x1E69E6158];
    v10 = lazy protocol witness table accessor for type String and conformance String();
    *(v4 + 64) = v10;
    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    v11 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v12 = String.init<A>(reflecting:)();
    *(v4 + 96) = v9;
    *(v4 + 104) = v10;
    *(v4 + 72) = v12;
    *(v4 + 80) = v13;
    os_log(_:dso:log:type:_:)();
  }

  return result;
}

void PeoplePickerCallCreator.createCallWithLink(_:facetimeUnavailablePeople:facetimeAvailablePeople:shouldAddOtherInvitedToRemoteMembers:activity:)(void *a1, objc_class *a2, objc_class *a3, char a4)
{
  isa = a2;
  v5 = MEMORY[0x1E69E7CC0];
  v56 = MEMORY[0x1E69E7CC0];
  v6 = specialized Array.count.getter(a2);
  v7 = 0;
  v8 = (isa & 0xC000000000000001);
  v53 = v5;
  v54 = v5;
  while (v6 != v7)
  {
    if (v8)
    {
      v9 = MEMORY[0x1BFB22010](v7, isa);
    }

    else
    {
      if (v7 >= *((isa & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v9 = *(isa + v7 + 4);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      swift_once();
      goto LABEL_38;
    }

    v11 = objc_opt_self();
    v12 = MEMORY[0x1BFB209B0](*&v10[OBJC_IVAR____TtC15ConversationKit14PickablePerson_address], *&v10[OBJC_IVAR____TtC15ConversationKit14PickablePerson_address + 8]);
    v13 = [v11 normalizedHandleWithDestinationID_];

    if (v13)
    {
      v14 = [objc_allocWithZone(MEMORY[0x1E69D8B80]) initWithHandle_];
      v15 = [v14 handle];

      if (!v15)
      {
        goto LABEL_13;
      }

      MEMORY[0x1BFB20CC0]();
      OUTLINED_FUNCTION_0_164();
      if (v16)
      {
        OUTLINED_FUNCTION_2_128();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v53 = v56;
      ++v7;
    }

    else
    {

LABEL_13:
      ++v7;
    }
  }

  v57 = MEMORY[0x1E69E7CC0];
  isa = a3;
  v17 = specialized Array.count.getter(a3);
  v18 = 0;
  while (v17 != v18)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1BFB22010](v18, a3);
    }

    else
    {
      if (v18 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v19 = *(a3 + v18 + 4);
    }

    v20 = v19;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_46;
    }

    v21 = objc_opt_self();
    v22 = MEMORY[0x1BFB209B0](*&v20[OBJC_IVAR____TtC15ConversationKit14PickablePerson_address], *&v20[OBJC_IVAR____TtC15ConversationKit14PickablePerson_address + 8]);
    v23 = [v21 normalizedHandleWithDestinationID_];

    if (v23)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BAC30;
      *(inited + 32) = v23;
      v25 = v23;
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8TUHandleC_Tt0g5(inited);
      v26 = objc_allocWithZone(MEMORY[0x1E69D8B80]);
      v8 = &lazy cache variable for type metadata for TUHandle;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
      lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
      isa = Set._bridgeToObjectiveC()().super.isa;

      v27 = [v26 initWithHandles_];

      if (!v27)
      {
        goto LABEL_27;
      }

      MEMORY[0x1BFB20CC0]();
      OUTLINED_FUNCTION_0_164();
      if (v16)
      {
        OUTLINED_FUNCTION_2_128();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v54 = v57;
      ++v18;
    }

    else
    {

LABEL_27:
      ++v18;
    }
  }

  if ((a4 & 1) != 0 && specialized Array.count.getter(v53))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v53 & 0xC000000000000001) == 0, v53);
    v8 = v52;
    if ((v53 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x1BFB22010](0, v53);
    }

    else
    {
      v28 = *(v53 + 32);
    }

    v29 = v28;
    v30 = [objc_allocWithZone(MEMORY[0x1E69D8B80]) initWithHandle_];
    [v30 setIsOtherInvitedHandle_];
    v31 = v30;
    MEMORY[0x1BFB20CC0]();
    OUTLINED_FUNCTION_0_164();
    if (v16)
    {
      OUTLINED_FUNCTION_2_128();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v32 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5(v53);
    v33 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo20TUConversationMemberC_SayAEGTt0g5(v54);
    objc_allocWithZone(MEMORY[0x1E69D8C10]);
    v34 = @nonobjc TUJoinConversationRequest.init(conversationLink:otherInvitedHandles:remoteMembers:sendLetMeInRequest:)(a1, v32, v33, 0);
  }

  else
  {

    v35 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5(v53);
    v36 = objc_allocWithZone(MEMORY[0x1E69D8C10]);
    v34 = @nonobjc TUJoinConversationRequest.init(conversationLink:otherInvitedHandles:sendLetMeInRequest:)(a1, v35, 0);
    v8 = v52;
  }

  v37 = one-time initialization token for inviteWithMessages;
  isa = v34;
  if (v37 != -1)
  {
    goto LABEL_48;
  }

LABEL_38:
  OUTLINED_FUNCTION_41();
  type metadata accessor for NSObject(v38, v39);
  OUTLINED_FUNCTION_41();
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(v40, v41);
  v42 = Set._bridgeToObjectiveC()().super.isa;
  [(objc_class *)isa setInvitationPreferences:v42];

  [(objc_class *)isa setVideoEnabled:1];
  [(objc_class *)isa setWantsStagingArea:0];

  v43 = (*(*v8 + 96))();
  if (!v43)
  {
LABEL_42:
    __swift_project_boxed_opaque_existential_1(v8 + 4, v8[7]);
    OUTLINED_FUNCTION_41();
    v49();
    goto LABEL_43;
  }

  v45 = v43;
  v46 = v44;
  v47 = [objc_opt_self() sharedInstance];
  v48 = [v47 callFilterController];

  LODWORD(v47) = [v48 shouldRestrictJoinConversationRequest:isa performSynchronously:1];
  if (!v47)
  {
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v45, v46);
    goto LABEL_42;
  }

  v45(isa);
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v45, v46);
LABEL_43:
}

uint64_t PeoplePickerCallCreator.deinit()
{
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + 16), *(v0 + 24));
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  return v0;
}

uint64_t PeoplePickerCallCreator.__deallocating_deinit()
{
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + 16), *(v0 + 24));
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

id @nonobjc TUJoinConversationRequest.init(conversationLink:otherInvitedHandles:sendLetMeInRequest:)(void *a1, uint64_t a2, char a3)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v7 = [v3 initWithConversationLink:a1 otherInvitedHandles:isa sendLetMeInRequest:a3 & 1];

  return v7;
}

id @nonobjc TUJoinConversationRequest.init(conversationLink:otherInvitedHandles:remoteMembers:sendLetMeInRequest:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
  isa = Set._bridgeToObjectiveC()().super.isa;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember);
  v8 = Set._bridgeToObjectiveC()().super.isa;

  v9 = [v4 initWithConversationLink:a1 otherInvitedHandles:isa remoteMembers:v8 sendLetMeInRequest:a4 & 1];

  return v9;
}

uint64_t outlined bridged method (pb) of @objc CNPhoneNumber.countryCode.getter(void *a1)
{
  v1 = [a1 countryCode];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined init with copy of MessagesGroup?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13MessagesGroupVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MessagesGroup?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13MessagesGroupVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of MessagesGroup(uint64_t a1)
{
  v2 = type metadata accessor for MessagesGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SystemBannerDismissalReason.description.getter(uint64_t a1)
{
  result = 0xD000000000000020;
  if (!a1)
  {
    return 0xD000000000000023;
  }

  if (a1 == 2)
  {
    return 0xD000000000000028;
  }

  if (a1 != 1)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  return result;
}

Swift::Int SystemBannerHostError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SystemBannerHostError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  SystemBannerHostError.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

unint64_t SystemBannerDismissalReason.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SystemBannerDismissalReason@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SystemBannerDismissalReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t one-time initialization function for requestPreferredLayoutModeNotification()
{
  result = MEMORY[0x1BFB209B0](0xD00000000000001ALL, 0x80000001BC510CA0);
  static NSNotificationName.requestPreferredLayoutModeNotification = result;
  return result;
}

id static NSNotificationName.requestPreferredLayoutModeNotification.getter()
{
  if (one-time initialization token for requestPreferredLayoutModeNotification != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.requestPreferredLayoutModeNotification;

  return v1;
}

uint64_t static SystemBannerHostViewController.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_bannerIdentifier) == *(a2 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_bannerIdentifier) && *(a1 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_bannerIdentifier + 8) == *(a2 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_bannerIdentifier + 8))
  {
    return OUTLINED_FUNCTION_6_6();
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t key path getter for SystemBannerHostViewController.delegate : SystemBannerHostViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for SystemBannerHostViewController.delegate : SystemBannerHostViewController(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1A8);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t (*SystemBannerHostViewController.delegate.modify())()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  v3 = OUTLINED_FUNCTION_47(v2);
  v4 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_delegate;
  *(v3 + 32) = v0;
  *(v3 + 40) = v4;
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_142_1();
  swift_beginAccess();
  *(v1 + 24) = swift_unknownObjectWeakLoadStrong();
  return SystemBannerHostViewController.delegate.modify;
}

uint64_t key path getter for SystemBannerHostViewController.controlsManager : SystemBannerHostViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1B8))();
  *a2 = result;
  return result;
}

void SystemBannerHostViewController.controlsManager.didset()
{
  if (one-time initialization token for banners != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.banners);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = MEMORY[0x1E69E7D40];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25[0] = v8;
    *v7 = 136315138;
    v9 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_controlsManager;
    swift_beginAccess();
    v10 = *(v2 + v9);
    v11 = *((*v6 & *v10) + 0x2A0);
    v12 = v10;
    v13 = v11();
    v15 = v14;

    v25[1] = v13;
    v25[2] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd);
    v16 = String.init<A>(reflecting:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v25);

    *(v7 + 4) = v18;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Updating the system HUD controls manager for call %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }

  v19 = (*((*v6 & *v2) + 0x2D0))();
  if (v19)
  {
    v21 = v19;
    v22 = v20;
    ObjectType = swift_getObjectType();
    v24 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_controlsManager;
    swift_beginAccess();
    (*(v22 + 104))(*(v2 + v24), ObjectType, v22);
  }
}

id SystemBannerHostViewController.controlsManager.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_controlsManager;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);

  return v2;
}

void SystemBannerHostViewController.controlsManager.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_controlsManager;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  SystemBannerHostViewController.controlsManager.didset();
}

uint64_t SystemBannerHostViewController.controlsManager.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

id SystemBannerHostViewController.callCenter.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B8))();
  v2 = *&v1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter];

  return v2;
}

uint64_t SystemBannerHostViewController.bannerIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_bannerIdentifier);

  return v1;
}

uint64_t key path getter for SystemBannerHostViewController.sizeClass : SystemBannerHostViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1D8))();
  *a2 = result;
  return result;
}

uint64_t SystemBannerHostViewController.sizeClass.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_sizeClass;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t SystemBannerHostViewController.sizeClass.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_sizeClass;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SystemBannerHostViewController.controlsType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_controlsType;
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return outlined init with copy of ConversationControlsType(v1 + v3, a1);
}

uint64_t SystemBannerHostViewController.controlsType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_controlsType;
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_142_1();
  swift_beginAccess();
  outlined assign with take of ConversationControlsType(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t SystemBannerHostViewController.notice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_notice;
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return outlined init with copy of (CGFloat, AutoplayCandidate)(v1 + v3, a1, &_s15ConversationKit6Notice_pSgMd);
}

uint64_t SystemBannerHostViewController.notice.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_notice;
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_142_1();
  swift_beginAccess();
  outlined assign with take of Notice?(a1, v1 + v3);
  return swift_endAccess();
}

id SystemBannerHostViewController.captureOnlyBackdropView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController____lazy_storage___captureOnlyBackdropView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController____lazy_storage___captureOnlyBackdropView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController____lazy_storage___captureOnlyBackdropView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD838]) init];
    [v4 setRenderMode_];
    [v4 setUserInteractionEnabled_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

__n128 SystemBannerHostViewController.OverriddenSystemApertureContent.init(sizeClass:controlsType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  v3 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  result = *(a2 + 25);
  *(a3 + 33) = result;
  return result;
}

uint64_t SystemBannerHostViewController.overriddenSystemApertureContent.didset(uint64_t a1)
{
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, &v23, &_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMd);
  if (v26 == 255)
  {
    v16 = &v23;
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMd);
  }

  v27[0] = v23;
  v27[1] = v24;
  v27[2] = v25;
  v28 = v26;
  v2 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_overriddenSystemApertureContent;
  swift_beginAccess();
  outlined init with copy of (CGFloat, AutoplayCandidate)(v1 + v2, v21, &_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMd);
  if (v22 == 255)
  {
    outlined destroy of SystemBannerHostViewController.OverriddenSystemApertureContent(v27);
    v16 = v21;
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMd);
  }

  v23 = v21[0];
  v24 = v21[1];
  v25 = v21[2];
  v26 = v22;
  if (one-time initialization token for banners != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.banners);
  outlined init with copy of SystemBannerHostViewController.OverriddenSystemApertureContent(v27, v21);
  outlined init with copy of SystemBannerHostViewController.OverriddenSystemApertureContent(&v23, v20);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315394;
    outlined init with copy of SystemBannerHostViewController.OverriddenSystemApertureContent(v21, v18);
    v8 = specialized >> prefix<A>(_:)(v18);
    v10 = v9;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMd);
    outlined destroy of SystemBannerHostViewController.OverriddenSystemApertureContent(v21);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v19);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    outlined init with copy of SystemBannerHostViewController.OverriddenSystemApertureContent(v20, v18);
    v12 = specialized >> prefix<A>(_:)(v18);
    v14 = v13;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMd);
    outlined destroy of SystemBannerHostViewController.OverriddenSystemApertureContent(v20);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v19);

    *(v6 + 14) = v15;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Updated overridden system aperture content from %s to %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v7, -1, -1);
    MEMORY[0x1BFB23DF0](v6, -1, -1);
  }

  else
  {

    outlined destroy of SystemBannerHostViewController.OverriddenSystemApertureContent(v20);
    outlined destroy of SystemBannerHostViewController.OverriddenSystemApertureContent(v21);
  }

  outlined destroy of SystemBannerHostViewController.OverriddenSystemApertureContent(&v23);
  return outlined destroy of SystemBannerHostViewController.OverriddenSystemApertureContent(v27);
}

uint64_t SystemBannerHostViewController.overriddenSystemApertureContent.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_overriddenSystemApertureContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of (CGFloat, AutoplayCandidate)(v1 + v3, v7, &_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMd);
  OUTLINED_FUNCTION_142_1();
  swift_beginAccess();
  outlined assign with copy of SystemBannerHostViewController.OverriddenSystemApertureContent?(a1, v1 + v3);
  swift_endAccess();
  SystemBannerHostViewController.overriddenSystemApertureContent.didset(v7);
  v4 = OUTLINED_FUNCTION_44_0();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, v5);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMd);
}

uint64_t SystemBannerHostViewController.needsCustomTimerForEphemeralSystemApertureState.getter()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_137();
  if ((*(v0 + 472))() == 2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_293();
  if (((*(v1 + 1256))() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_293();
  v2 += 62;
  v3 = *v2;
  (*v2)(v10);
  ConversationControlsType.associatedNotice.getter(v8);
  outlined destroy of ConversationControlsType(v10);
  v4 = v9;
  v5 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s15ConversationKit6Notice_pSgMd);
  if (v4)
  {
    return 1;
  }

  (v3)(v10, v5);
  v6 = v11 == 0;
  if (v11)
  {
    outlined destroy of ConversationControlsType(v10);
  }

  return v6;
}

uint64_t key path getter for SystemBannerHostViewController.systemApertureAlertingManager : SystemBannerHostViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2B8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for SystemBannerHostViewController.systemApertureAlertingManager : SystemBannerHostViewController(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2C0);

  return v2(v3);
}

uint64_t SystemBannerHostViewController.systemApertureAlertingManager.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController____lazy_storage___systemApertureAlertingManager;
  if (*&v0[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController____lazy_storage___systemApertureAlertingManager])
  {
    v2 = *&v0[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController____lazy_storage___systemApertureAlertingManager];
  }

  else
  {
    type metadata accessor for SystemApertureAlertingManager();
    v3 = swift_allocObject();
    v4 = v0;
    v2 = specialized SystemApertureAlertingManager.init(systemApertureElement:sceneStateDescriber:)(v4, v4, v3);
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t (*SystemBannerHostViewController.systemApertureAlertingManager.modify(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = SystemBannerHostViewController.systemApertureAlertingManager.getter();
  return SystemBannerHostViewController.systemApertureAlertingManager.modify;
}

uint64_t key path getter for SystemBannerHostViewController.conversationControlsViewController : SystemBannerHostViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2D0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for SystemBannerHostViewController.conversationControlsViewController : SystemBannerHostViewController(uint64_t a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2D8);
  v5 = *a1;
  return v4(v2, v3);
}

void SystemBannerHostViewController.conversationControlsViewController.didset(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v160 - v9;
  v11 = &v2[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_conversationControlsViewController];
  swift_beginAccess();
  v12 = *v11;
  if (*v11)
  {
    v160 = v10;
    v161 = v7;
    v13 = *(v11 + 1);
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 16);
    v16 = v12;
    v17 = v2;
    v163 = ObjectType;
    v18 = v17;
    v168 = v13;
    v15(v2, &protocol witness table for SystemBannerHostViewController, ObjectType, v13);
    v19 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_overriddenSystemApertureContent;
    swift_beginAccess();
    v169 = v18;
    outlined init with copy of (CGFloat, AutoplayCandidate)(&v18[v19], &v172, &_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMd);
    LODWORD(v19) = v178;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v172, &_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMd);
    if (v19 != 255 && (v169[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isTransitioningToEphemeralSystemApertureContent] & 1) == 0)
    {
      if (one-time initialization token for banners != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.banners);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1BBC58000, v21, v22, "[System] Attempting to replace conversationControlsViewController while ephemeralSystemApertureContent is showing which is unsupported and unexpected", v23, 2u);
        MEMORY[0x1BFB23DF0](v23, -1, -1);
      }
    }

    if (one-time initialization token for banners != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.banners);
    v25 = a1;
    v26 = v16;
    v27 = Logger.logObject.getter();
    v28 = a1;
    v29 = static os_log_type_t.debug.getter();

    v164 = v25;
    v30 = os_log_type_enabled(v27, v29);
    v162 = a2;
    v165 = v28;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v183[0] = v32;
      *v31 = 136315394;
      if (v28)
      {
        v172 = v164;
        v173 = a2;
        v33 = v164;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A22ControlsViewController_pMd);
        v34 = String.init<A>(reflecting:)();
        v36 = v35;
      }

      else
      {
        v36 = 0xE300000000000000;
        v34 = 7104878;
      }

      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v183);

      *(v31 + 4) = v44;
      *(v31 + 12) = 2080;
      v172 = v26;
      v173 = v168;
      v45 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A22ControlsViewController_pMd);
      v46 = String.init<A>(reflecting:)();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v183);

      *(v31 + 14) = v48;
      _os_log_impl(&dword_1BBC58000, v27, v29, "[System] Replacing %s with %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v32, -1, -1);
      MEMORY[0x1BFB23DF0](v31, -1, -1);
    }

    v49 = v169;
    [v169 addChildViewController_];
    v50 = [v49 view];
    if (v50)
    {
      v51 = v50;
      v52 = [v26 view];
      if (v52)
      {
        v53 = v52;
        [v51 addSubview_];

        v54 = [v26 view];
        if (v54)
        {
          v55 = v54;
          [v54 setTranslatesAutoresizingMaskIntoConstraints_];

          v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v56 = swift_allocObject();
          v166 = xmmword_1BC4BA930;
          *(v56 + 16) = xmmword_1BC4BA930;
          v57 = [v26 view];
          if (v57)
          {
            v58 = v57;
            v59 = [v57 topAnchor];

            v60 = [v169 view];
            if (v60)
            {
              v61 = v60;
              v62 = [v60 topAnchor];

              v63 = [v59 constraintEqualToAnchor_];
              *(v56 + 32) = v63;
              v64 = [v26 view];
              if (v64)
              {
                v65 = v64;
                v66 = [v64 bottomAnchor];

                v67 = [v169 view];
                if (v67)
                {
                  v68 = v67;
                  v69 = [v67 bottomAnchor];

                  v70 = [v66 constraintEqualToAnchor_];
                  *(v56 + 40) = v70;
                  v171 = v56;
                  v71 = [objc_opt_self() currentDevice];
                  v72 = [v71 userInterfaceIdiom];

                  v73 = &off_1E7FE9000;
                  if (v72 == 1)
                  {
                    inited = swift_initStackObject();
                    *(inited + 16) = v166;
                    v75 = [v26 view];
                    if (!v75)
                    {
LABEL_63:
                      __break(1u);
                      goto LABEL_64;
                    }

                    v76 = v75;
                    v77 = [v75 widthAnchor];

                    (*(v168 + 56))(v163);
                    v78 = [v77 constraintEqualToConstant_];

                    *(inited + 32) = v78;
                    v79 = [v26 view];
                    if (!v79)
                    {
LABEL_65:
                      __break(1u);
                      goto LABEL_66;
                    }

                    v80 = v79;
                    v73 = &selRef_centerXAnchor;
                    v81 = [v79 centerXAnchor];

                    v82 = [v169 view];
                    if (v82)
                    {
LABEL_39:
                      v92 = v82;
                      v93 = [v82 *v73];

                      v94 = [v81 constraintEqualToAnchor_];
                      *(inited + 40) = v94;
                      specialized Array.append<A>(contentsOf:)(inited);
                      type metadata accessor for ConversationHUDViewController();
                      v95 = swift_dynamicCastClass();
                      if (v95 && (v169[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isSystemAperturePresentation] & 1) == 0)
                      {
                        v96 = v95;
                        v97 = objc_allocWithZone(MEMORY[0x1E69DD250]);
                        *&v166 = v26;
                        v98 = [v97 init];
                        [v98 setTranslatesAutoresizingMaskIntoConstraints_];
                        v99 = [v98 layer];
                        v100 = *((*MEMORY[0x1E69E7D40] & *v96) + 0x190);
                        v100(v179);
                        v101 = [v179[0] CGColor];
                        outlined destroy of HUDShadowProperties(v179);
                        [v99 setShadowColor_];

                        v102 = [v98 layer];
                        v100(&v180);
                        outlined destroy of HUDShadowProperties(&v180);
                        LODWORD(v103) = v181;
                        [v102 setShadowOpacity_];

                        v104 = [v98 layer];
                        v100(v182);
                        outlined destroy of HUDShadowProperties(v182);
                        [v104 setShadowRadius_];

                        v105 = [v98 layer];
                        v100(v183);
                        outlined destroy of HUDShadowProperties(v183);
                        [v105 setShadowOffset_];

                        v106 = [v98 layer];
                        [v106 setShadowPathIsBounds_];

                        v107 = v169;
                        v108 = *&v169[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_shadowView];
                        *&v169[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_shadowView] = v98;
                        v109 = v98;

                        v110 = [v107 view];
                        if (!v110)
                        {
LABEL_70:
                          __break(1u);
                          return;
                        }

                        v111 = v110;
                        [v110 insertSubview:v109 atIndex:1];

                        v112 = swift_initStackObject();
                        *(v112 + 16) = xmmword_1BC4BA7F0;
                        v113 = [v109 topAnchor];
                        v114 = v109;
                        v115 = *((*MEMORY[0x1E69E7D40] & *v96) + 0x1F8);
                        v116 = v115();
                        v117 = [v116 topAnchor];

                        v118 = [v113 constraintEqualToAnchor_];
                        *(v112 + 32) = v118;
                        v119 = [v114 leadingAnchor];
                        v120 = v115();
                        v121 = [v120 leadingAnchor];

                        v122 = [v119 constraintEqualToAnchor_];
                        *(v112 + 40) = v122;
                        v123 = [v114 bottomAnchor];
                        v124 = v115();
                        v125 = [v124 bottomAnchor];

                        v126 = [v123 constraintEqualToAnchor_];
                        *(v112 + 48) = v126;
                        v127 = [v114 trailingAnchor];
                        v128 = v115();
                        v129 = [v128 trailingAnchor];

                        v130 = [v127 constraintEqualToAnchor_];
                        *(v112 + 56) = v130;
                        specialized Array.append<A>(contentsOf:)(v112);
                      }

                      v131 = objc_opt_self();
                      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
                      isa = Array._bridgeToObjectiveC()().super.isa;
                      [v131 activateConstraints_];

                      SystemBannerHostViewController.installSystemApertureViewsIfNeeded()(v133, v134, v135, v136, v137, v138, v139, v140, v160, v161, v162, v163, v164, v165, v166, *(&v166 + 1), v167, v168, v169, v170);
                      if (!v165)
                      {
                        v157 = type metadata accessor for ConversationControlsRecipe();
                        v158 = v160;
                        __swift_storeEnumTagSinglePayload(v160, 1, 1, v157);
                        v159 = v161;
                        (*(v168 + 32))(v163);
                        SystemBannerHostViewController.alertIfNeededForRecipeTransition(from:to:)(v158, v159);
                        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v159, &_s15ConversationKit0A14ControlsRecipeVSgMd);
                        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v158, &_s15ConversationKit0A14ControlsRecipeVSgMd);

LABEL_51:
                        [v26 didMoveToParentViewController_];

                        return;
                      }

                      v141 = v164;
                      v142 = [v26 view];
                      if (v142)
                      {
                        v143 = v142;
                        [v142 setAlpha_];

                        [v141 willMoveToParentViewController_];
                        v144 = [v141 view];
                        if (v144)
                        {
                          v145 = v144;
                          v146 = [v26 view];
                          if (v146)
                          {
                            v147 = v146;

                            v148 = objc_opt_self();
                            if (one-time initialization token for shared != -1)
                            {
                              swift_once();
                            }

                            v149 = (*(*static Defaults.shared + 1056))();
                            v150 = swift_allocObject();
                            swift_unknownObjectWeakInit();
                            v151 = swift_allocObject();
                            v152 = v162;
                            v151[2] = v141;
                            v151[3] = v152;
                            v153 = v168;
                            v151[4] = v26;
                            v151[5] = v153;
                            v151[6] = v150;
                            v176 = partial apply for closure #1 in SystemBannerHostViewController.conversationControlsViewController.didset;
                            v177 = v151;
                            v172 = MEMORY[0x1E69E9820];
                            v173 = 1107296256;
                            v174 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
                            v175 = &block_descriptor_117;
                            v154 = _Block_copy(&v172);
                            v155 = v26;
                            v156 = v141;

                            [v148 transitionFromView:v145 toView:v147 duration:5242880 options:v154 completion:v149];

                            _Block_release(v154);
                            goto LABEL_51;
                          }

                          goto LABEL_62;
                        }

LABEL_61:
                        __break(1u);
LABEL_62:
                        __break(1u);
                        goto LABEL_63;
                      }

LABEL_60:
                      __break(1u);
                      goto LABEL_61;
                    }

                    __break(1u);
                  }

                  inited = swift_initStackObject();
                  *(inited + 16) = v166;
                  v83 = [v26 view];
                  if (!v83)
                  {
LABEL_64:
                    __break(1u);
                    goto LABEL_65;
                  }

                  v84 = v83;
                  v85 = [v83 v73[478]];

                  v86 = [v169 view];
                  if (!v86)
                  {
LABEL_66:
                    __break(1u);
                    goto LABEL_67;
                  }

                  v87 = v86;
                  v88 = [v86 v73[478]];

                  v89 = [v85 constraintEqualToAnchor_];
                  *(inited + 32) = v89;
                  v90 = [v26 view];
                  if (!v90)
                  {
LABEL_67:
                    __break(1u);
                    goto LABEL_68;
                  }

                  v91 = v90;
                  v73 = &selRef_trailingAnchor;
                  v81 = [v90 trailingAnchor];

                  v82 = [v169 view];
                  if (!v82)
                  {
LABEL_68:
                    __break(1u);
LABEL_69:
                    __break(1u);
                    goto LABEL_70;
                  }

                  goto LABEL_39;
                }

LABEL_59:
                __break(1u);
                goto LABEL_60;
              }

LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_55;
  }

  if (!a1)
  {
    return;
  }

  v37 = a1;
  [v37 willMoveToParentViewController_];
  v38 = [v37 view];
  if (!v38)
  {
    goto LABEL_69;
  }

  v39 = v38;
  [v38 removeFromSuperview];

  [v37 removeFromParentViewController];
  if (one-time initialization token for banners != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, static Logger.banners);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_1BBC58000, v41, v42, "[System] Removed conversationControlsViewController without replacement", v43, 2u);
    MEMORY[0x1BFB23DF0](v43, -1, -1);
  }
}

id closure #1 in SystemBannerHostViewController.conversationControlsViewController.didset(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  ObjectType = swift_getObjectType();
  [a2 removeFromParentViewController];
  v16 = swift_getObjectType();
  result = [a4 view];
  if (result)
  {
    v18 = result;
    [result setAlpha_];

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v19 = result;
      if (*(result + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isSystemAperturePresentation) == 1)
      {
        SystemBannerHostViewController.updateSystemApertureElement()();
      }

      (*(a3 + 32))(ObjectType, a3);
      (*(a5 + 32))(v16, a5);
      SystemBannerHostViewController.alertIfNeededForRecipeTransition(from:to:)(v14, v11);

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s15ConversationKit0A14ControlsRecipeVSgMd);
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SystemBannerHostViewController.conversationControlsViewController.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_conversationControlsViewController);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void SystemBannerHostViewController.conversationControlsViewController.setter(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_conversationControlsViewController;
  OUTLINED_FUNCTION_13_21();
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = a1;
  *(v5 + 8) = a2;
  v8 = a1;
  SystemBannerHostViewController.conversationControlsViewController.didset(v6, v7);
}

uint64_t SystemBannerHostViewController.conversationControlsViewController.modify()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *(OUTLINED_FUNCTION_47(v2) + 40) = v0;
  v3 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_conversationControlsViewController;
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return OUTLINED_FUNCTION_44_0();
}

void SystemBannerHostViewController.conversationControlsViewController.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*a1 + 32);
  if (a2)
  {
    v6 = v3;
    SystemBannerHostViewController.conversationControlsViewController.setter(v3, v5);
  }

  else
  {
    SystemBannerHostViewController.conversationControlsViewController.setter(*(*a1 + 24), v5);
  }

  free(v2);
}

BOOL SystemBannerHostViewController.hasRootViewController.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2D0))();
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t SystemBannerHostViewController.requesterIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_requesterIdentifier);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SystemBannerHostViewController.requesterIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_requesterIdentifier);
  OUTLINED_FUNCTION_13_21();
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t key path getter for SystemBannerHostViewController.requesterIdentifier : SystemBannerHostViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x308))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for SystemBannerHostViewController.requesterIdentifier : SystemBannerHostViewController(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x310);

  return v4(v2, v3);
}

uint64_t key path getter for SystemBannerHostViewController.layoutDescription : SystemBannerHostViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x320))();
  *a2 = result;
  return result;
}

uint64_t key path setter for SystemBannerHostViewController.layoutDescription : SystemBannerHostViewController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x328);
  v4 = *a1;
  return v3(v2);
}

void *SystemBannerHostViewController.layoutDescription.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_layoutDescription;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SystemBannerHostViewController.layoutDescription.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_layoutDescription;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t SystemBannerHostViewController.panGestureProxy.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_panGestureProxy);
  *(v1 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_panGestureProxy) = a1;
  swift_unknownObjectRetain();
  if (v2)
  {
    [v2 setActionHandler_];
  }

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t key path getter for SystemBannerHostViewController.presentableContext : SystemBannerHostViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x350))();
  *a2 = result;
  return result;
}

uint64_t key path setter for SystemBannerHostViewController.presentableContext : SystemBannerHostViewController(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x358);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t (*SystemBannerHostViewController.presentableContext.modify())()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  v3 = OUTLINED_FUNCTION_47(v2);
  v4 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_presentableContext;
  *(v3 + 32) = v0;
  *(v3 + 40) = v4;
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_142_1();
  swift_beginAccess();
  *(v1 + 24) = swift_unknownObjectWeakLoadStrong();
  return SystemBannerHostViewController.presentableContext.modify;
}

void SystemBannerHostViewController.gesturePriorityAssertion.willset()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_gesturePriorityAssertion;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_gesturePriorityAssertion))
  {
    v2 = v0;
    if (one-time initialization token for banners != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.banners);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1BBC58000, v4, v5, "[System] invalidating gesturePriorityAssertion", v6, 2u);
      MEMORY[0x1BFB23DF0](v6, -1, -1);
    }

    v7 = *(v2 + v1);
    if (v7)
    {

      [v7 invalidate];
    }
  }
}

uint64_t SystemBannerHostViewController.activityUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_activityUUID;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

id SystemBannerHostViewController.hasPresentedFullScreenCallUI.getter(SEL *a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1A0))();
  if (!v3)
  {
    return 0;
  }

  v4 = [v3 *a1];
  swift_unknownObjectRelease();
  return v4;
}

void SystemBannerHostViewController.isMicIndicatorVisible.getter()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for ConversationControlsAction();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  v4 = v3 - v2;
  v5 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  OUTLINED_FUNCTION_13_2();
  v13 = (*((*MEMORY[0x1E69E7D40] & v11) + 0x2D0))();
  if (v13)
  {
    v14 = v12;
    ObjectType = swift_getObjectType();
    (*(v14 + 32))(ObjectType, v14);

    if (__swift_getEnumTagSinglePayload(v10, 1, v5))
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit0A14ControlsRecipeVSgMd);
      LOBYTE(v13) = 0;
    }

    else
    {
      outlined init with copy of ConversationControlsRecipe(v10, v0);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit0A14ControlsRecipeVSgMd);
      v16 = v0 + *(v5 + 60);
      v17 = *(v16 + 40);
      if (v17 <= 0xFD)
      {
        v18 = *v16;
        v19 = *(v16 + 8);
        v20 = *(v16 + 16);
        v21 = *(v16 + 24);
        v22 = *(v16 + 32);
        if ((v17 & 0x80) != 0)
        {
          v28 = MEMORY[0x1E69E7CC0];
          outlined copy of ConversationControlsRecipe.Actions(v18, v19, v20, v21, v22);
        }

        else
        {
          v28 = *v16;
          outlined copy of ConversationControlsRecipe.Actions(v18, v19, v20, v21, v22);
          v18 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        v18 = MEMORY[0x1E69E7CC0];
        v28 = MEMORY[0x1E69E7CC0];
      }

      specialized Array.append<A>(contentsOf:)(v18);
      v23 = v28;
      v24 = swift_storeEnumTagMultiPayload();
      MEMORY[0x1EEE9AC00](v24);
      *(&v27 - 2) = v4;
      LOBYTE(v13) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v27 - 4), v23);

      OUTLINED_FUNCTION_1_132();
      _s15ConversationKit0A14ControlsRecipeVWOhTm_3(v0, v25);
      _s15ConversationKit0A14ControlsRecipeVWOhTm_3(v4, type metadata accessor for ConversationControlsAction);
    }
  }

  if ((SBUIIsSystemApertureEnabled() ^ 1) & 1) == 0 && (v13)
  {
    OUTLINED_FUNCTION_293();
    (*(v26 + 1368))();
  }

  OUTLINED_FUNCTION_30_0();
}

char *SystemBannerHostViewController.__allocating_init(controlsManager:sizeClass:type:delegate:isSystemAperturePresentation:requesterIdentifier:destination:layoutDescription:defaults:features:notificationCenter:activityUUID:fromActivityManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  OUTLINED_FUNCTION_35_21(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = objc_allocWithZone(v8);
  ObjectType = swift_getObjectType();
  return OUTLINED_FUNCTION_36_27(ObjectType, v11, v12, v13, v14, v15, v16, v17, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, SHIDWORD(v32), v33);
}

char *SystemBannerHostViewController.init(controlsManager:sizeClass:type:delegate:isSystemAperturePresentation:requesterIdentifier:destination:layoutDescription:defaults:features:notificationCenter:activityUUID:fromActivityManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  OUTLINED_FUNCTION_35_21(a1, a2, a3, a4, a5, a6, a7, a8);
  ObjectType = swift_getObjectType();
  return OUTLINED_FUNCTION_36_27(ObjectType, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, SHIDWORD(v30), v31);
}

uint64_t closure #2 in SystemBannerHostViewController.init(controlsManager:sizeClass:type:delegate:isSystemAperturePresentation:requesterIdentifier:destination:layoutDescription:defaults:features:notificationCenter:activityUUID:fromActivityManager:)(void *a1)
{
  if (*a1)
  {
    v1 = dispatch thunk of DispatchWorkItem.isCancelled.getter() ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t closure #4 in SystemBannerHostViewController.init(controlsManager:sizeClass:type:delegate:isSystemAperturePresentation:requesterIdentifier:destination:layoutDescription:defaults:features:notificationCenter:activityUUID:fromActivityManager:)(uint64_t *a1)
{
  v1 = *a1;
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_165();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, static Logger.banners);
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v4 = OUTLINED_FUNCTION_25_38();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_20_43();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_182_0(v6);
    OUTLINED_FUNCTION_8_10();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    v12 = OUTLINED_FUNCTION_2_35();
    MEMORY[0x1BFB23DF0](v12);
  }

  if (v1)
  {
    dispatch thunk of DispatchWorkItem.perform()();
  }

  return $defer #1 () in closure #4 in SystemBannerHostViewController.init(controlsManager:sizeClass:type:delegate:isSystemAperturePresentation:requesterIdentifier:destination:layoutDescription:defaults:features:notificationCenter:activityUUID:fromActivityManager:)();
}

uint64_t $defer #1 () in closure #4 in SystemBannerHostViewController.init(controlsManager:sizeClass:type:delegate:isSystemAperturePresentation:requesterIdentifier:destination:layoutDescription:defaults:features:notificationCenter:activityUUID:fromActivityManager:)()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    CurrentValueSubject.send(_:)();
  }

  return result;
}

id SystemBannerHostViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SystemBannerHostViewController.init(coder:)()
{
  v1 = v0;
  swift_unknownObjectWeakInit();
  v2 = v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_notice;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  v3 = (v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_captureGroupName);
  *v3 = 0xD00000000000001ALL;
  v3[1] = 0x80000001BC5103D0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController____lazy_storage___captureOnlyBackdropView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_shadowView) = 0;
  v4 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_invalidationTaskSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy8Dispatch0E8WorkItemCSgs5NeverOGMd);
  swift_allocObject();
  *(v0 + v4) = CurrentValueSubject.init(_:)();
  *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_invalidationCancellable) = 0;
  v5 = v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_overriddenSystemApertureContent;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = -1;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isTransitioningToEphemeralSystemApertureContent) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController____lazy_storage___systemApertureAlertingManager) = 0;
  v6 = (v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_conversationControlsViewController);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_expandedForMenuPresentation) = 0;
  v7 = (v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_requesterIdentifier);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_layoutDescription) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_panGestureProxy) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_dismissalPreventionAssertion) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_gesturePriorityAssertion) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isPresentingMenu) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_forceSuppressSystemApertureOverAssociatedScene) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isShowingSystemApertureOverAssociatedScene) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_activeLayoutMode) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_canRequestAlertingAssertion) = 0;
  v8 = v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_nextSystemApertureLayoutMode;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_contentRole) = 2;
  v9 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_leadingViewContainer;
  v10 = type metadata accessor for SystemApertureContainerView();
  *(v1 + v9) = [objc_allocWithZone(v10) init];
  v11 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_trailingViewContainer;
  *(v1 + v11) = [objc_allocWithZone(v10) init];
  v12 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_minimalViewContainer;
  *(v1 + v12) = [objc_allocWithZone(v10) init];
  v13 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_detachedMinimalViewContainer;
  *(v1 + v13) = [objc_allocWithZone(v10) init];
  v14 = *MEMORY[0x1E69D45B0];
  *(v1 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_elementIdentifier) = *MEMORY[0x1E69D45B0];
  v15 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_keyColor;
  v16 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v17 = v14;
  *(v1 + v15) = [v16 initWithRed:0.192 green:0.82 blue:0.345 alpha:1.0];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id SystemBannerHostViewController.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_notificationCenter] removeObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemBannerHostViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SystemBannerHostViewController.isPresentingMenu.didset(uint64_t result)
{
  v2 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isPresentingMenu;
  if (v1[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isPresentingMenu] != (result & 1))
  {
    v3 = v1;
    if (one-time initialization token for banners != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.banners);
    v5 = v1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v3[v2];

      _os_log_impl(&dword_1BBC58000, v6, v7, "[SystemAperture] isPresentingMenu: %{BOOL}d", v8, 8u);
      MEMORY[0x1BFB23DF0](v8, -1, -1);
    }

    else
    {

      v6 = v5;
    }

    return (*((*MEMORY[0x1E69E7D40] & v5->isa) + 0x440))(v3[v2]);
  }

  return result;
}

uint64_t SystemBannerHostViewController.isPresentingMenu.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isPresentingMenu);
  *(v1 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isPresentingMenu) = a1;
  return SystemBannerHostViewController.isPresentingMenu.didset(v2);
}

void SystemBannerHostViewController.processContextMenuNotification(_:for:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_log_t log, int a10, int a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_104_5();
  a28 = v30;
  a29 = v31;
  v32 = v29;
  v34 = v33;
  v35 = 0xEB00000000746E65;
  v36 = *((*MEMORY[0x1E69E7D40] & v29->isa) + 0x558);
  v37 = v36();
  if (v37 == 4)
  {
    if (v34)
    {
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v38 = 1;
    }

    v37 = SystemBannerHostViewController.isPresentingMenu.setter(v38 & 1);
  }

  if (((v36)(v37) - 2) <= 2)
  {
    v39 = Notification.userInfo.getter();
    if (v39)
    {
      v40 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v39);

      if (v40)
      {
        specialized Dictionary.subscript.getter(v40, &a14);

        if (a17)
        {
          type metadata accessor for SBUISystemApertureLayoutMode(0);
          if (swift_dynamicCast())
          {
            v41 = a13;
            if (a13 - 2 <= 2)
            {
              v42 = v32;
              if (v36() != v41)
              {
                if (one-time initialization token for banners != -1)
                {
                  OUTLINED_FUNCTION_0_165();
                  swift_once();
                }

                v43 = type metadata accessor for Logger();
                OUTLINED_FUNCTION_52(v43, static Logger.banners);
                v44 = v32;
                v42 = Logger.logObject.getter();
                v45 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v42, v45))
                {
                  OUTLINED_FUNCTION_12_0();
                  v87 = v45;
                  v46 = swift_slowAlloc();
                  OUTLINED_FUNCTION_59_10();
                  a14 = swift_slowAlloc();
                  *v46 = 136446722;
                  if (v34)
                  {
                    v47 = 0x696D736944646964;
                  }

                  else
                  {
                    v47 = 0x736572506C6C6977;
                  }

                  loga = v42;
                  if (v34)
                  {
                    v48 = 0xEA00000000007373;
                  }

                  else
                  {
                    v48 = 0xEB00000000746E65;
                  }

                  v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &a14);

                  *(v46 + 4) = v49;
                  *(v46 + 12) = 2082;
                  v50 = SBUISystemApertureLayoutModeDescription();
                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                  OUTLINED_FUNCTION_243_0();

                  v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v41, &a14);

                  *(v46 + 14) = v51;
                  *(v46 + 22) = 2082;
                  (v36)(v52);
                  v53 = SBUISystemApertureLayoutModeDescription();
                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                  OUTLINED_FUNCTION_243_0();

                  v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v41, &a14);

                  *(v46 + 24) = v54;
                  v42 = loga;
                  _os_log_impl(&dword_1BBC58000, loga, v87, "[SystemAperture] %{public}s systemApertureLayoutMode %{public}s != activeLayoutMode %{public}s", v46, 0x20u);
                  swift_arrayDestroy();
                  v55 = OUTLINED_FUNCTION_2_35();
                  MEMORY[0x1BFB23DF0](v55);
                  v56 = OUTLINED_FUNCTION_5_110();
                  MEMORY[0x1BFB23DF0](v56);
                }
              }

              if (one-time initialization token for banners != -1)
              {
                OUTLINED_FUNCTION_0_165();
                swift_once();
              }

              v57 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_52(v57, static Logger.banners);
              v58 = v32;
              v59 = Logger.logObject.getter();
              v60 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v59, v60))
              {
                OUTLINED_FUNCTION_9_44();
                v61 = swift_slowAlloc();
                OUTLINED_FUNCTION_8_15();
                a13 = swift_slowAlloc();
                *v61 = 136446466;
                if (v34)
                {
                  v62 = 0x696D736944646964;
                }

                else
                {
                  v62 = 0x736572506C6C6977;
                }

                if (v34)
                {
                  v35 = 0xEA00000000007373;
                }

                getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v35, &a13);
                OUTLINED_FUNCTION_28_0();

                *(v61 + 4) = v42;
                *(v61 + 12) = 2082;
                (v36)(v63);
                v64 = SBUISystemApertureLayoutModeDescription();
                v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v67 = v66;

                a14 = v65;
                a15 = v67;
                v68 = String.init<A>(reflecting:)();
                getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &a13);
                OUTLINED_FUNCTION_28_0();

                *(v61 + 14) = v65;
                _os_log_impl(&dword_1BBC58000, v59, v60, "[SystemAperture] %{public}s with activeLayoutMode: %{public}s", v61, 0x16u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_3_4();
                MEMORY[0x1BFB23DF0]();
                v70 = OUTLINED_FUNCTION_2_35();
                MEMORY[0x1BFB23DF0](v70);
              }

              goto LABEL_45;
            }
          }
        }

        else
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&a14, &_sypSgMd);
        }
      }
    }
  }

  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_165();
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v71, static Logger.banners);
  v72 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v73 = OUTLINED_FUNCTION_12_64();
  if (os_log_type_enabled(v73, v74))
  {
    OUTLINED_FUNCTION_13_10();
    v75 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_0();
    v76 = swift_slowAlloc();
    a14 = v76;
    *v75 = 136446210;
    if (v34)
    {
      v77 = 0x696D736944646964;
    }

    else
    {
      v77 = 0x736572506C6C6977;
    }

    if (v34)
    {
      v35 = 0xEA00000000007373;
    }

    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v35, &a14);

    *(v75 + 4) = v78;
    OUTLINED_FUNCTION_11_44();
    _os_log_impl(v79, v80, v81, v82, v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v76);
    v84 = OUTLINED_FUNCTION_5_110();
    MEMORY[0x1BFB23DF0](v84);
    v85 = OUTLINED_FUNCTION_3_126();
    MEMORY[0x1BFB23DF0](v85);
  }

LABEL_45:
  OUTLINED_FUNCTION_31_0();
}

void SystemBannerHostViewController.handleSceneStateChangeNotification(_:)()
{
  v2 = v0;
  Notification.object.getter();
  if (!v38)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v35, &_sypSgMd);
    return;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIWindowScene);
  if (swift_dynamicCast())
  {
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 window];

      v6 = [v5 windowScene];
      if (!v6)
      {

        return;
      }

      v7 = v34;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        v9 = MEMORY[0x1E69E7D40];
        OUTLINED_FUNCTION_53_1();
        v11 = (*(v10 + 88))();
        if (v11)
        {
          v12 = v11;
          type metadata accessor for SystemApertureInCallWaveformTrailingView();
          OUTLINED_FUNCTION_170();
          if (!swift_dynamicCastClass())
          {

            return;
          }

          if (one-time initialization token for banners != -1)
          {
            OUTLINED_FUNCTION_0_165();
            swift_once();
          }

          v13 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v13, static Logger.banners);
          v14 = v2;
          v15 = Logger.logObject.getter();
          v16 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v15, v16))
          {
            OUTLINED_FUNCTION_13_10();
            v17 = swift_slowAlloc();
            OUTLINED_FUNCTION_12_0();
            v18 = swift_slowAlloc();
            v34 = v18;
            *v17 = 136446210;
            (*((*v9 & *v14) + 0x558))();
            v19 = SBUISystemApertureLayoutModeDescription();
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            OUTLINED_FUNCTION_243_0();

            v35 = v9;
            v36 = v1;
            v20 = String.init<A>(reflecting:)();
            v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v34);

            *(v17 + 4) = v22;
            _os_log_impl(&dword_1BBC58000, v15, v16, "Updating waveform for scene state change, layout mode: %{public}s", v17, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v18);
            OUTLINED_FUNCTION_3_4();
            MEMORY[0x1BFB23DF0]();
            v23 = OUTLINED_FUNCTION_5_110();
            MEMORY[0x1BFB23DF0](v23);
          }

          else
          {
          }

          OUTLINED_FUNCTION_53_1();
          v25 = (*(v24 + 1368))();
          SystemBannerHostViewController.updateWaveformForLayoutMode(_:)(v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, SWORD2(v35), SBYTE6(v35), SHIBYTE(v35), v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void SystemBannerHostViewController.callDisplayContextChanged(_:)()
{
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_165();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v0, static Logger.banners);
  v1 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v2 = OUTLINED_FUNCTION_25_38();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_20_43();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_182_0(v4);
    OUTLINED_FUNCTION_8_10();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    v10 = OUTLINED_FUNCTION_2_35();
    MEMORY[0x1BFB23DF0](v10);
  }

  if ((Features.callManagerEnabled.getter() & 1) == 0)
  {
    goto LABEL_11;
  }

  Notification.object.getter();
  if (!v17[3])
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_sypSgMd);
LABEL_11:
    v12 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_293();
    (*(v13 + 496))(v17);
    OUTLINED_FUNCTION_11_23();
    (*((*v12 & v14) + 0x1D8))();
    OUTLINED_FUNCTION_11_23();
    (*((*v12 & v15) + 0x418))(v17);
    outlined destroy of ConversationControlsType(v17);
    return;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = [v16 status];

  if (v11 != 4)
  {
    goto LABEL_11;
  }
}

uint64_t @objc SystemBannerHostViewController.contextMenuWillPresent(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = type metadata accessor for Notification();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a1;
  a4(v4);

  return (*(v9 + 8))(v4, v7);
}

Swift::Void __swiftcall SystemBannerHostViewController.viewDidLoad()()
{
  OUTLINED_FUNCTION_272();
  v33 = v1;
  v34 = v2;
  v3 = type metadata accessor for SystemBannerHostViewController();
  v32.receiver = v0;
  v32.super_class = v3;
  objc_msgSendSuper2(&v32, sel_viewDidLoad);
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  v6 = SystemBannerHostViewController.captureOnlyBackdropView.getter();
  [v5 insertSubview:v6 atIndex:0];

  v7 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController____lazy_storage___captureOnlyBackdropView;
  [*&v0[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController____lazy_storage___captureOnlyBackdropView] setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC4BA7F0;
  v9 = [*&v0[v7] topAnchor];
  v10 = OUTLINED_FUNCTION_2_34();
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  v12 = [v10 topAnchor];

  v13 = OUTLINED_FUNCTION_83();
  *(v8 + 32) = v13;
  v14 = [*&v0[v7] leadingAnchor];
  v15 = OUTLINED_FUNCTION_2_34();
  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  v17 = [v15 leadingAnchor];

  v18 = OUTLINED_FUNCTION_83();
  *(v8 + 40) = v18;
  v19 = [*&v0[v7] bottomAnchor];
  v20 = OUTLINED_FUNCTION_2_34();
  if (!v20)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = v20;
  v22 = [v20 bottomAnchor];

  v23 = OUTLINED_FUNCTION_83();
  *(v8 + 48) = v23;
  v24 = [*&v0[v7] trailingAnchor];
  v25 = [v0 view];
  if (!v25)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = objc_opt_self();
  v28 = [v26 trailingAnchor];

  v29 = [v24 constraintEqualToAnchor_];
  *(v8 + 56) = v29;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints_];

  OUTLINED_FUNCTION_287();
  if (v31)
  {
    SystemBannerHostViewController.updateSystemApertureElement()();
  }

  OUTLINED_FUNCTION_194_0();
}

void SystemBannerHostViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v4 = v3;
  swift_getObjectType();
  v39.receiver = v3;
  v39.super_class = type metadata accessor for SystemBannerHostViewController();
  objc_msgSendSuper2(&v39, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  [v3 preferredContentSize];
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_165();
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v8, static Logger.banners);
  v9 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v10 = OUTLINED_FUNCTION_12_64();
  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_12_0();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_59_10();
    v33 = swift_slowAlloc();
    *v12 = 136446722;
    v13 = _typeName(_:qualified:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v33);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2082;
    v16 = CGSize.debugDescription.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v33);

    *(v12 + 14) = v18;
    *(v12 + 22) = 2082;
    v19 = CGSize.debugDescription.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v33);

    *(v12 + 24) = v21;
    OUTLINED_FUNCTION_11_44();
    _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0](v27);
    v28 = OUTLINED_FUNCTION_3_126();
    MEMORY[0x1BFB23DF0](v28);
  }

  v37 = TPNumberPadCharacter.rawValue.getter;
  v38 = 0;
  v33 = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v36 = &block_descriptor_70;
  v29 = _Block_copy(&v33);
  OUTLINED_FUNCTION_20();
  v30 = swift_allocObject();
  *(v30 + 16) = v4;
  v37 = partial apply for closure #2 in SystemBannerHostViewController.viewWillTransition(to:with:);
  v38 = v30;
  v33 = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v36 = &block_descriptor_3_0;
  v31 = _Block_copy(&v33);
  v32 = v4;

  [a1 animateAlongsideTransition:v29 completion:v31];
  _Block_release(v31);
  _Block_release(v29);
  OUTLINED_FUNCTION_77_10();
}

void closure #2 in SystemBannerHostViewController.viewWillTransition(to:with:)(int a1, id a2)
{
  v3 = [a2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 setNeedsLayout];

  v5 = [a2 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 layoutIfNeeded];
}

Swift::Void __swiftcall SystemBannerHostViewController.viewWillLayoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemBannerHostViewController();
  objc_msgSendSuper2(&v2, sel_viewWillLayoutSubviews);
  OUTLINED_FUNCTION_13_2();
  (*((*MEMORY[0x1E69E7D40] & v1) + 0x400))();
}

Swift::Void __swiftcall SystemBannerHostViewController.didMove(toParent:)(UIViewController_optional *toParent)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SystemBannerHostViewController();
  [(UIViewController_optional *)&v4 didMoveToParentViewController:toParent];
  if (toParent)
  {
    OUTLINED_FUNCTION_287();
    if (v3)
    {
      SystemBannerHostViewController.updateSystemApertureElement()();
    }
  }
}

Swift::Void __swiftcall SystemBannerHostViewController.updatePreferredContentSize()()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isSystemAperturePresentation) == 1)
  {
    v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x5E8);

    v1();
  }

  else
  {
    v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2D0))();
    if (v2)
    {
      v3 = v2;
      [v2 preferredContentSize];
      [v0 setPreferredContentSize_];
    }
  }
}

Swift::Void __swiftcall SystemBannerHostViewController.updateControlsPresentationSize(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2D0))();
  if (v4)
  {
    v6 = v5;
    v8 = v4;
    ObjectType = swift_getObjectType();
    (*(v6 + 120))(ObjectType, v6, width, height);
  }
}

Swift::Void __swiftcall SystemBannerHostViewController.updateControlsCornerRadius()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2D0))();
  if (v1)
  {
    v3 = v2;
    v5 = v1;
    ObjectType = swift_getObjectType();
    (*(v3 + 144))(ObjectType, v3);
  }
}

void SystemBannerHostViewController.updateContent(for:using:controllingWith:fromActivityManager:)(uint64_t a1, uint64_t a2, int a3, void *a4, char a5)
{
  v7 = v5;
  v271 = a4;
  LODWORD(v265) = a3;
  v260 = a2;
  v273 = a1;
  v252 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v253 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  v267 = &v251 - v14;
  v266 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_1();
  v255 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v262 = &v251 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v256 = v20;
  v257 = &v251 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v270 = &v251 - v22;
  v23 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_8();
  v29 = (v28 - v27);
  v30 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  v254 = *(v5 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_features);
  if (Features.hudActivityManagerEnabled.getter() & 1) == 0 || (*(v5 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isSystemAperturePresentation) & 1) != 0 || (a5)
  {
    goto LABEL_30;
  }

  v259 = v5;
  outlined init with copy of ConversationControlsType(v273, &aBlock);
  if (v280 == 4)
  {
    v35 = 0x4089000000000000;
  }

  else
  {
    if (v280 == 5)
    {
      v35 = 0x4085E00000000000;
      goto LABEL_20;
    }

    if (v280 == 7)
    {
      v32 = (aBlock & 0xFFFFFFFFFFFFFFFDLL) == 0x14 || (aBlock & 0xFFFFFFFFFFFFFFEFLL) == 5;
      if (v32 || (aBlock - 25) <= 1)
      {
        OUTLINED_FUNCTION_24_39();
        if (!v34)
        {
          v35 = 0x4089000000000000;
          goto LABEL_20;
        }
      }
    }

    v35 = 0x4082C00000000000;
  }

  outlined destroy of ConversationControlsType(&aBlock);
LABEL_20:
  v36 = v273;
  outlined init with copy of ConversationControlsType(v273, &aBlock);
  LODWORD(v274) = ConversationControlsType.isTemporary.getter();
  v37 = *(v25 + 16);
  v37(v29, &v259[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_activityUUID], v23);
  outlined init with copy of ConversationControlsType(v36, v276);
  if (v276[40] == 7 && *v276 == 2 && (v38 = vorrq_s8(*&v276[8], *&v276[24]), !*&vorr_s8(*v38.i8, *&vextq_s8(v38, v38, 8uLL))))
  {
    LODWORD(v272) = 1;
  }

  else
  {
    outlined destroy of ConversationControlsType(v276);
    LODWORD(v272) = 0;
  }

  v39 = v6 + v30[11];
  *(v39 + 8) = 0;
  swift_unknownObjectWeakInit();
  *v6 = v35;
  outlined init with copy of ConversationControlsType(&aBlock, v6 + 8);
  *(v6 + 56) = 0;
  *(v6 + 64) = 1;
  *(v39 + 8) = 0;
  swift_unknownObjectWeakAssign();
  *(v6 + 65) = v274 & 1;
  v37(v6 + v30[8], v29, v23);
  static Date.now.getter();
  (*(v25 + 8))(v29, v23);
  outlined destroy of ConversationControlsType(&aBlock);
  *(v6 + v30[10]) = 0;
  *(v6 + v30[12]) = v272;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_39_17();
    swift_once();
  }

  (*((*MEMORY[0x1E69E7D40] & *static BannerActivityManager.shared) + 0x140))(v6);
  v41 = v40;

  if (v41)
  {
    swift_willThrow();
    OUTLINED_FUNCTION_42_23();
    return;
  }

  OUTLINED_FUNCTION_42_23();
  v7 = v259;
LABEL_30:
  v42 = swift_allocObject();
  v43 = MEMORY[0x1E69E7D40];
  v44 = *MEMORY[0x1E69E7D40] & *v7;
  v268 = *(v44 + 0x1F0);
  v269 = v44 + 496;
  v268();
  v45 = v273;
  outlined init with copy of ConversationControlsType(v273, &aBlock);
  v46 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_controlsType;
  OUTLINED_FUNCTION_142_1();
  swift_beginAccess();
  v261 = v46;
  outlined assign with take of ConversationControlsType(&aBlock, &v7[v46]);
  swift_endAccess();
  ConversationControlsType.associatedNotice.getter(&aBlock);
  v47 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_notice;
  OUTLINED_FUNCTION_142_1();
  swift_beginAccess();
  outlined assign with take of Notice?(&aBlock, &v7[v47]);
  swift_endAccess();
  OUTLINED_FUNCTION_20();
  v48 = swift_allocObject();
  v49 = (*v43 & *v7) + 472;
  v272 = *((*v43 & *v7) + 0x1D8);
  v48[2] = v272();
  v263 = v48 + 2;
  v50 = v7;
  v51 = v271;
  if (v271)
  {
    v274 = v271;
  }

  else
  {
    OUTLINED_FUNCTION_53_1();
    v274 = (*(v52 + 440))();
  }

  outlined init with copy of ConversationControlsType(&v42[2], &aBlock);
  v53 = v280;
  v54 = v51;
  outlined destroy of ConversationControlsType(&aBlock);
  v264 = v49;
  if (v53 == 1)
  {
    outlined init with copy of ConversationControlsType(v45, &aBlock);
    v55 = v280;
    outlined destroy of ConversationControlsType(&aBlock);
    if (v55 == 1)
    {
      OUTLINED_FUNCTION_53_1();
      v57 = (*(v56 + 672))();
      v58 = v57;
      ConversationControlsManager.controlsHUDUpdate(for:)(v57, v59, v60, v61, v62, v63, v64, v65, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262);
      swift_unknownObjectRelease();
      if (one-time initialization token for banners != -1)
      {
        OUTLINED_FUNCTION_0_165();
        swift_once();
      }

      v66 = type metadata accessor for Logger();
      __swift_project_value_buffer(v66, static Logger.banners);
      v67 = OUTLINED_FUNCTION_101_3();
      outlined init with copy of ControlsHUDUpdate(v67, v68);
      outlined init with copy of ControlsHUDUpdate(&aBlock, v275);

      v69 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      v70 = OUTLINED_FUNCTION_12_64();
      if (os_log_type_enabled(v70, v71))
      {
        OUTLINED_FUNCTION_12_0();
        v72 = swift_slowAlloc();
        OUTLINED_FUNCTION_59_10();
        v271 = swift_slowAlloc();
        v286[0] = v271;
        *v72 = 136315650;
        outlined init with copy of ConversationControlsType(v276, &v282);
        v73 = specialized >> prefix<A>(_:)(&v282);
        HIDWORD(v251) = v58;
        v74 = v73;
        v259 = v50;
        v76 = v75;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v282, &_s15ConversationKit0A12ControlsTypeOSgMd);
        outlined destroy of ControlsHUDUpdate(v276);
        v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, v286);

        *(v72 + 4) = v77;
        *(v72 + 12) = 2080;
        v78 = v263;
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        v282 = v48[2];
        v79 = String.init<A>(reflecting:)();
        v81 = v80;

        v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, v286);

        *(v72 + 14) = v82;
        v50 = v259;
        *(v72 + 22) = 2080;
        v282 = v275[6];
        v83 = String.init<A>(reflecting:)();
        v85 = v84;
        outlined destroy of ControlsHUDUpdate(v275);
        v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, v286);

        *(v72 + 24) = v86;
        _os_log_impl(&dword_1BBC58000, v69, BYTE4(v251), "Notice being overridden by new notice. Updated oldControlsType to %s, oldSizeClass from %s to %s", v72, 0x20u);
        swift_arrayDestroy();
        v87 = OUTLINED_FUNCTION_2_35();
        MEMORY[0x1BFB23DF0](v87);
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();

        v45 = v273;
      }

      else
      {

        outlined destroy of ControlsHUDUpdate(v275);
        outlined destroy of ControlsHUDUpdate(v276);
        v45 = v273;
        v78 = v263;
      }

      outlined assign with copy of ConversationControlsType(&aBlock, &v42[2]);
      v88 = v281;
      outlined destroy of ControlsHUDUpdate(&aBlock);
      OUTLINED_FUNCTION_13_21();
      swift_beginAccess();
      *v78 = v88;
    }
  }

  OUTLINED_FUNCTION_53_1();
  v90 = (*(v89 + 704))();
  v271 = v48;
  if (v90)
  {
    v98 = v90;
    if ([v90 isContinuitySession])
    {
      outlined init with copy of ConversationControlsType(&v42[2], &aBlock);
      if (v280 == 3)
      {
        outlined destroy of ConversationControlsType(&aBlock);
      }

      else
      {
        if (v280 != 7)
        {
          goto LABEL_54;
        }

        if (aBlock != 4)
        {
          goto LABEL_54;
        }

        OUTLINED_FUNCTION_24_39();
        if (v99)
        {
          goto LABEL_54;
        }
      }

      outlined init with copy of ConversationControlsType(v45, &aBlock);
      if (v280 == 3)
      {
LABEL_54:

        v90 = outlined destroy of ConversationControlsType(&aBlock);
        goto LABEL_55;
      }

      if (v280 != 7 || aBlock != 4 || (OUTLINED_FUNCTION_24_39(), v100))
      {
        outlined destroy of ConversationControlsType(&aBlock);
        if (one-time initialization token for banners != -1)
        {
          OUTLINED_FUNCTION_0_165();
          swift_once();
        }

        v202 = type metadata accessor for Logger();
        __swift_project_value_buffer(v202, static Logger.banners);
        OUTLINED_FUNCTION_84_6();

        v203 = Logger.logObject.getter();
        v204 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v203, v204))
        {
          OUTLINED_FUNCTION_9_44();
          v205 = swift_slowAlloc();
          OUTLINED_FUNCTION_8_15();
          v273 = swift_slowAlloc();
          v275[0] = v273;
          *v205 = 136315394;
          OUTLINED_FUNCTION_3_0();
          swift_beginAccess();
          outlined init with copy of ConversationControlsType(&v42[2], v276);
          v206 = v42;
          v207 = v50;
          v208 = specialized >> prefix<A>(_:)(v276);
          v210 = v209;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v276, &_s15ConversationKit0A12ControlsTypeOSgMd);
          v211 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v208, v210, v275);

          *(v205 + 4) = v211;
          *(v205 + 12) = 2080;
          v212 = OUTLINED_FUNCTION_101_3();
          outlined init with copy of ConversationControlsType(v212, v213);
          v214 = specialized >> prefix<A>(_:)(v276);
          v216 = v215;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v276, &_s15ConversationKit0A12ControlsTypeOSgMd);
          outlined destroy of ConversationControlsType(&aBlock);
          v217 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v214, v216, v275);
          v50 = v207;

          *(v205 + 14) = v217;
          _os_log_impl(&dword_1BBC58000, v203, v204, "Ignoring HUD update (%s -> %s) because update is disallowed during continuity sessions", v205, 0x16u);
          swift_arrayDestroy();
          v218 = OUTLINED_FUNCTION_3_126();
          MEMORY[0x1BFB23DF0](v218);
          v48 = v271;
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
        }

        else
        {

          outlined destroy of ConversationControlsType(&aBlock);
          v206 = v42;
        }

        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        v247 = v48[2];
        v248 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_sizeClass;
        OUTLINED_FUNCTION_13_21();
        swift_beginAccess();
        *&v50[v248] = v247;
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        outlined init with copy of ConversationControlsType(&v206[2], &aBlock);
        v249 = v261;
        OUTLINED_FUNCTION_142_1();
        swift_beginAccess();
        outlined assign with take of ConversationControlsType(&aBlock, &v50[v249]);
        swift_endAccess();
        lazy protocol witness table accessor for type SystemBannerHostError and conformance SystemBannerHostError();
        swift_allocError();
        *v250 = 3;
        swift_willThrow();

        return;
      }
    }
  }

LABEL_55:
  if (v265)
  {
    v101 = ConversationControlsType.exclusiveSizeClass.getter(v90, v91, v92, v93, v94, v95, v96, v97);
    if ((v102 & 1) == 0)
    {
      v109 = v101;
      if (one-time initialization token for banners != -1)
      {
        OUTLINED_FUNCTION_0_165();
        swift_once();
      }

      v110 = type metadata accessor for Logger();
      __swift_project_value_buffer(v110, static Logger.banners);
      OUTLINED_FUNCTION_84_6();
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v111, v112))
      {
        OUTLINED_FUNCTION_13_10();
        v113 = swift_slowAlloc();
        OUTLINED_FUNCTION_12_0();
        v114 = swift_slowAlloc();
        v265 = v42;
        v259 = v50;
        v115 = v114;
        v275[0] = v114;
        *v113 = 136315138;
        v116 = OUTLINED_FUNCTION_101_3();
        outlined init with copy of ConversationControlsType(v116, v117);
        v118 = v109;
        v119 = specialized >> prefix<A>(_:)(v276);
        v121 = v120;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v276, &_s15ConversationKit0A12ControlsTypeOSgMd);
        outlined destroy of ConversationControlsType(&aBlock);
        v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v121, v275);

        *(v113 + 4) = v122;
        v109 = v118;
        _os_log_impl(&dword_1BBC58000, v111, v112, "No size specified for controls update with type %s...", v113, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v115);
        v50 = v259;
        v42 = v265;
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
      }

      else
      {

        outlined destroy of ConversationControlsType(&aBlock);
      }

      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.default.getter();
      v126 = OUTLINED_FUNCTION_25_38();
      if (os_log_type_enabled(v126, v127))
      {
        OUTLINED_FUNCTION_13_10();
        v128 = swift_slowAlloc();
        OUTLINED_FUNCTION_12_0();
        v265 = swift_slowAlloc();
        aBlock = v265;
        *v128 = 136315138;
        *v276 = v109;
        v129 = String.init<A>(reflecting:)();
        v131 = v42;
        v132 = v109;
        v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v130, &aBlock);

        *(v128 + 4) = v133;
        v109 = v132;
        v42 = v131;
        _os_log_impl(&dword_1BBC58000, v124, v125, "... so falling back to expected size %s", v128, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v265);
        v134 = OUTLINED_FUNCTION_5_110();
        MEMORY[0x1BFB23DF0](v134);
        v135 = OUTLINED_FUNCTION_2_35();
        MEMORY[0x1BFB23DF0](v135);
      }

      v136 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_sizeClass;
      OUTLINED_FUNCTION_13_21();
      v101 = swift_beginAccess();
      *&v50[v136] = v109;
    }
  }

  else
  {
    v123 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_sizeClass;
    OUTLINED_FUNCTION_13_21();
    v101 = swift_beginAccess();
    *&v50[v123] = v260;
  }

  v137 = ConversationControlsType.exclusiveSizeClass.getter(v101, v102, v103, v104, v105, v106, v107, v108);
  if ((v138 & 1) == 0)
  {
    v139 = v137;
    if (v137 != v272())
    {
      if (one-time initialization token for banners != -1)
      {
        OUTLINED_FUNCTION_0_165();
        swift_once();
      }

      v140 = type metadata accessor for Logger();
      __swift_project_value_buffer(v140, static Logger.banners);
      OUTLINED_FUNCTION_84_6();
      v259 = v50;
      v141 = v50;
      v142 = Logger.logObject.getter();
      v143 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v142, v143))
      {
        OUTLINED_FUNCTION_12_0();
        v144 = swift_slowAlloc();
        OUTLINED_FUNCTION_59_10();
        v265 = swift_slowAlloc();
        v275[0] = v265;
        *v144 = 136315650;
        v145 = OUTLINED_FUNCTION_101_3();
        outlined init with copy of ConversationControlsType(v145, v146);
        v147 = specialized >> prefix<A>(_:)(v276);
        v149 = v148;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v276, &_s15ConversationKit0A12ControlsTypeOSgMd);
        outlined destroy of ConversationControlsType(&aBlock);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v149, v275);
        OUTLINED_FUNCTION_75_0();

        *(v144 + 4) = v147;
        *(v144 + 12) = 2080;
        *v276 = v139;
        v150 = String.init<A>(reflecting:)();
        v152 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150, v151, v275);

        *(v144 + 14) = v152;
        *(v144 + 22) = 2080;
        *v276 = (v272)(v153);
        v154 = String.init<A>(reflecting:)();
        v156 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v155, v275);

        *(v144 + 24) = v156;
        _os_log_impl(&dword_1BBC58000, v142, v143, "New controls type %s is only valid with size %s, but it's using %s instead.", v144, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
      }

      else
      {

        outlined destroy of ConversationControlsType(&aBlock);
      }

      v50 = v259;
    }
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v157 = v272();
  (v268)(&aBlock);
  v158 = v267;
  ConversationControlsRecipeGenerator.generate(for:type:controlsManager:)(v157, &aBlock, v274, v267);
  outlined destroy of ConversationControlsType(&aBlock);
  v159 = v266;
  if (__swift_getEnumTagSinglePayload(v158, 1, v266) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v158, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_165();
      swift_once();
    }

    v265 = v42;
    v160 = type metadata accessor for Logger();
    __swift_project_value_buffer(v160, static Logger.banners);
    v161 = v50;
    v162 = Logger.logObject.getter();
    v163 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v162, v163))
    {
      OUTLINED_FUNCTION_9_44();
      v164 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_15();
      *v276 = swift_slowAlloc();
      *v164 = 136315394;
      aBlock = v272();
      v165 = String.init<A>(reflecting:)();
      v167 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v166, v276);

      *(v164 + 4) = v167;
      *(v164 + 12) = 2080;
      (v268)(&aBlock, v168);
      v169 = specialized >> prefix<A>(_:)(&aBlock);
      v171 = v170;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&aBlock, &_s15ConversationKit0A12ControlsTypeOSgMd);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v169, v171, v276);
      OUTLINED_FUNCTION_75_0();

      *(v164 + 14) = v169;
      _os_log_impl(&dword_1BBC58000, v162, v163, "[SystemControls] Unable to acquire desired recipe, sizeClass:%s type:%s", v164, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      v172 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v172);
    }

    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v173 = v271[2];
    v174 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_sizeClass;
    OUTLINED_FUNCTION_13_21();
    swift_beginAccess();
    *&v161[v174] = v173;
    outlined init with copy of ConversationControlsType(v265 + 16, &aBlock);
    v175 = v261;
    OUTLINED_FUNCTION_142_1();
    swift_beginAccess();
    outlined assign with take of ConversationControlsType(&aBlock, &v50[v175]);
    swift_endAccess();
    lazy protocol witness table accessor for type SystemBannerHostError and conformance SystemBannerHostError();
    swift_allocError();
    *v176 = 1;
    swift_willThrow();
  }

  else
  {
    v177 = v270;
    outlined init with take of ConversationControlsRecipe(v158, v270);
    if (*(v177 + *(v159 + 72)) == 1 && v50[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isSystemAperturePresentation] == 1)
    {
      if (one-time initialization token for banners != -1)
      {
        OUTLINED_FUNCTION_0_165();
        swift_once();
      }

      v178 = v42;
      v179 = type metadata accessor for Logger();
      __swift_project_value_buffer(v179, static Logger.banners);
      v180 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      v181 = OUTLINED_FUNCTION_12_64();
      if (os_log_type_enabled(v181, v182))
      {
        OUTLINED_FUNCTION_20_43();
        v183 = swift_slowAlloc();
        OUTLINED_FUNCTION_296(v183);
        OUTLINED_FUNCTION_24_6();
        OUTLINED_FUNCTION_91_7();
        _os_log_impl(v184, v185, v186, v187, v188, v189);
        v190 = OUTLINED_FUNCTION_5_110();
        MEMORY[0x1BFB23DF0](v190);
      }

      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v191 = v271[2];
      v192 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_sizeClass;
      OUTLINED_FUNCTION_13_21();
      swift_beginAccess();
      *&v50[v192] = v191;
      outlined init with copy of ConversationControlsType(&v178[2], &aBlock);
      v193 = v261;
      OUTLINED_FUNCTION_142_1();
      swift_beginAccess();
      outlined assign with take of ConversationControlsType(&aBlock, &v50[v193]);
      swift_endAccess();
      lazy protocol witness table accessor for type SystemBannerHostError and conformance SystemBannerHostError();
      swift_allocError();
      *v194 = 2;
      swift_willThrow();

      OUTLINED_FUNCTION_1_132();
      _s15ConversationKit0A14ControlsRecipeVWOhTm_3(v270, v195);
    }

    else
    {
      aBlock = 2;
      v278 = 0u;
      v279 = 0u;
      LOBYTE(v280) = 7;
      v196 = v273;
      v197 = static ConversationControlsType.== infix(_:_:)(v273, &aBlock);
      outlined destroy of ConversationControlsType(&aBlock);
      if (v197)
      {
        v198 = [v50 presentableGestureRecognizerPriorityContext];
        if (v198)
        {
          v199 = v198;
          v200 = MEMORY[0x1BFB209B0](0xD000000000000012, 0x80000001BC510430);
          v201 = [v199 acquireGestureRecognizerDefaultPriorityAssertionForReason_];
          swift_unknownObjectRelease();

          v196 = v273;
        }

        else
        {
          v201 = 0;
        }

        SystemBannerHostViewController.gesturePriorityAssertion.willset();
        *&v50[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_gesturePriorityAssertion] = v201;
        swift_unknownObjectRelease();
      }

      OUTLINED_FUNCTION_20();
      v219 = swift_allocObject();
      swift_unknownObjectWeakInit();
      outlined init with copy of ConversationControlsType(v196, v276);
      v220 = v257;
      outlined init with copy of ConversationControlsRecipe(v270, v257);
      outlined init with copy of ConversationControlsType(v276, v275);
      outlined init with copy of ConversationControlsRecipe(v220, v262);
      v221 = (*(v255 + 80) + 96) & ~*(v255 + 80);
      v222 = swift_allocObject();
      v223 = v271;
      *(v222 + 16) = v219;
      *(v222 + 24) = v223;
      *(v222 + 32) = v42;
      v224 = *&v276[16];
      *(v222 + 40) = *v276;
      *(v222 + 56) = v224;
      *(v222 + 65) = *&v276[25];
      v225 = v274;
      *(v222 + 88) = v274;
      outlined init with take of ConversationControlsRecipe(v220, v222 + v221);

      v226 = v225;

      CurrentValueSubject.value.getter();

      if (aBlock)
      {
        dispatch thunk of DispatchWorkItem.cancel()();
      }

      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      outlined init with copy of ConversationControlsType(&v42[2], &aBlock);
      v282 = 5;
      v283 = 0u;
      v284 = 0u;
      v285 = 7;
      v227 = static ConversationControlsType.== infix(_:_:)(&aBlock, &v282);
      outlined destroy of ConversationControlsType(&v282);
      outlined destroy of ConversationControlsType(&aBlock);
      if ((v227 & 1) != 0 && (Features.callManagerEnabled.getter() & 1) != 0 && ((*((*MEMORY[0x1E69E7D40] & *v50) + 0x2B8))(), , , CurrentValueSubject.value.getter(), , aBlock == 1))
      {
        v265 = v42;

        OUTLINED_FUNCTION_1_132();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_3(v262, v228);
        outlined destroy of ConversationControlsType(v275);
        if (one-time initialization token for banners != -1)
        {
          OUTLINED_FUNCTION_0_165();
          swift_once();
        }

        v229 = type metadata accessor for Logger();
        __swift_project_value_buffer(v229, static Logger.banners);
        v230 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        v231 = OUTLINED_FUNCTION_12_64();
        if (os_log_type_enabled(v231, v232))
        {
          OUTLINED_FUNCTION_20_43();
          v233 = swift_slowAlloc();
          *v233 = 0;
          OUTLINED_FUNCTION_24_6();
          _os_log_impl(v234, v235, v236, v237, v233, 2u);
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
        }

        *(&v279 + 1) = partial apply for closure #1 in SystemBannerHostViewController.updateContent(for:using:controllingWith:fromActivityManager:);
        v280 = v222;
        aBlock = MEMORY[0x1E69E9820];
        *&v278 = 1107296256;
        OUTLINED_FUNCTION_6_5();
        *(&v278 + 1) = v238;
        *&v279 = &block_descriptor_18_0;
        v274 = _Block_copy(&aBlock);
        v282 = MEMORY[0x1E69E7CC0];
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
        lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        type metadata accessor for DispatchWorkItem();
        swift_allocObject();
        v239 = DispatchWorkItem.init(flags:block:)();

        aBlock = v239;

        CurrentValueSubject.send(_:)();
      }

      else
      {
        aBlock = 0;

        CurrentValueSubject.send(_:)();

        v241 = v262;
        closure #1 in SystemBannerHostViewController.updateContent(for:using:controllingWith:fromActivityManager:)(v219, v271, v42, v275, v226, v262);

        OUTLINED_FUNCTION_1_132();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_3(v241, v242);
        v240 = outlined destroy of ConversationControlsType(v275);
      }

      v243 = (*((*MEMORY[0x1E69E7D40] & *v50) + 0x1A0))(v240);
      if (v243)
      {
        if ([v243 shouldSystemApertureUpdateAfterDisplay])
        {
          [objc_msgSend(v50 systemApertureElementContext)];

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_1_132();
          _s15ConversationKit0A14ControlsRecipeVWOhTm_3(v270, v244);

          return;
        }

        OUTLINED_FUNCTION_1_132();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_3(v270, v246);

        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_1_132();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_3(v270, v245);
      }
    }
  }
}

void closure #1 in SystemBannerHostViewController.updateContent(for:using:controllingWith:fromActivityManager:)(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v138 = a6;
  v136 = a4;
  v134 = a2;
  v135 = type metadata accessor for ConversationControlsRecipe();
  v131 = *(v135 - 8);
  v8 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v137 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v132 = &v123 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v123 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v130 = &v123 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v123 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v123 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  v127 = v20;
  v26 = *(Strong + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isSystemAperturePresentation);
  v27 = MEMORY[0x1E69E7D40];
  v133 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isSystemAperturePresentation;
  v128 = a3;
  if (v26 != 1)
  {
    goto LABEL_26;
  }

  swift_beginAccess();
  outlined init with copy of ConversationControlsType(&a3[2], __dst);
  *(&v143[1] + 9) = *(&__dst[1] + 9);
  v143[0] = __dst[0];
  v143[1] = __dst[1];
  if (BYTE8(__dst[2]) == 3)
  {
    outlined destroy of ConversationControlsType(v143);
  }

  else if (BYTE8(__dst[2]) != 7 || *&v143[0] != 4 || (v28 = vorrq_s8(*(v143 + 8), *(&v143[1] + 8)), *&vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL))))
  {
    outlined destroy of ConversationControlsType(v143);
    LODWORD(v126) = 1;
    goto LABEL_17;
  }

  outlined init with copy of ConversationControlsType(v136, v143);
  if (BYTE8(v143[2]) == 3)
  {
    LODWORD(v126) = 0;
  }

  else
  {
    if (BYTE8(v143[2]) == 7 && *&v143[0] == 4)
    {
      v29 = vorrq_s8(*(v143 + 8), *(&v143[1] + 8));
      if (!*&vorr_s8(*v29.i8, *&vextq_s8(v29, v29, 8uLL)))
      {
        LODWORD(v126) = 0;
        goto LABEL_17;
      }
    }

    LODWORD(v126) = 1;
  }

  outlined destroy of ConversationControlsType(v143);
LABEL_17:
  v30 = *(v25 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_features);
  v31 = Features.callManagerEnabled.getter();

  if (v31)
  {
    v32 = (*((*v27 & *a5) + 0x2B0))();
  }

  else
  {
    v32 = 0;
  }

  v33 = [v25 view];
  if (!v33)
  {
    __break(1u);
    goto LABEL_75;
  }

  v34 = v33;
  v35 = [v33 SBUISA_layoutMode];

  if ((v35 - 2) < 3)
  {
    v27 = MEMORY[0x1E69E7D40];
    if ((v32 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_28:
    v42 = 1;
    goto LABEL_31;
  }

  v27 = MEMORY[0x1E69E7D40];
  if ((v126 | v32))
  {
    goto LABEL_28;
  }

LABEL_23:
  v36 = (*((*v27 & *v25) + 0x2D0))();
  if (!v36)
  {
LABEL_26:
    v42 = 0;
    goto LABEL_31;
  }

  v38 = v36;
  v39 = v37;
  *&__dst[0] = 6;
  *(__dst + 8) = 0u;
  *(&__dst[1] + 8) = 0u;
  BYTE8(__dst[2]) = 7;
  v40 = static ConversationControlsType.== infix(_:_:)(v136, __dst);
  outlined destroy of ConversationControlsType(__dst);
  if (v40)
  {
    ObjectType = swift_getObjectType();
    (*(v39 + 32))(ObjectType, v39);

    v42 = __swift_getEnumTagSinglePayload(v23, 1, v135) == 1;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  }

  else
  {

    v42 = 0;
  }

  v27 = MEMORY[0x1E69E7D40];
LABEL_31:
  v43 = (*((*v27 & *v25) + 0x2D0))();
  if (v43)
  {
    v44 = v43;
    v125 = v42;
    type metadata accessor for ConversationHUDViewController();
    v126 = swift_dynamicCastClass();
    if (v126)
    {
      v45 = (*((*v27 & *v25) + 0x1D8))();
      v46 = v134;
      v47 = swift_beginAccess();
      if (v45 == *(v46 + 16) || (*&__dst[0] = 26, *(__dst + 8) = 0u, *(&__dst[1] + 8) = 0u, BYTE8(__dst[2]) = 7, v48 = static ConversationControlsType.== infix(_:_:)(v138, __dst), v47 = outlined destroy of ConversationControlsType(__dst), (v48 & 1) != 0))
      {
        v49 = (*((*v27 & *v126) + 0x130))(v47);
        v50 = (*((*v27 & *v49) + 0x2A0))();
        v52 = v51;

        v53 = (*((*MEMORY[0x1E69E7D40] & *a5) + 0x2A0))();
        v124 = a5;
        swift_getObjectType();
        a5 = v124;
        LOBYTE(v52) = specialized == infix(_:_:)(v50, v52, v53);
        v27 = MEMORY[0x1E69E7D40];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (!v125 && (v52 & 1) != 0)
        {
          if (one-time initialization token for banners != -1)
          {
            swift_once();
          }

          v90 = type metadata accessor for Logger();
          __swift_project_value_buffer(v90, static Logger.banners);
          v91 = v129;
          outlined init with copy of ConversationControlsRecipe(v138, v129);
          v92 = v44;
          v93 = Logger.logObject.getter();
          v94 = static os_log_type_t.default.getter();
          v137 = v92;

          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            LODWORD(v134) = v94;
            v96 = v126;
            v97 = v127;
            *&__dst[0] = v136;
            *v95 = 136315394;
            v98 = *((*v27 & *v96) + 0x480);
            v128 = v93;
            v98();
            specialized >> prefix<A>(_:)();
            v100 = v99;
            v102 = v101;
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v97, &_s15ConversationKit0A14ControlsRecipeVSgMd);
            v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v102, __dst);

            *(v95 + 4) = v103;
            *(v95 + 12) = 2080;
            outlined init with copy of ConversationControlsRecipe(v91, v97);
            __swift_storeEnumTagSinglePayload(v97, 0, 1, v135);
            specialized >> prefix<A>(_:)();
            v105 = v104;
            v107 = v106;
            v27 = MEMORY[0x1E69E7D40];
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v97, &_s15ConversationKit0A14ControlsRecipeVSgMd);
            _s15ConversationKit0A14ControlsRecipeVWOhTm_3(v91, type metadata accessor for ConversationControlsRecipe);
            v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v107, __dst);

            *(v95 + 14) = v108;
            v109 = v96;
            v110 = v128;
            _os_log_impl(&dword_1BBC58000, v128, v134, "[System] Updating controlsView recipe: %s to recipe:%s", v95, 0x16u);
            v111 = v136;
            swift_arrayDestroy();
            MEMORY[0x1BFB23DF0](v111, -1, -1);
            v112 = v95;
            v113 = v135;
            MEMORY[0x1BFB23DF0](v112, -1, -1);
          }

          else
          {

            _s15ConversationKit0A14ControlsRecipeVWOhTm_3(v91, type metadata accessor for ConversationControlsRecipe);
            v113 = v135;
            v109 = v126;
            v97 = v127;
          }

          (*((*v27 & *v109) + 0x480))();
          v116 = v130;
          outlined init with copy of ConversationControlsRecipe(v138, v130);
          v117 = v27;
          v65 = 1;
          __swift_storeEnumTagSinglePayload(v116, 0, 1, v113);
          LODWORD(v136) = SystemBannerHostViewController.alertIfNeededForRecipeTransition(from:to:)(v97, v116);
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v116, &_s15ConversationKit0A14ControlsRecipeVSgMd);
          v118 = v132;
          outlined init with copy of ConversationControlsRecipe(v138, v132);
          v119 = (*(v131 + 80) + 16) & ~*(v131 + 80);
          v120 = (v8 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
          v121 = swift_allocObject();
          outlined init with take of ConversationControlsRecipe(v118, v121 + v119);
          *(v121 + v120) = v109;
          v122 = *((*v117 & *v25) + 0x620);
          v62 = v137;
          v122(v97, v138, partial apply for closure #1 in closure #1 in SystemBannerHostViewController.updateContent(for:using:controllingWith:fromActivityManager:), v121);

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v97, &_s15ConversationKit0A14ControlsRecipeVSgMd);
          LOBYTE(v62) = v136 ^ 1;
          a5 = v124;
          v56 = v133;
          goto LABEL_66;
        }
      }
    }
  }

  v54 = (*((*v27 & *v25) + 0x320))();
  if (v54)
  {
    v55 = v54;
    [v54 presentationSize];
  }

  v56 = v133;
  v57 = v135;
  v33 = (*((*v27 & *v25) + 0x1D8))();
  if (v33 < 2)
  {
LABEL_44:
    v66 = v137;
    outlined init with copy of ConversationControlsRecipe(v138, v137);
    v67 = &v66[*(v57 + 72)];
    memcpy(__dst, v67, 0x49uLL);
    if (*&__dst[0] == 1)
    {
      v68 = *(__dst + 8);
      v69 = *(&__dst[1] + 8);
      v70 = *(&__dst[2] + 8);
      v71 = 1;
      v72 = *(&__dst[3] + 1);
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit21SystemApertureElementVSgMd);
      v71 = 0;
      v72 = 0;
      v68 = 0uLL;
      v69 = 0uLL;
      v70 = 0uLL;
    }

    v73 = *&__dst[4];
    v74 = BYTE8(__dst[4]);
    *v67 = v71;
    *(v67 + 1) = v68;
    *(v67 + 3) = v69;
    *(v67 + 5) = v70;
    v67[7] = v72;
    v67[8] = v73;
    *(v67 + 72) = v74;
    outlined init with copy of ConversationControlsRecipe(v137, v15);
    v75 = &v15[*(v57 + 72)];
    memcpy(v143, v75, 0x49uLL);
    if (*&v143[0] == 1)
    {
      v76 = *(v143 + 8);
      v77 = *(&v143[1] + 8);
      v78 = *(&v143[2] + 8);
      v79 = 1;
      v80 = *(&v143[3] + 1);
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v143, &_s15ConversationKit21SystemApertureElementVSgMd);
      v79 = 0;
      v80 = 0;
      v76 = 0uLL;
      v77 = 0uLL;
      v78 = 0uLL;
    }

    v81 = *&v143[4];
    v82 = BYTE8(v143[4]);
    *v75 = v79;
    *(v75 + 1) = v76;
    *(v75 + 3) = v77;
    *(v75 + 5) = v78;
    v75[7] = v80;
    v75[8] = v81;
    *(v75 + 72) = v82;
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v57);
    v83 = *(v25 + v56);
    v84 = objc_allocWithZone(type metadata accessor for ConversationHUDViewController());
    v85 = ConversationHUDViewController.init(recipe:presentationSize:controlsManager:context:sidebarStateStream:shutterButtonDodging:)(v15, a5, (v83 & 1) == 0, 0, 0, 0);
    outlined init with copy of ConversationControlsType(v136, &v139);
    if (v142)
    {
      if (v142 != 2)
      {
        if (v142 != 7 || v139 != 4 || (v86 = vorrq_s8(v140, v141), *&vorr_s8(*v86.i8, *&vextq_s8(v86, v86, 8uLL))))
        {
          specialized showContent #1 (_:) in closure #1 in SystemBannerHostViewController.updateContent(for:using:controllingWith:fromActivityManager:)(v85, v25, &protocol witness table for ConversationHUDViewController, &protocol witness table for ConversationHUDViewController);

          _s15ConversationKit0A14ControlsRecipeVWOhTm_3(v137, type metadata accessor for ConversationControlsRecipe);
          outlined destroy of ConversationControlsType(&v139);
          goto LABEL_65;
        }

        v87 = *((*v27 & *v25) + 0x2D8);
        v88 = v85;
        v87(v85, &protocol witness table for ConversationHUDViewController);

LABEL_59:
        _s15ConversationKit0A14ControlsRecipeVWOhTm_3(v137, type metadata accessor for ConversationControlsRecipe);
        goto LABEL_65;
      }

      outlined destroy of ConversationControlsType(&v139);
    }

    v89 = v85;
    specialized showEphemeralContent #1 (_:) in closure #1 in SystemBannerHostViewController.updateContent(for:using:controllingWith:fromActivityManager:)(v89, v25, v134, v128, &protocol witness table for ConversationHUDViewController, &protocol witness table for ConversationHUDViewController);

    goto LABEL_59;
  }

  if (v33 != 2)
  {
    if (v33 == 3)
    {
      goto LABEL_44;
    }

LABEL_75:
    *&__dst[0] = v33;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  v58 = v127;
  outlined init with copy of ConversationControlsRecipe(v138, v127);
  __swift_storeEnumTagSinglePayload(v58, 0, 1, v57);
  v59 = *(v25 + v56);
  v60 = objc_allocWithZone(type metadata accessor for ConversationNoticeViewController());
  v61 = ConversationNoticeViewController.init(recipe:presentationSize:controlsManager:isSystemAperturePresentation:)(v58, a5, v59);
  outlined init with copy of ConversationControlsType(v136, __dst);
  LODWORD(v62) = BYTE8(__dst[2]);
  outlined destroy of ConversationControlsType(__dst);
  v63 = v61;
  v64 = v63;
  if (v62 == 1)
  {
    specialized showEphemeralContent #1 (_:) in closure #1 in SystemBannerHostViewController.updateContent(for:using:controllingWith:fromActivityManager:)(v63, v25, v134, v128, &protocol witness table for ConversationNoticeViewController, &protocol witness table for ConversationNoticeViewController);

    v65 = 0;
    goto LABEL_66;
  }

  specialized showContent #1 (_:) in closure #1 in SystemBannerHostViewController.updateContent(for:using:controllingWith:fromActivityManager:)(v63, v25, &protocol witness table for ConversationNoticeViewController, &protocol witness table for ConversationNoticeViewController);

LABEL_65:
  v65 = 0;
  LOBYTE(v62) = 1;
LABEL_66:
  SystemBannerHostViewController.updateSystemApertureAccessoryViews(recipe:)(v138);
  v114 = MEMORY[0x1E69E7D40];
  v115 = (*((*MEMORY[0x1E69E7D40] & *a5) + 0xAE0))(v62 & 1);
  if ((v65 & 1) == 0 && (*((*v114 & *v25) + 0x1D8))(v115) != 2 && *(v25 + v56) == 1)
  {
    SystemBannerHostViewController.updateSystemApertureElement()();
  }
}

uint64_t closure #1 in closure #1 in SystemBannerHostViewController.updateContent(for:using:controllingWith:fromActivityManager:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v27 - v5;
  v7 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ConversationControlsRecipe(a1, v9);
  v10 = &v9[*(v7 + 72)];
  memcpy(__dst, v10, 0x49uLL);
  if (__dst[0] == 1)
  {
    v11 = *&__dst[1];
    v12 = *&__dst[3];
    v13 = *&__dst[5];
    v14 = 1;
    v15 = __dst[7];
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit21SystemApertureElementVSgMd);
    v14 = 0;
    v15 = 0;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  v16 = __dst[8];
  v17 = __dst[9];
  *v10 = v14;
  *(v10 + 1) = v11;
  *(v10 + 3) = v12;
  *(v10 + 5) = v13;
  v10[7] = v15;
  v10[8] = v16;
  *(v10 + 72) = v17;
  outlined init with copy of ConversationControlsRecipe(v9, v6);
  v18 = &v6[*(v7 + 72)];
  memcpy(v27, v18, 0x49uLL);
  if (v27[0] == 1)
  {
    v19 = *&v27[1];
    v20 = *&v27[3];
    v21 = *&v27[5];
    v22 = 1;
    v23 = v27[7];
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, &_s15ConversationKit21SystemApertureElementVSgMd);
    v22 = 0;
    v23 = 0;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
  }

  v24 = v27[8];
  v25 = v27[9];
  *v18 = v22;
  *(v18 + 1) = v19;
  *(v18 + 3) = v20;
  *(v18 + 5) = v21;
  v18[7] = v23;
  v18[8] = v24;
  *(v18 + 72) = v25;
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x488))(v6);
  return _s15ConversationKit0A14ControlsRecipeVWOhTm_3(v9, type metadata accessor for ConversationControlsRecipe);
}

uint64_t SystemBannerHostViewController.updateOverriddenSystemApertureTypeIfNeeded(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_overriddenSystemApertureContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of (CGFloat, AutoplayCandidate)(v1 + v3, v6, &_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMd);
  if (v7 == 255)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMd);
  }

  v8[0] = v6[0];
  v8[1] = v6[1];
  v8[2] = v6[2];
  v9 = v7;
  v4 = *&v6[0];
  outlined init with copy of ConversationControlsType(a1, v6 + 8);
  *&v6[0] = v4;
  SystemBannerHostViewController.overriddenSystemApertureContent.setter(v6);
  return outlined destroy of SystemBannerHostViewController.OverriddenSystemApertureContent(v8);
}