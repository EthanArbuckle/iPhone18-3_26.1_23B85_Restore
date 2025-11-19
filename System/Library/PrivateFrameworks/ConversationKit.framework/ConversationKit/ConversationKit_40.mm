uint64_t closure #1 in ConversationControlsManager.rejectCallButtonTapped()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  type metadata accessor for MainActor();
  v4[22] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[23] = v6;
  v4[24] = v5;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationControlsManager.rejectCallButtonTapped(), v6, v5);
}

uint64_t closure #1 in ConversationControlsManager.rejectCallButtonTapped()()
{
  OUTLINED_FUNCTION_24_0();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = static CallScreeningActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationControlsManager.rejectCallButtonTapped(), v0, 0);
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(v0 + 200) = static AnsweringMachineComposer.shared;
  v1 = *(v0 + 192);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_45_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v1);
}

{
  OUTLINED_FUNCTION_48();
  if (v0[25])
  {
    v1 = v0[21];
    OUTLINED_FUNCTION_128_0();
    v3 = (*(v2 + 832))();
    if (v3)
    {
      v4 = v3;
      GameControllerManager.resignFocus()();
    }

    v5 = v0[25];
    OUTLINED_FUNCTION_128_0();
    (*(v6 + 672))();
    OUTLINED_FUNCTION_208_0();
    ObjectType = swift_getObjectType();
    (*(v1 + 56))(ObjectType, v1);
    swift_unknownObjectRelease();
    v8 = OUTLINED_FUNCTION_43_0();
    v9 = MEMORY[0x1BFB209B0](v8);
    v0[26] = v9;

    v0[2] = v0;
    v0[7] = v0 + 27;
    v0[3] = closure #1 in ConversationControlsManager.rejectCallButtonTapped();
    v10 = swift_continuation_init();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5NeverOGMd);
    OUTLINED_FUNCTION_30_22(v11);
    OUTLINED_FUNCTION_368(COERCE_DOUBLE(1107296256));
    v0[12] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
    v0[13] = &block_descriptor_584;
    v0[14] = v10;
    [v5 screenCallWithUUID:v9 manualScreening:0 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    rejectCall #1 @Sendable () in ConversationControlsManager.rejectCallButtonTapped()(v0[21]);
    OUTLINED_FUNCTION_13();

    return v12();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v1 = v0;
  v3 = *(v2 + 192);
  v4 = *(v2 + 184);

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationControlsManager.rejectCallButtonTapped(), v4, v3);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 208);

  swift_unknownObjectRelease();
  v2 = *(v0 + 216);

  if ((v2 & 1) == 0)
  {
    rejectCall #1 @Sendable () in ConversationControlsManager.rejectCallButtonTapped()(*(v0 + 168));
  }

  OUTLINED_FUNCTION_13();

  return v3();
}

void ConversationControlsManager.wantsCallWaitingInSystemAperture.getter()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v7 = __swift_project_value_buffer(v3, &static Logger.conversationControls);
  (*(v5 + 16))(v1, v7, v3);
  v8 = SBUIIsSystemApertureEnabled();
  v9 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter);
  v10 = TUCallCenter.wantsCallWaiting.getter();
  v11 = [v9 cnk_hasTooManyCallsForCallWaitingBanner];
  if (Features.callManagerEnabled.getter())
  {
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2A0))();
    v12 = OUTLINED_FUNCTION_351();
    v13 = (*(v10 + 560))(v12, v10);
    swift_unknownObjectRelease();
    if ([v9 currentAudioAndVideoCallCount] == 1)
    {
      hasIncomingAudioOrVideo = TUCallCenter.cnk_hasIncomingAudioOrVideoCall.getter();
      if ((v13 & 1) == 0)
      {
        LOBYTE(v10) = 0;
LABEL_9:
        if ([v9 currentAudioAndVideoCallCount] >= 1 && (TUCallCenter.cnk_hasIncomingAudioOrVideoCall.getter() & 1) != 0)
        {
          if (hasIncomingAudioOrVideo)
          {
LABEL_18:
            LOBYTE(v10) = 0;
LABEL_21:
            v24 = [v9 currentCallGroups];
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCallGroup);
            OUTLINED_FUNCTION_170();
            v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v26 = specialized Array.count.getter(v25);

            if (v26 < 4)
            {
              v11 = 0;
            }

            else
            {
              v11 = TUCallCenter.cnk_hasIncomingAudioOrVideoCall.getter();
            }

            goto LABEL_24;
          }

          v18 = 1;
        }

        else
        {
          v52 = v10;
          v19 = v13;
          v20 = v8;
          v21 = [v9 currentCallGroups];
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCallGroup);
          OUTLINED_FUNCTION_170();
          v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          specialized Array.count.getter(v22);
          OUTLINED_FUNCTION_300();

          v18 = v21 == 2;
          if (hasIncomingAudioOrVideo)
          {
            LOBYTE(v10) = 0;
            v8 = v20;
            goto LABEL_21;
          }

          v8 = v20;
          v13 = v19;
          LOBYTE(v10) = v52;
        }

        v23 = [v9 callWithStatus_];
        if (!v23)
        {
          if ((v13 & 1) == 0)
          {
            LOBYTE(v10) = v18;
          }

          goto LABEL_21;
        }

        goto LABEL_18;
      }
    }

    else
    {
      hasIncomingAudioOrVideo = 0;
      LOBYTE(v10) = 0;
      if ((v13 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v14 = [v9 currentCallGroups];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCallGroup);
    OUTLINED_FUNCTION_170();
    v15 = v13;
    v16 = v8;
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Array.count.getter(v17);
    OUTLINED_FUNCTION_300();
    v8 = v16;
    v13 = v15;

    LOBYTE(v10) = v14 > 1;
    goto LABEL_9;
  }

LABEL_24:
  if (Features.shouldShowFullScreenCallWaiting.getter() || ((v8 ^ 1) & 1) != 0 || (v10 & 1) == 0 || (v11 & 1) != 0)
  {
    v28 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_10(v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 67109632;
      *(v38 + 4) = v8;
      *(v38 + 8) = 1024;
      *(v38 + 10) = v10 & 1;
      *(v38 + 14) = 1024;
      *(v38 + 16) = v11 & 1;
      OUTLINED_FUNCTION_24_6();
      v35 = v38;
      v36 = 20;
      goto LABEL_33;
    }
  }

  else
  {
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2A0))();
    OUTLINED_FUNCTION_175_0();
    ObjectType = swift_getObjectType();
    (v2[17])(ObjectType, v2);
    OUTLINED_FUNCTION_212();
    swift_unknownObjectRelease();
    if ((v2 & 1) == 0)
    {
      v39 = [v9 incomingCall];
      if (v39)
      {
      }

      else
      {
        v48 = [v9 incomingVideoCall];
        if (v48)
        {

          v28 = Logger.logObject.getter();
          v49 = static os_log_type_t.default.getter();
          if (!OUTLINED_FUNCTION_18_10(v49))
          {
            goto LABEL_42;
          }

          goto LABEL_30;
        }
      }

      v28 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (!OUTLINED_FUNCTION_18_10(v40))
      {
        goto LABEL_42;
      }

      v41 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v41);
      OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_98_2();
      _os_log_impl(v42, v43, v44, v45, v46, v47);
      goto LABEL_34;
    }

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_10(v29))
    {
LABEL_30:
      v30 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v30);
      OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_98_2();
LABEL_33:
      _os_log_impl(v31, v32, v33, v34, v35, v36);
LABEL_34:
      OUTLINED_FUNCTION_18();
    }
  }

LABEL_42:

  v50 = OUTLINED_FUNCTION_45_1();
  v51(v50);
  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationControlsManager.callAgainButtonTapped(button:)(UIControl *button)
{
  OUTLINED_FUNCTION_129();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  v4 = OUTLINED_FUNCTION_23_6();
  v5(v4);
  _dispatchPreconditionTest(_:)();
  v6 = OUTLINED_FUNCTION_3_7();
  v7(v6);
  if (v3)
  {
    ConversationController.callBack()();
  }

  else
  {
    __break(1u);
  }
}

void ConversationControlsManager.acceptScreenShare()()
{
  OUTLINED_FUNCTION_4_36();
  v2 = (*((*MEMORY[0x1E69E7D40] & v1) + 0x2C0))();
  if (v2)
  {
    v3 = v2;
    ConversationController.requestScreenSharingPicker(with:)(v0);
  }
}

Swift::Void __swiftcall ConversationControlsManager.declineScreenShare()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2C0))();
  if (v1)
  {
    v6 = v1;
    v2 = specialized Conversation.currentScreenSharingRequest(ignoring:)(MEMORY[0x1E69E7CC0]);
    if (v2)
    {
      v3 = v2;
      v4 = [*(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter) conversationManager];
      [v4 cancelOrDenyScreenShareRequest:v3 forConversation:v6];

      v5 = v4;
    }

    else
    {
      v5 = v6;
    }
  }
}

uint64_t closure #1 in ConversationControlsManager.addIncomingScreenSharingRequestActivity()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = type metadata accessor for UUID();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  v4[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[24] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationControlsManager.addIncomingScreenSharingRequestActivity(), v7, v6);
}

uint64_t closure #1 in ConversationControlsManager.addIncomingScreenSharingRequestActivity()()
{
  v96 = v0;
  v2 = *(v0 + 144);

  v4 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x620))(v3))
  {

    OUTLINED_FUNCTION_256_0();
    if (!v5)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v6 = *(v0 + 144);
    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v7, &static Logger.conversationControls);
    v8 = v6;
    v9 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    if (OUTLINED_FUNCTION_317())
    {
      v10 = *(v0 + 144);
      OUTLINED_FUNCTION_42();
      v95 = OUTLINED_FUNCTION_38_3();
      *v8 = 136315138;
      *(v0 + 136) = v10;
      OUTLINED_FUNCTION_183();
      v11 = >> prefix<A>(_:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v95);
      OUTLINED_FUNCTION_420();
      *(v8 + 1) = v1;
      OUTLINED_FUNCTION_140();
      _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
      OUTLINED_FUNCTION_28_2();
      OUTLINED_FUNCTION_4_4();
    }

    v4 = MEMORY[0x1E69E7D40];
    ConversationControlsManager.removeIncomingScreenShareRequest()();
  }

  OUTLINED_FUNCTION_216();
  if (!(*((v19 & v18) + 0x4A0))())
  {
    OUTLINED_FUNCTION_256_0();
    if (!v5)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v72 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v72, &static Logger.conversationControls);
    v73 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_173_0();
    if (!os_log_type_enabled(v73, v74))
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_256_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v20 = *(v0 + 144);
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, &static Logger.conversationControls);
  v22 = v20;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 144);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_37_7();
    OUTLINED_FUNCTION_374();
    *v22 = 136315138;
    *(v0 + 128) = v25;
    OUTLINED_FUNCTION_183();
    v26 = >> prefix<A>(_:)();
    OUTLINED_FUNCTION_345(v26, v27, v28, v29, v30, v31);
    OUTLINED_FUNCTION_17_2();
    *(v22 + 1) = &stru_1BC4BA000;
    OUTLINED_FUNCTION_12_15();
    _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
    OUTLINED_FUNCTION_72_8();
    OUTLINED_FUNCTION_2_2();
  }

  v37 = *(v0 + 144);
  v38 = SBUIIsSystemApertureEnabled();
  v39 = *v4 & *v37;
  v40 = *(v0 + 176);
  v41 = *(v0 + 184);
  v42 = *(v0 + 144);
  v43 = *(v0 + 152);
  if (v38)
  {
    v94 = (*(v39 + 1520))();
    *(v0 + 64) = 26;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 104) = 7;
    (*((*v4 & *v42) + 0x2A0))();
    OUTLINED_FUNCTION_343();
    OUTLINED_FUNCTION_110_3();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_367();
    outlined init with copy of ConversationControlsType(v0 + 64, v41 + 8);
    OUTLINED_FUNCTION_215();
    OUTLINED_FUNCTION_406();
    v44 = OUTLINED_FUNCTION_65_9();
    v45(v44);
    v46 = v42;
    static Date.now.getter();
    swift_unknownObjectRelease();
    v47 = OUTLINED_FUNCTION_321_0();
    v48(v47);
    outlined destroy of ConversationControlsType(v0 + 64);
    *(v41 + *(v40 + 40)) = v2;
    *(v41 + *(v40 + 48)) = 0;
    v49 = (*((*MEMORY[0x1E69E7D40] & *v94) + 0x120))(v41);

    OUTLINED_FUNCTION_40_17();
    if (v49)
    {
      v50 = *(v0 + 144);

      v51 = Logger.logObject.getter();
      static os_log_type_t.default.getter();

      if (OUTLINED_FUNCTION_317())
      {
        v52 = *(v0 + 144);
        OUTLINED_FUNCTION_30_1();
        OUTLINED_FUNCTION_16_8();
        OUTLINED_FUNCTION_374();
        *v50 = 136315394;
        *(v0 + 112) = v52;
        OUTLINED_FUNCTION_183();
        v53 = >> prefix<A>(_:)();
        OUTLINED_FUNCTION_345(v53, v54, v55, v56, v57, v58);
        OUTLINED_FUNCTION_17_2();
        OUTLINED_FUNCTION_347();
        v59 = >> prefix<A>(_:)();
        OUTLINED_FUNCTION_345(v59, v60, v61, v62, v63, v64);
        OUTLINED_FUNCTION_17_2();
        *(v50 + 14) = v43;
        OUTLINED_FUNCTION_140();
        _os_log_impl(v65, v66, v67, v68, v69, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_3_26();
        OUTLINED_FUNCTION_4_4();
      }

      v70 = **(v0 + 144);
      v71 = *MEMORY[0x1E69E7D40];
      goto LABEL_23;
    }
  }

  else
  {
    v75 = (*(v39 + 1544))();
    OUTLINED_FUNCTION_285_0(26);
    OUTLINED_FUNCTION_110_3();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_367();
    outlined init with copy of ConversationControlsType(v0 + 16, v41 + 8);
    OUTLINED_FUNCTION_215();
    OUTLINED_FUNCTION_110_3();
    swift_unknownObjectWeakAssign();
    v76 = OUTLINED_FUNCTION_65_9();
    v77(v76);
    v78 = v42;
    v79 = MEMORY[0x1E69E7D40];
    static Date.now.getter();
    v80 = OUTLINED_FUNCTION_321_0();
    v81(v80, v43);
    outlined destroy of ConversationControlsType(v0 + 16);
    *(v41 + *(v40 + 40)) = v2;
    *(v41 + *(v40 + 48)) = 0;
    v82 = (*((*v79 & *v75) + 0x110))(v41);

    OUTLINED_FUNCTION_40_17();
    if (v82)
    {
      OUTLINED_FUNCTION_216();
LABEL_23:
      v83 = *((v71 & v70) + 0x628);

      v83(v84);

      goto LABEL_27;
    }
  }

  v73 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_173_0();
  if (os_log_type_enabled(v73, v85))
  {
LABEL_25:
    v86 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v86);
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v87, v88, v89, v90, v91, 2u);
    OUTLINED_FUNCTION_26();
  }

LABEL_26:

LABEL_27:

  OUTLINED_FUNCTION_13();

  return v92();
}

Swift::Void __swiftcall ConversationControlsManager.acceptPodcastRecording()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_146();
  ConversationControlsManager.removePodcastRecordingConsentRequest()();
  OUTLINED_FUNCTION_13_2();
  (*((*MEMORY[0x1E69E7D40] & v4) + 0x980))(&v32);
  if (v33)
  {
    outlined init with take of TapInteractionHandler(&v32, v34);
    v5 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v6 = OUTLINED_FUNCTION_40_2();
    v7(v6);
    if (v32 == 13)
    {
      v8 = v35;
      v9 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      OUTLINED_FUNCTION_5_6();
      specialized ConversationControlsManager.presentActivity(activity:completion:)(v10, v11, v12, v1, v8, v9);
      v13 = [*(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter) currentAudioAndVideoCalls];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (specialized Array.count.getter(v14))
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v14 & 0xC000000000000001) == 0, v14);
        if ((v14 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1BFB22010](0, v14);
        }

        else
        {
          v15 = *(v14 + 32);
        }

        v16 = v15;

        type metadata accessor for TaskPriority();
        v17 = OUTLINED_FUNCTION_2_10();
        __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
        OUTLINED_FUNCTION_20();
        v21 = swift_allocObject();
        OUTLINED_FUNCTION_275(v21);
        swift_unknownObjectWeakInit();
        type metadata accessor for MainActor();
        v22 = v16;
        OUTLINED_FUNCTION_332();

        v23 = static MainActor.shared.getter();
        OUTLINED_FUNCTION_109();
        v24 = swift_allocObject();
        v25 = MEMORY[0x1E69E85E0];
        v24[2] = v23;
        v24[3] = v25;
        v24[4] = v1;
        v24[5] = v5;

        OUTLINED_FUNCTION_59();
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(v34);
      return;
    }

    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    outlined destroy of CallControlsService?(&v32, &_s15ConversationKit8Activity_pSgMd);
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v26 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v26, &static Logger.conversationControls);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_25(v28))
  {
    v29 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v29);
    OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v30, v31, "Failed to accept recording request.");
    OUTLINED_FUNCTION_26();
  }
}

uint64_t ConversationControlsManager.removePodcastRecordingConsentRequest()()
{
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, &static Logger.conversationControls);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = MEMORY[0x1E69E7D40];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315394;
    if ((*((*v6 & *v2) + 0x638))())
    {
      type metadata accessor for HUDActivity(0);
      v9 = String.init<A>(reflecting:)();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v20);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2080;
    type metadata accessor for ConversationControlsManager(0);
    v15 = >> prefix<A>(_:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v20);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Ending podcastRecordingConsentRequestActivity activity %s %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v8, -1, -1);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }

  else
  {
  }

  v18 = (*((*v6 & *v2) + 0x638))(v12, v13);
  if (v18)
  {
    (*(*v18 + 304))(v18);
  }

  return (*((*v6 & *v2) + 0x640))(0);
}

uint64_t closure #1 in ConversationControlsManager.acceptPodcastRecording()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  type metadata accessor for MainActor();
  v5[23] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[24] = v7;
  v5[25] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationControlsManager.acceptPodcastRecording(), v7, v6);
}

uint64_t closure #1 in ConversationControlsManager.acceptPodcastRecording()()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v1 = [objc_allocWithZone(MEMORY[0x1E69D8AB0]) initWithCall:v0[21] mode:1 isInitiatedLocally:0];
  v0[26] = v1;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter);
    v0[27] = v4;
    v4;

    v0[2] = v0;
    v5 = OUTLINED_FUNCTION_344();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
    OUTLINED_FUNCTION_30_22(v6);
    OUTLINED_FUNCTION_368(COERCE_DOUBLE(1107296256));
    OUTLINED_FUNCTION_193();
    v0[13] = v7;
    v0[14] = v5;
    OUTLINED_FUNCTION_289();
    [v8 v9];
    OUTLINED_FUNCTION_319();

    return MEMORY[0x1EEE6DEC8](v10);
  }

  else
  {

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_319();

    return v13(v12, v13, v14, v15, v16, v17, v18, v19);
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 224) = v4;
  v5 = v3[25];
  v6 = v3[24];
  if (v4)
  {
    v7 = closure #1 in ConversationControlsManager.acceptPodcastRecording();
  }

  else
  {
    v7 = closure #1 in ConversationControlsManager.acceptPodcastRecording();
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  OUTLINED_FUNCTION_13();

  return v3();
}

{
  OUTLINED_FUNCTION_44();
  v1 = v0[27];
  v2 = v0[26];

  swift_willThrow();

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v3, &static Logger.conversationControls);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  v6 = OUTLINED_FUNCTION_163(v5);
  v7 = v0[28];
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_182_0(v8);
    OUTLINED_FUNCTION_140();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_4_4();
  }

  OUTLINED_FUNCTION_13();

  return v14();
}

uint64_t closure #1 in ConversationControlsManager.declinePodcastRecording()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  type metadata accessor for MainActor();
  v4[19] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[20] = v6;
  v4[21] = v5;

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationControlsManager.declinePodcastRecording(), v6, v5);
}

uint64_t closure #1 in ConversationControlsManager.declinePodcastRecording()()
{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v1 = v0[18];
  ConversationControlsManager.removePodcastRecordingConsentRequest()();
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter);
  v3 = [v2 currentAudioAndVideoCalls];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
  OUTLINED_FUNCTION_108_0();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter(v4))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1BFB22010](0, v4);
    }

    else
    {
      v5 = *(v4 + 32);
    }

    v6 = v5;
    v0[22] = v5;

    v7 = [v6 podcastRecordingSession];
    if (v7)
    {

      v8 = [objc_allocWithZone(MEMORY[0x1E69D8A60]) initWithCall_];
      v0[23] = v8;
      v0[2] = v0;
      v9 = OUTLINED_FUNCTION_344();
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd);
      OUTLINED_FUNCTION_30_22(v10);
      OUTLINED_FUNCTION_368(COERCE_DOUBLE(1107296256));
      OUTLINED_FUNCTION_193();
      v0[13] = v11;
      v0[14] = v9;
      [v2 performRecordingRequest:v8 completion:v0 + 10];
      OUTLINED_FUNCTION_319();

      return MEMORY[0x1EEE6DEC8](v12);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_319();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_108();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 192) = v4;
  v5 = v3[21];
  v6 = v3[20];
  if (v4)
  {
    v7 = closure #1 in ConversationControlsManager.declinePodcastRecording();
  }

  else
  {
    v7 = closure #1 in ConversationControlsManager.declinePodcastRecording();
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 184);

  OUTLINED_FUNCTION_13();

  return v2();
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v1 = v0[23];

  swift_willThrow();

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  v5 = OUTLINED_FUNCTION_163(v4);
  v6 = v0[24];
  v7 = v0[22];
  if (v5)
  {
    v8 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_182_0(v8);
    OUTLINED_FUNCTION_140();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_4_4();
  }

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_319();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t ConversationControlsManager.addIncomingScreenSharingRequestActivity()()
{
  OUTLINED_FUNCTION_55();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_34();
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_10_0();
  v7 = OUTLINED_FUNCTION_379(v3, v4, v5, v6);
  v8 = v0;
  static MainActor.shared.getter();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_37_0();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v7;
  v9[3] = v10;
  v9[4] = v8;
  type metadata completion function for SyncedScreeningAlphaGradientView();
  OUTLINED_FUNCTION_398();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in ConversationControlsManager.addPodcastRecordingConsentRequestActivity()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = type metadata accessor for UUID();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  v4[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[24] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ConversationControlsManager.addPodcastRecordingConsentRequestActivity(), v7, v6);
}

uint64_t closure #1 in ConversationControlsManager.addPodcastRecordingConsentRequestActivity()()
{
  v96 = v0;
  v2 = *(v0 + 144);

  v4 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x638))(v3))
  {

    OUTLINED_FUNCTION_256_0();
    if (!v5)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v6 = *(v0 + 144);
    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v7, &static Logger.conversationControls);
    v8 = v6;
    v9 = Logger.logObject.getter();
    static os_log_type_t.default.getter();

    if (OUTLINED_FUNCTION_317())
    {
      v10 = *(v0 + 144);
      OUTLINED_FUNCTION_42();
      v95 = OUTLINED_FUNCTION_38_3();
      *v8 = 136315138;
      *(v0 + 136) = v10;
      OUTLINED_FUNCTION_183();
      v11 = >> prefix<A>(_:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v95);
      OUTLINED_FUNCTION_420();
      *(v8 + 1) = v1;
      OUTLINED_FUNCTION_140();
      _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
      OUTLINED_FUNCTION_28_2();
      OUTLINED_FUNCTION_4_4();
    }

    v4 = MEMORY[0x1E69E7D40];
    ConversationControlsManager.removePodcastRecordingConsentRequest()();
  }

  OUTLINED_FUNCTION_216();
  if (!(*((v19 & v18) + 0x4A0))())
  {
    OUTLINED_FUNCTION_256_0();
    if (!v5)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v72 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v72, &static Logger.conversationControls);
    v73 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_173_0();
    if (!os_log_type_enabled(v73, v74))
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_256_0();
  if (!v5)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v20 = *(v0 + 144);
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, &static Logger.conversationControls);
  v22 = v20;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 144);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_37_7();
    OUTLINED_FUNCTION_374();
    *v22 = 136315138;
    *(v0 + 128) = v25;
    OUTLINED_FUNCTION_183();
    v26 = >> prefix<A>(_:)();
    OUTLINED_FUNCTION_345(v26, v27, v28, v29, v30, v31);
    OUTLINED_FUNCTION_17_2();
    *(v22 + 1) = &stru_1BC4BA000;
    OUTLINED_FUNCTION_12_15();
    _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
    OUTLINED_FUNCTION_72_8();
    OUTLINED_FUNCTION_2_2();
  }

  v37 = *(v0 + 144);
  v38 = SBUIIsSystemApertureEnabled();
  v39 = *v4 & *v37;
  v40 = *(v0 + 176);
  v41 = *(v0 + 184);
  v42 = *(v0 + 144);
  v43 = *(v0 + 152);
  if (v38)
  {
    v94 = (*(v39 + 1520))();
    *(v0 + 64) = 27;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 104) = 7;
    (*((*v4 & *v42) + 0x2A0))();
    OUTLINED_FUNCTION_343();
    OUTLINED_FUNCTION_110_3();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_367();
    outlined init with copy of ConversationControlsType(v0 + 64, v41 + 8);
    OUTLINED_FUNCTION_215();
    OUTLINED_FUNCTION_406();
    v44 = OUTLINED_FUNCTION_65_9();
    v45(v44);
    v46 = v42;
    static Date.now.getter();
    swift_unknownObjectRelease();
    v47 = OUTLINED_FUNCTION_321_0();
    v48(v47);
    outlined destroy of ConversationControlsType(v0 + 64);
    *(v41 + *(v40 + 40)) = v2;
    *(v41 + *(v40 + 48)) = 0;
    v49 = (*((*MEMORY[0x1E69E7D40] & *v94) + 0x120))(v41);

    OUTLINED_FUNCTION_40_17();
    if (v49)
    {
      v50 = *(v0 + 144);

      v51 = Logger.logObject.getter();
      static os_log_type_t.default.getter();

      if (OUTLINED_FUNCTION_317())
      {
        v52 = *(v0 + 144);
        OUTLINED_FUNCTION_30_1();
        OUTLINED_FUNCTION_16_8();
        OUTLINED_FUNCTION_374();
        *v50 = 136315394;
        *(v0 + 112) = v52;
        OUTLINED_FUNCTION_183();
        v53 = >> prefix<A>(_:)();
        OUTLINED_FUNCTION_345(v53, v54, v55, v56, v57, v58);
        OUTLINED_FUNCTION_17_2();
        OUTLINED_FUNCTION_347();
        v59 = >> prefix<A>(_:)();
        OUTLINED_FUNCTION_345(v59, v60, v61, v62, v63, v64);
        OUTLINED_FUNCTION_17_2();
        *(v50 + 14) = v43;
        OUTLINED_FUNCTION_140();
        _os_log_impl(v65, v66, v67, v68, v69, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_3_26();
        OUTLINED_FUNCTION_4_4();
      }

      v70 = **(v0 + 144);
      v71 = *MEMORY[0x1E69E7D40];
      goto LABEL_23;
    }
  }

  else
  {
    v75 = (*(v39 + 1544))();
    OUTLINED_FUNCTION_285_0(27);
    OUTLINED_FUNCTION_110_3();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_367();
    outlined init with copy of ConversationControlsType(v0 + 16, v41 + 8);
    OUTLINED_FUNCTION_215();
    OUTLINED_FUNCTION_110_3();
    swift_unknownObjectWeakAssign();
    v76 = OUTLINED_FUNCTION_65_9();
    v77(v76);
    v78 = v42;
    v79 = MEMORY[0x1E69E7D40];
    static Date.now.getter();
    v80 = OUTLINED_FUNCTION_321_0();
    v81(v80, v43);
    outlined destroy of ConversationControlsType(v0 + 16);
    *(v41 + *(v40 + 40)) = v2;
    *(v41 + *(v40 + 48)) = 0;
    v82 = (*((*v79 & *v75) + 0x110))(v41);

    OUTLINED_FUNCTION_40_17();
    if (v82)
    {
      OUTLINED_FUNCTION_216();
LABEL_23:
      v83 = *((v71 & v70) + 0x640);

      v83(v84);

      goto LABEL_27;
    }
  }

  v73 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_173_0();
  if (os_log_type_enabled(v73, v85))
  {
LABEL_25:
    v86 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v86);
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v87, v88, v89, v90, v91, 2u);
    OUTLINED_FUNCTION_26();
  }

