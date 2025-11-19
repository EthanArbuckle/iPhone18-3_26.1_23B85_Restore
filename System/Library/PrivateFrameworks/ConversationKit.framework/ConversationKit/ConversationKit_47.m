void (*CallRecordingViewModel.countdownDelegate.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_countdownDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_30_2();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return CallRecordingViewModel.countdownDelegate.modify;
}

void CallRecordingViewModel.countdownDelegate.modify(void **a1, char a2)
{
  v3 = *a1;
  OUTLINED_FUNCTION_371();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    CallRecordingViewModel.countdownDelegate.didset();
  }

  free(v3);
}

uint64_t key path getter for CallRecordingViewModel.countdownDelegate : CallRecordingViewModel@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  OUTLINED_FUNCTION_4_0();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t key path setter for CallRecordingViewModel.recordingDelegate : CallRecordingViewModel(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_recordingDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t CallRecordingViewModel.recordingDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_recordingDelegate;
  OUTLINED_FUNCTION_3_5();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CallRecordingViewModel.recordingDelegate.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_recordingDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_30_2();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return CallRecordingViewModel.recordingDelegate.modify;
}

void CallRecordingViewModel.recordingDelegate.modify(void **a1, char a2)
{
  v3 = *a1;
  OUTLINED_FUNCTION_371();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
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

uint64_t key path getter for CallRecordingViewModel.recordingState : CallRecordingViewModel@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_recordingState;
  result = swift_beginAccess();
  v5 = *(v3 + 4);
  *a2 = *v3;
  *(a2 + 4) = v5;
  return result;
}

void CallRecordingViewModel.recordingState.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_recordingState;
  OUTLINED_FUNCTION_3_5();
  *v3 = a1;
  *(v3 + 4) = BYTE4(a1) & 1;
  CallRecordingViewModel.update()();
}

Swift::Void __swiftcall CallRecordingViewModel.update()()
{
  OUTLINED_FUNCTION_6_11();
  if (*(v0 + 4))
  {
    goto LABEL_2;
  }

  if ((*v0 - 1) >= 2)
  {
    if (*v0 != 3)
    {
LABEL_2:
      CallRecordingViewModel.reset()();
      return;
    }

    CallRecordingViewModel.presentedView.setter();
    CallRecordingViewModel.observeAudioSpectrum()();
    CallRecordingViewModel.startStopwatch()();
  }

  else
  {
    CallRecordingViewModel.presentedView.setter();
  }
}

void (*CallRecordingViewModel.recordingState.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return CallRecordingViewModel.recordingState.modify;
}

void CallRecordingViewModel.recordingState.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    CallRecordingViewModel.update()();
  }
}

Swift::Int CallRecordingViewModel.PresentedView.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CallRecordingViewModel.PresentedView()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  CallRecordingViewModel.PresentedView.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t key path getter for CallRecordingViewModel.presentedView : CallRecordingViewModel@<X0>(_BYTE *a1@<X8>)
{
  result = CallRecordingViewModel.presentedView.getter();
  *a1 = result;
  return result;
}

void CallRecordingViewModel.presentedView.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  static Published.subscript.setter();
  CallRecordingViewModel.presentedView.didset(v2);
}

void CallRecordingViewModel.presentedView.didset(unsigned __int8 a1)
{
  v2 = CallRecordingViewModel.presentedView.getter();
  if (v2 == 3)
  {
    if (a1 == 3)
    {
      return;
    }
  }

  else if (v2 == a1)
  {
    return;
  }

  if (CallRecordingViewModel.presentedView.getter() == 3 && a1 != 2)
  {
    v4 = [objc_opt_self() defaultCenter];
    v5 = v4;
    if (one-time initialization token for startCallRecordingStateCancelledNotification != -1)
    {
      swift_once();
      v4 = v5;
    }

    [v4 postNotificationName:static NSNotificationName.startCallRecordingStateCancelledNotification object:0];
  }
}

void (*CallRecordingViewModel.presentedView.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = CallRecordingViewModel.presentedView.getter();
  return CallRecordingViewModel.presentedView.modify;
}

uint64_t key path setter for CallRecordingViewModel.$presentedView : CallRecordingViewModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22CallRecordingViewModelC09PresentedH0OSg_GMd);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return CallRecordingViewModel.$presentedView.setter(v5);
}

uint64_t CallRecordingViewModel.$presentedView.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22CallRecordingViewModelC09PresentedH0OSg_GMd);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_21();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22CallRecordingViewModelC09PresentedG0OSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*CallRecordingViewModel.$presentedView.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit22CallRecordingViewModelC09PresentedH0OSg_GMd);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22CallRecordingViewModelC09PresentedG0OSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return CallRecordingViewModel.$presentedView.modify;
}

void CallRecordingViewModel.$presentedView.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    CallRecordingViewModel.$presentedView.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    CallRecordingViewModel.$presentedView.setter(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CallRecordingViewModel.stopwatchFormattedValue.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_stopwatchValue);
  v2 = v1 % 3600 / 60;
  v3 = v1 % 60;
  if (v1 < 3600)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E6530];
    *(v8 + 16) = xmmword_1BC4BAA20;
    v10 = MEMORY[0x1E69E65A8];
    *(v8 + 56) = v9;
    *(v8 + 64) = v10;
    *(v8 + 32) = v2;
    *(v8 + 96) = v9;
    *(v8 + 104) = v10;
    *(v8 + 72) = v3;
  }

  else
  {
    v4 = v1 / 0xE10uLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1BC4BB980;
    v6 = MEMORY[0x1E69E6530];
    v7 = MEMORY[0x1E69E65A8];
    *(v5 + 56) = MEMORY[0x1E69E6530];
    *(v5 + 64) = v7;
    *(v5 + 32) = v4;
    *(v5 + 96) = v6;
    *(v5 + 104) = v7;
    *(v5 + 72) = v2;
    *(v5 + 136) = v6;
    *(v5 + 144) = v7;
    *(v5 + 112) = v3;
  }

  return String.init(format:_:)();
}

uint64_t CallRecordingViewModel.__allocating_init(service:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

Swift::Void __swiftcall CallRecordingViewModel.observeCountdownNotifications()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v32 - v2;
  v4 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_1();
  v32 = v12;
  v33 = v11;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  if (one-time initialization token for recordingSession != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.recordingSession);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1BBC58000, v17, v18, "Observing countdown notification", v19, 2u);
    MEMORY[0x1BFB23DF0](v19, -1, -1);
  }

  v20 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for startCallRecordingCountdownNotification != -1)
  {
    swift_once();
  }

  NSNotificationCenter.publisher(for:object:)();

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v21 = static OS_dispatch_queue.main.getter();
  v34 = v21;
  type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  OUTLINED_FUNCTION_6_86();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_5(v26, v27);
  OUTLINED_FUNCTION_23_2();
  lazy protocol witness table accessor for type TUCall and conformance TUCall(v28, &lazy cache variable for type metadata for OS_dispatch_queue);
  Publisher.receive<A>(on:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v6 + 8))(v10, v4);
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_28_38();
  OUTLINED_FUNCTION_22_4();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v29, v30);
  v31 = v33;
  Publisher<>.sink(receiveValue:)();

  (*(v32 + 8))(v15, v31);
  OUTLINED_FUNCTION_30_2();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

Swift::Void __swiftcall CallRecordingViewModel.observeRecordingStateNotifications()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v27 - v2;
  v4 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_1();
  v27 = v11;
  v28 = v12;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v16 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v17 = static OS_dispatch_queue.main.getter();
  v29 = v17;
  type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  OUTLINED_FUNCTION_6_86();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_5(v22, v23);
  OUTLINED_FUNCTION_23_2();
  lazy protocol witness table accessor for type TUCall and conformance TUCall(v24, &lazy cache variable for type metadata for OS_dispatch_queue);
  Publisher.receive<A>(on:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v6 + 8))(v10, v4);
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_28_38();
  OUTLINED_FUNCTION_22_4();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v25, &_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd);
  v26 = v27;
  Publisher<>.sink(receiveValue:)();

  (*(v28 + 8))(v15, v26);
  OUTLINED_FUNCTION_30_2();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t CallRecordingViewModel.observeAudioSpectrum()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  type metadata accessor for MainActor();
  v5 = v0;
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

Swift::Void __swiftcall CallRecordingViewModel.startStopwatch()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  if (one-time initialization token for recordingSession != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.recordingSession);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1BBC58000, v7, v8, "Start recording stopwatch", v9, 2u);
    MEMORY[0x1BFB23DF0](v9, -1, -1);
  }

  CallRecordingViewModel.updateStopwatch()();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSTimer);
  v10 = [objc_opt_self() mainRunLoop];
  type metadata accessor for NSRunLoop.SchedulerOptions();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = OUTLINED_FUNCTION_18_46();

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  v21 = v15;
  type metadata accessor for NSTimer.TimerPublisher();
  OUTLINED_FUNCTION_4_111();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_5(v16, v17);
  v18 = ConnectablePublisher.autoconnect()();

  v21 = v18;
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  OUTLINED_FUNCTION_7_79(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>);
  v19 = Publisher<>.sink(receiveValue:)();

  *(v1 + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_timeSink) = v19;
}

Swift::Void __swiftcall CallRecordingViewModel.reset()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  CallRecordingViewModel.presentedView.setter();
  CallRecordingViewModel.stopStopwatch()();
  CallRecordingViewModel.stopWaveform()();
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  type metadata accessor for MainActor();
  v7 = v0;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t CallRecordingViewModel.stopStopwatch()()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_timeSink))
  {

    AnyCancellable.cancel()();
  }

  return result;
}

void CallRecordingViewModel.stopWaveform()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_waveformViewModel;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x248);
    v5 = v3;
    v4(0x65766157706F7473, 0xEE0029286D726F66);

    v3 = *(v1 + v2);
  }

  *(v1 + v2) = 0;
}

uint64_t closure #1 in CallRecordingViewModel.reset()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in CallRecordingViewModel.reset(), v6, v5);
}

uint64_t closure #1 in CallRecordingViewModel.reset()()
{
  OUTLINED_FUNCTION_24_0();

  CallRecordingViewModel.stopRecording()();
  OUTLINED_FUNCTION_13();

  return v0();
}

void CallRecordingViewModel.stopRecording()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_avAudioPlayer);
  if (v1)
  {
    [v1 stop];
  }

  CallRecordingViewModel.activeCall.getter(&selRef_isRecording);
  if (v2 || (CallRecordingViewModel.disclosingCall.getter(), v2))
  {
    v3 = v2;
    v4 = OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_service;
    swift_beginAccess();
    outlined init with copy of IDSLookupManager(v0 + v4, v7);
    v5 = v8;
    v6 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v6 + 16))(v3, closure #1 in CallRecordingViewModel.stopRecording(), 0, v5, v6);

    __swift_destroy_boxed_opaque_existential_1(v7);
  }
}

void closure #1 in CallRecordingViewModel.observeCountdownNotifications()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for recordingSession != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.recordingSession);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BBC58000, v3, v4, "Start pre-recording countdown", v5, 2u);
      MEMORY[0x1BFB23DF0](v5, -1, -1);
    }

    CallRecordingViewModel.startCountdown()();
  }
}

Swift::Void __swiftcall CallRecordingViewModel.startCountdown()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  CallRecordingViewModel.presentedView.setter();
  *(v0 + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_countdownValue) = 3;
  v6 = v0 + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_countdownDelegate;
  OUTLINED_FUNCTION_4_0();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(3, 0, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  CallRecordingViewModel.playCountdownTone()();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSTimer);
  v9 = [objc_opt_self() mainRunLoop];
  type metadata accessor for NSRunLoop.SchedulerOptions();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = OUTLINED_FUNCTION_18_46();

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  v19 = v14;
  type metadata accessor for NSTimer.TimerPublisher();
  OUTLINED_FUNCTION_4_111();
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_5(v15, v16);
  v17 = ConnectablePublisher.autoconnect()();

  v19 = v17;
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11AutoconnectCy_So7NSTimerC10FoundationE14TimerPublisherCGMd);
  OUTLINED_FUNCTION_7_79(&lazy protocol witness table cache variable for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>);
  v18 = Publisher<>.sink(receiveValue:)();

  *(v1 + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_timeSink) = v18;
}

void closure #1 in CallRecordingViewModel.observeRecordingStateNotifications()()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    Notification.object.getter();
    if (v46)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
      if (swift_dynamicCast())
      {
        v42 = v1;
        v9 = v48;
        if (one-time initialization token for recordingSession != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        __swift_project_value_buffer(v10, static Logger.recordingSession);
        v11 = v9;
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.default.getter();

        v14 = os_log_type_enabled(v12, v13);
        v43 = v11;
        if (v14)
        {
          v15 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v44 = v41;
          *v15 = 136315138;
          v16 = [v11 recordingSession];
          if (v16)
          {
            v17 = v16;
            v18 = [v16 recordingState];

            LODWORD(v48) = v18;
            type metadata accessor for TUCallRecordingState(0);
            v19 = String.init<A>(reflecting:)();
            v21 = v20;
          }

          else
          {
            v21 = 0xE300000000000000;
            v19 = 7104878;
          }

          v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v44);

          *(v15 + 4) = v22;
          _os_log_impl(&dword_1BBC58000, v12, v13, "TUCallRecordingState changed to: %s.", v15, 0xCu);
          v23 = v41;
          __swift_destroy_boxed_opaque_existential_1(v41);
          MEMORY[0x1BFB23DF0](v23, -1, -1);
          MEMORY[0x1BFB23DF0](v15, -1, -1);
        }

        v24 = &v8[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_recordingState];
        swift_beginAccess();
        v25 = *v24;
        v26 = v24[4];
        v27 = [v43 recordingSession];
        v28 = v27;
        if (v27)
        {
          v29 = [v27 recordingState];
        }

        else
        {
          v29 = 0;
        }

        *v24 = v29;
        v24[4] = v28 == 0;
        CallRecordingViewModel.update()();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo20TUCallRecordingStateVSgGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BC4BAA20;
        *(inited + 32) = v25;
        *(inited + 36) = v26;
        v31 = *v24;
        v32 = v24[4];
        *(inited + 40) = *v24;
        *(inited + 44) = v32;

        if (v25 == 3)
        {
          v33 = v26;
        }

        else
        {
          v33 = 1;
        }

        if (v31 == 3)
        {
          v34 = v32;
        }

        else
        {
          v34 = 1;
        }

        if (v33 == 1 && v34)
        {
        }

        else
        {
          v35 = v43;
          v36 = [v43 provider];
          v37 = [v36 isTelephonyProvider];

          v38 = 6;
          if (!v37)
          {
            v38 = 0;
          }

          v44 = v38;
          v45 = 0u;
          v46 = 0u;
          v47 = 7;
          UUID.init()();
          v39 = &v6[v4[11]];
          *(v39 + 1) = 0;
          swift_unknownObjectWeakInit();
          *v6 = 0x4089000000000000;
          outlined init with copy of ConversationControlsType(&v44, (v6 + 8));
          *(v6 + 7) = 0;
          v6[64] = 1;
          *(v39 + 1) = 0;
          swift_unknownObjectWeakAssign();
          v6[65] = 1;
          v40 = v42;
          (*(v42 + 16))(&v6[v4[8]], v3, v0);
          static Date.now.getter();
          (*(v40 + 8))(v3, v0);
          outlined destroy of ConversationControlsType(&v44);
          *&v6[v4[10]] = 0;
          v6[v4[12]] = 0;
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          outlined destroy of HUDActivityManager.BannerUpdate(v6);
        }
      }

      else
      {
      }
    }

    else
    {

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v44, &_sypSgMd);
    }
  }
}

uint64_t CallRecordingViewModel.playCountdownTone()()
{
  v1 = v0;
  v48[1] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v48 - v7 + 32;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v48 - v13 + 32;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v48 - v16 + 32;
  v18 = [objc_opt_self() conversationKit];
  v19 = outlined bridged method (mbbnn) of @objc NSBundle.url(forResource:withExtension:)(0xD000000000000018, 0x80000001BC50E070, 6709603, 0xE300000000000000, v18);

  if (v19)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v20, 1, v2);
  _s10Foundation3URLVSgWObTm_0(v14, v17, &_s10Foundation3URLVSgMd);
  outlined init with copy of URL?(v17, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s10Foundation3URLVSgMd);
    v21 = v11;
  }

  else
  {
    (*(v3 + 32))(v8, v11, v2);
    (*(v3 + 16))(v5, v8, v2);
    v22 = objc_allocWithZone(MEMORY[0x1E6958448]);
    v23 = @nonobjc AVAudioPlayer.init(contentsOf:)(v5);
    [v23 setNumberOfLoops_];
    LODWORD(v24) = 1.0;
    [v23 setVolume_];
    v25 = [objc_opt_self() auxiliarySession];
    v26 = *MEMORY[0x1E6958068];
    v27 = *MEMORY[0x1E6958130];
    v48[0] = 0;
    if ([v25 setCategory:v26 mode:v27 options:128 error:v48])
    {
      v28 = v48[0];
      [v23 setAudioSession_];
      v29 = *(v1 + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_avAudioPlayer);
      *(v1 + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_avAudioPlayer) = v23;
      v30 = v23;

      if (one-time initialization token for recordingSession != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static Logger.recordingSession);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1BBC58000, v32, v33, "Playing countdown tone.", v34, 2u);
        MEMORY[0x1BFB23DF0](v34, -1, -1);
      }

      [v30 play];
      (*(v3 + 8))(v8, v2);
    }

    else
    {
      v35 = v48[0];
      v36 = _convertNSErrorToError(_:)();

      swift_willThrow();
      (*(v3 + 8))(v8, v2);
      if (one-time initialization token for recordingSession != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static Logger.recordingSession);
      v38 = v36;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v48[0] = v42;
        *v41 = 136315138;
        swift_getErrorValue();
        v43 = Error.localizedDescription.getter();
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v48);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_1BBC58000, v39, v40, "Error playing countdown tone: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x1BFB23DF0](v42, -1, -1);
        MEMORY[0x1BFB23DF0](v41, -1, -1);
      }

      else
      {
      }
    }

    v21 = v17;
  }

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v21, &_s10Foundation3URLVSgMd);
}

uint64_t closure #1 in CallRecordingViewModel.startCountdown()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_countdownValue);
    v6 = __OFSUB__(v5, 1);
    v7 = v5 - 1;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      *(result + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_countdownValue) = v7;
      v8 = type metadata accessor for TaskPriority();
      __swift_storeEnumTagSinglePayload(v2, 1, 1, v8);
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = 0;
      v9[4] = v4;
      v10 = v4;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in CallRecordingViewModel.startCountdown()()
{
  OUTLINED_FUNCTION_24_0();
  v0[3] = *(v0[2] + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_countdownValue);
  type metadata accessor for MainActor();
  v0[4] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in CallRecordingViewModel.startCountdown(), v2, v1);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 24);

  CallRecordingViewModel.handleCountdownValue(_:)(v1);
  OUTLINED_FUNCTION_13();

  return v2();
}

void CallRecordingViewModel.handleCountdownValue(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_countdownValue;
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_countdownValue) < 1)
  {
    if (one-time initialization token for recordingSession != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.recordingSession);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BBC58000, v17, v18, "Countdown value is 0", v19, 2u);
      MEMORY[0x1BFB23DF0](v19, -1, -1);
    }

    if (*(v2 + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_timeSink))
    {

      AnyCancellable.cancel()();
    }

    CallRecordingViewModel.activeCall.getter(&selRef_isActive);
    if (v20)
    {
      v21 = v20;
      v22 = [objc_allocWithZone(MEMORY[0x1E69DCAE8]) initWithStyle_];
      [v22 impactOccurred];
      v23 = OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_service;
      swift_beginAccess();
      outlined init with copy of IDSLookupManager(v2 + v23, v28);
      v24 = v29;
      v25 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = *(v25 + 8);

      v27(v21, partial apply for closure #1 in CallRecordingViewModel.handleCountdownValue(_:), v26, v24, v25);

      __swift_destroy_boxed_opaque_existential_1(v28);
    }
  }

  else
  {
    if (one-time initialization token for recordingSession != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.recordingSession);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v28[0] = v9;
      *v8 = 136315138;
      v31 = a1;
      v10 = String.init<A>(reflecting:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v28);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1BBC58000, v6, v7, "Countdown value: %s.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1BFB23DF0](v9, -1, -1);
      MEMORY[0x1BFB23DF0](v8, -1, -1);
    }

    v13 = v2 + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_countdownDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 8);
      ObjectType = swift_getObjectType();
      (*(v14 + 8))(*(v2 + v3), 0, ObjectType, v14);
      swift_unknownObjectRelease();
    }
  }
}

void closure #1 in CallRecordingViewModel.handleCountdownValue(_:)(uint64_t a1)
{
  if (a1)
  {
    if (one-time initialization token for recordingSession != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.recordingSession);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1BBC58000, v2, v3, "Handling error: start recording failed", v4, 2u);
      MEMORY[0x1BFB23DF0](v4, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = Strong + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_recordingState;
      swift_beginAccess();
      *v7 = 0;
      *(v7 + 4) = 1;
      CallRecordingViewModel.update()();
    }
  }
}

void CallRecordingViewModel.timeIntervalSinceRecordingStartedDate.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = type metadata accessor for Date();
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v25 = &v24 - v9;
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 currentCalls];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = specialized Array.count.getter(v12);
  for (i = 0; ; ++i)
  {
    if (v13 == i)
    {

      goto LABEL_14;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1BFB22010](i, v12);
    }

    else
    {
      if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v15 = *(v12 + 8 * i + 32);
    }

    v16 = v15;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([v15 isRecording])
    {

      v17 = [v16 recordingSession];

      if (v17)
      {
        v18 = [v17 recordingStartedDate];

        if (v18)
        {
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v19 = 0;
        }

        else
        {
          v19 = 1;
        }

        __swift_storeEnumTagSinglePayload(v2, v19, 1, v6);
        _s10Foundation3URLVSgWObTm_0(v2, v5, &_s10Foundation4DateVSgMd);
        if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
        {
          v20 = v27;
          v21 = v25;
          (*(v27 + 32))(v25, v5, v6);
          v22 = v26;
          static Date.now.getter();
          Date.timeIntervalSince(_:)();
          v23 = *(v20 + 8);
          v23(v22, v6);
          v23(v21, v6);
          return;
        }

LABEL_15:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s10Foundation4DateVSgMd);
        return;
      }

LABEL_14:
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void CallRecordingViewModel.updateStopwatch()()
{
  CallRecordingViewModel.timeIntervalSinceRecordingStartedDate.getter();
  if ((v2 & 1) == 0)
  {
    if ((~*&v1 & 0x7FF0000000000000) != 0)
    {
      if (v1 > -9.22337204e18)
      {
        if (v1 < 9.22337204e18)
        {
          *(v0 + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_stopwatchValue) = v1;
          v3 = v0 + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_recordingDelegate;
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v4 = *(v3 + 8);
            swift_getObjectType();
            v5 = CallRecordingViewModel.stopwatchFormattedValue.getter();
            (*(v4 + 8))(v5);

            swift_unknownObjectRelease();
          }

          return;
        }

LABEL_10:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_10;
  }
}

void closure #1 in CallRecordingViewModel.startStopwatch()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CallRecordingViewModel.updateStopwatch()();
  }
}

