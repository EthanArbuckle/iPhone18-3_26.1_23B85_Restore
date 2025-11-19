uint64_t DeepThoughtPlugin.perform(_:)(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for LighthouseRuntimeProcessorResult();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SiriPenetrationRateMetrics();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = SiriPenetrationRateMetrics.init(bookmarkLocation:)();
  if (!v2)
  {
    v22[1] = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18lighthouse_runtime26LighthouseRuntimeProcessorCy11DeepThought26SiriPenetrationRateMetricsCGMd, &_s18lighthouse_runtime26LighthouseRuntimeProcessorCy11DeepThought26SiriPenetrationRateMetricsCGMR);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v18 = a1;
    v19 = LighthouseRuntimeProcessor.init(task:plugin:enforceDiagnosticCheck:)();
    if (v19)
    {
      v20 = *(v3 + OBJC_IVAR___DeepThoughtPlugin_processor);
      *(v3 + OBJC_IVAR___DeepThoughtPlugin_processor) = v19;

      LighthouseRuntimeProcessor.process()();
      v13 = LighthouseRuntimeProcessorResult.mlrTaskResult.getter();
    }

    else
    {
      (*(v6 + 104))(v9, enum case for LighthouseRuntimeProcessorResult.notAllowedToProcess(_:), v5);
      v13 = LighthouseRuntimeProcessorResult.mlrTaskResult.getter();
    }

    (*(v6 + 8))(v9, v5);
  }

  return v13;
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

Swift::Void __swiftcall DeepThoughtPlugin.stop()()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "stop was called", v4, 2u);
  }

  if (*(v1 + OBJC_IVAR___DeepThoughtPlugin_processor))
  {
    v5 = *(v1 + OBJC_IVAR___DeepThoughtPlugin_processor);

    LighthouseRuntimeProcessor.stop()();
  }
}

id DeepThoughtPlugin.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeepThoughtPlugin.init()()
{
  Logger.init(subsystem:category:)();
  *&v0[OBJC_IVAR___DeepThoughtPlugin_processor] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeepThoughtPlugin();
  return objc_msgSendSuper2(&v2, "init");
}

id DeepThoughtPlugin.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeepThoughtPlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DeepThoughtPlugin()
{
  result = type metadata singleton initialization cache for DeepThoughtPlugin;
  if (!type metadata singleton initialization cache for DeepThoughtPlugin)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DeepThoughtPlugin()
{
  result = type metadata accessor for Logger();
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