LABEL_26:

LABEL_27:

  OUTLINED_FUNCTION_13();

  return v92();
}

void closure #1 in ConversationControlsManager.initiateBackgroundCollaboration(forDisclosedInitiator:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for StagedCollaboration(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, &static Logger.conversationControls);
    _s15ConversationKit11ParticipantVWOcTm_8();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v39 = a3;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v38 = a2;
      v19 = v18;
      v20 = swift_slowAlloc();
      v37 = a5;
      v21 = v20;
      v42 = v20;
      *v19 = 136315138;
      v40 = outlined bridged method (ob) of @objc LPLinkMetadata.title.getter([*&v11[*(v9 + 40)] metadata]);
      v41 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
      v23 = String.init<A>(describing:)();
      v25 = v24;
      _s15ConversationKit11ParticipantVWOhTm_10();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v42);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_1BBC58000, v15, v16, "initiateBackgroundCollaboration for: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      v27 = v21;
      a5 = v37;
      MEMORY[0x1BFB23DF0](v27, -1, -1);
      v28 = v19;
      a2 = v38;
      MEMORY[0x1BFB23DF0](v28, -1, -1);
    }

    else
    {

      v29 = _s15ConversationKit11ParticipantVWOhTm_10();
    }

    v30 = MEMORY[0x1E69E7D40];
    v31 = (*((*MEMORY[0x1E69E7D40] & *v13) + 0x368))(v29);
    if (v31)
    {
      v32 = v31;
      [v31 initiateBackgroundCollaborationForContent:*(a4 + *(v9 + 40)) faceTimeConversation:a5];
    }

    if ((*((*v30 & *v13) + 0x4A0))())
    {
      v34 = v33;
      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeOGMd);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1BC4BA940;
      *(v35 + 32) = 10;
      *(v35 + 40) = 0u;
      *(v35 + 56) = 0u;
      *(v35 + 72) = 7;
      (*(v34 + 32))();

      swift_unknownObjectRelease();
    }

    if (a2)
    {
      a2(1);
    }
  }

  else if (a2)
  {
    a2(0);
  }
}

uint64_t closure #2 in ConversationControlsManager.initiateBackgroundCollaboration(forDisclosedInitiator:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v15;
  *(v8 + 64) = v14;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 24) = a4;
  v9 = type metadata accessor for UUID();
  *(v8 + 88) = v9;
  *(v8 + 96) = *(v9 - 8);
  *(v8 + 104) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 112) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 120) = v11;
  *(v8 + 128) = v10;

  return MEMORY[0x1EEE6DFA0](closure #2 in ConversationControlsManager.initiateBackgroundCollaboration(forDisclosedInitiator:completion:), v11, v10);
}

uint64_t closure #2 in ConversationControlsManager.initiateBackgroundCollaboration(forDisclosedInitiator:completion:)()
{
  OUTLINED_FUNCTION_9();
  v1 = [*(v0 + 32) UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for StagedCollaboration(0);
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = closure #2 in ConversationControlsManager.initiateBackgroundCollaboration(forDisclosedInitiator:completion:);

  return CollaborationInitiationManager.ensureInitiatorDisclosure(inConversationUUID:initiator:itemTitle:alertHostWindow:viewController:)();
}

{
  OUTLINED_FUNCTION_320();
  OUTLINED_FUNCTION_44();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v6 = v5;
  *v6 = *v1;
  v5[18] = v0;

  v7 = v4[13];
  v8 = v4[12];
  v9 = v4[11];
  if (!v0)
  {
    *(v5 + 152) = v3 & 1;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_319();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 152);

  if (v1 == 1)
  {
    (*(v0 + 56))(v2);
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v3 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v3, &static Logger.conversationControls);
    v4 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    OUTLINED_FUNCTION_173_0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v6);
      OUTLINED_FUNCTION_112_0();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_26();
    }
  }

  OUTLINED_FUNCTION_13();

  return v12();
}

{
  OUTLINED_FUNCTION_48();
  v22 = v0;

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[18];
  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, &static Logger.conversationControls);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[18];
    v7 = OUTLINED_FUNCTION_42();
    v8 = OUTLINED_FUNCTION_23();
    v21 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v9 = >> prefix<A>(_:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v21);

    *(v7 + 4) = v11;
    OUTLINED_FUNCTION_112_0();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_26();
  }

  v17 = v0[9];
  v18 = v0[18];
  if (v17)
  {
    v17(0);
  }

  OUTLINED_FUNCTION_13();

  return v19();
}

void closure #1 in ConversationControlsManager.presentCollaboration(_:completion:)(char a1, uint64_t a2, void (*a3)(id), uint64_t a4, char *a5, uint64_t a6)
{
  v36[1] = a4;
  v37 = a3;
  v9 = type metadata accessor for ForegroundCollaborationState(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(Strong + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController);

    v15 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    swift_beginAccess();
    outlined init with copy of IDSLookupManager(v14 + v15, v38);

    v17 = v39;
    v16 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v18 = (*(v16 + 72))(v17, v16);
    __swift_destroy_boxed_opaque_existential_1(v38);
    v19 = v18 != 0;
    if ((a1 & 1) != 0 && v18)
    {
      swift_beginAccess();
      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v21 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV09highlightB0_AA4DateV7startedtMd);
        v22 = *(type metadata accessor for Collaboration(0) + 44);
        v23 = type metadata accessor for URL();
        (*(*(v23 - 8) + 16))(v11, &a5[v22], v23);
        static Date.now.getter();
        swift_storeEnumTagMultiPayload();
        (*((*MEMORY[0x1E69E7D40] & *v21) + 0x8C8))(v11);
      }

      v24 = MEMORY[0x1BFB209B0](*a5, *(a5 + 1));
      v25 = [v18 openCollaborationWithIdentifier:v24 forConversation:a6];

      v26 = v37;
      if (!v37)
      {
        goto LABEL_17;
      }

LABEL_16:
      v26(v25);
      goto LABEL_17;
    }
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BC4BAA20;
  LOBYTE(v38[0]) = a1 & 1;
  v28 = >> prefix<A>(_:)();
  v30 = v29;
  v31 = MEMORY[0x1E69E6158];
  *(v27 + 56) = MEMORY[0x1E69E6158];
  v32 = lazy protocol witness table accessor for type String and conformance String();
  *(v27 + 64) = v32;
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  if (v19)
  {
    v38[0] = v18;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationManager);
    v33 = v18;
    v34 = String.init<A>(reflecting:)();
  }

  else
  {
    v35 = 0xE300000000000000;
    v34 = 7104878;
  }

  *(v27 + 96) = v31;
  *(v27 + 104) = v32;
  *(v27 + 72) = v34;
  *(v27 + 80) = v35;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v26 = v37;
  if (v37)
  {
    v25 = 0;
    goto LABEL_16;
  }

LABEL_17:
}

id closure #1 in ConversationControlsManager.presentActivity(activity:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v59 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v60 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v56 = *(v12 - 8);
  v57 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, &static Logger.conversationControls);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v61 = v9;
  if (v18)
  {
    v53 = v6;
    v54 = v7;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock = v20;
    *v19 = 136315138;
    if (a1)
    {
      v63 = a1;
      v21 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v22 = String.init<A>(reflecting:)();
      v24 = v23;
    }

    else
    {
      v24 = 0xE300000000000000;
      v22 = 7104878;
    }

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &aBlock);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_1BBC58000, v16, v17, "LaunchApplication error:%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1BFB23DF0](v20, -1, -1);
    MEMORY[0x1BFB23DF0](v19, -1, -1);

    v6 = v53;
    v7 = v54;
  }

  else
  {
  }

  v26 = a2[3];
  v27 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v26);
  v28 = (*(v27 + 104))(v26, v27);
  if (!v28 || (v29 = v28, v30 = [v28 activity], v31 = objc_msgSend(v30, sel_isScreenSharingActivity), v29, v30, !v31))
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v42 = static OS_dispatch_queue.main.getter();
    v47 = swift_allocObject();
    v49 = v58;
    v48 = v59;
    v47[2] = v58;
    v47[3] = v48;
    v47[4] = a1;
    v68 = partial apply for closure #1 in closure #1 in ConversationControlsManager.presentActivity(activity:completion:);
    v69 = v47;
    aBlock = MEMORY[0x1E69E9820];
    v65 = 1107296256;
    v66 = thunk for @escaping @callee_guaranteed () -> ();
    v67 = &block_descriptor_619;
    v46 = _Block_copy(&aBlock);
    v50 = a1;
    outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v49);

    v36 = v62;
LABEL_18:
    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v51 = v61;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v36, v51, v46);
    _Block_release(v46);

    (*(v7 + 8))(v51, v6);
    return (*(v60 + 8))(v36, v10);
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1BBC58000, v32, v33, "Posting notification to present Screen Sharing UI", v34, 2u);
    MEMORY[0x1BFB23DF0](v34, -1, -1);
  }

  result = [objc_opt_self() defaultWorkspace];
  v36 = v62;
  if (result)
  {
    v37 = result;
    v38 = [objc_opt_self() screenSharingAppURL];
    if (v38)
    {
      v39 = v55;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL._bridgeToObjectiveC()(v40);
      v38 = v41;
      (*(v56 + 8))(v39, v57);
    }

    [v37 openURL:v38 configuration:0 completionHandler:0];

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v42 = static OS_dispatch_queue.main.getter();
    v43 = swift_allocObject();
    v45 = v58;
    v44 = v59;
    *(v43 + 16) = v58;
    *(v43 + 24) = v44;
    v68 = partial apply for closure #1 in SpamAlertBuilder.reportAndBlockGroupInitiatorAlert(of:blockHandler:blockAndReportHandler:cancelHandler:preparationHandler:);
    v69 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v65 = 1107296256;
    v66 = thunk for @escaping @callee_guaranteed () -> ();
    v67 = &block_descriptor_625;
    v46 = _Block_copy(&aBlock);
    outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v45);

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

id TVRViewServiceConfigContext.__allocating_init(deviceIdentifier:identifierType:deviceType:launchContext:launchMethod:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = MEMORY[0x1BFB209B0](a1, a2);

  v14 = [v12 initWithDeviceIdentifier:v13 identifierType:a3 deviceType:a4 launchContext:a5 launchMethod:a6];

  return v14;
}

void closure #1 in ConversationControlsManager.viewActivity(_:)(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x4B8))();
      v5 = v4;

      if (v3)
      {
        ObjectType = swift_getObjectType();
        (*(v5 + 32))(0xD00000000000001BLL, 0x80000001BC5097D0, 1, ObjectType, v5);
        swift_unknownObjectRelease();
      }
    }
  }
}

Swift::Void __swiftcall ConversationControlsManager.didOpenGameOverlay()()
{
  v1 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v4))
  {
    v5 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v5);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_293();
  if ((*(v11 + 1184))())
  {
    v12 = OUTLINED_FUNCTION_254_0();
    (*(v1 + 48))(v12, v1);

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall ConversationControlsManager.didCloseGameOverlay()()
{
  v1 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v4))
  {
    v5 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v5);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_293();
  if ((*(v11 + 1184))())
  {
    v12 = OUTLINED_FUNCTION_254_0();
    (*(v1 + 56))(v12, v1);

    swift_unknownObjectRelease();
  }
}

void closure #1 in ConversationControlsManager.setupConversationControllerLocalStateObservers()()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = MEMORY[0x1E69E7D40];
      v8 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xA48))();
      (*((*v7 & *v6) + 0xA80))(v8);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #2 in ConversationControlsManager.setupConversationControllerLocalStateObservers()(char a1, void *a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  a2 = Strong;
  v2 = MEMORY[0x1E69E7D40];
  if ((a1 & 1) != ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x710))() & 0x100) >> 8)
  {
    if (one-time initialization token for conversationControls == -1)
    {
LABEL_5:
      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, &static Logger.conversationControls);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *&v25[0] = v15;
        *v14 = 136315138;
        if (a1)
        {
          v16 = 1702195828;
        }

        else
        {
          v16 = 0x65736C6166;
        }

        if (a1)
        {
          v17 = 0xE400000000000000;
        }

        else
        {
          v17 = 0xE500000000000000;
        }

        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v25);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_1BBC58000, v12, v13, "didUpdateLocalScreenSharing, enabled: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v15);
        MEMORY[0x1BFB23DF0](v15, -1, -1);
        MEMORY[0x1BFB23DF0](v14, -1, -1);
      }

      v19 = *((*v2 & *a2) + 0x720);
      v20 = v19(v25);
      *(v21 + 1) = a1 & 1;
      v22 = v20(v25, 0);
      if (a1)
      {
        v23 = v19(v25);
        *(v24 + 17) = 0;
        v22 = v23(v25, 0);
      }

      (*((*v2 & *a2) + 0xA80))(v22);
      v26 = 0;
      memset(v25, 0, sizeof(v25));
      (*((*v2 & *a2) + 0xA88))(v25);
      outlined destroy of CallControlsService?(v25, &_s15ConversationKit8Activity_pSgMd);
      ConversationControlsManager.notifyDelegates(about:forceUpdate:)(0, 0, 0);
      goto LABEL_16;
    }

LABEL_19:
    swift_once();
    goto LABEL_5;
  }

LABEL_16:
}

void closure #3 in ConversationControlsManager.setupConversationControllerLocalStateObservers()()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = ConversationControlsManager.localVideoStateChangedAlert.getter();
      (*((*MEMORY[0x1E69E7D40] & *v6) + 0x8E0))(v7);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #4 in ConversationControlsManager.setupConversationControllerLocalStateObservers()(void *a1, void *a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  a2 = Strong;
  if (!a1)
  {
    v5 = Strong;
    goto LABEL_13;
  }

  v2 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x650);
  v5 = a1;
  v12 = v11();
  if (v12)
  {
    v8 = v12;
    if ([v5 isEqualToRouteIgnoringIsRecommended_])
    {
LABEL_10:

      goto LABEL_11;
    }

    if (one-time initialization token for conversationControls == -1)
    {
LABEL_7:
      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, &static Logger.conversationControls);
      v14 = v5;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v37 = v16;
        v18 = v17;
        v36 = swift_slowAlloc();
        v39 = v36;
        *v18 = 136315138;
        v19 = v14;
        v20 = [v19 description];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v14;
        v22 = v21;
        v24 = v23;

        v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v39);
        v2 = MEMORY[0x1E69E7D40];

        *(v18 + 4) = v25;
        v14 = v38;
        _os_log_impl(&dword_1BBC58000, v15, v37, "audioRouteDidChange: %s", v18, 0xCu);
        v26 = v36;
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x1BFB23DF0](v26, -1, -1);
        MEMORY[0x1BFB23DF0](v18, -1, -1);
      }

      v27 = v14;
      ConversationControlsManager.audioRoute.setter(a1, v28, v29, v30, v31, v32, v33, v34, v35, v36);
      (*((*v2 & *a2) + 0xA80))();
      goto LABEL_10;
    }

LABEL_16:
    swift_once();
    goto LABEL_7;
  }

LABEL_11:

LABEL_13:
}

void closure #5 in ConversationControlsManager.setupConversationControllerLocalStateObservers()()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    swift_beginAccess();
  }

  else
  {
    __break(1u);
  }
}

void closure #7 in ConversationControlsManager.setupConversationControllerLocalStateObservers()(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      ConversationControlsManager.bluetoothAudioFormat.setter(a1, 0, v8, v9, v10, v11, v12, v13, v15, v16);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #8 in ConversationControlsManager.setupConversationControllerLocalStateObservers()()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      if ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x4B8))())
      {
        v8 = v7;
        ObjectType = swift_getObjectType();
        (*(v8 + 48))(ObjectType, v8);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in ConversationControlsManager.setupConversationControllerConversationStateObservers()(char a1, void *a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  a2 = Strong;
  if (one-time initialization token for conversationControls != -1)
  {
    goto LABEL_12;
  }

LABEL_4:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, &static Logger.conversationControls);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1 & 1;
    _os_log_impl(&dword_1BBC58000, v11, v12, "CCM callConversationChanged to: %{BOOL}d", v13, 8u);
    MEMORY[0x1BFB23DF0](v13, -1, -1);
  }

  v14 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x2A0);
  v14();
  v16 = v15;
  ObjectType = swift_getObjectType();
  LODWORD(v16) = (*(v16 + 208))(ObjectType, v16);
  v18 = swift_unknownObjectRelease();
  if (v16 == 1)
  {
    (v14)(v18);
    v20 = v19;
    v21 = swift_getObjectType();
    LOBYTE(v20) = (*(v20 + 152))(v21, v20);
    swift_unknownObjectRelease();
    if (v20)
    {
      ConversationControlsManager.presentConversationScreenSharingRequest()();
    }
  }
}

Swift::Void __swiftcall ConversationControlsManager.presentConversationScreenSharingRequest()()
{
  OUTLINED_FUNCTION_408();
  v28 = v2;
  v29 = v3;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, &static Logger.conversationControls);
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = MEMORY[0x1E69E7D40];
  if (v8)
  {
    v10 = 7104878;
    OUTLINED_FUNCTION_42();
    oslog[0] = OUTLINED_FUNCTION_38_3();
    *v1 = 136315138;
    v11 = (*((*v9 & *v5) + 0x2C0))();
    if (v11 && (v12 = v11, v13 = specialized Conversation.currentScreenSharingRequest(ignoring:)(MEMORY[0x1E69E7CC0]), v12, v13))
    {
      v26 = v13;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUScreenSharingRequest);
      v10 = String.init<A>(reflecting:)();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
    }

    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v15, oslog);
    OUTLINED_FUNCTION_242();

    *(v1 + 4) = v10;
    OUTLINED_FUNCTION_302(&dword_1BBC58000, v6, v7, "CCM: presentConversationScreenSharingRequest request: %s");
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
  }

  OUTLINED_FUNCTION_106_2();
  v17 = (*(v16 + 704))();
  if (v17)
  {
    v18 = v17;
    v19 = specialized Conversation.currentScreenSharingRequest(ignoring:)(MEMORY[0x1E69E7CC0]);

    if (v19)
    {
      if ([v19 type] == 4)
      {
        ConversationControlsManager.addIncomingScreenSharingRequestActivity()();
      }

      else if ([v19 type] == 2)
      {
        ConversationControlsManager.startScreenShareWithCountdown(completion:)(TPNumberPadCharacter.rawValue.getter, 0, v20, v21, v22, v23, v24, v25, v26, oslog[0], oslog[1], oslog[2], oslog[3], oslog[4], oslog[5], oslog[6], oslog[7], oslog[8]);
      }
    }
  }

  OUTLINED_FUNCTION_415();
}

void closure #2 in ConversationControlsManager.setupConversationControllerConversationStateObservers()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v99 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v99 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v15 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v16 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_43:
    swift_once();
    goto LABEL_4;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  a3 = Strong;
  v101 = v8;
  if (one-time initialization token for conversationControls != -1)
  {
    goto LABEL_43;
  }

LABEL_4:
  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, &static Logger.conversationControls);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v102 = a2;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v100 = v19;
    v24 = v23;
    v25 = a1;
    v26 = a2;
    v99 = swift_slowAlloc();
    v106[0] = v99;
    *v24 = 136315394;
    v103[0] = v25;
    type metadata accessor for TUConversationState(0);
    v27 = >> prefix<A>(_:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v106);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    v103[0] = v26;
    a1 = v25;
    v30 = >> prefix<A>(_:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v106);

    *(v24 + 14) = v32;
    _os_log_impl(&dword_1BBC58000, v20, v21, "CCM Received conversationStateDidChange %s -> %s", v24, 0x16u);
    v33 = v99;
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v33, -1, -1);
    MEMORY[0x1BFB23DF0](v24, -1, -1);
  }

  v34 = MEMORY[0x1E69E7D40];
  v35 = (*((*MEMORY[0x1E69E7D40] & *a3) + 0xA48))();
  (*((*v34 & *a3) + 0xA80))(v35);
  v36 = type metadata accessor for Participant(0);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v36);
  (*((*v34 & *a3) + 0xA68))(v11);
  v37 = outlined destroy of CallControlsService?(v11, &_s15ConversationKit11ParticipantVSgMd);
  v38 = *((*v34 & *a3) + 0x488);
  v38(v106, v37);
  if (v107)
  {
    outlined init with copy of IDSLookupManager(v106, v103);
    outlined destroy of CallControlsService?(v106, &_s15ConversationKit19CallControlsService_pSgMd);
    v39 = v104;
    v40 = v105;
    __swift_project_boxed_opaque_existential_1(v103, v104);
    v41 = v102;
    (*(v40 + 128))(v102, v39, v40);
    v42 = __swift_destroy_boxed_opaque_existential_1(v103);
  }

  else
  {
    v42 = outlined destroy of CallControlsService?(v106, &_s15ConversationKit19CallControlsService_pSgMd);
    v41 = v102;
  }

  v38(v106, v42);
  if (v107)
  {
    outlined init with copy of IDSLookupManager(v106, v103);
    outlined destroy of CallControlsService?(v106, &_s15ConversationKit19CallControlsService_pSgMd);
    v43 = v104;
    v44 = v105;
    __swift_project_boxed_opaque_existential_1(v103, v104);
    v45 = (*((*v34 & *a3) + 0x928))();
    (*(v44 + 136))(v45, v43, v44);
    __swift_destroy_boxed_opaque_existential_1(v103);
  }

  else
  {
    outlined destroy of CallControlsService?(v106, &_s15ConversationKit19CallControlsService_pSgMd);
  }

  if (v41 == 4)
  {
    type metadata accessor for ConversationControlsManager(0);
    static ConversationControlsManager.shouldShowAVLessLeaveConfirmation.setter(0);
    v46 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v101, 1, 1, v46);
    type metadata accessor for MainActor();
    v47 = a3;
    v48 = static MainActor.shared.getter();
    v49 = swift_allocObject();
    v50 = MEMORY[0x1E69E85E0];
    v49[2] = v48;
    v49[3] = v50;
    v49[4] = v47;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

    v52 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activeRemoteAlertHandle;
    v53 = *(v47 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_activeRemoteAlertHandle);
    if (v53)
    {
      v54 = *(*v53 + 104);

      v54(v55);

      *(v47 + v52) = 0;
    }

    if ((*((*v34 & *v47) + 0x4A0))(v51))
    {
      v57 = v56;
      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeOGMd);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1BC4BB980;
      *(v58 + 32) = 25;
      *(v58 + 40) = 0u;
      *(v58 + 56) = 0u;
      *(v58 + 72) = 7;
      *(v58 + 80) = 26;
      *(v58 + 88) = 0u;
      *(v58 + 104) = 0u;
      *(v58 + 120) = 7;
      *(v58 + 128) = 27;
      *(v58 + 136) = 0u;
      *(v58 + 152) = 0u;
      *(v58 + 168) = 7;
      (*(v57 + 32))();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v59 = ConversationController.localVideoSupported.getter();
    v60 = ConversationControlsManager.localVideoButtonState.getter();
    ConversationControlsManager.localVideoButtonState.setter(v60 & 0x100 | v59 & 1u, v61, v62, v63, v64, v65, v66, v67, v99, v100, SWORD2(v100), BYTE6(v100), SHIBYTE(v100));
    if (v41 != 2 && (a1 == 3 || v41 != 3))
    {
      goto LABEL_37;
    }

    (*((*v34 & *a3) + 0x2A0))();
    v69 = v68;
    ObjectType = swift_getObjectType();
    LOBYTE(v69) = (*(v69 + 144))(ObjectType, v69);
    swift_unknownObjectRelease();
    if (v69)
    {
      goto LABEL_37;
    }

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = a1;
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v106[0] = v75;
      *v74 = 136315394;
      v103[0] = v73;
      type metadata accessor for TUConversationState(0);
      v76 = >> prefix<A>(_:)();
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, v106);

      *(v74 + 4) = v78;
      *(v74 + 12) = 2080;
      v103[0] = v41;
      v79 = >> prefix<A>(_:)();
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, v106);

      *(v74 + 14) = v81;
      _os_log_impl(&dword_1BBC58000, v71, v72, "conversationStateDidChange, from:%s to:%s -> present HUD", v74, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v75, -1, -1);
      MEMORY[0x1BFB23DF0](v74, -1, -1);
    }

    v82 = *((*v34 & *a3) + 0x2C0);
    v83 = v82();
    if (v83)
    {
      v84 = v83;
      v85 = [v83 isContinuitySession];
    }

    else
    {
      v85 = 0;
    }

    if ([*(a3 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags) usesModernScreenSharingFromMessages])
    {
      ConversationControlsManager.presentConversationScreenSharingRequest()();
    }

    else if ((v85 & 1) == 0)
    {
      ConversationControlsManager.showHUD()();
    }

    v86 = v82();
    if (v86)
    {
      v87 = v86;
      v88 = [v86 activeRemoteParticipants];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
      lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant);
      v89 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      specialized Sequence.compactMap<A>(_:)(v89);
      v91 = v90;

      v92 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs6UInt64V_SayAEGTt0g5(v91);
      (*((*v34 & *a3) + 0x300))(v92);
      if (v41 != 3 || (v93 = [v87 activeRemoteParticipants], v94 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v93, v95 = specialized Set.count.getter(v94), , v95) || (v96 = objc_msgSend(v87, sel_pendingMembers), type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember), lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember), v97 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v96, v98 = specialized Set.count.getter(v97), , v98 < 1) || (objc_msgSend(v87, sel_ignoreLMIRequests) & 1) != 0)
      {
        (*((*v34 & *a3) + 0x910))(0);
      }

      else
      {
        ConversationControlsManager.scheduleDelayedLMIBanner()();
      }
    }

    else
    {
LABEL_37:
    }
  }
}