void CallRecordingViewModel.openNotes()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v66 = *(v2 - 8);
  v67 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v65 - v9;
  v11 = type metadata accessor for URL();
  v68 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for recordingSession != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.recordingSession);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1BBC58000, v15, v16, "Open notes", v17, 2u);
    MEMORY[0x1BFB23DF0](v17, -1, -1);
  }

  CallRecordingViewModel.activeCall.getter(&selRef_isRecording);
  if (v18 && (v19 = v18, v20 = [v18 recordingSession], v19, v20))
  {
    v21 = OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_service;
    swift_beginAccess();
    outlined init with copy of IDSLookupManager(v1 + v21, &v69);
    v22 = v71;
    v23 = v72;
    __swift_project_boxed_opaque_existential_1(&v69, v71);
    (*(v23 + 24))(v20, v22, v23);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s10Foundation3URLVSgMd);
      __swift_destroy_boxed_opaque_existential_1(&v69);
      goto LABEL_17;
    }

    v38 = v68;
    (v68)[4](v13, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(&v69);
    v39 = URL.absoluteString.getter();
    v69 = 0x656C69626F6DLL;
    v70 = 0xE600000000000000;
    MEMORY[0x1BFB20B10](v39);

    URL.init(string:)();

    if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
    {
      (v38[1])(v13, v11);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s10Foundation3URLVSgMd);
LABEL_17:
      v40 = v20;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v69 = v44;
        *v43 = 136315138;
        v45 = [v40 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v46 = v67;
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        v49 = v48;
        (*(v66 + 8))(v4, v46);
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v69);

        *(v43 + 4) = v50;
        _os_log_impl(&dword_1BBC58000, v41, v42, "Attempting to open notes. Url for recording session %s is nil.", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        MEMORY[0x1BFB23DF0](v44, -1, -1);
        MEMORY[0x1BFB23DF0](v43, -1, -1);
      }

      else
      {
      }

      return;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s10Foundation3URLVSgMd);
    v52 = objc_opt_self();
    v53 = [v52 sharedApplication];
    URL._bridgeToObjectiveC()(v54);
    v56 = v55;
    v57 = [v53 canOpenURL_];

    if (v57)
    {
      v58 = [v52 sharedApplication];
      URL._bridgeToObjectiveC()(v59);
      v61 = v60;
      [v58 openURL:v60 withCompletionHandler:0];
    }

    else
    {
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_1BBC58000, v62, v63, "Cannot open url", v64, 2u);
        MEMORY[0x1BFB23DF0](v64, -1, -1);
      }

      else
      {
      }
    }

    (v68[1])(v13, v11);
  }

  else
  {
    v24 = v1;
    v68 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v68, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v73[0] = v27;
      *v26 = 136315138;
      CallRecordingViewModel.activeCall.getter(&selRef_isRecording);
      if (v28)
      {
        v29 = v28;
        v30 = [v28 callUUID];

        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v69 = v31;
        v70 = v33;
        v34 = String.init<A>(reflecting:)();
        v36 = v35;
      }

      else
      {
        v36 = 0xE300000000000000;
        v34 = 7104878;
      }

      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v73);

      *(v26 + 4) = v51;
      _os_log_impl(&dword_1BBC58000, v68, v25, "Attempting to open notes. Not recording session for recordedCall %s.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1BFB23DF0](v27, -1, -1);
      MEMORY[0x1BFB23DF0](v26, -1, -1);
    }

    else
    {
      v37 = v68;
    }
  }
}

void CallRecordingViewModel.activeCall.getter(SEL *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 currentCalls];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized Array.count.getter(v4);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {
LABEL_10:

      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1BFB22010](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([v7 *a1])
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void *CallRecordingViewModel.waveformViewModel.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_waveformViewModel;
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CallRecordingViewModel.waveformViewModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_waveformViewModel;
  OUTLINED_FUNCTION_112_1();
  OUTLINED_FUNCTION_3_5();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t closure #1 in CallRecordingViewModel.observeAudioSpectrum()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  v4[11] = swift_task_alloc();
  v5 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySfG_GMd);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGMd);
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGANGMd);
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8DebounceVy_AC0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGAPGSo9NSRunLoopCGMd);
  v4[25] = v9;
  v4[26] = *(v9 - 8);
  v4[27] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC8DebounceVy_AC0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGARGSo9NSRunLoopCGAUGMd);
  v4[28] = v10;
  v4[29] = *(v10 - 8);
  v4[30] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[31] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in CallRecordingViewModel.observeAudioSpectrum(), v12, v11);
}

uint64_t closure #1 in CallRecordingViewModel.observeAudioSpectrum()()
{

  CallRecordingViewModel.activeCall.getter(&selRef_isActive);
  if (v1)
  {
    v2 = v1;
    v47 = v0[30];
    v49 = v0[28];
    v50 = v0[29];
    v42 = v0[27];
    v48 = v0[26];
    v46 = v0[25];
    v54 = v0[24];
    v45 = v0[23];
    v41 = v0[22];
    v52 = v0[21];
    v3 = v0[17];
    v36 = v0[20];
    v37 = v0[18];
    v4 = v0[15];
    v5 = v0[16];
    v38 = v0[19];
    v39 = v0[14];
    v43 = v0[13];
    v44 = v0[12];
    v40 = v0[11];
    v6 = v0[10];
    v7 = objc_opt_self();
    v51 = v2;
    v8 = [v7 sharedInstance];
    v9 = [objc_opt_self() defaultCenter];
    v10 = objc_allocWithZone(type metadata accessor for AudioPowerSpectrumViewModel());
    AudioPowerSpectrumViewModel.init(call:callCenter:notificationCenter:numBands:)();
    v12 = v11;
    v13 = OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_waveformViewModel;
    OUTLINED_FUNCTION_3_5();
    v14 = *(v6 + v13);
    *(v6 + v13) = v12;
    v15 = v12;

    v16 = MEMORY[0x1E69E7D40];
    v17 = (*((*MEMORY[0x1E69E7D40] & *v15) + 0x240))();
    (*((*v16 & *v15) + 0x118))(v17);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<[Float]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySaySfG_GMd);
    lazy protocol witness table accessor for type [Float] and conformance <A> [A]();
    OUTLINED_FUNCTION_27_35();
    v18 = *(v5 + 8);
    v19 = v18(v3, v4);
    (*((*MEMORY[0x1E69E7D40] & *v15) + 0x148))(v19);
    OUTLINED_FUNCTION_27_35();
    v18(v3, v4);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<[Float]>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGMd);
    Publisher.combineLatest<A>(_:)();
    v20 = *(v38 + 8);
    v20(v36, v37);
    v20(v52, v37);
    static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
    v53 = objc_opt_self();
    v21 = [v53 mainRunLoop];
    v0[8] = v21;
    v22 = type metadata accessor for NSRunLoop.SchedulerOptions();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest<Publishers.RemoveDuplicates<Published<[Float]>.Publisher>, Publishers.RemoveDuplicates<Published<[Float]>.Publisher>> and conformance Publishers.CombineLatest<A, B>, &_s7Combine10PublishersO0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGANGMd);
    lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
    Publisher.debounce<A>(for:scheduler:options:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v40, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    (*(v43 + 8))(v39, v44);
    (*(v45 + 8))(v54, v41);
    v26 = [v53 mainRunLoop];
    v0[9] = v26;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v22);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Debounce<Publishers.CombineLatest<Publishers.RemoveDuplicates<Published<[Float]>.Publisher>, Publishers.RemoveDuplicates<Published<[Float]>.Publisher>>, NSRunLoop> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_AC0A6LatestVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVySaySfG_GGAPGSo9NSRunLoopCGMd);
    Publisher.receive<A>(on:options:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v40, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    (*(v48 + 8))(v42, v46);
    OUTLINED_FUNCTION_20();
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    *(v31 + 16) = partial apply for closure #1 in closure #1 in CallRecordingViewModel.observeAudioSpectrum();
    *(v31 + 24) = v30;
    OUTLINED_FUNCTION_22_4();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v32, v33);
    Publisher<>.sink(receiveValue:)();

    (*(v50 + 8))(v47, v49);
    OUTLINED_FUNCTION_30_2();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_13();

  return v34();
}

void closure #1 in closure #1 in CallRecordingViewModel.observeAudioSpectrum()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_recordingState;
    swift_beginAccess();
    if ((*(v6 + 4) & 1) == 0 && *v6 == 3 && (v7 = &v5[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_recordingDelegate], swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
    {
      v8 = *(v7 + 1);
      ObjectType = swift_getObjectType();
      (*(v8 + 16))(a2, a1, ObjectType, v8);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void CallRecordingViewModel.disclosingCall.getter()
{
  CallRecordingViewModel.activeCall.getter(&selRef_isActive);
  if (v0)
  {
    v1 = v0;
    v2 = [v0 recordingSession];

    if (v2)
    {
      v3 = [v2 recordingState];

      if (v3 == 2)
      {
        CallRecordingViewModel.activeCall.getter(&selRef_isActive);
      }
    }
  }
}

void closure #1 in CallRecordingViewModel.stopRecording()(uint64_t a1)
{
  if (a1)
  {
    if (one-time initialization token for recordingSession != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.recordingSession);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_1BBC58000, oslog, v2, "Handling error: stop recording failed", v3, 2u);
      MEMORY[0x1BFB23DF0](v3, -1, -1);
    }
  }
}

id CallRecordingViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CallRecordingViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for CallRecordingViewModelProtocol.recordingState.modify in conformance CallRecordingViewModel(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return CallRecordingViewModel.recordingState.modify;
}

uint64_t CallRecordingViewModel.tapStopRecording()(const char *a1, uint64_t (*a2)(void))
{
  if (one-time initialization token for recordingSession != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.recordingSession);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1BBC58000, v4, v5, a1, v6, 2u);
    MEMORY[0x1BFB23DF0](v6, -1, -1);
  }

  return a2();
}

char *specialized CallRecordingViewModel.__allocating_init(service:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v10);
  (*(v7 + 16))(v9, a1, a3);
  v12 = specialized CallRecordingViewModel.init(service:)(v9, v11, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v12;
}

char *specialized CallRecordingViewModel.init(service:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit22CallRecordingViewModelC09PresentedG0OSgGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23[-v11];
  v25[3] = a3;
  v25[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *&a2[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_cancellables] = MEMORY[0x1E69E7CD0];
  *&a2[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_timeSink] = 0;
  *&a2[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_countdownValue] = 3;
  *&a2[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_avAudioPlayer] = 0;
  *&a2[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_countdownDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_recordingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v14 = &a2[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_recordingState];
  *v14 = 0;
  v15 = 1;
  v14[4] = 1;
  v16 = OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel__presentedView;
  v23[0] = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22CallRecordingViewModelC09PresentedE0OSgMd);
  Published.init(initialValue:)();
  (*(v10 + 32))(&a2[v16], v12, v9);
  *&a2[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_stopwatchValue] = 0;
  *&a2[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_waveformViewModel] = 0;
  outlined init with copy of IDSLookupManager(v25, &a2[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_service]);
  v24.receiver = a2;
  v24.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v24, sel_init);
  CallRecordingViewModel.observeCountdownNotifications()();
  CallRecordingViewModel.observeRecordingStateNotifications()();
  v18 = [objc_opt_self() sharedInstance];
  v19 = [v18 frontmostCall];

  if (v19)
  {
    v20 = [v19 recordingSession];

    if (v20)
    {
      LODWORD(v19) = [v20 recordingState];

      v15 = 0;
    }

    else
    {
      LODWORD(v19) = 0;
    }
  }

  v21 = &v17[OBJC_IVAR____TtC15ConversationKit22CallRecordingViewModel_recordingState];
  swift_beginAccess();
  *v21 = v19;
  v21[4] = v15;
  CallRecordingViewModel.update()();

  __swift_destroy_boxed_opaque_existential_1(v25);
  return v17;
}

uint64_t partial apply for closure #1 in CallRecordingViewModel.reset()()
{
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in CallRecordingViewModel.reset()(v3, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type CallRecordingViewModel.PresentedView and conformance CallRecordingViewModel.PresentedView()
{
  result = lazy protocol witness table cache variable for type CallRecordingViewModel.PresentedView and conformance CallRecordingViewModel.PresentedView;
  if (!lazy protocol witness table cache variable for type CallRecordingViewModel.PresentedView and conformance CallRecordingViewModel.PresentedView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallRecordingViewModel.PresentedView and conformance CallRecordingViewModel.PresentedView);
  }

  return result;
}

uint64_t type metadata accessor for CallRecordingViewModel()
{
  result = type metadata singleton initialization cache for CallRecordingViewModel;
  if (!type metadata singleton initialization cache for CallRecordingViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CallRecordingViewModel()
{
  type metadata accessor for Published<CallRecordingViewModel.PresentedView?>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<CallRecordingViewModel.PresentedView?>()
{
  if (!lazy cache variable for type metadata for Published<CallRecordingViewModel.PresentedView?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit22CallRecordingViewModelC09PresentedE0OSgMd);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<CallRecordingViewModel.PresentedView?>);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CallRecordingViewModel.PresentedView(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t partial apply for closure #1 in closure #1 in CallRecordingViewModel.startCountdown()()
{
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in closure #1 in CallRecordingViewModel.startCountdown()(v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in CallRecordingViewModel.observeAudioSpectrum()()
{
  OUTLINED_FUNCTION_225();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_16_1(v1);

  return closure #1 in CallRecordingViewModel.observeAudioSpectrum()(v3, v4, v5, v6);
}

uint64_t static CameraEffectState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    if (v3 != 2)
    {
      v4 = v3 ^ v2 ^ 1;
      return v4 & 1;
    }

    goto LABEL_5;
  }

  if (v3 != 2)
  {
LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  v4 = 1;
  return v4 & 1;
}

void CameraEffectState.hash(into:)()
{
  v1 = *v0;
  if (v1 == 2)
  {
    MEMORY[0x1BFB22640](0);
  }

  else
  {
    MEMORY[0x1BFB22640](1);
    Hasher._combine(_:)(v1 & 1);
  }
}

Swift::Int CameraEffectState.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    MEMORY[0x1BFB22640](0);
  }

  else
  {
    MEMORY[0x1BFB22640](1);
    Hasher._combine(_:)(v1 & 1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CameraEffectState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    MEMORY[0x1BFB22640](0);
  }

  else
  {
    MEMORY[0x1BFB22640](1);
    Hasher._combine(_:)(v1 & 1);
  }

  return Hasher._finalize()();
}

uint64_t static LocalParticipantCameraEffectsState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  if (v2 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v6 == 2 || ((v6 ^ v2) & 1) != 0)
    {
      return result;
    }
  }

  if (v3 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v7 == 2 || ((v7 ^ v3) & 1) != 0)
    {
      return result;
    }
  }

  if (v4 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }

LABEL_16:
    if (v5 == 2)
    {
      if (v9 != 2)
      {
        return 0;
      }
    }

    else if (v9 == 2 || ((v9 ^ v5) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v8 != 2 && ((v8 ^ v4) & 1) == 0)
  {
    goto LABEL_16;
  }

  return result;
}

void LocalParticipantCameraEffectsState.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (v1 == 2)
  {
    MEMORY[0x1BFB22640](0);
  }

  else
  {
    MEMORY[0x1BFB22640](1);
    Hasher._combine(_:)(v1 & 1);
  }

  if (v2 == 2)
  {
    MEMORY[0x1BFB22640](0);
  }

  else
  {
    MEMORY[0x1BFB22640](1);
    Hasher._combine(_:)(v2 & 1);
  }

  if (v3 == 2)
  {
    MEMORY[0x1BFB22640](0);
  }

  else
  {
    MEMORY[0x1BFB22640](1);
    Hasher._combine(_:)(v3 & 1);
  }

  if (v4 == 2)
  {
    MEMORY[0x1BFB22640](0);
  }

  else
  {
    MEMORY[0x1BFB22640](1);
    Hasher._combine(_:)(v4 & 1);
  }
}

Swift::Int LocalParticipantCameraEffectsState.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    MEMORY[0x1BFB22640](0);
  }

  else
  {
    MEMORY[0x1BFB22640](1);
    Hasher._combine(_:)(v1 & 1);
  }

  if (v2 == 2)
  {
    MEMORY[0x1BFB22640](0);
  }

  else
  {
    MEMORY[0x1BFB22640](1);
    Hasher._combine(_:)(v2 & 1);
  }

  if (v3 == 2)
  {
    MEMORY[0x1BFB22640](0);
  }

  else
  {
    MEMORY[0x1BFB22640](1);
    Hasher._combine(_:)(v3 & 1);
  }

  if (v4 == 2)
  {
    MEMORY[0x1BFB22640](0);
  }

  else
  {
    MEMORY[0x1BFB22640](1);
    Hasher._combine(_:)(v4 & 1);
  }

  return Hasher._finalize()();
}

_BYTE *LocalParticipantCameraEffectsState.init(cinematicFramingEffectState:cameraBlurEffectState:studioLightEffectState:reactionsEffectState:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, _BYTE *a5@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  *a5 = *result;
  a5[1] = v5;
  a5[2] = v6;
  a5[3] = v7;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocalParticipantCameraEffectsState()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    MEMORY[0x1BFB22640](0);
  }

  else
  {
    MEMORY[0x1BFB22640](1);
    Hasher._combine(_:)(v1 & 1);
  }

  if (v2 == 2)
  {
    MEMORY[0x1BFB22640](0);
  }

  else
  {
    MEMORY[0x1BFB22640](1);
    Hasher._combine(_:)(v2 & 1);
  }

  if (v3 == 2)
  {
    MEMORY[0x1BFB22640](0);
  }

  else
  {
    MEMORY[0x1BFB22640](1);
    Hasher._combine(_:)(v3 & 1);
  }

  if (v4 == 2)
  {
    MEMORY[0x1BFB22640](0);
  }

  else
  {
    MEMORY[0x1BFB22640](1);
    Hasher._combine(_:)(v4 & 1);
  }

  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type CameraEffectState and conformance CameraEffectState()
{
  result = lazy protocol witness table cache variable for type CameraEffectState and conformance CameraEffectState;
  if (!lazy protocol witness table cache variable for type CameraEffectState and conformance CameraEffectState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CameraEffectState and conformance CameraEffectState);
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for CameraEffectState(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = (v6 + 2147483646) & 0x7FFFFFFF;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 2);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CameraEffectState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocalParticipantCameraEffectsState(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[4])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      if (v3 >= 2)
      {
        v2 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
      }

      else
      {
        v2 = -2;
      }

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

uint64_t storeEnumTagSinglePayload for LocalParticipantCameraEffectsState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t SwitchButtonViewModel.__allocating_init(service:)(__int128 *a1)
{
  v2 = swift_allocObject();
  SwitchButtonViewModel.init(service:)(a1);
  return v2;
}

uint64_t SwitchButtonViewModel.init(service:)(__int128 *a1)
{
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  closure #1 in variable initialization expression of SwitchButtonViewModel.flexibleGlass();
  outlined init with take of TapInteractionHandler(a1, v1 + 16);
  return v1;
}

uint64_t SwitchButtonViewModel.controlType.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) != 0 && (v0 = [objc_opt_self() currentDevice], v1 = objc_msgSend(v0, sel_userInterfaceIdiom), v0, !v1))
  {
    return SwitchButtonViewModel.staticIconConfig.getter();
  }

  else
  {
    return SwitchButtonViewModel.textConfig.getter();
  }
}

uint64_t SwitchButtonViewModel.staticIconConfig.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleVyytGMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  if (*(v0 + 64))
  {
    v5 = *(v0 + 64);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI16IconButtonConfigCyytGMd);
    SwitchButtonViewModel.buttonStyle.getter(v4);
    v6 = [objc_opt_self() conversationKit];
    v7.super.isa = v6;
    OUTLINED_FUNCTION_17_0(0xD000000000000010, 0x80000001BC50E090, 0x61737265766E6F43, 0xEF74694B6E6F6974, v7);

    swift_allocObject();
    swift_weakInit();
    v5 = IconButtonConfig<A>.init(style:title:hasBadge:accessibilityLabel:accessibilityValue:accessibilityIdentifier:enabled:didTap:)();
    *(v1 + 64) = v5;
  }

  return v5;
}

uint64_t SwitchButtonViewModel.textConfig.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CallControlTextButtonStyle(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v1 + 56))
  {
    v6 = *(v1 + 56);
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
    v14 = OUTLINED_FUNCTION_17_0(0x686374697753, 0xE600000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974, v13);
    v16 = v15;

    v17 = [v11 conversationKit];
    v18.super.isa = v17;
    v19 = OUTLINED_FUNCTION_17_0(0xD000000000000010, 0x80000001BC50E090, 0x61737265766E6F43, 0xEF74694B6E6F6974, v18);
    v21 = v20;

    v22 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for CallControlsTextButtonConfiguration(0);
    swift_allocObject();
    v6 = CallControlsTextButtonConfiguration.init(buttonStyle:text:accessibilityLabel:accessibilityIdentifier:enabled:didTap:)(v5, v14, v16, v19, v21, 0x7542686374697773, 0xEC0000006E6F7474, 1, partial apply for closure #1 in SwitchButtonViewModel.textConfig.getter, v22);
    *(v1 + 56) = v6;
  }

  return v6;
}

void *SwitchButtonViewModel.handoffInProgress.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
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

void *SwitchButtonViewModel.enabled(for:)(uint64_t a1)
{
  if ((a1 & 0xE100000000) == 0x2100000000)
  {
    return SwitchButtonViewModel.handoffInProgress.getter();
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall SwitchButtonViewModel.didTap()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 192))(v1, v2);
}

uint64_t SwitchButtonViewModel.buttonStyle.getter@<X0>(uint64_t a1@<X8>)
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
  v19 = OBJC_IVAR____TtC15ConversationKit21SwitchButtonViewModel_flexibleGlass;
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

void *closure #1 in SwitchButtonViewModel.textConfig.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result[5];
    v2 = result[6];
    __swift_project_boxed_opaque_existential_1(result + 2, v1);
    (*(v2 + 192))(v1, v2);
  }

  return result;
}

uint64_t closure #1 in variable initialization expression of SwitchButtonViewModel.flexibleGlass()
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

uint64_t SwitchButtonViewModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = OBJC_IVAR____TtC15ConversationKit21SwitchButtonViewModel_flexibleGlass;
  type metadata accessor for _Glass();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t SwitchButtonViewModel.__deallocating_deinit()
{
  SwitchButtonViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SwitchButtonViewModel()
{
  result = type metadata singleton initialization cache for SwitchButtonViewModel;
  if (!type metadata singleton initialization cache for SwitchButtonViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SwitchButtonViewModel()
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

uint64_t key path getter for DisplayLayerVisibilityObserver.isHidingLayersFromClonedDisplay : DisplayLayerVisibilityObserver@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result & 1;
  return result;
}

uint64_t DisplayLayerVisibilityObserver.isHidingLayersFromClonedDisplay.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t DisplayLayerVisibilityObserver.isHidingLayersFromClonedDisplay.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for DisplayLayerVisibilityObserver.$isHidingLayersFromClonedDisplay : DisplayLayerVisibilityObserver(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return DisplayLayerVisibilityObserver.$isHidingLayersFromClonedDisplay.setter(v5);
}

uint64_t DisplayLayerVisibilityObserver.$isHidingLayersFromClonedDisplay.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t DisplayLayerVisibilityObserver.$isHidingLayersFromClonedDisplay.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t DisplayLayerVisibilityObserver.__allocating_init()()
{
  v0 = swift_allocObject();
  DisplayLayerVisibilityObserver.init()();
  return v0;
}

uint64_t DisplayLayerVisibilityObserver.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12[-v6];
  v8 = OBJC_IVAR____TtC15ConversationKit30DisplayLayerVisibilityObserver__isHidingLayersFromClonedDisplay;
  v12[15] = 0;
  Published.init(initialValue:)();
  (*(v4 + 32))(v1 + v8, v7, v2);
  *(v1 + OBJC_IVAR____TtC15ConversationKit30DisplayLayerVisibilityObserver_display) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit30DisplayLayerVisibilityObserver_screenShareAttributes) = 0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = *((*MEMORY[0x1E69E7D40] & *static ScreenSharingInteractionController.shared) + 0x1C8);

  v9(v10);

  return v1;
}

