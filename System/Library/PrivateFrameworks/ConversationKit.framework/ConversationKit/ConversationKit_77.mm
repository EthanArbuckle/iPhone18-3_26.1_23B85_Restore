void closure #1 in ConversationController.handleAudioUplinkChange(_:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    [a2 isUplinkMuted];
    ConversationController.broadcastingState.setter();
  }
}

void ConversationController.handleLocalSensitiveContentAnalysisChanged(_:)()
{
  OUTLINED_FUNCTION_29();
  v30 = v0;
  OUTLINED_FUNCTION_410_0();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  v32 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  v31 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_2();
  v4 = type metadata accessor for Notification();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  if (Features.nudityDetectionEnabled.getter())
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v29 = static OS_dispatch_queue.main.getter();
    v10 = OUTLINED_FUNCTION_256_3();
    v11(v10);
    v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v13 = swift_allocObject();
    (*(v6 + 32))(v13 + v12, &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v14 = v30;
    *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
    v33[4] = partial apply for closure #1 in ConversationController.handleLocalSensitiveContentAnalysisChanged(_:);
    v33[5] = v13;
    OUTLINED_FUNCTION_5_73();
    v33[1] = 1107296256;
    OUTLINED_FUNCTION_6_5();
    v33[2] = v15;
    v33[3] = &block_descriptor_245;
    v16 = _Block_copy(v33);
    v17 = v14;

    static DispatchQoS.unspecified.getter();
    v33[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_3_164();
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v18, v19);
    v20 = OUTLINED_FUNCTION_243();
    __swift_instantiateConcreteTypeFromMangledNameV2(v20);
    OUTLINED_FUNCTION_9_8();
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v21, v22);
    OUTLINED_FUNCTION_337();
    OUTLINED_FUNCTION_109_7();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v23 = OUTLINED_FUNCTION_117();
    v24 = v29;
    MEMORY[0x1BFB215C0](v23);
    _Block_release(v16);

    v25 = OUTLINED_FUNCTION_181();
    v26(v25);
    v27 = OUTLINED_FUNCTION_491();
    v28(v27);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in ConversationController.handleLocalSensitiveContentAnalysisChanged(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!Notification.userInfo.getter())
  {
    v13 = 0u;
    v14 = 0u;
    return outlined destroy of CallControlsService?(&v13, &_sypSgMd);
  }

  v11[1] = 0xD000000000000032;
  v11[2] = 0x80000001BC520D80;
  AnyHashable.init<A>(_:)();
  specialized Dictionary.subscript.getter();

  outlined destroy of AnyHashable(v12);
  if (!*(&v14 + 1))
  {
    return outlined destroy of CallControlsService?(&v13, &_sypSgMd);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v7 = v12[0];
    v8 = v12[1];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SCSensitivityAnalysis);
    v9 = static SCSensitivityAnalysis.decoded(from:)();
    v10 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
    swift_beginAccess();
    _s15ConversationKit11ParticipantVWOcTm_17(a2 + v10, v5);
    ConversationController.updateParticipant(for:withAnalysis:)();

    outlined consume of Data._Representation(v7, v8);
    return _s15ConversationKit11ParticipantVWOhTm_18(v5, type metadata accessor for Participant);
  }

  return result;
}

uint64_t ConversationController.handleCameraCinematicFramingAvailabilityChanged(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  if (!Notification.userInfo.getter())
  {
    v12 = 0u;
    v13 = 0u;
    return outlined destroy of CallControlsService?(&v12, &_sypSgMd);
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  specialized Dictionary.subscript.getter();

  outlined destroy of AnyHashable(v11);
  if (!*(&v13 + 1))
  {
    return outlined destroy of CallControlsService?(&v12, &_sypSgMd);
  }

  result = OUTLINED_FUNCTION_375_0();
  if (result)
  {
    v7 = v11[0];
    v8 = (v5 + *a3);
    OUTLINED_FUNCTION_3_0();
    result = swift_beginAccess();
    v9 = *v8;
    if (*v8)
    {

      v9(v7);
      v10 = OUTLINED_FUNCTION_45_1();
      return outlined consume of (@escaping @callee_guaranteed () -> ())?(v10);
    }
  }

  return result;
}

void ConversationController.handleLocalPreviewChanged(_:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_2();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  OUTLINED_FUNCTION_37_22();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BA940;
  v5 = &v0[OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v6 = OUTLINED_FUNCTION_334();
  OUTLINED_FUNCTION_202_3(v6, v7);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_58_9();
  v9 = OUTLINED_FUNCTION_153_4();
  v10(v9);
  v11 = OUTLINED_FUNCTION_5_81();
  v12(v11);
  v13 = OUTLINED_FUNCTION_334();
  v14(v13);
  v15 = v34;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v16 = OUTLINED_FUNCTION_114_2();
  v17(v16);
  String.init<A>(reflecting:)();
  OUTLINED_FUNCTION_250();
  __swift_destroy_boxed_opaque_existential_1(v33);
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v4 + 32) = v5;
  *(v4 + 40) = v15;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v18 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_20();
  v19 = swift_allocObject();
  *(v19 + 16) = v1;
  v35 = partial apply for closure #1 in ConversationController.handleLocalPreviewChanged(_:);
  v36 = v19;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 1107296256;
  OUTLINED_FUNCTION_252_2();
  v33[2] = v20;
  v34 = &block_descriptor_251;
  v21 = _Block_copy(v33);
  v22 = v1;

  static DispatchQoS.unspecified.getter();
  v33[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_164();
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v23, v24);
  v25 = OUTLINED_FUNCTION_334();
  __swift_instantiateConcreteTypeFromMangledNameV2(v25);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v26, v27);
  OUTLINED_FUNCTION_462();
  OUTLINED_FUNCTION_124_1();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v28 = OUTLINED_FUNCTION_166_4();
  MEMORY[0x1BFB215C0](v28);
  _Block_release(v21);

  OUTLINED_FUNCTION_392();
  v29 = OUTLINED_FUNCTION_45_1();
  v30(v29);
  v31 = OUTLINED_FUNCTION_20_38();
  v32(v31);
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in ConversationController.handleLocalPreviewChanged(_:)(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
  swift_beginAccess();
  v3 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 208);
  swift_unknownObjectRetain();
  LODWORD(v3) = v5(ObjectType, v3);
  swift_unknownObjectRelease();
  if (v3 == 5 || (v6 = *(v2 + 8), v7 = swift_getObjectType(), v8 = *(v6 + 208), swift_unknownObjectRetain(), LODWORD(v6) = v8(v7, v6), swift_unknownObjectRelease(), v6 == 6))
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BC4BA940;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd);
    v10 = String.init<A>(reflecting:)();
    v12 = v11;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    v14 = a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    swift_beginAccess();
    return ConversationController.updateLocalParticipant(with:isChangingExternalCameraUsageOnIPad:)(*v14, *(v14 + 8), *(v14 + 16), 2);
  }
}

void ConversationController.handleLocalVideoPreviewFirstFrameArrived(_:)()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_2();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.default.getter();
  v3 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_156();
  os_log(_:dso:log:type:_:)();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v4 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_20();
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v19[4] = partial apply for closure #1 in ConversationController.handleLocalVideoPreviewFirstFrameArrived(_:);
  v19[5] = v5;
  OUTLINED_FUNCTION_5_73();
  v19[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v19[2] = v6;
  v19[3] = &block_descriptor_257;
  v7 = _Block_copy(v19);
  v8 = v0;

  static DispatchQoS.unspecified.getter();
  v19[0] = v3;
  OUTLINED_FUNCTION_3_164();
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v9, v10);
  v11 = OUTLINED_FUNCTION_243();
  __swift_instantiateConcreteTypeFromMangledNameV2(v11);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v12, v13);
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_124_1();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v14 = OUTLINED_FUNCTION_166_4();
  MEMORY[0x1BFB215C0](v14);
  _Block_release(v7);

  v15 = OUTLINED_FUNCTION_45_1();
  v16(v15);
  v17 = OUTLINED_FUNCTION_491();
  v18(v17);
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationController.handleLocalVideoPreviewFirstFrameArrived(_:)(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV5StateOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v126 - v3;
  v139 = type metadata accessor for UUID();
  v5 = *(v139 - 1);
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Participant(0);
  v137 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v136 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v126 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v126 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v126 - v16;
  v18 = &a1[OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant];
  swift_beginAccess();
  _s15ConversationKit11ParticipantVWOcTm_17(v18, v17);
  v19 = Participant.isActive.getter();
  _s15ConversationKit11ParticipantVWOhTm_18(v17, type metadata accessor for Participant);
  if ((v19 & 1) == 0)
  {
    if (one-time initialization token for conversationKit == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

  _s15ConversationKit11ParticipantVWOcTm_17(v18, v14);
  Participant.videoInfo.getter();
  _s15ConversationKit11ParticipantVWOhTm_18(v14, type metadata accessor for Participant);
  if (!v148)
  {
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_22:
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1BC4BA940;
      _s15ConversationKit11ParticipantVWOcTm_17(v18, v4);
      v52 = type metadata accessor for Participant.State(0);
      __swift_storeEnumTagSinglePayload(v4, 0, 1, v52);
      specialized >> prefix<A>(_:)();
      v54 = v53;
      v56 = v55;
      outlined destroy of CallControlsService?(v4, &_s15ConversationKit11ParticipantV5StateOSgMd);
      *(v51 + 56) = MEMORY[0x1E69E6158];
      *(v51 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v51 + 32) = v54;
      *(v51 + 40) = v56;
      goto LABEL_27;
    }

LABEL_55:
    swift_once();
    goto LABEL_22;
  }

  v130 = v11;
  v131 = v5;
  v132 = v148;
  v133 = v149;
  LODWORD(v134) = v151;
  v147[0] = *v150;
  *(v147 + 15) = *&v150[15];
  v145 = v152;
  v146[0] = *v153;
  v135 = a1;
  v20 = &a1[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
  *(v146 + 10) = *&v153[10];
  swift_beginAccess();
  v21 = *(v20 + 1);
  ObjectType = swift_getObjectType();
  v23 = *(v21 + 208);
  swift_unknownObjectRetain();
  LODWORD(v21) = v23(ObjectType, v21);
  v24 = swift_unknownObjectRelease();
  if (v21 == 5 || (v25 = *(v20 + 1), v26 = swift_getObjectType(), v27 = *(v25 + 208), swift_unknownObjectRetain(), LODWORD(v25) = v27(v26, v25), v24 = swift_unknownObjectRelease(), v25 == 6))
  {
    v28 = *((*MEMORY[0x1E69E7D40] & **&v135[OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController]) + 0xF0);
    v29 = (v28)(v24);
    if (VideoMessageController.State.rawValue.getter(v29) == 0x7964616552746F6ELL && v30 == 0xE800000000000000)
    {
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v139 = v28;
    v140 = v132;
    LOBYTE(v141[0]) = v133;
    *(v141 + 1) = v147[0];
    v141[2] = *(v147 + 15);
    v142[0] = v134;
    *&v142[1] = v145;
    v143[0] = v146[0];
    *(v143 + 10) = *(v146 + 10);
    outlined destroy of Participant.VideoInfo(&v140);
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1BC4BAA20;
    *v155 = *v20;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd);
    v58 = String.init<A>(reflecting:)();
    v60 = v59;
    v61 = MEMORY[0x1E69E6158];
    *(v57 + 56) = MEMORY[0x1E69E6158];
    v62 = lazy protocol witness table accessor for type String and conformance String();
    *(v57 + 64) = v62;
    *(v57 + 32) = v58;
    *(v57 + 40) = v60;
    v155[0] = v139();
    v63 = String.init<A>(reflecting:)();
    *(v57 + 96) = v61;
    *(v57 + 104) = v62;
    *(v57 + 72) = v63;
    *(v57 + 80) = v64;
LABEL_27:
    os_log(_:dso:log:type:_:)();

    return;
  }

LABEL_10:
  v33 = OBJC_IVAR____TtC15ConversationKit22ConversationController_pauseOnFirstFrame;
  v34 = v135;
  if (v135[OBJC_IVAR____TtC15ConversationKit22ConversationController_pauseOnFirstFrame] & 1) != 0 || (v35 = &v135[OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldPauseOnFirstLocalVideoFrame], swift_beginAccess(), (v36 = *v35) != 0) && (v37 = , v38 = v36(v37), outlined consume of (@escaping @callee_guaranteed () -> ())?(v36), (v38))
  {
    v140 = v132;
    LOBYTE(v141[0]) = v133;
    *(v141 + 1) = v147[0];
    v141[2] = *(v147 + 15);
    v142[0] = v134;
    *&v142[1] = v145;
    v143[0] = v146[0];
    *(v143 + 10) = *(v146 + 10);
    outlined destroy of Participant.VideoInfo(&v140);
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.conversationKit);
    v40 = v34;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = v34;
      v45 = v43;
      *v43 = 67109376;
      v46 = 1;
      *(v43 + 4) = (v44[v33] & 1) == 0;
      *(v43 + 8) = 1024;
      v47 = (v40 + OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldPauseOnFirstLocalVideoFrame);
      swift_beginAccess();
      v48 = *v47;
      if (*v47)
      {

        v50 = v48(v49);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v48);
        v46 = (v50 & 1) == 0;
      }

      *(v45 + 10) = v46;

      _os_log_impl(&dword_1BBC58000, v41, v42, "Pausing on local video and clearing state,\n!self.pauseOnFirstFrame: %{BOOL}d &&\n!(self.shouldPauseOnFirstLocalVideoFrame?() ?? false : %{BOOL}d", v45, 0xEu);
      MEMORY[0x1BFB23DF0](v45, -1, -1);
    }

    else
    {

      v41 = v40;
    }

    ConversationController.pauseLocalVideoAndClearState()();
  }

  else
  {
    v134 = v7;
    if ((v133 & 1) == 0)
    {
      v65 = v131;
      v66 = v18 + *(v7 + 20);
      v68 = v138;
      v67 = v139;
      (*(v131 + 16))(v138, v66, v139);
      ConversationController.scheduleResetVideoInfo(for:after:)();
      v69 = v68;
      v7 = v134;
      (*(v65 + 8))(v69, v67);
    }

    v70 = &v34[OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter];
    swift_beginAccess();
    v71 = *(v70 + 3);
    v72 = *(v70 + 4);
    v127 = v70;
    v73 = __swift_project_boxed_opaque_existential_1(v70, v71);
    v74 = *(v71 - 8);
    v75 = MEMORY[0x1EEE9AC00](v73);
    v77 = &v126 - v76;
    (*(v74 + 16))(&v126 - v76, v75);
    (*(v72 + 32))(&v140, v71, v72);
    (*(v74 + 8))(v77, v71);
    v78 = v141[2];
    v79 = *v142;
    __swift_project_boxed_opaque_existential_1(&v140, v141[2]);
    LODWORD(v74) = (*(v79 + 8))(v78, v79);
    __swift_destroy_boxed_opaque_existential_1(&v140);
    v80 = v130;
    _s15ConversationKit11ParticipantVWOcTm_17(v18, v130);
    ConversationController.conversationIsAVLess.getter();
    v128 = v74;
    LODWORD(v129) = v81;
    *&v155[9] = v147[0];
    v157 = v145;
    v144 = v133;
    *&v155[24] = *(v147 + 15);
    *v155 = v132;
    v155[8] = v133;
    v156 = v74;
    v158[0] = v146[0];
    *(v158 + 10) = *(v146 + 10);
    v140 = 0;
    v141[0] = 0;
    v141[1] = 0;
    v141[2] = 1;
    bzero(v142, 0xB1uLL);
    v82 = v136;
    _s15ConversationKit11ParticipantVWOcTm_17(v18, v136);
    v83 = Participant.captionInfo.getter();
    v4 = v84;
    _s15ConversationKit11ParticipantVWOhTm_18(v82, type metadata accessor for Participant);
    Participant.copresenceInfo.getter(v154);
    Participant.asJoined(avInfo:videoInfo:screenInfo:captionInfo:copresenceInfo:)();
    outlined destroy of CallControlsService?(v154, &_s15ConversationKit11ParticipantV14CopresenceInfoVSgMd);
    outlined consume of Participant.CaptionInfo?(v83);
    outlined destroy of CallControlsService?(&v140, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
    v85 = v80;
    v86 = v135;
    _s15ConversationKit11ParticipantVWOhTm_18(v85, type metadata accessor for Participant);
    swift_beginAccess();
    _s15ConversationKit11ParticipantVWOdTm_0(v17, v18);
    swift_endAccess();
    v87 = &v86[OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState];
    swift_beginAccess();
    v130 = v87;
    if (*(v87 + 16) < 0)
    {
      v136 = *(v130 + 1);
      v88 = *(v127 + 3);
      v89 = *(v127 + 4);
      v90 = __swift_project_boxed_opaque_existential_1(v127, v88);
      v129 = &v126;
      v91 = *(v88 - 8);
      v92 = MEMORY[0x1EEE9AC00](v90);
      v94 = &v126 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v91 + 16))(v94, v92);
      (*(v89 + 32))(&v140, v88, v89);
      (*(v91 + 8))(v94, v88);
      v95 = v141[2];
      v4 = *v142;
      __swift_project_boxed_opaque_existential_1(&v140, v141[2]);
      (*(v4 + 1))(v95, v4);
      ConversationController.broadcastingState.setter();
      __swift_destroy_boxed_opaque_existential_1(&v140);
    }

    v96 = ConversationController.visibleParticipants.getter();
    v97 = 0;
    v136 = *(v96 + 16);
    v98 = (v131 + 16);
    v99 = (v131 + 8);
    while (1)
    {
      if (v136 == v97)
      {

        v106 = v132;
        v107 = v128;
        goto LABEL_45;
      }

      if (v97 >= *(v96 + 16))
      {
        __break(1u);
        goto LABEL_55;
      }

      _s15ConversationKit11ParticipantVWOcTm_17(v96 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v97, v17);
      v100 = *(v7 + 20);
      v101 = v18;
      v102 = v18 + v100;
      v4 = v17;
      v104 = v138;
      v103 = v139;
      (*v98)(v138, v102, v139);
      LOBYTE(v100) = static UUID.== infix(_:_:)();
      v105 = v104;
      v17 = v4;
      (*v99)(v105, v103);
      _s15ConversationKit11ParticipantVWOhTm_18(v4, type metadata accessor for Participant);
      if (v100)
      {
        break;
      }

      ++v97;
      v18 = v101;
      v7 = v134;
    }

    v108 = &v135[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipant];
    swift_beginAccess();
    v109 = *v108;
    v18 = v101;
    if (*v108)
    {
      _s15ConversationKit11ParticipantVWOcTm_17(v101, v4);

      v109(v4, v97);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v109);
      _s15ConversationKit11ParticipantVWOhTm_18(v4, type metadata accessor for Participant);
    }

    v110 = &v135[OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForVisibleParticipant];
    swift_beginAccess();
    v111 = *v110;
    v106 = v132;
    v107 = v128;
    if (*v110)
    {
      _s15ConversationKit11ParticipantVWOcTm_17(v101, v17);

      v111(v17, v97);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v111);
      _s15ConversationKit11ParticipantVWOhTm_18(v17, type metadata accessor for Participant);
    }

LABEL_45:
    v112 = v135;
    if (v144 == 1 && v135[OBJC_IVAR____TtC15ConversationKit22ConversationController_expectingNewLocalCameraPositionFirstFrame] == 1 && (v135[OBJC_IVAR____TtC15ConversationKit22ConversationController_expectingNewLocalCameraPositionFirstFrame] = 0, v113 = &v112[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipantCameraPosition], swift_beginAccess(), (v114 = *v113) != 0))
    {
      v140 = v106;
      LOBYTE(v141[0]) = v133;
      *(v141 + 1) = v147[0];
      v141[2] = *(v147 + 15);
      v142[0] = v107;
      *&v142[1] = v145;
      v143[0] = v146[0];
      *(v143 + 10) = *(v146 + 10);

      outlined destroy of Participant.VideoInfo(&v140);
      v114(v107);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v114);
    }

    else
    {
      v140 = v106;
      LOBYTE(v141[0]) = v133;
      *(v141 + 1) = v147[0];
      v141[2] = *(v147 + 15);
      v142[0] = v107;
      *&v142[1] = v145;
      v143[0] = v146[0];
      *(v143 + 10) = *(v146 + 10);
      outlined destroy of Participant.VideoInfo(&v140);
    }

    v115 = &v112[OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant];
    swift_beginAccess();
    v116 = *v115;
    if (*v115)
    {
      _s15ConversationKit11ParticipantVWOcTm_17(v18, v17);
      v117 = *v130;
      v118 = *(v130 + 1);
      v119 = v130[16];

      v120 = v117;
      v112 = v135;
      v116(v17, v120, v118, v119);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v116);
      _s15ConversationKit11ParticipantVWOhTm_18(v17, type metadata accessor for Participant);
    }

    v121 = &v112[OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForLocalParticipant];
    swift_beginAccess();
    v122 = *v121;
    if (*v121)
    {
      _s15ConversationKit11ParticipantVWOcTm_17(v18, v17);
      v123 = *v130;
      v124 = *(v130 + 1);
      v125 = v130[16];

      v122(v17, v123, v124, v125);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v122);
      _s15ConversationKit11ParticipantVWOhTm_18(v17, type metadata accessor for Participant);
    }
  }
}

void ConversationController.handleLocalVideoAttributesChanged(_:)()
{
  ConversationController.handleLocalVideoAttributesChanged(_:)();
}

{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v7 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_20();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  v22[4] = v4;
  v22[5] = v8;
  OUTLINED_FUNCTION_5_73();
  v22[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v22[2] = v9;
  v22[3] = v2;
  v10 = _Block_copy(v22);
  v11 = v0;

  static DispatchQoS.unspecified.getter();
  v22[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_164();
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v12, v13);
  v14 = OUTLINED_FUNCTION_334();
  __swift_instantiateConcreteTypeFromMangledNameV2(v14);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v15, v16);
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_68_6();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v17);
  _Block_release(v10);

  v18 = OUTLINED_FUNCTION_181();
  v19(v18);
  v20 = OUTLINED_FUNCTION_491();
  v21(v20);
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in ConversationController.handleLocalVideoAttributesChanged(_:)(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
  swift_beginAccess();
  v3 = *(v2 + 1);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 208);
  swift_unknownObjectRetain();
  LODWORD(v3) = v5(ObjectType, v3);
  swift_unknownObjectRelease();
  if (v3 == 5 || (v6 = *(v2 + 1), v7 = swift_getObjectType(), v8 = *(v6 + 208), swift_unknownObjectRetain(), LODWORD(v6) = v8(v7, v6), swift_unknownObjectRelease(), v6 == 6))
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BC4BA940;
    v61 = *v2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd);
    v10 = String.init<A>(reflecting:)();
    v12 = v11;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    os_log(_:dso:log:type:_:)();
    *&result = COERCE_DOUBLE();
    return result;
  }

  v14 = *(a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_featureFlags);
  *&result = COERCE_DOUBLE([v14 afbEnabled]);
  if ((result & 1) == 0 && *(a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode))
  {
    return result;
  }

  v15 = (a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
  swift_beginAccess();
  v16 = v15[3];
  v17 = v15[4];
  v18 = __swift_project_boxed_opaque_existential_1(v15, v16);
  v19 = *(v16 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v60[-v21];
  (*(v19 + 16))(&v60[-v21], v20);
  (*(v17 + 32))(&v61, v16, v17);
  (*(v19 + 8))(v22, v16);
  v23 = v62;
  v24 = v63;
  __swift_project_boxed_opaque_existential_1(&v61, v62);
  v25 = (*(v24 + 40))(v23, v24);
  if ((v25 & 0x100000000) != 0)
  {
    *&result = COERCE_DOUBLE(__swift_destroy_boxed_opaque_existential_1(&v61));
    return result;
  }

  v26 = VideoAttributeOrientation.deviceOrientation.getter(v25);
  __swift_destroy_boxed_opaque_existential_1(&v61);
  v27 = v15[3];
  v28 = v15[4];
  v29 = __swift_project_boxed_opaque_existential_1(v15, v27);
  v30 = *(v27 - 8);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v60[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v30 + 16))(v33, v31);
  (*(v28 + 32))(&v61, v27, v28);
  (*(v30 + 8))(v33, v27);
  v34 = v62;
  v35 = v63;
  __swift_project_boxed_opaque_existential_1(&v61, v62);
  (*(v35 + 80))(v34, v35);
  LOBYTE(v33) = v36;
  __swift_destroy_boxed_opaque_existential_1(&v61);
  if (v33)
  {
    goto LABEL_19;
  }

  v37 = v15[3];
  v38 = v15[4];
  v39 = __swift_project_boxed_opaque_existential_1(v15, v37);
  v40 = *(v37 - 8);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v60[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v40 + 16))(v43, v41);
  (*(v38 + 32))(&v61, v37, v38);
  (*(v40 + 8))(v43, v37);
  v44 = v62;
  v45 = v63;
  __swift_project_boxed_opaque_existential_1(&v61, v62);
  *&result = COERCE_DOUBLE((*(v45 + 80))(v44, v45));
  if (v47)
  {
    __break(1u);
    return result;
  }

  if (v46 >= *&result)
  {
    v48 = a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localFullBleedVideoOrientation;
    swift_beginAccess();
    LOBYTE(v48) = *(v48 + 8);
    __swift_destroy_boxed_opaque_existential_1(&v61);
    if (v48)
    {
LABEL_19:
      v50 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v61);
  }

  v49 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
  swift_beginAccess();
  if ((*(a1 + v49) & 1) != 0 || *(a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) != 1)
  {
    goto LABEL_19;
  }

  v50 = [v14 afbEnabled];
LABEL_20:
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1BC4BAA20;
  *&v61 = v26;
  type metadata accessor for CNKDeviceOrientation(0);
  v52 = String.init<A>(reflecting:)();
  v54 = v53;
  v55 = MEMORY[0x1E69E6158];
  *(v51 + 56) = MEMORY[0x1E69E6158];
  v56 = lazy protocol witness table accessor for type String and conformance String();
  *(v51 + 64) = v56;
  *(v51 + 32) = v52;
  *(v51 + 40) = v54;
  *&v61 = v26;
  v57 = String.init<A>(reflecting:)();
  *(v51 + 96) = v55;
  *(v51 + 104) = v56;
  *(v51 + 72) = v57;
  *(v51 + 80) = v58;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  *&result = COERCE_DOUBLE(ConversationController.deviceOrientation.setter(v26));
  if (v50)
  {
    v59 = a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    swift_beginAccess();
    *&result = COERCE_DOUBLE(ConversationController.updateLocalParticipant(with:isChangingExternalCameraUsageOnIPad:)(*v59, *(v59 + 8), *(v59 + 16), 2));
  }

  return result;
}

void ConversationController.handleSendingVideoChanged(_:)()
{
  ConversationController.handleSendingVideoChanged(_:)();
}

{
  OUTLINED_FUNCTION_29();
  v30 = v1;
  v31 = v2;
  v29 = v0;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_2();
  type metadata accessor for Notification();
  OUTLINED_FUNCTION_1_17();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = OUTLINED_FUNCTION_455();
  v12(v11);
  v13 = (v8 + ((*(v6 + 80) + 16) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_452();
  v15();
  *(v14 + v13) = v29;
  v32[4] = v30;
  v32[5] = v14;
  OUTLINED_FUNCTION_5_73();
  v32[1] = 1107296256;
  OUTLINED_FUNCTION_6_5();
  v32[2] = v16;
  v32[3] = v31;
  v17 = _Block_copy(v32);
  v18 = v29;

  static DispatchQoS.unspecified.getter();
  v32[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_164();
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v19, v20);
  v21 = OUTLINED_FUNCTION_139();
  __swift_instantiateConcreteTypeFromMangledNameV2(v21);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v22, v23);
  OUTLINED_FUNCTION_337();
  OUTLINED_FUNCTION_109_7();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v24);
  _Block_release(v17);

  v25 = OUTLINED_FUNCTION_181();
  v26(v25);
  v27 = OUTLINED_FUNCTION_20_38();
  v28(v27);
  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in ConversationController.handleSendingVideoChanged(_:)(uint64_t a1, uint64_t a2)
{
  Notification.object.getter();
  if (!v14)
  {
    return outlined destroy of CallControlsService?(v13, &_sypSgMd);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v12[0];
    v5 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(a2 + v5, v12);
    v6 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall);
    v7 = *(v6 + 104);
    v8 = v4;
    v7(&v10);

    if (v11)
    {
      outlined init with take of TapInteractionHandler(&v10, v13);
      __swift_destroy_boxed_opaque_existential_1(v12);
      outlined init with copy of CallCenterProvider(a2 + v5, v12);
      ConversationController.callCenter(_:localVideoToggledFor:)();

      __swift_destroy_boxed_opaque_existential_1(v12);
      v9 = v13;
    }

    else
    {

      outlined destroy of CallControlsService?(&v10, &_s15ConversationKit0A0_pSgMd);
      v9 = v12;
    }

    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return result;
}

uint64_t closure #1 in ConversationController.migrate(to:with:isUpgrade:)(uint64_t a1, void *a2)
{
  v2 = (a1 + *a2);
  OUTLINED_FUNCTION_3_0();
  result = swift_beginAccess();
  v4 = *v2;
  if (*v2)
  {

    v4(v5);
    v6 = OUTLINED_FUNCTION_4_31();
    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
  }

  return result;
}

void ConversationController.handleCameraFallbackSelection(_:)()
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (*(v0 + 16) < 0)
  {
    if (one-time initialization token for conversationController != -1)
    {
      OUTLINED_FUNCTION_8_106();
    }

    v1 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v1, static Logger.conversationController);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v3))
    {
      v4 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v4);
      OUTLINED_FUNCTION_219();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      OUTLINED_FUNCTION_18();
    }

    ConversationController.stopLocalVideo()();
  }
}

