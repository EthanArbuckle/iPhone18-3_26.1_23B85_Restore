@interface BWCoreMotionSuppressionStateMonitor
- (BWCoreMotionSuppressionStateMonitor)initWithSuppressionStateChangeHandler:(id)handler;
- (void)_doStop;
- (void)dealloc;
- (void)start;
@end

@implementation BWCoreMotionSuppressionStateMonitor

- (BWCoreMotionSuppressionStateMonitor)initWithSuppressionStateChangeHandler:(id)handler
{
  v9.receiver = self;
  v9.super_class = BWCoreMotionSuppressionStateMonitor;
  v4 = [(BWCoreMotionSuppressionStateMonitor *)&v9 init];
  if (v4)
  {
    if ([MEMORY[0x1E69634F8] isAvailable])
    {
      if ([MEMORY[0x1E69634F0] instancesRespondToSelector:sel_facedownState])
      {
        v5 = 24;
      }

      else
      {
        v5 = 8;
      }

      if ([MEMORY[0x1E69634F8] isSourceAvailable:v5])
      {
        v6 = [objc_alloc(MEMORY[0x1E69634F8]) initWithClientType:5];
        v4->_suppressionManager = v6;
        if (v6)
        {
          v4->_suppressionState = 0;
          v7 = objc_alloc_init(MEMORY[0x1E696ADC8]);
          v4->_eventQueue = v7;
          [(NSOperationQueue *)v7 setMaxConcurrentOperationCount:1];
          [(NSOperationQueue *)v4->_eventQueue setName:@"CoreMotionSuppressionStateMonitor"];
          v4->_handler = [handler copy];
          return v4;
        }

        [BWCoreMotionSuppressionStateMonitor initWithSuppressionStateChangeHandler:];
      }

      else
      {
        [BWCoreMotionSuppressionStateMonitor initWithSuppressionStateChangeHandler:];
      }
    }

    else
    {
      [BWCoreMotionSuppressionStateMonitor initWithSuppressionStateChangeHandler:];
    }

    return 0;
  }

  return v4;
}

- (void)start
{
  os_unfair_lock_lock(&self->_monitoringStateLock);
  if ([MEMORY[0x1E69634F0] instancesRespondToSelector:sel_facedownState])
  {
    v3 = 24;
  }

  else
  {
    v3 = 8;
  }

  suppressionManager = self->_suppressionManager;
  eventQueue = self->_eventQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__BWCoreMotionSuppressionStateMonitor_start__block_invoke;
  v6[3] = &unk_1E79996E0;
  v6[4] = self;
  [(CMSuppressionManager *)suppressionManager startSuppressionUpdatesToQueue:eventQueue withOptions:v3 withHandler:v6];
  self->_isMonitoring = 1;
  os_unfair_lock_unlock(&self->_monitoringStateLock);
}

uint64_t __44__BWCoreMotionSuppressionStateMonitor_start__block_invoke(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *(result + 32);
  if (*(v3 + 44) == 1 && a2 != 0 && a3 == 0)
  {
    v7 = result;
    v8 = *(v3 + 16);
    [a2 timestamp];
    v10 = v9;
    v11 = [a2 type];
    if (v11 < 3)
    {
      v8 = v11;
    }

    v12 = *(*(v7 + 32) + 20);
    result = [MEMORY[0x1E69634F0] instancesRespondToSelector:sel_facedownState];
    if (result)
    {
      result = [a2 facedownState];
      if ((result - 1) <= 2)
      {
        v12 = result;
      }

      else
      {
        v12 = 0;
      }
    }

    v14 = *(v7 + 32);
    if (v8 != *(v14 + 16) || v12 != *(v14 + 20))
    {
      *(v14 + 16) = v8;
      *(*(v7 + 32) + 20) = v12;
      result = *(*(v7 + 32) + 32);
      if (result)
      {
        v15 = *(result + 16);
        v13.n128_u64[0] = v10;

        return v15(v13);
      }
    }
  }

  return result;
}

- (void)_doStop
{
  if (self)
  {
    os_unfair_lock_lock((self + 40));
    if (*(self + 44) == 1)
    {
      *(self + 44) = 0;
      [*(self + 8) stopSuppressionUpdates];
      [*(self + 24) cancelAllOperations];
      [*(self + 24) waitUntilAllOperationsAreFinished];
    }

    os_unfair_lock_unlock((self + 40));
  }
}

- (void)dealloc
{
  [(BWCoreMotionSuppressionStateMonitor *)self _doStop];

  v3.receiver = self;
  v3.super_class = BWCoreMotionSuppressionStateMonitor;
  [(BWCoreMotionSuppressionStateMonitor *)&v3 dealloc];
}

- (uint64_t)initWithSuppressionStateChangeHandler:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithSuppressionStateChangeHandler:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithSuppressionStateChangeHandler:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end