Swift::Void __swiftcall DisplayLayerVisibilityObserver.checkHiddenLayers()()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = [objc_opt_self() displays];
  v13 = MEMORY[0x1E69E7CA0];
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = 0;
  v16 = *(v14 + 16);
  v47 = v0;
  v48 = v16;
  v45 = OBJC_IVAR____TtC15ConversationKit30DisplayLayerVisibilityObserver_screenShareAttributes;
  v46 = v14;
  v17 = v14 + 32;
  v40 = (v3 + 8);
  v41 = (v3 + 16);
  v42 = v8;
  while (1)
  {
    if (v48 == v15)
    {

      goto LABEL_30;
    }

    if (v15 >= *(v14 + 16))
    {
      __break(1u);
      return;
    }

    outlined init with copy of Any(v17, v55);
    outlined init with copy of Any(v55, &aBlock);
    v44 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CADisplay);
    if (swift_dynamicCast())
    {
      v18 = outlined bridged method (ob) of @objc CADisplay.uniqueId.getter(v54);
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    v21 = *(v0 + v45);
    if (v21)
    {
      break;
    }

LABEL_13:
    v25 = 0;
    v26 = 0;
    if (!v20)
    {
      goto LABEL_22;
    }

LABEL_14:
    if (!v26)
    {
      goto LABEL_23;
    }

    if (v18 == v25 && v20 == v26)
    {

      v0 = v47;
      goto LABEL_28;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v14 = v46;
    v0 = v47;
    if (v28)
    {
      goto LABEL_28;
    }

LABEL_24:
    __swift_destroy_boxed_opaque_existential_1(v55);
    v17 += 32;
    ++v15;
  }

  v22 = [v21 windowUUID];
  if (v22)
  {
    v23 = v22;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v24, 1, v1);
  outlined init with take of UUID?(v8, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v1))
  {
    outlined destroy of CallControlsService?(v11, &_s10Foundation4UUIDVSgMd);
    goto LABEL_13;
  }

  v29 = v13;
  v30 = v1;
  v31 = v43;
  (*v41)(v43, v11, v30);
  outlined destroy of CallControlsService?(v11, &_s10Foundation4UUIDVSgMd);
  v25 = UUID.uuidString.getter();
  v26 = v32;
  v33 = v31;
  v1 = v30;
  v13 = v29;
  v8 = v42;
  (*v40)(v33, v1);
  if (v20)
  {
    goto LABEL_14;
  }

LABEL_22:
  if (v26)
  {
LABEL_23:

    v14 = v46;
    v0 = v47;
    goto LABEL_24;
  }

  v0 = v47;
LABEL_28:

  outlined init with take of Any(v55, &aBlock);
  if (swift_dynamicCast())
  {
    v34 = *&v55[0];
    goto LABEL_31;
  }

LABEL_30:
  v34 = 0;
LABEL_31:
  v35 = *(v0 + OBJC_IVAR____TtC15ConversationKit30DisplayLayerVisibilityObserver_display);
  *(v0 + OBJC_IVAR____TtC15ConversationKit30DisplayLayerVisibilityObserver_display) = v34;
  v36 = v34;

  if (v34)
  {
    v37 = swift_allocObject();
    swift_weakInit();
    v52 = partial apply for closure #2 in DisplayLayerVisibilityObserver.checkHiddenLayers();
    v53 = v37;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v50 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v51 = &block_descriptor_65;
    v38 = _Block_copy(&aBlock);

    [v36 setDisallowedLayersCallback_];
    _Block_release(v38);
  }
}

uint64_t closure #2 in DisplayLayerVisibilityObserver.checkHiddenLayers()(char a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in closure #2 in DisplayLayerVisibilityObserver.checkHiddenLayers();
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_19_3;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v11, v7, v14);
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t closure #1 in closure #2 in DisplayLayerVisibilityObserver.checkHiddenLayers()(uint64_t a1, char a2)
{
  if (one-time initialization token for screenSharing != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, &static Log.screenSharing);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13[0] = v7;
    *v6 = 136315394;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      type metadata accessor for DisplayLayerVisibilityObserver();
      v8 = String.init<A>(reflecting:)();
      v10 = v9;
    }

    else
    {
      v10 = 0xE300000000000000;
      v8 = 7104878;
    }

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v13);

    *(v6 + 4) = v11;
    *(v6 + 12) = 1024;
    *(v6 + 14) = a2 & 1;
    _os_log_impl(&dword_1BBC58000, v4, v5, "%s Display callback for containing layers inhibited from cloning: %{BOOL}d", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
    MEMORY[0x1BFB23DF0](v6, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DisplayLayerVisibilityObserver.isHidingLayersFromClonedDisplay.setter();
  }

  return result;
}

uint64_t DisplayLayerVisibilityObserver.deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30DisplayLayerVisibilityObserver__isHidingLayersFromClonedDisplay;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t DisplayLayerVisibilityObserver.__deallocating_deinit()
{
  DisplayLayerVisibilityObserver.deinit();

  return swift_deallocClassInstance();
}

void DisplayLayerVisibilityObserver.screenSharingStateMonitor(_:didUpdateScreenSharingBroadcastingState:)()
{
  v1 = v0;
  type metadata accessor for ScreenSharingStateMonitor();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x128);
    v4 = swift_unknownObjectRetain();
    v5 = v3(v4);
    if (v5)
    {
      v6 = v5;
      v7 = [v5 screenShareAttributes];
      v8 = OBJC_IVAR____TtC15ConversationKit30DisplayLayerVisibilityObserver_screenShareAttributes;
      v9 = *(v0 + OBJC_IVAR____TtC15ConversationKit30DisplayLayerVisibilityObserver_screenShareAttributes);
      *(v0 + OBJC_IVAR____TtC15ConversationKit30DisplayLayerVisibilityObserver_screenShareAttributes) = v7;

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
        v14 = swift_slowAlloc();
        osloga = swift_slowAlloc();
        v36 = osloga;
        *v13 = 136315394;
        type metadata accessor for DisplayLayerVisibilityObserver();

        v15 = String.init<A>(reflecting:)();
        v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v36);

        *(v13 + 4) = v17;
        *(v13 + 12) = 2112;
        v18 = *(v1 + v8);
        *(v13 + 14) = v18;
        *v14 = v18;
        v19 = v18;
        _os_log_impl(&dword_1BBC58000, v11, v12, "%s DisplayLayerVisibilityObserver did update the current screenShareAttributes to: %@", v13, 0x16u);
        outlined destroy of CallControlsService?(v14, &_sSo8NSObjectCSgMd);
        OUTLINED_FUNCTION_27();
        __swift_destroy_boxed_opaque_existential_1(osloga);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      (*(*v1 + 208))();
      swift_unknownObjectRelease();

      goto LABEL_12;
    }

    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.conversationKit);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1BBC58000, v28, v29, "Couldn't find active call, not updating screen sharing view.", v30, 2u);
      OUTLINED_FUNCTION_27();
    }

    OUTLINED_FUNCTION_62();

    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.conversationKit);
    swift_unknownObjectRetain();
    oslog = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v22 = 136315138;
      swift_getObjectType();
      v24 = _typeName(_:qualified:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v36);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1BBC58000, oslog, v21, "didUpdateScreenSharingBroadcastingState(_:) was unexpectedly passed a %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();

LABEL_12:
      OUTLINED_FUNCTION_62();
      return;
    }

    OUTLINED_FUNCTION_62();
  }
}

uint64_t DisplayLayerVisibilityObserver.screenSharingInteractionController(_:didUpdateRemoteControlStatus:)()
{
  if (!*(v0 + OBJC_IVAR____TtC15ConversationKit30DisplayLayerVisibilityObserver_screenShareAttributes))
  {
    if (one-time initialization token for sharedMonitor != -1)
    {
      swift_once();
    }

    return (*((*MEMORY[0x1E69E7D40] & *static ScreenSharingStateMonitor.sharedMonitor) + 0x140))(v0);
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc CADisplay.uniqueId.getter(void *a1)
{
  v2 = [a1 uniqueId];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t type metadata accessor for DisplayLayerVisibilityObserver()
{
  result = type metadata singleton initialization cache for DisplayLayerVisibilityObserver;
  if (!type metadata singleton initialization cache for DisplayLayerVisibilityObserver)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for DisplayLayerVisibilityObserver()
{
  type metadata accessor for Published<Bool>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void static PeoplePickerViewControllerProvider.makePeoplePickerViewController(style:existingAddresses:currentConversation:stagedActivity:setPreventsApplicationTerminationWhenModal:)(unsigned __int8 *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v13 = *a1;
  objc_allocWithZone(type metadata accessor for PeoplePickerViewController());
  v11 = a4;

  v12 = a3;
  PeoplePickerViewController.init(style:existingAddresses:currentConversation:stagedActivity:setPreventsApplicationTerminationWhenModal:)(&v13, a2, a3, a4, a5, a6);
}

_BYTE *storeEnumTagSinglePayload for PeoplePickerViewControllerProvider(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

id static UIImageView.appIcon(for:)(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    type metadata accessor for UIImage();
    v4 = static UIImage.appIcon(for:usingIconCrop:)(a1, v2, 0);
    v2 = static UIImageView.defaultAppIcon(for:)(v4);
  }

  return v2;
}

id static UIImageView.defaultAppIcon(for:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  [v1 setClipsToBounds_];
  [v1 setContentMode_];

  return v1;
}

BOOL static CallScreeningTrackingState.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a2[5];

  return _s15ConversationKit23CKStateMachineContainerC2eeoiySbACyxG_AEtFZAA13CallScreeningO5StateO_Tt1g5(v5, v6);
}

uint64_t CallScreeningTrackingState.init(prevState:callUUID:trackingService:canScreenCall:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, void *a6@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMd);
  v12 = swift_allocObject();
  result = swift_weakInit();
  *a6 = a4;
  a6[1] = a5;
  a6[2] = a1;
  a6[3] = a2;
  a6[4] = a3;
  a6[5] = v12;
  return result;
}

Swift::Int CallScreeningTrackingStateResult.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CallScreeningTrackingStateResult()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  CallScreeningTrackingStateResult.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t CallScreeningTrackingState.canScreenCall.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CallScreeningTrackingState.callUUID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CallScreeningTrackingState.willExit(to:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 16);
  v40[0] = *v2;
  v40[1] = v13;
  v40[2] = *(v2 + 32);
  OUTLINED_FUNCTION_0_152();
  WitnessTable = swift_getWitnessTable();
  result = CallScreeningState.stateMachine.getter(a2, WitnessTable);
  if (result)
  {
    v38 = result;
    v39 = v9;
    v41 = v7;
    (*(*(a2 + 24) + 16))(*(a2 + 16));
    v37 = *(v2 + 16);
    v16 = *(v2 + 24);
    v17 = *(v2 + 32);

    v36 = v16;

    outlined init with copy of CallScreening.State(a1, v40);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = a1;
    v21 = v19;
    v35 = v20;
    outlined destroy of CallScreening.State(v20);
    if (os_log_type_enabled(v18, v21))
    {
      v22 = swift_slowAlloc();
      v34 = v4;
      v23 = v22;
      v33 = swift_slowAlloc();
      *&v40[0] = v33;
      *v23 = 136446466;
      v24 = CallScreeningTrackingState.description.getter();
      v26 = v25;

      v27 = v36;

      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v40);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2082;
      v29 = CallScreening.State.description.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v40);

      *(v23 + 14) = v31;
      _os_log_impl(&dword_1BBC58000, v18, v21, "%{public}s Exiting to %{public}s", v23, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {

      v27 = v36;
    }

    (*(v39 + 8))(v12, v41);
    (*(*v17 + 96))(v37, v27);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CallScreeningTrackingState.enteredState()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1[1];
  v34 = *v1;
  v35 = v12;
  v36 = v1[2];
  OUTLINED_FUNCTION_0_152();
  WitnessTable = swift_getWitnessTable();
  v14 = CallScreeningState.stateMachine.getter(v5, WitnessTable);
  if (v14)
  {
    v32 = v14;
    v33 = v8;
    v37 = v6;
    (*(*(v5 + 24) + 16))(*(v5 + 16));
    v31 = *(v1 + 2);
    v15 = *(v1 + 3);
    v16 = *(v1 + 4);

    v30 = v15;

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v29 = v3;
      v20 = v19;
      v28 = swift_slowAlloc();
      *&v34 = v28;
      *v20 = 136446210;
      v27 = CallScreeningTrackingState.description.getter();
      v22 = v21;

      v23 = v30;

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v22, &v34);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1BBC58000, v17, v18, "EnteredState %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {

      v23 = v30;
    }

    (*(v33 + 8))(v11, v37);
    v25 = v4[1];
    v34 = *v4;
    v35 = v25;
    v36 = v4[2];
    (*(*v16 + 88))(&v34, v31, v23);
    swift_unknownObjectRelease();
  }
}

uint64_t CallScreeningTrackingState.update(with:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v3;
  v4 = type metadata accessor for CallScreeningStatus();
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static CKStateMachineActor.shared;
  v1[20] = static CKStateMachineActor.shared;

  return MEMORY[0x1EEE6DFA0](CallScreeningTrackingState.update(with:), v5, 0);
}

{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v4 = v1[1];
  v3 = v1[2];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  OUTLINED_FUNCTION_0_152();
  WitnessTable = swift_getWitnessTable();
  v6 = CallScreeningState.stateMachine.getter(v2, WitnessTable);
  *(v0 + 168) = v6;
  if (v6)
  {
    v7 = *(v0 + 144);
    v8 = *(v0 + 152);
    v9 = *(v0 + 128);
    v10 = *(v0 + 136);
    v12 = *(v0 + 112);
    v11 = *(v0 + 120);
    v36 = *v9;
    *(v0 + 64) = *(v9 + 1);
    v13 = swift_allocObject();
    *(v0 + 176) = v13;
    v14 = *(v11 + 16);
    *(v0 + 184) = v14;
    *(v13 + 16) = v14;
    v15 = *(v11 + 24);
    *(v0 + 192) = v15;
    *(v13 + 24) = v15;
    v16 = *v9;
    v17 = *(v9 + 2);
    *(v13 + 48) = *(v9 + 1);
    *(v13 + 64) = v17;
    *(v13 + 32) = v16;
    v18 = type metadata accessor for AnsweringMachineCallStatus();
    (*(v7 + 16))(v8, v12 + *(v18 + 28), v10);
    if ((*(v7 + 88))(v8, v10) != *MEMORY[0x1E6995E98])
    {
      v31 = *(v0 + 144);
      v30 = *(v0 + 152);
      v32 = *(v0 + 136);

      outlined init with copy of String(v0 + 64, v0 + 80);
      v33 = *(v31 + 8);

      v33(v30, v32);
      v39 = *(v15 + 32) + **(v15 + 32);
      v34 = swift_task_alloc();
      *(v0 + 224) = v34;
      *v34 = v0;
      v34[1] = CallScreeningTrackingState.update(with:);
      OUTLINED_FUNCTION_1_124();

      __asm { BRAA            X8, X16 }
    }

    v19 = *(v0 + 144);
    v20 = *(v0 + 152);
    v21 = *(v0 + 136);
    v22 = *(v0 + 112);
    v23 = *(v0 + 64);
    v24 = *(v0 + 72);

    outlined init with copy of String(v0 + 64, v0 + 96);
    v25 = *(v19 + 8);

    v25(v20, v21);
    v26 = *(v22 + 16) == v23 && *(v22 + 24) == v24;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v38 = (v36 + *v36);
      v27 = swift_task_alloc();
      *(v0 + 200) = v27;
      *v27 = v0;
      v27[1] = CallScreeningTrackingState.update(with:);
      v28 = *(v0 + 112);

      return v38(v28);
    }

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_13();

  return v35();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;
  v4 = *(v3 + 160);
  v5 = *v0;
  OUTLINED_FUNCTION_14_1();
  *v6 = v5;
  *(v8 + 240) = v7;

  return MEMORY[0x1EEE6DFA0](CallScreeningTrackingState.update(with:), v4, 0);
}

{
  OUTLINED_FUNCTION_9();
  if (*(v0 + 240) != 1)
  {
    v4 = *(*(v0 + 192) + 32) + **(*(v0 + 192) + 32);
    v3 = swift_task_alloc();
    *(v0 + 208) = v3;
    *v3 = v0;
    v3[1] = CallScreeningTrackingState.update(with:);
    OUTLINED_FUNCTION_1_124();

    __asm { BRAA            X8, X16 }
  }

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_13();

  return v1();
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 216) = v0;

  v5 = *(v2 + 160);
  if (v0)
  {
    v6 = CallScreeningTrackingState.update(with:);
  }

  else
  {
    v6 = CallScreeningTrackingState.update(with:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  OUTLINED_FUNCTION_24_0();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 232) = v0;

  v5 = *(v2 + 160);
  if (v0)
  {
    v6 = CallScreeningTrackingState.update(with:);
  }

  else
  {
    v6 = CallScreeningTrackingState.update(with:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  OUTLINED_FUNCTION_9();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  OUTLINED_FUNCTION_9();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_13();

  return v0();
}

void closure #1 in CallScreeningTrackingState.update(with:)(void *a1, uint64_t a2)
{
  if (a1[6] >> 61 == 2)
  {
    if (a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24))
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v3 = 0;
  }

  lazy protocol witness table accessor for type CKStateMachineError and conformance CKStateMachineError();
  v4 = swift_allocError();
  if (v3)
  {
  }

  else
  {
    swift_willThrow();
  }
}

uint64_t protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreeningTrackingState<A>()
{
  v2 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = v0[2];
  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v1;
  v3[1] = protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreeningTrackingState<A>;

  return CallScreeningTrackingState.update(with:)();
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *v0;
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

unint64_t CallScreeningTrackingState.description.getter()
{
  _StringGuts.grow(_:)(27);

  MEMORY[0x1BFB20B10](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t lazy protocol witness table accessor for type CallScreeningTrackingStateResult and conformance CallScreeningTrackingStateResult()
{
  result = lazy protocol witness table cache variable for type CallScreeningTrackingStateResult and conformance CallScreeningTrackingStateResult;
  if (!lazy protocol witness table cache variable for type CallScreeningTrackingStateResult and conformance CallScreeningTrackingStateResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallScreeningTrackingStateResult and conformance CallScreeningTrackingStateResult);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CallScreeningTrackingState<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CallScreeningTrackingStateResult(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata instantiation function for CallScreeningTrackingState()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t AttributedStrings.Notices.subjectContainer.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for AttributeContainer();

  return __swift_project_value_buffer(v3, a2);
}

id one-time initialization function for foregroundContainer()
{
  v0 = type metadata accessor for AttributeContainer();
  __swift_allocate_value_buffer(v0, static AttributedStrings.Notices.foregroundContainer);
  __swift_project_value_buffer(v0, static AttributedStrings.Notices.foregroundContainer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  v2 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v3 = one-time initialization token for foregroundColor;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = static Colors.Notices.foregroundColor;
  v6 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
  v7 = MEMORY[0x1E69DB648];
  *(inited + 40) = v5;
  v8 = *v7;
  *(inited + 64) = v6;
  *(inited + 72) = v8;
  v9 = objc_opt_self();
  v10 = *MEMORY[0x1E69DDD80];
  v11 = v5;
  v12 = v8;
  result = [v9 _preferredFontForTextStyle_variant_];
  if (result)
  {
    v14 = result;
    *(inited + 104) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont);
    *(inited + 80) = v14;
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    Dictionary.init(dictionaryLiteral:)();
    return AttributeContainer.init(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id one-time initialization function for subjectContainer()
{
  v0 = type metadata accessor for AttributeContainer();
  __swift_allocate_value_buffer(v0, static AttributedStrings.Notices.subjectContainer);
  __swift_project_value_buffer(v0, static AttributedStrings.Notices.subjectContainer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  v2 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v3 = one-time initialization token for subjectColor;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = static Colors.Notices.subjectColor;
  v6 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
  v7 = MEMORY[0x1E69DB648];
  *(inited + 40) = v5;
  v8 = *v7;
  *(inited + 64) = v6;
  *(inited + 72) = v8;
  v9 = objc_opt_self();
  v10 = *MEMORY[0x1E69DDD80];
  v11 = v5;
  v12 = v8;
  result = [v9 _preferredFontForTextStyle_variant_];
  if (result)
  {
    v14 = result;
    *(inited + 104) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont);
    *(inited + 80) = v14;
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    Dictionary.init(dictionaryLiteral:)();
    return AttributeContainer.init(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static AttributedStrings.Notices.foregroundContainer.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for AttributeContainer();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void *ParticipantMonogramViewLayout.__allocating_init(audioVisualizer:contactView:titleView:subtitleView:glowView:ringButton:)()
{
  OUTLINED_FUNCTION_4_32();
  swift_allocObject();
  v0 = closure #1 in variable initialization expression of ParticipantMonogramViewLayout.bellIcon();
  return OUTLINED_FUNCTION_2_121(v0);
}

Swift::Void __swiftcall ParticipantMonogramViewLayout.layout(in:inRoster:)(__C::CGRect in, Swift::Bool inRoster)
{
  v3 = v2;
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 56);
  v121 = v13;
  if (inRoster)
  {
    LODWORD(v122) = 0;
    v14 = 0;
LABEL_13:
    v22 = 0.0;
    goto LABEL_14;
  }

  v15 = *(*&v13 + OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label);
  v16 = UILabel.isEmpty.getter();

  v17 = 0;
  if (!v16 && height >= 88.0)
  {
    v17 = [*&v121 isHidden] ^ 1;
  }

  v18 = *(v3 + 64);
  v19 = *&v18[OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label];
  v20 = UILabel.isEmpty.getter();

  v14 = 0;
  if (!v20 && height >= 180.0 && height >= 88.0)
  {
    v14 = [v18 isHidden] ^ 1;
  }

  LODWORD(v122) = [*(v3 + 40) isHidden] ^ 1;
  v22 = 1.0;
  v13 = v121;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  [*&v13 setAlpha_];
  v23 = *(v3 + 64);
  if (v14)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 0.0;
  }

  v118 = *(v3 + 64);
  [v23 setAlpha_];
  v25 = *(v3 + 40);
  if (LODWORD(v122))
  {
    v26 = 1.0;
  }

  else
  {
    v26 = 0.0;
  }

  v117 = *(v3 + 40);
  [v25 setAlpha_];
  ParticipantMonogramViewLayout.totalLabelHeight(in:isInRoster:)(inRoster, x, y, width, height);
  v27 = OUTLINED_FUNCTION_0_154();
  v120 = v28;
  v33 = closure #1 in ParticipantMonogramViewLayout.layout(in:inRoster:)(v29, height < 88.0, v3, v27, v30, v31, v32, v28);
  v124.origin.x = OUTLINED_FUNCTION_0_154();
  MidX = CGRectGetMidX(v124);
  v114 = v33;
  v35 = v33 * 0.5;
  v36 = MidX - v33 * 0.5;
  v37 = *MEMORY[0x1E69E7048];
  v38 = *(v10 + 104);
  v38(v12, v37, v9);
  v115 = v3;
  v39 = *(v3 + 48);
  v40 = [v39 traitCollection];
  [v40 displayScale];
  v113 = CGFloat.rounded(_:toScale:)(v12, v41, v36);

  v42 = *(v10 + 8);
  v42(v12, v9);
  v125.origin.x = OUTLINED_FUNCTION_0_154();
  v43 = CGRectGetMidY(v125) - v35;
  v38(v12, v37, v9);
  v109 = v39;
  v44 = [v39 traitCollection];
  [v44 displayScale];
  v111 = CGFloat.rounded(_:toScale:)(v12, v45, v43);

  v42(v12, v9);
  if (one-time initialization token for ringButton != -1)
  {
    swift_once();
  }

  [static Fonts.ParticipantViews.ringButton lineHeight];
  v47 = ceil(v46) + 16.0;
  v48 = width * 0.25;
  v49 = v117;
  if (width * 0.25 >= 50.0)
  {
    [v117 setImage:0 forState:{0, v48}];
    v50 = [objc_opt_self() conversationKit];
    v123._object = 0xE000000000000000;
    v51.value._countAndFlagsBits = 0x61737265766E6F43;
    v51.value._object = 0xEF74694B6E6F6974;
    v52._object = 0x80000001BC50CAA0;
    v52._countAndFlagsBits = 0xD000000000000015;
    v53._countAndFlagsBits = 0;
    v53._object = 0xE000000000000000;
    v123._countAndFlagsBits = 0;
    v54 = NSLocalizedString(_:tableName:bundle:value:comment:)(v52, v51, v50, v53, v123);

    outlined bridged method (mbnnn) of @objc UIButton.setTitle(_:for:)(v54._countAndFlagsBits, v54._object, 0, v49);
    v119 = 50.0;
  }

  else
  {
    [v117 setImage:*(v115 + 32) forState:{0, v48}];
    outlined bridged method (mbnnn) of @objc UIButton.setTitle(_:for:)(0, 0xE000000000000000, 0, v49);
    v119 = v47;
  }

  v55 = v121;
  v56 = v118;
  [v49 sizeToFit];
  [v49 frame];
  v58 = v57;
  v60 = v59;
  type metadata accessor for AppUtilities();
  v61 = static AppUtilities.isRTL.getter();
  v118 = 10.0;
  if (!v61)
  {
    v126.origin.x = v58;
    v126.origin.y = v60;
    v126.size.width = v119;
    v126.size.height = v47;
    v62 = width + -10.0 - CGRectGetWidth(v126);
    OUTLINED_FUNCTION_3_120();
    v118 = v62 + v63;
  }

  v112 = v47;
  v108 = v47 * 0.5;
  v64 = height - ceil(v120 * 0.5) + -13.0 - ceil(v47 * 0.5);
  OUTLINED_FUNCTION_3_120();
  v66 = v65;
  OUTLINED_FUNCTION_3_120();
  v68 = v64 + v67 - v66;
  v69 = width + -13.0;
  if (LODWORD(v122))
  {
    if (static AppUtilities.isRTL.getter())
    {
      v127.origin.x = v118;
      v127.size.width = v119;
      v127.origin.y = v68;
      v127.size.height = v112;
      v70 = CGRectGetMaxX(v127) + 13.0;
    }

    else
    {
      v128.origin.x = v118;
      v128.size.width = v119;
      v128.origin.y = v68;
      v128.size.height = v112;
      v72 = width - CGRectGetMinX(v128);
      OUTLINED_FUNCTION_3_120();
      v70 = v72 + v73;
    }

    v71 = v69 - v70;
  }

  else
  {
    v71 = v69 + -13.0;
  }

  v121 = v71;
  ParticipantViewLabelContainerView.intrinsicContentSize.getter();
  v117 = v74;
  v75 = static AppUtilities.isRTL.getter();
  v76 = 13.0;
  v116 = 13.0;
  if (v75)
  {
    v77 = 0;
    v78 = v121;
    v79 = v117;
    v116 = v69 - CGRectGetWidth(*&v76);
  }

  v110 = y;
  v107 = v68;
  v80 = x;
  if (LOBYTE(v122))
  {
    v122 = height - v120 + -13.0;
    ParticipantViewLabelContainerView.intrinsicContentSize.getter();
    MaxY = height - v81 + -13.0;
  }

  else
  {
    v129.origin.x = OUTLINED_FUNCTION_0_154();
    v83 = CGRectGetHeight(v129);
    v85 = v113;
    v84 = v114;
    v130.origin.x = v113;
    v86 = v111;
    v130.origin.y = v111;
    v130.size.width = v114;
    v130.size.height = v114;
    v87 = ceil((v83 - CGRectGetMaxY(v130) - v120) * 0.5);
    v131.origin.x = v85;
    v131.origin.y = v86;
    v131.size.width = v84;
    v131.size.height = v84;
    v132.origin.y = CGRectGetMaxY(v131) + v87;
    v132.origin.x = v116;
    *&v132.size.height = v117;
    v122 = v132.origin.y;
    v132.size.width = v121;
    MaxY = CGRectGetMaxY(v132);
  }

  v88 = height;
  ParticipantViewLabelContainerView.intrinsicContentSize.getter();
  v90 = v89;
  v91 = 13.0;
  if (static AppUtilities.isRTL.getter())
  {
    v133.origin.x = 13.0;
    v133.origin.y = MaxY;
    v133.size.width = v121;
    v133.size.height = v90;
    v91 = v69 - CGRectGetWidth(v133);
  }

  v106 = v90;
  v120 = MaxY;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (v88 >= width)
  {
    v92 = width;
  }

  else
  {
    v92 = v88;
  }

  v93 = (*static Defaults.shared + 424);
  v94 = *v93;
  v95 = floor(v92 * (1.0 - (*v93)()));
  v96 = floor(v92 * (1.0 - v94()));
  v134.origin.x = v80;
  v134.origin.y = v110;
  v134.size.width = width;
  v134.size.height = v88;
  v135 = CGRectInset(v134, v95, v96);
  v97 = v135.origin.x;
  v98 = v135.origin.y;
  v99 = v135.size.width;
  v100 = v135.size.height;
  v102 = v113;
  v101 = v114;
  v103 = v111;
  [v109 setFrame_];
  v104 = v115;
  [*(v115 + 24) setFrame_];
  [*(v104 + 16) setFrame_];
  v105 = v121;
  [*&v55 setFrame_];
  [*&v56 setFrame_];
  [v49 setFrame_];
  [v49 _setCornerRadius_];
}

id closure #1 in variable initialization expression of ParticipantMonogramViewLayout.bellIcon()
{
  type metadata accessor for UIImage();
  v0 = *MEMORY[0x1E69DDDC8];
  v6[64] = 0;
  v7[0] = 0x6C69662E6C6C6562;
  v7[1] = 0xE90000000000006CLL;
  v7[2] = -1;
  v7[3] = v0;
  v8 = 0;
  v9 = 4;
  v10 = 0;
  v11 = 0;
  v12[0] = 0x6C69662E6C6C6562;
  v12[1] = 0xE90000000000006CLL;
  v12[2] = -1;
  v12[3] = v0;
  v13 = 0;
  v14 = 4;
  v15 = 0;
  v16 = 0;
  v1 = v0;
  outlined init with copy of SymbolImageDescription(v7, v6);
  outlined destroy of SymbolImageDescription(v12);
  v2 = static UIImage.symbolImage(for:)(v7);
  outlined destroy of SymbolImageDescription(v7);
  if (!v2)
  {
    return 0;
  }

  v3 = [objc_opt_self() whiteColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];

  return v4;
}

void *ParticipantMonogramViewLayout.init(audioVisualizer:contactView:titleView:subtitleView:glowView:ringButton:)()
{
  OUTLINED_FUNCTION_4_32();
  v0 = closure #1 in variable initialization expression of ParticipantMonogramViewLayout.bellIcon();
  return OUTLINED_FUNCTION_2_121(v0);
}

BOOL UILabel.isEmpty.getter()
{
  v1 = outlined bridged method (pb) of @objc RTTUtterance.text.getter(v0);
  if (!v2)
  {
    return 1;
  }

  v3 = v1;
  v4 = v2;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  return v5 == 0;
}

double ParticipantMonogramViewLayout.totalLabelHeight(in:isInRoster:)(char a1, double a2, double a3, double a4, double a5)
{
  v6 = 0.0;
  if ((a1 & 1) == 0 && a5 >= 88.0)
  {
    v8 = v5;
    v9 = *(*(v5 + 56) + OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label);
    v10 = UILabel.isEmpty.getter();

    if (!v10)
    {
      ParticipantViewLabelContainerView.intrinsicContentSize.getter();
      v6 = v11 + 0.0;
    }

    if (a5 >= 180.0)
    {
      v12 = *(*(v8 + 64) + OBJC_IVAR____TtC15ConversationKit33ParticipantViewLabelContainerView_label);
      v13 = UILabel.isEmpty.getter();

      if (!v13)
      {
        ParticipantViewLabelContainerView.intrinsicContentSize.getter();
        v6 = v6 + v14;
      }
    }
  }

  return ceil(v6);
}

double closure #1 in ParticipantMonogramViewLayout.layout(in:inRoster:)(char a1, char a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8)
{
  v14 = type metadata accessor for FloatingPointRoundingRule();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a7 >= a6)
  {
    v18 = a6;
  }

  else
  {
    v18 = a7;
  }

  if (a1)
  {
    v19 = v18 * 0.55;
    v20 = v18 + -28.0;
  }

  else
  {
    if (a7 - (a8 + a8) >= a6)
    {
      v21 = a6;
    }

    else
    {
      v21 = a7 - (a8 + a8);
    }

    if (a2)
    {
      v19 = v18 * 0.55;
      v22 = -20.0;
    }

    else
    {
      v19 = v18 * 0.4;
      v22 = -28.0;
    }

    v20 = v21 + v22;
  }

  if (v20 >= v19)
  {
    v20 = v19;
  }

  if (v20 <= 168.0)
  {
    v23 = v20;
  }

  else
  {
    v23 = 168.0;
  }

  (*(v15 + 104))(v17, *MEMORY[0x1E69E7040], v14);
  v24 = [*(a3 + 48) traitCollection];
  [v24 displayScale];
  v26 = CGFloat.rounded(_:toScale:)(v17, v25, v23);

  (*(v15 + 8))(v17, v14);
  return v26;
}

uint64_t ParticipantMonogramViewLayout.__deallocating_deinit()
{
  ParticipantMonogramViewLayout.deinit();

  return swift_deallocClassInstance();
}

uint64_t *ReceiptionistCaptionsProviderBuilder.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_155();
  }

  return &static ReceiptionistCaptionsProviderBuilder.shared;
}

uint64_t ReceiptionistCaptionsProviderBuilder.build(with:)(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v5 = Strong;
  swift_getObjectType();
  v6 = dispatch thunk of ScreeningCaptionsProvider.callUUID.getter();
  v8 = v7;
  v9 = [a1 uniqueProxyIdentifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v6 == v10 && v8 == v12)
  {

    return v5;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v14 & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v15 = [a1 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for ReceiptionistCaptionsProvider();
    swift_allocObject();
    v16 = a1;
    ReceiptionistCaptionsProvider.init(call:callerName:)();
    v5 = v17;
    *(v2 + 24) = lazy protocol witness table accessor for type ReceiptionistCaptionsProvider and conformance ReceiptionistCaptionsProvider();
    *(v2 + 32) = &protocol witness table for ReceiptionistCaptionsProvider;
    swift_unknownObjectWeakAssign();
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type ReceiptionistCaptionsProvider and conformance ReceiptionistCaptionsProvider()
{
  result = lazy protocol witness table cache variable for type ReceiptionistCaptionsProvider and conformance ReceiptionistCaptionsProvider;
  if (!lazy protocol witness table cache variable for type ReceiptionistCaptionsProvider and conformance ReceiptionistCaptionsProvider)
  {
    type metadata accessor for ReceiptionistCaptionsProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReceiptionistCaptionsProvider and conformance ReceiptionistCaptionsProvider);
  }

  return result;
}

uint64_t ReceiptionistCaptionsProviderBuilder.__allocating_init()()
{
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_1_126(v1);
  return v0;
}

uint64_t static ReceiptionistCaptionsProviderBuilder.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_155();
  }
}

uint64_t ReceiptionistCaptionsProviderBuilder.__deallocating_deinit()
{
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t ReceiptionistCaptionsProviderBuilder.init()()
{
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t LetMeInCountdownViewModel.__allocating_init(service:)(__int128 *a1)
{
  v2 = swift_allocObject();
  LetMeInCountdownViewModel.init(service:)(a1);
  return v2;
}

Swift::Void __swiftcall LetMeInCountdownViewModel.resetCountdown()()
{
  v1 = v0;
  if (one-time initialization token for sidebar != -1)
  {
    OUTLINED_FUNCTION_0_156();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.sidebar);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_75(&dword_1BBC58000, v5, v6, "Reset let me in countdown.");
    OUTLINED_FUNCTION_18();
  }

  v7 = OBJC_IVAR____TtC15ConversationKit25LetMeInCountdownViewModel_shouldShowCountdown;
  OUTLINED_FUNCTION_3_5();
  *(v1 + v7) = 1;
  type metadata accessor for ConversationControlsJoinCountdownActionController();
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC15ConversationKit25LetMeInCountdownViewModel____lazy_storage___countdownController) = ConversationControlsJoinCountdownActionController.init()();
}

uint64_t LetMeInCountdownViewModel.init(service:)(__int128 *a1)
{
  *(v1 + 16) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC15ConversationKit25LetMeInCountdownViewModel_currentVoucher;
  v4 = type metadata accessor for CountdownVoucher(0);
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC15ConversationKit25LetMeInCountdownViewModel_shouldShowCountdown) = 1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit25LetMeInCountdownViewModel____lazy_storage___countdownController) = 0;
  outlined init with take of TapInteractionHandler(a1, v1 + OBJC_IVAR____TtC15ConversationKit25LetMeInCountdownViewModel_service);
  return v1;
}

uint64_t LetMeInCountdownViewModel.buildView()()
{
  v0 = type metadata accessor for PlainButtonStyle();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVy15ConversationKit20LetMeInCountdownView33_1A41F1CEB829A5E1C8BEFE98A867E125LLVGAA24_BackgroundStyleModifierVyAA5ColorVGGMd);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0Vy15ConversationKit016LetMeInCountdownE033_1A41F1CEB829A5E1C8BEFE98A867E125LLVGAA011_BackgroundG8ModifierVyAA5ColorVGG_AA05PlainiG0VQo_AA12_FrameLayoutVGMd);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v17 - v8;
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type LetMeInCountdownView and conformance LetMeInCountdownView();

  Button.init(action:label:)();

  v10 = static Color.clear.getter();
  v11 = static Edge.Set.all.getter();
  v12 = &v6[*(v4 + 36)];
  *v12 = v10;
  v12[8] = v11;
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type ModifiedContent<Button<LetMeInCountdownView>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  View.buttonStyle<A>(_:)();
  (*(v1 + 8))(v3, v0);
  outlined destroy of TapInteractionHandler?(v6, &_s7SwiftUI15ModifiedContentVyAA6ButtonVy15ConversationKit20LetMeInCountdownView33_1A41F1CEB829A5E1C8BEFE98A867E125LLVGAA24_BackgroundStyleModifierVyAA5ColorVGGMd);
  static IconButtonStyle.Defaults.phone.iconWidth.getter();
  static IconButtonStyle.Defaults.phone.iconWidth.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = &v9[*(v7 + 36)];
  v14 = v17[1];
  *v13 = v17[0];
  *(v13 + 1) = v14;
  *(v13 + 2) = v17[2];
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  v15 = AnyView.init<A>(_:)();

  return v15;
}

uint64_t LetMeInCountdownViewModel.enabled(for:)(uint64_t a1, uint64_t a2, char a3)
{
  if ((a1 & 0xFF00000000) == 0x6000000000 && a2 == 3)
  {
    if (a3)
    {
      v6 = OBJC_IVAR____TtC15ConversationKit25LetMeInCountdownViewModel_shouldShowCountdown;
      OUTLINED_FUNCTION_4_5();
      v5 = *(v3 + v6);
    }

    else
    {
      v5 = 0;
    }

    OUTLINED_FUNCTION_3_5();
    *(v3 + 16) = v5;
    v7 = OBJC_IVAR____TtC15ConversationKit25LetMeInCountdownViewModel_shouldShowCountdown;
    OUTLINED_FUNCTION_3_5();
    *(v3 + v7) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_3_5();
    v5 = 0;
    *(v3 + 16) = 0;
  }

  return v5;
}

Swift::Void __swiftcall LetMeInCountdownViewModel.onDisappear()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CountdownVoucherVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = OBJC_IVAR____TtC15ConversationKit25LetMeInCountdownViewModel_currentVoucher;
  swift_beginAccess();
  outlined init with copy of CountdownVoucher?(v0 + v5, v4);
  v6 = type metadata accessor for CountdownVoucher(0);
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v4, 1, v6);
  outlined destroy of TapInteractionHandler?(v4, &_s15ConversationKit16CountdownVoucherVSgMd);
  if (v5 != 1)
  {
    LetMeInCountdownViewModel.cancelCountdown()();
  }
}

uint64_t LetMeInCountdownViewModel.cancelCountdown()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CountdownVoucherVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit25LetMeInCountdownViewModel_service + 24);
  v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit25LetMeInCountdownViewModel_service + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15ConversationKit25LetMeInCountdownViewModel_service), v4);
  (*(v5 + 184))(v4, v5);
  v6 = *LetMeInCountdownViewModel.countdownController.getter();
  (*(v6 + 264))();

  v7 = type metadata accessor for CountdownVoucher(0);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  return LetMeInCountdownViewModel.currentVoucher.setter(v3);
}