void ConversationController.handleScreenSharingDidChange(_:)()
{
  OUTLINED_FUNCTION_29();
  v37 = v0;
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101_4();
  v4 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_2();
  v6 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_115_3();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53_17();
  Notification.object.getter();
  if (v39)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    if (OUTLINED_FUNCTION_375_0())
    {
      v34 = v1;
      v35 = v2;
      v36 = v4;
      v11 = v42;
      v12 = [v42 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = &v37[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v14 = *(v13 + 1);
      swift_getObjectType();
      v15 = *(v14 + 232);
      swift_unknownObjectRetain();
      v16 = OUTLINED_FUNCTION_312();
      v15(v16);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_28_14();
      LOBYTE(v12) = static UUID.== infix(_:_:)();
      v17 = *(v8 + 8);
      v18 = OUTLINED_FUNCTION_112();
      v17(v18);
      v19 = OUTLINED_FUNCTION_256_3();
      v17(v19);
      if (v12)
      {
        v20 = [v42 isSharingScreen];
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        OUTLINED_FUNCTION_37_22();
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1BC4BA940;
        String.init<A>(reflecting:)();
        OUTLINED_FUNCTION_80_0();
        *(v21 + 56) = MEMORY[0x1E69E6158];
        *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v21 + 32) = v14 + 232;
        *(v21 + 40) = v6;
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_156();
        os_log(_:dso:log:type:_:)();

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
        v22 = static OS_dispatch_queue.main.getter();
        OUTLINED_FUNCTION_8_61();
        v23 = swift_allocObject();
        *(v23 + 16) = v37;
        *(v23 + 24) = v20;
        v40 = partial apply for closure #1 in ConversationController.handleScreenSharingDidChange(_:);
        v41 = v23;
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 1107296256;
        v38[2] = thunk for @escaping @callee_guaranteed () -> ();
        v39 = &block_descriptor_281;
        v24 = _Block_copy(v38);
        v25 = v37;

        static DispatchQoS.unspecified.getter();
        v38[0] = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_3_164();
        lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v26, v27);
        v28 = OUTLINED_FUNCTION_325_1();
        __swift_instantiateConcreteTypeFromMangledNameV2(v28);
        OUTLINED_FUNCTION_9_8();
        lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v29, v30);
        OUTLINED_FUNCTION_462();
        OUTLINED_FUNCTION_260();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x1BFB215C0](0, v34, v35, v24);
        _Block_release(v24);

        v31 = OUTLINED_FUNCTION_45_1();
        v32(v31);
        OUTLINED_FUNCTION_392();
        v33(v34, v36);
      }

      else
      {
      }
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v38, &_sypSgMd);
  }

  OUTLINED_FUNCTION_30_0();
}

id closure #1 in ConversationController.handleScreenSharingDidChange(_:)(uint64_t a1, char a2)
{
  ConversationController.cameraStartPolicy.getter();
  if (!v4)
  {
    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    v7 = [result isGreenTea];

    v8 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingEndingRequiresLocalVideoEnable;
    swift_beginAccess();
    *(a1 + v8) = v7;
  }

  v9 = (a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalScreenSharing);
  result = swift_beginAccess();
  v10 = *v9;
  if (*v9)
  {

    v10(a2 & 1);
    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v10);
  }

  return result;
}

void ConversationController.handleScreenSharingAttributesChanged(_:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_6();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_39_3();
  Notification.object.getter();
  if (v21[3])
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    if (OUTLINED_FUNCTION_375_0())
    {
      v6 = [v20 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 232);
      swift_unknownObjectRetain();
      v10(ObjectType, v8);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_7_8();
      LOBYTE(v7) = static UUID.== infix(_:_:)();
      v11 = *(v3 + 8);
      v12 = OUTLINED_FUNCTION_33_0();
      v11(v12);
      v13 = OUTLINED_FUNCTION_48_0();
      v11(v13);
      if (v7)
      {
        v14 = [v20 screenShareAttributes];
        if (one-time initialization token for conversationKit != -1)
        {
          OUTLINED_FUNCTION_0_6();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        OUTLINED_FUNCTION_37_22();
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1BC4BA940;
        if (v14)
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCallScreenShareAttributes);
          v16 = v14;
          v17 = String.init<A>(reflecting:)();
          v19 = v18;
        }

        else
        {
          v19 = 0xE300000000000000;
          v17 = 7104878;
        }

        *(v15 + 56) = MEMORY[0x1E69E6158];
        *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v15 + 32) = v17;
        *(v15 + 40) = v19;
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_41_0();
        os_log(_:dso:log:type:_:)();

        ConversationController.updateScreenSharingSession(with:)(v14);
      }

      else
      {
      }
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v21, &_sypSgMd);
  }

  OUTLINED_FUNCTION_30_0();
}

void ConversationController.handleCallStartedConnecting(_:)()
{
  ConversationController.handleCallStartedConnecting(_:)();
}

{
  OUTLINED_FUNCTION_29();
  v22 = v0;
  v2 = v1;
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_2();
  Notification.object.getter();
  if (v25)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    if (OUTLINED_FUNCTION_216_4())
    {
      v5 = v28;
      v6 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v21 = static OS_dispatch_queue.main.getter();
      OUTLINED_FUNCTION_20();
      v7 = swift_allocObject();
      OUTLINED_FUNCTION_278(v7);
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_24();
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v5;
      v26 = v2;
      v27 = v8;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 1107296256;
      OUTLINED_FUNCTION_252_2();
      v24[2] = v9;
      v25 = v22;
      v10 = _Block_copy(v24);
      v23 = v5;

      static DispatchQoS.unspecified.getter();
      v24[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_3_164();
      lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v11, v12);
      v13 = OUTLINED_FUNCTION_252();
      __swift_instantiateConcreteTypeFromMangledNameV2(v13);
      OUTLINED_FUNCTION_9_8();
      lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v14, v15);
      OUTLINED_FUNCTION_78_8();
      OUTLINED_FUNCTION_260();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v16 = OUTLINED_FUNCTION_117();
      MEMORY[0x1BFB215C0](v16);
      _Block_release(v10);

      v17 = OUTLINED_FUNCTION_181();
      v18(v17);
      v19 = OUTLINED_FUNCTION_206();
      v20(v19);
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v24, &_sypSgMd);
  }

  OUTLINED_FUNCTION_30_0();
}

void ConversationController.handleCallSharePlayCapabilityDidChange(_:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4_2();
  Notification.object.getter();
  if (v20)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    if (OUTLINED_FUNCTION_216_4())
    {
      v2 = v23;
      v3 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v18 = static OS_dispatch_queue.main.getter();
      OUTLINED_FUNCTION_20();
      v4 = swift_allocObject();
      OUTLINED_FUNCTION_278(v4);
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_24();
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      *(v5 + 24) = v3;
      v21 = partial apply for closure #1 in ConversationController.handleCallSharePlayCapabilityDidChange(_:);
      v22 = v5;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 1107296256;
      v19[2] = thunk for @escaping @callee_guaranteed () -> ();
      v20 = &block_descriptor_295;
      v6 = _Block_copy(v19);
      v17 = v2;

      static DispatchQoS.unspecified.getter();
      v19[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_3_164();
      lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v7, v8);
      v9 = OUTLINED_FUNCTION_252();
      __swift_instantiateConcreteTypeFromMangledNameV2(v9);
      OUTLINED_FUNCTION_9_8();
      lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v10, v11);
      OUTLINED_FUNCTION_78_8();
      OUTLINED_FUNCTION_260();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v12 = OUTLINED_FUNCTION_117();
      MEMORY[0x1BFB215C0](v12);
      _Block_release(v6);

      v13 = OUTLINED_FUNCTION_15_44();
      v14(v13);
      v15 = OUTLINED_FUNCTION_206();
      v16(v15);
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v19, &_sypSgMd);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in ConversationController.handleCallSharePlayCapabilityDidChange(_:)(void *a1)
{
  if (([a1 isVideo] & 1) != 0 || (v2 = objc_msgSend(a1, sel_remoteParticipantHandles), type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle), lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle), v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v2, v4 = specialized Set.count.getter(v3), , v4 != 1))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      ConversationController.processCurrentCall(_:)(a1);
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = (result + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
    swift_beginAccess();
    v11 = *v9;
    v10 = v9[1];
    swift_unknownObjectRetain();

    v12 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = specialized == infix(_:_:)(a1, v12, v11);
    swift_unknownObjectRelease();
    if (v13)
    {
      swift_beginAccess();
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        v15 = v14;
        v16 = (v14 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callSharePlayCapabilityDidChange);
        swift_beginAccess();
        v17 = *v16;
        if (*v16)
        {
          outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v17);

          v17(v11, v10);
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v17);
        }

        else
        {
        }
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #1 in ConversationController.handleAnyRemoteSupportsRequestToScreenShareDidChange(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = (result + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
    swift_beginAccess();
    v6 = *v5;
    v7 = v5[1];
    swift_unknownObjectRetain();

    v8 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v9 = specialized == infix(_:_:)(a2, v8, v6);
    swift_unknownObjectRelease();
    if (v9)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        v12 = (Strong + OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange);
        swift_beginAccess();
        v13 = *v12;
        if (*v12)
        {
          outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v13);

          v13(v6, v7);
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v13);
        }

        else
        {
        }
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #1 in ConversationController.handleCallStartedConnecting(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_247_0(a1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = OUTLINED_FUNCTION_246();
    ConversationController.processCurrentCall(_:)(v2);
  }

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = (result + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v6 = *v5;
    swift_unknownObjectRetain();

    OUTLINED_FUNCTION_283_2(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v7 = OUTLINED_FUNCTION_40_2();
    v9 = specialized == infix(_:_:)(v7, v8, v6);
    swift_unknownObjectRelease();
    if (v9)
    {
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v11 = Strong;
        v12 = (Strong + OBJC_IVAR____TtC15ConversationKit22ConversationController_callStatusDidChange);
        OUTLINED_FUNCTION_3_0();
        swift_beginAccess();
        v13 = *v12;
        if (*v12)
        {
          v14 = OUTLINED_FUNCTION_40_2();
          outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v14);

          v15 = OUTLINED_FUNCTION_4_31();
          v13(v15);
          v16 = OUTLINED_FUNCTION_40_2();
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v16);
        }

        else
        {
        }
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void ConversationController.handleVideoCallStatusDidChange(_:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_2();
  Notification.object.getter();
  if (v20)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    if (OUTLINED_FUNCTION_216_4())
    {
      v3 = v23;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v18 = static OS_dispatch_queue.main.getter();
      OUTLINED_FUNCTION_24();
      v4 = swift_allocObject();
      *(v4 + 16) = v0;
      *(v4 + 24) = v3;
      v21 = partial apply for closure #1 in ConversationController.handleVideoCallStatusDidChange(_:);
      v22 = v4;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 1107296256;
      v19[2] = thunk for @escaping @callee_guaranteed () -> ();
      v20 = &block_descriptor_315;
      v5 = _Block_copy(v19);
      v6 = v0;
      v17 = v3;

      static DispatchQoS.unspecified.getter();
      v19[0] = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_3_164();
      lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v7, v8);
      v9 = OUTLINED_FUNCTION_252();
      __swift_instantiateConcreteTypeFromMangledNameV2(v9);
      OUTLINED_FUNCTION_9_8();
      lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v10, v11);
      OUTLINED_FUNCTION_78_8();
      OUTLINED_FUNCTION_260();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v12 = OUTLINED_FUNCTION_117();
      MEMORY[0x1BFB215C0](v12);
      _Block_release(v5);

      v13 = OUTLINED_FUNCTION_15_44();
      v14(v13);
      v15 = OUTLINED_FUNCTION_206();
      v16(v15);
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v19, &_sypSgMd);
  }

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationController.handleVideoCallStatusDidChange(_:)(uint64_t a1, void *a2)
{
  v2 = a2;
  ConversationController.processCurrentCall(_:)(a2);
  v4 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall);
  v5 = (a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
  swift_beginAccess();
  v6 = *v5;
  swift_getObjectType();
  swift_unknownObjectRetain();
  LOBYTE(v2) = specialized == infix(_:_:)(v2, v4, v6);
  swift_unknownObjectRelease();
  if (v2)
  {
    v7 = (a1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callStatusDidChange);
    swift_beginAccess();
    v8 = *v7;
    if (*v7)
    {
      v9 = v5[1];
      outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v8);
      v10 = swift_unknownObjectRetain();
      v8(v10, v9);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
      swift_unknownObjectRelease();
    }

    ConversationController.updateIDSStatusForVideoMessaging()();
  }
}

void closure #1 in ConversationController.handleHoldMusicDidChange(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  Notification.object.getter();
  if (v26)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    if (swift_dynamicCast())
    {
      v23 = v24;
      v10 = a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
      swift_beginAccess();
      v11 = *(v10 + 8);
      ObjectType = swift_getObjectType();
      v22 = a2;
      v13 = *(v11 + 232);
      swift_unknownObjectRetain();
      v14 = v11;
      v15 = v23;
      v13(ObjectType, v14);
      swift_unknownObjectRelease();
      v16 = [v15 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v16) = static UUID.== infix(_:_:)();
      v17 = *(v4 + 8);
      v17(v6, v3);
      v17(v9, v3);
      if (v16)
      {
        v18 = v22;
        if (ConversationController.isOneToOneModeEnabled.getter())
        {
          v19 = (v18 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateWantsHoldMusic);
          swift_beginAccess();
          v20 = *v19;
          if (*v19)
          {

            v20([v15 wantsHoldMusic]);
            outlined consume of (@escaping @callee_guaranteed () -> ())?(v20);
          }
        }
      }
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v25, &_sypSgMd);
  }
}

void ConversationController.handleBluetoothAudioFormatChanged(_:)()
{
  ConversationController.handleBluetoothAudioFormatChanged(_:)();
}

{
  OUTLINED_FUNCTION_29();
  v37 = v1;
  v38 = v2;
  v3 = v0;
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_24_5();
  v5 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_32_31();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_103_4();
  Notification.object.getter();
  if (v40)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    if (OUTLINED_FUNCTION_375_0())
    {
      v35 = v5;
      v36 = v43;
      v11 = [v43 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = &v3[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v13 = *(v12 + 1);
      swift_getObjectType();
      v14 = *(v13 + 232);
      swift_unknownObjectRetain();
      v15 = OUTLINED_FUNCTION_45_1();
      v14(v15);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_112();
      LOBYTE(v11) = static UUID.== infix(_:_:)();
      v16 = *(v8 + 8);
      v17 = OUTLINED_FUNCTION_2_125();
      v16(v17);
      v18 = OUTLINED_FUNCTION_316_1();
      v16(v18);
      if (v11)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
        v19 = static OS_dispatch_queue.main.getter();
        OUTLINED_FUNCTION_24();
        v20 = swift_allocObject();
        *(v20 + 16) = v43;
        *(v20 + 24) = v3;
        v41 = v37;
        v42 = v20;
        OUTLINED_FUNCTION_241_3();
        v39[1] = 1107296256;
        OUTLINED_FUNCTION_6_5();
        v39[2] = v21;
        v40 = v38;
        v22 = _Block_copy(v39);
        v23 = v36;
        v24 = v3;

        static DispatchQoS.unspecified.getter();
        v39[0] = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_3_164();
        lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v25, v26);
        v27 = OUTLINED_FUNCTION_139();
        __swift_instantiateConcreteTypeFromMangledNameV2(v27);
        OUTLINED_FUNCTION_9_8();
        lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v28, v29);
        OUTLINED_FUNCTION_260();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v30 = OUTLINED_FUNCTION_117();
        MEMORY[0x1BFB215C0](v30);
        _Block_release(v22);

        v31 = OUTLINED_FUNCTION_181();
        v32(v31);
        v33 = OUTLINED_FUNCTION_20_38();
        v34(v33, v35);
      }

      else
      {
      }
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v39, &_sypSgMd);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in ConversationController.handleBluetoothAudioFormatChanged(_:)(void *a1, uint64_t a2)
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BA940;
  [a1 bluetoothAudioFormat];
  type metadata accessor for TUCallBluetoothAudioFormat(0);
  v5 = String.init<A>(reflecting:)();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v8 = (a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_bluetoothAudioFormatChanged);
  result = swift_beginAccess();
  v10 = *v8;
  if (*v8)
  {

    v10([a1 bluetoothAudioFormat]);
    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v10);
  }

  return result;
}

uint64_t closure #1 in ConversationController.handleCallConversationChanged(_:)(void *a1, uint64_t a2)
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BA940;
  [a1 isConversation];
  v5 = String.init<A>(reflecting:)();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v8 = (a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callConversationChanged);
  result = swift_beginAccess();
  v10 = *v8;
  if (*v8)
  {

    v10([a1 isConversation]);
    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v10);
  }

  return result;
}

void ConversationController.handlePTTCallStatusDidChange(_:)()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_2_12();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_7();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_2();
  Notification.object.getter();
  if (v21)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    if (OUTLINED_FUNCTION_216_4())
    {
      v3 = v22;
      if ([v22 isPTT])
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
        v19 = static OS_dispatch_queue.main.getter();
        OUTLINED_FUNCTION_24();
        v4 = swift_allocObject();
        *(v4 + 16) = v22;
        *(v4 + 24) = v0;
        OUTLINED_FUNCTION_231_4(v4);
        v20[1] = 1107296256;
        OUTLINED_FUNCTION_6_5();
        v20[2] = v5;
        v21 = &block_descriptor_345;
        v17 = _Block_copy(v20);
        v18 = v3;
        v6 = v0;

        static DispatchQoS.unspecified.getter();
        v20[0] = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_3_164();
        lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v7, v8);
        v9 = OUTLINED_FUNCTION_252();
        __swift_instantiateConcreteTypeFromMangledNameV2(v9);
        OUTLINED_FUNCTION_9_8();
        lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v10, v11);
        OUTLINED_FUNCTION_78_8();
        OUTLINED_FUNCTION_260();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v12 = OUTLINED_FUNCTION_117();
        MEMORY[0x1BFB215C0](v12);
        _Block_release(v17);

        v13 = OUTLINED_FUNCTION_309();
        v14(v13);
        v15 = OUTLINED_FUNCTION_206();
        v16(v15);
      }

      else
      {
      }
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v20, &_sypSgMd);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in ConversationController.handlePTTCallStatusDidChange(_:)(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall);
  v5 = (a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
  swift_beginAccess();
  v6 = *v5;
  swift_getObjectType();
  swift_unknownObjectRetain();
  LOBYTE(a1) = specialized == infix(_:_:)(a1, v4, v6);
  result = swift_unknownObjectRelease();
  if (a1)
  {
    if (*(a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_hasPendingStopTransmit) == 1)
    {
      ConversationController.pttStopTransmit()();
    }

    v8 = (a2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pttCallStatusDidChange);
    result = swift_beginAccess();
    v9 = *v8;
    if (*v8)
    {
      v10 = v5[1];
      outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v9);
      v11 = swift_unknownObjectRetain();
      v9(v11, v10);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v9);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

BOOL closure #1 in ConversationController.processCurrentCall(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  if ((*(a2 + 136))(ObjectType, a2))
  {
    v19 = (*(a2 + 224))(ObjectType, a2);
    v7 = v6;
    v8 = a3 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
    swift_beginAccess();
    v9 = *(v8 + 8);
    v10 = swift_getObjectType();
    v11 = *(v9 + 224);
    swift_unknownObjectRetain();
    v12 = v11(v10, v9);
    v14 = v13;
    swift_unknownObjectRelease();
    if (v19 == v12 && v7 == v14)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        v17 = *(a2 + 208);
        if (v17(ObjectType, a2) != 6)
        {
          return v17(ObjectType, a2) != 5;
        }
      }
    }
  }

  return 0;
}

uint64_t ConversationController.carPlayDidConnect()(const char *a1, char a2)
{
  if (one-time initialization token for conversationController != -1)
  {
    OUTLINED_FUNCTION_8_106();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.conversationController);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_42();
    v10 = OUTLINED_FUNCTION_23();
    v18[0] = v10;
    *v9 = 136315138;
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v18);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1BBC58000, v7, v8, a1, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_2_2();
  }

  v14 = &v6[OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayConnectedDidChange];
  result = OUTLINED_FUNCTION_104_7();
  v16 = *v14;
  if (*v14)
  {
    OUTLINED_FUNCTION_363_0();
    v16(a2 & 1);
    v17 = OUTLINED_FUNCTION_4_31();
    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v17);
  }

  return result;
}

void protocol witness for CPCarPlayObserverDelegate.carPlayStartedConnectionAttempt() in conformance ConversationController()
{
  swift_getObjectType();

  CPCarPlayObserverDelegate.carPlayStartedConnectionAttempt()();
}

void protocol witness for CPCarPlayObserverDelegate.carPlayStoppedConnectionAttempt() in conformance ConversationController()
{
  swift_getObjectType();

  CPCarPlayObserverDelegate.carPlayStoppedConnectionAttempt()();
}