uint64_t closure #1 in closure #2 in ConversationControlsManager.setupConversationControllerConversationStateObservers()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in ConversationControlsManager.setupConversationControllerConversationStateObservers(), v6, v5);
}

uint64_t closure #1 in closure #2 in ConversationControlsManager.setupConversationControllerConversationStateObservers()()
{
  OUTLINED_FUNCTION_24_0();

  ConversationControlsManager.removeIncomingScreenShareRequest()();
  ConversationControlsManager.removePodcastRecordingConsentRequest()();
  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t ConversationControlsManager.scheduleDelayedLMIBanner()()
{
  v20 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v19 = v6;
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x910))(1);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v13 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v18 = *(v7 + 8);
  v18(v10, v6);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in ConversationControlsManager.scheduleDelayedLMIBanner();
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_575;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v16 = v20;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB21510](v12, v5, v2, v15);
  _Block_release(v15);

  (*(v23 + 8))(v2, v16);
  (*(v21 + 8))(v5, v22);
  return (v18)(v12, v19);
}

void closure #3 in ConversationControlsManager.setupConversationControllerConversationStateObservers()(char a1, void *a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  a2 = Strong;
  if (one-time initialization token for conversationControls != -1)
  {
    goto LABEL_13;
  }

LABEL_4:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, &static Logger.conversationControls);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1 & 1;
    _os_log_impl(&dword_1BBC58000, v11, v12, "Controls manager handling didUpdateWantsHoldMusic:%{BOOL}d", v13, 8u);
    MEMORY[0x1BFB23DF0](v13, -1, -1);
  }

  if (a1)
  {
    if ((*((*MEMORY[0x1E69E7D40] & *a2) + 0x4B8))())
    {
      v15 = v14;
      ObjectType = swift_getObjectType();
      (*(v15 + 32))(0xD000000000000015, 0x80000001BC509490, 1, ObjectType, v15);

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    ConversationControlsManager.showHUD()();
  }
}

void closure #4 in ConversationControlsManager.setupConversationControllerConversationStateObservers()()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      ConversationControlsManager.notifyDelegates(about:forceUpdate:)(0, 0, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #5 in ConversationControlsManager.setupConversationControllerConversationStateObservers()()
{
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_7();
  v2 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v0 = static OS_dispatch_queue.main.getter();
  v3 = OUTLINED_FUNCTION_23_6();
  v4(v3);
  _dispatchPreconditionTest(_:)();
  v5 = OUTLINED_FUNCTION_3_7();
  v6(v5);
  if (v2)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = OUTLINED_FUNCTION_73_7();
      ConversationControlsManager.notifyDelegates(about:forceUpdate:)(v9, v10, v11);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #7 in ConversationControlsManager.setupConversationControllerConversationStateObservers()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  a4 = Strong;
  v14 = MEMORY[0x1E69E7D40];
  v15 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x2C0))();
  if (v15)
  {
    v8 = v15;
    if ([v15 state] != 3)
    {
LABEL_9:

      a4 = v8;
      goto LABEL_10;
    }

    v16 = type metadata accessor for Participant(0);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v16);
    (*((*v14 & *a4) + 0xA68))(v7);
    outlined destroy of CallControlsService?(v7, &_s15ConversationKit11ParticipantVSgMd);
    if (one-time initialization token for conversationControls == -1)
    {
LABEL_6:
      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, &static Logger.conversationControls);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1BBC58000, v18, v19, "Present HUD: groupNameAndPhotoDidChange", v20, 2u);
        MEMORY[0x1BFB23DF0](v20, -1, -1);
      }

      ConversationControlsManager.notifyDelegates(about:forceUpdate:)(0, 0, 0);
      goto LABEL_9;
    }

LABEL_13:
    swift_once();
    goto LABEL_6;
  }

LABEL_10:
}

void closure #8 in ConversationControlsManager.setupConversationControllerConversationStateObservers()()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = MEMORY[0x1E69E7D40];
      v8 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x2C0))();
      if (v8)
      {
        v9 = v8;
        if ([v8 state] == 3)
        {
          (*((*v7 & *v6) + 0xA48))();
          ConversationControlsManager.notifyDelegates(about:forceUpdate:)(0, 0, 0);
        }

        v6 = v9;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #9 in ConversationControlsManager.setupConversationControllerConversationStateObservers()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xA48))();
      v11 = type metadata accessor for Participant(0);
      __swift_storeEnumTagSinglePayload(v2, 1, 1, v11);
      (*((*v10 & *v9) + 0xA68))(v2);
      outlined destroy of CallControlsService?(v2, &_s15ConversationKit11ParticipantVSgMd);
      ConversationControlsManager.notifyDelegates(about:forceUpdate:)(0, 0, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #10 in ConversationControlsManager.setupConversationControllerConversationStateObservers()(uint64_t a1, uint64_t a2)
{
  v73 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v72 = &v72 - v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v72 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v15 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v16 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_7:
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_8:
      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Logger.conversationKit);
      swift_unknownObjectRetain();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v77 = v35;
        *v34 = 136315138;
        ObjectType = swift_getObjectType();
        LODWORD(v74[0]) = (*(a2 + 208))(ObjectType, a2);
        type metadata accessor for TUCallStatus(0);
        v37 = >> prefix<A>(_:)();
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v77);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_1BBC58000, v32, v33, "ConversationControlsManager Skipping call status update: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x1BFB23DF0](v35, -1, -1);
        MEMORY[0x1BFB23DF0](v34, -1, -1);
      }

      return;
    }

LABEL_45:
    swift_once();
    goto LABEL_8;
  }

  v18 = Strong;
  v19 = swift_getObjectType();
  v20 = (*(a2 + 232))(v19, a2);
  v21 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v18) + 0x2A8))(v20);
  v22 = static UUID.== infix(_:_:)();
  v23 = *(v6 + 8);
  v23(v9, v5);
  v24 = (v23)(v11, v5);
  if ((v22 & 1) == 0)
  {

    goto LABEL_7;
  }

  (*((*v21 & *v18) + 0x488))(&v77, v24);
  if (v79)
  {
    outlined init with copy of IDSLookupManager(&v77, v74);
    outlined destroy of CallControlsService?(&v77, &_s15ConversationKit19CallControlsService_pSgMd);
    v25 = v75;
    v26 = v76;
    __swift_project_boxed_opaque_existential_1(v74, v75);
    v27 = a2;
    v28 = *(a2 + 208);
    v29 = v73;
    v30 = v28(v19, v27);
    (*(v26 + 120))(v30, v25, v26);
    __swift_destroy_boxed_opaque_existential_1(v74);
  }

  else
  {
    outlined destroy of CallControlsService?(&v77, &_s15ConversationKit19CallControlsService_pSgMd);
    v27 = a2;
    v29 = v73;
  }

  objc_opt_self();
  v40 = swift_dynamicCastObjCClass();
  if (!v40)
  {
    goto LABEL_39;
  }

  v41 = v40;
  swift_unknownObjectRetain();
  if ([v41 status] == 2)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, &static Logger.conversationControls);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1BBC58000, v43, v44, "Invalidating screen share request because call became held", v45, 2u);
      MEMORY[0x1BFB23DF0](v45, -1, -1);
    }

    ConversationControlsManager.declineOrCancelScreenShareRequest()();
    goto LABEL_38;
  }

  if ([v41 status] != 1 || !objc_msgSend(v41, sel_isSharePlayCapable) || (v46 = *(v18 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_features), v47 = Features.sharePlayInCallsEnabled.getter(), v46, (v47 & 1) == 0))
  {
    if ([v41 status] == 6)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      __swift_project_value_buffer(v63, &static Logger.conversationControls);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_1BBC58000, v64, v65, "The call is disconnected. Conversation Controls Manager is removing the hold assist alert.", v66, 2u);
        MEMORY[0x1BFB23DF0](v66, -1, -1);
      }

      [v18 dismissEndWaitOnHoldForAnotherCallAlert];
    }

    goto LABEL_38;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  __swift_project_value_buffer(v48, &static Logger.conversationControls);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_1BBC58000, v49, v50, "Showing hud for telephony call", v51, 2u);
    MEMORY[0x1BFB23DF0](v51, -1, -1);
  }

  v52 = (*((*v21 & *v18) + 0x4A0))();
  if (v52)
  {
    v54 = v53;
    v55 = swift_getObjectType();
    v77 = 6;
    v78 = 0u;
    v79 = 0u;
    v80 = 7;
    (*(v54 + 16))(0, &v77, 0, 0, v55, v54);
    swift_unknownObjectRelease();
    v52 = outlined destroy of ConversationControlsType(&v77);
  }

  v56 = (*((*v21 & *v18) + 0x4B8))(v52);
  if (v56)
  {
    v58 = v57;
    v59 = swift_getObjectType();
    (*(v58 + 88))(0x445548776F6873, 0xE700000000000000, 0, v59, v58);
    v56 = swift_unknownObjectRelease();
  }

  if (!(*((*v21 & *v18) + 0x4E8))(v56))
  {
LABEL_38:
    v40 = swift_unknownObjectRelease();
    goto LABEL_39;
  }

  v61 = v60;
  v62 = swift_getObjectType();
  (*((*v21 & *v18) + 0x930))(&v77);
  v29 = v73;
  (*(v61 + 80))(&v77, 1, 0, v62, v61);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v40 = outlined destroy of ConversationControlsType(&v77);
LABEL_39:
  (*((*v21 & *v18) + 0xA48))(v40);
  v67 = type metadata accessor for Participant(0);
  v68 = v72;
  __swift_storeEnumTagSinglePayload(v72, 1, 1, v67);
  (*((*v21 & *v18) + 0xA68))(v68);
  outlined destroy of CallControlsService?(v68, &_s15ConversationKit11ParticipantVSgMd);
  if (ConversationControlsManager.shouldShowCallAgainHUD(forCall:)(v29, v27))
  {
    if ((*((*v21 & *v18) + 0x4E8))())
    {
      v70 = v69;
      v71 = swift_getObjectType();
      v77 = 9;
      v78 = 0u;
      v79 = 0u;
      v80 = 7;
      (*(v70 + 80))(&v77, 1, 0, v71, v70);

      swift_unknownObjectRelease();
      outlined destroy of ConversationControlsType(&v77);
      return;
    }
  }

  else
  {
    ConversationControlsManager.notifyDelegates(about:forceUpdate:)(v29, v27, 0);
  }
}

void closure #11 in ConversationControlsManager.setupConversationControllerConversationStateObservers()(uint64_t a1, char *a2)
{
  v66 = a2;
  v62 = type metadata accessor for CallScreeningService();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CallScreeningStatus();
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v61 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v63 = &v58 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v58 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v17 = static OS_dispatch_queue.main.getter();
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8020], v14);
  v18 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_9;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = v66;
  if (Strong)
  {
    v20 = Strong;
    ObjectType = swift_getObjectType();
    v22 = (*(v17 + 29))(ObjectType, v17);
    (*((*MEMORY[0x1E69E7D40] & v20->isa) + 0x2A8))(v22);
    v23 = static UUID.== infix(_:_:)();
    v24 = *(v8 + 8);
    v24(v11, v7);
    v24(v13, v7);
    if (v23)
    {
      v25 = [objc_allocWithZone(type metadata accessor for Features()) init];
      v26 = Features.receptionistEnabled.getter();

      if (v26)
      {
        *&v69 = &type metadata for ScreeningStatusOverride;
        *(&v69 + 1) = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
        type metadata accessor for Defaults();
        swift_allocObject();
        v67 = Defaults.init()();
        v27 = v59;
        CallScreeningService.init(overrides:)();
        v28 = ObjectType;
        (*(v17 + 6))(&v67, ObjectType, v17);
        v29 = v63;
        CallScreeningService.screeningStatusForCall(_:)();
        __swift_destroy_boxed_opaque_existential_1(&v67);
        (*(v60 + 8))(v27, v62);
        v31 = v64;
        v30 = v65;
        v32 = v61;
        (*(v64 + 16))(v61, v29, v65);
        v33 = (*(v31 + 88))(v32, v30);
        v34 = *(v31 + 8);
        if (v33 != *MEMORY[0x1E6995E98])
        {
          v34(v29, v30);
          v34(v32, v30);
          v44 = MEMORY[0x1E69E7D40];
LABEL_22:
          (*((*v44 & v20->isa) + 0xA48))();
          goto LABEL_23;
        }

        v34(v32, v30);
        v35 = (*(v17 + 26))(ObjectType, v17);
        v34(v29, v30);
      }

      else
      {
        v28 = ObjectType;
        v35 = (*(v17 + 26))(ObjectType, v17);
      }

      v44 = MEMORY[0x1E69E7D40];
      if (v35 == 1 && ((*(v17 + 19))(v28, v17) & 1) != 0)
      {
        v45 = *(&v20->isa + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_features);
        v46 = Features.sharePlayInCallsEnabled.getter();

        if (v46)
        {
          v47 = (*((*v44 & v20->isa) + 0x4A0))();
          if (v47)
          {
            v49 = v48;
            v50 = swift_getObjectType();
            v67 = 6;
            v68 = 0u;
            v69 = 0u;
            v70 = 7;
            (*(v49 + 16))(0, &v67, 0, 0, v50, v49);
            swift_unknownObjectRelease();
            v47 = outlined destroy of ConversationControlsType(&v67);
          }

          v51 = (*((*v44 & v20->isa) + 0x4B8))(v47);
          if (v51)
          {
            v53 = v52;
            v54 = swift_getObjectType();
            (*(v53 + 88))(0x445548776F6873, 0xE700000000000000, 0, v54, v53);
            v51 = swift_unknownObjectRelease();
          }

          if ((*((*v44 & v20->isa) + 0x4E8))(v51))
          {
            v56 = v55;
            v57 = swift_getObjectType();
            (*((*v44 & v20->isa) + 0x930))(&v67);
            (*(v56 + 80))(&v67, 1, 0, v57, v56);
            swift_unknownObjectRelease();
            outlined destroy of ConversationControlsType(&v67);
          }
        }
      }

      goto LABEL_22;
    }
  }

  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_25;
  }

LABEL_9:
  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Logger.conversationKit);
  swift_unknownObjectRetain();
  v20 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v20, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v67 = v39;
    *v38 = 136315138;
    v40 = swift_getObjectType();
    v71 = (*(v17 + 19))(v40, v17) & 1;
    v41 = >> prefix<A>(_:)();
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v67);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_1BBC58000, v20, v37, "ConversationControlsManager Skipping call sharePlay capability update: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1BFB23DF0](v39, -1, -1);
    MEMORY[0x1BFB23DF0](v38, -1, -1);
  }

LABEL_23:
}

void closure #12 in ConversationControlsManager.setupConversationControllerConversationStateObservers()(char a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x730))(a1 & 1);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #13 in ConversationControlsManager.setupConversationControllerConversationStateObservers()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong handleIsScreeningChanged_];
  }
}

BOOL ConversationControlsManager.shouldPresentCollaborationHUD.getter()
{
  type metadata accessor for ForegroundCollaborationState(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  v4 = v3 - v2;
  OUTLINED_FUNCTION_13_2();
  if ((*((*MEMORY[0x1E69E7D40] & v5) + 0x4E8))())
  {
    OUTLINED_FUNCTION_87();
    ObjectType = swift_getObjectType();
    (*(v0 + 32))(ObjectType, v0);
    OUTLINED_FUNCTION_288();
    swift_unknownObjectRelease();
  }

  else
  {
    LODWORD(v0) = 0;
  }

  OUTLINED_FUNCTION_176();
  (*(v7 + 2240))();
  OUTLINED_FUNCTION_29_6();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_0_130();
    _s15ConversationKit11ParticipantVWOhTm_10();
    return 0;
  }

  v8 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19StagedCollaborationV13collaboration_Sb18isBannerSuppressedtMd) + 48));
  OUTLINED_FUNCTION_32_17();
  _s15ConversationKit11ParticipantVWOhTm_10();
  return ((v8 | v0) & 1) == 0;
}

void ConversationControlsManager.handleDidChangeIsWaitingOnFirstRemoteFrame(_:)()
{
  OUTLINED_FUNCTION_29();
  v50 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_82();
  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_224();
  v13 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_320_0();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v2 = static OS_dispatch_queue.main.getter();
  (*(v15 + 104))(v2, *MEMORY[0x1E69E8020], v13);
  v17 = _dispatchPreconditionTest(_:)();
  v19 = *(v15 + 8);
  v18 = (v15 + 8);
  v19(v2, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (!Notification.userInfo.getter())
  {
    v52 = 0u;
    v53 = 0u;
    goto LABEL_15;
  }

  AnyHashable.init<A>(_:)();
  specialized Dictionary.subscript.getter();

  outlined destroy of AnyHashable(v51);
  if (!*(&v53 + 1))
  {
LABEL_15:
    outlined destroy of CallControlsService?(&v52, &_sypSgMd);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v5);
    goto LABEL_16;
  }

  v20 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v1, v20 ^ 1u, 1, v5);
  OUTLINED_FUNCTION_115(v1, 1, v5);
  if (v21)
  {
LABEL_16:
    v46 = &_s10Foundation4UUIDVSgMd;
    v47 = v1;
LABEL_17:
    outlined destroy of CallControlsService?(v47, v46);
    goto LABEL_18;
  }

  v22 = OUTLINED_FUNCTION_308();
  v23(v22);
  v18 = v50;
  OUTLINED_FUNCTION_283();
  (*((*MEMORY[0x1E69E7D40] & v24) + 0x2A0))();
  OUTLINED_FUNCTION_208_0();
  ObjectType = swift_getObjectType();
  (*(v1 + 232))(ObjectType, v1);
  swift_unknownObjectRelease();
  v26 = static UUID.== infix(_:_:)();
  v1 = *(v7 + 8);
  (v1)(v11, v5);
  if ((v26 & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!Notification.userInfo.getter())
  {
    v48 = OUTLINED_FUNCTION_309();
    (v1)(v48);
    v52 = 0u;
    v53 = 0u;
LABEL_21:
    v46 = &_sypSgMd;
    v47 = &v52;
    goto LABEL_17;
  }

  AnyHashable.init<A>(_:)();
  specialized Dictionary.subscript.getter();

  outlined destroy of AnyHashable(v51);
  if (!*(&v53 + 1))
  {
    v49 = OUTLINED_FUNCTION_309();
    (v1)(v49);
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    LODWORD(v13) = v51[0];
    if (one-time initialization token for conversationControls == -1)
    {
LABEL_10:
      v27 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v27, &static Logger.conversationControls);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_18_10(v29))
      {
        v30 = OUTLINED_FUNCTION_18_18();
        *v30 = 67109120;
        *(v30 + 4) = v13;
        OUTLINED_FUNCTION_24_6();
        _os_log_impl(v31, v32, v33, v34, v30, 8u);
        OUTLINED_FUNCTION_3_26();
      }

      v35 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_isWaitingOnFirstRemoteFrame;
      v36 = OUTLINED_FUNCTION_3_5();
      *(v18 + v35) = v13;
      v37 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *v18) + 0xA48))(v36);
      OUTLINED_FUNCTION_283();
      (*((*v37 & v38) + 0xA80))();
      v39 = OUTLINED_FUNCTION_73_7();
      ConversationControlsManager.notifyDelegates(about:forceUpdate:)(v39, v40, v41);
      goto LABEL_13;
    }

LABEL_23:
    OUTLINED_FUNCTION_0_0();
    goto LABEL_10;
  }

LABEL_13:
  v42 = OUTLINED_FUNCTION_309();
  (v1)(v42);
LABEL_18:
  OUTLINED_FUNCTION_30_0();
}

uint64_t ConversationControlsManager.handleIsScreeningChanged(_:)()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = MEMORY[0x1E69E7D40];
    v9 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA48))(result);
    (*((*v8 & *v1) + 0xA80))(v9);
    return ConversationControlsManager.notifyDelegates(about:forceUpdate:)(0, 0, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in ConversationControlsManager.setupConversationControllerRemoteParticipantStateObservers()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_146();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_2();
  v5 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  v6 = OUTLINED_FUNCTION_12_3();
  v7(v6);
  _dispatchPreconditionTest(_:)();
  v8 = OUTLINED_FUNCTION_9_37();
  v9(v8);
  if (v5)
  {
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_153();
      (*(v13 + 2632))();
      type metadata accessor for Participant(0);
      v14 = OUTLINED_FUNCTION_2_10();
      __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
      OUTLINED_FUNCTION_283();
      (*((*v12 & v18) + 0xA68))(v0);
      outlined destroy of CallControlsService?(v0, &_s15ConversationKit11ParticipantVSgMd);
      v19 = OUTLINED_FUNCTION_73_7();
      ConversationControlsManager.notifyDelegates(about:forceUpdate:)(v19, v20, v21);
      PassthroughSubject.send(_:)();
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #3 in ConversationControlsManager.setupConversationControllerRemoteParticipantStateObservers()(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v109 = *(v2 - 8);
  v110 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v106 = v4;
  v107 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v113 = &v97 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v104 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v105 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v112 = &v97 - v9;
  v108 = type metadata accessor for SessionActivationRequestNotice(0);
  MEMORY[0x1EEE9AC00](v108);
  v111 = (&v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = type metadata accessor for Date();
  v11 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for AccountUpdateNotice(0);
  MEMORY[0x1EEE9AC00](updated);
  v15 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v97 - v17;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v22 = static OS_dispatch_queue.main.getter();
  (*(v20 + 104))(v22, *MEMORY[0x1E69E8020], v19);
  v23 = _dispatchPreconditionTest(_:)();
  v25 = *(v20 + 8);
  v24 = (v20 + 8);
  v25(v22, v19);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_31:
    swift_once();
    goto LABEL_12;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v22 = Strong;
  v24 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xA48))();
  v27 = type metadata accessor for Participant(0);
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v27);
  (*((*v24 & *v22) + 0xA68))(v18);
  outlined destroy of CallControlsService?(v18, &_s15ConversationKit11ParticipantVSgMd);
  v28 = PassthroughSubject.send(_:)();
  v29 = a1 + *(v27 + 28);
  if (*v29)
  {
    if ((*(v29 + 16) & 1) == 0)
    {
      v30 = *(v29 + 8);
      v31 = (*((*v24 & *v22) + 0x2F8))(v28);
      v32 = specialized Set.contains(_:)(v30, v31);

      if (v32)
      {
        if (one-time initialization token for conversationControls != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        __swift_project_value_buffer(v33, &static Logger.conversationControls);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_1BBC58000, v34, v35, "visibleParticipantDidBecomeActive - already joined, no notice", v36, 2u);
          MEMORY[0x1BFB23DF0](v36, -1, -1);
        }

        v37 = (*((*v24 & *v22) + 0x308))(v116);
        specialized Set._Variant.remove(_:)(v30);
        v37(v116, 0);
        goto LABEL_23;
      }
    }
  }

  if (one-time initialization token for conversationControls != -1)
  {
    goto LABEL_31;
  }