Swift::Void __swiftcall LetMeInCountdownViewModel.skipCountdown()()
{
  v1 = v0;
  if (one-time initialization token for sidebar != -1)
  {
    OUTLINED_FUNCTION_0_156();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.sidebar);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_75(&dword_1BBC58000, v5, v6, "Skip let me in countdown.");
    OUTLINED_FUNCTION_18();
  }

  v7 = OBJC_IVAR____TtC15ConversationKit25LetMeInCountdownViewModel_shouldShowCountdown;
  OUTLINED_FUNCTION_3_5();
  *(v1 + v7) = 0;
}

Swift::Void __swiftcall LetMeInCountdownViewModel.initializeCountdownView(with:fullValue:)(Swift::Double with, Swift::Double fullValue)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xE0))(with, fullValue);
  }
}

Swift::Void __swiftcall LetMeInCountdownViewModel.startCountdown()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xE8))();
  }
}

Swift::Void __swiftcall LetMeInCountdownViewModel.tick()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xF0))();
  }
}

Swift::Void __swiftcall LetMeInCountdownViewModel.countdownEnded()()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CountdownVoucherVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16_4();
  v5 = *LetMeInCountdownViewModel.countdownController.getter();
  (*(v5 + 264))();

  v6 = type metadata accessor for CountdownVoucher(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v6);
  LetMeInCountdownViewModel.currentVoucher.setter(v1);
  if (one-time initialization token for sidebar != -1)
  {
    OUTLINED_FUNCTION_0_156();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, &static Logger.sidebar);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v9))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_75(&dword_1BBC58000, v10, v11, "Count down ended, join conversation.");
    OUTLINED_FUNCTION_18();
  }

  v12 = (v2 + OBJC_IVAR____TtC15ConversationKit25LetMeInCountdownViewModel_service);
  v13 = *(v2 + OBJC_IVAR____TtC15ConversationKit25LetMeInCountdownViewModel_service + 24);
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v14 + 168))(v13, v14);
}

uint64_t LetMeInCountdownViewModel.countdownController.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit25LetMeInCountdownViewModel____lazy_storage___countdownController;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit25LetMeInCountdownViewModel____lazy_storage___countdownController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit25LetMeInCountdownViewModel____lazy_storage___countdownController);
  }

  else
  {
    v3 = v0;
    type metadata accessor for ConversationControlsJoinCountdownActionController();
    swift_allocObject();
    v2 = ConversationControlsJoinCountdownActionController.init()();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t LetMeInCountdownViewModel.currentVoucher.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CountdownVoucherVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC15ConversationKit25LetMeInCountdownViewModel_currentVoucher;
  swift_beginAccess();
  outlined init with copy of CountdownVoucher?(v1 + v6, v5);
  swift_beginAccess();
  outlined assign with copy of CountdownVoucher?(a1, v1 + v6);
  swift_endAccess();
  LetMeInCountdownViewModel.currentVoucher.didset(v5);
  outlined destroy of TapInteractionHandler?(a1, &_s15ConversationKit16CountdownVoucherVSgMd);
  return outlined destroy of TapInteractionHandler?(v5, &_s15ConversationKit16CountdownVoucherVSgMd);
}

uint64_t LetMeInCountdownViewModel.setVoucher(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CountdownVoucherVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16_4();
  outlined init with copy of CountdownVoucher(a1, v1);
  v5 = type metadata accessor for CountdownVoucher(0);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v5);
  return LetMeInCountdownViewModel.currentVoucher.setter(v1);
}

uint64_t LetMeInCountdownViewModel.currentVoucher.didset(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CountdownVoucherVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for CountdownVoucher(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CountdownVoucher?(a1, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    return outlined destroy of TapInteractionHandler?(v4, &_s15ConversationKit16CountdownVoucherVSgMd);
  }

  outlined init with take of CountdownVoucher(v4, v7);
  v9 = *LetMeInCountdownViewModel.countdownController.getter();
  (*(v9 + 256))(v7);

  return outlined destroy of CountdownVoucher(v7);
}

uint64_t LetMeInCountdownViewModel.countdownViewCreated(_:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CountdownVoucherVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16_4();
  swift_unknownObjectWeakAssign();
  v4 = LetMeInCountdownViewModel.countdownController.getter();
  (*(*v4 + 248))(v0, &protocol witness table for LetMeInCountdownViewModel);

  v5 = type metadata accessor for CountdownVoucher(0);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v5);
  return LetMeInCountdownViewModel.currentVoucher.setter(v1);
}

uint64_t LetMeInCountdownViewModel.shouldShowCountdown.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit25LetMeInCountdownViewModel_shouldShowCountdown;
  OUTLINED_FUNCTION_4_5();
  return *(v0 + v1);
}

uint64_t closure #1 in LetMeInCountdownViewModel.buildView()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    LetMeInCountdownViewModel.cancelCountdown()();
  }

  return result;
}

uint64_t LetMeInCountdownViewModel.deinit()
{
  MEMORY[0x1BFB23F10](v0 + 24);
  outlined destroy of TapInteractionHandler?(v0 + OBJC_IVAR____TtC15ConversationKit25LetMeInCountdownViewModel_currentVoucher, &_s15ConversationKit16CountdownVoucherVSgMd);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC15ConversationKit25LetMeInCountdownViewModel_service);

  return v0;
}

uint64_t LetMeInCountdownViewModel.__deallocating_deinit()
{
  LetMeInCountdownViewModel.deinit();

  return swift_deallocClassInstance();
}