Swift::Int specialized Set._Variant.filter(_:)(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E69E7CD0];
    v22 = MEMORY[0x1E69E7CD0];

    __CocoaSet.makeIterator()();
    while (1)
    {
      while (1)
      {
        v5 = __CocoaSet.Iterator.next()();
        if (!v5)
        {
          swift_bridgeObjectRelease_n();

          return v4;
        }

        v20 = v5;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
        v6 = swift_dynamicCast();
        v20 = v21;
        MEMORY[0x1EEE9AC00](v6);
        v19[2] = &v20;
        v7 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v19, a2);
        v8 = v21;
        if (!v7)
        {
          break;
        }
      }

      if (v4[3] <= v4[2])
      {
        specialized _NativeSet.resize(capacity:)();
      }

      v4 = v22;
      result = NSObject._rawHashValue(seed:)(v22[5]);
      v10 = (v4 + 7);
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~v4[(v12 >> 6) + 7]) == 0)
      {
        break;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~v4[(v12 >> 6) + 7])) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_17:
      *&v10[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
      *(v4[6] + 8 * v14) = v8;
      ++v4[2];
    }

    v15 = 0;
    v16 = (63 - v11) >> 6;
    while (++v13 != v16 || (v15 & 1) == 0)
    {
      v17 = v13 == v16;
      if (v13 == v16)
      {
        v13 = 0;
      }

      v15 |= v17;
      v18 = *&v10[8 * v13];
      if (v18 != -1)
      {
        v14 = __clz(__rbit64(~v18)) + (v13 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

    v4 = specialized _NativeSet.filter(_:)(a1, a2);

    return v4;
  }

  return result;
}

void *specialized _NativeSet.filter(_:)(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v32[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v31 = a2;

  if (v4 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v27[0] = v27;
    MEMORY[0x1EEE9AC00](v7);
    v27[1] = v5;
    v28 = v27 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    v8 = specialized UnsafeMutablePointer.assign(repeating:count:)(0, v5, v28);
    v29 = 0;
    v30 = v2;
    v9 = 0;
    v11 = *(v2 + 56);
    v2 += 56;
    v10 = v11;
    v12 = 1 << *(v2 - 24);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v6 = v13 & v10;
    v5 = (v12 + 63) >> 6;
    while (v6)
    {
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_12:
      v17 = v14 | (v9 << 6);
      v32[0] = *(*(v30 + 48) + 8 * v17);
      MEMORY[0x1EEE9AC00](v8);
      v27[-2] = v32;
      v19 = v18;
      v20 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v27[-4], v31);

      if (!v20)
      {
        *(v28 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_16:
          specialized _NativeSet.extractSubset(using:count:)();
          v23 = v22;
          goto LABEL_17;
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v5)
      {
        goto LABEL_16;
      }

      v16 = *(v2 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v6 = (v16 - 1) & v16;
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

  v25 = swift_slowAlloc();
  v26 = v31;

  v23 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo8TUHandleCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So8I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n0108_s15ConversationKit0A10ControllerC30updateOtherInvitedParticipants33_5A0A49257C27FB45AC60F0CF8835047ALLyyFSbpI7CXEfU0_SayAISgGTf1nnc_n(v25, v5, v2, v26);

  MEMORY[0x1BFB23DF0](v25, -1, -1);
LABEL_17:
  swift_bridgeObjectRelease_n();
  return v23;
}

{
  v52 = *MEMORY[0x1E69E9840];
  v49 = type metadata accessor for UUID();
  v4 = *(v49 - 8);
  v5 = MEMORY[0x1EEE9AC00](v49);
  v48 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v37 - v7;
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  v50 = a2;

  if (v10 > 0xD)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v37[1] = v37;
    MEMORY[0x1EEE9AC00](v13);
    v39 = v11;
    v40 = v37 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v11, v40);
    v42 = a1;
    v43 = 0;
    v12 = 0;
    v14 = *(a1 + 56);
    v38 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v14;
    v18 = (v15 + 63) >> 6;
    v46 = v4 + 8;
    v47 = v4 + 16;
    v41 = v18;
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v45 = (v17 - 1) & v17;
LABEL_12:
      v22 = v19 | (v12 << 6);
      v23 = *(a1 + 48);
      v44 = v22;
      v51 = *(v23 + 8 * v22);
      if ([v51 originType] == 1 && objc_msgSend(v51, sel_isLocallyOriginated) && objc_msgSend(v51, sel_type) == 1)
      {
LABEL_18:

        v18 = v41;
        a1 = v42;
        v17 = v45;
      }

      else
      {
        v24 = 0;
        v25 = *(v50 + 16);
        while (v25 != v24)
        {
          v26 = v49;
          (*(v4 + 16))(v8, v50 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24++, v49);
          v27 = [v51 UUID];
          v28 = v48;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v11 = static UUID.== infix(_:_:)();
          v29 = *(v4 + 8);
          v29(v28, v26);
          v29(v8, v26);
          if (v11)
          {
            goto LABEL_18;
          }
        }

        *(v40 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
        a1 = v42;
        v30 = __OFADD__(v43++, 1);
        v18 = v41;
        v17 = v45;
        if (v30)
        {
          __break(1u);
LABEL_22:
          specialized _NativeSet.extractSubset(using:count:)();
          v32 = v31;
          swift_bridgeObjectRelease_n();
          return v32;
        }
      }
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {
        goto LABEL_22;
      }

      v21 = *(v38 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v45 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:
    v34 = v11;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v35 = swift_slowAlloc();
  v36 = v50;

  v32 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo22TUScreenSharingRequestCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So22ijK5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n041_s15ConversationKit0A0PAAE27currentScreenJ68Request8ignoringSo08TUScreeneF0CSgSay10Foundation4UUIDVG_tFSbAGXEfU_Say10Foundation4UUIDVGTf1nnc_n(v35, v34, a1, v36);

  MEMORY[0x1BFB23DF0](v35, -1, -1);
  swift_bridgeObjectRelease_n();
  return v32;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo8TUHandleCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab10VKXEfU_So8I5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n0108_s15ConversationKit0A10ControllerC30updateOtherInvitedParticipants33_5A0A49257C27FB45AC60F0CF8835047ALLyyFSbpI7CXEfU0_SayAISgGTf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    swift_bridgeObjectRetain_n();
    specialized closure #1 in _NativeSet.filter(_:)(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, void *a2, unint64_t a3, unint64_t a4)
{
  v119 = a1;
  v7 = type metadata accessor for Participant.State(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v100 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v106 = &v95 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v108 = &v95 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v113 = &v95 - v14;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v97 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v96 = &v95 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v99 = &v95 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v98 = &v95 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v102 = &v95 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v101 = &v95 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v107 = &v95 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v95 - v31;
  v114 = type metadata accessor for Participant(0);
  v33 = MEMORY[0x1EEE9AC00](v114);
  v118 = &v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v112 = &v95 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  result = MEMORY[0x1EEE9AC00](v37);
  v41 = &v95 - v40;
  v43 = *(v42 + 72);
  if (!v43)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  v44 = a2 - v119;
  v45 = (a2 - v119) == 0x8000000000000000 && v43 == -1;
  if (v45)
  {
    goto LABEL_73;
  }

  v46 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v43 == -1)
  {
    goto LABEL_74;
  }

  v122 = v119;
  v121 = a4;
  v109 = (v16 + 32);
  v110 = (v16 + 8);
  v111 = v15;
  v48 = v46 / v43;
  v116 = v7;
  if (v44 / v43 < v46 / v43)
  {
    v118 = v39;
    v49 = v44 / v43;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v119, v44 / v43, a4);
    v112 = a4 + v49 * v43;
    v120 = v112;
    v104 = v43;
    v105 = a3;
    v103 = v41;
    v50 = v118;
    while (1)
    {
      if (a4 >= v112 || a2 >= a3)
      {
        goto LABEL_71;
      }

      _s15ConversationKit11ParticipantVWOcTm_17(a2, v41);
      _s15ConversationKit11ParticipantVWOcTm_17(a4, v50);
      v52 = v113;
      _s15ConversationKit11ParticipantVWOcTm_17(v41, v113);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        break;
      }

      v115 = a4;
      v117 = a2;
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v54 = *(v53 + 48);
      outlined consume of Participant.CopresenceInfo?(*(v52 + *(v53 + 64)), *(v52 + *(v53 + 64) + 8));
      v55 = *v109;
      v56 = v107;
      v57 = v111;
      (*v109)(v107, v52, v111);
      outlined destroy of Participant.MediaInfo(v52 + v54);
      v55(v32, v56, v57);
      v58 = v108;
      _s15ConversationKit11ParticipantVWOcTm_17(v50, v108);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        _s15ConversationKit11ParticipantVWOhTm_18(v58, type metadata accessor for Participant.State);
        (*v110)(v32, v57);
        a2 = v117;
        a4 = v115;
        v43 = v104;
        a3 = v105;
        v41 = v103;
        goto LABEL_27;
      }

      v59 = *(v53 + 48);
      outlined consume of Participant.CopresenceInfo?(*(v58 + *(v53 + 64)), *(v58 + *(v53 + 64) + 8));
      v60 = v102;
      v55(v102, v58, v57);
      outlined destroy of Participant.MediaInfo(v58 + v59);
      v61 = v101;
      v55(v101, v60, v57);
      LOBYTE(v60) = static Date.< infix(_:_:)();
      v62 = *v110;
      (*v110)(v61, v57);
      v62(v32, v57);
      _s15ConversationKit11ParticipantVWOhTm_18(v50, type metadata accessor for Participant);
      v41 = v103;
      _s15ConversationKit11ParticipantVWOhTm_18(v103, type metadata accessor for Participant);
      a2 = v117;
      a4 = v115;
      v43 = v104;
      a3 = v105;
      if (v60)
      {
        if (v119 < v117 || v119 >= v117 + v104)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v119 != v117)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 = (a2 + v43);
        goto LABEL_37;
      }

LABEL_28:
      if (v119 < a4 || v119 >= a4 + v43)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v119 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v121 = a4 + v43;
      a4 += v43;
LABEL_37:
      v119 += v43;
      v122 = v119;
    }

    _s15ConversationKit11ParticipantVWOhTm_18(v52, type metadata accessor for Participant.State);
LABEL_27:
    _s15ConversationKit11ParticipantVWOhTm_18(v118, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOhTm_18(v41, type metadata accessor for Participant);
    goto LABEL_28;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v46 / v43, a4);
  v65 = -v43;
  v66 = (a4 + v48 * v43);
  v67 = v66;
  v68 = v109;
  v115 = a4;
  v104 = v65;
LABEL_42:
  v109 = (a2 + v65);
  v69 = a3;
  v105 = v67;
  v117 = a2;
  while (1)
  {
    if (v66 <= a4)
    {
      v122 = a2;
      v120 = v67;
      goto LABEL_71;
    }

    if (a2 <= v119)
    {
      break;
    }

    v113 = v69;
    v108 = v67;
    v70 = &v66[v65];
    v71 = v112;
    _s15ConversationKit11ParticipantVWOcTm_17(&v66[v65], v112);
    _s15ConversationKit11ParticipantVWOcTm_17(v109, v118);
    v72 = v106;
    _s15ConversationKit11ParticipantVWOcTm_17(v71, v106);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v107 = v66;
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v74 = *(v73 + 48);
      outlined consume of Participant.CopresenceInfo?(*(v72 + *(v73 + 64)), *(v72 + *(v73 + 64) + 8));
      v75 = *v68;
      v76 = v99;
      v77 = v68;
      v78 = v111;
      v75(v99, v72, v111);
      outlined destroy of Participant.MediaInfo(v72 + v74);
      v79 = v98;
      v80 = v76;
      v81 = v118;
      v75(v98, v80, v78);
      v82 = v100;
      _s15ConversationKit11ParticipantVWOcTm_17(v81, v100);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v83 = v82;
        v84 = *(v73 + 48);
        outlined consume of Participant.CopresenceInfo?(*(v83 + *(v73 + 64)), *(v83 + *(v73 + 64) + 8));
        v85 = v97;
        v75(v97, v83, v78);
        outlined destroy of Participant.MediaInfo(v83 + v84);
        v86 = v96;
        v75(v96, v85, v78);
        v87 = static Date.< infix(_:_:)();
        v88 = v79;
        v89 = *v110;
        (*v110)(v86, v78);
        v89(v88, v78);
      }

      else
      {
        _s15ConversationKit11ParticipantVWOhTm_18(v82, type metadata accessor for Participant.State);
        (*v110)(v79, v78);
        v87 = 0;
      }

      v68 = v77;
      a4 = v115;
      v65 = v104;
      v66 = v107;
    }

    else
    {
      _s15ConversationKit11ParticipantVWOhTm_18(v72, type metadata accessor for Participant.State);
      v87 = 0;
    }

    v90 = v113;
    a3 = v113 + v65;
    _s15ConversationKit11ParticipantVWOhTm_18(v118, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOhTm_18(v112, type metadata accessor for Participant);
    if (v87)
    {
      if (v90 < v117 || a3 >= v117)
      {
        a2 = v109;
        swift_arrayInitWithTakeFrontToBack();
        v67 = v108;
      }

      else
      {
        v93 = v108;
        v67 = v108;
        v45 = v90 == v117;
        v94 = v109;
        a2 = v109;
        if (!v45)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v94;
          v67 = v93;
        }
      }

      goto LABEL_42;
    }

    v91 = v90 < v66 || a3 >= v66;
    a2 = v117;
    if (v91)
    {
      swift_arrayInitWithTakeFrontToBack();
      goto LABEL_60;
    }

    v67 = v70;
    v45 = v66 == v90;
    v69 = v90 + v65;
    v66 = v70;
    if (!v45)
    {
      swift_arrayInitWithTakeBackToFront();
LABEL_60:
      v69 = v90 + v65;
      v66 = v70;
      v67 = v70;
    }
  }

  v122 = a2;
  v120 = v105;
LABEL_71:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v122, &v121, &v120);
  return 1;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v6 = *v2;
  result = specialized Collection.firstIndex(where:)(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v8)
  {
    return specialized Array.count.getter(v6);
  }

  v4 = result;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      result = v6 >> 62 ? __CocoaSet.count.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 == result)
      {
        return v4;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        v19 = OUTLINED_FUNCTION_2_125();
        v10 = MEMORY[0x1BFB22010](v19);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v10 = *(v6 + 8 * v9 + 32);
      }

      v21 = v10;
      v11 = a1(&v21);

      if ((v11 & 1) == 0)
      {
        if (v4 != v9)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v12 = OUTLINED_FUNCTION_258_0();
            v20 = MEMORY[0x1BFB22010](v12);
            v13 = OUTLINED_FUNCTION_2_125();
            v14 = MEMORY[0x1BFB22010](v13);
          }

          else
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_44;
            }

            v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v4 >= v15)
            {
              goto LABEL_45;
            }

            if (v9 >= v15)
            {
              goto LABEL_46;
            }

            v14 = *(v6 + 32 + 8 * v9);
            v20 = *(v6 + 32 + 8 * v4);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
            v16 = (v6 >> 62) & 1;
          }

          else
          {
            LODWORD(v16) = 0;
          }

          v17 = v6 & 0xFFFFFFFFFFFFFF8;
          *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v14;

          if ((v6 & 0x8000000000000000) != 0 || v16)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
            v6 = result;
            v17 = result & 0xFFFFFFFFFFFFFF8;
            if ((v9 & 0x8000000000000000) != 0)
            {
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
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
              break;
            }
          }

          else if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          if (v9 >= *(v17 + 16))
          {
            goto LABEL_43;
          }

          *(v17 + 8 * v9 + 32) = v20;

          *v2 = v6;
        }

        v18 = __OFADD__(v4++, 1);
        if (v18)
        {
          goto LABEL_42;
        }
      }

      v18 = __OFADD__(v9++, 1);
      if (v18)
      {
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = *v2;
  result = specialized Collection.firstIndex(where:)(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v4 = result;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 16 * result + 48; ; i += 16)
    {
      v11 = *(v6 + 16);
      if (v9 == v11)
      {
        break;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      outlined init with copy of WeakPlatformDisplayLinkObserver(v6 + i, v16);
      v12 = a1(v16);
      result = outlined destroy of WeakPlatformDisplayLinkObserver(v16);
      if ((v12 & 1) == 0)
      {
        if (v9 != v4)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_21;
          }

          v13 = *(v6 + 16);
          if (v4 >= v13)
          {
            goto LABEL_22;
          }

          result = outlined init with copy of WeakPlatformDisplayLinkObserver(v6 + 32 + 16 * v4, v16);
          if (v9 >= v13)
          {
            goto LABEL_23;
          }

          outlined init with copy of WeakPlatformDisplayLinkObserver(v6 + i, v15);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew()();
            v6 = v14;
          }

          result = outlined assign with take of WeakPlatformDisplayLinkObserver(v15, v6 + 16 * v4 + 32);
          if (v9 >= *(v6 + 16))
          {
            goto LABEL_24;
          }

          result = outlined assign with take of WeakPlatformDisplayLinkObserver(v16, v6 + i);
          *v2 = v6;
        }

        ++v4;
      }

      ++v9;
    }

    return v4;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v48 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v44 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v44 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v44 - v16;
  v46 = a1;
  v18 = *a1;
  v19 = a2;
  result = specialized Collection.firstIndex(where:)(v18, v19);
  if (v2)
  {

    return v3;
  }

  v22 = v18;
  v52 = v17;
  v53 = v19;
  if (v21)
  {
    v3 = *(v18 + 16);

    return v3;
  }

  v3 = result;
  v47 = v11;
  v44[1] = 0;
  v23 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v56 = v7 + 16;
    v50 = v7;
    v51 = v7 + 8;
    v25 = v52;
    v24 = v53;
    v49 = v14;
    v45 = (v7 + 40);
    while (1)
    {
      v26 = *(v22 + 16);
      if (v23 == v26)
      {

        return v3;
      }

      if (v23 >= v26)
      {
        break;
      }

      v27 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v28 = v14;
      v59 = v22;
      v54 = v27;
      v29 = v22 + v27;
      v30 = *(v7 + 72);
      v31 = *(v7 + 16);
      v57 = v30 * v23;
      v58 = v3;
      v55 = v31;
      v31(v25, v22 + v27 + v30 * v23, v6);
      v32 = [v24 uniqueProxyIdentifierUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v32) = static UUID.== infix(_:_:)();
      v33 = *(v7 + 8);
      v33(v28, v6);
      result = (v33)(v25, v6);
      if (v32)
      {
        v14 = v49;
        v7 = v50;
        v3 = v58;
        v25 = v52;
        v24 = v53;
        v22 = v59;
      }

      else
      {
        v34 = v58;
        if (v23 == v58)
        {
          v14 = v49;
          v7 = v50;
          v25 = v52;
          v24 = v53;
          v22 = v59;
        }

        else
        {
          if ((v58 & 0x8000000000000000) != 0)
          {
            goto LABEL_25;
          }

          v35 = *(v59 + 16);
          if (v58 >= v35)
          {
            goto LABEL_26;
          }

          v36 = v30 * v58;
          v37 = v23;
          v38 = v55;
          result = (v55)(v47, v29 + v36, v6);
          if (v37 >= v35)
          {
            goto LABEL_27;
          }

          v38(v48, v29 + v57, v6);
          v39 = v59;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew()();
            v39 = v43;
          }

          v14 = v49;
          v7 = v50;
          v40 = v39;
          v41 = v39 + v54;
          v42 = *v45;
          result = (*v45)(v41 + v36, v48, v6);
          if (v37 >= *(v40 + 16))
          {
            goto LABEL_28;
          }

          result = v42(v41 + v57, v47, v6);
          v23 = v37;
          *v46 = v40;
          v25 = v52;
          v24 = v53;
          v22 = v40;
        }

        v3 = v34 + 1;
      }

      ++v23;
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

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for UUID();
  v50 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  v16 = *v4;
  result = specialized Collection.firstIndex(where:)(a1, a2, *v4);
  if (!v3)
  {
    v46 = a2;
    v47 = v15;
    v51 = v7;
    if (v18)
    {
      return *(v16 + 16);
    }

    else
    {
      v41 = v4;
      v53 = result;
      v19 = result + 1;
      if (!__OFADD__(result, 1))
      {
        v54 = 0;
        v20 = v50;
        v21 = v51;
        v49 = v50 + 16;
        v44 = v12;
        v45 = (v50 + 8);
        v42 = (v50 + 40);
        v43 = v9;
        v22 = v47;
        while (1)
        {
          v23 = *(v16 + 16);
          if (v19 == v23)
          {
            return v53;
          }

          if (v19 >= v23)
          {
            break;
          }

          v24 = v16;
          v48 = (*(v20 + 80) + 32) & ~*(v20 + 80);
          v25 = v16 + v48;
          v26 = *(v20 + 72);
          v55 = v19;
          v27 = *(v20 + 16);
          v52 = v26 * v19;
          v27(v22, v16 + v48 + v26 * v19, v21);
          v28 = v54;
          v29 = a1;
          v30 = a1(v22);
          v54 = v28;
          if (v28)
          {
            return (*v45)(v22, v21);
          }

          v31 = v30;
          result = (*v45)(v22, v21);
          if (v31)
          {
            a1 = v29;
            v20 = v50;
            v21 = v51;
            v22 = v47;
            v16 = v24;
            v32 = v55;
          }

          else
          {
            v32 = v55;
            if (v55 == v53)
            {
              a1 = v29;
              v20 = v50;
              v21 = v51;
              v22 = v47;
            }

            else
            {
              if ((v53 & 0x8000000000000000) != 0)
              {
                goto LABEL_26;
              }

              v33 = *(v24 + 16);
              if (v53 >= v33)
              {
                goto LABEL_27;
              }

              v34 = v26 * v53;
              v35 = v51;
              result = (v27)(v44, v25 + v34, v51);
              if (v55 >= v33)
              {
                goto LABEL_28;
              }

              v36 = v25 + v52;
              v37 = v43;
              v27(v43, v36, v35);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                specialized _ArrayBuffer._consumeAndCreateNew()();
                v24 = v40;
              }

              a1 = v29;
              v38 = v24 + v48;
              v39 = *v42;
              v21 = v51;
              result = (*v42)(v24 + v48 + v34, v37, v51);
              v22 = v47;
              if (v55 >= *(v24 + 16))
              {
                goto LABEL_29;
              }

              result = v39(v38 + v52, v44, v21);
              v32 = v55;
              *v41 = v24;
              v20 = v50;
            }

            v16 = v24;
            ++v53;
          }

          v19 = v32 + 1;
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

{
  v7 = v2;
  v10 = type metadata accessor for ParticipantReaction(0);
  v11 = OUTLINED_FUNCTION_9_0(v10);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_35_6();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_79_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_103_4();
  v16 = *v7;
  result = specialized Collection.firstIndex(where:)(a1, a2, *v7);
  if (!v3)
  {
    v35 = v4;
    v36 = v5;
    if (v18)
    {
      return *(v16 + 16);
    }

    else
    {
      v19 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_27:
        __break(1u);
      }

      else
      {
        v20 = v16;
        v37 = v13;
        while (1)
        {
          v21 = *(v20 + 16);
          if (v19 == v21)
          {
            break;
          }

          if (v19 >= v21)
          {
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          OUTLINED_FUNCTION_40_3();
          v38 = v23;
          v39 = v22;
          v24 = v20 + v23;
          v25 = *(v13 + 72);
          v40 = v26;
          OUTLINED_FUNCTION_263_1();
          v28 = v27;
          _s15ConversationKit11ParticipantVWOcTm_17(v24 + v27, v6);
          v29 = a1;
          v30 = a1(v6);
          _s15ConversationKit11ParticipantVWOhTm_18(v6, type metadata accessor for ParticipantReaction);
          if (v30)
          {
            a1 = v29;
            v13 = v37;
            result = v39;
            v31 = v40;
          }

          else
          {
            result = v39;
            v31 = v40;
            if (v40 == v39)
            {
              a1 = v29;
            }

            else
            {
              if ((v39 & 0x8000000000000000) != 0)
              {
                goto LABEL_23;
              }

              v32 = *(v20 + 16);
              if (v39 >= v32)
              {
                goto LABEL_24;
              }

              v33 = v25 * v39;
              OUTLINED_FUNCTION_263_1();
              result = _s15ConversationKit11ParticipantVWOcTm_17(v24 + v33, v36);
              if (v40 >= v32)
              {
                goto LABEL_25;
              }

              _s15ConversationKit11ParticipantVWOcTm_17(v24 + v28, v35);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                specialized _ArrayBuffer._consumeAndCreateNew()();
                v20 = v34;
              }

              a1 = v29;
              _s15ConversationKit11ParticipantVWOdTm_0(v35, v20 + v38 + v33);
              result = v36;
              if (v40 >= *(v20 + 16))
              {
                goto LABEL_26;
              }

              _s15ConversationKit11ParticipantVWOdTm_0(v36, v20 + v38 + v28);
              v31 = v40;
              *v7 = v20;
              result = v39;
            }

            ++result;
            v13 = v37;
          }

          v19 = v31 + 1;
        }
      }
    }
  }

  return result;
}

uint64_t specialized _NativeSet.subtracting<A>(_:)(unint64_t a1, void (*a2)(char *, unint64_t, uint64_t))
{
  v92 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v65 - v8;
  v10 = type metadata accessor for UUID();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v84 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v65 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v65 - v17;
  if (!*(a2 + 2))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v71 = v7;
  v66 = 0;
  v19 = a1 + 56;
  v18 = *(a1 + 56);
  v20 = -1 << *(a1 + 32);
  v75 = ~v20;
  if (-v20 < 64)
  {
    v21 = ~(-1 << -v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v18;
  v72 = (63 - v20) >> 6;
  v74 = (v16 + 32);
  v82 = (a2 + 56);
  v79 = v16;
  v85 = v16 + 16;
  v86 = (v16 + 8);
  v76 = a1;

  v23 = 0;
  v73 = a1 + 56;
  v68 = v9;
LABEL_6:
  v24 = v22;
  v25 = v23;
  v83 = v23;
  if (v22)
  {
LABEL_12:
    a1 = (v24 - 1) & v24;
    v28 = v76;
    v79[2](v9, *(v76 + 48) + v79[9] * (__clz(__rbit64(v24)) | (v25 << 6)), v10);
    v29 = 0;
    v26 = v9;
    v27 = v25;
LABEL_13:
    __swift_storeEnumTagSinglePayload(v26, v29, 1, v10);
    v87 = v28;
    v88 = v19;
    v89 = v75;
    v90 = v27;
    v91 = a1;
    if (__swift_getEnumTagSinglePayload(v26, 1, v10) == 1)
    {
      goto LABEL_46;
    }

    v70 = *v74;
    v70(v81, v26, v10);
    v69 = lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v30 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v80 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v19 = v30 & v80;
      if (((1 << (v30 & v80)) & v82[(v30 & v80) >> 6]) == 0)
      {
        (*v86)(v81, v10);
        v23 = v27;
        v22 = a1;
        v19 = v73;
        v9 = v68;
        goto LABEL_6;
      }

      v77 = 1 << v19;
      v78 = v19 >> 6;
      v25 = a2;
      v31 = *(a2 + 6);
      v32 = v79;
      v83 = v79[9];
      v33 = v79[2];
      (v33)(v15, v31 + v83 * v19, v10);
      v34 = lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      a2 = v32[1];
      (a2)(v15, v10);
      if (v35)
      {
        break;
      }

      v30 = v19 + 1;
      a2 = v25;
    }

    v79 = v33;
    v80 = v34;
    v36 = (a2)(v81, v10);
    v37 = *(v25 + 32);
    v67 = ((1 << v37) + 63) >> 6;
    v22 = 8 * v67;
    if ((v37 & 0x3Fu) <= 0xD)
    {
LABEL_21:
      v81 = a2;
      v68 = &v65;
      MEMORY[0x1EEE9AC00](v36);
      v38 = &v65 - ((v22 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v38, v82, v22);
      v39 = *&v38[8 * v78] & ~v77;
      v40 = *(v25 + 16);
      v77 = v38;
      *&v38[8 * v78] = v39;
      v41 = v40 - 1;
      v26 = v71;
      v42 = v73;
      v43 = v72;
      v44 = v76;
      a2 = v25;
      v45 = v79;
      while (1)
      {
        v78 = v41;
LABEL_23:
        if (!a1)
        {
          break;
        }

        v46 = v27;
LABEL_29:
        v47 = __clz(__rbit64(a1));
        v48 = (a1 - 1) & a1;
        (v45)(v26, *(v44 + 48) + (v47 | (v46 << 6)) * v83, v10);
        v49 = 0;
LABEL_30:
        __swift_storeEnumTagSinglePayload(v26, v49, 1, v10);
        v87 = v44;
        v88 = v42;
        v89 = v75;
        v90 = v27;
        v91 = v48;
        if (__swift_getEnumTagSinglePayload(v26, 1, v10) == 1)
        {
          outlined destroy of CallControlsService?(v26, &_s10Foundation4UUIDVSgMd);
          specialized _NativeSet.extractSubset(using:count:)();
          a2 = v60;
          goto LABEL_42;
        }

        v79 = v48;
        v50 = v45;
        v70(v84, v26, v10);
        v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v52 = a2;
        v53 = ~(-1 << *(a2 + 32));
        do
        {
          v54 = v51 & v53;
          v55 = (v51 & v53) >> 6;
          v56 = 1 << (v51 & v53);
          if ((v56 & v82[v55]) == 0)
          {
            (v81)(v84, v10);
            a2 = v52;
            v44 = v76;
            v26 = v71;
            v42 = v73;
            v43 = v72;
            v45 = v50;
            a1 = v79;
            goto LABEL_23;
          }

          (v50)(v15, *(v52 + 6) + v54 * v83, v10);
          v57 = dispatch thunk of static Equatable.== infix(_:_:)();
          (v81)(v15, v10);
          v51 = v54 + 1;
        }

        while ((v57 & 1) == 0);
        (v81)(v84, v10);
        v58 = *(v77 + 8 * v55);
        *(v77 + 8 * v55) = v58 & ~v56;
        v59 = (v58 & v56) == 0;
        a2 = v52;
        v44 = v76;
        v26 = v71;
        v42 = v73;
        v43 = v72;
        v45 = v50;
        a1 = v79;
        if (v59)
        {
          goto LABEL_23;
        }

        v41 = v78 - 1;
        if (__OFSUB__(v78, 1))
        {
          __break(1u);
        }

        if (v78 == 1)
        {

          a2 = MEMORY[0x1E69E7CD0];
          goto LABEL_42;
        }
      }

      while (1)
      {
        v46 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v46 >= v43)
        {
          v48 = 0;
          v49 = 1;
          goto LABEL_30;
        }

        a1 = *(v42 + 8 * v46);
        ++v27;
        if (a1)
        {
          v27 = v46;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_46:
      outlined destroy of CallControlsService?(v26, &_s10Foundation4UUIDVSgMd);
LABEL_42:
      outlined consume of Set<TUHandle>.Iterator._Variant();
      return a2;
    }
  }

  else
  {
    v26 = v9;
    v27 = v23;
    while (1)
    {
      v25 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v25 >= v72)
      {
        a1 = 0;
        v29 = 1;
        v28 = v76;
        goto LABEL_13;
      }

      v24 = *(v19 + 8 * v25);
      ++v27;
      if (v24)
      {
        v9 = v26;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_21;
  }

  v62 = swift_slowAlloc();
  v63 = v66;
  v64 = specialized closure #1 in static _UnsafeBitset.withTemporaryCopy<A>(of:body:)(v62, v67, v82, v67, v25, v19, &v87);
  if (!v63)
  {
    a2 = v64;

    MEMORY[0x1BFB23DF0](v62, -1, -1);
    goto LABEL_42;
  }

  result = MEMORY[0x1BFB23DF0](v62, -1, -1);
  __break(1u);
  return result;
}

void specialized closure #1 in _NativeSet.subtracting<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v37 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v48 = &v37 - v17;
  v18 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v19 = v18 - 1;
  v39 = a1;
  v40 = (v13 + 32);
  v44 = a3 + 56;
  v45 = v13 + 16;
  v46 = (v13 + 8);
  v47 = a3;
  v41 = v11;
  v42 = a5;
  while (1)
  {
    v38 = v19;
LABEL_3:
    v21 = *a5;
    v20 = a5[1];
    v22 = a5[2];
    v23 = a5[3];
    v24 = a5[4];
    v43 = v22;
    if (!v24)
    {
      break;
    }

    v25 = v23;
LABEL_9:
    v26 = (v24 - 1) & v24;
    (*(v13 + 16))(v11, *(v21 + 48) + *(v13 + 72) * (__clz(__rbit64(v24)) | (v25 << 6)), v12);
    v27 = 0;
LABEL_10:
    __swift_storeEnumTagSinglePayload(v11, v27, 1, v12);
    *a5 = v21;
    a5[1] = v20;
    a5[2] = v43;
    a5[3] = v23;
    a5[4] = v26;
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      outlined destroy of CallControlsService?(v11, &_s10Foundation4UUIDVSgMd);

      specialized _NativeSet.extractSubset(using:count:)();
      return;
    }

    (*v40)(v48, v11, v12);
    v28 = v47;
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v29 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v30 = ~(-1 << *(v28 + 32));
    do
    {
      v31 = v29 & v30;
      v32 = (v29 & v30) >> 6;
      v33 = 1 << (v29 & v30);
      if ((v33 & *(v44 + 8 * v32)) == 0)
      {
        (*v46)(v48, v12);
        v11 = v41;
        a5 = v42;
        goto LABEL_3;
      }

      (*(v13 + 16))(v16, *(v47 + 48) + *(v13 + 72) * v31, v12);
      lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *(v13 + 8);
      v35(v16, v12);
      v29 = v31 + 1;
    }

    while ((v34 & 1) == 0);
    v35(v48, v12);
    v36 = *(v39 + 8 * v32);
    *(v39 + 8 * v32) = v36 & ~v33;
    v11 = v41;
    a5 = v42;
    if ((v36 & v33) == 0)
    {
      goto LABEL_3;
    }

    v19 = v38 - 1;
    if (__OFSUB__(v38, 1))
    {
      goto LABEL_23;
    }

    if (v38 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= ((v22 + 64) >> 6))
    {
      v26 = 0;
      v27 = 1;
      goto LABEL_10;
    }

    v24 = *(v20 + 8 * v25);
    ++v23;
    if (v24)
    {
      v23 = v25;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t specialized closure #1 in static _UnsafeBitset.withTemporaryCopy<A>(of:body:)(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  specialized closure #1 in _NativeSet.subtracting<A>(_:)(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

void outlined bridged method (mnnbnn) of @objc NSNotificationCenter.post(name:object:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a4 postNotificationName:a1 object:a2 userInfo:isa];
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_15_25();
  v11 = v5;
  v12 = v6;
  __swift_allocate_boxed_opaque_existential_1(&v10);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_9_51();
  v7();
  v8 = *a3;
  *(v8 + 16) = v3 + 1;
  return outlined init with take of TapInteractionHandler(&v10, v8 + 40 * v3 + 32);
}

uint64_t specialized ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  LODWORD(v375) = a8;
  v369 = a7;
  HIDWORD(v359) = a6;
  v382 = a4;
  v373 = a3;
  v374 = a1;
  v384 = a2;
  ObjectType = swift_getObjectType();
  v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtMd);
  MEMORY[0x1EEE9AC00](v388);
  v392 = (&v356 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v387 = &v356 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v386 = &v356 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v391 = &v356 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v362 = &v356 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v357 = &v356 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v356 = &v356 - v29;
  v385 = type metadata accessor for Participant.CountdownInfo(0);
  MEMORY[0x1EEE9AC00](v385);
  v376 = (&v356 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  MEMORY[0x1EEE9AC00](v31 - 8);
  *&v390 = &v356 - v32;
  v389 = type metadata accessor for UUID();
  v366 = *(v389 - 8);
  MEMORY[0x1EEE9AC00](v389);
  v380 = &v356 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v379 = &v356 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v378 = &v356 - v37;
  v367 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v367);
  v377 = (&v356 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v393 = type metadata accessor for Participant(0);
  v361 = *(v393 - 1);
  MEMORY[0x1EEE9AC00](v393);
  v383 = &v356 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v368 = &v356 - v41;
  v42 = type metadata accessor for Date();
  v370 = *(v42 - 8);
  v371 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v372 = &v356 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v381 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v365 = *(v381 - 8);
  MEMORY[0x1EEE9AC00](v381);
  v364 = &v356 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v45);
  v46 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v46 - 8);
  v411[3] = a13;
  v411[4] = a15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v411);
  (*(*(a13 - 8) + 32))(boxed_opaque_existential_1, v382, a13);
  v410[3] = a14;
  v410[4] = a16;
  v48 = __swift_allocate_boxed_opaque_existential_1(v410);
  (*(*(a14 - 8) + 32))(v48, a5, a14);
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayDisconnectRequiresLocalVideoEnable) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingEndingRequiresLocalVideoEnable) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_showingInMiniWindowRequiresLocalVideoEnable) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioFrequencyController) = 0;
  v382 = OBJC_IVAR____TtC15ConversationKit22ConversationController_audioCallbackQueue;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v363 = "";
  static DispatchQoS.unspecified.getter();
  *&v406 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v365[13](v364, *MEMORY[0x1E69E8090], v381);
  *(a12 + v382) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didReceiveLatestRemoteAttributes) = 0;
  v49 = a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes;
  v412 = 1;
  *(v49 + 64) = 0u;
  *(v49 + 80) = 0u;
  *(v49 + 32) = 0u;
  *(v49 + 48) = 0u;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  *(v49 + 96) = 1;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController____lazy_storage___momentsController) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_lastRegisteredMomentsProvider) = 0;
  v50 = OBJC_IVAR____TtC15ConversationKit22ConversationController_recentPresentationContexts;
  v51 = MEMORY[0x1E69E7CC0];
  *(a12 + v50) = Dictionary.init(dictionaryLiteral:)();
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pauseOnFirstFrame) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_hasPendingStopTransmit) = 0;
  v52 = OBJC_IVAR____TtC15ConversationKit22ConversationController_pendingNoticeWaitingForRemoteScreenShareAttributes;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd);
  __swift_storeEnumTagSinglePayload(a12 + v52, 1, 1, v53);
  v54 = a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pendingNoticeWaitingForSharePlayTelephonyCallUpdate;
  *v54 = 0u;
  *(v54 + 16) = 0u;
  *(v54 + 32) = 0u;
  *(v54 + 48) = 0;
  v55 = OBJC_IVAR____TtC15ConversationKit22ConversationController_scheduledVideoInfoResetDates;
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v56 = v389;
  v57 = v371;
  *(a12 + v55) = Dictionary.init(dictionaryLiteral:)();
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_ignoreLetMeInRequests) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_rejectedParticipantsCount) = 0;
  v364 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation) = 1;
  v58 = a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localFullBleedVideoOrientation;
  *v58 = 0;
  *(v58 + 8) = 1;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didDeferStartCameraAction) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController__captionsRecognizerShouldBeRunning) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneCallCenterUpdateWaitingForNonSquareVideo) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeDisabledByActivity) = 0;
  v59 = OBJC_IVAR____TtC15ConversationKit22ConversationController_featureFlags;
  *(a12 + v59) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldShowLastFrameDuringUPlusOneHandoff) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_waitForModeSwitchDuringUPlusOneHandoff) = 0;
  v60 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddVisibleParticipant);
  *v60 = 0;
  v60[1] = 0;
  v61 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveVisibleParticipant);
  *v61 = 0;
  v61[1] = 0;
  v62 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveAllVisibleParticipants);
  *v62 = 0;
  v62[1] = 0;
  v63 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishMigratingConversations);
  *v63 = 0;
  v63[1] = 0;
  v64 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipant);
  *v64 = 0;
  v64[1] = 0;
  v65 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeActive);
  *v65 = 0;
  v65[1] = 0;
  v66 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeInactive);
  *v66 = 0;
  v66[1] = 0;
  v67 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantKickableStatusDidChange);
  *v67 = 0;
  v67[1] = 0;
  v68 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForVisibleParticipant);
  *v68 = 0;
  v68[1] = 0;
  v69 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipantScreenInfo);
  *v69 = 0;
  v69[1] = 0;
  v70 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantsMediaPrioritiesDidChange);
  *v70 = 0;
  v70[1] = 0;
  v71 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidReact);
  *v71 = 0;
  v71[1] = 0;
  v72 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidStopReacting);
  *v72 = 0;
  v72[1] = 0;
  v73 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantAudioPowerDidChange);
  *v73 = 0;
  v73[1] = 0;
  v74 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mutedTalkerDidChange);
  *v74 = 0;
  v74[1] = 0;
  v75 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioRouteDidChange);
  *v75 = 0;
  v75[1] = 0;
  v76 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBlurEnabledDidChange);
  *v76 = 0;
  v76[1] = 0;
  v77 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBackgroundReplacementEnabledDidChange);
  *v77 = 0;
  v77[1] = 0;
  v78 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraZoomAvailabiltyDidChange);
  *v78 = 0;
  v78[1] = 0;
  v79 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localCameraUIDDidChange);
  *v79 = 0;
  v79[1] = 0;
  v80 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraListDidChange);
  *v80 = 0;
  v80[1] = 0;
  v81 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraOrientationUpdateDidGetSnapshot);
  *v81 = 0;
  v81[1] = 0;
  v82 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingAvailabilityDidChange);
  *v82 = 0;
  v82[1] = 0;
  v83 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingEnabledDidChange);
  *v83 = 0;
  v83[1] = 0;
  v84 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraReactionEffectsEnabledDidChange);
  *v84 = 0;
  v84[1] = 0;
  v85 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraStudioLightEnabledDidChange);
  *v85 = 0;
  v85[1] = 0;
  v86 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayConnectedDidChange);
  *v86 = 0;
  v86[1] = 0;
  v87 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_oneToOneModeDidChange);
  *v87 = 0;
  v87[1] = 0;
  v88 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isTrackingActiveConversationDidChange);
  *v88 = 0;
  v88[1] = 0;
  v89 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_avModeDidChange);
  *v89 = 0;
  v89[1] = 0;
  v90 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_resolvedAudioVideoModeDidChange);
  *v90 = 0;
  v90[1] = 0;
  v91 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isWaitingOnFirstRemoteFrameDidChange);
  *v91 = 0;
  v91[1] = 0;
  v92 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_activitiesDidChange);
  *v92 = 0;
  v92[1] = 0;
  v93 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_collaborationNoticePosted);
  *v93 = 0;
  v93[1] = 0;
  v94 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingRequestsChanged);
  *v94 = 0;
  v94[1] = 0;
  v95 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_podcastRecordingRequestsChanged);
  *v95 = 0;
  v95[1] = 0;
  v96 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioPausedDidChange);
  *v96 = 0;
  v96[1] = 0;
  v97 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_bluetoothAudioFormatChanged);
  *v97 = 0;
  v97[1] = 0;
  v98 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callConversationChanged);
  *v98 = 0;
  v98[1] = 0;
  v99 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant);
  *v99 = 0;
  v99[1] = 0;
  v100 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateSensitivityAnalysis);
  *v100 = 0;
  v100[1] = 0;
  v101 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalMemberAuthorizedToChangeGroupMembership);
  *v101 = 0;
  v101[1] = 0;
  v102 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipantCameraPosition);
  *v102 = 0;
  v102[1] = 0;
  v103 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateRecordingLocalVideo);
  *v103 = 0;
  v103[1] = 0;
  v104 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishWindowResize);
  *v104 = 0;
  v104[1] = 0;
  v105 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalScreenSharing);
  *v105 = 0;
  v105[1] = 0;
  v106 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateHasRingingCalls);
  *v106 = 0;
  v106[1] = 0;
  v107 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateWantsHoldMusic);
  *v107 = 0;
  v107[1] = 0;
  v108 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForLocalParticipant);
  *v108 = 0;
  v108[1] = 0;
  v109 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationStateDidChange);
  *v109 = 0;
  v109[1] = 0;
  v110 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationVisibleRemoteParticipantCountDidChange);
  *v110 = 0;
  v110[1] = 0;
  v111 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestStateDidChange);
  *v111 = 0;
  v111[1] = 0;
  v112 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationIgnoreLetMeInRequestsDidChange);
  *v112 = 0;
  v112[1] = 0;
  v113 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationRejectedParticipantsCountDidChange);
  *v113 = 0;
  v113[1] = 0;
  v114 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddPendingParticipant);
  *v114 = 0;
  v114[1] = 0;
  v115 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemovePendingParticipant);
  *v115 = 0;
  v115[1] = 0;
  v116 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didApprovePendingParticipant);
  *v116 = 0;
  v116[1] = 0;
  v117 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateParticipantAVMode);
  *v117 = 0;
  v117[1] = 0;
  v118 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didInviteOtherParticipants);
  *v118 = 0;
  v118[1] = 0;
  v119 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraPositionDidChange);
  *v119 = 0;
  v119[1] = 0;
  v120 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_groupNameAndPhotoDidChange);
  *v120 = 0;
  v120[1] = 0;
  v121 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_sessionActionNoticePosted);
  *v121 = 0;
  v121[1] = 0;
  v122 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_secondaryPillStateChanged);
  *v122 = 0;
  v122[1] = 0;
  v123 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_willTakeMoment);
  *v123 = 0;
  v123[1] = 0;
  v124 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldPauseOnFirstLocalVideoFrame);
  *v124 = 0;
  v124[1] = 0;
  v125 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLinkDidChange);
  *v125 = 0;
  v125[1] = 0;
  v126 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didFailToStartCamera);
  *v126 = 0;
  v126[1] = 0;
  v127 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callStatusDidChange);
  *v127 = 0;
  v127[1] = 0;
  v128 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callSharePlayCapabilityDidChange);
  *v128 = 0;
  v128[1] = 0;
  v129 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange);
  *v129 = 0;
  v129[1] = 0;
  v130 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_greenTea3PCallStatusChanged);
  *v130 = 0;
  v130[1] = 0;
  v131 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pttCallStatusDidChange);
  *v131 = 0;
  v131[1] = 0;
  v132 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipantRequestedVideoUpgrade);
  *v132 = 0;
  v132[1] = 0;
  v133 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateCaptions);
  *v133 = 0;
  v133[1] = 0;
  v134 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didToggleCaptions);
  *v134 = 0;
  v134[1] = 0;
  v135 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateIDSCapabilities);
  *v135 = 0;
  v135[1] = 0;
  v136 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageErrorOccured);
  *v136 = 0;
  v136[1] = 0;
  v137 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingAvailabilityDidChange);
  *v137 = 0;
  v137[1] = 0;
  v138 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isRemoteParticipantEligibleForVideoMessagingBlock);
  *v138 = 0;
  v138[1] = 0;
  v139 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_fetchUISceneOrientation);
  *v139 = 0;
  v139[1] = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_enableVideoOnJoin) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_expectingNewLocalCameraPositionFirstFrame) = 0;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isSplitView) = 0;
  __swift_storeEnumTagSinglePayload(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID, 1, 1, v56);
  __swift_storeEnumTagSinglePayload(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageConversationUUID, 1, 1, v56);
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callWaitingUUIDs) = v51;
  v140 = MEMORY[0x1E69E7CD0];
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsThatHaveReceivedFirstVideoFrame) = MEMORY[0x1E69E7CD0];
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrame) = v140;
  v141 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrameTasks;
  type metadata accessor for DispatchWorkItem();
  *(a12 + v141) = Dictionary.init(dictionaryLiteral:)();
  __swift_storeEnumTagSinglePayload(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDResolvingCroppedAspectRatio, 1, 1, v56);
  v142 = (a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localVideoRecordingTransactionID);
  *v142 = 0;
  v142[1] = 0;
  v143 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingSession + a12;
  *v143 = 0u;
  *(v143 + 1) = 0u;
  v358 = v143;
  *(v143 + 4) = 0;
  v144 = OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayObserver;
  static OS_dispatch_queue.main.getter();
  v145 = objc_allocWithZone(type metadata accessor for CPCarPlayObserver());
  *(a12 + v144) = CPCarPlayObserver.init(queue:)();
  v146 = v372;
  Date.init()();
  v147 = swift_getObjectType();
  v148 = (v384 + 192);
  v149 = *(v384 + 192);
  v382 = v147;
  v150 = v149();
  v151 = specialized Set.count.getter(v150);

  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeEnabledByCallCenter) = v151 == 1;
  v381 = a12;
  *(a12 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) = v375;
  (*(v370 + 16))(v377, v146, v57);
  swift_storeEnumTagMultiPayload();
  UUID.init()();
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_99;
  }

  while (1)
  {
    v367 = v149;
    v152 = static Defaults.shared;
    v153 = (*(*static Defaults.shared + 592))();
    v154 = (*(*v152 + 168))();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v155 = static Colors.ParticipantGradients.default;
    __swift_storeEnumTagSinglePayload(v390, 1, 1, v385);
    v156 = v373[3];
    v157 = v373[4];
    __swift_project_boxed_opaque_existential_1(v373, v156);
    v158 = *(v157 + 104);

    v158(&v406, v374, v384, v156, v157);
    if (v408)
    {
      __swift_project_boxed_opaque_existential_1(&v406, v408);
      v159 = Conversation.isLocalMemberAuthorizedToChangeGroupMembership()();
      __swift_destroy_boxed_opaque_existential_1(&v406);
    }

    else
    {
      outlined destroy of CallControlsService?(&v406, &_s15ConversationKit0A0_pSgMd);
      v159 = 0;
    }

    v363 = type metadata accessor for ParticipantContactDetailsCache();
    v365 = specialized static ParticipantContactDetailsCache.cache(for:)();
    v160 = v393;
    v161 = v383;
    v162 = &v383[v393[7]];
    *(v162 + 4) = 0;
    *v162 = 0u;
    *(v162 + 1) = 0u;
    v163 = (v161 + v160[9]);
    *(v161 + v160[10]) = 0;
    *(v161 + v160[11]) = MEMORY[0x1E69E7CD0];
    *(v161 + v160[12]) = 0;
    _s15ConversationKit11ParticipantVWObTm_8(v377, v161);
    v164 = v161 + v160[5];
    v165 = v378;
    v377 = *(v366 + 32);
    v378 = (v366 + 32);
    (v377)(v164, v165, v389);
    v166 = v161 + v160[6];
    *v166 = v153 & 1;
    *(v166 + 1) = 257;
    *(v166 + 3) = 0;
    *(v166 + 4) = v154 & 1;
    outlined consume of Participant.RemoteIdentifiers?(*v162);
    *(v162 + 4) = 0;
    *v162 = 0u;
    *(v162 + 1) = 0u;
    *(v161 + v160[8]) = v155;
    *v163 = 0;
    v163[1] = 0;
    *(v161 + v160[15]) = v159;
    *(v161 + v160[13]) = 0;
    v167 = v390;
    v168 = v385;
    if (__swift_getEnumTagSinglePayload(v390, 1, v385) == 1)
    {
      v169 = v356;
      v170 = v371;
      __swift_storeEnumTagSinglePayload(v356, 1, 1, v371);
      v171 = v357;
      __swift_storeEnumTagSinglePayload(v357, 1, 1, v170);
      v172 = v376;
      __swift_storeEnumTagSinglePayload(v376, 1, 1, v170);
      v173 = v168[5];
      __swift_storeEnumTagSinglePayload(&v172[v173], 1, 1, v170);
      outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v169, v172, &_s10Foundation4DateVSgMd);
      v174 = v390;
      outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v171, &v172[v173], &_s10Foundation4DateVSgMd);
      v172[v168[6]] = 0;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v174, 1, v168);
      v149 = v367;
      v176 = v368;
      if (EnumTagSinglePayload != 1)
      {
        outlined destroy of CallControlsService?(v174, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
      }
    }

    else
    {
      v172 = v376;
      _s15ConversationKit11ParticipantVWObTm_8(v167, v376);
      v149 = v367;
      v176 = v368;
    }

    v177 = v393;
    v178 = v383;
    _s15ConversationKit11ParticipantVWObTm_8(v172, &v383[v393[14]]);
    *(v178 + v177[16]) = v365;
    _s15ConversationKit11ParticipantVWObTm_8(v178, v176);
    _s15ConversationKit11ParticipantVWObTm_8(v176, v381 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant);
    v179 = (v149)(v382, v384);
    v180 = specialized Set.count.getter(v179);
    if (v180)
    {
      break;
    }

    v205 = MEMORY[0x1E69E7CC0];