LABEL_12:
  v38 = type metadata accessor for Logger();
  v100 = __swift_project_value_buffer(v38, &static Logger.conversationControls);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1BBC58000, v39, v40, "visibleParticipantDidBecomeActive - present joined notice", v41, 2u);
    MEMORY[0x1BFB23DF0](v41, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1BC4BA940;
  _s15ConversationKit11ParticipantVWOcTm_8();
  UUID.init()();
  v43 = v114;
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v45 = v44;
  v48 = *(v11 + 8);
  v46 = v11 + 8;
  v47 = v48;
  v48(v43, v115);
  *v15 = 0;
  *(v15 + 1) = v42;
  *&v15[updated[7]] = v45;
  v15[updated[8]] = 3;
  v49 = &v15[updated[9]];
  *v49 = 0;
  *(v49 + 1) = 0;
  v15[updated[10]] = 1;
  v50 = &v15[updated[11]];
  *v50 = 0;
  *(v50 + 1) = 0;
  v51 = &v15[updated[12]];
  *v51 = 0;
  *(v51 + 1) = 0;
  v52 = updated[13];
  v101 = xmmword_1BC4BB7D0;
  *&v15[v52] = xmmword_1BC4BB7D0;
  specialized ConversationControlsManager.post(notice:)(v15, v22, type metadata accessor for AccountUpdateNotice, &protocol witness table for AccountUpdateNotice, type metadata accessor for AccountUpdateNotice, specialized ConversationControlsNoticeCoordinator.post(notice:), v53, v54, v97, v98, v99, v100, v101, *(&v101 + 1), v102, v103, v104, v105, v106, v107, v108, v109);
  if (((*((*v24 & *v22) + 0x380))() & 1) == 0 || (v55 = (*((*v24 & *v22) + 0x990))()) == 0)
  {
    _s15ConversationKit11ParticipantVWOhTm_10();
LABEL_23:

    return;
  }

  v56 = v55;
  v57 = *((*v24 & *v22) + 0x2C0);
  v58 = v57();
  if (v58 && (v59 = v58, v98 = v57, v99 = v46, v60 = [v58 mergedActiveRemoteParticipants], v59, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant), lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant), v61 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v60, v62 = specialized Set.count.getter(v61), , v62 == 1))
  {
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_1BBC58000, v63, v64, "visibleParticipantDidBecomeActive - Posting activation request notice", v65, 2u);
      MEMORY[0x1BFB23DF0](v65, -1, -1);
    }

    v66 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v67 = v22;
    v68 = v98();
    v97 = v67;
    v100 = v66;
    if (v68)
    {
      v69 = v68;
      v70 = [v68 UUID];

      v71 = v112;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v72 = 0;
    }

    else
    {
      v72 = 1;
      v71 = v112;
    }

    v73 = v113;
    v74 = v110;
    __swift_storeEnumTagSinglePayload(v71, v72, 1, v110);
    v75 = [v56 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    v76 = v109;
    v77 = v107;
    (*(v109 + 16))(v107, v73, v74);
    v78 = (v104[80] + 24) & ~v104[80];
    v79 = *(v76 + 80);
    v104 = v56;
    v80 = (v103 + v79 + v78) & ~v79;
    v81 = swift_allocObject();
    *(v81 + 16) = v100;
    outlined init with take of URL?();
    (*(v76 + 32))(v81 + v80, v77, v74);
    v82 = swift_allocObject();
    v83 = v97;
    swift_unknownObjectWeakInit();

    v84 = v108;
    v85 = v111;
    v86 = v111 + v108[15];
    *(v86 + 3) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession);
    *(v86 + 4) = &protocol witness table for TUConversationActivitySession;
    *v86 = v104;
    v87 = one-time initialization token for shared;

    if (v87 != -1)
    {
      swift_once();
    }

    v88 = (*(*static Defaults.shared + 1008))();
    UUID.init()();
    v89 = v114;
    Date.init()();
    Date.timeIntervalSinceReferenceDate.getter();
    v91 = v90;
    v47(v89, v115);
    (*(v76 + 8))(v113, v74);
    outlined destroy of CallControlsService?(v112, &_s10Foundation4UUIDVSgMd);

    *v85 = partial apply for closure #1 in closure #3 in ConversationControlsManager.setupConversationControllerRemoteParticipantStateObservers();
    *(v85 + 1) = v81;
    v85[2] = v88;
    *(v85 + v84[7]) = v91;
    *(v85 + v84[8]) = 4;
    *(v85 + v84[9]) = 1;
    *(v85 + v84[10]) = 1;
    *(v85 + v84[11]) = v101;
    v92 = (v85 + v84[12]);
    *v92 = partial apply for closure #2 in closure #3 in ConversationControlsManager.setupConversationControllerRemoteParticipantStateObservers();
    v92[1] = v82;
    v93 = (v85 + v84[13]);
    *v93 = 0;
    v93[1] = 0;
    v94 = (v85 + v84[14]);
    *v94 = 0;
    v94[1] = 0;
    specialized ConversationControlsManager.post(notice:)(v85, v83, type metadata accessor for SessionActivationRequestNotice, &protocol witness table for SessionActivationRequestNotice, type metadata accessor for SessionActivationRequestNotice, specialized ConversationControlsNoticeCoordinator.post(notice:), v95, v96, v97, v98, v99, v100, v101, *(&v101 + 1), v102, v103, v104, v105, v106, v107, v108, v109);

    _s15ConversationKit11ParticipantVWOhTm_10();
    _s15ConversationKit11ParticipantVWOhTm_10();
  }

  else
  {
    _s15ConversationKit11ParticipantVWOhTm_10();
  }
}

uint64_t closure #1 in closure #3 in ConversationControlsManager.setupConversationControllerRemoteParticipantStateObservers()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v80 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v73 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v78 = v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v73 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v75 = v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v76 = v73 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v77 = v73 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v73 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = v73 - v24;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v27 = result;
  v73[0] = v8;
  v28 = *((*MEMORY[0x1E69E7D40] & *result) + 0x2C0);
  v73[1] = (*MEMORY[0x1E69E7D40] & *result) + 704;
  v74 = v28;
  v29 = v28();
  v79 = v4;
  if (v29)
  {
    v30 = v29;
    v31 = [v29 UUID];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  __swift_storeEnumTagSinglePayload(v25, v32, 1, v3);
  v33 = *(v9 + 48);
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  if (__swift_getEnumTagSinglePayload(v13, 1, v3) == 1)
  {
    outlined destroy of CallControlsService?(v25, &_s10Foundation4UUIDVSgMd);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v13[v33], 1, v3);
    v35 = v79;
    if (EnumTagSinglePayload != 1)
    {
      v37 = v81;
LABEL_22:
      outlined destroy of CallControlsService?(v13, &_s10Foundation4UUIDVSg_ADtMd);
      goto LABEL_23;
    }

    v36 = outlined destroy of CallControlsService?(v13, &_s10Foundation4UUIDVSgMd);
    v37 = v81;
    goto LABEL_12;
  }

  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  v38 = __swift_getEnumTagSinglePayload(&v13[v33], 1, v3);
  v35 = v79;
  if (v38 == 1)
  {
    v39 = v25;
    v40 = v23;
    v37 = v81;
LABEL_20:
    outlined destroy of CallControlsService?(v39, &_s10Foundation4UUIDVSgMd);
    (*(v35 + 8))(v40, v3);
    goto LABEL_22;
  }

  v41 = &v13[v33];
  v42 = v79;
  v43 = v73[0];
  (*(v79 + 32))(v73[0], v41, v3);
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();
  v45 = *(v42 + 8);
  v45(v43, v3);
  outlined destroy of CallControlsService?(v25, &_s10Foundation4UUIDVSgMd);
  v45(v23, v3);
  v35 = v79;
  v36 = outlined destroy of CallControlsService?(v13, &_s10Foundation4UUIDVSgMd);
  v37 = v81;
  if (v44)
  {
LABEL_12:
    v46 = (*((*MEMORY[0x1E69E7D40] & *v27) + 0x990))(v36);
    if (v46)
    {
      v47 = v46;
      v48 = [v46 UUID];

      v39 = v77;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49 = 0;
    }

    else
    {
      v49 = 1;
      v39 = v77;
    }

    v50 = v78;
    v51 = v76;
    __swift_storeEnumTagSinglePayload(v39, v49, 1, v3);
    (*(v35 + 16))(v51, v37, v3);
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v3);
    v52 = *(v9 + 48);
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    if (__swift_getEnumTagSinglePayload(v50, 1, v3) == 1)
    {
      outlined destroy of CallControlsService?(v51, &_s10Foundation4UUIDVSgMd);
      outlined destroy of CallControlsService?(v39, &_s10Foundation4UUIDVSgMd);
      if (__swift_getEnumTagSinglePayload(v50 + v52, 1, v3) == 1)
      {
        outlined destroy of CallControlsService?(v50, &_s10Foundation4UUIDVSgMd);
LABEL_31:

        return 0;
      }

      v13 = v50;
      goto LABEL_22;
    }

    v40 = v75;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    if (__swift_getEnumTagSinglePayload(v50 + v52, 1, v3) != 1)
    {
      v70 = v73[0];
      (*(v35 + 32))(v73[0], v50 + v52, v3);
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      LODWORD(v81) = dispatch thunk of static Equatable.== infix(_:_:)();
      v71 = v51;
      v72 = *(v35 + 8);
      v72(v70, v3);
      outlined destroy of CallControlsService?(v71, &_s10Foundation4UUIDVSgMd);
      outlined destroy of CallControlsService?(v39, &_s10Foundation4UUIDVSgMd);
      v72(v75, v3);
      outlined destroy of CallControlsService?(v50, &_s10Foundation4UUIDVSgMd);
      if (v81)
      {
        goto LABEL_31;
      }

      goto LABEL_23;
    }

    outlined destroy of CallControlsService?(v51, &_s10Foundation4UUIDVSgMd);
    v13 = v50;
    goto LABEL_20;
  }

LABEL_23:
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  __swift_project_value_buffer(v53, &static Logger.conversationControls);
  v54 = v80;
  (*(v35 + 16))(v80, v37, v3);
  v55 = v27;
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = v54;
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v82 = v81;
    *v59 = 136315650;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v35;
    v64 = v63;
    (*(v62 + 8))(v58, v3);
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v64, &v82);

    *(v59 + 4) = v65;
    *(v59 + 12) = 2112;
    v67 = (v74)(v66);
    *(v59 + 14) = v67;
    *v60 = v67;
    *(v59 + 22) = 2112;
    v68 = (*((*MEMORY[0x1E69E7D40] & *v55) + 0x990))();
    *(v59 + 24) = v68;
    v60[1] = v68;
    _os_log_impl(&dword_1BBC58000, v56, v57, "SessionActivationRequestNotice for stagedActivity %s is no longer valid on conversation %@ with stagedActivity %@", v59, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v60, -1, -1);
    v69 = v81;
    __swift_destroy_boxed_opaque_existential_1(v81);
    MEMORY[0x1BFB23DF0](v69, -1, -1);
    MEMORY[0x1BFB23DF0](v59, -1, -1);
  }

  else
  {

    (*(v35 + 8))(v54, v3);
  }

  return 1;
}

void closure #2 in ConversationControlsManager.moreMenuViewModel(provider:presentContactCard:presentAddParticipantSheet:startCallRecording:stopCallRecording:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  OUTLINED_FUNCTION_95_3(a1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = OUTLINED_FUNCTION_173();
    a3(v5, 0);
  }
}

void closure #4 in ConversationControlsManager.setupConversationControllerRemoteParticipantStateObservers()(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for AccountUpdateNotice(0);
  MEMORY[0x1EEE9AC00](updated);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Participant(0);
  v41 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v15 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v16 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    a2 = Strong;
    if (ConversationControlsManager.isLocalMemberAssociatedTo(_:)(a1))
    {
      if (one-time initialization token for conversationControls == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_32;
    }

    (*((*MEMORY[0x1E69E7D40] & *a2) + 0x2F0))();
    v23 = Participant.isActiveWithAV.getter();
    _s15ConversationKit11ParticipantVWOhTm_10();
    if ((v23 & 1) == 0)
    {
      goto LABEL_16;
    }

    v24 = Participant.avInfo.getter();
    if (v24 != 2 && (v24 & 1) != 0)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, &static Logger.conversationControls);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v19, v20))
      {
        goto LABEL_8;
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "skipping participant av mode change notice for avless participant";
      goto LABEL_7;
    }

    if (Participant.isActiveWithAV.getter())
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, &static Logger.conversationControls);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v27, v28))
      {
        v30 = 0;
        goto LABEL_30;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1BBC58000, v27, v28, "didUpdateParticipantAVMode - present join notice", v29, 2u);
      v30 = 0;
    }

    else
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, &static Logger.conversationControls);
      v27 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v27, v32))
      {
        v30 = 1;
        goto LABEL_30;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1BBC58000, v27, v32, "didUpdateParticipantAVMode - present leave notice", v29, 2u);
      v30 = 1;
    }

    MEMORY[0x1BFB23DF0](v29, -1, -1);
LABEL_30:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1BC4BA940;
    _s15ConversationKit11ParticipantVWOcTm_8();
    UUID.init()();
    Date.init()();
    Date.timeIntervalSinceReferenceDate.getter();
    v35 = v34;
    (*(v43 + 8))(v7, v42);
    *v10 = v30;
    *(v10 + 1) = v33;
    *&v10[updated[7]] = v35;
    v10[updated[8]] = 3;
    v36 = &v10[updated[9]];
    *v36 = 0;
    *(v36 + 1) = 0;
    v10[updated[10]] = 1;
    v37 = &v10[updated[11]];
    *v37 = 0;
    *(v37 + 1) = 0;
    v38 = &v10[updated[12]];
    *v38 = 0;
    *(v38 + 1) = 0;
    *&v10[updated[13]] = xmmword_1BC4BB7D0;
    specialized ConversationControlsManager.post(notice:)(v10, a2, type metadata accessor for AccountUpdateNotice, &protocol witness table for AccountUpdateNotice, type metadata accessor for AccountUpdateNotice, specialized ConversationControlsNoticeCoordinator.post(notice:), v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);

    _s15ConversationKit11ParticipantVWOhTm_10();
    return;
  }

  __break(1u);
LABEL_32:
  swift_once();
LABEL_5:
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, &static Logger.conversationControls);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "skipping participant av mode change notice for local primary";
LABEL_7:
    _os_log_impl(&dword_1BBC58000, v19, v20, v22, v21, 2u);
    MEMORY[0x1BFB23DF0](v21, -1, -1);
  }

LABEL_8:

LABEL_16:
}

uint64_t ConversationControlsManager.isLocalMemberAssociatedTo(_:)(uint64_t a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0))();
  if (result)
  {
    v4 = result;
    v5 = [result localMember];
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + *(type metadata accessor for Participant(0) + 28));
      if (!v7)
      {

        return 0;
      }

      v8 = v7;
      v9 = [v6 lightweightPrimary];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 isEqualToHandle_];

        if (v11)
        {

          return 1;
        }
      }

      v12 = [v6 association];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 handle];
        v15 = [v14 isEqualToHandle_];

        return (v15 & 1) != 0;
      }
    }

    return 0;
  }

  return result;
}

void *closure #5 in ConversationControlsManager.setupConversationControllerRemoteParticipantStateObservers()(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = a1;
  v4 = type metadata accessor for Date();
  v38 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for AccountUpdateNotice(0);
  MEMORY[0x1EEE9AC00](updated);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v16 = static OS_dispatch_queue.main.getter();
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  v17 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  a3 = result;
  v19 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *result) + 0xA48))();
  v20 = type metadata accessor for Participant(0);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v20);
  (*((*v19 & *a3) + 0xA68))(v12);
  outlined destroy of CallControlsService?(v12, &_s15ConversationKit11ParticipantVSgMd);
  PassthroughSubject.send(_:)();
  v21 = *(a3 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController);
  ConversationController.lookupActiveConversation()();

  if (!v41)
  {

    return outlined destroy of CallControlsService?(&v39, &_s15ConversationKit0A0_pSgMd);
  }

  outlined init with take of TapInteractionHandler(&v39, v43);
  v22 = v44;
  v23 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  if ((*(v23 + 56))(v22, v23) == 3)
  {
    if (one-time initialization token for conversationControls == -1)
    {
LABEL_6:
      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, &static Logger.conversationControls);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1BBC58000, v25, v26, "visibleParticipantDidBecomeInactive - present leave notice", v27, 2u);
        MEMORY[0x1BFB23DF0](v27, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1BC4BA940;
      _s15ConversationKit11ParticipantVWOcTm_8();
      UUID.init()();
      Date.init()();
      Date.timeIntervalSinceReferenceDate.getter();
      v30 = v29;
      (*(v38 + 8))(v6, v4);
      *v9 = 1;
      *(v9 + 1) = v28;
      *&v9[updated[7]] = v30;
      v9[updated[8]] = 3;
      v31 = &v9[updated[9]];
      *v31 = 0;
      *(v31 + 1) = 0;
      v9[updated[10]] = 1;
      v32 = &v9[updated[11]];
      *v32 = 0;
      *(v32 + 1) = 0;
      v33 = &v9[updated[12]];
      *v33 = 0;
      *(v33 + 1) = 0;
      *&v9[updated[13]] = xmmword_1BC4BB7D0;
      specialized ConversationControlsManager.post(notice:)(v9, a3, type metadata accessor for AccountUpdateNotice, &protocol witness table for AccountUpdateNotice, type metadata accessor for AccountUpdateNotice, specialized ConversationControlsNoticeCoordinator.post(notice:), v34, v35, v36, v37, v38, v39, *(&v39 + 1), v40, v41, v42, v43[0], v43[1], v43[2], v44, v45, v46);

      _s15ConversationKit11ParticipantVWOhTm_10();
      return __swift_destroy_boxed_opaque_existential_1(v43);
    }

LABEL_14:
    swift_once();
    goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_1(v43);
}

void *closure #6 in ConversationControlsManager.setupConversationControllerRemoteParticipantStateObservers()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v17 - v1;
  v3 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v12 = result;
      v13 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *result) + 0xA48))();
      PassthroughSubject.send(_:)();
      _s15ConversationKit11ParticipantVWOcTm_8();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v14 = type metadata accessor for Participant(0);
        __swift_storeEnumTagSinglePayload(v2, 1, 1, v14);
        (*((*v13 & *v12) + 0xA68))(v2);

        outlined destroy of CallControlsService?(v2, &_s15ConversationKit11ParticipantVSgMd);
        v15 = type metadata accessor for Date();
        return (*(*(v15 - 8) + 8))(v5, v15);
      }

      else
      {
        _s15ConversationKit11ParticipantVWOcTm_8();
        v16 = type metadata accessor for Participant(0);
        __swift_storeEnumTagSinglePayload(v2, 0, 1, v16);
        (*((*v13 & *v12) + 0xA68))(v2);

        outlined destroy of CallControlsService?(v2, &_s15ConversationKit11ParticipantVSgMd);
        return _s15ConversationKit11ParticipantVWOhTm_10();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *closure #7 in ConversationControlsManager.setupConversationControllerRemoteParticipantStateObservers()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v9 = result;
      v10 = MEMORY[0x1E69E7D40];
      v11 = (*((*MEMORY[0x1E69E7D40] & *result) + 0xA48))();
      (*((*v10 & *v9) + 0xA80))(v11);
      v12 = type metadata accessor for Participant(0);
      __swift_storeEnumTagSinglePayload(v2, 1, 1, v12);
      (*((*v10 & *v9) + 0xA68))(v2);

      return outlined destroy of CallControlsService?(v2, &_s15ConversationKit11ParticipantVSgMd);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *closure #8 in ConversationControlsManager.setupConversationControllerRemoteParticipantStateObservers()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v9 = result;
      v10 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *result) + 0xA48))();
      v11 = type metadata accessor for Participant(0);
      __swift_storeEnumTagSinglePayload(v2, 1, 1, v11);
      (*((*v10 & *v9) + 0xA68))(v2);

      return outlined destroy of CallControlsService?(v2, &_s15ConversationKit11ParticipantVSgMd);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #9 in ConversationControlsManager.setupConversationControllerRemoteParticipantStateObservers()()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = MEMORY[0x1E69E7D40];
      v8 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xA48))();
      (*((*v7 & *v6) + 0xA80))(v8);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #10 in ConversationControlsManager.setupConversationControllerRemoteParticipantStateObservers()(uint64_t a1, char a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      if (a2)
      {
        v10 = ConversationControlsManager.localVideoButtonState.getter() & 0x100;
      }

      else
      {
        v18 = ConversationController.localVideoSupported.getter();
        v10 = ConversationControlsManager.localVideoButtonState.getter() & 0x100 | v18 & 1;
      }

      ConversationControlsManager.localVideoButtonState.setter(v10, v11, v12, v13, v14, v15, v16, v17, v22, v23, v24, v25, v26);
      if ((*((*MEMORY[0x1E69E7D40] & *v9) + 0x500))())
      {
        v20 = v19;
        ObjectType = swift_getObjectType();
        (*(v20 + 64))(a2 & 1, ObjectType, v20);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #11 in ConversationControlsManager.setupConversationControllerRemoteParticipantStateObservers()()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xA80))();
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #12 in ConversationControlsManager.setupConversationControllerRemoteParticipantStateObservers()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v103 = a3;
  v102 = a2;
  v96 = type metadata accessor for Date();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v87[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = type metadata accessor for ReactionNotice(0);
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v87[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19ParticipantReactionVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v87[-v9];
  v100 = type metadata accessor for ParticipantReaction(0);
  v93 = *(v100 - 8);
  v11 = MEMORY[0x1EEE9AC00](v100);
  v101 = &v87[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v99 = &v87[-v13];
  v14 = type metadata accessor for Participant(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v87[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v87[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v21 = static OS_dispatch_queue.main.getter();
  (*(v19 + 104))(v21, *MEMORY[0x1E69E8020], v18);
  v22 = _dispatchPreconditionTest(_:)();
  v24 = *(v19 + 8);
  v23 = v19 + 8;
  v24(v21, v18);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_6;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  a4 = Strong;
  if (!*(a1 + *(v14 + 28)))
  {

    return;
  }

  v26 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x4E8))();
  if (!v26)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, &static Logger.conversationControls);
    v49 = a4;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      *(v52 + 4) = v49;
      *v53 = a4;
      v49 = v49;
      _os_log_impl(&dword_1BBC58000, v50, v51, "conversationControllerManager: %@ inCallConversationControlsDelegate not set. Ignoring participantDidReact callback", v52, 0xCu);
      outlined destroy of CallControlsService?(v53, &_sSo8NSObjectCSgMd);
      MEMORY[0x1BFB23DF0](v53, -1, -1);
      MEMORY[0x1BFB23DF0](v52, -1, -1);
    }

    goto LABEL_20;
  }

  v23 = v26;
  v28 = v27;
  ObjectType = swift_getObjectType();
  v92 = (*(v28 + 48))(ObjectType, v28);
  if (one-time initialization token for conversationControls != -1)
  {
    goto LABEL_34;
  }

LABEL_6:
  v30 = type metadata accessor for Logger();
  v31 = __swift_project_value_buffer(v30, &static Logger.conversationControls);
  _s15ConversationKit11ParticipantVWOcTm_8();
  v32 = v103;

  v91 = v31;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v88 = v34;
    v36 = v35;
    v89 = swift_slowAlloc();
    v104[0] = v89;
    *v36 = 136315650;
    v37 = >> prefix<A>(_:)();
    v90 = v23;
    v39 = v38;
    _s15ConversationKit11ParticipantVWOhTm_10();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v104);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2080;
    LOBYTE(v108[0]) = v92 & 1;
    v41 = >> prefix<A>(_:)();
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v104);

    *(v36 + 14) = v43;
    *(v36 + 22) = 2080;
    v108[0] = v102;
    v108[1] = v32;
    v44 = >> prefix<A>(_:)();
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v104);

    *(v36 + 24) = v46;
    _os_log_impl(&dword_1BBC58000, v33, v88, "reactingParticipant: %s isScreenSharingVisible:%s reaction:%s", v36, 0x20u);
    v47 = v89;
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v47, -1, -1);
    MEMORY[0x1BFB23DF0](v36, -1, -1);
  }

  else
  {

    _s15ConversationKit11ParticipantVWOhTm_10();
  }

  Participant.videoInfo.getter();
  if (v108[0])
  {
    v54 = v109;
    outlined destroy of CallControlsService?(v108, &_s15ConversationKit11ParticipantV9VideoInfoVSgMd);
    if (v54 & v92)
    {
      v50 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_1BBC58000, v50, v55, "Ignoring reaction from participant whose camera is mixed with screen", v56, 2u);
        MEMORY[0x1BFB23DF0](v56, -1, -1);
      }

      swift_unknownObjectRelease();

LABEL_20:
      return;
    }
  }

  _s15ConversationKit11ParticipantVWOcTm_8();

  ParticipantReaction.init(participant:reaction:)(v17, v102, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v100) == 1)
  {
    swift_unknownObjectRelease();

    outlined destroy of CallControlsService?(v10, &_s15ConversationKit19ParticipantReactionVSgMd);
  }

  else
  {
    outlined init with take of Collaboration();
    _s15ConversationKit11ParticipantVWOcTm_8();
    v57 = a4;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v107 = v61;
      *v60 = 136315394;
      v62 = >> prefix<A>(_:)();
      v64 = v63;
      _s15ConversationKit11ParticipantVWOhTm_10();
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v107);

      *(v60 + 4) = v65;
      *(v60 + 12) = 2080;
      v66 = swift_beginAccess();
      specialized NoticeQueueStore.peek()(v104, v66);
      swift_endAccess();
      v67 = v105;
      if (v105)
      {
        v68 = v106;
        __swift_project_boxed_opaque_existential_1(v104, v105);
        v69 = (*(v68 + 120))(v67, v68);
        v71 = v70;
        __swift_destroy_boxed_opaque_existential_1(v104);
        v104[0] = v69;
        v104[1] = v71;
        v72 = String.init<A>(reflecting:)();
        v74 = v73;
      }

      else
      {
        outlined destroy of CallControlsService?(v104, &_s15ConversationKit6Notice_pSgMd);
        v74 = 0xE300000000000000;
        v72 = 7104878;
      }

      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v107);

      *(v60 + 14) = v75;
      _os_log_impl(&dword_1BBC58000, v58, v59, "participantDidReact - reaction: %s reactionNoticeHistory:%s", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v61, -1, -1);
      MEMORY[0x1BFB23DF0](v60, -1, -1);
    }

    else
    {

      _s15ConversationKit11ParticipantVWOhTm_10();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit19ParticipantReactionVGMd);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1BC4BA940;
    _s15ConversationKit11ParticipantVWOcTm_8();
    v77 = v97;
    v78 = v98;
    UUID.init()();
    v79 = v94;
    Date.init()();
    Date.timeIntervalSinceReferenceDate.getter();
    v81 = v80;
    (*(v95 + 8))(v79, v96);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v82 = (*(*static Defaults.shared + 1096))();
    *v78 = v76;
    *(v78 + v77[6]) = v81;
    *(v78 + v77[7]) = 1;
    v83 = (v78 + v77[8]);
    *v83 = 0;
    v83[1] = 0;
    *(v78 + v77[9]) = 1;
    v84 = (v78 + v77[10]);
    *v84 = 0;
    v84[1] = 0;
    v85 = (v78 + v77[11]);
    *v85 = 0;
    v85[1] = 0;
    *(v78 + v77[12]) = v82;
    *(v78 + v77[13]) = xmmword_1BC4BB7D0;
    v86 = OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_reactionNoticeHistory;
    swift_beginAccess();
    specialized CoalescingNoticeQueue.push(notice:)(v78, &v57[v86]);
    swift_endAccess();
    ConversationControlsManager.updateReactionNotice()();

    swift_unknownObjectRelease();
    _s15ConversationKit11ParticipantVWOhTm_10();
    _s15ConversationKit11ParticipantVWOhTm_10();
  }
}

