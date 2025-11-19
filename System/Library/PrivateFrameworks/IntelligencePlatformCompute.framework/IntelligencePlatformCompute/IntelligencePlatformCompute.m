uint64_t @objc ComputeOrchestration.EventReporter.streamUpdated(streamIdentifier:remoteName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (a4)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v12;
  }

  else
  {
    v11 = 0;
  }

  a6(v8, v10, v11, a4);

  return 1;
}

uint64_t ComputeOrchestration.EventReporter.streamUpdated(streamIdentifier:remoteName:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  result = static ViewOrchestrationSystem.sourceUpdater(config:)();
  if (!v5)
  {

    if (a4)
    {
      MEMORY[0x259C304F0](0x7365746F6D65723ALL, 0xE90000000000003ALL);
      MEMORY[0x259C304F0](a3, a4);
    }

    v12._countAndFlagsBits = a1;
    v12._object = a2;
    ViewUpdate.SourceUpdater.streamUpdated(streamName:isDelete:)(v12, a5 & 1);
  }

  return result;
}

uint64_t protocol witness for ViewUpdateGenerationRunner.update(viewName:requests:) in conformance ComputeOrchestration.ViewRunner(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for ViewUpdateGenerationRunner.update(viewName:requests:) in conformance ComputeOrchestration.ViewRunner;

  return ComputeOrchestration.ViewRunner.update(viewName:requests:)(a1, a2, a3);
}

uint64_t ComputeOrchestration.ViewRunner.update(viewName:requests:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ComputeOrchestration.ViewRunner.update(viewName:requests:), 0, 0);
}

uint64_t ComputeOrchestration.ViewRunner.update(viewName:requests:)()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return ComputeOrchestration.ViewRunner.fullRebuild(viewName:requests:)();
}

uint64_t ComputeOrchestration.ViewRunner.fullRebuild(viewName:requests:)()
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = v0[5];
  v2 = *(v0[6] + 16);
  v3 = MEMORY[0x259C304D0](v0[3], v0[4]);
  type metadata accessor for GDViewUpdateSourceRequest(0, &lazy cache variable for type metadata for GDViewUpdateSourceRequest, 0x277D1F498);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[2] = 0;
  v5 = [v2 updateViewWithName:v3 viewUpdateSourceRequests:isa error:v0 + 2];

  v6 = v0[2];
  if (v5)
  {
    type metadata accessor for GDViewUpdateSourceRequest(0, &lazy cache variable for type metadata for GDViewUpdateSourceResponse, 0x277D1F4A0);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v6;

    v9 = v0[1];
    v10 = *MEMORY[0x277D85DE8];

    return v9(v7);
  }

  else
  {
    v12 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v13 = v0[1];
    v14 = *MEMORY[0x277D85DE8];

    return v13();
  }
}