LABEL_40:
    v368 = a10;
    v367 = a9;
    MEMORY[0x1EEE9AC00](v204);
    v207 = v372;
    v206 = v373;
    *(&v356 - 4) = v372;
    *(&v356 - 3) = v206;
    v208 = v374;
    v209 = v384;
    *(&v356 - 2) = v374;
    *(&v356 - 1) = v209;
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8TUHandleCG_15ConversationKit11ParticipantVs5NeverOTg5(_s15ConversationKit0A10ControllerC10activeCall10callCenter31participantMediaProviderCreator0h8CaptionsjK044includeLocalParticipantInVisibleParticipants20screenSharingSession4mode22idsCapabilitiesChecker8defaultsAcA0E0_p_AA0egJ0_pAA0oijK0_pAA0oljK0_pSbAA06ScreentuJ0_pSgAC12ControlsModeOAA015IDSCapabilitiesY0CAA08DefaultsJ0_ptcfcAA0O0VSo8TUHandleCXEfU0_TA_0, (&v356 - 6), v205);
    v211 = v210;

    *(v381 + OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants) = v211;
    v212 = v206[3];
    v213 = v206[4];
    __swift_project_boxed_opaque_existential_1(v206, v212);
    (*(v213 + 104))(&v406, v208, v209, v212, v213);
    v214 = v408;
    if (v408)
    {
      v215 = v409;
      __swift_project_boxed_opaque_existential_1(&v406, v408);
      v216 = (v215[19])(v214, v215);
      MEMORY[0x1EEE9AC00](v216);
      *(&v356 - 4) = v207;
      *(&v356 - 3) = v206;
      *(&v356 - 2) = v208;
      *(&v356 - 1) = v209;
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_15ConversationKit11ParticipantVs5NeverOTg5(_s15ConversationKit0A10ControllerC10activeCall10callCenter31participantMediaProviderCreator0h8CaptionsjK044includeLocalParticipantInVisibleParticipants20screenSharingSession4mode22idsCapabilitiesChecker8defaultsAcA0E0_p_AA0egJ0_pAA0oijK0_pAA0oljK0_pSbAA06ScreentuJ0_pSgAC12ControlsModeOAA015IDSCapabilitiesY0CAA08DefaultsJ0_ptcfcAA0O0VSo8TUHandleCXEfU1_TA_0, (&v356 - 6), v216);
      v218 = v217;

      __swift_destroy_boxed_opaque_existential_1(&v406);
    }

    else
    {
      outlined destroy of CallControlsService?(&v406, &_s15ConversationKit0A0_pSgMd);
      v218 = MEMORY[0x1E69E7CC0];
    }

    v219 = v381;
    *(v381 + OBJC_IVAR____TtC15ConversationKit22ConversationController_otherInvitedParticipants) = v218;
    outlined init with copy of CallCenterProvider(v206, v219 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
    v220 = (v219 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
    *v220 = v208;
    v220[1] = v209;
    outlined init with copy of CallCenterProvider(v411, v219 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantMediaProviderCreator);
    outlined init with copy of CallCenterProvider(v410, v219 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantCaptionsProviderCreator);
    *(v219 + OBJC_IVAR____TtC15ConversationKit22ConversationController_includeLocalParticipantInVisibleParticipants) = BYTE4(v359) & 1;
    outlined init with copy of CallCenterProvider(v206, &v406);
    v221 = v364;
    swift_beginAccess();
    v222 = *(v219 + v221);
    v223 = swift_unknownObjectRetain_n();
    v224 = specialized BroadcastingState.init(call:callCenter:deviceOrientation:shouldMaintainCameraPosition:)(v223, &v406, v222, 0, v382, v209);
    v225 = v219 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    *v225 = v224;
    *(v225 + 8) = v226;
    *(v225 + 16) = v227;
    v228 = v368;
    *(v219 + OBJC_IVAR____TtC15ConversationKit22ConversationController_idsCapabilitiesChecker) = v367;
    v229 = (v219 + OBJC_IVAR____TtC15ConversationKit22ConversationController_defaults);
    *v229 = v228;
    v229[1] = a11;
    outlined init with copy of CallCenterProvider(v206, &v406);
    v230 = objc_opt_self();

    swift_unknownObjectRetain();
    v385 = v230;
    v231 = [v230 defaultCenter];
    v232 = objc_allocWithZone(type metadata accessor for VideoMessageController());
    VideoMessageController.init(callCenter:notificationCenter:)();
    *(v219 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController) = v233;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v369, &v402, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd);
    if (v404)
    {
      outlined init with take of TapInteractionHandler(&v402, &v406);
    }

    else
    {
      v408 = &type metadata for SingleDisplaySharingSession;
      v409 = &protocol witness table for SingleDisplaySharingSession;
      v234 = swift_allocObject();
      *&v406 = v234;
      v234[1] = 0u;
      v234[2] = 0u;
      v234[3] = 0u;
      v234[4] = 0u;
      v234[5] = 0u;
      v234[6] = 0u;
    }

    LODWORD(v168) = v375;
    v235 = v358;
    swift_beginAccess();
    outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(&v406, v235, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd);
    swift_endAccess();
    swift_beginAccess();
    v236 = 0;
    if (*(v225 + 16) < 0 && v168 == 1)
    {
      v237 = v206[3];
      v238 = v206[4];
      __swift_project_boxed_opaque_existential_1(v206, v237);
      v239 = (*(v238 + 80))(v237, v238);
      v236 = [v239 isPreviewRunning];
    }

    v240 = v381;
    *(v381 + OBJC_IVAR____TtC15ConversationKit22ConversationController_keepsPreviewActive) = v236;
    v401.receiver = v240;
    v401.super_class = ObjectType;
    v241 = objc_msgSendSuper2(&v401, sel_init);
    v242 = *&v241[OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayObserver];
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type ConversationController and conformance ConversationController, type metadata accessor for ConversationController);
    v243 = v241;
    v244 = v242;
    dispatch thunk of CPCarPlayObserver.delegate.setter();

    v245 = v206[3];
    v246 = v206[4];
    __swift_project_boxed_opaque_existential_1(v206, v245);
    (*(v246 + 104))(&v402, v374, v384, v245, v246);
    if (v404)
    {
      outlined init with take of TapInteractionHandler(&v402, &v406);
      ConversationController.updateIdentityClaimingAssociations(in:)();
      __swift_destroy_boxed_opaque_existential_1(&v406);
    }

    else
    {
      outlined destroy of CallControlsService?(&v402, &_s15ConversationKit0A0_pSgMd);
    }

    v247 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v248 = &v243[OBJC_IVAR____TtC15ConversationKit22ConversationController_isRemoteParticipantEligibleForVideoMessagingBlock];
    swift_beginAccess();
    v249 = *v248;
    *v248 = partial apply for closure #4 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:);
    v248[1] = v247;

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v249);

    if ((v168 - 1) <= 1)
    {
      v250 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantMediaProviderCreator;
      swift_beginAccess();
      outlined init with copy of CallCenterProvider(&v243[v250], &v406);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit31ParticipantMediaProviderCreator_pMd);
      if (swift_dynamicCast())
      {
        v400 = 0;
        outlined init with take of DefaultParticipantMediaProviderCreator(&v399, &v398);
        swift_unknownObjectWeakAssign();
        v408 = &type metadata for DefaultParticipantMediaProviderCreator;
        v409 = &protocol witness table for DefaultParticipantMediaProviderCreator;
        *&v406 = swift_allocObject();
        outlined init with take of DefaultParticipantMediaProviderCreator(&v398, v406 + 16);
        swift_beginAccess();
        __swift_destroy_boxed_opaque_existential_1(&v243[v250]);
        outlined init with take of TapInteractionHandler(&v406, &v243[v250]);
        swift_endAccess();
      }

      else
      {
        v399 = 0;
        v400 = 1;
        outlined destroy of CallControlsService?(&v399, &_s15ConversationKit38DefaultParticipantMediaProviderCreatorVSgMd);
      }
    }

    v251 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantCaptionsProviderCreator;
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(&v243[v251], &v406);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit34ParticipantCaptionsProviderCreator_pMd);
    if (swift_dynamicCast())
    {
      outlined init with take of DefaultParticipantCaptionsProviderCreator(&v398, v397);
      v397[1] = &protocol witness table for ConversationController;
      swift_unknownObjectWeakAssign();
      v408 = &type metadata for DefaultParticipantCaptionsProviderCreator;
      v409 = &protocol witness table for DefaultParticipantCaptionsProviderCreator;
      *&v406 = swift_allocObject();
      outlined init with take of DefaultParticipantCaptionsProviderCreator(v397, v406 + 16);
      swift_beginAccess();
      __swift_destroy_boxed_opaque_existential_1(&v243[v251]);
      outlined init with take of TapInteractionHandler(&v406, &v243[v251]);
      swift_endAccess();
    }

    else
    {
      v398 = xmmword_1BC4BB7D0;
      outlined destroy of CallControlsService?(&v398, &_s15ConversationKit41DefaultParticipantCaptionsProviderCreatorVSgMd);
    }

    static ParticipantContactDetailsCache.resetAll()();
    v252 = &v243[OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState];
    swift_beginAccess();
    v253 = *v252;
    v254 = *(v252 + 1);
    *&v390 = v252;
    ConversationController.updateLocalParticipant(with:isChangingExternalCameraUsageOnIPad:)(v253, v254, v252[16], 2);
    ConversationController.lookupActiveConversation()();
    ConversationController.update(with:)();
    outlined destroy of CallControlsService?(&v406, &_s15ConversationKit0A0_pSgMd);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (Features.nudityDetectionEnabled.getter())
    {
      static SensitiveContentPolicy.prefetch()();
    }

    v255 = &v243[OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter];
    swift_beginAccess();
    v256 = *(v255 + 24);
    v257 = *(v255 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v255, v256);
    v258 = *(v257 + 56);
    v259 = v243;
    v258(v241, &protocol witness table for ConversationController, v256, v257);
    swift_endAccess();
    v260 = *(**&v259[OBJC_IVAR____TtC15ConversationKit22ConversationController_idsCapabilitiesChecker] + 176);
    v261 = v259;

    v260(v241, &protocol witness table for ConversationController);

    ConversationController.updateIDSStatusForVideoMessaging()();
    ConversationController.setupScreenSharingSessionCallbacks()();
    v262 = (*(v384 + 200))(v382);
    ConversationController.updateScreenSharingSession(with:)(v262);

    LOBYTE(v255) = ConversationController.updateIsUsingIPadExternalCamera()();
    v263 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
    swift_beginAccess();
    v261[v263] = v255 & 1;
    v148 = [v385 defaultCenter];
    v181 = &off_1E7FE9000;
    [v148 addObserver:v261 selector:sel_handleLocalVideoPreviewFirstFrameArrived_ name:*MEMORY[0x1E69D90D8] object:0];

    [v148 addObserver:v261 selector:sel_handleLocalVideoAttributesChanged_ name:*MEMORY[0x1E69D90C8] object:0];
    [v148 addObserver:v261 selector:sel_handleSendingVideoChanged_ name:*MEMORY[0x1E69D8E98] object:0];
    [v148 addObserver:v261 selector:sel_handleAudioUplinkChange_ name:*MEMORY[0x1E69D8EB0] object:0];
    [v148 addObserver:v261 selector:sel_handleCallSharePlayCapabilityDidChange_ name:*MEMORY[0x1E69D8EA0] object:0];
    v264 = *MEMORY[0x1E69D8DE0];
    v375 = v261;
    [v148 addObserver:v261 selector:sel_handleAnyRemoteSupportsRequestToScreenShareDidChange_ name:v264 object:0];
    if (v168 == 1)
    {
      v265 = v375;
      [v148 addObserver:v375 selector:sel_handleCameraZoomBecameAvailable_ name:*MEMORY[0x1E69D90F0] object:0];
      [v148 addObserver:v265 selector:sel_handleCameraZoomBecameUnavailable_ name:*MEMORY[0x1E69D90F8] object:0];
      [v148 addObserver:v265 selector:sel_handlelocalCameraUIDDidChange_ name:*MEMORY[0x1E69D9078] object:0];
      [v148 addObserver:v265 selector:sel_handleCameraCinematicFramingAvailabilityChanged_ name:*MEMORY[0x1E69D9058] object:0];
      [v148 addObserver:v265 selector:sel_handleCameraCinematicFramingEnabledChanged_ name:*MEMORY[0x1E69D9060] object:0];
      [v148 addObserver:v265 selector:sel_handleCameraReactionEffectsEnabledChanged_ name:*MEMORY[0x1E69D90D0] object:0];
      [v148 addObserver:v265 selector:sel_handleCameraStudioLightEnabledChanged_ name:*MEMORY[0x1E69D90E0] object:0];
      [v148 addObserver:v265 selector:sel_handleCameraBlurEnabledChanged_ name:*MEMORY[0x1E69D9050] object:0];
      [v148 addObserver:v265 selector:sel_handleCameraListDidChange_ name:*MEMORY[0x1E69D9098] object:0];
      [v148 addObserver:v265 selector:sel_handleSystemPreferredCameraChanged_ name:*MEMORY[0x1E69D90E8] object:0];
    }

    v266 = v375;
    [v148 addObserver:v375 selector:sel_handleScreenSharingDidChange_ name:*MEMORY[0x1E69D8EA8] object:0];
    [v148 addObserver:v266 selector:sel_handleVideoCallStatusDidChange_ name:*MEMORY[0x1E69D8E58] object:0];
    [v148 addObserver:v266 selector:sel_handleCallStatusDidChange_ name:*MEMORY[0x1E69D8E08] object:0];
    [v148 addObserver:v266 selector:sel_handleCallConnected_ name:*MEMORY[0x1E69D8DF0] object:0];
    [v148 addObserver:v266 selector:sel_handleCallStartedConnecting_ name:*MEMORY[0x1E69D8E00] object:0];
    if (!v168)
    {
      [v148 addObserver:v375 selector:sel_handleBluetoothAudioFormatChanged_ name:*MEMORY[0x1E69D8DE8] object:0];
    }

    v267 = v375;
    [v148 addObserver:v375 selector:sel_handleCallConversationChanged_ name:*MEMORY[0x1E69D8E68] object:0];
    [v148 addObserver:v267 selector:sel_handleLocalPreviewChanged_ name:*MEMORY[0x1E69D9088] object:0];
    [v148 addObserver:v267 selector:sel_handleLocalPreviewChanged_ name:*MEMORY[0x1E69D9080] object:0];
    [v148 addObserver:v267 selector:sel_handleLocalPreviewChanged_ name:*MEMORY[0x1E69D9090] object:0];
    if (Features.nudityDetectionEnabled.getter())
    {
      v268 = MEMORY[0x1BFB209B0](0xD000000000000042, 0x80000001BC509370);
      [v148 addObserver:v375 selector:sel_handleLocalSensitiveContentAnalysisChanged_ name:v268 object:0];
    }

    v269 = v375;
    [v148 addObserver:v375 selector:sel_handleHoldMusicDidChange_ name:*MEMORY[0x1E69D8E18] object:0];
    [v148 addObserver:v269 selector:sel_handleScreenSharingAttributesChanged_ name:*MEMORY[0x1E69D8ED8] object:0];
    if (static Platform.current.getter() != 3)
    {
      goto LABEL_72;
    }

    v182 = sel_handleWindowDidFinishResize_;
    if (one-time initialization token for didEndWindowLiveResizeNotification != -1)
    {
      goto LABEL_101;
    }

LABEL_71:
    v270 = v375;
    [v148 *(v181 + 3712)];
    v271 = MEMORY[0x1BFB209B0](0xD00000000000001ALL, 0x80000001BC509350);
    [v148 *(v181 + 3712)];