void *LetMeInCountdownView.makeUIView(context:)()
{
  type metadata accessor for ConversationControlsJoinCallCountdownView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  static Layout.ConversationControls.values.getter(v4);
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))(*&v4[38], 0);
  v2 = [objc_opt_self() secondarySystemFillColor];
  (*((*v1 & *v0) + 0xB8))(v2);
  LetMeInCountdownViewModel.countdownViewCreated(_:)();
  return v0;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance LetMeInCountdownView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type LetMeInCountdownView and conformance LetMeInCountdownView();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance LetMeInCountdownView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type LetMeInCountdownView and conformance LetMeInCountdownView();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance LetMeInCountdownView()
{
  lazy protocol witness table accessor for type LetMeInCountdownView and conformance LetMeInCountdownView();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t outlined init with copy of CountdownVoucher(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CountdownVoucher(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for LetMeInCountdownViewModel()
{
  result = type metadata singleton initialization cache for LetMeInCountdownViewModel;
  if (!type metadata singleton initialization cache for LetMeInCountdownViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for LetMeInCountdownViewModel()
{
  type metadata accessor for CountdownVoucher?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t outlined assign with copy of CountdownVoucher?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CountdownVoucherVSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type LetMeInCountdownView and conformance LetMeInCountdownView()
{
  result = lazy protocol witness table cache variable for type LetMeInCountdownView and conformance LetMeInCountdownView;
  if (!lazy protocol witness table cache variable for type LetMeInCountdownView and conformance LetMeInCountdownView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LetMeInCountdownView and conformance LetMeInCountdownView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LetMeInCountdownView and conformance LetMeInCountdownView;
  if (!lazy protocol witness table cache variable for type LetMeInCountdownView and conformance LetMeInCountdownView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LetMeInCountdownView and conformance LetMeInCountdownView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<LetMeInCountdownView>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<LetMeInCountdownView>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<LetMeInCountdownView>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVy15ConversationKit20LetMeInCountdownView33_1A41F1CEB829A5E1C8BEFE98A867E125LLVGAA24_BackgroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<LetMeInCountdownView> and conformance Button<A>, &_s7SwiftUI6ButtonVy15ConversationKit20LetMeInCountdownView33_1A41F1CEB829A5E1C8BEFE98A867E125LLVGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<LetMeInCountdownView>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle()
{
  result = lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle;
  if (!lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle)
  {
    type metadata accessor for PlainButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyACyAA0I0Vy15ConversationKit016LetMeInCountdownE033_1A41F1CEB829A5E1C8BEFE98A867E125LLVGAA011_BackgroundG8ModifierVyAA5ColorVGG_AA05PlainiG0VQo_AA12_FrameLayoutVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVy15ConversationKit20LetMeInCountdownView33_1A41F1CEB829A5E1C8BEFE98A867E125LLVGAA24_BackgroundStyleModifierVyAA5ColorVGGMd);
    type metadata accessor for PlainButtonStyle();
    lazy protocol witness table accessor for type ModifiedContent<Button<LetMeInCountdownView>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyAeAE10fontWeightyQrAA4FontV0K0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_ASyAA5ColorVSgGGG_AA010BorderlessiG0VQo_AA12_FrameLayoutVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0H0VSgFQOyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJSgGG_Qo_AQyAA5ColorVSgGGGMd);
    type metadata accessor for BorderlessButtonStyle();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0H0VSgFQOyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJSgGG_Qo_AQyAA5ColorVSgGGGMd);
    lazy protocol witness table accessor for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel(&lazy protocol witness table cache variable for type BorderlessButtonStyle and conformance BorderlessButtonStyle, MEMORY[0x1E697C720]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

id TPBadgeView.init(telephonyCall:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore14SenderIdentityVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v35 - v3;
  type metadata accessor for SenderIdentity();
  OUTLINED_FUNCTION_1();
  v36 = v6;
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CallProviderType();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  dispatch thunk of BasicCall.provider.getter();
  __swift_project_boxed_opaque_existential_1(v39, v40);
  dispatch thunk of CallProvider.providerType.getter();
  LODWORD(a1) = (*(v10 + 88))(v13, v8);
  v15 = *MEMORY[0x1E6995E60];
  (*(v10 + 8))(v13, v8);
  __swift_destroy_boxed_opaque_existential_1(v39);
  if (a1 == v15)
  {
    dispatch thunk of BasicCall.provider.getter();
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v16 = dispatch thunk of CallProvider.prioritizedSenderIdentitiesCount.getter();
    __swift_destroy_boxed_opaque_existential_1(v39);
    if (v16 < 2)
    {
      v28 = 0;
      v17 = v38;
      goto LABEL_13;
    }

    v17 = v38;
    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    dispatch thunk of BasicCall.localSenderIdentity.getter();
    v18 = v37;
    if (__swift_getEnumTagSinglePayload(v4, 1, v37) != 1)
    {
      v30 = v35;
      v29 = v36;
      (*(v36 + 32))(v35, v4, v18);
      v31 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v32 = SenderIdentity.localizedShortName.getter();
      v33 = MEMORY[0x1BFB209B0](v32);

      v28 = [v31 initWithTitle:v33 theme:1];

      (*(v29 + 8))(v30, v18);
      goto LABEL_13;
    }

    outlined destroy of SenderIdentity?(v4);
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, &static Logger.conversationControls);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    v22 = os_log_type_enabled(v20, v21);
    v17 = v38;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39[0] = v24;
      *v23 = 136446210;
      v25 = _typeName(_:qualified:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v39);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1BBC58000, v20, v21, "[%{public}s] Non-telephony call passed into telephony initalizer", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1BFB23DF0](v24, -1, -1);
      MEMORY[0x1BFB23DF0](v23, -1, -1);
    }
  }

  v28 = 0;
LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v28;
}

uint64_t outlined destroy of SenderIdentity?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore14SenderIdentityVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized _ArrayProtocol.filter(_:)(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit38InCallControlsCollectionViewControllerC0kL7SectionO10Foundation4UUIDVGMd);
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v25 - v4;
  v5 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v5);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = 0;
  v38 = *(a1 + 16);
  v31 = (v3 + 16);
  v32 = v12 + 16;
  v30 = (v3 + 8);
  v33 = v12;
  v26 = (v12 + 8);
  v27 = (v12 + 32);
  v37 = MEMORY[0x1E69E7CC0];
  v29 = a1;
  while (1)
  {
    v13 = v11;
LABEL_3:
    if (v13 == v38)
    {

      return;
    }

    if (v13 >= *(a1 + 16))
    {
      break;
    }

    v14 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v15 = *(v33 + 72);
    v39 = v13 + 1;
    (*(v33 + 16))(v10, a1 + v14 + v15 * v13, v5, v8);
    v16 = v34;
    v17 = v35;
    (*v31)(v34, v36, v35);
    v18 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
    (*v30)(v16, v17);
    v19 = v18 + v14;
    v20 = *(v18 + 16) + 1;
    do
    {
      if (!--v20)
      {

        (*v26)(v10, v5);
        v13 = v39;
        a1 = v29;
        goto LABEL_3;
      }

      _s10Foundation4UUIDVACSHAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v19 += v15;
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);

    v21 = *v27;
    (*v27)(v28, v10, v5);
    v22 = v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v22 = v40;
    }

    v24 = *(v22 + 16);
    if (v24 >= *(v22 + 24) >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v22 = v40;
    }

    *(v22 + 16) = v24 + 1;
    v37 = v22;
    v21((v22 + v14 + v24 * v15), v28, v5);
    a1 = v29;
    v11 = v39;
  }

  __break(1u);
}

{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit38InCallControlsCollectionViewControllerC0kL7SectionO10Foundation4UUIDVGMd);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v7 = 0;
  v22 = *(a1 + 16);
  v9 = (v8 + 16);
  v10 = (v8 + 8);
  v20 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v22 == v7)
    {

      return;
    }

    if (v7 >= *(a1 + 16))
    {
      break;
    }

    v11 = *(a1 + v7++ + 32);
    (*v9)(v6, v21, v3, v4);
    v12 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    (*v10)(v6, v3);
    specialized Sequence<>.contains(_:)(v11, v12);
    v14 = v13;

    if (v14)
    {
      v15 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v15 = v23;
      }

      v17 = *(v15 + 16);
      v18 = v17 + 1;
      if (v17 >= *(v15 + 24) >> 1)
      {
        v20 = v17 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v18 = v20;
        v15 = v23;
      }

      *(v15 + 16) = v18;
      v20 = v15;
      *(v15 + v17 + 32) = v11;
    }
  }

  __break(1u);
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  return specialized Collection.firstIndex(where:)(a1, a2, a3, type metadata accessor for Participant);
}

{
  return specialized Collection.firstIndex(where:)(a1, a2, a3, type metadata accessor for ParticipantGridView.IdentifiableParticipantTile);
}

{
  return specialized Collection.firstIndex(where:)(a1, a2, a3, type metadata accessor for ParticipantGridView.ParticipantTileInfo);
}

{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
    OUTLINED_FUNCTION_9_0(v8);
    result = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v10 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

{
  return specialized Collection.firstIndex(where:)(a1, a2, a3, MEMORY[0x1E69695A8]);
}

{
  return specialized Collection.firstIndex(where:)(a1, a2, a3, type metadata accessor for Participant.Caption);
}

{
  return specialized Collection.firstIndex(where:)(a1, a2, a3, type metadata accessor for ParticipantReaction);
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  result = specialized Array.count.getter(a3);
  v6 = result;
  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1BFB22010](v7, a3);
      goto LABEL_6;
    }

    if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v8 = *(a3 + 8 * v7 + 32);

LABEL_6:
    v12 = v8;
    v9 = a1(&v12);

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
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  for (i = a3 + 32; ; i += 16)
  {
    if (v6 == v5)
    {
      return 0;
    }

    result = a1(i);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  while (1)
  {
    if (v9 == v8)
    {
      return 0;
    }

    v10 = a4(0);
    OUTLINED_FUNCTION_9_0(v10);
    result = a1(a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v12 + 72) * v8);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v8;
  }

  return v8;
}

uint64_t InCallControlsCollectionViewController.isOnScreen.setter(char a1)
{
  InCallControlsCollectionViewController.isOnScreen.willset(a1);
  v3 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_isOnScreen;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

void InCallControlsCollectionViewController.__allocating_init(conversation:participants:mode:gridLayoutStyle:isLegacy:shareLinkEnabled:menuHostViewController:)()
{
  OUTLINED_FUNCTION_29();
  objc_allocWithZone(v0);
  InCallControlsCollectionViewController.init(conversation:participants:mode:gridLayoutStyle:isLegacy:shareLinkEnabled:menuHostViewController:)();
  OUTLINED_FUNCTION_30_0();
}

uint64_t InCallControlsCollectionViewController.activity.setter(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_activity;
  swift_beginAccess();
  outlined assign with copy of Activity?(a1, v2 + v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_40_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  OUTLINED_FUNCTION_4_112();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v6, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  Subject<>.send()();
  InCallControlsCollectionViewController.updateActivityHeader()();
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a1, &_s15ConversationKit8Activity_pSgMd);
}

void InCallControlsCollectionViewController.conversation.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_conversation;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = OUTLINED_FUNCTION_62_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_4_112();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v7, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  Subject<>.send()();
}

uint64_t InCallControlsCollectionViewController.refreshTitleCell()(uint64_t *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource;
  OUTLINED_FUNCTION_3_0();
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
    v8 = type metadata accessor for UUID();
    OUTLINED_FUNCTION_1();
    v10 = v9;
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BC4BA940;
    v13 = *a1;
    v14 = v7;
    if (v13 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_65_12(v8, a2);
    (*(v10 + 16))(v12 + v11);
    InCallControlsCollectionViewController.reconfigure(_:cellIdentifiers:in:animatingDifferences:)(0, v12, v14, 1);

    swift_setDeallocating();
    return specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  return result;
}

uint64_t InCallControlsCollectionViewController.mode.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_mode;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return InCallControlsCollectionViewController.mode.didset(v4);
}

uint64_t InCallControlsCollectionViewController.gridLayoutStyle.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_gridLayoutStyle;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v6[0] = v4;
  return InCallControlsCollectionViewController.gridLayoutStyle.didset(v6);
}

void InCallControlsCollectionViewController.update(participant:broadcastingState:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_79_0();
  v8 = type metadata accessor for Participant.State(v7);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v14 = *&v0[v13];
  v67[2] = v3;

  v15 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in ParticipantGridViewController.updateProminenceEMA(withParticipant:ema:audioPriority:videoPriority:), v67, v14, type metadata accessor for Participant);
  v17 = v16;

  if (v17)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v18 = OUTLINED_FUNCTION_54();
    *(v18 + 16) = xmmword_1BC4BAA20;
    OUTLINED_FUNCTION_7_5();
    v19 = OUTLINED_FUNCTION_52_14();
    _s15ConversationKit11ParticipantVWOcTm_10(v19, v20);
    type metadata accessor for Participant(0);
    v21 = OUTLINED_FUNCTION_18_9();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    specialized >> prefix<A>(_:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd);
    v25 = MEMORY[0x1E69E6158];
    *(v18 + 56) = MEMORY[0x1E69E6158];
    v26 = lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_82_8(v26);
    v27 = String.init<A>(reflecting:)();
    *(v18 + 96) = v25;
    *(v18 + 104) = v1;
    *(v18 + 72) = v27;
    *(v18 + 80) = v28;
    OUTLINED_FUNCTION_45_19();
    os_log(_:dso:log:type:_:)();

    goto LABEL_18;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v15 >= *(*&v0[v13] + 16))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    OUTLINED_FUNCTION_0_6();
    goto LABEL_9;
  }

  ObjectType = type metadata accessor for Participant(0);
  v29 = *(*(ObjectType - 8) + 80);
  OUTLINED_FUNCTION_4_53();
  v66 = v30;
  _s15ConversationKit11ParticipantVWOcTm_10(v31 + v30, v12);
  static Participant.State.== infix(_:_:)();
  v33 = v32;
  OUTLINED_FUNCTION_23_41();
  outlined destroy of Participant.State();
  if (v33)
  {
    goto LABEL_18;
  }

  v63 = v29;
  v64 = (v29 + 32) & ~v29;
  v65 = v3;
  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_21;
  }

LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v34 = OUTLINED_FUNCTION_54();
  *(v34 + 16) = xmmword_1BC4BAA20;
  v67[3] = v15;
  v35 = String.init<A>(reflecting:)();
  v37 = v36;
  v38 = MEMORY[0x1E69E6158];
  *(v34 + 56) = MEMORY[0x1E69E6158];
  v39 = lazy protocol witness table accessor for type String and conformance String();
  *(v34 + 64) = v39;
  *(v34 + 32) = v35;
  *(v34 + 40) = v37;
  OUTLINED_FUNCTION_7_5();
  v40 = OUTLINED_FUNCTION_52_14();
  _s15ConversationKit11ParticipantVWOcTm_10(v40, v41);
  v42 = OUTLINED_FUNCTION_18_9();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, ObjectType);
  specialized >> prefix<A>(_:)();
  v46 = v45;
  v48 = v47;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd);
  *(v34 + 96) = v38;
  *(v34 + 104) = v39;
  *(v34 + 72) = v46;
  *(v34 + 80) = v48;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  swift_beginAccess();
  v49 = *&v0[v13];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v0[v13] = v49;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v49 = v62;
    *&v0[v13] = v62;
  }

  v51 = v15 >= *(v49 + 16);
  v52 = v63;
  v53 = v64;
  if (v51)
  {
    __break(1u);
  }

  else
  {
    outlined assign with copy of Participant(v65, v49 + v64 + v66);
    *&v0[v13] = v49;
    swift_endAccess();
    InCallControlsCollectionViewController.participants.didset();
    if (![v0 isViewLoaded])
    {
      goto LABEL_18;
    }

    v54 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v55 = *&v0[v54];
    if (!v55)
    {
      goto LABEL_18;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1BC4BA940;
    OUTLINED_FUNCTION_7_5();
    _s15ConversationKit11ParticipantVWOcTm_10(v65, v56 + v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
    OUTLINED_FUNCTION_17_1();
    v49 = type metadata accessor for UUID();
    OUTLINED_FUNCTION_1();
    v34 = v57;
    v48 = *(v58 + 72);
    v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BC4BAA20;
    v53 = v13 + v59;
    v60 = one-time initialization token for shareLinkRowIdentifier;
    v46 = v55;
    if (v60 == -1)
    {
      goto LABEL_15;
    }
  }

  OUTLINED_FUNCTION_28_39();
LABEL_15:
  OUTLINED_FUNCTION_65_12(v49, static InCallControlsCollectionViewController.CollectionViewSection.shareLinkRowIdentifier);
  v61 = *(v34 + 16);
  v61(v53);
  if (one-time initialization token for toggleCaptionsRowIdentifier != -1)
  {
    OUTLINED_FUNCTION_12_60();
  }

  OUTLINED_FUNCTION_65_12(v49, static InCallControlsCollectionViewController.CollectionViewSection.toggleCaptionsRowIdentifier);
  v61(v53 + v48);
  InCallControlsCollectionViewController.reconfigure(_:cellIdentifiers:in:animatingDifferences:)(v52, v13, v46, 1);
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
LABEL_18:
  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall InCallControlsCollectionViewController.updateLocalViews(for:isLocalMemberAuthorizedToChangeGroupMembership:)(Swift::OpaquePointer a1, Swift::Bool isLocalMemberAuthorizedToChangeGroupMembership)
{
  LODWORD(v90) = isLocalMemberAuthorizedToChangeGroupMembership;
  rawValue = a1._rawValue;
  v85 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v7 = OUTLINED_FUNCTION_79_0();
  v8 = type metadata accessor for Participant.State(v7);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v77 - v14;
  v87 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_17();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v77 - v23;
  v25 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v26 = *&v2[v25];
  if (v26)
  {
    v88 = v5;
    v78 = v21;
    v86 = v3;
    v27 = one-time initialization token for conversationKit;
    v81 = v26;
    if (v27 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v28 = OUTLINED_FUNCTION_13_12();
    v80 = xmmword_1BC4BA940;
    *(v28 + 16) = xmmword_1BC4BA940;
    LOBYTE(v91) = v90 & 1;
    v29 = String.init<A>(reflecting:)();
    v31 = v30;
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    if ([v2 isViewLoaded])
    {
      v77[1] = v2;
      v32 = 0;
      v33 = rawValue[2];
      v84 = v24 + 3;
      v90 = v88 + 8;
      v79 = MEMORY[0x1E69E7CC0];
      v83 = (v88 + 32);
      v34 = v85;
      while (v33 != v32)
      {
        v35 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v36 = *(v17 + 72);
        OUTLINED_FUNCTION_7_5();
        _s15ConversationKit11ParticipantVWOcTm_10(v37, v24);
        OUTLINED_FUNCTION_4_53();
        _s15ConversationKit11ParticipantVWOcTm_10(v24, v15);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 2u:
            v82 = v35;
            OUTLINED_FUNCTION_68_5();
            v60(v15, v34);
            goto LABEL_23;
          case 4u:
            v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
            v58 = *(v57 + 48);
            OUTLINED_FUNCTION_37(&v15[*(v57 + 64)]);
            v59 = &v15[v58];
            v34 = v85;
            outlined destroy of Participant.MediaInfo(v59);
            goto LABEL_8;
          case 6u:
            goto LABEL_9;
          default:
LABEL_8:
            OUTLINED_FUNCTION_68_5();
            v38(v15, v34);
LABEL_9:
            OUTLINED_FUNCTION_4_53();
            _s15ConversationKit11ParticipantVWOcTm_10(v24, v12);
            if (swift_getEnumCaseMultiPayload() != 4)
            {
              OUTLINED_FUNCTION_23_41();
              outlined destroy of Participant.State();
LABEL_14:
              OUTLINED_FUNCTION_5_104();
              outlined destroy of Participant.State();
              ++v32;
              continue;
            }

            v88 = v36;
            v82 = v35;
            v39 = v33;
            v40 = v17;
            v41 = v15;
            v42 = v8;
            v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
            v44 = v34;
            v45 = *(v43 + 48);
            OUTLINED_FUNCTION_37((v12 + *(v43 + 64)));
            v46 = v86;
            (*v83)(v86, v12, v44);
            outlined destroy of Participant.MediaInfo(v12 + v45);
            Date.timeIntervalSinceNow.getter();
            if (v47 <= 0.0)
            {
              Date.timeIntervalSinceNow.getter();
              v51 = v50;
              if (one-time initialization token for shared != -1)
              {
                OUTLINED_FUNCTION_3_15();
                swift_once();
              }

              OUTLINED_FUNCTION_0_1();
              v53 = (*(v52 + 720))();
              OUTLINED_FUNCTION_68_5();
              v54 = v85;
              v55(v46, v85);
              v56 = v53;
              v34 = v54;
              v49 = -v51 <= v56;
              v8 = v42;
              v15 = v41;
              v17 = v40;
              v33 = v39;
              v36 = v88;
              if ((v84[*(v87 + 24)] & 1) == 0)
              {
                goto LABEL_14;
              }
            }

            else
            {
              OUTLINED_FUNCTION_68_5();
              v48(v46, v44);
              v34 = v44;
              v8 = v42;
              v15 = v41;
              v17 = v40;
              v33 = v39;
              v36 = v88;
              if (v84[*(v87 + 24)] != 1)
              {
                goto LABEL_14;
              }

              v49 = 0;
            }

            if (!*&v24[*(v87 + 28)] || !v49)
            {
              goto LABEL_14;
            }

LABEL_23:
            outlined init with take of Participant(v24, v78);
            v61 = v79;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v91 = v61;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v34 = v85;
              v61 = v91;
            }

            v64 = *(v61 + 16);
            v63 = *(v61 + 24);
            v65 = v64 + 1;
            if (v64 >= v63 >> 1)
            {
              OUTLINED_FUNCTION_59_3(v63);
              v67 = v66;
              v88 = v68;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v65 = v67;
              v64 = v88;
              v34 = v85;
              v61 = v91;
            }

            ++v32;
            *(v61 + 16) = v65;
            v79 = v61;
            outlined init with take of Participant(v78, v61 + v82 + v64 * v36);
            break;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
      OUTLINED_FUNCTION_17_1();
      v69 = type metadata accessor for UUID();
      OUTLINED_FUNCTION_1();
      v71 = v70;
      v72 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v73 = swift_allocObject();
      *(v73 + 16) = v80;
      if (one-time initialization token for addParticipantRowIdentifier != -1)
      {
        OUTLINED_FUNCTION_30_28();
      }

      OUTLINED_FUNCTION_65_12(v69, static InCallControlsCollectionViewController.CollectionViewSection.addParticipantRowIdentifier);
      (*(v71 + 16))(v73 + v72);
      v74 = OUTLINED_FUNCTION_309();
      v75 = v81;
      InCallControlsCollectionViewController.reconfigure(_:cellIdentifiers:in:animatingDifferences:)(v74, v76, v81, 1);

      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_41_0();
    os_log(_:dso:log:type:_:)();
  }
}

void InCallControlsCollectionViewController.update(participant:isKickingAvailable:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v44 - v5;
  v7 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v8 = *&v0[v7];
  v44[2] = v2;

  v9 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in ParticipantGridViewController.update(participant:broadcastingState:), v44, v8, type metadata accessor for Participant);
  LOBYTE(v7) = v10;

  if (v7)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v11 = OUTLINED_FUNCTION_54();
    *(v11 + 16) = xmmword_1BC4BAA20;
    OUTLINED_FUNCTION_7_5();
    v12 = OUTLINED_FUNCTION_29_6();
    _s15ConversationKit11ParticipantVWOcTm_10(v12, v13);
    type metadata accessor for Participant(0);
    v14 = OUTLINED_FUNCTION_18_9();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    specialized >> prefix<A>(_:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit11ParticipantVSgMd);
    v18 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v19 = lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_82_8(v19);
    v20 = String.init<A>(reflecting:)();
    *(v11 + 96) = v18;
    *(v11 + 104) = v6;
    *(v11 + 72) = v20;
    *(v11 + 80) = v21;
    OUTLINED_FUNCTION_45_19();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v22 = OUTLINED_FUNCTION_54();
    *(v22 + 16) = xmmword_1BC4BAA20;
    v44[3] = v9;
    v23 = String.init<A>(reflecting:)();
    v25 = v24;
    v26 = MEMORY[0x1E69E6158];
    *(v22 + 56) = MEMORY[0x1E69E6158];
    v27 = lazy protocol witness table accessor for type String and conformance String();
    *(v22 + 64) = v27;
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    OUTLINED_FUNCTION_7_5();
    v28 = OUTLINED_FUNCTION_29_6();
    _s15ConversationKit11ParticipantVWOcTm_10(v28, v29);
    v30 = type metadata accessor for Participant(0);
    v31 = OUTLINED_FUNCTION_18_9();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
    specialized >> prefix<A>(_:)();
    v35 = v34;
    v37 = v36;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit11ParticipantVSgMd);
    *(v22 + 96) = v26;
    *(v22 + 104) = v27;
    *(v22 + 72) = v35;
    *(v22 + 80) = v37;
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_45_19();
    os_log(_:dso:log:type:_:)();

    if ([v0 isViewLoaded])
    {
      v38 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v39 = *&v0[v38];
      if (v39)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ParticipantVGMd);
        v40 = (*(*(v30 - 8) + 80) + 32) & ~*(*(v30 - 8) + 80);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1BC4BA940;
        OUTLINED_FUNCTION_7_5();
        _s15ConversationKit11ParticipantVWOcTm_10(v2, v42 + v40);
        v43 = v39;
        InCallControlsCollectionViewController.reconfigure(_:cellIdentifiers:in:animatingDifferences:)(v41, 0, v43, 1);

        swift_setDeallocating();
        specialized _ContiguousArrayStorage.__deallocating_deinit();
      }
    }
  }

  OUTLINED_FUNCTION_30_0();
}