uint64_t type metadata accessor for GDViewUpdateSourceRequest(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t protocol witness for ViewUpdateGenerationRunner.update(viewName:requests:) in conformance ComputeOrchestration.ViewRunner(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

id GDCLog()
{
  if (GDCLog_onceToken != -1)
  {
    GDCLog_cold_1();
  }

  v1 = GDCLog_log;

  return v1;
}

void sub_254FB6360(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t @objc ComputeOrchestration.WrappedEventReporter.streamDeletion(streamIdentifier:remoteName:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, SEL *a6)
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (a4)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v12;
  }

  else
  {
    v11 = 0;
  }

  ComputeOrchestration.WrappedEventReporter.streamUpdated(streamIdentifier:remoteName:)(v8, v10, v11, a4, a6);

  return 1;
}

void ComputeOrchestration.WrappedEventReporter.streamUpdated(streamIdentifier:remoteName:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v12 = *(*(v5 + 16) + 16);
  os_unfair_lock_lock((v12 + 24));
  closure #1 in ComputeOrchestration.EventReporterProvider.eventReporter()((v12 + 16), v20);
  v13 = (v12 + 24);
  if (v6)
  {
    os_unfair_lock_unlock(v13);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v13);
    v14 = v20[0];
    v15 = MEMORY[0x259C304D0](a1, a2);
    if (a4)
    {
      a4 = MEMORY[0x259C304D0](a3, a4);
    }

    v20[0] = 0;
    v16 = [v14 *a5];
    swift_unknownObjectRelease();

    if (v16)
    {
      v17 = v20[0];
    }

    else
    {
      v18 = v20[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v19 = *MEMORY[0x277D85DE8];
  }
}

uint64_t closure #1 in ComputeOrchestration.EventReporterProvider.eventReporter()@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if ((*(*a1 + 16) & 1) == 0 && ([objc_opt_self() isClassCLocked] & 1) == 0)
  {
    v4 = type metadata accessor for ComputeOrchestration.ViewRunnerProvider();
    v5 = swift_allocObject();
    *(v5 + 16) = [objc_allocWithZone(GDCComputeService) init];
    v6 = type metadata accessor for Configuration();
    v7 = *(v6 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x28223BE20]();
    v10 = &v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18[3] = v4;
    v18[4] = lazy protocol witness table accessor for type ComputeOrchestration.ViewRunner and conformance ComputeOrchestration.ViewRunner(&lazy protocol witness table cache variable for type ComputeOrchestration.ViewRunnerProvider and conformance ComputeOrchestration.ViewRunnerProvider, type metadata accessor for ComputeOrchestration.ViewRunnerProvider);
    v18[0] = v5;
    static ViewOrchestrationSystem.start(viewUpdateRunnerProvider:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v11 = type metadata accessor for ComputeOrchestration.EventReporter();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    v14 = swift_allocObject();
    (*(v7 + 32))(v14 + OBJC_IVAR____TtCC27IntelligencePlatformCompute20ComputeOrchestration13EventReporter_config, v10, v6);
    v15 = *(v3 + 24);
    *(v3 + 24) = v14;
    swift_unknownObjectRelease();
    *(v3 + 16) = 1;
  }

  *a2 = *(v3 + 24);
  return swift_unknownObjectRetain();
}

void sub_254FB6EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_254FB7268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_254FB75DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_254FB78E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_254FB7B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

uint64_t __GDCLog_block_invoke()
{
  GDCLog_log = os_log_create("com.apple.intelligenceplatform.IntelligencePlatformCompute", "default");

  return MEMORY[0x2821F96F8]();
}

uint64_t ComputeOrchestration.ViewRunner.update(groupName:namesAndRequests:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ComputeOrchestration.ViewRunner.update(groupName:namesAndRequests:), 0, 0);
}

uint64_t ComputeOrchestration.ViewRunner.update(groupName:namesAndRequests:)()
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = v0[5];
  v2 = *(v0[6] + 16);
  v3 = MEMORY[0x259C304D0](v0[3], v0[4]);
  type metadata accessor for GDViewUpdateSourceRequest(0, &lazy cache variable for type metadata for GDViewUpdateNameAndRequests, 0x277D1F488);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[2] = 0;
  v5 = [v2 updateGroupWithName:v3 namesAndRequests:isa error:v0 + 2];

  v6 = v0[2];
  if (v5)
  {
    type metadata accessor for GDViewUpdateSourceRequest(0, &lazy cache variable for type metadata for GDViewUpdateNameAndResponses, 0x277D1F490);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v6;

    v9 = v0[1];
    v10 = *MEMORY[0x277D85DE8];

    return v9(v7);
  }

  else
  {
    v12 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v13 = v0[1];
    v14 = *MEMORY[0x277D85DE8];

    return v13();
  }
}

uint64_t ComputeOrchestration.ViewRunner.fullRebuild(viewName:requests:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ComputeOrchestration.ViewRunner.fullRebuild(viewName:requests:), 0, 0);
}

uint64_t ComputeOrchestration.ViewRunner.clear(viewName:fullRebuild:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *MEMORY[0x277D85DE8];
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 48) = a3;
  *(v4 + 24) = a1;
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ComputeOrchestration.ViewRunner.clear(viewName:fullRebuild:), 0, 0);
}

uint64_t ComputeOrchestration.ViewRunner.clear(viewName:fullRebuild:)()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  v2 = *(*(v0 + 40) + 16);
  v3 = MEMORY[0x259C304D0](*(v0 + 24), *(v0 + 32));
  *(v0 + 16) = 0;
  LODWORD(v2) = [v2 clearViewWithName:v3 fullRebuild:v1 error:v0 + 16];

  v4 = *(v0 + 16);
  if (v2)
  {
    v11 = *(v0 + 8);
    v5 = v4;
    v6 = *MEMORY[0x277D85DE8];
    v7 = v11;
  }

  else
  {
    v8 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v7 = *(v0 + 8);
    v9 = *MEMORY[0x277D85DE8];
  }

  return v7();
}

uint64_t ComputeOrchestration.ViewRunner.truncate(viewName:fullRebuild:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *MEMORY[0x277D85DE8];
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 48) = a3;
  *(v4 + 24) = a1;
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ComputeOrchestration.ViewRunner.truncate(viewName:fullRebuild:), 0, 0);
}