LABEL_72:
    LODWORD(v385) = v168;
    v272 = v375;
    [v148 *(v181 + 3712)];
    [v148 *(v181 + 3712)];
    [v148 *(v181 + 3712)];
    [v148 *(v181 + 3712)];
    [v148 *(v181 + 3712)];
    [v148 *(v181 + 3712)];
    [v148 *(v181 + 3712)];
    v273 = *MEMORY[0x1E69D8D68];
    v274 = *(v181 + 3712);
    v365 = v148;
    [v148 v274];
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v275 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v276 = swift_allocObject();
    *(v276 + 16) = xmmword_1BC4BB990;
    v277 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID;
    v278 = v375;
    swift_beginAccess();
    v279 = v362;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(&v278[v277], v362, &_s10Foundation4UUIDVSgMd);
    specialized >> prefix<A>(_:)(v279, v280, v281, v282, v283, v284, v285, v286, v356, v357, v358, v359, ObjectType, v361, v362, v363, v364, v365);
    v288 = v287;
    v290 = v289;
    outlined destroy of CallControlsService?(v279, &_s10Foundation4UUIDVSgMd);
    v291 = MEMORY[0x1E69E6158];
    *(v276 + 56) = MEMORY[0x1E69E6158];
    v292 = lazy protocol witness table accessor for type String and conformance String();
    *(v276 + 64) = v292;
    *(v276 + 32) = v288;
    *(v276 + 40) = v290;
    v293 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
    swift_beginAccess();
    *&v406 = *&v278[v293];
    type metadata accessor for TUConversationState(0);
    v294 = String.init<A>(reflecting:)();
    *(v276 + 96) = v291;
    *(v276 + 104) = v292;
    *(v276 + 72) = v294;
    *(v276 + 80) = v295;
    v296 = *(v390 + 16);
    v406 = *v390;
    v407 = v296;
    v297 = String.init<A>(reflecting:)();
    *(v276 + 136) = v291;
    *(v276 + 144) = v292;
    *(v276 + 112) = v297;
    *(v276 + 120) = v298;
    LOBYTE(v406) = v385;
    v299 = String.init<A>(reflecting:)();
    *(v276 + 176) = v291;
    *(v276 + 184) = v292;
    v363 = v292;
    *(v276 + 152) = v299;
    *(v276 + 160) = v300;
    static os_log_type_t.default.getter();
    v364 = v275;
    os_log(_:dso:log:type:_:)();

    v301 = swift_allocObject();
    v390 = xmmword_1BC4BA940;
    *(v301 + 16) = xmmword_1BC4BA940;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
    v302 = (*(v361 + 80) + 32) & ~*(v361 + 80);
    v385 = *(v361 + 72);
    v303 = swift_allocObject();
    *(v303 + 16) = v390;
    v304 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
    swift_beginAccess();
    _s15ConversationKit11ParticipantVWOcTm_17(&v278[v304], v303 + v302);
    swift_beginAccess();
    *&v406 = v303;

    specialized Array.append<A>(contentsOf:)(v305);
    v306 = v406;
    v307 = *(v406 + 16);
    if (!v307)
    {

      v148 = MEMORY[0x1E69E7CC0];
LABEL_89:
      *&v406 = v148;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
      lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
      v342 = BidirectionalCollection<>.joined(separator:)();
      v344 = v343;

      *&v406 = v342;
      *(&v406 + 1) = v344;
      v345 = MEMORY[0x1E69E6158];
      v346 = String.init<A>(reflecting:)();
      v347 = v363;
      *(v301 + 56) = v345;
      *(v301 + 64) = v347;
      *(v301 + 32) = v346;
      *(v301 + 40) = v348;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v349 = v375;
      ConversationController.fetchExistingScreenSharingAttributes()();
      if (v349[OBJC_IVAR____TtC15ConversationKit22ConversationController_keepsPreviewActive] == 1)
      {
        v350 = v373;
        v351 = v373[3];
        v352 = v373[4];
        __swift_project_boxed_opaque_existential_1(v373, v351);
        v353 = (*(v352 + 80))(v351, v352);
        [v353 startPreview];
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        outlined destroy of CallControlsService?(v369, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd);
      }

      else
      {
        outlined destroy of CallControlsService?(v369, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        v350 = v373;
      }

      v354 = v370;
      v355 = v372;
      __swift_destroy_boxed_opaque_existential_1(v410);
      __swift_destroy_boxed_opaque_existential_1(v411);
      (*(v354 + 8))(v355, v371);
      __swift_destroy_boxed_opaque_existential_1(v350);
      return v375;
    }

    v362 = v301;
    v396 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v308 = 0;
    v309 = *(v306 + 2);
    v383 = v306;
    v384 = v309;
    v310 = &v306[v302];
    v148 = v396;
    v149 = (v366 + 16);
    v376 = (v366 + 8);
    v381 = v366 + 16;
    v382 = v307;
    while (v384 != v308)
    {
      if (v308 >= *(v306 + 2))
      {
        goto LABEL_95;
      }

      *&v390 = v148;
      v312 = v387;
      v311 = v388;
      v313 = *(v388 + 48);
      _s15ConversationKit11ParticipantVWOcTm_17(v310, &v387[v313]);
      v314 = v392;
      *v392 = v308;
      v315 = v314 + *(v311 + 48);
      _s15ConversationKit11ParticipantVWObTm_8(&v312[v313], v315);
      *&v406 = v308;
      v394 = dispatch thunk of CustomStringConvertible.description.getter();
      v395 = v316;
      MEMORY[0x1BFB20B10](979659048, 0xE400000000000000);
      v317 = *v149;
      v318 = v391;
      v319 = v389;
      (*v149)(v391, v315 + v393[5], v389);
      __swift_storeEnumTagSinglePayload(v318, 0, 1, v319);
      v320 = v318;
      v321 = v386;
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v320, v386, &_s10Foundation4UUIDVSgMd);
      if (__swift_getEnumTagSinglePayload(v321, 1, v319) == 1)
      {
        outlined destroy of CallControlsService?(v321, &_s10Foundation4UUIDVSgMd);
        v322 = 0xE300000000000000;
        v323 = 7104878;
      }

      else
      {
        v324 = v379;
        (v377)(v379, v321, v319);
        v317(v380, v324, v319);
        v325 = String.init<A>(reflecting:)();
        v326 = v319;
        v323 = v325;
        v322 = v327;
        (*v376)(v324, v326);
      }

      v148 = v390;
      outlined destroy of CallControlsService?(v391, &_s10Foundation4UUIDVSgMd);
      MEMORY[0x1BFB20B10](v323, v322);

      MEMORY[0x1BFB20B10](8236, 0xE200000000000000);
      v328 = v315 + v393[7];
      v329 = *v328;
      if (*v328)
      {
        v331 = *(v328 + 24);
        v330 = *(v328 + 32);
        v332 = *(v328 + 16);
        v333 = *(v328 + 8);
        *&v406 = v329;
        *(&v406 + 1) = v333;
        v407 = v332 & 1;
        v408 = v331;
        v409 = v330;

        v334 = v329;
        v335 = String.init<A>(reflecting:)();
        v337 = v336;
      }

      else
      {
        v337 = 0xE300000000000000;
        v335 = 7104878;
      }

      v149 = v381;
      MEMORY[0x1BFB20B10](v335, v337);

      v338 = v394;
      v339 = v395;
      outlined destroy of CallControlsService?(v392, &_sSi6offset_15ConversationKit11ParticipantV7elementtMd);
      v396 = v148;
      v340 = v148[2];
      if (v340 >= v148[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v148 = v396;
      }

      v148[2] = v340 + 1;
      v341 = &v148[2 * v340];
      v341[4] = v338;
      v341[5] = v339;
      ++v308;
      v310 += v385;
      v306 = v383;
      if (v382 == v308)
      {

        v301 = v362;
        goto LABEL_89;
      }
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    swift_once();
  }

  v181 = v180;
  v405 = MEMORY[0x1E69E7CC0];
  v182 = &v405;
  specialized ContiguousArray.reserveCapacity(_:)();
  *&v402 = specialized Set.startIndex.getter(v179);
  *(&v402 + 1) = v183;
  v403 = v184 & 1;
  if (v181 < 0)
  {
    __break(1u);
LABEL_101:
    swift_once();
    goto LABEL_71;
  }

  v185 = 0;
  *&v390 = v179 & 0xC000000000000001;
  v186 = v179 & 0xFFFFFFFFFFFFFF8;
  if (v179 < 0)
  {
    v186 = v179;
  }

  v385 = v186;
  v383 = (v179 + 56);
  v376 = (v179 + 64);
  while (1)
  {
    v187 = __OFADD__(v185, 1);
    v185 = (v185 + 1);
    if (v187)
    {
      __break(1u);
      goto LABEL_94;
    }

    v188 = v402;
    v189 = v403;
    specialized Set.subscript.getter(v402, SDWORD2(v402), v403, v179);
    v149 = v190;
    v191 = TUNormalizedHandleForTUHandle();
    if (v191)
    {
      v192 = v191;

      v149 = v192;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v148 = *(v405 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v390)
    {
      break;
    }

    if (v189)
    {
      goto LABEL_103;
    }

    if ((v188 & 0x8000000000000000) != 0)
    {
      goto LABEL_96;
    }

    v194 = 1 << *(v179 + 32);
    if (v188 >= v194)
    {
      goto LABEL_96;
    }

    v195 = v188 >> 6;
    v196 = *&v383[8 * (v188 >> 6)];
    if (((v196 >> v188) & 1) == 0)
    {
      goto LABEL_97;
    }

    if (*(v179 + 36) != DWORD2(v188))
    {
      goto LABEL_98;
    }

    v197 = v196 & (-2 << (v188 & 0x3F));
    if (v197)
    {
      v194 = __clz(__rbit64(v197)) | v188 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v148 = (v195 << 6);
      v199 = v195 + 1;
      v200 = &v376[v195];
      while (v199 < (v194 + 63) >> 6)
      {
        v202 = *v200++;
        v201 = v202;
        v148 += 8;
        ++v199;
        if (v202)
        {
          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v188, *(&v188 + 1), 0);
          v194 = v148 + __clz(__rbit64(v201));
          goto LABEL_36;
        }
      }

      outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v188, *(&v188 + 1), 0);
    }

LABEL_36:
    v203 = *(v179 + 36);
    *&v402 = v194;
    *(&v402 + 1) = v203;
    v403 = 0;
LABEL_37:
    if (v185 == v181)
    {

      v204 = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v402, *(&v402 + 1), v403);
      v205 = v405;
      goto LABEL_40;
    }
  }

  if (v189)
  {
    if (__CocoaSet.Index.handleBitPattern.getter())
    {
      swift_isUniquelyReferenced_nonNull_native();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd);
    v198 = Set.Index._asCocoa.modify();
    __CocoaSet.formIndex(after:isUnique:)();
    v198(&v406, 0);
    goto LABEL_37;
  }

  __break(1u);
LABEL_103:
  __break(1u);
  return result;
}

void specialized ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_29();
  LODWORD(v435) = v26;
  v430 = v27;
  HIDWORD(v418) = v28;
  v30 = v29;
  v32 = v31;
  v447 = v33;
  v434 = v34;
  ObjectType = swift_getObjectType();
  v451 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15ConversationKit11ParticipantV7elementtMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4();
  v455 = v36;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_32();
  v450 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v40 = OUTLINED_FUNCTION_22(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_4();
  v449 = v41;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5();
  v454 = v43;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_32();
  v421 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v47 = OUTLINED_FUNCTION_22(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_4();
  v416 = v48;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_32();
  v415 = v50;
  v51 = OUTLINED_FUNCTION_4_24();
  v448 = type metadata accessor for Participant.CountdownInfo(v51);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_40();
  v436 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
  OUTLINED_FUNCTION_22(v54);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_13_1();
  v453 = v56;
  OUTLINED_FUNCTION_4_24();
  v452 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v428 = v57;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_4();
  v440 = v59;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_5();
  v439 = v61;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_32();
  v438 = v63;
  v64 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for Participant.State(v64);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_40();
  v437 = v66;
  v67 = OUTLINED_FUNCTION_4_24();
  v441 = type metadata accessor for Participant(v67);
  OUTLINED_FUNCTION_1();
  v420 = v68;
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_4();
  v446 = v70;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_32();
  v429 = v72;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v431 = v74;
  v432 = v73;
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_40();
  v433 = v75;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_1();
  v442 = v77;
  v444 = v76;
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_40();
  v426 = v78;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for OS_dispatch_queue.Attributes();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_40();
  v424 = v80;
  OUTLINED_FUNCTION_4_24();
  v81 = type metadata accessor for DispatchQoS();
  v82 = OUTLINED_FUNCTION_22(v81);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_24_5();
  v475 = a25;
  v476 = a26;
  __swift_allocate_boxed_opaque_existential_1(v474);
  OUTLINED_FUNCTION_2_3();
  (*(v83 + 32))();
  v473[3] = &type metadata for DefaultParticipantMediaProviderCreator;
  v473[4] = &protocol witness table for DefaultParticipantMediaProviderCreator;
  OUTLINED_FUNCTION_20();
  v473[0] = swift_allocObject();
  outlined init with take of DefaultParticipantMediaProviderCreator(v32, v473[0] + 16);
  v472[3] = &type metadata for DefaultParticipantCaptionsProviderCreator;
  v472[4] = &protocol witness table for DefaultParticipantCaptionsProviderCreator;
  OUTLINED_FUNCTION_24();
  v472[0] = swift_allocObject();
  outlined init with take of DefaultParticipantCaptionsProviderCreator(v30, v472[0] + 16);
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayDisconnectRequiresLocalVideoEnable) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingEndingRequiresLocalVideoEnable) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_showingInMiniWindowRequiresLocalVideoEnable) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_audioFrequencyController) = 0;
  v422 = OBJC_IVAR____TtC15ConversationKit22ConversationController_audioCallbackQueue;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.unspecified.getter();
  *&v468 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_261_2();
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v84, v85);
  v86 = OUTLINED_FUNCTION_45_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(v86);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v442 + 104))(v426, *MEMORY[0x1E69E8090], v444);
  *(a24 + v422) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didReceiveLatestRemoteAttributes) = 0;
  OUTLINED_FUNCTION_336(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_latestRemoteAttributes);
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController____lazy_storage___momentsController) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_lastRegisteredMomentsProvider) = 0;
  v87 = OBJC_IVAR____TtC15ConversationKit22ConversationController_recentPresentationContexts;
  v111 = MEMORY[0x1E69E7CC0];
  *(a24 + v87) = Dictionary.init(dictionaryLiteral:)();
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pauseOnFirstFrame) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_hasPendingStopTransmit) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
  OUTLINED_FUNCTION_466(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_pendingNoticeWaitingForSharePlayTelephonyCallUpdate);
  v92 = OBJC_IVAR____TtC15ConversationKit22ConversationController_scheduledVideoInfoResetDates;
  OUTLINED_FUNCTION_13_83();
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v93, v94);
  OUTLINED_FUNCTION_239_4();
  *(a24 + v92) = Dictionary.init(dictionaryLiteral:)();
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestState) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_ignoreLetMeInRequests) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_rejectedParticipantsCount) = 0;
  v423 = OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_deviceOrientation) = v424;
  v95 = a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localFullBleedVideoOrientation;
  *v95 = 0;
  v95[8] = v424;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_didDeferStartCameraAction) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController__captionsRecognizerShouldBeRunning) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneCallCenterUpdateWaitingForNonSquareVideo) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeDisabledByActivity) = 0;
  v96 = OBJC_IVAR____TtC15ConversationKit22ConversationController_featureFlags;
  *(a24 + v96) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldShowLastFrameDuringUPlusOneHandoff) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_waitForModeSwitchDuringUPlusOneHandoff) = 0;
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddVisibleParticipant);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveVisibleParticipant);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemoveAllVisibleParticipants);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishMigratingConversations);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipant);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeActive);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantDidBecomeInactive);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_visibleParticipantKickableStatusDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForVisibleParticipant);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateVisibleParticipantScreenInfo);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_participantsMediaPrioritiesDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidReact);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_participantDidStopReacting);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_participantAudioPowerDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_mutedTalkerDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_audioRouteDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBlurEnabledDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraBackgroundReplacementEnabledDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraZoomAvailabiltyDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_localCameraUIDDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraListDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraOrientationUpdateDidGetSnapshot);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingAvailabilityDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraCinematicFramingEnabledDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraReactionEffectsEnabledDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraStudioLightEnabledDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayConnectedDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_oneToOneModeDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_isTrackingActiveConversationDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_avModeDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_resolvedAudioVideoModeDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_isWaitingOnFirstRemoteFrameDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_activitiesDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_collaborationNoticePosted);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingRequestsChanged);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_podcastRecordingRequestsChanged);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_audioPausedDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_bluetoothAudioFormatChanged);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_callConversationChanged);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipant);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateSensitivityAnalysis);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalMemberAuthorizedToChangeGroupMembership);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalParticipantCameraPosition);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateRecordingLocalVideo);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didFinishWindowResize);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateLocalScreenSharing);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateHasRingingCalls);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateWantsHoldMusic);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didStartVideoForLocalParticipant);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationStateDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationVisibleRemoteParticipantCountDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLetMeInRequestStateDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationIgnoreLetMeInRequestsDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationRejectedParticipantsCountDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didAddPendingParticipant);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didRemovePendingParticipant);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didApprovePendingParticipant);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateParticipantAVMode);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didInviteOtherParticipants);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_cameraPositionDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_groupNameAndPhotoDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_sessionActionNoticePosted);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_secondaryPillStateChanged);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_willTakeMoment);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldPauseOnFirstLocalVideoFrame);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationLinkDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didFailToStartCamera);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_callStatusDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_callSharePlayCapabilityDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_greenTea3PCallStatusChanged);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_pttCallStatusDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipantRequestedVideoUpgrade);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateCaptions);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didToggleCaptions);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_didUpdateIDSCapabilities);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageErrorOccured);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingAvailabilityDidChange);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_isRemoteParticipantEligibleForVideoMessagingBlock);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_fetchUISceneOrientation);
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_enableVideoOnJoin) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_expectingNewLocalCameraPositionFirstFrame) = 0;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isSplitView) = 0;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v452);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v452);
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callWaitingUUIDs) = v111;
  v103 = MEMORY[0x1E69E7CD0];
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsThatHaveReceivedFirstVideoFrame) = MEMORY[0x1E69E7CD0];
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrame) = v103;
  v104 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callUUIDsAwaitingFirstRemoteVideoFrameTasks;
  type metadata accessor for DispatchWorkItem();
  OUTLINED_FUNCTION_316_1();
  *(a24 + v104) = Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v452);
  OUTLINED_FUNCTION_9_33(OBJC_IVAR____TtC15ConversationKit22ConversationController_localVideoRecordingTransactionID);
  v108 = OBJC_IVAR____TtC15ConversationKit22ConversationController_screenSharingSession + a24;
  *v108 = 0u;
  *(v108 + 16) = 0u;
  *(v108 + 32) = 0;
  v109 = OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayObserver;
  static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_24_1();
  v110 = objc_allocWithZone(type metadata accessor for CPCarPlayObserver());
  OUTLINED_FUNCTION_170();
  *(a24 + v109) = CPCarPlayObserver.init(queue:)();
  Date.init()();
  LOBYTE(v111) = v447 - 64;
  v445 = swift_getObjectType();
  v427 = *(v447 + 192);
  v112 = v427();
  specialized Set.count.getter(v112);
  OUTLINED_FUNCTION_173();

  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeEnabledByCallCenter) = v109 == 1;
  v443 = a24;
  *(a24 + OBJC_IVAR____TtC15ConversationKit22ConversationController_mode) = v435;
  v113 = OUTLINED_FUNCTION_325_1();
  v114(v113);
  swift_storeEnumTagMultiPayload();
  UUID.init()();
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_100;
  }

  while (1)
  {
    OUTLINED_FUNCTION_0_1();
    (*(v115 + 592))();
    OUTLINED_FUNCTION_0_1();
    (*(v116 + 168))();
    if (one-time initialization token for default != -1)
    {
      OUTLINED_FUNCTION_289_0();
    }

    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v117 = static Colors.ParticipantGradients.default;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v118, v119, v120, v448);
    v121 = v475;
    v122 = v476;
    OUTLINED_FUNCTION_113_5(v474);
    v123 = *(v122 + 104);

    v123(&v468, v434, v447, v121, v122);
    v425 = v108;
    if (v470)
    {
      __swift_project_boxed_opaque_existential_1(&v468, v470);
      OUTLINED_FUNCTION_15_14();
      v124 = Conversation.isLocalMemberAuthorizedToChangeGroupMembership()();
      __swift_destroy_boxed_opaque_existential_1(&v468);
    }

    else
    {
      outlined destroy of CallControlsService?(&v468, &_s15ConversationKit0A0_pSgMd);
      v124 = 0;
    }

    v417 = type metadata accessor for ParticipantContactDetailsCache();
    v125 = specialized static ParticipantContactDetailsCache.cache(for:)();
    OUTLINED_FUNCTION_297_1();
    v126 = (v446 + v441[9]);
    *(v446 + v441[10]) = 0;
    *(v446 + v441[11]) = MEMORY[0x1E69E7CD0];
    *(v446 + v441[12]) = 0;
    OUTLINED_FUNCTION_89_9();
    _s15ConversationKit11ParticipantVWObTm_8(v437, v446);
    v127 = v438;
    v437 = *(v428 + 32);
    v438 = v428 + 32;
    v437(v446 + v441[5], v127, v452);
    OUTLINED_FUNCTION_489(v446 + v441[6]);
    OUTLINED_FUNCTION_516(v128);
    OUTLINED_FUNCTION_297_1();
    *(v446 + v441[8]) = v117;
    *v126 = 0;
    v126[1] = 0;
    *(v446 + v441[15]) = v124;
    *(v446 + v441[13]) = 0;
    v129 = OUTLINED_FUNCTION_29_5();
    OUTLINED_FUNCTION_115(v129, v130, v448);
    if (v131)
    {
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v132, v133, v134, v432);
      OUTLINED_FUNCTION_7_7();
      __swift_storeEnumTagSinglePayload(v135, v136, v137, v138);
      v153 = v436;
      OUTLINED_FUNCTION_7_7();
      __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
      v143 = *(v448 + 20);
      OUTLINED_FUNCTION_7_7();
      __swift_storeEnumTagSinglePayload(v144, v145, v146, v147);
      OUTLINED_FUNCTION_455();
      OUTLINED_FUNCTION_123_2();
      outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v148, v149, v150);
      outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v416, v436 + v143, &_s10Foundation4DateVSgMd);
      *(v436 + *(v448 + 24)) = 0;
      v151 = OUTLINED_FUNCTION_29_5();
      OUTLINED_FUNCTION_115(v151, v152, v448);
      v108 = v429;
      v154 = v427;
      if (!v131)
      {
        outlined destroy of CallControlsService?(v453, &_s15ConversationKit11ParticipantV13CountdownInfoVSgMd);
      }
    }

    else
    {
      OUTLINED_FUNCTION_24_57();
      v153 = v436;
      _s15ConversationKit11ParticipantVWObTm_8(v453, v436);
      v108 = v429;
      v154 = v427;
    }

    OUTLINED_FUNCTION_24_57();
    v155 = v446;
    _s15ConversationKit11ParticipantVWObTm_8(v153, v446 + v156);
    *(v446 + v441[16]) = v125;
    OUTLINED_FUNCTION_43_30();
    _s15ConversationKit11ParticipantVWObTm_8(v446, v108);
    _s15ConversationKit11ParticipantVWObTm_8(v108, v443 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant);
    v157 = (v154)(v445, v447);
    v158 = specialized Set.count.getter(v157);
    if (v158)
    {
      break;
    }

    v185 = MEMORY[0x1E69E7CC0];
LABEL_41:
    v429 = a22;
    MEMORY[0x1EEE9AC00](v184);
    OUTLINED_FUNCTION_182_5();
    *(v186 - 32) = v433;
    *(v186 - 24) = v474;
    *(v186 - 16) = v434;
    *(v186 - 8) = v447;
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8TUHandleCG_15ConversationKit11ParticipantVs5NeverOTg5(closure #2 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)partial apply, v187, v185);
    OUTLINED_FUNCTION_439();
    *(v443 + OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants) = v108;
    OUTLINED_FUNCTION_179_2(v474, v475);
    v188 = OUTLINED_FUNCTION_5_81();
    v189(v188);
    if (v470)
    {
      v190 = v471;
      OUTLINED_FUNCTION_529(&v468);
      v191 = OUTLINED_FUNCTION_246();
      v193 = v192(v191, v190);
      MEMORY[0x1EEE9AC00](v193);
      OUTLINED_FUNCTION_182_5();
      *(v194 - 32) = v433;
      *(v194 - 24) = v474;
      *(v194 - 16) = v434;
      *(v194 - 8) = v447;
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_15ConversationKit11ParticipantVs5NeverOTg5(closure #3 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)partial apply, v195, v193);
      OUTLINED_FUNCTION_246();

      __swift_destroy_boxed_opaque_existential_1(&v468);
    }

    else
    {
      outlined destroy of CallControlsService?(&v468, &_s15ConversationKit0A0_pSgMd);
      v185 = MEMORY[0x1E69E7CC0];
    }

    *(v443 + OBJC_IVAR____TtC15ConversationKit22ConversationController_otherInvitedParticipants) = v185;
    outlined init with copy of CallCenterProvider(v474, v443 + OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter);
    v196 = (v443 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call);
    *v196 = v434;
    v196[1] = v447;
    outlined init with copy of CallCenterProvider(v473, v443 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantMediaProviderCreator);
    outlined init with copy of CallCenterProvider(v472, v443 + OBJC_IVAR____TtC15ConversationKit22ConversationController_participantCaptionsProviderCreator);
    *(v443 + OBJC_IVAR____TtC15ConversationKit22ConversationController_includeLocalParticipantInVisibleParticipants) = BYTE4(v418) & 1;
    outlined init with copy of CallCenterProvider(v474, &v468);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v197 = *(v443 + v423);
    v198 = swift_unknownObjectRetain_n();
    v199 = specialized BroadcastingState.init(call:callCenter:deviceOrientation:shouldMaintainCameraPosition:)(v198, &v468, v197, 0, v445, v447);
    v200 = v443 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    *v200 = v199;
    *(v200 + 1) = v201;
    v200[16] = v202;
    *(v443 + OBJC_IVAR____TtC15ConversationKit22ConversationController_idsCapabilitiesChecker) = a21;
    v203 = (v443 + OBJC_IVAR____TtC15ConversationKit22ConversationController_defaults);
    *v203 = a22;
    v203[1] = a23;
    outlined init with copy of CallCenterProvider(v474, &v468);
    objc_opt_self();
    OUTLINED_FUNCTION_366();

    swift_unknownObjectRetain();
    v204 = [a23 defaultCenter];
    OUTLINED_FUNCTION_24_1();
    v205 = objc_allocWithZone(type metadata accessor for VideoMessageController());
    VideoMessageController.init(callCenter:notificationCenter:)();
    *(v443 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController) = v206;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v430, &v464, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd);
    if (v466)
    {
      outlined init with take of TapInteractionHandler(&v464, &v468);
    }

    else
    {
      v470 = &type metadata for SingleDisplaySharingSession;
      v471 = &protocol witness table for SingleDisplaySharingSession;
      OUTLINED_FUNCTION_194();
      *&v468 = swift_allocObject();
      OUTLINED_FUNCTION_467(v468);
    }

    LODWORD(v111) = v435;
    OUTLINED_FUNCTION_30_2();
    outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(&v468, v425, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd);
    swift_endAccess();
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v207 = 0;
    if (v200[16] < 0 && v435 == 1)
    {
      OUTLINED_FUNCTION_423_0();
      v208 = OUTLINED_FUNCTION_56_19();
      v210 = v209(v208);
      v207 = [v210 isPreviewRunning];
    }

    *(v443 + OBJC_IVAR____TtC15ConversationKit22ConversationController_keepsPreviewActive) = v207;
    v463.receiver = v443;
    v463.super_class = ObjectType;
    v211 = objc_msgSendSuper2(&v463, sel_init);
    v212 = *&v211[OBJC_IVAR____TtC15ConversationKit22ConversationController_carPlayObserver];
    OUTLINED_FUNCTION_259_1();
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(v213, v214);
    v215 = v211;
    v216 = v212;
    dispatch thunk of CPCarPlayObserver.delegate.setter();

    v217 = v475;
    v218 = v476;
    OUTLINED_FUNCTION_179_2(v474, v475);
    (*(v218 + 104))(&v464, v434, v447, v217, v218);
    if (v466)
    {
      outlined init with take of TapInteractionHandler(&v464, &v468);
      v216 = v215;
      ConversationController.updateIdentityClaimingAssociations(in:)();
      __swift_destroy_boxed_opaque_existential_1(&v468);
    }

    else
    {
      outlined destroy of CallControlsService?(&v464, &_s15ConversationKit0A0_pSgMd);
    }

    OUTLINED_FUNCTION_20();
    v219 = swift_allocObject();
    OUTLINED_FUNCTION_278(v219);
    swift_unknownObjectWeakInit();

    v220 = &v215[OBJC_IVAR____TtC15ConversationKit22ConversationController_isRemoteParticipantEligibleForVideoMessagingBlock];
    OUTLINED_FUNCTION_3_5();
    *v220 = closure #4 in ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)partial apply;
    *(v220 + 1) = v216;

    v221 = OUTLINED_FUNCTION_43_0();
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v221);

    if (v435 - 1 <= 1)
    {
      v222 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantMediaProviderCreator;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      outlined init with copy of CallCenterProvider(&v215[v222], &v468);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit31ParticipantMediaProviderCreator_pMd);
      if (OUTLINED_FUNCTION_518())
      {
        v462 = 0;
        outlined init with take of DefaultParticipantMediaProviderCreator(&v461, &v460);
        swift_unknownObjectWeakAssign();
        v470 = &type metadata for DefaultParticipantMediaProviderCreator;
        v471 = &protocol witness table for DefaultParticipantMediaProviderCreator;
        OUTLINED_FUNCTION_20();
        *&v468 = swift_allocObject();
        outlined init with take of DefaultParticipantMediaProviderCreator(&v460, v468 + 16);
        OUTLINED_FUNCTION_30_2();
        __swift_destroy_boxed_opaque_existential_1(&v215[v222]);
        outlined init with take of TapInteractionHandler(&v468, &v215[v222]);
        swift_endAccess();
      }

      else
      {
        v461 = 0;
        v462 = 1;
        outlined destroy of CallControlsService?(&v461, &_s15ConversationKit38DefaultParticipantMediaProviderCreatorVSgMd);
      }
    }

    v223 = OBJC_IVAR____TtC15ConversationKit22ConversationController_participantCaptionsProviderCreator;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(&v215[v223], &v468);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit34ParticipantCaptionsProviderCreator_pMd);
    if (OUTLINED_FUNCTION_518())
    {
      outlined init with take of DefaultParticipantCaptionsProviderCreator(&v460, v459);
      v459[1] = &protocol witness table for ConversationController;
      swift_unknownObjectWeakAssign();
      v470 = &type metadata for DefaultParticipantCaptionsProviderCreator;
      v471 = &protocol witness table for DefaultParticipantCaptionsProviderCreator;
      OUTLINED_FUNCTION_24();
      *&v468 = swift_allocObject();
      outlined init with take of DefaultParticipantCaptionsProviderCreator(v459, v468 + 16);
      OUTLINED_FUNCTION_30_2();
      __swift_destroy_boxed_opaque_existential_1(&v215[v223]);
      outlined init with take of TapInteractionHandler(&v468, &v215[v223]);
      swift_endAccess();
    }

    else
    {
      v460 = xmmword_1BC4BB7D0;
      outlined destroy of CallControlsService?(&v460, &_s15ConversationKit41DefaultParticipantCaptionsProviderCreatorVSgMd);
    }

    static ParticipantContactDetailsCache.resetAll()();
    v224 = &v215[OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState];
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v453 = v224;
    ConversationController.updateLocalParticipant(with:isChangingExternalCameraUsageOnIPad:)(*v224, *(v224 + 1), v224[16], 2);
    ConversationController.lookupActiveConversation()();
    ConversationController.update(with:)();
    outlined destroy of CallControlsService?(&v468, &_s15ConversationKit0A0_pSgMd);
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    if (Features.nudityDetectionEnabled.getter())
    {
      static SensitiveContentPolicy.prefetch()();
    }

    v225 = &v215[OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter];
    OUTLINED_FUNCTION_30_2();
    v226 = *(v225 + 3);
    v227 = *(v225 + 4);
    v228 = OUTLINED_FUNCTION_208();
    __swift_mutable_project_boxed_opaque_existential_1(v228, v229);
    v230 = *(v227 + 56);
    v231 = v215;
    v230(v211, &protocol witness table for ConversationController, v226, v227);
    swift_endAccess();
    OUTLINED_FUNCTION_0_1();
    v233 = *(v232 + 176);
    v234 = v231;
    OUTLINED_FUNCTION_173();

    v233(v211, &protocol witness table for ConversationController);

    ConversationController.updateIDSStatusForVideoMessaging()();
    ConversationController.setupScreenSharingSessionCallbacks()();
    (*(v447 + 200))(v445);
    OUTLINED_FUNCTION_413_0();
    ConversationController.updateScreenSharingSession(with:)(v235);

    LOBYTE(v225) = ConversationController.updateIsUsingIPadExternalCamera()();
    v236 = OBJC_IVAR____TtC15ConversationKit22ConversationController_isUsingIPadExternalCamera;
    OUTLINED_FUNCTION_3_5();
    v231[v236] = v225 & 1;
    v154 = [a23 defaultCenter];
    v155 = &off_1E7FE9000;
    OUTLINED_FUNCTION_374_0(v154, sel_addObserver_selector_name_object_, v237, sel_handleLocalVideoPreviewFirstFrameArrived_, *MEMORY[0x1E69D90D8]);

    v238 = OUTLINED_FUNCTION_87_9();
    [v238 v239];
    v240 = OUTLINED_FUNCTION_87_9();
    [v240 v241];
    v242 = OUTLINED_FUNCTION_87_9();
    [v242 v243];
    v244 = OUTLINED_FUNCTION_87_9();
    [v244 v245];
    v246 = OUTLINED_FUNCTION_146_4();
    v435 = v231;
    OUTLINED_FUNCTION_374_0(v246, v247, v248, v249, v250);
    if (v111 == 1)
    {
      v251 = OUTLINED_FUNCTION_146_4();
      OUTLINED_FUNCTION_330_0(v251, v252, v253, v254, v255);
      v256 = OUTLINED_FUNCTION_64_18();
      [v256 v257];
      v258 = OUTLINED_FUNCTION_64_18();
      [v258 v259];
      v260 = OUTLINED_FUNCTION_64_18();
      [v260 v261];
      v262 = OUTLINED_FUNCTION_64_18();
      [v262 v263];
      v264 = OUTLINED_FUNCTION_64_18();
      [v264 v265];
      v266 = OUTLINED_FUNCTION_64_18();
      [v266 v267];
      v268 = OUTLINED_FUNCTION_64_18();
      [v268 v269];
      v270 = OUTLINED_FUNCTION_64_18();
      [v270 v271];
      v272 = OUTLINED_FUNCTION_64_18();
      [v272 v273];
    }

    v274 = OUTLINED_FUNCTION_146_4();
    OUTLINED_FUNCTION_330_0(v274, v275, v276, v277, v278);
    v279 = OUTLINED_FUNCTION_64_18();
    [v279 v280];
    v281 = OUTLINED_FUNCTION_64_18();
    [v281 v282];
    v283 = OUTLINED_FUNCTION_64_18();
    [v283 v284];
    v285 = OUTLINED_FUNCTION_64_18();
    [v285 v286];
    if (!v111)
    {
      v287 = OUTLINED_FUNCTION_146_4();
      [v287 v288];
    }

    v289 = OUTLINED_FUNCTION_146_4();
    OUTLINED_FUNCTION_330_0(v289, v290, v291, v292, v293);
    v294 = OUTLINED_FUNCTION_64_18();
    OUTLINED_FUNCTION_442(v294, v295, v296, v297, v298);
    v299 = OUTLINED_FUNCTION_64_18();
    OUTLINED_FUNCTION_442(v299, v300, v301, v302, v303);
    v304 = OUTLINED_FUNCTION_64_18();
    OUTLINED_FUNCTION_442(v304, v305, v306, v307, v308);
    if (Features.nudityDetectionEnabled.getter())
    {
      OUTLINED_FUNCTION_294_0();
      v311 = MEMORY[0x1BFB209B0](v309 + 48, v310 | 0x8000000000000000);
      v312 = OUTLINED_FUNCTION_146_4();
      [v312 v313];
    }

    v314 = OUTLINED_FUNCTION_146_4();
    OUTLINED_FUNCTION_330_0(v314, v315, v316, v317, v318);
    v319 = OUTLINED_FUNCTION_64_18();
    [v319 v320];
    if (static Platform.current.getter() != 3)
    {
      goto LABEL_73;
    }

    if (one-time initialization token for didEndWindowLiveResizeNotification != -1)
    {
      goto LABEL_102;
    }