void InCallControlsCollectionViewController.update(with:updateReason:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v3 = OUTLINED_FUNCTION_17_1();
  v58 = type metadata accessor for Participant(v3);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_79_0();
  v7 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  v52 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v50 - v14;
  Array<A>.filterAndSortForInCallControls()();
  v17 = *(v16 + 16);
  v53 = v16;
  v54 = v2;
  if (v17)
  {
    v18 = v16;
    v60 = MEMORY[0x1E69E7CC0];
    v55 = v15;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v19 = v55;
    v20 = v60;
    OUTLINED_FUNCTION_40_3();
    v22 = v18 + v21;
    v51 = v5;
    v23 = *(v5 + 72);
    v56 = (v9 + 32);
    v57 = v23;
    do
    {
      v24 = OUTLINED_FUNCTION_29_6();
      _s15ConversationKit11ParticipantVWOcTm_10(v24, v25);
      (*(v9 + 16))(v19, v1 + *(v58 + 20), v7);
      OUTLINED_FUNCTION_5_104();
      outlined destroy of Participant.State();
      v60 = v20;
      v26 = v7;
      v28 = *(v20 + 16);
      v27 = *(v20 + 24);
      if (v28 >= v27 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v27);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v19 = v55;
        v20 = v60;
      }

      *(v20 + 16) = v28 + 1;
      OUTLINED_FUNCTION_40_3();
      (*(v9 + 32))(v20 + v29 + *(v9 + 72) * v28, v19, v26);
      v22 += v57;
      --v17;
      v7 = v26;
    }

    while (v17);
    v2 = v54;
    v5 = v51;
  }

  v30 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participants;
  OUTLINED_FUNCTION_3_5();
  v31 = *(v2 + v30);
  v32 = *(v31 + 16);
  if (v32)
  {
    v51 = v30;
    v59 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v33 = v59;
    OUTLINED_FUNCTION_40_3();
    v50[1] = v31;
    v35 = v31 + v34;
    v36 = *(v5 + 72);
    v56 = (v9 + 16);
    v57 = v36;
    v55 = (v9 + 32);
    v37 = v52;
    do
    {
      v38 = OUTLINED_FUNCTION_29_6();
      _s15ConversationKit11ParticipantVWOcTm_10(v38, v39);
      (*v56)(v37, v1 + *(v58 + 20), v7);
      OUTLINED_FUNCTION_5_104();
      outlined destroy of Participant.State();
      v59 = v33;
      v40 = v7;
      v42 = *(v33 + 16);
      v41 = *(v33 + 24);
      if (v42 >= v41 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v41);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v33 = v59;
      }

      *(v33 + 16) = v42 + 1;
      OUTLINED_FUNCTION_40_3();
      (*(v9 + 32))(v33 + v43 + *(v9 + 72) * v42, v37, v40);
      v35 += v57;
      --v32;
      v7 = v40;
    }

    while (v32);

    v2 = v54;
    v30 = v51;
  }

  _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4UUIDV_Tt1g5();
  v45 = v44;

  *(v2 + v30) = v53;

  InCallControlsCollectionViewController.participants.didset();
  InCallControlsCollectionViewController.updateDataSource(shouldRefreshParticipants:animatingDifferences:)(1, 1);
  if ((v45 & 1) == 0)
  {
    v46 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_isOnScreen;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    if (*(v2 + v46) == 1)
    {
      OUTLINED_FUNCTION_0_1();
      v48 = *(v47 + 232);

      v48(v49);
    }
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall InCallControlsCollectionViewController.captioningStateDidChange()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28[-v4];
  v6 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v8 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (!v9)
  {
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v6);
LABEL_12:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s10Foundation9IndexPathVSgMd);
    return;
  }

  v10 = one-time initialization token for toggleCaptionsRowIdentifier;
  v11 = v9;
  if (v10 != -1)
  {
    OUTLINED_FUNCTION_12_60();
  }

  v12 = type metadata accessor for UUID();
  __swift_project_value_buffer(v12, static InCallControlsCollectionViewController.CollectionViewSection.toggleCaptionsRowIdentifier);
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    goto LABEL_12;
  }

  v13 = OUTLINED_FUNCTION_40_2();
  v14(v13);
  v15 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_collectionView;
  swift_beginAccess();
  v16 = *(v1 + v15);
  if (v16)
  {
    swift_endAccess();
    v17 = v16;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v19 = [v17 cellForItemAtIndexPath_];

    if (v19)
    {
      type metadata accessor for InCallControlsToggleCaptionsCell();
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        InCallControlsCollectionViewController.configureToggleCaptionsCell(_:)(v20);
      }
    }

    v21 = OUTLINED_FUNCTION_309();
    v22(v21);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_309();
    v27(v26);
    swift_endAccess();
  }
}

uint64_t *InCallControlsCollectionViewController.separatorStyle.unsafeMutableAddressor()
{
  if (one-time initialization token for separatorStyle != -1)
  {
    OUTLINED_FUNCTION_26_35();
  }

  return &static InCallControlsCollectionViewController.separatorStyle;
}

uint64_t InCallControlsCollectionViewController.CollectionViewSection.singleRowIdentifier.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
    case 2:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    case 3:
      if (one-time initialization token for shareLinkRowIdentifier != -1)
      {
        OUTLINED_FUNCTION_28_39();
      }

      v3 = static InCallControlsCollectionViewController.CollectionViewSection.shareLinkRowIdentifier;
      goto LABEL_29;
    case 4:
      if (one-time initialization token for toggleCaptionsRowIdentifier != -1)
      {
        OUTLINED_FUNCTION_12_60();
      }

      v3 = static InCallControlsCollectionViewController.CollectionViewSection.toggleCaptionsRowIdentifier;
      goto LABEL_29;
    case 5:
      if (one-time initialization token for toggleIgnoreLMIRequestsRowIdentifier != -1)
      {
        swift_once();
      }

      v3 = static InCallControlsCollectionViewController.CollectionViewSection.toggleIgnoreLMIRequestsRowIdentifier;
      goto LABEL_29;
    case 6:
      if (one-time initialization token for openMessagesRowIdentifier != -1)
      {
        swift_once();
      }

      v3 = static InCallControlsCollectionViewController.CollectionViewSection.openMessagesRowIdentifier;
      goto LABEL_29;
    case 7:
      if (one-time initialization token for blockUnkownRowIdentifier != -1)
      {
        OUTLINED_FUNCTION_33_29();
      }

      v3 = static InCallControlsCollectionViewController.CollectionViewSection.blockUnkownRowIdentifier;
      goto LABEL_29;
    case 8:
      if (one-time initialization token for pttTitleRowIdentifier != -1)
      {
        swift_once();
      }

      v3 = static InCallControlsCollectionViewController.CollectionViewSection.pttTitleRowIdentifier;
      goto LABEL_29;
    case 9:
      if (one-time initialization token for leavePTTChannelRowIdentifier != -1)
      {
        swift_once();
      }

      v3 = static InCallControlsCollectionViewController.CollectionViewSection.leavePTTChannelRowIdentifier;
      goto LABEL_29;
    case 10:
      if (one-time initialization token for openPTTAppRowIdentifier != -1)
      {
        swift_once();
      }

      v3 = static InCallControlsCollectionViewController.CollectionViewSection.openPTTAppRowIdentifier;
      goto LABEL_29;
    default:
      if (one-time initialization token for titleRowIdentifier != -1)
      {
        swift_once();
      }

      v3 = static InCallControlsCollectionViewController.CollectionViewSection.titleRowIdentifier;
LABEL_29:
      v4 = type metadata accessor for UUID();
      OUTLINED_FUNCTION_65_12(v4, v3);
      v5 = *(*(v4 - 8) + 16);

      return v5(a2);
  }
}

uint64_t InCallControlsCollectionViewController.CollectionViewSection.titleRowIdentifier.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for UUID();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t one-time initialization function for titleRowIdentifier(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for UUID();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return UUID.init()();
}

uint64_t static InCallControlsCollectionViewController.CollectionViewSection.titleRowIdentifier.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_65_12(v5, a2);
  v6 = *(*(v5 - 8) + 16);

  return v6(a3);
}

ConversationKit::InCallControlsCollectionViewController::CollectionViewSection_optional __swiftcall InCallControlsCollectionViewController.CollectionViewSection.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of InCallControlsCollectionViewController.CollectionViewSection.init(rawValue:), v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

unint64_t InCallControlsCollectionViewController.CollectionViewSection.rawValue.getter(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x41746E6572727563;
      break;
    case 2:
      result = 0x7069636974726170;
      break;
    case 3:
      result = 0x6572616873;
      break;
    case 4:
      result = 0x6143656C67676F74;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0x7373654D6E65706FLL;
      break;
    case 7:
      result = 0x646E416B636F6C62;
      break;
    case 8:
      result = 0x656C746954747470;
      break;
    case 9:
      result = 0x545450657661656CLL;
      break;
    case 10:
      result = 0x415454506E65706FLL;
      break;
    default:
      return result;
  }

  return result;
}

ConversationKit::InCallControlsCollectionViewController::CollectionViewSection_optional protocol witness for RawRepresentable.init(rawValue:) in conformance InCallControlsCollectionViewController.CollectionViewSection@<W0>(Swift::String *a1@<X0>, ConversationKit::InCallControlsCollectionViewController::CollectionViewSection_optional *a2@<X8>)
{
  result.value = InCallControlsCollectionViewController.CollectionViewSection.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance InCallControlsCollectionViewController.CollectionViewSection@<X0>(unint64_t *a1@<X8>)
{
  result = InCallControlsCollectionViewController.CollectionViewSection.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t key path getter for InCallControlsCollectionViewController.participants : InCallControlsCollectionViewController@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participants;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void InCallControlsCollectionViewController.participants.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participants;
  OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;

  InCallControlsCollectionViewController.participants.didset();
}

void InCallControlsCollectionViewController.participants.didset()
{
  v1 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
    InCallControlsCollectionViewController.reloadSections(_:in:animatingDifferences:)(&outlined read-only object #0 of InCallControlsCollectionViewController.participants.didset, v3, 1, specialized _ArrayProtocol.filter(_:), MEMORY[0x1E69DC140]);
  }
}

void one-time initialization function for separatorStyle()
{
  v0 = objc_opt_self();
  if (one-time initialization token for backgroundBlurEffect != -1)
  {
    swift_once();
  }

  v1 = static Colors.InCallControls.backgroundBlurEffect;
  v2 = [v0 _effectForBlurEffect_vibrancyStyle_];

  static InCallControlsCollectionViewController.separatorStyle = v2;
}

id static InCallControlsCollectionViewController.separatorStyle.getter()
{
  if (one-time initialization token for separatorStyle != -1)
  {
    OUTLINED_FUNCTION_26_35();
  }

  v1 = static InCallControlsCollectionViewController.separatorStyle;

  return v1;
}

id InCallControlsCollectionViewController.featureFlags.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController____lazy_storage___featureFlags;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController____lazy_storage___featureFlags);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController____lazy_storage___featureFlags);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t InCallControlsCollectionViewController.activity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_activity;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return outlined init with copy of IDView<AvatarStackView, [UUID]>(v1 + v3, a1, &_s15ConversationKit8Activity_pSgMd);
}

uint64_t key path getter for InCallControlsCollectionViewController.activity : InCallControlsCollectionViewController@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_activity;
  swift_beginAccess();
  return outlined init with copy of IDView<AvatarStackView, [UUID]>(v3 + v4, a2, &_s15ConversationKit8Activity_pSgMd);
}

uint64_t InCallControlsCollectionViewController.updateDataSource(shouldRefreshParticipants:animatingDifferences:)(char a1, char a2)
{
  if (a1)
  {
    *(v2 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_updateDataSourceNeedsRefreshParticipants) = 1;
  }

  if (a2)
  {
    *(v2 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_updateDataSourceNeedsAnimatedDifferences) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  return Subject<>.send()();
}

void InCallControlsCollectionViewController.updateActivityHeader()()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit38InCallControlsCollectionViewControllerC0kL7SectionO10Foundation4UUIDVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  v10 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_activity;
  swift_beginAccess();
  outlined init with copy of IDView<AvatarStackView, [UUID]>(v1 + v10, &v36, &_s15ConversationKit8Activity_pSgMd);
  if (!v37)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v36, &_s15ConversationKit8Activity_pSgMd);
    goto LABEL_19;
  }

  outlined init with take of TapInteractionHandler(&v36, v38);
  v11 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (!v12)
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
    swift_endAccess();
    goto LABEL_19;
  }

  swift_endAccess();
  v13 = v12;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v14 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v7 + 8))(v9, v6);
  v15 = *(v14 + 16);
  if (!v15)
  {
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v38);

    goto LABEL_19;
  }

  v33 = v3;
  v34 = v2;
  v16 = 0;
  v35 = 0x80000001BC4F1D50;
  while (2)
  {
    if (v16 >= *(v14 + 16))
    {
      __break(1u);
LABEL_24:
      swift_once();
      goto LABEL_20;
    }

    switch(*(v14 + v16 + 32))
    {
      case 1:

        goto LABEL_13;
      default:
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {
          if (v15 == ++v16)
          {
            goto LABEL_9;
          }

          continue;
        }

LABEL_13:

        v18 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_collectionView;
        swift_beginAccess();
        v19 = *(v1 + v18);
        v21 = v33;
        v20 = v34;
        if (v19)
        {
          v22 = *MEMORY[0x1E69DDC08];
          v23 = v19;
          MEMORY[0x1BFB1A640](0, v16);
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          (*(v21 + 8))(v5, v20);
          v25 = [v23 supplementaryViewForElementKind:v22 atIndexPath:isa];

          if (v25)
          {
            type metadata accessor for InCallControlsSectionHeaderView();
            v26 = swift_dynamicCastClass();
            if (v26)
            {
              v27 = v26;
              outlined init with copy of IDSLookupManager(v38, &v36);
              v28 = InCallControlsActivitySectionHeaderViewModel.init(activity:)(&v36);
              (*((*MEMORY[0x1E69E7D40] & *v27) + 0x58))(v28);

              __swift_destroy_boxed_opaque_existential_1(v38);
              return;
            }
          }
        }

        __swift_destroy_boxed_opaque_existential_1(v38);
LABEL_19:
        if (one-time initialization token for conversationControls != -1)
        {
          goto LABEL_24;
        }

LABEL_20:
        v29 = type metadata accessor for Logger();
        __swift_project_value_buffer(v29, &static Logger.conversationControls);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_1BBC58000, v30, v31, "Can't find activity header or remote participant count didn't change, skip updating activity header", v32, 2u);
          MEMORY[0x1BFB23DF0](v32, -1, -1);
        }

        return;
    }
  }
}

uint64_t InCallControlsCollectionViewController.activity.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

void InCallControlsCollectionViewController.activity.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v3 = OUTLINED_FUNCTION_62_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v3);
    OUTLINED_FUNCTION_4_112();
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v4, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
    Subject<>.send()();
    InCallControlsCollectionViewController.updateActivityHeader()();
  }
}

void *InCallControlsCollectionViewController.conversation.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_conversation;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id key path getter for InCallControlsCollectionViewController.conversation : InCallControlsCollectionViewController@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_conversation;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void key path setter for InCallControlsCollectionViewController.conversation : InCallControlsCollectionViewController(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  InCallControlsCollectionViewController.conversation.setter(v1);
}

uint64_t InCallControlsCollectionViewController.conversation.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t InCallControlsCollectionViewController.conversation.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
    OUTLINED_FUNCTION_4_112();
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v4, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
    return Subject<>.send()();
  }

  return result;
}

uint64_t InCallControlsCollectionViewController.mode.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_mode;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for InCallControlsCollectionViewController.mode : InCallControlsCollectionViewController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_mode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t InCallControlsCollectionViewController.mode.didset(int a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_mode;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  switch(a1 >> 5)
  {
    case 1:
      if ((v5 & 0xE0) != 0x20)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 2:
      if ((v5 & 0xE0) != 0x40)
      {
        goto LABEL_14;
      }

LABEL_13:
      if ((v5 ^ a1))
      {
        goto LABEL_14;
      }

      return result;
    case 3:
      if (a1 == 96)
      {
        if (v5 != 96)
        {
          goto LABEL_14;
        }
      }

      else if (v5 != 97)
      {
        goto LABEL_14;
      }

      return result;
    case 4:
      if (a1 == 128)
      {
        if (v5 != 128)
        {
          goto LABEL_14;
        }
      }

      else if (v5 != 129)
      {
        goto LABEL_14;
      }

      return result;
    case 5:
      if (a1 == 160)
      {
        if (v5 != 160)
        {
          goto LABEL_14;
        }
      }

      else if (v5 != 161)
      {
        goto LABEL_14;
      }

      return result;
    case 6:
      if (a1 != 192)
      {
        if (v5 == 193)
        {
          return result;
        }

LABEL_14:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
        lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
        return Subject<>.send()();
      }

      if (v5 != 192)
      {
        goto LABEL_14;
      }

      return result;
    default:
      if (v5 < 0x20)
      {
        return result;
      }

      goto LABEL_14;
  }
}

uint64_t InCallControlsCollectionViewController.mode.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_47(v2) + 24) = v0;
  v3 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_mode;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + v3);
  return OUTLINED_FUNCTION_28_3();
}

void InCallControlsCollectionViewController.mode.modify(uint64_t a1)
{
  v1 = *a1;
  InCallControlsCollectionViewController.mode.setter(*(*a1 + 32));

  free(v1);
}

uint64_t InCallControlsCollectionViewController.gridLayoutStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_gridLayoutStyle;
  OUTLINED_FUNCTION_3_0();
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t key path getter for InCallControlsCollectionViewController.gridLayoutStyle : InCallControlsCollectionViewController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_gridLayoutStyle;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t InCallControlsCollectionViewController.gridLayoutStyle.didset(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_gridLayoutStyle;
  result = swift_beginAccess();
  if (v2 != *(v1 + v3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
    lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
    return Subject<>.send()();
  }

  return result;
}

uint64_t InCallControlsCollectionViewController.gridLayoutStyle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_47(v2) + 24) = v0;
  v3 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_gridLayoutStyle;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + v3);
  return OUTLINED_FUNCTION_28_3();
}

void InCallControlsCollectionViewController.gridLayoutStyle.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(*a1 + 32);
    v3 = &v4;
  }

  else
  {
    v5 = *(*a1 + 32);
    v3 = &v5;
  }

  InCallControlsCollectionViewController.gridLayoutStyle.setter(v3);

  free(v2);
}

uint64_t InCallControlsCollectionViewController.isOnScreen.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_isOnScreen;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for InCallControlsCollectionViewController.isOnScreen : InCallControlsCollectionViewController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_isOnScreen;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void InCallControlsCollectionViewController.isOnScreen.willset(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_isOnScreen;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (*(v2 + v5) != v4)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, &static Logger.conversationControls);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = a1 & 1;
      _os_log_impl(&dword_1BBC58000, v7, v8, "InCallControlsCollectionViewController isOnScreen %{BOOL}d", v9, 8u);
      MEMORY[0x1BFB23DF0](v9, -1, -1);
    }

    v10 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_updatedCapabilitiesWithParticipants;
    if ((*(v2 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_updatedCapabilitiesWithParticipants) & 1) == 0)
    {
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1BBC58000, v11, v12, "InCallControlsCollectionViewController updating capabilities with first participant list", v13, 2u);
        MEMORY[0x1BFB23DF0](v13, -1, -1);
      }

      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      OUTLINED_FUNCTION_0_1();
      v15 = *(v14 + 232);

      v15(v16);

      *(v2 + v10) = 1;
    }
  }
}

uint64_t InCallControlsCollectionViewController.isOnScreen.modify()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  v3 = OUTLINED_FUNCTION_47(v2);
  v4 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_isOnScreen;
  *(v3 + 24) = v0;
  *(v3 + 32) = v4;
  OUTLINED_FUNCTION_3_5();
  *(v1 + 40) = *(v0 + v4);
  return OUTLINED_FUNCTION_28_3();
}

void InCallControlsCollectionViewController.isOnScreen.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  InCallControlsCollectionViewController.isOnScreen.willset(v4);
  *(v2 + v3) = v4;

  free(v1);
}

void *InCallControlsCollectionViewController.controlsManager.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_controlsManager;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void InCallControlsCollectionViewController.controlsManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_controlsManager;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t InCallControlsCollectionViewController.remoteAudioPaused.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_remoteAudioPaused;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t InCallControlsCollectionViewController.remoteAudioPaused.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_remoteAudioPaused;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

uint64_t InCallControlsCollectionViewController.participantsViewControllerDelegate.setter()
{
  return InCallControlsCollectionViewController.participantsViewControllerDelegate.setter();
}

{
  OUTLINED_FUNCTION_55();
  v3 = v1 + *v2;
  OUTLINED_FUNCTION_3_5();
  *(v3 + 8) = v0;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t InCallControlsCollectionViewController.participantsViewControllerDelegate.modify()
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  v3 = OUTLINED_FUNCTION_47(v2);
  OUTLINED_FUNCTION_55_0(v3, OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participantsViewControllerDelegate);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v0 + 8);
  *(v1 + 24) = Strong;
  *(v1 + 32) = v5;
  return OUTLINED_FUNCTION_28_3();
}

uint64_t InCallControlsCollectionViewController.inCallControlsCollectionViewControllerDelegate.modify()
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  v3 = OUTLINED_FUNCTION_47(v2);
  OUTLINED_FUNCTION_55_0(v3, OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_inCallControlsCollectionViewControllerDelegate);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v0 + 8);
  *(v1 + 24) = Strong;
  *(v1 + 32) = v5;
  return OUTLINED_FUNCTION_28_3();
}

void *InCallControlsCollectionViewController.collectionView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_collectionView;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t InCallControlsCollectionViewController.isAddingParticipantsAllowed.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_mode;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if ((*(v1 + v2) & 0xE0) == 0x20)
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_conversation;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    if ([v4 state] != 3)
    {
      return 0;
    }
  }

  if ((InCallControlsCollectionViewController.isLocalMemberAuthorizedToChangeGroupMembership.getter() & 1) == 0)
  {
    return 0;
  }

  v5 = objc_opt_self();
  result = [v5 supportsConversations];
  if (!result)
  {
    return result;
  }

  v7 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_remoteAudioPaused;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (*(v1 + v7))
  {
    return 0;
  }

  if (Features.isFaceTimeMyselfEnabled.getter())
  {
    v8 = *(v1 + v3);
    if (!v8)
    {
      goto LABEL_19;
    }

    v9 = v8;
    if ([v9 state] == 3)
    {
      v10 = [v9 isOneToOneFaceTimeMyself];

      if (v10)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  v11 = *(v1 + v3);
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = v11;
  if ([v12 isVideo])
  {

    goto LABEL_19;
  }

  v13 = [v12 isBackedByGroupSession];

  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_isLegacy) == 1)
  {
    return [v5 isAddPersonEnabled];
  }

  else
  {
    return 1;
  }
}

uint64_t InCallControlsCollectionViewController.isLocalMemberAuthorizedToChangeGroupMembership.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_conversation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
    v4 = specialized Conversation.isLocalMemberAuthorizedToChangeGroupMembership()();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t InCallControlsCollectionViewController.isLinkSharingAllowed.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for Participant(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_shareLinkEnabled) != 1)
  {
    return 0;
  }

  result = [objc_opt_self() supportsConversations];
  if (!result)
  {
    return result;
  }

  v10 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_conversation;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = specialized Conversation.isLinkSharingSupported.getter();

  if (!v13)
  {
    return 0;
  }

  v14 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participants;
  swift_beginAccess();
  v15 = *(v1 + v14);
  v16 = *(v15 + 16);
  if (!v16)
  {
    return 1;
  }

  v17 = &v8[*(v5 + 24)];
  v18 = v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  v19 = 0;
  while (v19 < *(v15 + 16))
  {
    _s15ConversationKit11ParticipantVWOcTm_10(v18 + *(v6 + 72) * v19, v8);
    if ((v17[2] & 1) == 0)
    {
      _s15ConversationKit11ParticipantVWOcTm_10(v8, v4);
      outlined destroy of Participant.State();
      result = swift_getEnumCaseMultiPayload();
      switch(result)
      {
        case 4:

          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
          v22 = *(v21 + 48);
          outlined consume of Participant.CopresenceInfo?(*&v4[*(v21 + 64)], *&v4[*(v21 + 64) + 8]);
          outlined destroy of Participant.MediaInfo(&v4[v22]);
          v23 = type metadata accessor for Date();
          (*(*(v23 - 8) + 8))(v4, v23);
          return 0;
        case 6:
          goto LABEL_12;
        default:
          v20 = type metadata accessor for Date();
          result = (*(*(v20 - 8) + 8))(v4, v20);
          goto LABEL_12;
      }
    }

    result = outlined destroy of Participant.State();
LABEL_12:
    if (v16 == ++v19)
    {

      return 1;
    }
  }

  __break(1u);
  return result;
}