uint64_t ComputeOrchestration.ViewRunner.truncate(viewName:fullRebuild:)()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  v2 = *(*(v0 + 40) + 16);
  v3 = MEMORY[0x259C304D0](*(v0 + 24), *(v0 + 32));
  *(v0 + 16) = 0;
  LODWORD(v2) = [v2 truncateViewWithName:v3 fullRebuild:v1 error:v0 + 16];

  v4 = *(v0 + 16);
  if (v2)
  {
    v11 = *(v0 + 8);
    v5 = v4;
    v6 = *MEMORY[0x277D85DE8];
    v7 = v11;
  }

  else
  {
    v8 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v7 = *(v0 + 8);
    v9 = *MEMORY[0x277D85DE8];
  }

  return v7();
}

uint64_t ComputeOrchestration.ViewRunner.stop()()
{
  v4 = *MEMORY[0x277D85DE8];
  *(v1 + 24) = v0;
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](ComputeOrchestration.ViewRunner.stop(), 0, 0);
}

{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0[3] + 16);
  v0[2] = 0;
  v2 = [v1 stopWithError_];
  v3 = v0[2];
  if (v2)
  {
    v10 = v0[1];
    v4 = v3;
    v5 = *MEMORY[0x277D85DE8];
    v6 = v10;
  }

  else
  {
    v7 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v6 = v0[1];
    v8 = *MEMORY[0x277D85DE8];
  }

  return v6();
}

uint64_t ComputeOrchestration.ViewRunner.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t protocol witness for ViewUpdateGenerationRunner.update(groupName:namesAndRequests:) in conformance ComputeOrchestration.ViewRunner(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for ViewUpdateGenerationRunner.update(groupName:namesAndRequests:) in conformance ComputeOrchestration.ViewRunner;

  return ComputeOrchestration.ViewRunner.update(groupName:namesAndRequests:)(a1, a2, a3);
}

uint64_t protocol witness for ViewUpdateGenerationRunner.clear(viewName:fullRebuild:) in conformance ComputeOrchestration.ViewRunner(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for ViewUpdateGenerationRunner.truncate(viewName:fullRebuild:) in conformance ComputeOrchestration.ViewRunner;

  return ComputeOrchestration.ViewRunner.clear(viewName:fullRebuild:)(a1, a2, a3);
}

uint64_t protocol witness for ViewUpdateGenerationRunner.truncate(viewName:fullRebuild:) in conformance ComputeOrchestration.ViewRunner(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for ViewUpdateGenerationRunner.truncate(viewName:fullRebuild:) in conformance ComputeOrchestration.ViewRunner;

  return ComputeOrchestration.ViewRunner.truncate(viewName:fullRebuild:)(a1, a2, a3);
}

uint64_t protocol witness for ViewUpdateGenerationRunner.stop() in conformance ComputeOrchestration.ViewRunner()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for ViewUpdateGenerationRunner.stop() in conformance ComputeOrchestration.ViewRunner;

  return ComputeOrchestration.ViewRunner.stop()();
}

{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id ComputeOrchestration.ViewRunnerProvider.runner(for:)@<X0>(uint64_t *a1@<X8>)
{
  v6 = *(v1 + 16);
  v3 = type metadata accessor for ComputeOrchestration.ViewRunner();
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  a1[3] = v3;
  a1[4] = lazy protocol witness table accessor for type ComputeOrchestration.ViewRunner and conformance ComputeOrchestration.ViewRunner(&lazy protocol witness table cache variable for type ComputeOrchestration.ViewRunner and conformance ComputeOrchestration.ViewRunner, type metadata accessor for ComputeOrchestration.ViewRunner);
  *a1 = v4;

  return v6;
}

id protocol witness for ViewUpdateGenerationRunnerProvider.runner(for:) in conformance ComputeOrchestration.ViewRunnerProvider@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 16);
  v4 = type metadata accessor for ComputeOrchestration.ViewRunner();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  a1[3] = v4;
  a1[4] = lazy protocol witness table accessor for type ComputeOrchestration.ViewRunner and conformance ComputeOrchestration.ViewRunner(&lazy protocol witness table cache variable for type ComputeOrchestration.ViewRunner and conformance ComputeOrchestration.ViewRunner, type metadata accessor for ComputeOrchestration.ViewRunner);
  *a1 = v5;
  return v3;
}