LABEL_72:
    v321 = OUTLINED_FUNCTION_146_4();
    OUTLINED_FUNCTION_163_3(v321, v322, v323, v324, v325);
    OUTLINED_FUNCTION_294_0();
    v328 = MEMORY[0x1BFB209B0](v326 + 8, v327 | 0x8000000000000000);
    v329 = OUTLINED_FUNCTION_72_14();
    [v329 v330];

LABEL_73:
    v331 = OUTLINED_FUNCTION_146_4();
    OUTLINED_FUNCTION_163_3(v331, v332, v333, v334, v335);
    v336 = OUTLINED_FUNCTION_72_14();
    [v336 v337];
    v338 = OUTLINED_FUNCTION_72_14();
    [v338 v339];
    v340 = OUTLINED_FUNCTION_72_14();
    [v340 v341];
    v342 = OUTLINED_FUNCTION_72_14();
    [v342 v343];
    v344 = OUTLINED_FUNCTION_72_14();
    [v344 v345];
    v346 = OUTLINED_FUNCTION_72_14();
    [v346 v347];
    OUTLINED_FUNCTION_163_3(v154, v155[464], v348, v349, *MEMORY[0x1E69D8D68]);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v350 = swift_allocObject();
    *(v350 + 16) = xmmword_1BC4BB990;
    v351 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_452();
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v352, v353, v354);
    specialized >> prefix<A>(_:)(v421, v355, v356, v357, v358, v359, v360, v361, v415, v416, v417, v418, ObjectType, v420, v421, v423, v425, v154);
    OUTLINED_FUNCTION_254();
    OUTLINED_FUNCTION_172_1();
    outlined destroy of CallControlsService?(v362, v363);
    v364 = MEMORY[0x1E69E6158];
    *(v350 + 56) = MEMORY[0x1E69E6158];
    v365 = lazy protocol witness table accessor for type String and conformance String();
    *(v350 + 64) = v365;
    *(v350 + 32) = v351;
    *(v350 + 40) = v154;
    v366 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    *&v468 = *&v435[v366];
    type metadata accessor for TUConversationState(0);
    v367 = String.init<A>(reflecting:)();
    *(v350 + 96) = v364;
    *(v350 + 104) = v365;
    *(v350 + 72) = v367;
    *(v350 + 80) = v368;
    v369 = *(v453 + 16);
    v468 = *v453;
    v469 = v369;
    v370 = String.init<A>(reflecting:)();
    *(v350 + 136) = v364;
    *(v350 + 144) = v365;
    *(v350 + 112) = v370;
    *(v350 + 120) = v371;
    LOBYTE(v468) = v111;
    v372 = String.init<A>(reflecting:)();
    *(v350 + 176) = v364;
    *(v350 + 184) = v365;
    v423 = v365;
    *(v350 + 152) = v372;
    *(v350 + 160) = v373;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    OUTLINED_FUNCTION_37_22();
    v374 = swift_allocObject();
    v453 = 1;
    *(v374 + 16) = xmmword_1BC4BA940;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
    OUTLINED_FUNCTION_472();
    v448 = v375;
    v376 = swift_allocObject();
    *(v376 + 16) = xmmword_1BC4BA940;
    v377 = OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_1_186();
    _s15ConversationKit11ParticipantVWOcTm_17(&v435[v377], v376 + v366);
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    *&v468 = v376;

    specialized Array.append<A>(contentsOf:)(v378);
    v108 = v468;
    v379 = *(v468 + 16);
    if (!v379)
    {

      v382 = MEMORY[0x1E69E7CC0];
LABEL_90:
      *&v468 = v382;
      v408 = OUTLINED_FUNCTION_15_14();
      __swift_instantiateConcreteTypeFromMangledNameV2(v408);
      OUTLINED_FUNCTION_100_6(&lazy protocol witness table cache variable for type [String] and conformance [A]);
      OUTLINED_FUNCTION_469();
      BidirectionalCollection<>.joined(separator:)();
      OUTLINED_FUNCTION_18_8();

      *&v468 = &v468;
      *(&v468 + 1) = &_sSaySSGMR;
      v409 = MEMORY[0x1E69E6158];
      v410 = String.init<A>(reflecting:)();
      *(v374 + 56) = v409;
      *(v374 + 64) = v423;
      *(v374 + 32) = v410;
      *(v374 + 40) = v411;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      ConversationController.fetchExistingScreenSharingAttributes()();
      OUTLINED_FUNCTION_287();
      if (v131)
      {
        OUTLINED_FUNCTION_423_0();
        v412 = OUTLINED_FUNCTION_56_19();
        v414 = v413(v412);
        [v414 startPreview];
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        outlined destroy of CallControlsService?(v430, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd);
      }

      else
      {
        outlined destroy of CallControlsService?(v430, &_s15ConversationKit28ScreenSharingSessionProvider_pSgMd);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      __swift_destroy_boxed_opaque_existential_1(v472);
      __swift_destroy_boxed_opaque_existential_1(v473);
      (*(v431 + 8))(v433, v432);
      __swift_destroy_boxed_opaque_existential_1(v474);
      OUTLINED_FUNCTION_30_0();
      return;
    }

    v421 = v374;
    v458 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v380 = 0;
    v446 = v108;
    v447 = *(v108 + 16);
    v381 = v108 + v366;
    v382 = v458;
    v443 = (v428 + 16);
    v445 = v379;
    v436 = (v428 + 8);
    v111 = v441;
    while (v447 != v380)
    {
      if (v380 >= *(v108 + 16))
      {
        goto LABEL_96;
      }

      v453 = v458;
      v383 = *(v451 + 48);
      OUTLINED_FUNCTION_1_186();
      _s15ConversationKit11ParticipantVWOcTm_17(v381, v450 + v383);
      *v455 = v380;
      v384 = v455 + *(v451 + 48);
      OUTLINED_FUNCTION_4_150();
      _s15ConversationKit11ParticipantVWObTm_8(v450 + v383, v384);
      *&v468 = v380;
      v456 = dispatch thunk of CustomStringConvertible.description.getter();
      v457 = v385;
      MEMORY[0x1BFB20B10](979659048, 0xE400000000000000);
      v386 = *v443;
      (*v443)(v454, v384 + v111[5], v452);
      v387 = OUTLINED_FUNCTION_54_15();
      v390 = OUTLINED_FUNCTION_526(v387, v388, v389);
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v390, v449, &_s10Foundation4UUIDVSgMd);
      v391 = OUTLINED_FUNCTION_29_5();
      OUTLINED_FUNCTION_115(v391, v392, v452);
      if (v131)
      {
        outlined destroy of CallControlsService?(v449, &_s10Foundation4UUIDVSgMd);
      }

      else
      {
        v437(v439, v449, v452);
        v386(v440, v439, v452);
        OUTLINED_FUNCTION_62_0();
        String.init<A>(reflecting:)();
        v111 = v441;
        (*v436)(v439, v452);
      }

      outlined destroy of CallControlsService?(v454, &_s10Foundation4UUIDVSgMd);
      v393 = OUTLINED_FUNCTION_77_1();
      MEMORY[0x1BFB20B10](v393);

      v394 = OUTLINED_FUNCTION_469();
      MEMORY[0x1BFB20B10](v394);
      v395 = v384 + v111[7];
      v396 = *v395;
      if (*v395)
      {
        v398 = *(v395 + 24);
        v397 = *(v395 + 32);
        v399 = *(v395 + 16);
        v400 = *(v395 + 8);
        *&v468 = v396;
        *(&v468 + 1) = v400;
        v469 = v399 & 1;
        v470 = v398;
        v471 = v397;

        v401 = v396;
        v402 = String.init<A>(reflecting:)();
        v404 = v403;
      }

      else
      {
        v404 = 0xE300000000000000;
        v402 = OUTLINED_FUNCTION_12_96();
      }

      MEMORY[0x1BFB20B10](v402, v404);

      outlined destroy of CallControlsService?(v455, &_sSi6offset_15ConversationKit11ParticipantV7elementtMd);
      v406 = *(v458 + 16);
      v405 = *(v458 + 24);
      if (v406 >= v405 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v405);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      *(v458 + 16) = v406 + 1;
      v407 = v458 + 16 * v406;
      *(v407 + 32) = v456;
      *(v407 + 40) = v457;
      ++v380;
      v381 += v448;
      v108 = v446;
      if (v379 == v380)
      {

        v374 = v421;
        goto LABEL_90;
      }
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    OUTLINED_FUNCTION_0_9();
  }

  v108 = v158;
  v467 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  *&v464 = specialized Set.startIndex.getter(v157);
  *(&v464 + 1) = v159;
  v465 = v160 & 1;
  if (v108 < 0)
  {
    __break(1u);
LABEL_102:
    OUTLINED_FUNCTION_288_0();
    goto LABEL_72;
  }

  v161 = 0;
  v453 = v157 & 0xC000000000000001;
  v162 = v157 & 0xFFFFFFFFFFFFFF8;
  if (v157 < 0)
  {
    v162 = v157;
  }

  v448 = v162;
  v446 = v157 + 56;
  v436 = (v157 + 64);
  while (1)
  {
    v163 = __OFADD__(v161++, 1);
    if (v163)
    {
      __break(1u);
      goto LABEL_95;
    }

    v111 = v464;
    v164 = DWORD2(v464);
    v165 = v465;
    v166 = OUTLINED_FUNCTION_5_81();
    specialized Set.subscript.getter(v166, v167, v165, v157);
    v169 = v168;
    if (TUNormalizedHandleForTUHandle())
    {
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    OUTLINED_FUNCTION_406_0();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v170 = &v467;
    specialized ContiguousArray._endMutation()();
    if (v453)
    {
      break;
    }

    if (v165)
    {
      goto LABEL_104;
    }

    if ((v111 & 0x8000000000000000) != 0)
    {
      goto LABEL_97;
    }

    OUTLINED_FUNCTION_484();
    if (v171 == v163)
    {
      goto LABEL_97;
    }

    if (((*(v446 + 8 * (v111 >> 6)) >> v111) & 1) == 0)
    {
      goto LABEL_98;
    }

    if (*(v157 + 36) != v164)
    {
      goto LABEL_99;
    }

    OUTLINED_FUNCTION_482();
    if (v131)
    {
      v174 = v172 << 6;
      v175 = v172 + 1;
      v176 = &v436[v172];
      while (v175 < (&v470 + 7) >> 6)
      {
        v178 = *v176++;
        v177 = v178;
        v174 += 64;
        ++v175;
        if (v178)
        {
          v179 = OUTLINED_FUNCTION_5_81();
          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v179, v180, 0);
          v170 = (__clz(__rbit64(v177)) + v174);
          goto LABEL_37;
        }
      }

      v181 = OUTLINED_FUNCTION_5_81();
      outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v181, v182, 0);
    }

    else
    {
      OUTLINED_FUNCTION_481();
    }

LABEL_37:
    v183 = *(v157 + 36);
    *&v464 = v170;
    *(&v464 + 1) = v183;
    v465 = 0;
LABEL_38:
    if (v161 == v108)
    {

      v184 = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v464, *(&v464 + 1), v465);
      v185 = v467;
      goto LABEL_41;
    }
  }

  if (v165)
  {
    OUTLINED_FUNCTION_5_81();
    if (__CocoaSet.Index.handleBitPattern.getter())
    {
      swift_isUniquelyReferenced_nonNull_native();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd);
    v173 = Set.Index._asCocoa.modify();
    __CocoaSet.formIndex(after:isUnique:)();
    v173(&v468, 0);
    goto LABEL_38;
  }

  __break(1u);
LABEL_104:
  __break(1u);
}

void specialized ConversationController.__allocating_init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, uint64_t a22, objc_class *a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_29();
  v52 = v27;
  v53 = v28;
  v56 = v29;
  v55 = v30;
  v54 = v31;
  v33 = v32;
  v35 = v34;
  v51 = v36;
  v37 = objc_allocWithZone(a23);
  v38 = *(v35 + 24);
  v39 = *(v35 + 32);
  v40 = OUTLINED_FUNCTION_44_0();
  __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
  OUTLINED_FUNCTION_31_1();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_1_7();
  (*(v43 + 16))(v25);
  v44 = *(v33 + 24);
  v45 = *(v33 + 32);
  v46 = OUTLINED_FUNCTION_209();
  __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_24_5();
  (*(v49 + 16))(v26);
  specialized ConversationController.init(activeCall:callCenter:participantMediaProviderCreator:participantCaptionsProviderCreator:includeLocalParticipantInVisibleParticipants:screenSharingSession:mode:idsCapabilitiesChecker:defaults:)(v51, a25, v52, v25, v26, v54, v55, v56, v53, a21, a22, v37, v38, v44, v39, v45);
  v50 = OUTLINED_FUNCTION_173();
  __swift_destroy_boxed_opaque_existential_1(v50);
  __swift_destroy_boxed_opaque_existential_1(v35);
  OUTLINED_FUNCTION_30_0();
}

void specialized ConversationController.migrate(to:with:isUpgrade:)(void *a1, char *a2, int a3, char *a4)
{
  v290 = a3;
  v300 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v288 = *(v6 - 8);
  v289 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v286 = &v280 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = type metadata accessor for DispatchQoS();
  v285 = *(v287 - 8);
  MEMORY[0x1EEE9AC00](v287);
  v284 = &v280 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = type metadata accessor for UUID();
  v298 = *(v295 - 8);
  MEMORY[0x1EEE9AC00](v295);
  v293 = &v280 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v294 = &v280 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v280 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v302 = &v280 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v297 = &v280 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v280 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v280 - v24;
  v301 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall);
  v26 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID;
  swift_beginAccess();
  v291 = a4;
  v283 = v26;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(&a4[v26], v25, &_s10Foundation4UUIDVSgMd);
  v27 = a1[3];
  v28 = a1[4];
  v299 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  (*(v28 + 8))(v27, v28);
  v29 = v295;
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v295);
  v30 = *(v13 + 56);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v25, v15, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v22, &v15[v30], &_s10Foundation4UUIDVSgMd);
  if (__swift_getEnumTagSinglePayload(v15, 1, v29) != 1)
  {
    v34 = v297;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v15, v297, &_s10Foundation4UUIDVSgMd);
    if (__swift_getEnumTagSinglePayload(&v15[v30], 1, v29) != 1)
    {
      v107 = v298;
      v108 = v294;
      (*(v298 + 32))(v294, &v15[v30], v29);
      lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      LODWORD(v296) = dispatch thunk of static Equatable.== infix(_:_:)();
      v109 = *(v107 + 8);
      v109(v108, v29);
      outlined destroy of CallControlsService?(v22, &_s10Foundation4UUIDVSgMd);
      outlined destroy of CallControlsService?(v25, &_s10Foundation4UUIDVSgMd);
      v109(v34, v29);
      outlined destroy of CallControlsService?(v15, &_s10Foundation4UUIDVSgMd);
      v32 = v302;
      v33 = v300;
      if ((v296 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_34;
    }

    outlined destroy of CallControlsService?(v22, &_s10Foundation4UUIDVSgMd);
    outlined destroy of CallControlsService?(v25, &_s10Foundation4UUIDVSgMd);
    (*(v298 + 8))(v34, v29);
    v32 = v302;
LABEL_6:
    outlined destroy of CallControlsService?(v15, &_s10Foundation4UUIDVSg_ADtMd);
    goto LABEL_7;
  }

  outlined destroy of CallControlsService?(v22, &_s10Foundation4UUIDVSgMd);
  outlined destroy of CallControlsService?(v25, &_s10Foundation4UUIDVSgMd);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v15[v30], 1, v29);
  v32 = v302;
  v33 = v300;
  if (EnumTagSinglePayload != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of CallControlsService?(v15, &_s10Foundation4UUIDVSgMd);
LABEL_34:
  v110 = &v291[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
  swift_beginAccess();
  v111 = *(v110 + 1);
  ObjectType = swift_getObjectType();
  v113 = *(v111 + 56);
  swift_unknownObjectRetain();
  v114 = v113(ObjectType, v111);
  v116 = v115;
  swift_unknownObjectRelease();
  v117 = [v33 callUUID];
  v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v120 = v119;

  if (v114 == v118 && v116 == v120)
  {

    goto LABEL_41;
  }

  v122 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v122)
  {
LABEL_41:
    v123 = *(v110 + 1);
    v124 = swift_getObjectType();
    v125 = *(v123 + 56);
    swift_unknownObjectRetain();
    v126 = v125(v124, v123);
    v128 = v127;
    swift_unknownObjectRelease();
    v129 = [v33 callUUID];
    v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v132 = v131;

    if (v126 == v130 && v128 == v132)
    {

      v135 = 0;
    }

    else
    {
      v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v135 = v134 ^ 1;
    }

    v136 = v299;
    v137 = v291;
    if (one-time initialization token for conversationController != -1)
    {
      swift_once();
    }

    v138 = type metadata accessor for Logger();
    __swift_project_value_buffer(v138, static Logger.conversationController);
    outlined init with copy of CallCenterProvider(v136, &v304);
    v139 = v137;
    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      LODWORD(v302) = v135;
      v144 = v143;
      v312[0] = v143;
      *v142 = 136315650;
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v137 + v283, v32, &_s10Foundation4UUIDVSgMd);
      specialized >> prefix<A>(_:)(v32, v145, v146, v147, v148, v149, v150, v151, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289);
      v153 = v152;
      v154 = v32;
      v156 = v155;
      outlined destroy of CallControlsService?(v154, &_s10Foundation4UUIDVSgMd);
      v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v156, v312);

      *(v142 + 4) = v157;
      *(v142 + 12) = 2080;
      v158 = v306;
      v159 = v307;
      __swift_project_boxed_opaque_existential_1(&v304, v306);
      (*(v159 + 1))(v158, v159);
      __swift_storeEnumTagSinglePayload(v154, 0, 1, v295);
      specialized >> prefix<A>(_:)(v154, v160, v161, v162, v163, v164, v165, v166, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289);
      v168 = v167;
      v170 = v169;
      outlined destroy of CallControlsService?(v154, &_s10Foundation4UUIDVSgMd);
      __swift_destroy_boxed_opaque_existential_1(&v304);
      v171 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v170, v312);

      *(v142 + 14) = v171;
      *(v142 + 22) = 2080;
      LOBYTE(v310) = v302 & 1;
      v172 = String.init<A>(reflecting:)();
      v174 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v173, v312);

      *(v142 + 24) = v174;
      _os_log_impl(&dword_1BBC58000, v140, v141, "Unable to migrate from conversation uuid %s to %s. Calls differ: %s.", v142, 0x20u);
      swift_arrayDestroy();
      v175 = v144;
LABEL_54:
      MEMORY[0x1BFB23DF0](v175, -1, -1);
      MEMORY[0x1BFB23DF0](v142, -1, -1);

      return;
    }

LABEL_55:

    __swift_destroy_boxed_opaque_existential_1(&v304);
    return;
  }

LABEL_7:
  v35 = v299;
  if ((v290 & 1) == 0)
  {
    if (one-time initialization token for conversationController != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    v37 = __swift_project_value_buffer(v36, static Logger.conversationController);
    v38 = v291;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    v41 = os_log_type_enabled(v39, v40);
    v282 = v38;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v312[0] = v43;
      *v42 = 136315394;
      LOBYTE(v304) = v38[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
      v44 = String.init<A>(reflecting:)();
      v46 = v38;
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v312);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2080;
      v48 = OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
      swift_beginAccess();
      v304 = *&v46[v48];
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd);
      v49 = String.init<A>(reflecting:)();
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v312);

      *(v42 + 14) = v51;
      _os_log_impl(&dword_1BBC58000, v39, v40, "%s Going to migrate from oldCall: %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v43, -1, -1);
      MEMORY[0x1BFB23DF0](v42, -1, -1);
    }

    v52 = v300;
    v281 = v37;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v312[0] = v56;
      *v55 = 136315138;
      *&v304 = v52;
      *(&v304 + 1) = v301;
      v57 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd);
      v58 = String.init<A>(reflecting:)();
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v312);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_1BBC58000, v53, v54, "... to newCall: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x1BFB23DF0](v56, -1, -1);
      MEMORY[0x1BFB23DF0](v55, -1, -1);
    }

    v61 = v282;
    v62 = &v282[OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter];
    swift_beginAccess();
    v63 = *(v62 + 3);
    v64 = *(v62 + 4);
    v300 = v62;
    v65 = __swift_project_boxed_opaque_existential_1(v62, v63);
    v66 = *(v63 - 8);
    v67 = MEMORY[0x1EEE9AC00](v65);
    v69 = &v280 - v68;
    (*(v66 + 16))(&v280 - v68, v67);
    v70 = (*(v64 + 24))(v63, v64);
    (*(v66 + 8))(v69, v63);
    v71 = [v70 currentVideoCalls];
    swift_unknownObjectRelease();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v73 = specialized Array.count.getter(v72);
    if (v73)
    {
      if (v73 < 1)
      {
        __break(1u);
        return;
      }

      v292 = 0;
      v74 = 0;
      v296 = v72 & 0xC000000000000001;
      v297 = v73;
      v75 = (v298 + 8);
      v298 = v72;
      do
      {
        if (v296)
        {
          v76 = MEMORY[0x1BFB22010](v74, v72);
        }

        else
        {
          v76 = *(v72 + 8 * v74 + 32);
        }

        v77 = v76;
        outlined init with copy of CallCenterProvider(v300, v312);
        v78 = v314;
        __swift_project_boxed_opaque_existential_1(v312, v313);
        v79 = *(v78 + 104);
        v80 = v77;
        v79(&v304);

        __swift_destroy_boxed_opaque_existential_1(v312);
        outlined init with copy of IDView<AvatarStackView, [UUID]>(&v304, &v310, &_s15ConversationKit0A0_pSgMd);
        if (v311)
        {
          outlined init with take of TapInteractionHandler(&v310, v312);
          v81 = v313;
          v82 = v314;
          __swift_project_boxed_opaque_existential_1(v312, v313);
          v83 = v294;
          (*(v82 + 8))(v81, v82);
          v84 = v299[3];
          v85 = v299[4];
          __swift_project_boxed_opaque_existential_1(v299, v84);
          v86 = v293;
          (*(v85 + 8))(v84, v85);
          v87 = static UUID.== infix(_:_:)();
          v88 = *v75;
          v89 = v86;
          v90 = v295;
          (*v75)(v89, v295);
          v88(v83, v90);
          outlined destroy of CallControlsService?(&v304, &_s15ConversationKit0A0_pSgMd);
          v32 = v302;
          if (v87)
          {

            __swift_destroy_boxed_opaque_existential_1(v312);
            v292 = v80;
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(v312);
          }
        }

        else
        {
          outlined destroy of CallControlsService?(&v304, &_s15ConversationKit0A0_pSgMd);

          outlined destroy of CallControlsService?(&v310, &_s15ConversationKit0A0_pSgMd);
          v32 = v302;
        }

        v72 = v298;
        ++v74;
      }

      while (v297 != v74);

      v61 = v282;
      if (v292)
      {
        v91 = *&v282[OBJC_IVAR____TtC15ConversationKit22ConversationController_featureFlags];
        v92 = v292;
        if (([v91 sessionBasedMutingEnabled] & 1) == 0)
        {
          v93 = &v61[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
          swift_beginAccess();
          v94 = *(v93 + 1);
          v95 = swift_getObjectType();
          v96 = *(v94 + 208);
          swift_unknownObjectRetain();
          v97 = v96(v95, v94);
          v61 = v282;
          LODWORD(v94) = v97;
          swift_unknownObjectRelease();
          if (v94 != 6)
          {
            type metadata accessor for PlaceholderCall();
            if (!swift_dynamicCastClass())
            {
              v98 = *(v93 + 1);
              v99 = swift_getObjectType();
              v100 = *(v98 + 376);
              swift_unknownObjectRetain();
              v101 = v100(v99, v98);
              v61 = v282;
              LOBYTE(v98) = v101;
              swift_unknownObjectRelease();
              [v92 setUplinkMuted_];
            }
          }
        }

        v102 = &v61[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
        swift_beginAccess();
        v103 = v301;
        *v102 = v92;
        *(v102 + 1) = v103;
        swift_unknownObjectRelease();
        v104 = *(v102 + 1);
        v105 = swift_getObjectType();
        v106 = *(v104 + 328);
        swift_unknownObjectRetain();
        LOBYTE(v104) = v106(v105, v104);
        swift_unknownObjectRelease();
        if (v104)
        {
          ConversationController.startLocalVideo(allowVideoUpgrade:)(1);
        }

        else
        {
          ConversationController.stopLocalVideo()();
        }

        v209 = *(v102 + 1);
        v210 = swift_getObjectType();
        v211 = swift_unknownObjectRetain();
        specialized ConversationController.updateAudioState(with:)(v211, v61, v210, v209);
        swift_unknownObjectRelease();

        v35 = v299;
        goto LABEL_58;
      }
    }

    else
    {
    }

    outlined init with copy of CallCenterProvider(v299, &v304);
    v176 = v61;
    v140 = Logger.logObject.getter();
    v177 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v140, v177))
    {
      v142 = swift_slowAlloc();
      v302 = swift_slowAlloc();
      v312[0] = v302;
      *v142 = 136315650;
      LOBYTE(v310) = v176[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
      v178 = String.init<A>(reflecting:)();
      v180 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v178, v179, v312);

      *(v142 + 4) = v180;
      *(v142 + 12) = 2080;
      outlined init with copy of IDView<AvatarStackView, [UUID]>(&v291[v283], v32, &_s10Foundation4UUIDVSgMd);
      specialized >> prefix<A>(_:)(v32, v181, v182, v183, v184, v185, v186, v187, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289);
      v189 = v188;
      v190 = v32;
      v192 = v191;
      outlined destroy of CallControlsService?(v190, &_s10Foundation4UUIDVSgMd);
      v193 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v189, v192, v312);

      *(v142 + 14) = v193;
      *(v142 + 22) = 2080;
      v194 = v306;
      v195 = v307;
      __swift_project_boxed_opaque_existential_1(&v304, v306);
      (*(v195 + 1))(v194, v195);
      __swift_storeEnumTagSinglePayload(v190, 0, 1, v295);
      specialized >> prefix<A>(_:)(v190, v196, v197, v198, v199, v200, v201, v202, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289);
      v204 = v203;
      v206 = v205;
      outlined destroy of CallControlsService?(v190, &_s10Foundation4UUIDVSgMd);
      __swift_destroy_boxed_opaque_existential_1(&v304);
      v207 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v204, v206, v312);

      *(v142 + 24) = v207;
      _os_log_impl(&dword_1BBC58000, v140, v177, "%s Unable to migration from conversation uuid %s to %s because cannot find call with same backing conversation", v142, 0x20u);
      v208 = v302;
      swift_arrayDestroy();
      v175 = v208;
      goto LABEL_54;
    }

    goto LABEL_55;
  }