void closure #1 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers()(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    a2 = Strong;
    v2 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x980))(v76);
    if (!a1 || !specialized Array.count.getter(a1))
    {
LABEL_21:
      if (one-time initialization token for conversationControls == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_69;
    }

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1BFB22010](0, a1);
    }

    else
    {
      v11 = *(a1 + 32);
    }

    v12 = v11;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    if (!v72)
    {

      outlined destroy of CallControlsService?(&v71, &_s15ConversationKit8Activity_pSgMd);
      goto LABEL_21;
    }

    outlined init with take of TapInteractionHandler(&v71, v73);
    v13 = TUConversationActivitySession.uniqueIdentifier.getter();
    v15 = v14;
    v16 = v74;
    v17 = v75;
    __swift_project_boxed_opaque_existential_1(v73, v74);
    v18 = (*(v17 + 104))(v16, v17);
    if (v18)
    {
      v19 = v18;
      v20 = TUConversationActivitySession.uniqueIdentifier.getter();
      v22 = v21;

      if (v13 == v20 && v15 == v22)
      {

        goto LABEL_20;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
LABEL_18:

LABEL_20:
        __swift_destroy_boxed_opaque_existential_1(v73);
        goto LABEL_21;
      }
    }

    else
    {
    }

    (*((*v2 & *a2) + 0x970))(0);
    goto LABEL_18;
  }

  __break(1u);
LABEL_69:
  swift_once();
LABEL_22:
  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, &static Logger.conversationControls);
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 136315138;
    v69 = v26;
    v70 = v30;
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pSgMd);
    v31 = String.init<A>(describing:)();
    v33 = v32;
    outlined destroy of CallControlsService?(v73, &_s15ConversationKit8Activity_pSgMd);
    v34 = v31;
    v2 = MEMORY[0x1E69E7D40];
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v33, &v70);

    *(v29 + 4) = v35;
    v26 = v69;
    _os_log_impl(&dword_1BBC58000, v27, v28, "activitiesDidChange for activity:%s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1BFB23DF0](v30, -1, -1);
    MEMORY[0x1BFB23DF0](v29, -1, -1);
  }

  else
  {

    outlined destroy of CallControlsService?(v73, &_s15ConversationKit8Activity_pSgMd);
  }

  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  if (!v74)
  {
    v36 = outlined destroy of CallControlsService?(v73, &_s15ConversationKit8Activity_pSgMd);
    goto LABEL_30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pMd);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession);
  v36 = swift_dynamicCast();
  if ((v36 & 1) == 0)
  {
LABEL_30:
    v37 = 0;
    goto LABEL_31;
  }

  v37 = v71;
  v38 = *((*v2 & *a2) + 0x968);
  v39 = v71;
  if (v38())
  {
  }

  else
  {
    (*((*v2 & *a2) + 0x9F0))([v39 applicationState]);
  }

LABEL_31:
  (*((*v2 & *a2) + 0xA48))(v36);
  (*((*v2 & *a2) + 0xA88))(v76);
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  v40 = v74;
  if (!v74)
  {
    v58 = v73;
LABEL_52:
    outlined destroy of CallControlsService?(v58, &_s15ConversationKit8Activity_pSgMd);
    goto LABEL_53;
  }

  v41 = v75;
  __swift_project_boxed_opaque_existential_1(v73, v74);
  (*(v41 + 16))(&v71, v40, v41);
  v42 = v71;
  __swift_destroy_boxed_opaque_existential_1(v73);
  v43 = v42 != 14 && v42 == 13;
  if (!v43 || !v37 || ([v37 isLocallyInitiated] & 1) != 0)
  {
    goto LABEL_53;
  }

  if (!a1 || !specialized Array.count.getter(a1))
  {
    ConversationControlsManager.addIncomingScreenSharingRequestActivity()();
    goto LABEL_53;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v44 = MEMORY[0x1BFB22010](0, a1);
  }

  else
  {
    v44 = *(a1 + 32);
  }

  v45 = v44;
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  if (!v72)
  {

    v58 = &v71;
    goto LABEL_52;
  }

  v69 = v26;
  outlined init with take of TapInteractionHandler(&v71, v73);
  v46 = TUConversationActivitySession.uniqueIdentifier.getter();
  v48 = v47;
  v49 = v74;
  v50 = v75;
  __swift_project_boxed_opaque_existential_1(v73, v74);
  v51 = (*(v50 + 104))(v49, v50);
  if (v51)
  {
    v52 = v51;
    v53 = TUConversationActivitySession.uniqueIdentifier.getter();
    v55 = v54;

    if (v46 == v53 && v48 == v55)
    {

      goto LABEL_67;
    }

    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v57)
    {

LABEL_67:
      __swift_destroy_boxed_opaque_existential_1(v73);
      goto LABEL_53;
    }
  }

  else
  {
  }

  ConversationControlsManager.addIncomingScreenSharingRequestActivity()();

  __swift_destroy_boxed_opaque_existential_1(v73);
LABEL_53:
  v59 = ConversationControlsManager.notifyDelegates(about:forceUpdate:)(0, 0, 0);
  v60 = (*((*v2 & *a2) + 0x2C0))(v59);
  if (v60 && (v61 = v60, v62 = [v60 stagedActivitySession], v61, v62) && (v63 = objc_msgSend(v62, sel_activity), v64 = objc_msgSend(v63, sel_isPlaceholderActivity), v62, v63, (v64 & 1) != 0))
  {
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1BBC58000, v65, v66, "Force presenting HUD because we received a placeholder activity", v67, 2u);
      MEMORY[0x1BFB23DF0](v67, -1, -1);
    }

    ConversationControlsManager.showHUD()();
    outlined destroy of CallControlsService?(v76, &_s15ConversationKit8Activity_pSgMd);
  }

  else
  {
    outlined destroy of CallControlsService?(v76, &_s15ConversationKit8Activity_pSgMd);
  }
}

void *closure #2 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers()(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v72 = a3;
  v73 = a2;
  v80 = a1;
  v5 = type metadata accessor for Date();
  v75 = *(v5 - 8);
  v76 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for SessionActionNotice(0);
  MEMORY[0x1EEE9AC00](v77);
  v78 = (&v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v69 - v9;
  v11 = type metadata accessor for Collaboration(0);
  v79 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v69 - v13);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v18 = static OS_dispatch_queue.main.getter();
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8020], v15);
  v19 = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  a4 = result;
  v21 = (*((*MEMORY[0x1E69E7D40] & *result) + 0x2C0))();
  if (!v21)
  {

    __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
    return outlined destroy of CallControlsService?(v10, &_s15ConversationKit13CollaborationVSgMd);
  }

  v22 = v21;
  v23 = specialized Conversation.activities.getter();
  Array<A>.currentCollaboration.getter(v23, v10);

  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {

    return outlined destroy of CallControlsService?(v10, &_s15ConversationKit13CollaborationVSgMd);
  }

  outlined init with take of Collaboration();
  v24 = *v14;
  v25 = v14[1];
  v26 = [v80 collaboration];
  v27 = [v26 collaborationIdentifier];

  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  if (v24 == v28 && v25 == v30)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if ([v80 sessionEventType] == 15)
  {
    if (one-time initialization token for conversationControls == -1)
    {
LABEL_17:
      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, &static Logger.conversationControls);
      v34 = v80;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      v37 = os_log_type_enabled(v35, v36);
      v80 = v34;
      if (v37)
      {
        v38 = swift_slowAlloc();
        v70 = v38;
        v71 = swift_slowAlloc();
        v81[0] = v71;
        *v38 = 136315138;
        v39 = v34;
        v40 = [v39 description];
        HIDWORD(v69) = v36;
        v41 = v40;
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v81);

        v46 = v70;
        *(v70 + 1) = v45;
        v47 = v46;
        _os_log_impl(&dword_1BBC58000, v35, BYTE4(v69), "Showing HUD for collaboration added noticed posted:%s", v46, 0xCu);
        v48 = v71;
        __swift_destroy_boxed_opaque_existential_1(v71);
        MEMORY[0x1BFB23DF0](v48, -1, -1);
        MEMORY[0x1BFB23DF0](v47, -1, -1);
      }

      v49 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s15ConversationKit11ParticipantVWOcTm_8();
      v50 = swift_allocObject();
      *(v50 + 16) = v49;
      outlined init with take of Collaboration();
      if (specialized ConversationControlsManager.shouldShowCollaborationNotice(for:)(v14, a4))
      {
        v51 = v77;
        v52 = v78;
        v53 = v77[5];
        v54 = v73;
        _s15ConversationKit11ParticipantVWOcTm_8();
        v55 = type metadata accessor for Participant(0);
        __swift_storeEnumTagSinglePayload(v52 + v53, 0, 1, v55);
        outlined init with copy of IDSLookupManager(v72, v52 + v51[6]);
        v56 = (v52 + v51[7]);
        v56[3] = v11;
        v56[4] = &protocol witness table for Collaboration;
        __swift_allocate_boxed_opaque_existential_1(v56);
        _s15ConversationKit11ParticipantVWOcTm_8();
        LOBYTE(v54) = *(v54 + *(v55 + 28)) == 0;
        v57 = [v80 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v59 = v14[4];
        v58 = v14[5];

        v60 = v74;
        Date.init()();
        Date.timeIntervalSinceReferenceDate.getter();
        v62 = v61;
        (*(v75 + 8))(v60, v76);
        *v52 = xmmword_1BC4D2F60;
        v52[1] = xmmword_1BC4CB170;
        *(v52 + v51[8]) = v54;
        v63 = v52 + v51[9];
        *v63 = 0;
        v63[8] = 1;
        *(v52 + v51[11]) = v62;
        v64 = (v52 + v51[12]);
        *v64 = v59;
        v64[1] = v58;
        *(v52 + v51[13]) = 1;
        v65 = (v52 + v51[14]);
        *v65 = partial apply for closure #1 in closure #2 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers();
        v65[1] = v50;
        v66 = (v52 + v51[15]);
        *v66 = 0;
        v66[1] = 0;
        specialized ConversationControlsManager.post(notice:)(v52, a4, type metadata accessor for SessionActionNotice, &protocol witness table for SessionActionNotice, type metadata accessor for SessionActionNotice, specialized ConversationControlsNoticeCoordinator.post(notice:), v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81[0], v81[1]);

        _s15ConversationKit11ParticipantVWOhTm_10();
      }

      else
      {
      }

      return _s15ConversationKit11ParticipantVWOhTm_10();
    }

LABEL_26:
    swift_once();
    goto LABEL_17;
  }

LABEL_21:

  return _s15ConversationKit11ParticipantVWOhTm_10();
}

void closure #1 in closure #2 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    ConversationControlsManager.presentCollaboration(_:completion:)(a2, 0, 0);
  }
}

void closure #3 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_10;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  a4 = Strong;
  if (a3 == 1)
  {
    v4 = 0x75614C736465656ELL;
  }

  else
  {
    v4 = 0x756F72676B636162;
  }

  if (a3 == 1)
  {
    v11 = 0xEB0000000068636ELL;
  }

  else
  {
    v11 = 0xEA0000000000646ELL;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    goto LABEL_20;
  }

LABEL_10:
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, &static Logger.conversationControls);
  outlined init with copy of IDSLookupManager(a2, &v43);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v40 = a3;
    v22 = v21;
    v42 = v21;
    *v20 = 136315394;
    outlined init with copy of IDSLookupManager(&v43, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pMd);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v42);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v11, &v42);

    *(v20 + 14) = v27;
    _os_log_impl(&dword_1BBC58000, v18, v19, "secondaryPillStateChanged for activity:%s with state:%s", v20, 0x16u);
    swift_arrayDestroy();
    v28 = v22;
    a3 = v40;
    MEMORY[0x1BFB23DF0](v28, -1, -1);
    MEMORY[0x1BFB23DF0](v20, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v43);
  }

  v29 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a4) + 0x9F0))(a3);
  v30 = type metadata accessor for Participant(0);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v30);
  (*((*v29 & *a4) + 0xA68))(v10);
  v31 = outlined destroy of CallControlsService?(v10, &_s15ConversationKit11ParticipantVSgMd);
  v32 = (*((*v29 & *a4) + 0x4B8))(v31);
  if (v32)
  {
    v34 = v33;
    ObjectType = swift_getObjectType();
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    v46 = 7;
    (*(v34 + 16))(&v43, 0, ObjectType, v34);
    swift_unknownObjectRelease();
    v32 = outlined destroy of ConversationControlsType(&v43);
  }

  if ((*((*v29 & *a4) + 0x4E8))(v32))
  {
    v37 = v36;
    v38 = swift_getObjectType();
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    v46 = 7;
    (*(v37 + 80))(&v43, 1, 0, v38, v37);
    swift_unknownObjectRelease();

    outlined destroy of ConversationControlsType(&v43);
  }

  else
  {
  }
}

void closure #4 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers()(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v78 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v12 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  a2 = Strong;
  if (![*(Strong + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags) requestToScreenShareEnabled])
  {
    v15 = a2;
    goto LABEL_40;
  }

  if (a1)
  {
    v14 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo22TUScreenSharingRequestCG_10Foundation4UUIDVs5NeverOTg5093_s15ConversationKit0A15ControlsManagerC05setupA33ControllerSharePlayStateObserversyyFyShySo22deF34CGSgcfU2_10Foundation4UUIDVAFXEfU_Tf1cn_n(a1);
  }

  else
  {
    v14 = 0;
  }

  v16 = MEMORY[0x1E69E7D40];
  v17 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x2E0);

  v18 = v17(&v79);
  if (*(*v19 + 16) < specialized MutableCollection._halfStablePartition(isSuffixElement:)(v19, v14))
  {
    goto LABEL_46;
  }

  specialized Array.replaceSubrange<A>(_:with:)();

  v20 = v18(&v79, 0);
  v2 = *((*v16 & *a2) + 0x2C0);
  v21 = (v2)(v20);
  if (!v21 || (v22 = v21, v23 = specialized Conversation.currentScreenSharingRequest(ignoring:)(MEMORY[0x1E69E7CC0]), v22, !v23))
  {
    if (one-time initialization token for conversationControls == -1)
    {
LABEL_25:
      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, &static Logger.conversationControls);
      v48 = a2;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v79 = v52;
        *v51 = 136315138;
        v53 = v2();
        if (v53)
        {
          v83 = v53;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
          v54 = String.init<A>(reflecting:)();
          v56 = v55;
        }

        else
        {
          v54 = 7104878;
          v56 = 0xE300000000000000;
        }

        v57 = MEMORY[0x1E69E7D40];
        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v79);

        *(v51 + 4) = v58;
        _os_log_impl(&dword_1BBC58000, v49, v50, "No screen sharing request exists for conversation %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v52);
        MEMORY[0x1BFB23DF0](v52, -1, -1);
        MEMORY[0x1BFB23DF0](v51, -1, -1);
      }

      else
      {

        v57 = MEMORY[0x1E69E7D40];
      }

      v59 = type metadata accessor for TaskPriority();
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v59);
      type metadata accessor for MainActor();
      v15 = v48;
      v60 = static MainActor.shared.getter();
      v61 = swift_allocObject();
      v62 = MEMORY[0x1E69E85E0];
      v61[2] = v60;
      v61[3] = v62;
      v61[4] = v15;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

      v64 = (*((*v57 & *v15) + 0x4A0))(v63);
      if (v64)
      {
        v66 = v65;
        swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeOGMd);
        v67 = swift_allocObject();
        *(v67 + 16) = xmmword_1BC4BAA20;
        *(v67 + 32) = 25;
        *(v67 + 40) = 0u;
        *(v67 + 56) = 0u;
        *(v67 + 72) = 7;
        *(v67 + 80) = 26;
        *(v67 + 88) = 0u;
        *(v67 + 104) = 0u;
        *(v67 + 120) = 7;
        (*(v66 + 32))();

        v64 = swift_unknownObjectRelease();
      }

      (*((*v57 & *v15) + 0xA48))(v64);
      goto LABEL_40;
    }

LABEL_47:
    swift_once();
    goto LABEL_25;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, &static Logger.conversationControls);
  v15 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v15;
    *v28 = v23;
    v29 = v15;
    _os_log_impl(&dword_1BBC58000, v25, v26, "Current screen sharing request %@", v27, 0xCu);
    outlined destroy of CallControlsService?(v28, &_sSo8NSObjectCSgMd);
    MEMORY[0x1BFB23DF0](v28, -1, -1);
    MEMORY[0x1BFB23DF0](v27, -1, -1);
  }

  v30 = v2();
  if (v30)
  {
    v31 = v30;
    v32 = specialized Conversation.currentScreenSharingRequest(ignoring:)(MEMORY[0x1E69E7CC0]);

    if (v32)
    {
      v33 = [v32 type];

      if (v33 == 1)
      {
        v68 = MEMORY[0x1E69E7D40];
        v69 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x4E8))();
        if (v69)
        {
          v71 = v70;
          ObjectType = swift_getObjectType();
          (*(v71 + 88))(ObjectType, v71);
          v69 = swift_unknownObjectRelease();
        }

        v73 = (*((*v68 & *a2) + 0x4A0))(v69);
        if (v73)
        {
          v75 = v74;
          v76 = swift_getObjectType();
          v79 = 25;
          v80 = 0u;
          v81 = 0u;
          v82 = 7;
          (*(v75 + 16))(3, &v79, 0, 0, v76, v75);
          swift_unknownObjectRelease();
          v73 = outlined destroy of ConversationControlsType(&v79);
        }

        (*((*v68 & *a2) + 0xA48))(v73);
      }

      else
      {
        v34 = MEMORY[0x1E69E7D40];
        if (v33 == 4)
        {
          if ((*((*MEMORY[0x1E69E7D40] & *a2) + 0x4E8))())
          {
            v36 = v35;
            v37 = swift_getObjectType();
            (*(v36 + 88))(v37, v36);
            swift_unknownObjectRelease();
          }

          v38 = a2;
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v79 = v42;
            *v41 = 136315138;
            v43 = (*((*v34 & *v38) + 0x620))();
            if (v43)
            {
              v83 = v43;
              type metadata accessor for HUDActivity(0);
              v44 = String.init<A>(reflecting:)();
              v46 = v45;
            }

            else
            {
              v44 = 7104878;
              v46 = 0xE300000000000000;
            }

            v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v79);

            *(v41 + 4) = v77;
            _os_log_impl(&dword_1BBC58000, v39, v40, "incomingRequestToScreenShare current activity %s", v41, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v42);
            MEMORY[0x1BFB23DF0](v42, -1, -1);
            MEMORY[0x1BFB23DF0](v41, -1, -1);
          }

          ConversationControlsManager.addIncomingScreenSharingRequestActivity()();
          goto LABEL_40;
        }
      }
    }
  }

LABEL_40:
}

uint64_t closure #3 in closure #4 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #3 in closure #4 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers(), v6, v5);
}

uint64_t closure #3 in closure #4 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers()()
{
  OUTLINED_FUNCTION_24_0();

  ConversationControlsManager.removeIncomingScreenShareRequest()();
  v0 = type metadata completion function for SyncedScreeningAlphaGradientView();
  ConversationControlsManager.notifyDelegates(about:forceUpdate:)(v0, v1, 1);
  OUTLINED_FUNCTION_13();

  return v2();
}

void closure #5 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v99 = a4;
  v94 = a1;
  v95 = a2;
  v7 = type metadata accessor for Date();
  v97 = *(v7 - 8);
  v98 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v96 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SessionActionNotice(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v93 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v84 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  v20 = a3;
  SessionActionNotice.NoticeType.init(notice:)(v20, &v100);
  v21 = v102;
  if (v102 >> 2 != 0xFFFFFFFF)
  {
    v86 = v12;
    HIDWORD(v87) = a5;
    v90 = v100;
    v91 = v101;
    v92 = v103;
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v85 = v13;
    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, &static Logger.conversationControls);
    v31 = v20;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    v34 = os_log_type_enabled(v32, v33);
    v88 = v19;
    v89 = v21;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v31;
      *v36 = v31;
      v37 = v31;
      _os_log_impl(&dword_1BBC58000, v32, v33, "Received actionNotice: %@", v35, 0xCu);
      outlined destroy of CallControlsService?(v36, &_sSo8NSObjectCSgMd);
      v38 = v36;
      v19 = v88;
      MEMORY[0x1BFB23DF0](v38, -1, -1);
      v39 = v35;
      v21 = v89;
      MEMORY[0x1BFB23DF0](v39, -1, -1);
    }

    v40 = [v31 session];
    v100 = v90;
    v101 = v91;
    v102 = v21;
    v103 = v92;
    v41 = v31;
    if (SessionActionNotice.NoticeType.isSessionChange.getter())
    {
      v42 = [v40 isLocallyInitiated];
      v43 = MEMORY[0x1E69E7D40];
      if (v42)
      {
        (*((*MEMORY[0x1E69E7D40] & *v19) + 0x9F0))(0);
        v44 = [v40 activity];
        v45 = [v44 isScreenSharingActivity];

        if (v45)
        {
          outlined consume of SessionActionNotice.NoticeType?(v90, v91, v89);
          ConversationControlsManager.notifyDelegates(about:forceUpdate:)(0, 0, 0);

          return;
        }
      }

      (*((*v43 & *v19) + 0xA48))();
      v59 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v56 = swift_allocObject();
      *(v56 + 16) = v59;
      *(v56 + 24) = v40;
      v58 = partial apply for closure #1 in closure #5 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers();
      v48 = v40;
    }

    else
    {
      v84 = v40;
      v46 = [v31 actionURL];
      if (!v46)
      {
        v58 = 0;
        v56 = 0;
        v40 = v84;
        goto LABEL_22;
      }

      v47 = v46;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v48 = *(v19 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter);
      v49 = v85 + 32;
      v85 = *(v85 + 32);
      v50 = v93;
      v51 = v17;
      v52 = v86;
      (v85)(v93, v51, v86);
      v53 = (*(v49 + 48) + 24) & ~*(v49 + 48);
      v54 = v41;
      v55 = (v14 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
      v56 = swift_allocObject();
      *(v56 + 16) = v48;
      (v85)(v56 + v53, v50, v52);
      *(v56 + v55) = v54;
      v41 = v54;
      v57 = v54;
      v58 = partial apply for closure #2 in closure #5 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers();
      v40 = v84;
    }

    v60 = v48;
LABEL_22:
    v61 = v9[5];
    v62 = v95;
    _s15ConversationKit11ParticipantVWOcTm_8();
    v63 = type metadata accessor for Participant(0);
    __swift_storeEnumTagSinglePayload(v11 + v61, 0, 1, v63);
    outlined init with copy of IDSLookupManager(v94, v11 + v9[6]);
    v64 = (v11 + v9[7]);
    v64[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession);
    v64[4] = &protocol witness table for TUConversationActivitySession;
    *v64 = v40;
    v65 = *(v62 + *(v63 + 28)) == 0;
    v66 = v40;
    v67 = [v41 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v68 = [v41 bundleIdentifier];
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    v72 = v96;
    Date.init()();
    Date.timeIntervalSinceReferenceDate.getter();
    v74 = v73;
    (*(v97 + 8))(v72, v98);
    v75 = v91;
    *v11 = v90;
    v11[1] = v75;
    v76 = v92;
    v11[2] = v89;
    v11[3] = v76;
    *(v11 + v9[8]) = v65;
    v77 = v11 + v9[9];
    *v77 = v99;
    v77[8] = BYTE4(v87) & 1;
    *(v11 + v9[11]) = v74;
    v78 = (v11 + v9[12]);
    *v78 = v69;
    v78[1] = v71;
    *(v11 + v9[13]) = 1;
    v79 = (v11 + v9[14]);
    *v79 = v58;
    v79[1] = v56;
    v80 = (v11 + v9[15]);
    *v80 = 0;
    v80[1] = 0;
    v81 = v88;
    specialized ConversationControlsManager.post(notice:)(v11, v88, type metadata accessor for SessionActionNotice, &protocol witness table for SessionActionNotice, type metadata accessor for SessionActionNotice, specialized ConversationControlsNoticeCoordinator.post(notice:), v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);

    _s15ConversationKit11ParticipantVWOhTm_10();
    return;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, &static Logger.conversationControls);
  v23 = v20;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = v19;
    v28 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v23;
    *v28 = v23;
    v29 = v23;
    _os_log_impl(&dword_1BBC58000, v24, v25, "Unsupported notice:%@", v26, 0xCu);
    outlined destroy of CallControlsService?(v28, &_sSo8NSObjectCSgMd);
    MEMORY[0x1BFB23DF0](v28, -1, -1);
    MEMORY[0x1BFB23DF0](v26, -1, -1);
  }

  else
  {
  }
}