BOOL specialized Conversation.isLinkSharingSupported.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  @nonobjc TUConversation.messagesGroupUUID.getter();
  v3 = type metadata accessor for UUID();
  v4 = __swift_getEnumTagSinglePayload(v2, 1, v3) == 1;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s10Foundation4UUIDVSgMd);
  return v4;
}

uint64_t specialized Conversation.isLocalMemberAuthorizedToChangeGroupMembership()()
{
  v1 = [v0 localMember];
  if (!v1)
  {
    return [v0 isOneToOneModeEnabled];
  }

  v2 = [v0 link];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = [v2 canCreateConversations];

  return v4;
}

uint64_t InCallControlsCollectionViewController.isLiveCaptionsAllowed.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (((*((*MEMORY[0x1E69E7D40] & *static ConversationCapabilities.shared) + 0x70))() & 1) == 0)
  {
    return 0;
  }

  if (static Platform.current.getter() != 2)
  {
    return 1;
  }

  if (static Platform.current.getter() != 2)
  {
    return 0;
  }

  v0 = InCallControlsCollectionViewController.featureFlags.getter();
  v1 = [v0 lagunaLiveCaptionsEnabled];

  return v1;
}

void InCallControlsCollectionViewController.init(conversation:participants:mode:gridLayoutStyle:isLegacy:shareLinkEnabled:menuHostViewController:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v85 = v2;
  v96 = v3;
  v84 = v4;
  v83 = v5;
  v7 = v6;
  v82 = v8;
  v10 = v9;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v80 - v13;
  v91 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  OUTLINED_FUNCTION_1();
  v89 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v87 = v17 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8DebounceVy_AA18PassthroughSubjectCyyts5NeverOGSo9NSRunLoopCGMd);
  OUTLINED_FUNCTION_1();
  v93 = v19;
  v94 = v18;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  v92 = &v80 - v21;
  *(v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_updatedCapabilitiesWithParticipants) = 0;
  v81 = *v7;
  v22 = (v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participants);
  *(v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participants) = MEMORY[0x1E69E7CC0];
  v23 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_features;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_11_2();
    swift_once();
  }

  v24 = static Features.shared;
  *(v0 + v23) = static Features.shared;
  v25 = v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_menuHostViewController;
  *(v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_menuHostViewController + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController____lazy_storage___featureFlags) = 0;
  v26 = v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_activity;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0;
  v27 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_conversation;
  *(v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_conversation) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_isOnScreen) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_controlsManager) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_remoteAudioPaused) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participantsViewControllerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_inCallControlsCollectionViewControllerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource) = 0;
  v28 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_shareLinkEnabled;
  *(v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_shareLinkEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_updateDataSourceNeedsRefreshParticipants) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_updateDataSourceNeedsAnimatedDifferences) = 0;
  v29 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_updateDataSourceSubject;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  swift_allocObject();
  v30 = v24;
  *(v0 + v29) = PassthroughSubject.init()();
  *(v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_updateDataSourceDebouncer) = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit027InCallControlsSectionHeaderB0CGMd);
  OUTLINED_FUNCTION_10_65(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsActivityD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_10_65(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsTitleD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_10_65(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsStatusD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_10_65(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit025InCallControlsParticipantD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_10_65(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsAddParticipantD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_10_65(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit023InCallControlsShareLinkD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_10_65(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031InCallControlsIgnoreLMIRequestsD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_10_65(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsToggleCaptionsD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_10_65(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0ab4ListD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_10_65(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026InCallControlsOpenMessagesD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_10_65(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsBlockD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_10_65(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsReportD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_10_65(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsPTTTitleD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_10_65(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit029InCallControlsPTTLeaveChannelD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_10_65(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit035InCallControlsPTTLeaveChannelFooterB0CGMd);
  OUTLINED_FUNCTION_10_65(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit024InCallControlsPTTOpenAppD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_10_65(v47);
  OUTLINED_FUNCTION_3_5();
  v48 = *(v0 + v27);
  *(v1 + v27) = v10;
  v86 = v10;

  Array<A>.filterAndSortForInCallControls()();
  v50 = v49;

  OUTLINED_FUNCTION_3_5();
  *v22 = v50;

  *(v1 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_mode) = v82;
  *(v1 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_gridLayoutStyle) = v81;
  *(v1 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_isLegacy) = v83 & 1;
  *(v1 + v28) = v84 & 1;
  v51 = [objc_opt_self() sharedManager];
  OUTLINED_FUNCTION_24_1();
  type metadata accessor for IDSCapabilitiesChecker();
  v52 = swift_allocObject();
  v100[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUIDSLookupManager);
  v100[4] = &protocol witness table for TUIDSLookupManager;
  v100[0] = v50;
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  v53 = MEMORY[0x1E69E7CC0];
  v52[2] = Dictionary.init(dictionaryLiteral:)();
  v52[3] = Dictionary.init(dictionaryLiteral:)();
  v52[5] = 0;
  swift_unknownObjectWeakInit();
  v52[6] = v53;
  outlined init with copy of IDSLookupManager(v100, (v52 + 7));
  v54 = objc_opt_self();
  v55 = [v54 defaultCenter];
  [v55 addObserver:v52 selector:sel_handleLookupManagerDidChangeNotification_ name:*MEMORY[0x1E69D8FA0] object:v50];

  __swift_destroy_boxed_opaque_existential_1(v100);
  *(v1 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_capabilitiesChecker) = v52;
  *(v25 + 8) = v85;
  swift_unknownObjectWeakAssign();
  v98 = v1;
  v99 = ObjectType;
  OUTLINED_FUNCTION_3_0();
  v58 = objc_msgSendSuper2(v56, v57);
  v59 = *(**&v58[OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_capabilitiesChecker] + 176);
  v60 = v58;

  v59(v58, &protocol witness table for InCallControlsCollectionViewController);

  v61 = [v54 defaultCenter];
  [v61 addObserver:v60 selector:sel_handleContentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  v62 = [v54 defaultCenter];
  [v62 addObserver:v60 selector:sel_blockStatusDidUpdate name:*MEMORY[0x1E69D8FB8] object:0];

  InCallControlsCollectionViewController.configureCellRegistrations()();
  v100[0] = *&v60[OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_updateDataSourceSubject];

  v63 = v87;
  NSRunLoop.SchedulerTimeType.Stride.init(floatLiteral:)();
  v64 = [objc_opt_self() mainRunLoop];
  v97 = v64;
  type metadata accessor for NSRunLoop.SchedulerOptions();
  v65 = v90;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
  v70 = v92;
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v65, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  (*(v89 + 8))(v63, v91);

  OUTLINED_FUNCTION_20();
  v71 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v72 = swift_allocObject();
  *(v72 + 16) = partial apply for closure #1 in InCallControlsCollectionViewController.init(conversation:participants:mode:gridLayoutStyle:isLegacy:shareLinkEnabled:menuHostViewController:);
  *(v72 + 24) = v71;
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Debounce<PassthroughSubject<(), Never>, NSRunLoop> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_AA18PassthroughSubjectCyyts5NeverOGSo9NSRunLoopCGMd);
  v73 = v60;
  OUTLINED_FUNCTION_28_3();
  v74 = v94;
  v75 = Publisher<>.sink(receiveValue:)();

  (*(v93 + 8))(v70, v74);
  *&v73[OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_updateDataSourceDebouncer] = v75;

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v76 = OUTLINED_FUNCTION_13_12();
  *(v76 + 16) = xmmword_1BC4BA940;
  v100[0] = v73;
  v77 = String.init<A>(reflecting:)();
  v79 = v78;
  *(v76 + 56) = MEMORY[0x1E69E6158];
  *(v76 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v76 + 32) = v77;
  *(v76 + 40) = v79;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  OUTLINED_FUNCTION_30_0();
}

uint64_t InCallControlsCollectionViewController.configureCellRegistrations()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit024InCallControlsPTTOpenAppD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v97 = &v87 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit035InCallControlsPTTLeaveChannelFooterB0CGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v96 = &v87 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit029InCallControlsPTTLeaveChannelD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v95 = &v87 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsPTTTitleD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v94 = &v87 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0ab4ListD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v93 = &v87 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsReportD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v92 = &v87 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsBlockD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v91 = &v87 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026InCallControlsOpenMessagesD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v90 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsToggleCaptionsD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v87 = &v87 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031InCallControlsIgnoreLMIRequestsD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v89 = &v87 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit023InCallControlsShareLinkD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v88 = &v87 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsAddParticipantD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v87 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsStatusD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v87 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsTitleD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v87 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit025InCallControlsParticipantD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v87 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsActivityD0C10Foundation4UUIDVGSgMd);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v87 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit027InCallControlsSectionHeaderB0CGSgMd);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v40 = &v87 - v39;
  InCallControlsCollectionViewController.createSectionHeaderViewRegistration()();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit027InCallControlsSectionHeaderB0CGMd);
  __swift_storeEnumTagSinglePayload(v40, 0, 1, v41);
  v42 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_sectionHeaderViewRegistration;
  swift_beginAccess();
  outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v40, v0 + v42, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit027InCallControlsSectionHeaderB0CGSgMd);
  swift_endAccess();
  InCallControlsCollectionViewController.createActivityCellRegistration()();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsActivityD0C10Foundation4UUIDVGMd);
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v43);
  v44 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_activityCellRegistration;
  swift_beginAccess();
  outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v37, v0 + v44, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsActivityD0C10Foundation4UUIDVGSgMd);
  swift_endAccess();
  InCallControlsCollectionViewController.createActivityCellRegistration()();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit025InCallControlsParticipantD0C10Foundation4UUIDVGMd);
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v45);
  v46 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participantCellRegistration;
  swift_beginAccess();
  outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v34, v0 + v46, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit025InCallControlsParticipantD0C10Foundation4UUIDVGSgMd);
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for InCallControlsTitleCell();
  type metadata accessor for UUID();
  UICollectionView.CellRegistration.init(handler:)();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsTitleD0C10Foundation4UUIDVGMd);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v47);
  v48 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_titleCellRegistration;
  swift_beginAccess();
  outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v31, v0 + v48, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsTitleD0C10Foundation4UUIDVGSgMd);
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for InCallControlsStatusCell();
  UICollectionView.CellRegistration.init(handler:)();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsStatusD0C10Foundation4UUIDVGMd);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v49);
  v50 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_statusCellRegistration;
  swift_beginAccess();
  outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v28, v0 + v50, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsStatusD0C10Foundation4UUIDVGSgMd);
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for InCallControlsAddParticipantCell();
  UICollectionView.CellRegistration.init(handler:)();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsAddParticipantD0C10Foundation4UUIDVGMd);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v51);
  v52 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_addParticipantCellRegistration;
  swift_beginAccess();
  outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v25, v0 + v52, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsAddParticipantD0C10Foundation4UUIDVGSgMd);
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for InCallControlsShareLinkCell();
  v53 = v88;
  UICollectionView.CellRegistration.init(handler:)();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit023InCallControlsShareLinkD0C10Foundation4UUIDVGMd);
  __swift_storeEnumTagSinglePayload(v53, 0, 1, v54);
  v55 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_shareLinkCellRegistration;
  swift_beginAccess();
  outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v53, v0 + v55, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit023InCallControlsShareLinkD0C10Foundation4UUIDVGSgMd);
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for InCallControlsIgnoreLMIRequestsCell();
  v56 = v89;
  UICollectionView.CellRegistration.init(handler:)();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031InCallControlsIgnoreLMIRequestsD0C10Foundation4UUIDVGMd);
  __swift_storeEnumTagSinglePayload(v56, 0, 1, v57);
  v58 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_ignoreLMIRequestsCellRegistration;
  swift_beginAccess();
  outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v56, v0 + v58, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031InCallControlsIgnoreLMIRequestsD0C10Foundation4UUIDVGSgMd);
  swift_endAccess();
  if (InCallControlsCollectionViewController.isLiveCaptionsAllowed.getter())
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for InCallControlsToggleCaptionsCell();
    v59 = v87;
    UICollectionView.CellRegistration.init(handler:)();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsToggleCaptionsD0C10Foundation4UUIDVGMd);
    __swift_storeEnumTagSinglePayload(v59, 0, 1, v60);
    v61 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_toggleCaptionsCellRegistration;
    swift_beginAccess();
    outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v59, v0 + v61, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsToggleCaptionsD0C10Foundation4UUIDVGSgMd);
    swift_endAccess();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for InCallControlsOpenMessagesCell();
  v62 = v90;
  UICollectionView.CellRegistration.init(handler:)();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026InCallControlsOpenMessagesD0C10Foundation4UUIDVGMd);
  __swift_storeEnumTagSinglePayload(v62, 0, 1, v63);
  v64 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_openMessagesCellRegistration;
  swift_beginAccess();
  outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v62, v0 + v64, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026InCallControlsOpenMessagesD0C10Foundation4UUIDVGSgMd);
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for InCallControlsBlockCell();
  v65 = v91;
  UICollectionView.CellRegistration.init(handler:)();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsBlockD0C10Foundation4UUIDVGMd);
  __swift_storeEnumTagSinglePayload(v65, 0, 1, v66);
  v67 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_blockUnknownCallerCellRegistration;
  swift_beginAccess();
  outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v65, v0 + v67, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsBlockD0C10Foundation4UUIDVGSgMd);
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for InCallControlsReportCell();
  v68 = v92;
  UICollectionView.CellRegistration.init(handler:)();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsReportD0C10Foundation4UUIDVGMd);
  __swift_storeEnumTagSinglePayload(v68, 0, 1, v69);
  v70 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_reportUnknownCallerCellRegistration;
  swift_beginAccess();
  outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v68, v0 + v70, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsReportD0C10Foundation4UUIDVGSgMd);
  swift_endAccess();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewListCell);
  v71 = v93;
  UICollectionView.CellRegistration.init(handler:)();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0ab4ListD0C10Foundation4UUIDVGMd);
  __swift_storeEnumTagSinglePayload(v71, 0, 1, v72);
  v73 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_fallbackCellRegistration;
  swift_beginAccess();
  outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v71, v0 + v73, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0ab4ListD0C10Foundation4UUIDVGSgMd);
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for InCallControlsPTTTitleCell();
  v74 = v94;
  UICollectionView.CellRegistration.init(handler:)();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsPTTTitleD0C10Foundation4UUIDVGMd);
  __swift_storeEnumTagSinglePayload(v74, 0, 1, v75);
  v76 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_pttTitleCellRegistration;
  swift_beginAccess();
  outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v74, v0 + v76, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsPTTTitleD0C10Foundation4UUIDVGSgMd);
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for InCallControlsPTTLeaveChannelCell();
  v77 = v95;
  UICollectionView.CellRegistration.init(handler:)();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit029InCallControlsPTTLeaveChannelD0C10Foundation4UUIDVGMd);
  __swift_storeEnumTagSinglePayload(v77, 0, 1, v78);
  v79 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_leavePTTChannelCellRegistration;
  swift_beginAccess();
  outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v77, v0 + v79, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit029InCallControlsPTTLeaveChannelD0C10Foundation4UUIDVGSgMd);
  swift_endAccess();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for InCallControlsPTTLeaveChannelFooterView();
  v80 = v96;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit035InCallControlsPTTLeaveChannelFooterB0CGMd);
  __swift_storeEnumTagSinglePayload(v80, 0, 1, v81);
  v82 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_leaveChannelFooterViewRegistration;
  swift_beginAccess();
  outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v80, v0 + v82, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit035InCallControlsPTTLeaveChannelFooterB0CGSgMd);
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for InCallControlsPTTOpenAppCell();
  v83 = v97;
  UICollectionView.CellRegistration.init(handler:)();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit024InCallControlsPTTOpenAppD0C10Foundation4UUIDVGMd);
  __swift_storeEnumTagSinglePayload(v83, 0, 1, v84);
  v85 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_openPTTAppCellRegistration;
  swift_beginAccess();
  outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v83, v0 + v85, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit024InCallControlsPTTOpenAppD0C10Foundation4UUIDVGSgMd);
  return swift_endAccess();
}

void closure #1 in InCallControlsCollectionViewController.init(conversation:participants:mode:gridLayoutStyle:isLegacy:shareLinkEnabled:menuHostViewController:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource;
    swift_beginAccess();
    v3 = *&v1[v2];
    if (v3)
    {
      v4 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_updateDataSourceNeedsRefreshParticipants;
      v5 = v1[OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_updateDataSourceNeedsRefreshParticipants];
      v6 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_updateDataSourceNeedsAnimatedDifferences;
      v7 = v1[OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_updateDataSourceNeedsAnimatedDifferences];
      v8 = v3;
      InCallControlsCollectionViewController.reallyUpdateDataSource(_:shouldRefreshParticipants:animatingDifferences:)(v8, v5, v7);

      v1[v4] = 0;
      v1[v6] = 0;
    }
  }
}

