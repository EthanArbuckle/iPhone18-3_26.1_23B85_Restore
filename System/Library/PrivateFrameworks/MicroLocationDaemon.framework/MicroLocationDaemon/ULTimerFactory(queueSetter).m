@interface ULTimerFactory(queueSetter)
@end

@implementation ULTimerFactory(queueSetter)

+ (uint64_t)setPrimaryQueue:()queueSetter .cold.1()
{
  v27 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v1, v2, "{msg%{public}.0s:#ULTimerFactory, Trying to set a global queue while a different global queue is already set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v22, v23, v24, v25, v26);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v8, v9, v10, "#ULTimerFactory, Trying to set a global queue while a different global queue is already set", "{msg%{public}.0s:#ULTimerFactory, Trying to set a global queue while a different global queue is already set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v22, v23, v24, v25, v26);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v14, v15, "{msg%{public}.0s:#ULTimerFactory, Trying to set a global queue while a different global queue is already set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v22, v23, v24, v25, v26);
  }

  v20 = abort_report_np();
  return __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_cold_1(v20);
}

@end