LABEL_58:
  if (one-time initialization token for conversationController != -1)
  {
    swift_once();
  }

  v212 = type metadata accessor for Logger();
  __swift_project_value_buffer(v212, static Logger.conversationController);
  outlined init with copy of CallCenterProvider(v35, &v304);
  v213 = v291;
  v214 = v291;
  v215 = Logger.logObject.getter();
  v216 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v215, v216))
  {
    v217 = swift_slowAlloc();
    v301 = swift_slowAlloc();
    v309[0] = v301;
    *v217 = 136315650;
    v303 = v214[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
    v218 = String.init<A>(reflecting:)();
    v220 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v218, v219, v309);

    *(v217 + 4) = v220;
    *(v217 + 12) = 2080;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(&v213[v283], v302, &_s10Foundation4UUIDVSgMd);
    specialized >> prefix<A>(_:)(v302, v221, v222, v223, v224, v225, v226, v227, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289);
    v229 = v228;
    v231 = v230;
    outlined destroy of CallControlsService?(v302, &_s10Foundation4UUIDVSgMd);
    v232 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v229, v231, v309);

    *(v217 + 14) = v232;
    *(v217 + 22) = 2080;
    v234 = v306;
    v233 = v307;
    __swift_project_boxed_opaque_existential_1(&v304, v306);
    (*(v233 + 1))(v234, v233);
    v235 = v295;
    __swift_storeEnumTagSinglePayload(v302, 0, 1, v295);
    specialized >> prefix<A>(_:)(v302, v236, v237, v238, v239, v240, v241, v242, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289);
    v244 = v243;
    v246 = v245;
    v32 = v302;
    outlined destroy of CallControlsService?(v302, &_s10Foundation4UUIDVSgMd);
    __swift_destroy_boxed_opaque_existential_1(&v304);
    v247 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v244, v246, v309);

    *(v217 + 24) = v247;
    _os_log_impl(&dword_1BBC58000, v215, v216, "%s Migrating conversation UUID from %s to %s", v217, 0x20u);
    v248 = v301;
    swift_arrayDestroy();
    v35 = v299;
    MEMORY[0x1BFB23DF0](v248, -1, -1);
    MEMORY[0x1BFB23DF0](v217, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v304);
    v235 = v295;
  }

  v249 = v35[3];
  v250 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v249);
  (*(v250 + 8))(v249, v250);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v235);
  ConversationController.conversationUUID.setter(v32);
  v251 = v35[3];
  v252 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v251);
  v253 = (*(v252 + 56))(v251, v252);
  ConversationController.conversationState.setter(v253);
  v254 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v255 = *(*&v214[v254] + 16);
  ConversationController.removeAllParticipants()();
  v256 = MEMORY[0x1E69E7CC0];
  if ((v290 & 1) == 0 || (v257 = v35[3], v258 = v35[4], __swift_project_boxed_opaque_existential_1(v35, v257), v259 = (*(v258 + 88))(v257, v258), v260 = specialized Set.count.getter(v259), , v255 == v260))
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v261 = static OS_dispatch_queue.main.getter();
    v262 = swift_allocObject();
    *(v262 + 16) = v214;
    v307 = closure #1 in ConversationController.migrate(to:with:isUpgrade:)partial apply;
    v308 = v262;
    *&v304 = MEMORY[0x1E69E9820];
    *(&v304 + 1) = 1107296256;
    v305 = thunk for @escaping @callee_guaranteed () -> ();
    v306 = &block_descriptor_1157;
    v263 = _Block_copy(&v304);
    v264 = v214;

    v265 = v284;
    static DispatchQoS.unspecified.getter();
    *&v304 = v256;
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v35 = v299;
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v266 = v286;
    v267 = v289;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v265, v266, v263);
    _Block_release(v263);

    v268 = v267;
    v256 = MEMORY[0x1E69E7CC0];
    (*(v288 + 8))(v266, v268);
    (*(v285 + 8))(v265, v287);
  }

  ConversationController.createNewParticipants(with:)(v35);
  ConversationController.updateRemoteParticipantsStates(with:)(v35);
  ConversationController.updateRemoteParticipantsNames(with:)(v35);
  ConversationController.updateLocalMemberAuthorizedToChangeGroupMembership(with:)(v35);
  ConversationController.updateOtherInvitedParticipants()();
  v269 = ConversationController.isOneToOneModeEnabled.getter() & 1;
  v270 = v35[3];
  v271 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v270);
  if (v269 != ((*(v271 + 200))(v270, v271) & 1))
  {
    v272 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(&v214[v272], &v304);
    ConversationController.callCenter(_:oneToOneModeChangedFor:)();
    __swift_destroy_boxed_opaque_existential_1(&v304);
  }

  outlined init with copy of CallCenterProvider(v35, &v304);
  ConversationController.mostRecentActiveConversation.setter();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v273 = static OS_dispatch_queue.main.getter();
  v274 = swift_allocObject();
  *(v274 + 16) = v214;
  v307 = closure #2 in ConversationController.migrate(to:with:isUpgrade:)partial apply;
  v308 = v274;
  *&v304 = MEMORY[0x1E69E9820];
  *(&v304 + 1) = 1107296256;
  v305 = thunk for @escaping @callee_guaranteed () -> ();
  v306 = &block_descriptor_1164;
  v275 = _Block_copy(&v304);
  v276 = v214;

  v277 = v284;
  static DispatchQoS.unspecified.getter();
  *&v304 = v256;
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v278 = v286;
  v279 = v289;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v277, v278, v275);
  _Block_release(v275);

  (*(v288 + 8))(v278, v279);
  (*(v285 + 8))(v277, v287);
}

void specialized ConversationController.migrate(to:with:isUpgrade:)(void *a1, uint64_t a2, int a3, char *a4, unint64_t a5, uint64_t a6)
{
  v300 = a6;
  v298 = a5;
  v291 = a3;
  v302 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v288 = *(v8 - 8);
  v289 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v286 = &v280 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = type metadata accessor for DispatchQoS();
  v285 = *(v287 - 8);
  MEMORY[0x1EEE9AC00](v287);
  v284 = &v280 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v299 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v294 = &v280 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v295 = &v280 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v280 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v290 = &v280 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v297 = &v280 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v280 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v280 - v27;
  v29 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationUUID;
  swift_beginAccess();
  v292 = a4;
  v283 = v29;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(&a4[v29], v28, &_s10Foundation4UUIDVSgMd);
  v31 = a1[3];
  v30 = a1[4];
  v301 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  (*(v30 + 8))(v31, v30);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v11);
  v32 = *(v16 + 56);
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v28, v18, &_s10Foundation4UUIDVSgMd);
  v33 = v11;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v25, &v18[v32], &_s10Foundation4UUIDVSgMd);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v11);
  v296 = v11;
  if (EnumTagSinglePayload != 1)
  {
    v39 = v297;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(v18, v297, &_s10Foundation4UUIDVSgMd);
    if (__swift_getEnumTagSinglePayload(&v18[v32], 1, v33) != 1)
    {
      v110 = v299;
      v111 = v295;
      (*(v299 + 32))(v295, &v18[v32], v33);
      lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      LODWORD(v293) = dispatch thunk of static Equatable.== infix(_:_:)();
      v112 = *(v110 + 8);
      v112(v111, v33);
      outlined destroy of CallControlsService?(v25, &_s10Foundation4UUIDVSgMd);
      outlined destroy of CallControlsService?(v28, &_s10Foundation4UUIDVSgMd);
      v112(v39, v33);
      outlined destroy of CallControlsService?(v18, &_s10Foundation4UUIDVSgMd);
      v36 = v292;
      v37 = v302;
      v38 = v298;
      if ((v293 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_34;
    }

    outlined destroy of CallControlsService?(v25, &_s10Foundation4UUIDVSgMd);
    outlined destroy of CallControlsService?(v28, &_s10Foundation4UUIDVSgMd);
    (*(v299 + 8))(v39, v33);
    v36 = v292;
LABEL_6:
    outlined destroy of CallControlsService?(v18, &_s10Foundation4UUIDVSg_ADtMd);
    v37 = v302;
    goto LABEL_7;
  }

  outlined destroy of CallControlsService?(v25, &_s10Foundation4UUIDVSgMd);
  outlined destroy of CallControlsService?(v28, &_s10Foundation4UUIDVSgMd);
  v35 = __swift_getEnumTagSinglePayload(&v18[v32], 1, v11);
  v36 = v292;
  if (v35 != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of CallControlsService?(v18, &_s10Foundation4UUIDVSgMd);
  v37 = v302;
  v38 = v298;
LABEL_34:
  v113 = &v36[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
  swift_beginAccess();
  v114 = *(v113 + 1);
  ObjectType = swift_getObjectType();
  v116 = *(v114 + 56);
  swift_unknownObjectRetain();
  v117 = v116(ObjectType, v114);
  v119 = v118;
  swift_unknownObjectRelease();
  v120 = *(v300 + 56);
  if (v117 == v120(v38) && v119 == v121)
  {

    goto LABEL_41;
  }

  v123 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v123)
  {
LABEL_41:
    v124 = *(v113 + 1);
    v125 = swift_getObjectType();
    v126 = *(v124 + 56);
    swift_unknownObjectRetain();
    v127 = v126(v125, v124);
    v129 = v128;
    swift_unknownObjectRelease();
    if (v127 == (v120)(v38, v300) && v129 == v130)
    {

      v133 = 0;
    }

    else
    {
      v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v133 = v132 ^ 1;
    }

    v134 = v301;
    v135 = v290;
    v136 = v292;
    if (one-time initialization token for conversationController != -1)
    {
      swift_once();
    }

    v137 = type metadata accessor for Logger();
    __swift_project_value_buffer(v137, static Logger.conversationController);
    outlined init with copy of CallCenterProvider(v134, &v304);
    v138 = v136;
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      LODWORD(v302) = v133;
      v143 = v142;
      v312[0] = v142;
      *v141 = 136315650;
      outlined init with copy of IDView<AvatarStackView, [UUID]>(&v136[v283], v135, &_s10Foundation4UUIDVSgMd);
      specialized >> prefix<A>(_:)(v135, v144, v145, v146, v147, v148, v149, v150, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289);
      v152 = v151;
      v154 = v153;
      outlined destroy of CallControlsService?(v135, &_s10Foundation4UUIDVSgMd);
      v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v154, v312);

      *(v141 + 4) = v155;
      *(v141 + 12) = 2080;
      v156 = v306;
      v157 = v307;
      __swift_project_boxed_opaque_existential_1(&v304, v306);
      (*(v157 + 1))(v156, v157);
      __swift_storeEnumTagSinglePayload(v135, 0, 1, v296);
      specialized >> prefix<A>(_:)(v135, v158, v159, v160, v161, v162, v163, v164, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289);
      v166 = v165;
      v168 = v167;
      outlined destroy of CallControlsService?(v135, &_s10Foundation4UUIDVSgMd);
      __swift_destroy_boxed_opaque_existential_1(&v304);
      v169 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v166, v168, v312);

      *(v141 + 14) = v169;
      *(v141 + 22) = 2080;
      LOBYTE(v310) = v302 & 1;
      v170 = String.init<A>(reflecting:)();
      v172 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v170, v171, v312);

      *(v141 + 24) = v172;
      _os_log_impl(&dword_1BBC58000, v139, v140, "Unable to migrate from conversation uuid %s to %s. Calls differ: %s.", v141, 0x20u);
      swift_arrayDestroy();
      v173 = v143;
LABEL_54:
      MEMORY[0x1BFB23DF0](v173, -1, -1);
      MEMORY[0x1BFB23DF0](v141, -1, -1);

      return;
    }

LABEL_55:

    __swift_destroy_boxed_opaque_existential_1(&v304);
    return;
  }

LABEL_7:
  v40 = v301;
  if ((v291 & 1) == 0)
  {
    if (one-time initialization token for conversationController != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    v42 = __swift_project_value_buffer(v41, static Logger.conversationController);
    v43 = v36;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    v46 = os_log_type_enabled(v44, v45);
    v282 = v43;
    if (v46)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v312[0] = v48;
      *v47 = 136315394;
      LOBYTE(v304) = v43[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
      v49 = String.init<A>(reflecting:)();
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v312);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2080;
      v52 = OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
      swift_beginAccess();
      v304 = *&v43[v52];
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd);
      v53 = String.init<A>(reflecting:)();
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v312);

      *(v47 + 14) = v55;
      _os_log_impl(&dword_1BBC58000, v44, v45, "%s Going to migrate from oldCall: %s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v48, -1, -1);
      MEMORY[0x1BFB23DF0](v47, -1, -1);
    }

    v56 = v296;
    swift_unknownObjectRetain();
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    v59 = os_log_type_enabled(v57, v58);
    v281 = v42;
    if (v59)
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v312[0] = v61;
      *v60 = 136315138;
      *&v304 = v37;
      *(&v304 + 1) = v300;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit4Call_pMd);
      v62 = String.init<A>(reflecting:)();
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v312);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_1BBC58000, v57, v58, "... to newCall: %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x1BFB23DF0](v61, -1, -1);
      MEMORY[0x1BFB23DF0](v60, -1, -1);
    }

    v65 = &v282[OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter];
    swift_beginAccess();
    v66 = *(v65 + 3);
    v67 = *(v65 + 4);
    v302 = v65;
    v68 = __swift_project_boxed_opaque_existential_1(v65, v66);
    v69 = *(v66 - 8);
    v70 = MEMORY[0x1EEE9AC00](v68);
    v72 = &v280 - v71;
    (*(v69 + 16))(&v280 - v71, v70);
    v73 = (*(v67 + 24))(v66, v67);
    (*(v69 + 8))(v72, v66);
    v74 = [v73 currentVideoCalls];
    swift_unknownObjectRelease();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    v75 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v76 = specialized Array.count.getter(v75);
    if (v76)
    {
      if (v76 < 1)
      {
        __break(1u);
        return;
      }

      v293 = 0;
      v77 = 0;
      v78 = (v299 + 8);
      v300 = v75;
      v298 = v75 & 0xC000000000000001;
      v299 = v76;
      do
      {
        if (v298)
        {
          v79 = MEMORY[0x1BFB22010](v77, v75);
        }

        else
        {
          v79 = *(v75 + 8 * v77 + 32);
        }

        v80 = v79;
        outlined init with copy of CallCenterProvider(v302, v312);
        v81 = v314;
        __swift_project_boxed_opaque_existential_1(v312, v313);
        v82 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type TUCall and conformance TUCall, &lazy cache variable for type metadata for TUCall);
        v83 = *(v81 + 104);
        v84 = v80;
        v297 = v82;
        v83(&v304);

        __swift_destroy_boxed_opaque_existential_1(v312);
        outlined init with copy of IDView<AvatarStackView, [UUID]>(&v304, &v310, &_s15ConversationKit0A0_pSgMd);
        if (v311)
        {
          outlined init with take of TapInteractionHandler(&v310, v312);
          v85 = v313;
          v86 = v314;
          __swift_project_boxed_opaque_existential_1(v312, v313);
          v87 = v295;
          (*(v86 + 8))(v85, v86);
          v88 = v301[3];
          v89 = v301[4];
          __swift_project_boxed_opaque_existential_1(v301, v88);
          v90 = v294;
          (*(v89 + 8))(v88, v89);
          v91 = static UUID.== infix(_:_:)();
          v92 = *v78;
          v93 = v90;
          v94 = v296;
          (*v78)(v93, v296);
          v92(v87, v94);
          outlined destroy of CallControlsService?(&v304, &_s15ConversationKit0A0_pSgMd);
          if (v91)
          {

            __swift_destroy_boxed_opaque_existential_1(v312);
            v293 = v84;
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(v312);
          }
        }

        else
        {
          outlined destroy of CallControlsService?(&v304, &_s15ConversationKit0A0_pSgMd);

          outlined destroy of CallControlsService?(&v310, &_s15ConversationKit0A0_pSgMd);
        }

        v75 = v300;
        ++v77;
      }

      while (v299 != v77);

      v56 = v296;
      if (v293)
      {
        v95 = v282;
        v96 = *&v282[OBJC_IVAR____TtC15ConversationKit22ConversationController_featureFlags];
        v97 = v293;
        if (([v96 sessionBasedMutingEnabled] & 1) == 0)
        {
          v98 = &v95[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
          swift_beginAccess();
          v99 = *(v98 + 1);
          v100 = swift_getObjectType();
          v101 = *(v99 + 208);
          swift_unknownObjectRetain();
          LODWORD(v99) = v101(v100, v99);
          swift_unknownObjectRelease();
          if (v99 != 6)
          {
            type metadata accessor for PlaceholderCall();
            if (!swift_dynamicCastClass())
            {
              v102 = *(v98 + 1);
              v103 = swift_getObjectType();
              v104 = *(v102 + 376);
              swift_unknownObjectRetain();
              LOBYTE(v102) = v104(v103, v102);
              swift_unknownObjectRelease();
              [v97 setUplinkMuted_];
            }
          }
        }

        v105 = &v95[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
        swift_beginAccess();
        v106 = v297;
        *v105 = v97;
        *(v105 + 1) = v106;
        swift_unknownObjectRelease();
        v107 = *(v105 + 1);
        v108 = swift_getObjectType();
        v109 = *(v107 + 328);
        swift_unknownObjectRetain();
        LOBYTE(v107) = v109(v108, v107);
        swift_unknownObjectRelease();
        if (v107)
        {
          ConversationController.startLocalVideo(allowVideoUpgrade:)(1);
        }

        else
        {
          ConversationController.stopLocalVideo()();
        }

        v40 = v301;
        v36 = v292;
        v208 = *(v105 + 1);
        v209 = swift_getObjectType();
        v210 = swift_unknownObjectRetain();
        specialized ConversationController.updateAudioState(with:)(v210, v95, v209, v208);
        swift_unknownObjectRelease();

        goto LABEL_58;
      }
    }

    else
    {
    }

    outlined init with copy of CallCenterProvider(v301, &v304);
    v174 = v282;
    v139 = Logger.logObject.getter();
    v175 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v139, v175))
    {
      v141 = swift_slowAlloc();
      v302 = swift_slowAlloc();
      v312[0] = v302;
      *v141 = 136315650;
      LOBYTE(v310) = v174[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
      v176 = String.init<A>(reflecting:)();
      v178 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v176, v177, v312);

      *(v141 + 4) = v178;
      *(v141 + 12) = 2080;
      v179 = v56;
      v180 = v290;
      outlined init with copy of IDView<AvatarStackView, [UUID]>(&v292[v283], v290, &_s10Foundation4UUIDVSgMd);
      specialized >> prefix<A>(_:)(v180, v181, v182, v183, v184, v185, v186, v187, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289);
      v189 = v188;
      v191 = v190;
      outlined destroy of CallControlsService?(v180, &_s10Foundation4UUIDVSgMd);
      v192 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v189, v191, v312);

      *(v141 + 14) = v192;
      *(v141 + 22) = 2080;
      v193 = v306;
      v194 = v307;
      __swift_project_boxed_opaque_existential_1(&v304, v306);
      (*(v194 + 1))(v193, v194);
      __swift_storeEnumTagSinglePayload(v180, 0, 1, v179);
      specialized >> prefix<A>(_:)(v180, v195, v196, v197, v198, v199, v200, v201, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289);
      v203 = v202;
      v205 = v204;
      outlined destroy of CallControlsService?(v180, &_s10Foundation4UUIDVSgMd);
      __swift_destroy_boxed_opaque_existential_1(&v304);
      v206 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v203, v205, v312);

      *(v141 + 24) = v206;
      _os_log_impl(&dword_1BBC58000, v139, v175, "%s Unable to migration from conversation uuid %s to %s because cannot find call with same backing conversation", v141, 0x20u);
      v207 = v302;
      swift_arrayDestroy();
      v173 = v207;
      goto LABEL_54;
    }

    goto LABEL_55;
  }

LABEL_58:
  if (one-time initialization token for conversationController != -1)
  {
    swift_once();
  }

  v211 = type metadata accessor for Logger();
  __swift_project_value_buffer(v211, static Logger.conversationController);
  outlined init with copy of CallCenterProvider(v40, &v304);
  v212 = v36;
  v213 = Logger.logObject.getter();
  v214 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v213, v214))
  {
    v215 = swift_slowAlloc();
    v302 = swift_slowAlloc();
    v309[0] = v302;
    *v215 = 136315650;
    v303 = v212[OBJC_IVAR____TtC15ConversationKit22ConversationController_mode];
    v216 = String.init<A>(reflecting:)();
    v218 = v36;
    v219 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v216, v217, v309);

    *(v215 + 4) = v219;
    *(v215 + 12) = 2080;
    v220 = v290;
    outlined init with copy of IDView<AvatarStackView, [UUID]>(&v218[v283], v290, &_s10Foundation4UUIDVSgMd);
    specialized >> prefix<A>(_:)(v220, v221, v222, v223, v224, v225, v226, v227, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289);
    v229 = v228;
    v231 = v230;
    outlined destroy of CallControlsService?(v220, &_s10Foundation4UUIDVSgMd);
    v232 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v229, v231, v309);

    *(v215 + 14) = v232;
    *(v215 + 22) = 2080;
    v234 = v306;
    v233 = v307;
    __swift_project_boxed_opaque_existential_1(&v304, v306);
    (*(v233 + 1))(v234, v233);
    __swift_storeEnumTagSinglePayload(v220, 0, 1, v296);
    specialized >> prefix<A>(_:)(v220, v235, v236, v237, v238, v239, v240, v241, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289);
    v243 = v242;
    v245 = v244;
    v246 = v296;
    outlined destroy of CallControlsService?(v220, &_s10Foundation4UUIDVSgMd);
    __swift_destroy_boxed_opaque_existential_1(&v304);
    v247 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v243, v245, v309);

    *(v215 + 24) = v247;
    _os_log_impl(&dword_1BBC58000, v213, v214, "%s Migrating conversation UUID from %s to %s", v215, 0x20u);
    v248 = v302;
    swift_arrayDestroy();
    v40 = v301;
    MEMORY[0x1BFB23DF0](v248, -1, -1);
    MEMORY[0x1BFB23DF0](v215, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v304);
    v220 = v290;
    v246 = v296;
  }

  v249 = v40[3];
  v250 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v249);
  (*(v250 + 8))(v249, v250);
  __swift_storeEnumTagSinglePayload(v220, 0, 1, v246);
  ConversationController.conversationUUID.setter(v220);
  v251 = v40[3];
  v252 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v251);
  v253 = (*(v252 + 56))(v251, v252);
  ConversationController.conversationState.setter(v253);
  v254 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v255 = *(*&v212[v254] + 16);
  ConversationController.removeAllParticipants()();
  v256 = MEMORY[0x1E69E7CC0];
  if ((v291 & 1) == 0 || (v257 = v40[3], v258 = v40[4], __swift_project_boxed_opaque_existential_1(v40, v257), v259 = (*(v258 + 88))(v257, v258), v260 = specialized Set.count.getter(v259), , v255 == v260))
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v261 = static OS_dispatch_queue.main.getter();
    v262 = swift_allocObject();
    *(v262 + 16) = v212;
    v307 = partial apply for closure #1 in ConversationController.migrate(to:with:isUpgrade:);
    v308 = v262;
    *&v304 = MEMORY[0x1E69E9820];
    *(&v304 + 1) = 1107296256;
    v305 = thunk for @escaping @callee_guaranteed () -> ();
    v306 = &block_descriptor_1138;
    v263 = _Block_copy(&v304);
    v264 = v212;

    v265 = v284;
    static DispatchQoS.unspecified.getter();
    *&v304 = v256;
    lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v40 = v301;
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v266 = v286;
    v267 = v289;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v265, v266, v263);
    _Block_release(v263);

    v268 = v267;
    v256 = MEMORY[0x1E69E7CC0];
    (*(v288 + 8))(v266, v268);
    (*(v285 + 8))(v265, v287);
  }

  ConversationController.createNewParticipants(with:)(v40);
  ConversationController.updateRemoteParticipantsStates(with:)(v40);
  ConversationController.updateRemoteParticipantsNames(with:)(v40);
  ConversationController.updateLocalMemberAuthorizedToChangeGroupMembership(with:)(v40);
  ConversationController.updateOtherInvitedParticipants()();
  v269 = ConversationController.isOneToOneModeEnabled.getter() & 1;
  v270 = v40[3];
  v271 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v270);
  if (v269 != ((*(v271 + 200))(v270, v271) & 1))
  {
    v272 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
    swift_beginAccess();
    outlined init with copy of CallCenterProvider(&v212[v272], &v304);
    ConversationController.callCenter(_:oneToOneModeChangedFor:)();
    __swift_destroy_boxed_opaque_existential_1(&v304);
  }

  outlined init with copy of CallCenterProvider(v40, &v304);
  ConversationController.mostRecentActiveConversation.setter();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v273 = static OS_dispatch_queue.main.getter();
  v274 = swift_allocObject();
  *(v274 + 16) = v212;
  v307 = partial apply for closure #2 in ConversationController.migrate(to:with:isUpgrade:);
  v308 = v274;
  *&v304 = MEMORY[0x1E69E9820];
  *(&v304 + 1) = 1107296256;
  v305 = thunk for @escaping @callee_guaranteed () -> ();
  v306 = &block_descriptor_1144;
  v275 = _Block_copy(&v304);
  v276 = v212;

  v277 = v284;
  static DispatchQoS.unspecified.getter();
  *&v304 = v256;
  lazy protocol witness table accessor for type ConversationController and conformance ConversationController(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v278 = v286;
  v279 = v289;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v277, v278, v275);
  _Block_release(v275);

  (*(v288 + 8))(v278, v279);
  (*(v285 + 8))(v277, v287);
}

uint64_t lazy protocol witness table accessor for type ConversationController and conformance ConversationController(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in ConversationController.resetRecordingVideoMessage(completion:)()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_5_0(v5);

  return closure #1 in ConversationController.resetRecordingVideoMessage(completion:)(v7, v8, v9, v1, v2, v3);
}

uint64_t partial apply for closure #1 in ConversationController.saveRecordedVideoMessage()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_0(v2);

  return closure #1 in ConversationController.saveRecordedVideoMessage()(v4, v5, v6, v0);
}

uint64_t partial apply for closure #1 in ConversationController.discardRecordedVideoMessage()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_0(v2);

  return closure #1 in ConversationController.discardRecordedVideoMessage()(v4, v5, v6, v0);
}

uint64_t objectdestroy_26Tm_0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_4_48();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in ConversationController.pauseRecordingVideoMessage()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_0(v2);

  return closure #1 in ConversationController.pauseRecordingVideoMessage()(v4, v5, v6, v0);
}

uint64_t partial apply for closure #1 in ConversationController.startRecordingVideoMessage()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_0(v2);

  return closure #1 in ConversationController.startRecordingVideoMessage()(v4, v5, v6, v0);
}

uint64_t partial apply for closure #1 in ConversationController.startCountdownToRecordVideoMessage(withDuration:countdownTicker:countdownStopped:)()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_2(v6);
  *v7 = v8;
  v7[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);
  OUTLINED_FUNCTION_172_1();

  return closure #1 in ConversationController.startCountdownToRecordVideoMessage(withDuration:countdownTicker:countdownStopped:)(v9, v10, v11, v1, v2, v3, v4, v5);
}

uint64_t partial apply for closure #1 in ConversationController.stopRecordingVideoMessage()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_225();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_5_0(v2);

  return closure #1 in ConversationController.stopRecordingVideoMessage()(v4, v5, v6, v0);
}

uint64_t objectdestroy_22Tm_1(void (*a1)(void))
{
  a1(*(v1 + 16));

  OUTLINED_FUNCTION_4_48();

  return swift_deallocObject();
}

uint64_t objectdestroy_128Tm()
{
  OUTLINED_FUNCTION_4_48();

  return swift_deallocObject();
}