void closure #1 in closure #5 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers()(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x9F0))(0);
    ConversationControlsManager.presentCurrentActivity(completion:)(0, 0);
    v5 = *&v4[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_coreAnalyticsReporter];
    CNKCoreAnalyticsReporter.reportStartedNoticeLaunch(_:)(a2);
  }
}

void closure #2 in closure #5 in ConversationControlsManager.setupConversationControllerSharePlayStateObservers()(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 conversationManager];
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  v8 = [a3 bundleIdentifier];
  if (!v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = MEMORY[0x1BFB209B0](v9);

    v8 = v10;
  }

  v11 = v8;
  [v4 activateConversationNoticeWithActionURL:v7 bundleIdentifier:?];
}

void *closure #1 in ConversationControlsManager.setupConversationControllerGondolaStateObservers()(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  a2 = result;
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *result) + 0xA80))();
  if (one-time initialization token for conversationControls != -1)
  {
    goto LABEL_13;
  }

LABEL_4:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, &static Logger.conversationControls);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1BBC58000, v11, v12, "Present HUD: letMeInRequestStateDidChange", v13, 2u);
    MEMORY[0x1BFB23DF0](v13, -1, -1);
  }

  v14 = (*((*v2 & *a2) + 0x4E8))();
  if (v14)
  {
    v16 = v15;
    ObjectType = swift_getObjectType();
    (*((*v2 & *a2) + 0x930))(v26);
    (*(v16 + 80))(v26, 1, 0, ObjectType, v16);
    swift_unknownObjectRelease();
    v14 = outlined destroy of ConversationControlsType(v26);
  }

  (*((*v2 & *a2) + 0x488))(v26, v14);
  if (v26[3])
  {
    outlined init with copy of IDSLookupManager(v26, v23);
    outlined destroy of CallControlsService?(v26, &_s15ConversationKit19CallControlsService_pSgMd);
    v18 = v24;
    v19 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v20 = *(a2 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController);
    v21 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState;
    swift_beginAccess();
    (*(v19 + 144))(*(v20 + v21), v18, v19);

    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {

    return outlined destroy of CallControlsService?(v26, &_s15ConversationKit19CallControlsService_pSgMd);
  }
}

void closure #2 in ConversationControlsManager.setupConversationControllerGondolaStateObservers()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xA48))();
      v11 = type metadata accessor for Participant(0);
      __swift_storeEnumTagSinglePayload(v2, 1, 1, v11);
      (*((*v10 & *v9) + 0xA68))(v2);
      outlined destroy of CallControlsService?(v2, &_s15ConversationKit11ParticipantVSgMd);
      ConversationControlsManager.notifyDelegates(about:forceUpdate:)(0, 0, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #3 in ConversationControlsManager.setupConversationControllerGondolaStateObservers()(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v69[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v69[-1] - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v69[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v15 = _dispatchPreconditionTest(_:)();
  v17 = *(v12 + 8);
  v16 = (v12 + 8);
  v17(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_30:
    swift_once();
LABEL_13:
    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, &static Logger.conversationControls);
    v31 = a2;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v73 = v35;
      *v34 = 136315394;
      LOBYTE(v70[0]) = v16() > 0x1Fu;
      v36 = >> prefix<A>(_:)();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v73);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v40 = (*((*v2 & *v31) + 0x2C0))(v39);
      if (v40)
      {
        v41 = v40;
        v42 = [v40 ignoreLMIRequests];
      }

      else
      {
        v42 = 0;
      }

      LOBYTE(v70[0]) = v42;
      v65 = >> prefix<A>(_:)();
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v73);

      *(v34 + 14) = v67;
      _os_log_impl(&dword_1BBC58000, v32, v33, "Ignoring pending participant because the user has not yet joined (%s) or LMI requests are muted (%s)", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v35, -1, -1);
      MEMORY[0x1BFB23DF0](v34, -1, -1);
    }

    else
    {
    }

    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  a2 = Strong;
  v19 = type metadata accessor for Participant(0);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v19);
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0xA68))(v10);
  v20 = outlined destroy of CallControlsService?(v10, &_s15ConversationKit11ParticipantVSgMd);
  (*((*v2 & *a2) + 0x488))(&v73, v20);
  if (v76)
  {
    outlined init with copy of IDSLookupManager(&v73, v70);
    outlined destroy of CallControlsService?(&v73, &_s15ConversationKit19CallControlsService_pSgMd);
    v21 = v71;
    v22 = v72;
    __swift_project_boxed_opaque_existential_1(v70, v71);
    v23 = (*((*v2 & *a2) + 0x2C0))();
    v24 = v23;
    if (v23)
    {
      v23 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
      v25 = &protocol witness table for TUConversation;
    }

    else
    {
      v25 = 0;
      v69[1] = 0;
      v69[2] = 0;
    }

    v69[0] = v24;
    v69[3] = v23;
    v69[4] = v25;
    (*(v22 + 152))(v69, v21, v22);
    outlined destroy of CallControlsService?(v69, &_s15ConversationKit0A0_pSgMd);
    v26 = __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    v26 = outlined destroy of CallControlsService?(&v73, &_s15ConversationKit19CallControlsService_pSgMd);
  }

  v16 = *((*v2 & *a2) + 0x928);
  if (v16)(v26) > 0x1Fu || (v27 = (*((*v2 & *a2) + 0x2C0))()) != 0 && (v28 = v27, v29 = [v27 ignoreLMIRequests], v28, (v29))
  {
    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

  v43 = (*((*v2 & *a2) + 0x910))(0);
  v44 = (*((*v2 & *a2) + 0x4E8))(v43);
  if (v44)
  {
    v46 = v45;
    ObjectType = swift_getObjectType();
    LOBYTE(v73) = 1;
    v77 = 0;
    (*(v46 + 80))(&v73, 1, 0, ObjectType, v46);
    swift_unknownObjectRelease();
    v44 = outlined destroy of ConversationControlsType(&v73);
  }

  if ((*((*v2 & *a2) + 0x4A0))(v44))
  {
    v49 = v48;
    v50 = swift_getObjectType();
    LOBYTE(v73) = 1;
    v77 = 0;
    (*(v49 + 16))(1, &v73, 0, 0, v50, v49);
    swift_unknownObjectRelease();
    outlined destroy of ConversationControlsType(&v73);
  }

  specialized Collection.first.getter(*(a1 + *(v19 + 44)), v8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v19);
  outlined destroy of CallControlsService?(v8, &_s15ConversationKit11ParticipantVSgMd);
  if (*(a1 + *(v19 + 36) + 8) && EnumTagSinglePayload == 1)
  {
    v52 = [objc_opt_self() conversationKit];
    v78._object = 0xE000000000000000;
    v53.value._countAndFlagsBits = 0x61737265766E6F43;
    v53.value._object = 0xEF74694B6E6F6974;
    v54._object = 0x80000001BC509430;
    v54._countAndFlagsBits = 0xD00000000000001BLL;
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    v78._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v54, v53, v52, v55, v78);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1BC4BA940;
    Participant.contactDetails.getter();
    v57 = v73;
    v58 = v74;
    v59 = v75;

    *(v56 + 56) = MEMORY[0x1E69E6158];
    *(v56 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v56 + 32) = v58;
    *(v56 + 40) = v59;
    v60 = String.init(format:_:)();
    v62 = v61;
  }

  else
  {
    Participant.contactDetails.getter();
    v63 = v73;
    v60 = v74;
    v62 = v75;
  }

  v64 = MEMORY[0x1BFB209B0](v60, v62);

  [a2 accessibilityDidAddPendingParticipant_];
}

uint64_t closure #4 in ConversationControlsManager.setupConversationControllerGondolaStateObservers()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v18 - v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v9 = result;
      v10 = type metadata accessor for Participant(0);
      __swift_storeEnumTagSinglePayload(v2, 1, 1, v10);
      v11 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *v9) + 0xA68))(v2);
      outlined destroy of CallControlsService?(v2, &_s15ConversationKit11ParticipantVSgMd);
      v12 = ConversationControlsManager.notifyDelegates(about:forceUpdate:)(0, 0, 1);
      (*((*v11 & *v9) + 0x488))(v22, v12);
      if (v22[3])
      {
        outlined init with copy of IDSLookupManager(v22, v19);
        outlined destroy of CallControlsService?(v22, &_s15ConversationKit19CallControlsService_pSgMd);
        v13 = v20;
        v14 = v21;
        __swift_project_boxed_opaque_existential_1(v19, v20);
        v15 = (*((*v11 & *v9) + 0x2C0))();
        v16 = v15;
        if (v15)
        {
          v15 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
          v17 = &protocol witness table for TUConversation;
        }

        else
        {
          v17 = 0;
          v18[1] = 0;
          v18[2] = 0;
        }

        v18[0] = v16;
        v18[3] = v15;
        v18[4] = v17;
        (*(v14 + 152))(v18, v13, v14);

        outlined destroy of CallControlsService?(v18, &_s15ConversationKit0A0_pSgMd);
        return __swift_destroy_boxed_opaque_existential_1(v19);
      }

      else
      {

        return outlined destroy of CallControlsService?(v22, &_s15ConversationKit19CallControlsService_pSgMd);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #5 in ConversationControlsManager.setupConversationControllerGondolaStateObservers()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v18 - v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v9 = result;
      _s15ConversationKit11ParticipantVWOcTm_8();
      v10 = type metadata accessor for Participant(0);
      __swift_storeEnumTagSinglePayload(v2, 0, 1, v10);
      v11 = MEMORY[0x1E69E7D40];
      (*((*MEMORY[0x1E69E7D40] & *v9) + 0xA68))(v2);
      outlined destroy of CallControlsService?(v2, &_s15ConversationKit11ParticipantVSgMd);
      v12 = ConversationControlsManager.notifyDelegates(about:forceUpdate:)(0, 0, 1);
      (*((*v11 & *v9) + 0x488))(v22, v12);
      if (v22[3])
      {
        outlined init with copy of IDSLookupManager(v22, v19);
        outlined destroy of CallControlsService?(v22, &_s15ConversationKit19CallControlsService_pSgMd);
        v13 = v20;
        v14 = v21;
        __swift_project_boxed_opaque_existential_1(v19, v20);
        v15 = (*((*v11 & *v9) + 0x2C0))();
        v16 = v15;
        if (v15)
        {
          v15 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
          v17 = &protocol witness table for TUConversation;
        }

        else
        {
          v17 = 0;
          v18[1] = 0;
          v18[2] = 0;
        }

        v18[0] = v16;
        v18[3] = v15;
        v18[4] = v17;
        (*(v14 + 152))(v18, v13, v14);

        outlined destroy of CallControlsService?(v18, &_s15ConversationKit0A0_pSgMd);
        return __swift_destroy_boxed_opaque_existential_1(v19);
      }

      else
      {

        return outlined destroy of CallControlsService?(v22, &_s15ConversationKit19CallControlsService_pSgMd);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #6 in ConversationControlsManager.setupConversationControllerGondolaStateObservers()()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      if ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x500))())
      {
        v8 = v7;
        ObjectType = swift_getObjectType();
        (*(v8 + 72))(ObjectType, v8);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #7 in ConversationControlsManager.setupConversationControllerGondolaStateObservers()(char a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xA70))(a1 & 1);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #8 in ConversationControlsManager.setupConversationControllerGondolaStateObservers()(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = Participant.isKickingAvailable.getter();
      (*((*MEMORY[0x1E69E7D40] & *v8) + 0xA78))(a1, v9);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in ConversationControlsManager.setupConversationControllerPushToTalkStateObservers()(uint64_t a1, uint64_t a2)
{
  v22[0] = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v22 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      v17 = v22[0];
      ObjectType = swift_getObjectType();
      if ((*(a2 + 464))(ObjectType, a2) & 1) != 0 && (v19 = (*(a2 + 232))(ObjectType, a2), (*((*MEMORY[0x1E69E7D40] & *v16) + 0x2A8))(v19), v20 = static UUID.== infix(_:_:)(), v21 = *(v4 + 8), v21(v7, v3), v21(v9, v3), (v20))
      {
        if (*(a2 + 208))(ObjectType, a2) == 6 && ((*((*MEMORY[0x1E69E7D40] & *v16) + 0x840))())
        {
          [v16 dismissConfirmLeavePTTChannelAlert];
        }

        ConversationControlsManager.pttCallUpdateSubject.getter();
        v22[1] = v17;
        v22[2] = a2;
        CurrentValueSubject.send(_:)();
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #3 in ConversationControlsManager.setupConversationControllerPushToTalkStateObservers()(void *a1, void *a2, int a3)
{
  LODWORD(v82) = a3;
  v5 = type metadata accessor for Date();
  v80 = *(v5 - 8);
  v81 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v71 - v9;
  v11 = type metadata accessor for PushToTalkNotice.NoticeType(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for UUID();
  v78 = *(v14 - 8);
  v79 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PushToTalkNotice(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v21 = Strong;
  if ([a1 status] == 6)
  {
    if ((*((*MEMORY[0x1E69E7D40] & *v21) + 0x4B8))())
    {
      v23 = v22;
      ObjectType = swift_getObjectType();
      (*(v23 + 32))(0xD00000000000001CLL, 0x80000001BC5095D0, 1, ObjectType, v23);

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, &static Logger.conversationControls);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1BBC58000, v32, v33, "Updating PushToTalk HUD because a call update was made", v34, 2u);
      MEMORY[0x1BFB23DF0](v34, -1, -1);
    }

    if (!(*((*MEMORY[0x1E69E7D40] & *v21) + 0x4B8))())
    {
      goto LABEL_32;
    }

    v36 = v35;
    v37 = swift_getObjectType();
    v83 = 2;
    v84 = 0u;
    v85 = 0u;
    v86 = 7;
    (*(v36 + 16))(&v83, 1, v37, v36);
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v72 = v7;
  v75 = a1;
  v25 = *((*MEMORY[0x1E69E7D40] & *v21) + 0x4B8);
  v26 = (*MEMORY[0x1E69E7D40] & *v21) + 1208;
  v77 = a2;
  v73 = v26;
  v74 = v25;
  if (v25())
  {
    v28 = v27;
    v29 = swift_getObjectType();
    v30 = (*(v28 + 72))(v29, v28);
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0;
  }

  v38 = [v77 name];
  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v39;

  if ((v30 & 1) != 0 || (v82 & 1) == 0)
  {

    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, &static Logger.conversationControls);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    v52 = os_log_type_enabled(v50, v51);
    a1 = v75;
    if (v52)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1BBC58000, v50, v51, "Skipping notice because an active participant was set but it did not contain a name or SpringBoard was locked. Posting a normal HUD update instead.", v53, 2u);
      MEMORY[0x1BFB23DF0](v53, -1, -1);
    }

    if (!v74())
    {

      goto LABEL_32;
    }

    v55 = v54;
    v56 = swift_getObjectType();
    v83 = 2;
    v84 = 0u;
    v85 = 0u;
    v86 = 7;
    (*(v55 + 16))(&v83, 1, v56, v55);
    swift_unknownObjectRelease();

LABEL_27:
    outlined destroy of ConversationControlsType(&v83);
LABEL_32:
    specialized ConversationControlsManager.updatePTTChannelState(call:)(a1);
LABEL_33:

    return;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, &static Logger.conversationControls);
  v41 = v76;

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v82 = v42;
    v45 = v44;
    v46 = swift_slowAlloc();
    v83 = v46;
    *v45 = 136315138;
    LODWORD(v74) = v43;
    v47 = v71;
    *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v76, &v83);
    _os_log_impl(&dword_1BBC58000, v82, v74, "Posting PushToTalkNotice because the active speaker changed to %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v48 = v46;
    v41 = v76;
    MEMORY[0x1BFB23DF0](v48, -1, -1);
    MEMORY[0x1BFB23DF0](v45, -1, -1);
  }

  else
  {

    v47 = v71;
  }

  UUID.init()();
  *v13 = v47;
  v13[1] = v41;
  v57 = [v77 imageURL];
  if (v57)
  {
    v58 = v57;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v59 = 0;
  }

  else
  {
    v59 = 1;
  }

  v60 = type metadata accessor for URL();
  __swift_storeEnumTagSinglePayload(v10, v59, 1, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7speaker_10Foundation3URLVSg5imagetMd);
  outlined init with take of URL?();
  swift_storeEnumTagMultiPayload();
  v61 = v72;
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v63 = v62;
  (*(v80 + 8))(v61, v81);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = (*(*static Defaults.shared + 1024))();
  (*(v78 + 32))(v19, v16, v79);
  outlined init with take of Collaboration();
  *&v19[v17[6]] = v63;
  v19[v17[7]] = 6;
  v65 = &v19[v17[8]];
  *v65 = 0;
  *(v65 + 1) = 0;
  *&v19[v17[9]] = v64;
  v19[v17[10]] = 1;
  v66 = &v19[v17[11]];
  *v66 = 0;
  *(v66 + 1) = 0;
  v67 = &v19[v17[12]];
  *v67 = 0;
  *(v67 + 1) = 0;
  v19[v17[13]] = 1;
  v68 = &v19[v17[14]];
  *v68 = 0;
  *(v68 + 1) = 0;
  specialized ConversationControlsManager.post(notice:)(v19, v21, type metadata accessor for PushToTalkNotice, &protocol witness table for PushToTalkNotice, type metadata accessor for PushToTalkNotice, specialized ConversationControlsNoticeCoordinator.post(notice:), v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
  LOBYTE(v83) = 0;
  CurrentValueSubject.send(_:)();

  specialized ConversationControlsManager.updatePTTChannelState(call:)(v75);
  _s15ConversationKit11ParticipantVWOhTm_10();
}

Swift::Void __swiftcall ConversationControlsManager.incomingTransmissionReceived()()
{
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v0, &static Logger.conversationControls);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v2))
  {
    v3 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v3);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_18();
  }

  CurrentValueSubject.send(_:)();
}

Swift::Void __swiftcall ConversationControlsManager.accessoryButtonEventReceived()()
{
  OUTLINED_FUNCTION_408();
  OUTLINED_FUNCTION_129();
  v4 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v40 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v7 = OUTLINED_FUNCTION_82();
  v8 = type metadata accessor for PushToTalkNotice(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_13_2();
  if ((*((*MEMORY[0x1E69E7D40] & v10) + 0x4B8))())
  {
    OUTLINED_FUNCTION_264();
    ObjectType = swift_getObjectType();
    v12 = (*(v2 + 72))(ObjectType);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
  }

  OUTLINED_FUNCTION_293();
  v13 += 84;
  v14 = *v13;
  (*v13)();
  v15 = OUTLINED_FUNCTION_351();
  v16 = (*(v3 + 464))(v15);
  swift_unknownObjectRelease();
  if ((v16 & 1) != 0 && (v12 & 1) == 0)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v17 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v17, &static Logger.conversationControls);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_42_1(v19))
    {
      v20 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_203_0(v20);
      OUTLINED_FUNCTION_25_6(&dword_1BBC58000, v21, v22, "PushToTalk accessory button event received");
      OUTLINED_FUNCTION_104_2();
    }

    UUID.init()();
    v23 = (v0 + v8[5]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb7enabled_10Foundation3URLVSg5imagetMd);
    v14();
    v24 = OUTLINED_FUNCTION_351();
    v25 = (*(v16 + 264))(v24, v16);
    v26 = swift_unknownObjectRelease();
    *v23 = v25 & 1;
    (v14)(v26);
    v27 = OUTLINED_FUNCTION_351();
    (*(v25 + 88))(v27, v25);
    swift_unknownObjectRelease();
    type metadata accessor for PushToTalkNotice.NoticeType(0);
    swift_storeEnumTagMultiPayload();
    Date.init()();
    Date.timeIntervalSinceReferenceDate.getter();
    v29 = v28;
    (*(v40 + 8))(v1, v4);
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    OUTLINED_FUNCTION_0_1();
    (*(v30 + 1024))();
    *(v0 + v8[6]) = v29;
    *(v0 + v8[7]) = 6;
    OUTLINED_FUNCTION_365(v8[8]);
    *(v0 + v8[9]) = v31;
    *(v0 + v8[10]) = 1;
    OUTLINED_FUNCTION_365(v8[11]);
    OUTLINED_FUNCTION_365(v8[12]);
    *(v0 + v8[13]) = 1;
    OUTLINED_FUNCTION_365(v8[14]);
    v32 = OUTLINED_FUNCTION_45_1();
    specialized ConversationControlsManager.post(notice:)(v32, v33, v34, v35, v36, v37, v38, v39, v4, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    OUTLINED_FUNCTION_180_1();
    _s15ConversationKit11ParticipantVWOhTm_10();
  }

  OUTLINED_FUNCTION_415();
}

uint64_t ConversationControlsManager.isIgnoredScreenSharingRequestUUID(_:)()
{
  OUTLINED_FUNCTION_4_36();
  v2 = (*((*MEMORY[0x1E69E7D40] & v1) + 0x2D0))();
  v5 = v0;
  specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v4, v2);
  OUTLINED_FUNCTION_247();

  return v0 & 1;
}

BOOL ConversationControlsManager.isShownAboveCoverSheetWithoutPasscode.getter()
{
  if (ConversationControlsManager.isShownAboveCoverSheet.getter())
  {
    type metadata accessor for SpringBoardUtilities();
    OUTLINED_FUNCTION_11();
    return !static SpringBoardUtilities.checkSpringBoardState(for:)();
  }

  else
  {
    return 0;
  }
}

void closure #1 in ConversationControlsManager.scheduleDelayedLMIBanner()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = MEMORY[0x1E69E7D40];
    if (((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x908))() & 1) != 0 && (*((*v2 & *v1) + 0x928))() <= 0x1Fu)
    {
      v3 = (*((*v2 & *v1) + 0x2C0))();
      if (v3)
      {
        v4 = v3;
        if ([v3 state] != 3 || (v5 = objc_msgSend(v4, sel_pendingMembers), type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember), lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember), v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v5, v7 = specialized Set.count.getter(v6), , v7 < 1) || (objc_msgSend(v4, sel_ignoreLMIRequests) & 1) != 0)
        {

          return;
        }

        if (one-time initialization token for conversationControls != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        __swift_project_value_buffer(v8, &static Logger.conversationControls);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          *v11 = 136315138;
          v25[0] = v12;
          v13 = >> prefix<A>(_:)();
          v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v25);

          *(v11 + 4) = v15;
          _os_log_impl(&dword_1BBC58000, v9, v10, "Showing LMI banner since the first person to join the call has been ignoring LMI requests (didn't see LMI banner or open drawer) for %s seconds since they joined", v11, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v12);
          MEMORY[0x1BFB23DF0](v12, -1, -1);
          MEMORY[0x1BFB23DF0](v11, -1, -1);
        }

        v18 = (*((*v2 & *v1) + 0x4E8))(v16, v17);
        if (v18)
        {
          v20 = v19;
          ObjectType = swift_getObjectType();
          LOBYTE(v25[0]) = 1;
          v26 = 0;
          (*(v20 + 80))(v25, 1, 0, ObjectType, v20);
          swift_unknownObjectRelease();
          v18 = outlined destroy of ConversationControlsType(v25);
        }

        if ((*((*v2 & *v1) + 0x4A0))(v18))
        {
          v23 = v22;
          v24 = swift_getObjectType();
          LOBYTE(v25[0]) = 1;
          v26 = 0;
          (*(v23 + 16))(1, v25, 0, 0, v24, v23);
          swift_unknownObjectRelease();

          outlined destroy of ConversationControlsType(v25);
          return;
        }
      }
    }
  }
}

Class ConversationControlsManager.videoCameraOffForScreenSharingAlert.getter()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v0 = *MEMORY[0x1E69DDD40];
  v20 = 0;
  v21[0] = 0xD000000000000010;
  v21[1] = 0x80000001BC505B50;
  v21[2] = 1;
  v21[3] = v0;
  v22 = 0;
  v23 = 4;
  v24 = 0;
  v25 = 0;
  v26[0] = 0xD000000000000010;
  v26[1] = 0x80000001BC505B50;
  v26[2] = 1;
  v26[3] = v0;
  v27 = 0;
  v28 = 4;
  v29 = 0;
  v30 = 0;
  v1 = v0;
  outlined init with copy of SymbolImageDescription(v21, v18);
  outlined destroy of SymbolImageDescription(v26);
  v2 = static UIImage.symbolImage(for:)(v21);
  outlined destroy of SymbolImageDescription(v21);
  if (v2)
  {
    v3 = [objc_opt_self() labelColor];
    v4 = [v2 imageWithTintColor_];
  }

  else
  {
    v4 = 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  v5 = objc_opt_self();
  v6 = [v5 conversationKit];
  v31._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0x6143206F65646956;
  v7._object = 0xEC0000006172656DLL;
  v8.value._countAndFlagsBits = 0x61737265766E6F43;
  v8.value._object = 0xEF74694B6E6F6974;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v31);

  memset(v18, 0, sizeof(v18));
  v19 = 1;
  v11 = static NSAttributedString.localizedString(_:prefixImage:imageBounds:)(v10._countAndFlagsBits, v10._object, v4, v18);

  v12 = [v5 conversationKit];
  v32._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0xD00000000000002ALL;
  v13._object = 0x80000001BC5094B0;
  v14.value._countAndFlagsBits = 0x61737265766E6F43;
  v14.value._object = 0xEF74694B6E6F6974;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v32);

  NSAttributedString.__allocating_init(string:)(v16);
  return v11;
}

