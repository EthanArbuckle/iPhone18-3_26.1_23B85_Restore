@interface ULTimerFactory
+ (id)_instance;
+ (id)timerOnPrimaryQueueWithInterval:(id)a3 repeats:(id)a4 block:(id)a5;
+ (void)setPrimaryQueue:(id)a3;
@end

@implementation ULTimerFactory

+ (id)_instance
{
  if (_instance_onceToken != -1)
  {
    +[ULTimerFactory _instance];
  }

  v3 = _instance_instance;

  return v3;
}

void __27__ULTimerFactory__instance__block_invoke()
{
  v0 = objc_alloc_init(ULTimerFactory);
  v1 = _instance_instance;
  _instance_instance = v0;
}

+ (id)timerOnPrimaryQueueWithInterval:(id)a3 repeats:(id)a4 block:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[ULTimerFactory _instance];
  v11 = [v10 primaryQueue];

  if ([MEMORY[0x277D28868] isRunningInXCTestEnvironment])
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    if (v11)
    {
      goto LABEL_8;
    }

    +[ULTimerFactory timerOnPrimaryQueueWithInterval:repeats:block:];
  }

  v11 = MEMORY[0x277D85CD0];
  v13 = MEMORY[0x277D85CD0];
LABEL_8:
  v14 = [ULTimer alloc];
  [v7 doubleValue];
  v16 = -[ULTimer initWithInterval:repeats:queue:block:](v14, "initWithInterval:repeats:queue:block:", [v8 BOOLValue], v11, v9, v15);

  return v16;
}

+ (void)setPrimaryQueue:(id)a3
{
  v8 = a3;
  v3 = +[ULTimerFactory _instance];
  v4 = [v3 primaryQueue];

  if (([MEMORY[0x277D28868] isRunningInXCTestEnvironment] & 1) != 0 || (v4 ? (v5 = v4 == v8) : (v5 = 1), v5))
  {
    v6 = +[ULTimerFactory _instance];
    [v6 setPrimaryQueue:v8];
  }

  else
  {
    v7 = +[ULTimerFactory(queueSetter) setPrimaryQueue:];
    ___CLLogObjectForCategory_MicroLocation_Default_block_invoke_17(v7);
  }
}

+ (void)timerOnPrimaryQueueWithInterval:repeats:block:.cold.1()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v1, v2, "{msg%{public}.0s:#ULTimerFactory, Trying to create a timer on global queue without queue being set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v3, v4, v5, v6, v20, v21, v22, v23, v24);
  }

  v7 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_signpost_enabled(v7))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v8, v9, v10, "#ULTimerFactory, Trying to create a timer on global queue without queue being set", "{msg%{public}.0s:#ULTimerFactory, Trying to create a timer on global queue without queue being set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v11, v12, v20, v21, v22, v23, v24);
  }

  v13 = _CLLogObjectForCategory_MicroLocation_Default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v14, v15, "{msg%{public}.0s:#ULTimerFactory, Trying to create a timer on global queue without queue being set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  abort_report_np();
  _CLLogObjectForCategory_MicroLocation_Default_cold_1();
}

@end