uint64_t objectdestroy_241Tm()
{
  type metadata accessor for Notification();
  OUTLINED_FUNCTION_15_1();
  v2 = OUTLINED_FUNCTION_14_5();
  v3(v2);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ConversationController.ControlsMode and conformance ConversationController.ControlsMode()
{
  result = lazy protocol witness table cache variable for type ConversationController.ControlsMode and conformance ConversationController.ControlsMode;
  if (!lazy protocol witness table cache variable for type ConversationController.ControlsMode and conformance ConversationController.ControlsMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationController.ControlsMode and conformance ConversationController.ControlsMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationController.OneToOneModeChangeSource and conformance ConversationController.OneToOneModeChangeSource()
{
  result = lazy protocol witness table cache variable for type ConversationController.OneToOneModeChangeSource and conformance ConversationController.OneToOneModeChangeSource;
  if (!lazy protocol witness table cache variable for type ConversationController.OneToOneModeChangeSource and conformance ConversationController.OneToOneModeChangeSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationController.OneToOneModeChangeSource and conformance ConversationController.OneToOneModeChangeSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationController.CameraStartPolicy and conformance ConversationController.CameraStartPolicy()
{
  result = lazy protocol witness table cache variable for type ConversationController.CameraStartPolicy and conformance ConversationController.CameraStartPolicy;
  if (!lazy protocol witness table cache variable for type ConversationController.CameraStartPolicy and conformance ConversationController.CameraStartPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationController.CameraStartPolicy and conformance ConversationController.CameraStartPolicy);
  }

  return result;
}

void type metadata completion function for ConversationController()
{
  type metadata accessor for Participant(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for (activeConversation: Conversation, participant: Participant, notice: TUConversationNotice)?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID?();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for (activeConversation: Conversation, participant: Participant, notice: TUConversationNotice)?()
{
  if (!lazy cache variable for type metadata for (activeConversation: Conversation, participant: Participant, notice: TUConversationNotice)?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit0A0_p06activeA0_AA11ParticipantV11participantSo20TUConversationNoticeC6noticetMd);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (activeConversation: Conversation, participant: Participant, notice: TUConversationNotice)?);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ConversationController.ControlsMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ConversationController.OneToOneModeChangeSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

void type metadata completion function for ConversationController.ParticipantInfo()
{
  type metadata accessor for Participant(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for (Participant, Int)();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (Participant, Int)()
{
  if (!lazy cache variable for type metadata for (Participant, Int))
  {
    type metadata accessor for Participant(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Participant, Int));
    }
  }
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned CNKDeviceOrientation?)@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t _sSbIegd_SbIegr_TRTA_0@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Call) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Conversation, @in_guaranteed Activity, @in_guaranteed TUConversationActivitySessionApplicationState) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6 = a3;
  return v4(a1, a2, &v6);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Conversation, @in_guaranteed Participant, @in_guaranteed TUConversationNotice, @in_guaranteed TUScreenShareDeviceFamily?) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = *(v5 + 16);
  v10 = a3;
  v8 = a4;
  v9 = a5 & 1;
  return v6(a1, a2, &v10, &v8);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Conversation, @in_guaranteed Data?) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[0] = a2;
  v6[1] = a3;
  return v4(a1, v6);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @in_guaranteed CameraPosition) -> (@out ())(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed TUConversationState, @in_guaranteed TUConversationState) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CameraPosition) -> (@out ())(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @in_guaranteed SCSensitivityAnalysis?) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @in_guaranteed BroadcastingState) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v7[0] = a2;
  v7[1] = a3;
  v8 = a4;
  return v5(a1, v7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Participant, @in_guaranteed Float) -> (@out ())(uint64_t a1, float a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t partial apply for closure #1 in ConversationController.handleLocalSensitiveContentAnalysisChanged(_:)(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v3 = a1(0);
  OUTLINED_FUNCTION_9_0(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(v2 + v8, v9);
}

void specialized ConversationController.updateAudioState(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  (*(a4 + 376))(a3, a4);
  ConversationController.broadcastingState.setter();
}

uint64_t objectdestroy_122Tm()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for Participant(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  type metadata accessor for Participant.State(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 5u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v4 + 8))(v0 + v2);
      break;
    case 4u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v18 + 8))(v0 + v2);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v20 = v3 + *(v19 + 48);

      if (*(v20 + 120) >= 2uLL)
      {
        __swift_destroy_boxed_opaque_existential_1(v20 + 96);
      }

      if (*(v20 + 312))
      {
        swift_unknownObjectRelease();
      }

      if (*(v3 + *(v19 + 64) + 8))
      {
      }

      break;
    default:
      break;
  }

  v5 = v1[5];
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_15_1();
  (*(v6 + 8))(v3 + v5);
  v7 = (v3 + v1[7]);
  if (*v7)
  {
  }

  v8 = v3 + v1[14];
  v9 = type metadata accessor for Date();
  v10 = OUTLINED_FUNCTION_60_16();
  if (!__swift_getEnumTagSinglePayload(v10, v11, v9))
  {
    OUTLINED_FUNCTION_2_3();
    v12 = OUTLINED_FUNCTION_40_2();
    v13(v12);
  }

  v14 = *(type metadata accessor for Participant.CountdownInfo(0) + 20);
  if (!__swift_getEnumTagSinglePayload(v8 + v14, 1, v9))
  {
    OUTLINED_FUNCTION_2_3();
    (*(v15 + 8))(v8 + v14, v9);
  }

  OUTLINED_FUNCTION_30_0();

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in ConversationController.updateBuzzedMember(_:)(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = a1(0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(v5, v6);
}

uint64_t _s15ConversationKit11ParticipantVWOdTm_0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

id OUTLINED_FUNCTION_163_3(id a1, SEL a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_219_2()
{

  return outlined destroy of CallControlsService?(v1 - 160, v0);
}

uint64_t OUTLINED_FUNCTION_271_4()
{

  return swift_getObjectType();
}

void OUTLINED_FUNCTION_282_2()
{

  JUMPOUT(0x1BFB23DF0);
}

uint64_t OUTLINED_FUNCTION_283_2(unint64_t *a1, unint64_t *a2)
{

  return lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(a1, a2);
}

uint64_t OUTLINED_FUNCTION_287_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_288_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_289_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_299_0()
{

  return os_log(_:dso:log:type:_:)();
}

uint64_t OUTLINED_FUNCTION_300_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_318_0(uint64_t result)
{
  v3[8] = result;
  v3[4] = v1;
  v3[5] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_335()
{

  return outlined init with take of TapInteractionHandler((v0 - 160), v0 - 120);
}

double OUTLINED_FUNCTION_336@<D0>(uint64_t a1@<X8>)
{
  *(v1 - 104) = 1;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_355_0()
{

  return os_log(_:dso:log:type:_:)();
}

uint64_t OUTLINED_FUNCTION_363_0()
{
}

id OUTLINED_FUNCTION_374_0(id a1, SEL a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_375_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_382_0()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_384_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{

  return outlined init with take of TapInteractionHandler(&a9, &a13);
}

uint64_t OUTLINED_FUNCTION_386_0(char a1)
{
  *(v3 + 96) = v2;
  *(v3 + 104) = v4;
  *(v3 + 72) = a1 & 1;
  *(v3 + 136) = v2;
  *(v3 + 144) = v4;
  *(v3 + 112) = v1 & 1;

  return static os_log_type_t.default.getter();
}

uint64_t OUTLINED_FUNCTION_387_0()
{

  return String.init<A>(reflecting:)();
}

void OUTLINED_FUNCTION_388_0()
{

  ConversationController.lookupActiveConversation()();
}

uint64_t OUTLINED_FUNCTION_391_0(uint64_t a1)
{
  *(v1 - 168) = a1;

  return type metadata accessor for UUID();
}

uint64_t OUTLINED_FUNCTION_416(uint64_t result)
{
  v1[8] = result;
  v1[4] = v2;
  v1[5] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_434()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_436(void *a1)
{
  v6 = *(v4 - 72);

  _os_log_impl(a1, v6, v2, v1, v3, 0xCu);
}

uint64_t OUTLINED_FUNCTION_437()
{

  return String.init<A>(reflecting:)();
}

uint64_t OUTLINED_FUNCTION_438()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_439()
{
}

uint64_t OUTLINED_FUNCTION_440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 184) = a5;
  *(v6 - 176) = a6;
  *(v6 - 200) = a3;
  *(v6 - 192) = a4;

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_441()
{

  return outlined destroy of CallControlsService?(v0, v1);
}

id OUTLINED_FUNCTION_442(id a1, SEL a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_447()
{

  return swift_getObjectType();
}

__n128 OUTLINED_FUNCTION_464(__n128 *a1)
{
  result = v1[4];
  a1[1] = result;
  return result;
}

double OUTLINED_FUNCTION_466@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

double OUTLINED_FUNCTION_467(_OWORD *a1)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_488(uint64_t result)
{
  v2[8] = result;
  v2[4] = v1;
  v2[5] = v3;
  return result;
}

void OUTLINED_FUNCTION_489(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 1) = 257;
  *(a1 + 3) = 0;
}

void OUTLINED_FUNCTION_493()
{
  v1[12] = v4;
  v1[13] = v3;
  v1[9] = v0;
  v1[10] = v2;
}

__n128 *OUTLINED_FUNCTION_498(__n128 *result, __n128 a2)
{
  result[1] = a2;
  *(v3 - 128) = (v2 ^ 1) & 1;
  return result;
}

void OUTLINED_FUNCTION_510(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 64) = v3;
  *(v2 + 32) = a1 & 1;

  ConversationController.isLocallySharingScreen.getter();
}

id OUTLINED_FUNCTION_513(uint64_t a1)
{
  v3[8] = a1;
  v3[4] = v2;
  v3[5] = v4;
  *(v5 - 160) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_514()
{
  v3 = *(v1 - 440);

  return _s15ConversationKit11ParticipantVWOcTm_17(v0, v3);
}

uint64_t OUTLINED_FUNCTION_515()
{
}

void *OUTLINED_FUNCTION_516@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 4) = v1;
  v4 = *v2;

  return outlined consume of Participant.RemoteIdentifiers?(v4);
}

uint64_t OUTLINED_FUNCTION_517()
{

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_518()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_520()
{

  return outlined init with copy of CallCenterProvider(v0 - 152, v0 - 216);
}

uint64_t OUTLINED_FUNCTION_521()
{

  return os_log(_:dso:log:type:_:)();
}

unint64_t OUTLINED_FUNCTION_522(uint64_t a1, unint64_t a2)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, (v2 + 400));
}

uint64_t OUTLINED_FUNCTION_524()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_525(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, __int128);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);

  return outlined init with take of TapInteractionHandler(va, va1);
}

uint64_t OUTLINED_FUNCTION_528()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_530()
{

  return swift_unknownObjectRelease();
}

void OUTLINED_FUNCTION_531(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  specialized >> prefix<A>(_:)(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t NoticeViewModel.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NoticeViewModel() + 36);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for NoticeViewModel()
{
  result = type metadata singleton initialization cache for NoticeViewModel;
  if (!type metadata singleton initialization cache for NoticeViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NoticeViewModel.primaryAction.getter()
{
  type metadata accessor for NoticeViewModel();

  return OUTLINED_FUNCTION_46();
}

uint64_t NoticeViewModel.secondaryAction.getter()
{
  type metadata accessor for NoticeViewModel();

  return OUTLINED_FUNCTION_46();
}

uint64_t NoticeViewModel.init(title:subtitle:image:primaryActionTitle:secondaryActionTitle:uuid:needsIconBleedAdjustment:type:primaryAction:secondaryAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  *(a9 + 8) = a10;
  v18 = type metadata accessor for NoticeViewModel();
  v19 = v18[9];
  v20 = type metadata accessor for UUID();
  result = (*(*(v20 - 8) + 32))(&a9[v19], a11, v20);
  a9[v18[10]] = a12;
  *&a9[v18[11]] = a13;
  v22 = &a9[v18[12]];
  *v22 = a14;
  *(v22 + 1) = a15;
  v23 = &a9[v18[13]];
  *v23 = a16;
  *(v23 + 1) = a17;
  return result;
}

uint64_t CNKNoticeRecipe.viewModelWithPrimaryAction(_:andSecondaryAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v8 = [v5 title];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v10;
  v29 = v9;

  v11 = [v5 subtitle];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = [v5 image];
  v15 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v5, &selRef_primaryActionTitle);
  v17 = v16;
  v18 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v5, &selRef_secondaryActionTitle);
  v20 = v19;
  v21 = [v5 uuid];
  v22 = type metadata accessor for NoticeViewModel();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = [v6 type];
  *a5 = v29;
  a5[1] = v28;
  a5[2] = v27;
  a5[3] = v13;
  a5[4] = v14;
  a5[5] = v15;
  a5[6] = v17;
  a5[7] = v18;
  a5[8] = v20;
  *(a5 + v22[10]) = 1;
  *(a5 + v22[11]) = v23;
  v24 = (a5 + v22[12]);
  *v24 = a1;
  v24[1] = a2;
  v25 = (a5 + v22[13]);
  *v25 = a3;
  v25[1] = a4;
}

void type metadata completion function for NoticeViewModel()
{
  type metadata accessor for UIImage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CNKNoticeType(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for ()();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  **(*(a1 + 64) + 40) = a2;
  return MEMORY[0x1EEE6DEE0]();
}

{
  v4 = *(*(a1 + 64) + 40);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 32))(v4, a2, v5);

  return MEMORY[0x1EEE6DEE0](a1);
}

uint64_t specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a1 + 64) + 40);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
  return MEMORY[0x1EEE6DEE0]();
}

uint64_t CKContainerSetupInfo.collaborationInitiator.getter()
{
  OUTLINED_FUNCTION_24_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd);
  OUTLINED_FUNCTION_22(v1);
  *(v0 + 16) = swift_task_alloc();
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = CKContainerSetupInfo.collaborationInitiator.getter;

  return CKContainerSetupInfo.userNameAndEmail.getter();
}

{
  OUTLINED_FUNCTION_3_165();
  v7 = v6;
  OUTLINED_FUNCTION_14_1();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_14_1();
  *v10 = v9;

  if (v1)
  {

    OUTLINED_FUNCTION_69();

    __asm { BRAA            X1, X16 }
  }

  v7[4] = v5;
  v7[5] = v4;
  v7[6] = v2;
  v7[7] = v0;
  OUTLINED_FUNCTION_8_107();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

id _SWPendingCollaboration.collaborationInitiator.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v8 = &v18 - v7;
  v9 = [v0 collaborationMetadata];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 initiatorNameComponents];

    if (v11)
    {
      static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = type metadata accessor for PersonNameComponents();
      v13 = 0;
    }

    else
    {
      v12 = type metadata accessor for PersonNameComponents();
      v13 = 1;
    }

    __swift_storeEnumTagSinglePayload(v4, v13, 1, v12);
    outlined init with take of PersonNameComponents?(v4, v8);
  }

  else
  {
    v14 = type metadata accessor for PersonNameComponents();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  }

  v15 = [v0 collaborationMetadata];
  if (v15)
  {
    outlined bridged method (ob) of @objc _SWCollaborationMetadata.initiatorHandle.getter(v15);
  }

  v16 = objc_allocWithZone(MEMORY[0x1E69D8AF0]);
  return OUTLINED_FUNCTION_4_151();
}

uint64_t URL.collaborationInitiator.getter()
{
  OUTLINED_FUNCTION_24_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd);
  OUTLINED_FUNCTION_22(v1);
  *(v0 + 16) = swift_task_alloc();
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = URL.collaborationInitiator.getter;

  return URL.userNameAndEmail.getter();
}

{
  OUTLINED_FUNCTION_3_165();
  v7 = v6;
  OUTLINED_FUNCTION_14_1();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_14_1();
  *v10 = v9;

  if (v1)
  {

    OUTLINED_FUNCTION_69();

    __asm { BRAA            X1, X16 }
  }

  v7[4] = v5;
  v7[5] = v4;
  v7[6] = v2;
  v7[7] = v0;
  OUTLINED_FUNCTION_8_107();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  PersonNameComponents.init(formattedName:)(v0[7], v0[6], v3);
  v4 = objc_allocWithZone(MEMORY[0x1E69D8AF0]);
  v5 = @nonobjc TUCollaborationInitiator.init(nameComponents:handle:)(v3, v2, v1);

  v6 = v0[1];

  return v6(v5);
}

id SWShareableContent.collaborationInitiator.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd);
  v2 = OUTLINED_FUNCTION_22(v1);
  *&v3 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v5 = &v12 - v4;
  v6 = [v0 initiatorNameComponents];
  if (v6)
  {
    v7 = v6;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = type metadata accessor for PersonNameComponents();
    v9 = 0;
  }

  else
  {
    v8 = type metadata accessor for PersonNameComponents();
    v9 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v9, 1, v8);
  outlined bridged method (pb) of @objc SWShareableContent.initiatorHandle.getter(v0);
  v10 = objc_allocWithZone(MEMORY[0x1E69D8AF0]);
  return OUTLINED_FUNCTION_4_151();
}

uint64_t CKContainerSetupInfo.userNameAndEmail.getter()
{
  *(v1 + 176) = v0;
  return OUTLINED_FUNCTION_1_187();
}

{
  v1 = v0[22];
  v2 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = CKContainerSetupInfo.userNameAndEmail.getter;
  swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySS_SSts5Error_pGMd);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_0_223();
  [v2 userNameAndEmail:0 containerSetupInfo:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = CKContainerSetupInfo.userNameAndEmail.getter;
  }

  else
  {
    v5 = CKContainerSetupInfo.userNameAndEmail.getter;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));
}

{
  OUTLINED_FUNCTION_9();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSString?, @unowned NSString?, @unowned NSError?) -> () with result type (String, String)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v5, a4);
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v5, v7, v9, v11, v10);
}

uint64_t URL.userNameAndEmail.getter()
{
  *(v1 + 176) = v0;
  return OUTLINED_FUNCTION_1_187();
}

{
  v1 = objc_opt_self();
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v0[23] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = URL.userNameAndEmail.getter;
  swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySS_SSts5Error_pGMd);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_0_223();
  [v1 userNameAndEmail:v4 containerSetupInfo:0 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 192) = v4;
  if (v4)
  {
    v5 = URL.userNameAndEmail.getter;
  }

  else
  {
    v5 = URL.userNameAndEmail.getter;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);

  v5 = *(v0 + 8);

  return v5(v2, v1, v3, v4);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 184);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t outlined bridged method (pb) of @objc SWShareableContent.initiatorHandle.getter(void *a1)
{
  v1 = [a1 initiatorHandle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc _SWCollaborationMetadata.initiatorHandle.getter(void *a1)
{
  v2 = [a1 initiatorHandle];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

char *SystemApertureIncomingCallControlsView.init(recipe:controlsManager:menuHostViewController:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v121 = a4;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  v116 = &v109 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsActionOSgMd);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  v114 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v111 = &v109 - v17;
  v119 = type metadata accessor for ConversationControlsAction();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_17();
  v115 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v120 = &v109 - v22;
  v23 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_features;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_11_2();
    swift_once();
  }

  v24 = static Features.shared;
  *&v5[v23] = static Features.shared;
  *&v5[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_leadingView] = 0;
  v25 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_primaryLabel;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UILabel);
  v26 = objc_opt_self();
  v27 = *MEMORY[0x1E69DB970];
  v28 = v24;
  v29 = [v26 systemFontOfSize:16.67 weight:v27];
  v30 = objc_opt_self();
  v125.value.super.isa = [v30 whiteColor];
  UILabel.init(font:textColor:)(v31, v29, v125);
  v113 = v25;
  *&v5[v25] = v32;
  *&v5[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryBadge] = 0;
  v33 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel;
  type metadata accessor for BadgedLabel();
  *&v5[v33] = BadgedLabel.__allocating_init(font:textColor:badge:)([v26 systemFontOfSize_], objc_msgSend(v30, sel_secondaryLabelColor));
  *&v5[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_alternatingLabelController] = 0;
  *&v5[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_focusButton] = 0;
  v34 = &v5[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_menuHostViewController];
  *&v5[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_menuHostViewController + 8] = 0;
  swift_unknownObjectWeakInit();
  v118 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_context;
  v5[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_context] = 0;
  *&v5[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_cnkContentAlpha] = 0x3FF0000000000000;
  outlined init with copy of ConversationControlsRecipe(a1, &v5[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_recipe]);
  v35 = a2;
  *&v5[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_controlsManager] = a2;
  swift_beginAccess();
  *(v34 + 1) = v121;
  v122 = a3;
  swift_unknownObjectWeakAssign();
  v112 = type metadata accessor for ConversationControlsRecipe();
  v36 = *(v112 + 60);
  v117 = a1;
  v37 = a1 + v36;
  v39 = *v37;
  v38 = *(v37 + 8);
  v40 = *(v37 + 40);
  if ((v40 & 0x80000000) != 0)
  {
    v46 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    OUTLINED_FUNCTION_17_71();
    outlined copy of ConversationControlsRecipe.Actions(v41, v42, v43, v44, v45);
    v46 = v39;
  }

  v47 = v111;
  specialized Collection.first.getter(v46, v111);
  v109 = v38;
  OUTLINED_FUNCTION_17_71();
  outlined copy of ConversationControlsRecipe.Actions?(v48, v49, v50, v51, v52, v53);
  v54 = v47;
  v55 = v35;

  v56 = v119;
  if (__swift_getEnumTagSinglePayload(v54, 1, v119) == 1)
  {
    v57 = v120;
    static ConversationControlsAction.rejectCall(controlsManager:)(v55, v120);
    if (__swift_getEnumTagSinglePayload(v54, 1, v56) != 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v54, &_s15ConversationKit0A14ControlsActionOSgMd);
    }
  }

  else
  {
    v57 = v120;
    outlined init with take of ConversationControlsAction(v54, v120);
  }

  OUTLINED_FUNCTION_25_55();
  v120 = v55;
  ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
  v59 = v58;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v124, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd);
  OUTLINED_FUNCTION_2_172();
  outlined destroy of ConversationControlsAction(v57, v60);
  *&v5[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_rejectButton] = v59;
  if (v40 <= 0xFFFFFFFD)
  {
    if ((v40 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_17_71();
    outlined consume of ConversationControlsRecipe.Actions?(v61, v62, v63, v64, v65, v66);
  }

  v39 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v67 = v120;
  v68 = v114;
  specialized BidirectionalCollection.last.getter(v39);

  v69 = v119;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v68, 1, v119);
  v71 = v117;
  v72 = v115;
  v73 = v112;
  if (EnumTagSinglePayload == 1)
  {
    static ConversationControlsAction.acceptCall(controlsManager:)(v67, v115);
    if (__swift_getEnumTagSinglePayload(v68, 1, v69) != 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v68, &_s15ConversationKit0A14ControlsActionOSgMd);
    }
  }

  else
  {
    outlined init with take of ConversationControlsAction(v68, v115);
  }

  OUTLINED_FUNCTION_25_55();
  ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
  v75 = v74;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v124, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd);
  OUTLINED_FUNCTION_2_172();
  outlined destroy of ConversationControlsAction(v72, v76);
  *&v5[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_acceptButton] = v75;
  [*&v5[v113] setAttributedText_];
  v77 = type metadata accessor for SystemApertureIncomingCallControlsView();
  v123.receiver = v5;
  v123.super_class = v77;
  v78 = objc_msgSendSuper2(&v123, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v79 = v116;
  __swift_storeEnumTagSinglePayload(v116, 1, 1, v73);
  SystemApertureIncomingCallControlsView.updateLeadingView(fromPreviousRecipe:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v79, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  v80 = SystemApertureIncomingCallControlsView.updateSecondaryBadge()();
  SystemApertureIncomingCallControlsView.updateSecondaryLabel()(v80, v81, v82, v83, v84, v85, v86, v87, v109, ObjectType, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120);
  v88 = SystemApertureIncomingCallControlsView.updateGameControllerContext(animated:)(0);
  v89 = (*((*MEMORY[0x1E69E7D40] & *v67) + 0x340))(v88);
  if (v89)
  {
    v90 = v89;
    v91 = v78;
    specialized GameControllerManager.addResponder(_:)();
  }

  v92 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel;
  v93 = [*&v78[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel] layer];
  v94 = *(v71 + *(v73 + 64));
  [v93 setAllowsHitTesting_];

  v95 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_primaryLabel;
  v96 = [*&v78[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_primaryLabel] layer];
  [v96 setAllowsHitTesting_];

  [*&v78[v92] setUserInteractionEnabled_];
  [*&v78[v95] setUserInteractionEnabled_];
  OUTLINED_FUNCTION_55_21();
  OUTLINED_FUNCTION_55_21();
  OUTLINED_FUNCTION_55_21();
  OUTLINED_FUNCTION_55_21();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v97 = type metadata accessor for Logger();
  __swift_project_value_buffer(v97, &static Logger.conversationControls);
  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.default.getter();
  v100 = OUTLINED_FUNCTION_18_0(v99);
  v101 = v122;
  if (v100)
  {
    v102 = OUTLINED_FUNCTION_42();
    v103 = OUTLINED_FUNCTION_23();
    v124[0] = v103;
    *v102 = 136446210;
    v104 = _typeName(_:qualified:)();
    v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v105, v124);

    *(v102 + 4) = v106;
    _os_log_impl(&dword_1BBC58000, v98, v99, "[%{public}s] created", v102, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v103);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_1_11();
  outlined destroy of ConversationControlsAction(v71, v107);
  return v78;
}

uint64_t type metadata accessor for SystemApertureIncomingCallControlsView()
{
  result = type metadata singleton initialization cache for SystemApertureIncomingCallControlsView;
  if (!type metadata singleton initialization cache for SystemApertureIncomingCallControlsView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id SystemApertureIncomingCallControlsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SystemApertureIncomingCallControlsView.init(coder:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_features;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_11_2();
    swift_once();
  }

  v3 = static Features.shared;
  *(v1 + v2) = static Features.shared;
  *(v1 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_leadingView) = 0;
  v4 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_primaryLabel;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UILabel);
  v5 = objc_opt_self();
  v6 = *MEMORY[0x1E69DB970];
  v7 = v3;
  v8 = [v5 systemFontOfSize:16.67 weight:v6];
  v9 = objc_opt_self();
  v13.value.super.isa = [v9 whiteColor];
  UILabel.init(font:textColor:)(v10, v8, v13);
  *(v1 + v4) = v11;
  *(v1 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryBadge) = 0;
  v12 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel;
  type metadata accessor for BadgedLabel();
  *(v1 + v12) = BadgedLabel.__allocating_init(font:textColor:badge:)([v5 systemFontOfSize_], objc_msgSend(v9, sel_secondaryLabelColor));
  *(v1 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_alternatingLabelController) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_focusButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_menuHostViewController + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_context) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_cnkContentAlpha) = 0x3FF0000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void SystemApertureIncomingCallControlsView.updateGameControllerFocusButton(isVisible:animated:gameControllerContext:)(char a1, char a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for ConversationControlsAction();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_focusButton;
  if ((a1 & 1) != 0 && !*(v4 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_focusButton))
  {
    v13 = *(a3 + 16);
    *v11 = *a3;
    *(v11 + 16) = v13;
    *(v11 + 32) = *(a3 + 32);
    *(v11 + 48) = *(a3 + 48);
    swift_storeEnumTagMultiPayload();
    v14 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x188);
    v15 = outlined init with copy of (CGFloat, AutoplayCandidate)(a3, &aBlock, &_s15ConversationKit21GameControllerContextVSgMd);
    v16 = v14(v15);
    v87 = 0;
    aBlock = 0u;
    v86 = 0u;
    ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
    v18 = v17;

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&aBlock, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd);
    OUTLINED_FUNCTION_2_172();
    outlined destroy of ConversationControlsAction(v11, v19);
    v20 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x1A0);
    v21 = v18;
    v20();
    [v21 setAlpha_];

    v22 = *(v4 + v12);
    *(v4 + v12) = v21;
    v23 = v21;

    [v4 addSubview_];
    v12 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_focusButton;
  }

  v24 = *(v4 + v12);
  if (v24)
  {
    if (a2)
    {
      v83 = *(v4 + v12);
      v25 = v24;
      v26 = [v25 layer];
      v28 = v26;
      v29 = a1 & 1;
      if (a1)
      {
        *&v27 = 0.0;
      }

      else
      {
        *&v27 = 1.0;
      }

      if (a1)
      {
        v30 = 1.0;
      }

      else
      {
        v30 = 0.0;
      }

      [v26 setOpacity_];

      v31 = [*(v4 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_rejectButton) layer];
      *&v32 = v30;
      [v31 setOpacity_];

      v33 = [*(v4 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_acceptButton) layer];
      *&v34 = v30;
      [v33 setOpacity_];

      v35 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_rejectButton;
      v36 = [*(v4 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_rejectButton) layer];
      [v36 removeAllAnimations];

      v84 = a1;
      v37 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_acceptButton;
      v38 = [*(v4 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_acceptButton) layer];
      [v38 removeAllAnimations];

      v39 = v25;
      v40 = [v39 layer];
      [v40 removeAllAnimations];

      [*(v4 + v35) setHidden_];
      [*(v4 + v37) setHidden_];
      [v39 setHidden_];
      v41 = objc_opt_self();
      [v41 begin];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CABasicAnimation);
      v42 = OUTLINED_FUNCTION_35_31();
      v44 = @nonobjc CABasicAnimation.__allocating_init(keyPath:)(v42, v43);
      v45 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v46 = swift_allocObject();
      *(v46 + 16) = v45;
      *(v46 + 24) = v29;
      *(v46 + 32) = 0x74756F2D65646166;
      *(v46 + 40) = 0xE800000000000000;
      *(v46 + 48) = v39;
      v87 = partial apply for closure #1 in SystemApertureIncomingCallControlsView.updateGameControllerFocusButton(isVisible:animated:gameControllerContext:);
      v88 = v46;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v86 = thunk for @escaping @callee_guaranteed () -> ();
      *(&v86 + 1) = &block_descriptor_45_1;
      v47 = _Block_copy(&aBlock);
      v48 = v39;

      v82 = v41;
      [v41 setCompletionBlock_];
      _Block_release(v47);
      isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v44 setFromValue_];

      v50 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v44 setToValue_];

      v51 = v44;
      [v51 setDuration_];
      v81 = *MEMORY[0x1E69797E8];
      [v51 setFillMode_];
      [v51 setRemovedOnCompletion_];
      v52 = *MEMORY[0x1E6979EB8];
      v53 = objc_opt_self();
      v54 = [v53 functionWithName_];
      [v51 setTimingFunction_];

      v79 = v37;
      v80 = v35;
      if (v84)
      {
        v55 = [*(v4 + v35) layer];
        OUTLINED_FUNCTION_46_27();
        outlined bridged method (mnbgnn) of @objc CALayer.add(_:forKey:)(v56, v35, 0xE800000000000000, v55);

        v57 = [*(v4 + v37) layer];
      }

      else
      {
        [v48 layer];
        OUTLINED_FUNCTION_46_27();
      }

      v69 = v57;
      outlined bridged method (mnbnn) of @objc CALayer.add(_:forKey:)(v51, v35, 0xE800000000000000, v69);

      v70 = OUTLINED_FUNCTION_35_31();
      v72 = @nonobjc CABasicAnimation.__allocating_init(keyPath:)(v70, v71);
      v73 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v72 setFromValue_];

      v74 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v72 setToValue_];

      v75 = v72;
      [v75 setDuration_];
      [v75 setFillMode_];
      [v75 setRemovedOnCompletion_];
      v76 = [v53 functionWithName_];
      [v75 setTimingFunction_];

      v24 = v83;
      if (v84)
      {
        v77 = [v48 layer];
      }

      else
      {

        v78 = [*(v4 + v80) layer];
        outlined bridged method (mnbgnn) of @objc CALayer.add(_:forKey:)(v75, 0x6E692D65646166, 0xE700000000000000, v78);

        v77 = [*(v4 + v79) layer];
      }

      outlined bridged method (mnbnn) of @objc CALayer.add(_:forKey:)(v75, 0x6E692D65646166, 0xE700000000000000, v77);

      [v82 commit];
    }

    else
    {
      v58 = *(v4 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_rejectButton);
      v59 = v24;
      v60 = [v58 layer];
      v62 = v60;
      if (a1)
      {
        v63 = 0.0;
      }

      else
      {
        v63 = 1.0;
      }

      if (a1)
      {
        v64 = 1.0;
      }

      else
      {
        v64 = 0.0;
      }

      *&v61 = v63;
      [v60 setOpacity_];

      v65 = [*(v4 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_acceptButton) layer];
      *&v66 = v63;
      [v65 setOpacity_];

      v67 = [v59 layer];
      *&v68 = v64;
      [v67 setOpacity_];

      [*(v4 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_rejectButton) setHidden_];
      [*(v4 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_acceptButton) setHidden_];
      [v59 setHidden_];
    }
  }
}