Class ConversationControlsManager.videoCameraOnOrOffAlert.getter()
{
  v1 = v0;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v2 = *MEMORY[0x1E69DDD40];
  v27[0] = 0x69662E6F65646976;
  v27[1] = 0xEA00000000006C6CLL;
  v27[2] = 1;
  v27[3] = v2;
  v28 = 0;
  v29 = 4;
  v30 = 0;
  v31 = 0;
  v32[0] = 0x69662E6F65646976;
  v32[1] = 0xEA00000000006C6CLL;
  v32[2] = 1;
  v32[3] = v2;
  v33 = 0;
  v34 = 4;
  v35 = 0;
  v36 = 0;
  v3 = v2;
  outlined init with copy of SymbolImageDescription(v27, v25);
  outlined destroy of SymbolImageDescription(v32);
  v4 = static UIImage.symbolImage(for:)(v27);
  outlined destroy of SymbolImageDescription(v27);
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
  v8.super.isa = [v7 conversationKit];
  v37._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0x6143206F65646956;
  v9._object = 0xEC0000006172656DLL;
  v10.value._countAndFlagsBits = 0x61737265766E6F43;
  v10.value._object = 0xEF74694B6E6F6974;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v37);

  memset(v25, 0, sizeof(v25));
  v26 = 1;
  v13 = static NSAttributedString.localizedString(_:prefixImage:imageBounds:)(v12._countAndFlagsBits, v12._object, v6, v25);

  LOWORD(v8.super.isa) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6E0))(v14);
  v15 = [v7 conversationKit];
  v24 = 0xE000000000000000;
  if ((v8.super.isa & 0x100) != 0)
  {
    v16 = 0x4E4F5F4F45444956;
    v17 = 0xE800000000000000;
  }

  else
  {
    v16 = 0x464F5F4F45444956;
    v17 = 0xE900000000000046;
  }

  v18.value._countAndFlagsBits = 0x61737265766E6F43;
  v18.value._object = 0xEF74694B6E6F6974;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v20 = 0;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v16, v18, v15, v19, *(&v24 - 1));

  MEMORY[0x1BFB20B10](v21._countAndFlagsBits, v21._object);

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  NSAttributedString.__allocating_init(string:)(v22);

  return v13;
}

void ConversationControlsManager.dismissReactionNotice()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14ReactionNoticeVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23[-1] - v3;
  v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_noticeCoordinator);
  LOBYTE(v23[0]) = 1;
  ConversationControlsNoticeCoordinator.flushNotices(priority:)(v23);
  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0x88))(v23);
  if (v24)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
    v7 = type metadata accessor for ReactionNotice(0);
    v8 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v4, v8 ^ 1u, 1, v7);
    if (__swift_getEnumTagSinglePayload(v4, 1, v7) != 1)
    {
      outlined destroy of CallControlsService?(v4, &_s15ConversationKit14ReactionNoticeVSgMd);
      ConversationControlsNoticeCoordinator.dismissAndGetNextNotice(dismissContext:)();
      v9 = v24;
      outlined destroy of CallControlsService?(v23, &_s15ConversationKit6Notice_pSgMd);
      if (!v9)
      {
        if (one-time initialization token for conversationControls != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        __swift_project_value_buffer(v10, &static Logger.conversationControls);
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_1BBC58000, v11, v12, "No more notices, dismissing banner", v13, 2u);
          MEMORY[0x1BFB23DF0](v13, -1, -1);
        }

        if ((*((*v6 & *v1) + 0x4B8))())
        {
          v15 = v14;
          ObjectType = swift_getObjectType();
          (*(v15 + 32))(0xD000000000000025, 0x80000001BC509400, 1, ObjectType, v15);
          swift_unknownObjectRelease();
        }
      }

      return;
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v23, &_s15ConversationKit6Notice_pSgMd);
    v17 = type metadata accessor for ReactionNotice(0);
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v17);
  }

  outlined destroy of CallControlsService?(v4, &_s15ConversationKit14ReactionNoticeVSgMd);
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, &static Logger.conversationControls);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1BBC58000, v19, v20, "[dismissReactionNotice] Not showing reaction notice, ignoring", v21, 2u);
    MEMORY[0x1BFB23DF0](v21, -1, -1);
  }
}

uint64_t ConversationControlsManager.postReactionNotice()()
{
  v1 = v0;
  v2 = swift_beginAccess();
  specialized NoticeQueueStore.peek()(&v7, v2);
  swift_endAccess();
  if (!v8)
  {
    return outlined destroy of CallControlsService?(&v7, &_s15ConversationKit6Notice_pSgMd);
  }

  outlined init with take of TapInteractionHandler(&v7, v9);
  v3 = v10;
  v4 = v11;
  v5 = __swift_project_boxed_opaque_existential_1(v9, v10);
  specialized ConversationControlsManager.post(notice:)(v5, v1, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t ScreenSharingControlStateManager.deinit()
{

  return v0;
}

uint64_t ScreenSharingControlStateManager.__deallocating_deinit()
{
  ScreenSharingControlStateManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t ScreenSharingControlStateManager.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit20ShareMenuActionStateVs5NeverOGMd);
  swift_allocObject();
  *(v0 + 16) = CurrentValueSubject.init(_:)();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static Defaults.shared + 224))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd);
  swift_allocObject();
  *(v0 + 24) = CurrentValueSubject.init(_:)();
  return v0;
}

Swift::Void __swiftcall ConversationControlsManager.joinConversation(from:)(UIControl *from)
{
  OUTLINED_FUNCTION_329();
  OUTLINED_FUNCTION_153();
  if ((*(v3 + 2344))() == 96)
  {
    OUTLINED_FUNCTION_176();
    v5 = *(*(v4 + 808))();
    (*(v5 + 264))();

    [v2 joinButtonTappedWithButton_];
  }
}

void ConduitApprovalDelegate.approveSplitSession(for:requestedFromDevice:pullContext:completion:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_2();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v10 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v10, &static Logger.conversationControls);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v12))
  {
    v13 = OUTLINED_FUNCTION_33();
    *v13 = 0;
    _os_log_impl(&dword_1BBC58000, v11, v12, "Split session approval requested", v13, 2u);
    OUTLINED_FUNCTION_27();
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v14 = static OS_dispatch_queue.main.getter();
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = swift_allocObject();
  v16[2] = Strong;
  v16[3] = v5;
  v16[4] = v7;
  v16[5] = v3;
  v16[6] = v1;
  OUTLINED_FUNCTION_7_6(v16);
  v29[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v29[2] = v17;
  v29[3] = &block_descriptor_246;
  v18 = _Block_copy(v29);
  v19 = v7;

  static DispatchQoS.unspecified.getter();
  v29[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_13_52();
  lazy protocol witness table accessor for type URL and conformance URL(v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v22, v23);
  OUTLINED_FUNCTION_39_13();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v24);
  _Block_release(v18);

  v25 = OUTLINED_FUNCTION_45_16();
  v26(v25);
  v27 = OUTLINED_FUNCTION_107_1();
  v28(v27);
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConduitApprovalDelegate.approveSplitSession(for:requestedFromDevice:pullContext:completion:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for SystemUpdateNotice(0);
  MEMORY[0x1EEE9AC00](updated);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v39 = v10;
    if (a2 == 1)
    {
      v17 = a1;
      v38 = 0;
    }

    else
    {
      v37 = a4;
      v18 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x988);
      v19 = a1;
      v20 = v18();
      if (v20)
      {

        v38 = 1;
      }

      else
      {
        v38 = 0;
      }

      a4 = v37;
    }

    v21 = outlined bridged method (pb) of @objc TUNearbyDeviceHandle.name.getter(a3);
    v23 = 0x206E776F6E6B6E55;
    if (v22)
    {
      v23 = v21;
    }

    v37 = v23;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0xEE00656369766544;
    }

    *(v16 + 24) = 0u;
    *(v16 + 40) = 0u;
    *(v16 + 7) = 0;
    UUID.init()();
    v25 = swift_allocObject();
    *(v25 + 16) = a4;
    *(v25 + 24) = a5;
    v26 = swift_allocObject();
    v27 = a4;
    v28 = v26;
    *(v26 + 16) = v27;
    *(v26 + 24) = a5;
    swift_retain_n();
    Date.init()();
    Date.timeIntervalSinceReferenceDate.getter();
    v30 = v29;
    (*(v11 + 8))(v13, v39);
    v31 = v37;
    *v16 = v38;
    *(v16 + 1) = v31;
    *(v16 + 2) = v24;
    *&v16[updated[7]] = v30;
    v16[updated[8]] = 2;
    v32 = &v16[updated[9]];
    *v32 = 0;
    *(v32 + 1) = 0;
    v16[updated[10]] = 0;
    v33 = &v16[updated[11]];
    *v33 = partial apply for closure #1 in closure #1 in ConduitApprovalDelegate.approveSplitSession(for:requestedFromDevice:pullContext:completion:);
    v33[1] = v25;
    v34 = &v16[updated[12]];
    *v34 = partial apply for closure #2 in closure #1 in ConduitApprovalDelegate.approveSplitSession(for:requestedFromDevice:pullContext:completion:);
    v34[1] = v28;
    v16[updated[13]] = 2;
    v35 = &v16[updated[14]];
    *v35 = 0;
    *(v35 + 1) = 0;
    specialized ConversationControlsNoticeCoordinator.post(notice:)();
    _s15ConversationKit11ParticipantVWOhTm_10();
  }
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool, @unowned NSError?) -> ()(char a1, uint64_t a2, uint64_t a3)
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
  (*(a3 + 16))(a3, a1 & 1);
}

Swift::Void __swiftcall ConduitApprovalDelegate.cancelSplitSessionApproval()()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4_2();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_42_1(v4))
  {
    v5 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_203_0(v5);
    OUTLINED_FUNCTION_25_6(&dword_1BBC58000, v6, v7, "Split session approval cancelled");
    OUTLINED_FUNCTION_104_2();
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v8 = static OS_dispatch_queue.main.getter();
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_20();
  v10 = swift_allocObject();
  *(v10 + 16) = Strong;
  OUTLINED_FUNCTION_7_6(v10);
  v23[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v23[2] = v11;
  v23[3] = &block_descriptor_252;
  v12 = _Block_copy(v23);

  static DispatchQoS.unspecified.getter();
  v23[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_13_52();
  lazy protocol witness table accessor for type URL and conformance URL(v13, v14);
  v15 = OUTLINED_FUNCTION_334();
  __swift_instantiateConcreteTypeFromMangledNameV2(v15);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v16, v17);
  OUTLINED_FUNCTION_39_13();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v18);
  _Block_release(v12);

  v19 = OUTLINED_FUNCTION_45_16();
  v20(v19);
  v21 = OUTLINED_FUNCTION_107_1();
  v22(v21);
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConduitApprovalDelegate.cancelSplitSessionApproval()(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemUpdateNoticeVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27[-1] - v3;
  updated = type metadata accessor for SystemUpdateNotice(0);
  MEMORY[0x1EEE9AC00](updated);
  v7 = &v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_7;
  }

  v8 = *&a1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_noticeCoordinator];
  v9 = MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x88);
  v11 = a1;
  v12 = v8;
  v10(v27);

  if (!v28)
  {

    outlined destroy of CallControlsService?(v27, &_s15ConversationKit6Notice_pSgMd);
    __swift_storeEnumTagSinglePayload(v4, 1, 1, updated);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
  v13 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v4, v13 ^ 1u, 1, updated);
  if (__swift_getEnumTagSinglePayload(v4, 1, updated) == 1)
  {

LABEL_6:
    outlined destroy of CallControlsService?(v4, &_s15ConversationKit18SystemUpdateNoticeVSgMd);
LABEL_7:
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, &static Logger.conversationControls);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BBC58000, v15, v16, "[cancelSplitSessionApproval] Not showing approval notice, ignoring", v17, 2u);
      MEMORY[0x1BFB23DF0](v17, -1, -1);
    }

    return;
  }

  outlined init with take of Collaboration();
  if (!*(v7 + 2))
  {

    _s15ConversationKit11ParticipantVWOhTm_10();
    goto LABEL_7;
  }

  v18 = v12;
  ConversationControlsNoticeCoordinator.dismissAndGetNextNotice(dismissContext:)();

  if (v28)
  {

    outlined destroy of CallControlsService?(v27, &_s15ConversationKit6Notice_pSgMd);
  }

  else
  {
    outlined destroy of CallControlsService?(v27, &_s15ConversationKit6Notice_pSgMd);
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, &static Logger.conversationControls);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BBC58000, v20, v21, "No more notices, dismissing banner", v22, 2u);
      MEMORY[0x1BFB23DF0](v22, -1, -1);
    }

    if ((*((*v9 & *v11) + 0x4B8))())
    {
      v24 = v23;
      ObjectType = swift_getObjectType();
      (*(v24 + 32))(0xD000000000000025, 0x80000001BC509400, 1, ObjectType, v24);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  _s15ConversationKit11ParticipantVWOhTm_10();
}

uint64_t ConduitLagunaNoticeManager.PushBannerInfo.identifier.getter()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_46();

  return v1(v0);
}

id ConduitLagunaNoticeManager.PushBannerInfo.suggestion.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConduitLagunaNoticeManager.PushBannerInfo(0) + 20));

  return v1;
}

uint64_t ConduitLagunaNoticeManager.PushBannerInfo.isSystemBanner.setter(char a1)
{
  result = type metadata accessor for ConduitLagunaNoticeManager.PushBannerInfo(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

double (*ConduitLagunaNoticeManager.PushBannerInfo.isSystemBanner.modify())(void)
{
  v0 = OUTLINED_FUNCTION_17_1();
  type metadata accessor for ConduitLagunaNoticeManager.PushBannerInfo(v0);
  return TPNumberPadCharacter.rawValue.getter;
}

void ConduitLagunaNoticeManager.PushBannerInfo.description.getter()
{
  OUTLINED_FUNCTION_331();
  v1 = v0;
  _StringGuts.grow(_:)(45);

  type metadata accessor for UUID();
  OUTLINED_FUNCTION_11_67();
  lazy protocol witness table accessor for type URL and conformance URL(v2, v3);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v4);

  MEMORY[0x1BFB20B10](0x7473656767757320, 0xEC0000003A6E6F69);
  v5 = type metadata accessor for ConduitLagunaNoticeManager.PushBannerInfo(0);
  v6 = [*(v0 + *(v5 + 20)) description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = OUTLINED_FUNCTION_40_2();
  MEMORY[0x1BFB20B10](v7);

  OUTLINED_FUNCTION_11();
  MEMORY[0x1BFB20B10](0xD000000000000010);
  if (*(v1 + *(v5 + 24)))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v1 + *(v5 + 24)))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1BFB20B10](v8, v9);

  OUTLINED_FUNCTION_9_17();
}

uint64_t ConduitLagunaNoticeManager.PushBannerInfo.init(identifier:suggestion:isSystemBanner:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v6 = OUTLINED_FUNCTION_1_5();
  v7(v6);
  result = type metadata accessor for ConduitLagunaNoticeManager.PushBannerInfo(0);
  *(a3 + *(result + 20)) = a1;
  *(a3 + *(result + 24)) = a2;
  return result;
}

uint64_t ConduitLagunaNoticeManager.pushBannerInfo.getter()
{
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_75_1();
  return outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
}

uint64_t key path setter for ConduitLagunaNoticeManager.pushBannerInfo : ConduitLagunaNoticeManager()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit26ConduitLagunaNoticeManagerC14PushBannerInfoVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v4 - v1;
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  return ConduitLagunaNoticeManager.pushBannerInfo.setter(v2);
}

uint64_t ConduitLagunaNoticeManager.pushBannerInfo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit26ConduitLagunaNoticeManager_pushBannerInfo;
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_30_2();
  outlined assign with copy of ConduitLagunaNoticeManager.PushBannerInfo?(a1, v1 + v3);
  swift_endAccess();
  ConduitLagunaNoticeManager.pushBannerInfo.didset();
  return outlined destroy of CallControlsService?(a1, &_s15ConversationKit26ConduitLagunaNoticeManagerC14PushBannerInfoVSgMd);
}

void ConduitLagunaNoticeManager.pushBannerInfo.didset()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xA30))();
  }
}

void ConduitLagunaNoticeManager.neighborhoodActivityConduit(_:splitSessionStarted:)()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4_2();
  ConduitLagunaNoticeManager.updateState()();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v2 = static OS_dispatch_queue.main.getter();
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_20();
  v4 = swift_allocObject();
  *(v4 + 16) = Strong;
  OUTLINED_FUNCTION_7_6(v4);
  v17[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v17[2] = v5;
  v17[3] = &block_descriptor_258;
  v6 = _Block_copy(v17);

  static DispatchQoS.unspecified.getter();
  v17[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_13_52();
  lazy protocol witness table accessor for type URL and conformance URL(v7, v8);
  v9 = OUTLINED_FUNCTION_334();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v10, v11);
  OUTLINED_FUNCTION_39_13();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v12 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v12);
  _Block_release(v6);

  v13 = OUTLINED_FUNCTION_45_16();
  v14(v13);
  v15 = OUTLINED_FUNCTION_107_1();
  v16(v15);
  OUTLINED_FUNCTION_30_0();
}

uint64_t ConduitLagunaNoticeManager.updateState()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v4 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in ConduitLagunaNoticeManager.updateState();
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_521;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v6, v3, v9);
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

void closure #1 in ConduitLagunaNoticeManager.neighborhoodActivityConduit(_:splitSessionStarted:)(void *a1)
{
  if (a1)
  {
    v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x4B8);
    v5 = a1;
    if (v1())
    {
      v3 = v2;
      ObjectType = swift_getObjectType();
      (*(v3 + 32))(0xD000000000000016, 0x80000001BC5093C0, 1, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void ConduitLagunaNoticeManager.neighborhoodActivityConduit(_:suggestionUpdated:)()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v32 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v30 = v7;
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_2();
  v8 = type metadata accessor for DispatchTime();
  v29 = v8;
  OUTLINED_FUNCTION_2_7();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_227();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v27 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v28 = *(v10 + 8);
  v28(v3, v8);
  OUTLINED_FUNCTION_20();
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  OUTLINED_FUNCTION_7_6(v15);
  v33[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v33[2] = v16;
  v33[3] = &block_descriptor_264;
  v17 = _Block_copy(v33);
  v18 = v0;

  static DispatchQoS.unspecified.getter();
  v33[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_13_52();
  lazy protocol witness table accessor for type URL and conformance URL(v19, v20);
  v21 = OUTLINED_FUNCTION_15_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(v21);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v22, v23);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v27;
  MEMORY[0x1BFB21510](v14, v2, v1, v17);
  _Block_release(v17);

  v25 = OUTLINED_FUNCTION_45_16();
  v26(v25);
  (*(v30 + 8))(v2, v31);
  v28(v14, v29);
  OUTLINED_FUNCTION_30_0();
}

void ConduitLagunaNoticeManager.conversationManager(_:stateChangedFor:fromOldConversation:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v8 = static OS_dispatch_queue.main.getter();
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_109();
  v10 = swift_allocObject();
  v10[2] = Strong;
  v10[3] = v5;
  v10[4] = v3;
  v10[5] = v1;
  OUTLINED_FUNCTION_7_6(v10);
  v26[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v26[2] = v11;
  v26[3] = &block_descriptor_270;
  v12 = _Block_copy(v26);
  v13 = v5;
  v14 = v3;
  v15 = v1;

  static DispatchQoS.unspecified.getter();
  v26[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_13_52();
  lazy protocol witness table accessor for type URL and conformance URL(v16, v17);
  v18 = OUTLINED_FUNCTION_243();
  __swift_instantiateConcreteTypeFromMangledNameV2(v18);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v19, v20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v21);
  _Block_release(v12);

  v22 = OUTLINED_FUNCTION_45_16();
  v23(v22);
  v24 = OUTLINED_FUNCTION_107_1();
  v25(v24);
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConduitLagunaNoticeManager.conversationManager(_:stateChangedFor:fromOldConversation:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v39 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  if (a1)
  {
    v37 = a4;
    v38 = v8;
    v22 = a1;
    v42 = a2;
    v23 = [a2 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = 1;
    v25 = __swift_storeEnumTagSinglePayload(v21, 0, 1, v7);
    v26 = *((*MEMORY[0x1E69E7D40] & *v22) + 0x2C0);
    v41 = v22;
    v27 = v26(v25);
    if (v27)
    {
      v28 = v27;
      v29 = [v27 UUID];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = 0;
    }

    __swift_storeEnumTagSinglePayload(v18, v24, 1, v7);
    v30 = *(v10 + 48);
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v7);
    v32 = v42;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of CallControlsService?(v18, &_s10Foundation4UUIDVSgMd);
      outlined destroy of CallControlsService?(v21, &_s10Foundation4UUIDVSgMd);
      if (__swift_getEnumTagSinglePayload(&v12[v30], 1, v7) == 1)
      {
        outlined destroy of CallControlsService?(v12, &_s10Foundation4UUIDVSgMd);
        goto LABEL_11;
      }
    }

    else
    {
      outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
      if (__swift_getEnumTagSinglePayload(&v12[v30], 1, v7) != 1)
      {
        v33 = v38;
        v34 = v40;
        (*(v38 + 32))(v40, &v12[v30], v7);
        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v35 = dispatch thunk of static Equatable.== infix(_:_:)();
        v36 = *(v33 + 8);
        v36(v34, v7);
        outlined destroy of CallControlsService?(v18, &_s10Foundation4UUIDVSgMd);
        outlined destroy of CallControlsService?(v21, &_s10Foundation4UUIDVSgMd);
        v36(v15, v7);
        v32 = v42;
        outlined destroy of CallControlsService?(v12, &_s10Foundation4UUIDVSgMd);
        if (v35)
        {
LABEL_11:
          if ([v32 state] == 4 && objc_msgSend(v39, sel_state) != 4)
          {
            ConduitLagunaNoticeManager.updateState()();
          }
        }

LABEL_14:

        return;
      }

      outlined destroy of CallControlsService?(v18, &_s10Foundation4UUIDVSgMd);
      outlined destroy of CallControlsService?(v21, &_s10Foundation4UUIDVSgMd);
      (*(v38 + 8))(v15, v7);
    }

    outlined destroy of CallControlsService?(v12, &_s10Foundation4UUIDVSg_ADtMd);
    goto LABEL_14;
  }
}

void ConduitLagunaNoticeManager.conversationManager(_:remoteMembersChangedFor:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v4 = static OS_dispatch_queue.main.getter();
  Strong = swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_24();
  v6 = swift_allocObject();
  *(v6 + 16) = Strong;
  *(v6 + 24) = v1;
  OUTLINED_FUNCTION_7_6(v6);
  v20[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v20[2] = v7;
  v20[3] = &block_descriptor_276;
  v8 = _Block_copy(v20);
  v9 = v1;

  static DispatchQoS.unspecified.getter();
  v20[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_13_52();
  lazy protocol witness table accessor for type URL and conformance URL(v10, v11);
  v12 = OUTLINED_FUNCTION_334();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v13, v14);
  OUTLINED_FUNCTION_39_13();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v15 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v15);
  _Block_release(v8);

  v16 = OUTLINED_FUNCTION_45_16();
  v17(v16);
  v18 = OUTLINED_FUNCTION_107_1();
  v19(v18);
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConduitLagunaNoticeManager.conversationManager(_:remoteMembersChangedFor:)(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35[-1] - v9;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (((*(*static Defaults.shared + 624))() & 1) != 0 && a1)
  {
    v11 = MEMORY[0x1E69E7D40];
    v12 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2C0);
    v34 = a1;
    v13 = v12();
    if (v13)
    {
      v14 = v13;
      v15 = [a2 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = [v14 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v16) = static UUID.== infix(_:_:)();
      v17 = *(v5 + 8);
      v17(v7, v4);
      v17(v10, v4);
      if ((v16 & 1) != 0 && [a2 isContinuitySession])
      {
        if (one-time initialization token for conversationControls != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        __swift_project_value_buffer(v18, &static Logger.conversationControls);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_1BBC58000, v19, v20, "Updating presentation banner for laguna pull back banner", v21, 2u);
          MEMORY[0x1BFB23DF0](v21, -1, -1);
        }

        v22 = (*((*v11 & *v34) + 0x2A0))();
        ConversationControlsManager.controlsHUDUpdate(for:)(v22, v23, v24, v25, v26, v27, v28, v29, v34, v35[0], v35[1], v35[2], v35[3], v35[4], v36, v37, v38, v39, v40, v41);
        swift_unknownObjectRelease();
        if ((*((*v11 & *v34) + 0x4B8))())
        {
          v31 = v30;
          ObjectType = swift_getObjectType();
          (*(v31 + 16))(v35, BYTE1(v36), ObjectType, v31);
          swift_unknownObjectRelease();
        }

        outlined destroy of ControlsHUDUpdate(v35);
      }

      else
      {
      }
    }

    else
    {
      v33 = v34;
    }
  }
}

uint64_t ConduitLagunaNoticeManager.teardownBanner()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit26ConduitLagunaNoticeManagerC14PushBannerInfoVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - v4;
  v6 = type metadata accessor for ConduitLagunaNoticeManager.PushBannerInfo(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return outlined destroy of CallControlsService?(v5, &_s15ConversationKit26ConduitLagunaNoticeManagerC14PushBannerInfoVSgMd);
  }

  outlined init with take of Collaboration();
  if (one-time initialization token for conversationControls != -1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, &static Logger.conversationControls);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1BBC58000, v16, v17, "teardownBanner", v18, 2u);
    MEMORY[0x1BFB23DF0](v18, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x4A0))();
    v23 = v22;

    if (v21)
    {
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeOGMd);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1BC4BA940;
      v26 = *&v8[*(v6 + 20)];
      *(v25 + 32) = v26;
      *(v25 + 72) = 3;
      v27 = *(v23 + 32);
      v28 = v26;
      v27(v25, 0x6E776F6472616574, 0xEE0072656E6E6142, 1, ObjectType, v23);

      swift_unknownObjectRelease();
    }
  }

  __swift_storeEnumTagSinglePayload(v2, 1, 1, v6);
  ConduitLagunaNoticeManager.pushBannerInfo.setter(v2);
  return _s15ConversationKit11ParticipantVWOhTm_10();
}