id ComputeOrchestration.NullEventReporter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ComputeOrchestration.EventReporterProvider.GuardedData.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t ComputeOrchestration.EventReporter.deinit()
{
  v1 = OBJC_IVAR____TtCC27IntelligencePlatformCompute20ComputeOrchestration13EventReporter_config;
  v2 = type metadata accessor for Configuration();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ComputeOrchestration.EventReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC27IntelligencePlatformCompute20ComputeOrchestration13EventReporter_config;
  v2 = type metadata accessor for Configuration();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t @objc ComputeOrchestration.NullEventReporter.streamUpdated(streamIdentifier:remoteName:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = a1;
  specialized ComputeOrchestration.NullEventReporter.streamUpdated(streamIdentifier:remoteName:)(v9, v11, a6);

  return 1;
}

uint64_t ComputeOrchestration.WrappedEventReporter.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

id ComputeOrchestration.NullEventReporter.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id @objc ComputeOrchestration.NullEventReporter.init()(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ComputeOrchestration.NullEventReporter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t specialized ComputeOrchestration.NullEventReporter.streamUpdated(streamIdentifier:remoteName:)(uint64_t a1, unint64_t a2, const char *a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20[0] = v7;
    v15 = a1;
    v16 = v14;
    v17 = swift_slowAlloc();
    v20[1] = v3;
    v18 = v17;
    v21 = v17;
    *v16 = 136315138;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, a2, &v21);
    _os_log_impl(&dword_254FB4000, v12, v13, a3, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x259C30A10](v18, -1, -1);
    MEMORY[0x259C30A10](v16, -1, -1);

    return (*(v8 + 8))(v11, v20[0]);
  }

  else
  {

    return (*(v8 + 8))(v11, v7);
  }
}

id specialized static ComputeOrchestration.start()()
{
  if (MEMORY[0x277D1F4C8])
  {
    if ([objc_opt_self() isClassCLocked])
    {
      type metadata accessor for ComputeOrchestration.WrappedEventReporter();
      v0 = swift_allocObject();
      type metadata accessor for ComputeOrchestration.EventReporterProvider();
      v1 = swift_allocObject();
      type metadata accessor for ComputeOrchestration.EventReporterProvider.GuardedData();
      v2 = swift_allocObject();
      *(v2 + 16) = 0;
      *(v2 + 24) = [objc_allocWithZone(type metadata accessor for ComputeOrchestration.NullEventReporter()) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy27IntelligencePlatformCompute0E13OrchestrationC21EventReporterProvider33_3322AEB0779B497A03F019FA9A09F7BFLLC11GuardedDataCSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy27IntelligencePlatformCompute0E13OrchestrationC21EventReporterProvider33_3322AEB0779B497A03F019FA9A09F7BFLLC11GuardedDataCSo16os_unfair_lock_sVGMR);
      v3 = swift_allocObject();
      result = v0;
      *(v3 + 24) = 0;
      *(v3 + 16) = v2;
      *(v1 + 16) = v3;
      *(v0 + 16) = v1;
    }

    else
    {
      v13 = type metadata accessor for ComputeOrchestration.ViewRunnerProvider();
      v14 = swift_allocObject();
      *(v14 + 16) = [objc_allocWithZone(GDCComputeService) init];
      v15 = type metadata accessor for Configuration();
      v16 = *(v15 - 8);
      v17 = *(v16 + 64);
      MEMORY[0x28223BE20]();
      v19 = &v25[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      v25[3] = v13;
      v25[4] = lazy protocol witness table accessor for type ComputeOrchestration.ViewRunner and conformance ComputeOrchestration.ViewRunner(&lazy protocol witness table cache variable for type ComputeOrchestration.ViewRunnerProvider and conformance ComputeOrchestration.ViewRunnerProvider, type metadata accessor for ComputeOrchestration.ViewRunnerProvider);
      v25[0] = v14;
      static ViewOrchestrationSystem.start(viewUpdateRunnerProvider:)();
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      v20 = type metadata accessor for ComputeOrchestration.EventReporter();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      v23 = swift_allocObject();
      (*(v16 + 32))(v23 + OBJC_IVAR____TtCC27IntelligencePlatformCompute20ComputeOrchestration13EventReporter_config, v19, v15);
      return v23;
    }
  }

  else
  {
    v5 = type metadata accessor for Logger();
    v6 = *(v5 - 8);
    v7 = *(v6 + 64);
    MEMORY[0x28223BE20]();
    v9 = &v25[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    Logger.init(subsystem:category:)();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_254FB4000, v10, v11, "Failed to locate the IntelligencePlatformCore framework. The view system will not start up. This is unexpected on non-factory images", v12, 2u);
      MEMORY[0x259C30A10](v12, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    return [objc_allocWithZone(type metadata accessor for ComputeOrchestration.NullEventReporter()) init];
  }

  return result;
}

uint64_t type metadata accessor for ComputeOrchestration.EventReporter()
{
  result = type metadata singleton initialization cache for ComputeOrchestration.EventReporter;
  if (!type metadata singleton initialization cache for ComputeOrchestration.EventReporter)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ComputeOrchestration.EventReporter()
{
  result = type metadata accessor for Configuration();
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

uint64_t lazy protocol witness table accessor for type ComputeOrchestration.ViewRunner and conformance ComputeOrchestration.ViewRunner(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!lazy cache variable for type metadata for os_unfair_lock_s)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for os_unfair_lock_s);
    }
  }
}