uint64_t InCallControlsCollectionViewController.reallyUpdateDataSource(_:shouldRefreshParticipants:animatingDifferences:)(void *a1, int a2, int a3)
{
  v330 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v330);
  v329 = &v289 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v311 = &v289 - v9;
  v299 = type metadata accessor for Participant(0);
  v312 = *(v299 - 8);
  MEMORY[0x1EEE9AC00](v299);
  v293 = &v289 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v328 = &v289 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v325 = &v289 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v313 = &v289 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v331 = &v289 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v326 = &v289 - v20;
  v21 = type metadata accessor for UUID();
  v318 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v304 = &v289 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v308 = &v289 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v307 = &v289 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v298 = &v289 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v295 = &v289 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v302 = &v289 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v301 = &v289 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v300 = &v289 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v296 = &v289 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v289 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v320 = &v289 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v322 = &v289 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v324 = &v289 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v327 = &v289 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit38InCallControlsCollectionViewControllerC0kL7SectionO10Foundation4UUIDVGMd);
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v289 - v52;
  v54 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_controlsManager;
  swift_beginAccess();
  v315 = v3;
  v55 = *(v3 + v54);
  v306 = a1;
  v305 = a3;
  v303 = v51;
  v297 = a2;
  v294 = v41;
  if (v55)
  {
    v56 = *((*MEMORY[0x1E69E7D40] & *v55) + 0x2A0);
    v57 = v55;
    v56();
    v59 = v58;

    ObjectType = swift_getObjectType();
    v61 = (*(v59 + 184))(ObjectType, v59);
    swift_unknownObjectRelease();
    v310 = [v61 isTelephonyProvider];
  }

  else
  {
    v310 = 0;
  }

  v62._rawValue = InCallControlsCollectionViewController.visibleCollectionViewSections()();
  lazy protocol witness table accessor for type InCallControlsCollectionViewController.CollectionViewSection and conformance InCallControlsCollectionViewController.CollectionViewSection();
  _s10Foundation4UUIDVACSHAAWlTm_5(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  NSDiffableDataSourceSnapshot.init()();
  v317 = v50;
  v316 = v53;
  NSDiffableDataSourceSnapshot.appendSections(_:)(v62);
  v63 = *(v62._rawValue + 2);
  v64 = v62._rawValue + 32;
  v332 = 0x80000001BC4F1D50;
  v65 = v62._rawValue + 32;
  rawValue = v62._rawValue;
  while (2)
  {
    v66 = &unk_1BC4BA000;
    if (v63)
    {
      switch(*v65)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
          v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v65;
          --v63;
          if ((v67 & 1) == 0)
          {
            continue;
          }

          break;
        default:

          break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
      v68 = v318;
      v69 = *(v318 + 72);
      v70 = (*(v318 + 80) + 32) & ~*(v318 + 80);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_1BC4BA940;
      if (one-time initialization token for titleRowIdentifier != -1)
      {
LABEL_199:
        swift_once();
      }

      v72 = __swift_project_value_buffer(v21, static InCallControlsCollectionViewController.CollectionViewSection.titleRowIdentifier);
      v73 = *(v68 + 16);
      v73(v71 + v70, v72, v21);
      LOBYTE(v336) = 0;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

      v73(v327, v72, v21);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v75 = v74;
      v76 = v74[2];
      if (v76 >= v74[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v75 = v268;
      }

      v62._rawValue = rawValue;
      v75[2] = v76 + 1;
      v319 = v75;
      (*(v318 + 32))(v75 + v70 + v76 * v69, v327, v21);
      v66 = &unk_1BC4BA000;
    }

    else
    {
      v319 = MEMORY[0x1E69E7CC0];
    }

    break;
  }

  v77 = *(v62._rawValue + 2);
  v78 = v64;
  v79 = v315;
  while (2)
  {
    if (v77)
    {
      switch(*v78)
      {
        case 1:

          break;
        default:
          v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v78;
          --v77;
          if ((v80 & 1) == 0)
          {
            continue;
          }

          break;
      }

      v81 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_activity;
      swift_beginAccess();
      outlined init with copy of IDView<AvatarStackView, [UUID]>(v79 + v81, &v334, &_s15ConversationKit8Activity_pSgMd);
      if (v335)
      {
        outlined init with take of TapInteractionHandler(&v334, &v336);
        v82 = v337;
        v83 = v338;
        __swift_project_boxed_opaque_existential_1(&v336, v337);
        v84 = (*(v83 + 96))(v82, v83);
        v85 = v326;
        UUID.init(hash:)(v84);
        if (__swift_getEnumTagSinglePayload(v85, 1, v21) == 1)
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v85, &_s10Foundation4UUIDVSgMd);
          if (one-time initialization token for conversationControls != -1)
          {
            swift_once();
          }

          v86 = type metadata accessor for Logger();
          __swift_project_value_buffer(v86, &static Logger.conversationControls);
          v87 = Logger.logObject.getter();
          v88 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            *v89 = 0;
            _os_log_impl(&dword_1BBC58000, v87, v88, "Unable to create activityMetadataUUID", v89, 2u);
            MEMORY[0x1BFB23DF0](v89, -1, -1);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
          *(swift_allocObject() + 16) = v66[148];
          UUID.init()();
          LOBYTE(v334) = 1;
          NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
        }

        else
        {
          v90 = v318;
          v91 = v324;
          (*(v318 + 32))(v324, v85, v21);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
          v92 = (*(v90 + 80) + 32) & ~*(v90 + 80);
          v93 = swift_allocObject();
          *(v93 + 16) = v66[148];
          (*(v90 + 16))(v93 + v92, v91, v21);
          LOBYTE(v334) = 1;
          NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

          (*(v90 + 8))(v91, v21);
        }

        __swift_destroy_boxed_opaque_existential_1(&v336);
      }

      else
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v334, &_s15ConversationKit8Activity_pSgMd);
      }
    }

    break;
  }

  v94 = *(v62._rawValue + 2);
  v95 = v64;
  v309 = v21;
  while (2)
  {
    if (v94)
    {
      switch(*v95)
      {
        case 2:

          break;
        default:
          v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v95;
          --v94;
          if ((v96 & 1) == 0)
          {
            continue;
          }

          break;
      }

      if ((v310 & 1) == 0)
      {
        v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
        v98 = v318;
        v99 = *(v318 + 80);
        v100 = (v99 + 32) & ~v99;
        v327 = *(v318 + 72);
        v290 = v99;
        v291 = v97;
        v101 = swift_allocObject();
        v289 = v66[148];
        *(v101 + 16) = v289;
        if (one-time initialization token for statusRowIdentifier != -1)
        {
          swift_once();
        }

        v102 = __swift_project_value_buffer(v21, static InCallControlsCollectionViewController.CollectionViewSection.statusRowIdentifier);
        v103 = *(v98 + 16);
        v326 = v100;
        v103(v101 + v100, v102, v21);
        LOBYTE(v336) = 2;
        NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

        v104 = v322;
        v324 = (v98 + 16);
        v323 = v103;
        v103(v322, v102, v21);
        v70 = v319;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v106 = v320;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v70 = v275;
        }

        v107 = *(v70 + 16);
        if (v107 >= *(v70 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v70 = v276;
        }

        *(v70 + 16) = v107 + 1;
        v108 = *(v98 + 32);
        v69 = v98 + 32;
        v322 = v69;
        v321 = v108;
        v108(&v326[v70 + v107 * v327], v104, v21);
        v339 = v70;
        v109 = MEMORY[0x1E69E7CC0];
        *&v334 = MEMORY[0x1E69E7CC0];
        v110 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participants;
        swift_beginAccess();
        v292 = v110;
        v71 = *(v79 + v110);
        v111 = *(v71 + 16);

        v112 = 0;
        v319 = v109;
        v68 = v312;
        while (1)
        {
          v113 = v311;
LABEL_40:
          if (v111 == v112)
          {
            break;
          }

          if (v112 >= *(v71 + 16))
          {
            __break(1u);
LABEL_198:
            __break(1u);
            goto LABEL_199;
          }

          v114 = v21;
          v70 = (*(v68 + 80) + 32) & ~*(v68 + 80);
          v69 = *(v68 + 72);
          v115 = v331;
          _s15ConversationKit11ParticipantVWOcTm_10(v71 + v70 + v69 * v112, v331);
          _s15ConversationKit11ParticipantVWOcTm_10(v115, v113);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 2u:
              v21 = v114;
              v116 = type metadata accessor for Date();
              (*(*(v116 - 8) + 8))(v113, v116);
              outlined destroy of Participant.State();
              ++v112;
              v106 = v320;
              goto LABEL_40;
            case 4u:
              v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
              v118 = *(v117 + 48);
              outlined consume of Participant.CopresenceInfo?(*&v311[*(v117 + 64)], *&v311[*(v117 + 64) + 8]);
              v119 = &v311[v118];
              v113 = v311;
              outlined destroy of Participant.MediaInfo(v119);
              goto LABEL_45;
            case 6u:
              goto LABEL_46;
            default:
LABEL_45:
              v120 = type metadata accessor for Date();
              (*(*(v120 - 8) + 8))(v113, v120);
LABEL_46:
              outlined init with take of Participant(v331, v313);
              v121 = v319;
              v122 = swift_isUniquelyReferenced_nonNull_native();
              v123 = v121;
              v333 = v121;
              v106 = v320;
              if ((v122 & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                v68 = v312;
                v123 = v333;
              }

              v124 = v123[2];
              if (v124 >= v123[3] >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                v68 = v312;
                v123 = v333;
              }

              ++v112;
              v123[2] = v124 + 1;
              v319 = v123;
              outlined init with take of Participant(v313, v123 + v70 + v124 * v69);
              v21 = v309;
              break;
          }
        }

        v125 = v319[2];
        if (v125)
        {
          v333 = MEMORY[0x1E69E7CC0];
          v126 = v319;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v71 = v333;
          v127 = v126 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
          v70 = *(v68 + 72);
          v128 = v299;
          do
          {
            v129 = v325;
            _s15ConversationKit11ParticipantVWOcTm_10(v127, v325);
            v323(v106, v129 + *(v128 + 20), v21);
            outlined destroy of Participant.State();
            v333 = v71;
            v130 = v21;
            v131 = *(v71 + 16);
            if (v131 >= *(v71 + 24) >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v128 = v299;
              v71 = v333;
            }

            *(v71 + 16) = v131 + 1;
            v321(&v326[v71 + v131 * v327], v106, v130);
            v127 += v70;
            --v125;
            v21 = v130;
          }

          while (v125);
        }

        else
        {

          v71 = MEMORY[0x1E69E7CC0];
        }

        v132 = v315;
        specialized Array.append<A>(contentsOf:)(v71);
        v133 = *(v132 + v292);
        v134 = *(v133 + 16);

        v135 = 0;
        v69 = MEMORY[0x1E69E7CC0];
        v68 = v312;
        while (v134 != v135)
        {
          if (v135 >= *(v133 + 16))
          {
            goto LABEL_198;
          }

          v70 = (*(v68 + 80) + 32) & ~*(v68 + 80);
          v71 = *(v68 + 72);
          v136 = v328;
          _s15ConversationKit11ParticipantVWOcTm_10(v133 + v70 + v71 * v135, v328);
          _s15ConversationKit11ParticipantVWOcTm_10(v136, v329);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 2u:
              v141 = type metadata accessor for Date();
              (*(*(v141 - 8) + 8))(v329, v141);
              outlined init with take of Participant(v328, v293);
              v142 = swift_isUniquelyReferenced_nonNull_native();
              v333 = v69;
              if ((v142 & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                v68 = v312;
                v69 = v333;
              }

              v143 = *(v69 + 16);
              if (v143 >= *(v69 + 24) >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                v68 = v312;
                v69 = v333;
              }

              ++v135;
              *(v69 + 16) = v143 + 1;
              outlined init with take of Participant(v293, v69 + v70 + v143 * v71);
              v21 = v309;
              continue;
            case 4u:
              v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
              v139 = *(v138 + 48);
              v70 = v329;
              outlined consume of Participant.CopresenceInfo?(*(v329 + *(v138 + 64)), *(v329 + *(v138 + 64) + 8));
              v140 = v70 + v139;
              v68 = v312;
              outlined destroy of Participant.MediaInfo(v140);
              goto LABEL_62;
            case 6u:
              goto LABEL_63;
            default:
LABEL_62:
              v137 = type metadata accessor for Date();
              (*(*(v137 - 8) + 8))(v329, v137);
LABEL_63:
              outlined destroy of Participant.State();
              ++v135;
              break;
          }
        }

        v144 = *(v69 + 16);
        if (v144)
        {
          v333 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v145 = v333;
          v146 = *(v68 + 80);
          v331 = v69;
          v147 = v69 + ((v146 + 32) & ~v146);
          v148 = *(v68 + 72);
          v149 = v299;
          v150 = v294;
          do
          {
            v151 = v325;
            _s15ConversationKit11ParticipantVWOcTm_10(v147, v325);
            v323(v150, v151 + *(v149 + 20), v21);
            outlined destroy of Participant.State();
            v333 = v145;
            v152 = v21;
            v153 = *(v145 + 16);
            if (v153 >= *(v145 + 24) >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v149 = v299;
              v145 = v333;
            }

            *(v145 + 16) = v153 + 1;
            v321(&v326[v145 + v153 * v327], v150, v152);
            v147 += v148;
            --v144;
            v21 = v152;
          }

          while (v144);
        }

        else
        {

          v145 = MEMORY[0x1E69E7CC0];
        }

        specialized Array.append<A>(contentsOf:)(v145);
        v154 = v334;
        LOBYTE(v333) = 2;
        NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
        v155 = v326;
        v156 = swift_allocObject();
        *(v156 + 16) = v289;
        v62._rawValue = rawValue;
        if (one-time initialization token for addParticipantRowIdentifier != -1)
        {
          swift_once();
        }

        v157 = __swift_project_value_buffer(v21, static InCallControlsCollectionViewController.CollectionViewSection.addParticipantRowIdentifier);
        v323(&v155[v156], v157, v21);
        LOBYTE(v333) = 2;
        NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

        if (v297)
        {
          specialized Array.append<A>(contentsOf:)(v154);
        }

        else
        {
        }

        v66 = &unk_1BC4BA000;
        v158 = v296;
        v79 = v315;
        v323(v296, v157, v21);
        v319 = v339;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v319 = v283;
        }

        v159 = v319[2];
        if (v159 >= v319[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v319 = v284;
        }

        v160 = v319;
        v319[2] = v159 + 1;
        v321(&v326[v160 + v159 * v327], v158, v21);
      }
    }

    break;
  }

  v161 = *(v62._rawValue + 2);
  v162 = v64;
  while (2)
  {
    if (v161)
    {
      switch(*v162)
      {
        case 3:

          break;
        default:
          v163 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v162;
          --v161;
          if ((v163 & 1) == 0)
          {
            continue;
          }

          break;
      }

      if ((v310 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
        v164 = v318;
        v165 = *(v318 + 72);
        v166 = (*(v318 + 80) + 32) & ~*(v318 + 80);
        v167 = swift_allocObject();
        *(v167 + 16) = v66[148];
        if (one-time initialization token for shareLinkRowIdentifier != -1)
        {
          swift_once();
        }

        v168 = __swift_project_value_buffer(v21, static InCallControlsCollectionViewController.CollectionViewSection.shareLinkRowIdentifier);
        v169 = *(v164 + 16);
        v169(v167 + v166, v168, v21);
        LOBYTE(v334) = 3;
        NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

        v169(v300, v168, v21);
        v170 = v319;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v170 = v281;
        }

        v319 = v170;
        v171 = v170[2];
        v62._rawValue = rawValue;
        v66 = &unk_1BC4BA000;
        if (v171 >= v170[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v319 = v282;
        }

        v172 = v319;
        v319[2] = v171 + 1;
        (*(v318 + 32))(v172 + v166 + v171 * v165, v300, v21);
      }
    }

    break;
  }

  v173 = *(v62._rawValue + 2);
  v174 = v64;
  while (2)
  {
    if (v173)
    {
      switch(*v174)
      {
        case 4:

          break;
        default:
          v175 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v174;
          --v173;
          if ((v175 & 1) == 0)
          {
            continue;
          }

          break;
      }

      if ((v310 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
        v176 = v318;
        v177 = *(v318 + 72);
        v178 = (*(v318 + 80) + 32) & ~*(v318 + 80);
        v179 = swift_allocObject();
        *(v179 + 16) = v66[148];
        if (one-time initialization token for toggleCaptionsRowIdentifier != -1)
        {
          swift_once();
        }

        v180 = __swift_project_value_buffer(v21, static InCallControlsCollectionViewController.CollectionViewSection.toggleCaptionsRowIdentifier);
        v181 = *(v176 + 16);
        v181(v179 + v178, v180, v21);
        LOBYTE(v334) = 4;
        NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

        v181(v301, v180, v21);
        v182 = v319;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v182 = v279;
        }

        v319 = v182;
        v183 = v182[2];
        v62._rawValue = rawValue;
        v66 = &unk_1BC4BA000;
        if (v183 >= v182[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v319 = v280;
        }

        v184 = v319;
        v319[2] = v183 + 1;
        (*(v318 + 32))(v184 + v178 + v183 * v177, v301, v21);
      }
    }

    break;
  }

  v185 = *(v62._rawValue + 2);
  v186 = v64;
  while (2)
  {
    if (v185)
    {
      switch(*v186)
      {
        case 5:

          break;
        default:
          v187 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v186;
          --v185;
          if ((v187 & 1) == 0)
          {
            continue;
          }

          break;
      }

      if ((v310 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
        v188 = v318;
        v189 = *(v318 + 72);
        v190 = (*(v318 + 80) + 32) & ~*(v318 + 80);
        v191 = swift_allocObject();
        *(v191 + 16) = v66[148];
        if (one-time initialization token for toggleIgnoreLMIRequestsRowIdentifier != -1)
        {
          swift_once();
        }

        v192 = __swift_project_value_buffer(v21, static InCallControlsCollectionViewController.CollectionViewSection.toggleIgnoreLMIRequestsRowIdentifier);
        v193 = *(v188 + 16);
        v193(v191 + v190, v192, v21);
        LOBYTE(v334) = 5;
        NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

        v193(v302, v192, v21);
        v194 = v319;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v194 = v277;
        }

        v319 = v194;
        v195 = v194[2];
        v62._rawValue = rawValue;
        v66 = &unk_1BC4BA000;
        if (v195 >= v194[3] >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v319 = v278;
        }

        v196 = v319;
        v319[2] = v195 + 1;
        (*(v318 + 32))(v196 + v190 + v195 * v189, v302, v21);
      }
    }

    break;
  }

  v197 = *(v62._rawValue + 2);
  v198 = v64;
  while (2)
  {
    if (v197)
    {
      switch(*v198)
      {
        case 6:

          break;
        default:
          v199 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v198;
          --v197;
          if ((v199 & 1) == 0)
          {
            continue;
          }

          break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
      v200 = v318;
      v201 = (*(v318 + 80) + 32) & ~*(v318 + 80);
      v202 = swift_allocObject();
      *(v202 + 16) = v66[148];
      if (one-time initialization token for openMessagesRowIdentifier != -1)
      {
        swift_once();
      }

      v203 = __swift_project_value_buffer(v21, static InCallControlsCollectionViewController.CollectionViewSection.openMessagesRowIdentifier);
      (*(v200 + 16))(v202 + v201, v203, v21);
      LOBYTE(v334) = 6;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    }

    break;
  }

  v204 = *(v62._rawValue + 2);
  v205 = v64;
  while (2)
  {
    if (v204)
    {
      switch(*v205)
      {
        case 7:

          break;
        default:
          v206 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v205;
          --v204;
          if ((v206 & 1) == 0)
          {
            continue;
          }

          break;
      }

      v207 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_conversation;
      swift_beginAccess();
      v208 = *(v79 + v207);
      if (v208)
      {
        v209 = v208;
        if (!specialized Conversation.isInitiatorContact.getter() && !specialized Conversation.hasExactlyOneRemoteParticipant.getter())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
          v210 = v318;
          v211 = v66;
          v212 = (*(v318 + 80) + 32) & ~*(v318 + 80);
          v331 = *(v318 + 72);
          v213 = swift_allocObject();
          *(v213 + 16) = v211[148];
          if (one-time initialization token for reportUnknownRowIdentifier != -1)
          {
            swift_once();
          }

          v214 = __swift_project_value_buffer(v21, static InCallControlsCollectionViewController.CollectionViewSection.reportUnknownRowIdentifier);
          v215 = *(v210 + 16);
          v215(v213 + v212, v214, v21);
          LOBYTE(v333) = 7;
          NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

          v215(v295, v214, v21);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v319 = v287;
          }

          v216 = v319[2];
          v21 = v309;
          v62._rawValue = rawValue;
          if (v216 >= v319[3] >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v319 = v288;
          }

          v217 = v319;
          v319[2] = v216 + 1;
          (*(v318 + 32))(v217 + v212 + v216 * v331, v295, v21);
          v66 = &unk_1BC4BA000;
        }

        v218 = specialized Conversation.unknownHandles.getter();
        v219 = specialized Array.count.getter(v218);

        v220 = specialized Conversation.allParticipantsAreUnknownContacts.getter();
        if (v219 || v220)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
          v221 = v318;
          v222 = v66;
          v223 = (*(v318 + 80) + 32) & ~*(v318 + 80);
          v331 = *(v318 + 72);
          v224 = swift_allocObject();
          *(v224 + 16) = v222[148];
          if (one-time initialization token for blockUnkownRowIdentifier != -1)
          {
            swift_once();
          }

          v225 = __swift_project_value_buffer(v21, static InCallControlsCollectionViewController.CollectionViewSection.blockUnkownRowIdentifier);
          v226 = *(v221 + 16);
          v226(v224 + v223, v225, v21);
          LOBYTE(v333) = 7;
          NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

          v226(v298, v225, v21);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v319 = v285;
          }

          v227 = v319[2];
          v21 = v309;
          v62._rawValue = rawValue;
          if (v227 >= v319[3] >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v319 = v286;
          }

          v228 = v319;
          v319[2] = v227 + 1;
          (*(v318 + 32))(v228 + v223 + v227 * v331, v298, v21);
          v66 = &unk_1BC4BA000;
        }

        else
        {
        }
      }
    }

    break;
  }

  v229 = *(v62._rawValue + 2);
  v230 = v64;
  while (2)
  {
    if (v229)
    {
      switch(*v230)
      {
        case 8:

          break;
        default:
          v231 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v230;
          --v229;
          if ((v231 & 1) == 0)
          {
            continue;
          }

          break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
      v232 = v318;
      v233 = *(v318 + 72);
      v234 = (*(v318 + 80) + 32) & ~*(v318 + 80);
      v235 = swift_allocObject();
      *(v235 + 16) = v66[148];
      if (one-time initialization token for pttTitleRowIdentifier != -1)
      {
        swift_once();
      }

      v236 = __swift_project_value_buffer(v21, static InCallControlsCollectionViewController.CollectionViewSection.pttTitleRowIdentifier);
      v237 = *(v232 + 16);
      v237(v235 + v234, v236, v21);
      LOBYTE(v333) = 8;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

      v237(v307, v236, v21);
      v238 = v319;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v238 = v269;
      }

      v319 = v238;
      v239 = v238[2];
      v62._rawValue = rawValue;
      if (v239 >= v238[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v319 = v270;
      }

      v240 = v319;
      v319[2] = v239 + 1;
      (*(v318 + 32))(v240 + v234 + v239 * v233, v307, v21);
    }

    break;
  }

  v241 = *(v62._rawValue + 2);
  while (2)
  {
    if (v241)
    {
      switch(*v64)
      {
        case 9:

          break;
        default:
          v242 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v64;
          --v241;
          if ((v242 & 1) == 0)
          {
            continue;
          }

          break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
      v243 = v318;
      v244 = *(v318 + 72);
      v245 = (*(v318 + 80) + 32) & ~*(v318 + 80);
      v246 = swift_allocObject();
      *(v246 + 16) = v66[148];
      if (one-time initialization token for leavePTTChannelRowIdentifier != -1)
      {
        swift_once();
      }

      v247 = __swift_project_value_buffer(v21, static InCallControlsCollectionViewController.CollectionViewSection.leavePTTChannelRowIdentifier);
      v248 = *(v243 + 16);
      v248(v246 + v245, v247, v21);
      LOBYTE(v333) = 9;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

      v248(v308, v247, v21);
      v249 = v319;
      v250 = swift_isUniquelyReferenced_nonNull_native();
      v251 = v306;
      if ((v250 & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v249 = v271;
      }

      v319 = v249;
      v252 = v249[2];
      v62._rawValue = rawValue;
      if (v252 >= v249[3] >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v319 = v272;
      }

      v253 = v319;
      v319[2] = v252 + 1;
      (*(v318 + 32))(v253 + v245 + v252 * v244, v308, v21);
    }

    else
    {
      v251 = v306;
    }

    break;
  }

  specialized Sequence<>.contains(_:)(10, v62._rawValue);
  v255 = v254;

  if (v255)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
    v256 = v318;
    v257 = *(v318 + 72);
    v258 = (*(v318 + 80) + 32) & ~*(v318 + 80);
    v259 = swift_allocObject();
    *(v259 + 16) = v66[148];
    if (one-time initialization token for openPTTAppRowIdentifier != -1)
    {
      swift_once();
    }

    v260 = __swift_project_value_buffer(v21, static InCallControlsCollectionViewController.CollectionViewSection.openPTTAppRowIdentifier);
    v261 = *(v256 + 16);
    v261(v259 + v258, v260, v21);
    LOBYTE(v333) = 10;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    v261(v304, v260, v21);
    v262._rawValue = v319;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v262._rawValue = v273;
    }

    v263 = *(v262._rawValue + 2);
    v264 = v318;
    if (v263 >= *(v262._rawValue + 3) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v262._rawValue = v274;
    }

    *(v262._rawValue + 2) = v263 + 1;
    (*(v264 + 32))(v262._rawValue + v258 + v263 * v257, v304, v21);
  }

  else
  {
    v262._rawValue = v319;
  }

  v265 = v317;
  v266 = v316;
  NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v262);

  InCallControlsCollectionViewController.apply(_:to:animatingDifferences:)(v266, v251, v305 & 1);
  return (*(v303 + 8))(v266, v265);
}

id InCallControlsCollectionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsCollectionViewController.init(coder:)()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_updatedCapabilitiesWithParticipants) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participants) = MEMORY[0x1E69E7CC0];
  v2 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_features;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_11_2();
    swift_once();
  }

  v3 = static Features.shared;
  *(v1 + v2) = static Features.shared;
  OUTLINED_FUNCTION_23_39(OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_menuHostViewController);
  *(v1 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController____lazy_storage___featureFlags) = 0;
  v4 = v1 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_activity;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_conversation) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_isOnScreen) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_controlsManager) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_remoteAudioPaused) = 0;
  OUTLINED_FUNCTION_23_39(OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_participantsViewControllerDelegate);
  OUTLINED_FUNCTION_23_39(OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_inCallControlsCollectionViewControllerDelegate);
  *(v1 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_collectionView) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_shareLinkEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_updateDataSourceNeedsRefreshParticipants) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_updateDataSourceNeedsAnimatedDifferences) = 0;
  v5 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_updateDataSourceSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  swift_allocObject();
  v6 = v3;
  *(v1 + v5) = PassthroughSubject.init()();
  *(v1 + OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_updateDataSourceDebouncer) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit027InCallControlsSectionHeaderB0CGMd);
  OUTLINED_FUNCTION_13_6(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsActivityD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_13_6(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsTitleD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_13_6(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsStatusD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_13_6(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit025InCallControlsParticipantD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_13_6(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsAddParticipantD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_13_6(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit023InCallControlsShareLinkD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_13_6(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031InCallControlsIgnoreLMIRequestsD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_13_6(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit028InCallControlsToggleCaptionsD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_13_6(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_So0ab4ListD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_13_6(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026InCallControlsOpenMessagesD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_13_6(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit019InCallControlsBlockD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_13_6(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit020InCallControlsReportD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_13_6(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit022InCallControlsPTTTitleD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_13_6(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit029InCallControlsPTTLeaveChannelD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_13_6(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit035InCallControlsPTTLeaveChannelFooterB0CGMd);
  OUTLINED_FUNCTION_13_6(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit024InCallControlsPTTOpenAppD0C10Foundation4UUIDVGMd);
  OUTLINED_FUNCTION_13_6(v23);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall InCallControlsCollectionViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v9 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v52 - v12;
  v54.receiver = v1;
  v54.super_class = ObjectType;
  objc_msgSendSuper2(&v54, sel_viewDidLoad, v11);
  (*(v5 + 104))(v13, *MEMORY[0x1E69DC238], v3);
  OUTLINED_FUNCTION_20();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v9, v13, v3);
  v15 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  (*(v5 + 32))(v16 + v15, v9, v3);
  v17 = objc_allocWithZone(MEMORY[0x1E69DC808]);
  v18 = @nonobjc UICollectionViewCompositionalLayout.init(sectionProvider:)(partial apply for closure #1 in InCallControlsCollectionViewController.viewDidLoad(), v16);
  v19 = [v1 view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_8;
  }

  v20 = v19;
  [v19 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v18 collectionViewLayout:{v22, v24, v26, v28}];
  [v29 setAutoresizingMask_];
  v30 = [v1 view];
  if (!v30)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v31 = v30;
  v53 = v13;
  [v30 addSubview_];

  if (one-time initialization token for tableViewBackground != -1)
  {
    swift_once();
  }

  v32 = static Colors.InCallControls.tableViewBackground;
  [v29 setBackgroundColor_];

  [v29 setDelegate_];
  v33 = objc_opt_self();
  v34 = v29;
  v35 = [v33 conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_14_2();
  v36.super.isa = v35;
  v39 = OUTLINED_FUNCTION_17_0(0xD000000000000014, 0x80000001BC50E5F0, v37, v38, v36);
  v41 = v40;

  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v39, v41, v34);
  v42 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_collectionView;
  OUTLINED_FUNCTION_3_5();
  v43 = *&v1[v42];
  *&v1[v42] = v34;
  v44 = v34;

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy15ConversationKit024InCallControlsCollectionC10ControllerC0lC7SectionO10Foundation4UUIDVGMd));
  v45 = v44;
  v46 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

  InCallControlsCollectionViewController.reallyUpdateDataSource(_:shouldRefreshParticipants:animatingDifferences:)(v46, 0, 0);
  v47 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_dataSource;
  OUTLINED_FUNCTION_3_5();
  v48 = *&v1[v47];
  *&v1[v47] = v46;
  v49 = v46;

  v50 = [v1 view];
  if (v50)
  {
    v51 = v50;
    [v50 setBackgroundColor_];

    (*(v5 + 8))(v53, v3);
    return;
  }

LABEL_9:
  __break(1u);
}