uint64_t ConduitLagunaNoticeManager.presentBanner(for:)(id a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit26ConduitLagunaNoticeManagerC14PushBannerInfoVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v50 - v3;
  v5 = type metadata accessor for ConduitLagunaNoticeManager.PushBannerInfo(0);
  v52 = *(v5 - 8);
  v6 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_11;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v16 = Strong, v17 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x4E8))(), v19 = v18, v16, v17))
  {
    ObjectType = swift_getObjectType();
    v21 = (*(v19 + 72))(ObjectType, v19);
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 1;
  }

  UUID.init()();
  *&v9[*(v5 + 20)] = a1;
  v9[*(v5 + 24)] = v21 & 1;
  _s15ConversationKit11ParticipantVWOcTm_8();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  a1 = a1;
  ConduitLagunaNoticeManager.pushBannerInfo.setter(v4);
  if ((v21 & 1) == 0)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, &static Logger.conversationControls);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1BBC58000, v47, v48, "presentBanner - HUD controls cannot be dismissed so skipping banner presentation", v49, 2u);
      MEMORY[0x1BFB23DF0](v49, -1, -1);
    }

    return _s15ConversationKit11ParticipantVWOhTm_10();
  }

  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    v24 = (*((*MEMORY[0x1E69E7D40] & *v22) + 0x4E8))();
    v26 = v25;

    if (v24)
    {
      v27 = swift_getObjectType();
      (*(v26 + 88))(v27, v26);
      swift_unknownObjectRelease();
    }
  }

  if (one-time initialization token for conversationControls != -1)
  {
    goto LABEL_23;
  }

LABEL_11:
  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, &static Logger.conversationControls);
  v29 = a1;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v29;
    *v33 = v29;
    v34 = v29;
    _os_log_impl(&dword_1BBC58000, v30, v31, "presentBanner - presenting suggestion banner for suggestion: %@", v32, 0xCu);
    outlined destroy of CallControlsService?(v33, &_sSo8NSObjectCSgMd);
    MEMORY[0x1BFB23DF0](v33, -1, -1);
    MEMORY[0x1BFB23DF0](v32, -1, -1);
  }

  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v36 = v35;
    v37 = (*((*MEMORY[0x1E69E7D40] & *v35) + 0x4A0))();
    v39 = v38;

    if (v37)
    {
      v51 = swift_getObjectType();
      v54[0] = v29;
      v55 = 3;
      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      _s15ConversationKit11ParticipantVWOcTm_8();
      v41 = (v6 + ((*(v52 + 80) + 16) & ~*(v52 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
      v42 = swift_allocObject();
      outlined init with take of Collaboration();
      *(v42 + v41) = v29;
      *(v42 + ((v41 + 15) & 0xFFFFFFFFFFFFFFF8)) = v40;
      v43 = *(v39 + 16);
      v44 = v29;

      v43(0, v54, partial apply for closure #1 in ConduitLagunaNoticeManager.presentBanner(for:), v42, v51, v39);
      swift_unknownObjectRelease();

      outlined destroy of ConversationControlsType(v54);
      _s15ConversationKit11ParticipantVWOhTm_10();
    }
  }

  return _s15ConversationKit11ParticipantVWOhTm_10();
}

uint64_t closure #1 in ConduitLagunaNoticeManager.presentBanner(for:)(int a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v26 = a5;
  v24 = a4;
  v25 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ConduitLagunaNoticeManager.PushBannerInfo(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v15 = static OS_dispatch_queue.main.getter();
  _s15ConversationKit11ParticipantVWOcTm_8();
  v16 = (v14 + ((*(v13 + 80) + 24) & ~*(v13 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  outlined init with take of Collaboration();
  v18 = v24;
  *(v17 + v16) = v24;
  v19 = v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v19 = v26;
  *(v19 + 8) = v25;
  aBlock[4] = partial apply for closure #1 in closure #1 in ConduitLagunaNoticeManager.presentBanner(for:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_533;
  v20 = _Block_copy(aBlock);
  v21 = a2;
  v22 = v18;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v11, v8, v20);
  _Block_release(v20);

  (*(v29 + 8))(v8, v6);
  return (*(v27 + 8))(v11, v28);
}

uint64_t closure #1 in closure #1 in ConduitLagunaNoticeManager.presentBanner(for:)(void *a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  LODWORD(v5) = a5;
  v53 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit26ConduitLagunaNoticeManagerC14PushBannerInfoVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  v14 = type metadata accessor for ConduitLagunaNoticeManager.PushBannerInfo(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  if (a1)
  {
    v51 = v14;
    v18 = a1;
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, &static Logger.conversationControls);
    _s15ConversationKit11ParticipantVWOcTm_8();
    v20 = a1;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v49 = v5;
      v5 = v23;
      v24 = swift_slowAlloc();
      v52 = v13;
      v25 = v24;
      v26 = swift_slowAlloc();
      v50 = v10;
      v48 = v26;
      v54[0] = v26;
      *v5 = 136315394;
      ConduitLagunaNoticeManager.PushBannerInfo.description.getter();
      v28 = v27;
      v29 = v16;
      v31 = v30;
      _s15ConversationKit11ParticipantVWOhTm_10();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v31, v54);
      v16 = v29;

      *(v5 + 4) = v32;
      *(v5 + 12) = 2112;
      v33 = a1;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 14) = v34;
      *v25 = v34;
      _os_log_impl(&dword_1BBC58000, v21, v22, "presentBanner - failed to present banner for %s with reason %@", v5, 0x16u);
      outlined destroy of CallControlsService?(v25, &_sSo8NSObjectCSgMd);
      v35 = v25;
      v13 = v52;
      MEMORY[0x1BFB23DF0](v35, -1, -1);
      v36 = v48;
      __swift_destroy_boxed_opaque_existential_1(v48);
      v10 = v50;
      MEMORY[0x1BFB23DF0](v36, -1, -1);
      v37 = v5;
      LOBYTE(v5) = v49;
      MEMORY[0x1BFB23DF0](v37, -1, -1);
    }

    else
    {

      _s15ConversationKit11ParticipantVWOhTm_10();
    }

    v14 = v51;
  }

  else
  {
    v52 = v13;
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, &static Logger.conversationControls);
    v39 = a3;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = v5;
      v5 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v5 = 138412290;
      *(v5 + 4) = v39;
      *v43 = v39;
      v44 = v39;
      _os_log_impl(&dword_1BBC58000, v40, v41, "presentBanner - presented suggestion banner for suggestion: %@", v5, 0xCu);
      outlined destroy of CallControlsService?(v43, &_sSo8NSObjectCSgMd);
      MEMORY[0x1BFB23DF0](v43, -1, -1);
      v45 = v5;
      LOBYTE(v5) = v42;
      MEMORY[0x1BFB23DF0](v45, -1, -1);
    }

    v13 = v52;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v47 = result;
    swift_beginAccess();
    outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
    {

      return outlined destroy of CallControlsService?(v13, &_s15ConversationKit26ConduitLagunaNoticeManagerC14PushBannerInfoVSgMd);
    }

    else
    {
      outlined init with take of Collaboration();
      if (v5 & 1) == 0 && (static UUID.== infix(_:_:)())
      {
        v16[*(v14 + 24)] = 0;
        _s15ConversationKit11ParticipantVWOcTm_8();
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v14);
        ConduitLagunaNoticeManager.pushBannerInfo.setter(v10);
      }

      return _s15ConversationKit11ParticipantVWOhTm_10();
    }
  }

  return result;
}

void closure #1 in ConduitLagunaNoticeManager.updateState()(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC15ConversationKit26ConduitLagunaNoticeManager_callCenter];
  v3 = [v2 neighborhoodActivityConduit];
  v4 = [v3 activeSplitSessionTV];

  if (v4)
  {

    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, &static Logger.conversationControls);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_19;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "updateState - called but in split session, so tearing down any banners";
LABEL_18:
    _os_log_impl(&dword_1BBC58000, v6, v7, v9, v8, 2u);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
LABEL_19:

    ConduitLagunaNoticeManager.teardownBanner()();
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v11 = Strong, v70 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x2C0))(), v11, !v70))
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, &static Logger.conversationControls);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_19;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "updateState - called but no conversation, _head scratch_";
    goto LABEL_18;
  }

  if ([v70 state] == 3)
  {
    v12 = [v2 neighborhoodActivityConduit];
    v13 = [v12 suggestion];

    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, &static Logger.conversationControls);
    v15 = v13;
    v16 = a1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    v19 = &metadata instantiation cache for protocol conformance descriptor for Features.TelephonyUtilities;
    if (os_log_type_enabled(v17, v18))
    {
      v20 = 7104878;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v72[0] = v22;
      *v21 = 136315394;
      if (v15)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUNearbySuggestion);
        v23 = v15;
        v24 = String.init<A>(reflecting:)();
        v26 = v25;
      }

      else
      {
        v26 = 0xE300000000000000;
        v24 = 7104878;
      }

      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v72);

      *(v21 + 4) = v36;
      *(v21 + 12) = 2080;
      v37 = &v16[OBJC_IVAR____TtC15ConversationKit26ConduitLagunaNoticeManager_pushBannerInfo];
      swift_beginAccess();
      v38 = type metadata accessor for ConduitLagunaNoticeManager.PushBannerInfo(0);
      if (__swift_getEnumTagSinglePayload(v37, 1, v38))
      {
        v39 = 0xE300000000000000;
      }

      else
      {
        v71 = *(v37 + *(v38 + 20));
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUNearbySuggestion);
        v40 = v71;
        v20 = String.init<A>(reflecting:)();
        v39 = v41;
      }

      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v39, v72);

      *(v21 + 14) = v42;
      _os_log_impl(&dword_1BBC58000, v17, v18, "updateState - Suggestion: %s \n currentDeviceNotice: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v22, -1, -1);
      MEMORY[0x1BFB23DF0](v21, -1, -1);

      v19 = &metadata instantiation cache for protocol conformance descriptor for Features.TelephonyUtilities;
    }

    else
    {
    }

    v43 = &v16[v19[413]];
    swift_beginAccess();
    v44 = type metadata accessor for ConduitLagunaNoticeManager.PushBannerInfo(0);
    if (__swift_getEnumTagSinglePayload(v43, 1, v44))
    {
      if (!v15)
      {
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_1BBC58000, v58, v59, "updateState - Suggestion is still nil.", v60, 2u);
          MEMORY[0x1BFB23DF0](v60, -1, -1);
        }

        goto LABEL_60;
      }

      v15 = v15;
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v71 = v48;
        *v47 = 136315138;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUNearbySuggestion);
        v49 = >> prefix<A>(_:)();
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v71);

        *(v47 + 4) = v51;
        _os_log_impl(&dword_1BBC58000, v45, v46, "updateState - Present banner for: %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v48);
        MEMORY[0x1BFB23DF0](v48, -1, -1);
        MEMORY[0x1BFB23DF0](v47, -1, -1);
      }

      ConduitLagunaNoticeManager.presentBanner(for:)(v15);
    }

    else
    {
      v52 = *(v43 + *(v44 + 20));
      v53 = v52;
      if (!v15)
      {
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v71 = v64;
          *v63 = 136315138;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUNearbySuggestion);
          v65 = >> prefix<A>(_:)();
          v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v71);

          *(v63 + 4) = v67;
          _os_log_impl(&dword_1BBC58000, v61, v62, "updateState - Teardown banner for: %s", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v64);
          MEMORY[0x1BFB23DF0](v64, -1, -1);
          MEMORY[0x1BFB23DF0](v63, -1, -1);
        }

        ConduitLagunaNoticeManager.teardownBanner()();
        goto LABEL_60;
      }

      v54 = [v52 isEqual_];
      v55 = Logger.logObject.getter();
      if (v54)
      {
        v56 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_1BBC58000, v55, v56, "updateState - suggestion unchanged", v57, 2u);
          MEMORY[0x1BFB23DF0](v57, -1, -1);
        }
      }

      else
      {
        v68 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v55, v68))
        {
          v69 = swift_slowAlloc();
          *v69 = 0;
          _os_log_impl(&dword_1BBC58000, v55, v68, "updateState - new suggestion, update banner", v69, 2u);
          MEMORY[0x1BFB23DF0](v69, -1, -1);
        }

        ConduitLagunaNoticeManager.presentBanner(for:)(v15);
      }
    }

LABEL_60:
    return;
  }

  if ([v70 state] == 4)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, &static Logger.conversationControls);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1BBC58000, v29, v30, "updateState - called but in leaving conversation, so tearing down", v31, 2u);
      MEMORY[0x1BFB23DF0](v31, -1, -1);
    }

    ConduitLagunaNoticeManager.teardownBanner()();
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, &static Logger.conversationControls);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1BBC58000, v33, v34, "updateState - called but not in a joined conversation. Ignore", v35, 2u);
      MEMORY[0x1BFB23DF0](v35, -1, -1);
    }
  }
}

void ConduitLagunaNoticeManager.rejectSuggestion(_:)(void *a1)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUNearbySuggestionResult);
  v3 = a1;
  v4 = TUNearbySuggestionResult.__allocating_init(suggestion:selectedActivity:type:)(v3, 0, 3);
  v5 = [*(v1 + OBJC_IVAR____TtC15ConversationKit26ConduitLagunaNoticeManager_callCenter) neighborhoodActivityConduit];
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v9[4] = partial apply for closure #1 in ConduitLagunaNoticeManager.rejectSuggestion(_:);
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v9[3] = &block_descriptor_640;
  v7 = _Block_copy(v9);
  v8 = v3;

  [v5 respondToSuggestionWithResult:v4 completion:v7];
  _Block_release(v7);
}

id TUNearbySuggestionResult.__allocating_init(suggestion:selectedActivity:type:)(void *a1, void *a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSuggestion:a1 selectedActivity:a2 type:a3];

  return v5;
}

void closure #1 in ConduitLagunaNoticeManager.rejectSuggestion(_:)(char a1, void *a2, void *a3)
{
  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, &static Logger.conversationControls);
    v7 = a3;
    v8 = a2;
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v11 = v7;
      *(v10 + 12) = 2112;
      v12 = v7;
      if (a2)
      {
        v13 = a2;
        v14 = _swift_stdlib_bridgeErrorToNSError();
        v15 = v14;
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      *(v10 + 14) = v14;
      v11[1] = v15;
      _os_log_impl(&dword_1BBC58000, oslog, v9, "rejectSuggestion:%@ failed with error: %@", v10, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v11, -1, -1);
      MEMORY[0x1BFB23DF0](v10, -1, -1);
    }
  }
}

uint64_t closure #1 in ConduitLagunaNoticeManager.systemBannerWasDismissed(for:reason:)(void *a1, uint64_t a2)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit26ConduitLagunaNoticeManagerC14PushBannerInfoVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = type metadata accessor for ConduitLagunaNoticeManager.PushBannerInfo(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  if (a1)
  {
    v12 = one-time initialization token for conversationControls;
    v13 = a1;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, &static Logger.conversationControls);
    v15 = v13;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v35 = v9;
      v19 = v18;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36 = v5;
      v22 = v21;
      v39[0] = v21;
      *v19 = 138412546;
      *(v19 + 4) = v15;
      *v20 = a1;
      *(v19 + 12) = 2080;
      v34 = v15;
      v23 = SystemBannerDismissalReason.description.getter(v38);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v39);

      *(v19 + 14) = v25;
      _os_log_impl(&dword_1BBC58000, v16, v17, "systemBannerWasDismissed - deviceHandle: %@ - reason: %s", v19, 0x16u);
      outlined destroy of CallControlsService?(v20, &_sSo8NSObjectCSgMd);
      MEMORY[0x1BFB23DF0](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v22);
      v26 = v22;
      v5 = v36;
      MEMORY[0x1BFB23DF0](v26, -1, -1);
      v27 = v19;
      v9 = v35;
      MEMORY[0x1BFB23DF0](v27, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, &static Logger.conversationControls);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1BBC58000, v29, v30, "systemBannerWasDismissed - different banner type was dismissed", v31, 2u);
      MEMORY[0x1BFB23DF0](v31, -1, -1);
    }
  }

  swift_beginAccess();
  outlined init with copy of RecentCallDetailControllerFactoryProtocol?();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return outlined destroy of CallControlsService?(v8, &_s15ConversationKit26ConduitLagunaNoticeManagerC14PushBannerInfoVSgMd);
  }

  outlined init with take of Collaboration();
  if (v37)
  {
    if (v38 == 1)
    {
      v33 = v37;
      ConduitLagunaNoticeManager.rejectSuggestion(_:)(v33);
    }
  }

  v11[*(v9 + 24)] = 0;
  _s15ConversationKit11ParticipantVWOcTm_8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v9);
  ConduitLagunaNoticeManager.pushBannerInfo.setter(v5);
  return _s15ConversationKit11ParticipantVWOhTm_10();
}

void closure #1 in ConduitLagunaNoticeManager.pushSession(lightweightHandoff:selectedActivity:completion:)(char a1, void *a2, void *a3, char a4, void (*a5)(void))
{
  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, &static Logger.conversationControls);
    v11 = a3;
    v12 = a2;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412802;
      *(v15 + 4) = v11;
      *v16 = v11;
      *(v15 + 12) = 1024;
      *(v15 + 14) = a4 & 1;
      *(v15 + 18) = 2112;
      v17 = v11;
      if (a2)
      {
        v18 = a2;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        v20 = v19;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      *(v15 + 20) = v19;
      v16[1] = v20;
      _os_log_impl(&dword_1BBC58000, v13, v14, "pushSession for suggestion:%@ as lightweightHandoff:%{BOOL}d failed with error: %@", v15, 0x1Cu);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v16, -1, -1);
      MEMORY[0x1BFB23DF0](v15, -1, -1);
    }
  }

  if (a5)
  {
    a5(a1 & 1);
  }
}

Swift::Bool __swiftcall ConversationControlsManager.gameControllerDidRequestActivation()()
{
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x4A0))();
  if (v2)
  {
    v3 = v1;
    ObjectType = swift_getObjectType();
    (*(v3 + 64))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  return v2 != 0;
}

Swift::Bool __swiftcall ConversationControlsManager.gameControllerDidRequestDismissal()()
{
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x4A0))();
  if (v2)
  {
    v3 = v1;
    ObjectType = swift_getObjectType();
    (*(v3 + 72))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  return v2 != 0;
}

Swift::Bool __swiftcall ConversationControlsManager.gameControllerDidRequestFocus(_:)(Swift::Bool a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x4A0))();
  if (v3)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_330();
    (*(v4 + 80))(a1);
    swift_unknownObjectRelease();
  }

  return v3 != 0;
}

uint64_t specialized Conversation.activities.getter()
{
  v1 = [v0 activitySessions];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession);
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized _copyCollectionToContiguousArray<A>(_:)(v2);

  specialized _arrayForceCast<A, B>(_:)();
  v4 = v3;

  TUConversation.collaborations.getter();
  specialized _arrayForceCast<A, B>(_:)();
  v6 = v5;

  specialized Array.append<A>(contentsOf:)(v6);
  return v4;
}

uint64_t closure #1 in $defer #1 () in closure #1 in ConversationControlsManager.holdDetectedNotNowTapped(button:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in $defer #1 () in closure #1 in ConversationControlsManager.holdDetectedNotNowTapped(button:), v6, v5);
}

uint64_t closure #1 in $defer #1 () in closure #1 in ConversationControlsManager.holdDetectedNotNowTapped(button:)()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13_2();
  v2 = *((*MEMORY[0x1E69E7D40] & v1) + 0x4A0);
  v3 = v2();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_254_0();
    (*(v0 + 96))(v4, v0);
    v3 = swift_unknownObjectRelease();
  }

  if ((v2)(v3))
  {
    OUTLINED_FUNCTION_254_0();
    OUTLINED_FUNCTION_222_0();
    v5();
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_13();

  return v6();
}

uint64_t partial apply for closure #1 in ConversationControlsManager.startWaitOnHoldSession()()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_144();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2(v2);
  *v3 = v4;
  v3[1] = partial apply for closure #1 in ConversationControlsManager.updateForegroundCollaborationState();
  v5 = OUTLINED_FUNCTION_16_2();

  return closure #1 in ConversationControlsManager.startWaitOnHoldSession()(v5, v6, v7, v0, v8);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo22TUScreenSharingRequestCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So22ijK5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    specialized closure #1 in _NativeSet.filter(_:)(v9, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

unint64_t *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    specialized closure #1 in _NativeSet.intersection(_:)(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - v14;
  v37 = a1;
  v16 = *a1;

  result = specialized Collection.firstIndex(where:)(v16, a2);
  if (v2)
  {
LABEL_26:

    return v3;
  }

  if (v18)
  {
    v3 = *(v16 + 16);

    return v3;
  }

  v3 = result;
  v38 = v10;
  v39 = v13;
  v35 = 0;
  v19 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v43 = v7 + 16;
    v44 = a2;
    v40 = v7;
    v41 = (v7 + 8);
    v36 = (v7 + 40);
    v20 = v16;
    while (1)
    {
      v21 = *(v20 + 16);
      if (v19 == v21)
      {
        goto LABEL_26;
      }

      if (v19 >= v21)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        break;
      }

      v22 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v47 = v20;
      v46 = v22;
      v23 = v20 + v22;
      v24 = *(v7 + 72);
      v25 = *(v7 + 16);
      v45 = v24 * v19;
      v42 = v25;
      v25(v15, v23 + v24 * v19, v6);
      if (a2)
      {
        v26 = v44 + v46;
        v27 = *(v44 + 16) + 1;
        while (--v27)
        {
          lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
          v26 += v24;
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            result = (*v41)(v15, v6);
            v20 = v47;
            goto LABEL_23;
          }
        }
      }

      result = (*v41)(v15, v6);
      if (v3 == v19)
      {
        v20 = v47;
      }

      else
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        v28 = *(v47 + 16);
        if (v3 >= v28)
        {
          goto LABEL_32;
        }

        v29 = v24 * v3;
        v30 = v42;
        result = (v42)(v39, v23 + v29, v6);
        if (v19 >= v28)
        {
          goto LABEL_33;
        }

        v30(v38, v23 + v45, v6);
        v20 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew()();
          v20 = v34;
        }

        v31 = v20 + v46;
        v32 = *v36;
        result = (*v36)(v20 + v46 + v29, v38, v6);
        if (v19 >= *(v20 + 16))
        {
          goto LABEL_34;
        }

        result = v32(v31 + v45, v39, v6);
        *v37 = v20;
      }

      v33 = __OFADD__(v3++, 1);
      if (v33)
      {
        goto LABEL_30;
      }

LABEL_23:
      v33 = __OFADD__(v19++, 1);
      a2 = v44;
      v7 = v40;
      if (v33)
      {
        goto LABEL_29;
      }
    }
  }

  __break(1u);
  return result;
}

{
  v58 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v61 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v59 = v9 - v8;
  v10 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v50 - v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_38_9();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_117_0();
  v22 = a1;
  v23 = *a1;

  v24 = v63;
  result = specialized Collection.firstIndex(where:)(v23);
  v50[1] = v24;
  if (v24)
  {

    return v2;
  }

  v62 = v2;
  v57 = v3;
  v63 = result;
  if (v26)
  {
    v2 = *(v23 + 16);

    return v2;
  }

  v51 = v16;
  v50[0] = v22;
  v56 = v10;
  v27 = v63 + 1;
  if (!__OFADD__(v63, 1))
  {
    v54 = (v61 + 8);
    v55 = (v61 + 16);
    v28 = v62;
    v29 = v23;
    v52 = a2;
    v53 = v12;
    while (1)
    {
      v30 = *(v29 + 16);
      if (v27 == v30)
      {

        return v63;
      }

      if (v27 >= v30)
      {
        break;
      }

      v31 = v19;
      OUTLINED_FUNCTION_40_3();
      v32 = v29;
      v60 = v33;
      v34 = v29 + v33;
      v35 = *(v12 + 72);
      v61 = v35 * v27;
      outlined init with copy of HUDActivityManager.BannerUpdate(v34 + v35 * v27, v28);
      v37 = v56;
      v36 = v57;
      OUTLINED_FUNCTION_0_1();
      (*(v38 + 232))();
      v39 = v36 + *(v37 + 32);
      v41 = v58;
      v40 = v59;
      (*v55)(v59, v39, v58);
      v42 = v36;
      v28 = v62;
      outlined destroy of HUDActivityManager.BannerUpdate(v42);
      v43 = static UUID.== infix(_:_:)();
      (*v54)(v40, v41);
      result = outlined destroy of HUDActivityManager.BannerUpdate(v28);
      if (v43)
      {
        v12 = v53;
        v19 = v31;
        v29 = v32;
      }

      else
      {
        if (v27 == v63)
        {
          v12 = v53;
          v19 = v31;
          v29 = v32;
        }

        else
        {
          if ((v63 & 0x8000000000000000) != 0)
          {
            goto LABEL_25;
          }

          v44 = *(v32 + 16);
          if (v63 >= v44)
          {
            goto LABEL_26;
          }

          v45 = v35 * v63;
          v46 = v34 + v35 * v63;
          v19 = v31;
          result = outlined init with copy of HUDActivityManager.BannerUpdate(v46, v31);
          if (v27 >= v44)
          {
            goto LABEL_27;
          }

          v47 = v61;
          outlined init with copy of HUDActivityManager.BannerUpdate(v34 + v61, v51);
          v29 = v32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew()();
            v29 = v49;
          }

          v12 = v53;
          v48 = v29 + v60;
          result = outlined assign with take of HUDActivityManager.BannerUpdate(v51, v29 + v60 + v45);
          if (v27 >= *(v29 + 16))
          {
            goto LABEL_28;
          }

          result = outlined assign with take of HUDActivityManager.BannerUpdate(v31, v48 + v47);
          *v50[0] = v29;
          v28 = v62;
        }

        ++v63;
      }

      ++v27;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
  return result;
}