@interface ITIdleTimerState
+ (BOOL)isIdleTimerServiceAvailable;
+ (id)sharedInstance;
- (id)_init;
- (id)_initWithModel:(id)a3;
- (id)newAssertionToDisableIdleTimerForReason:(id)a3 error:(id *)a4;
- (id)newIdleTimerAssertionWithConfiguration:(id)a3 forReason:(id)a4 error:(id *)a5;
@end

@implementation ITIdleTimerState

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ITIdleTimerState sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __34__ITIdleTimerState_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = [[ITIdleTimerState alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v3 = objc_alloc_init(ITIdleTimerStateModel);
  v4 = [(ITIdleTimerState *)self _initWithModel:v3];

  return v4;
}

- (id)_initWithModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ITIdleTimerState;
  v6 = [(ITIdleTimerState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_accessLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_model, a3);
  }

  return v7;
}

+ (BOOL)isIdleTimerServiceAvailable
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ITIdleTimerState_isIdleTimerServiceAvailable__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (isIdleTimerServiceAvailable_onceToken != -1)
  {
    dispatch_once(&isIdleTimerServiceAvailable_onceToken, block);
  }

  return isIdleTimerServiceAvailable_isIdleTimerServiceAvailable;
}

void __47__ITIdleTimerState_isIdleTimerServiceAvailable__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sharedInstance];
  isIdleTimerServiceAvailable_isIdleTimerServiceAvailable = [v1 isIdleTimerServiceAvailable];
}

- (id)newAssertionToDisableIdleTimerForReason:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    [ITIdleTimerState newAssertionToDisableIdleTimerForReason:error:];
  }

  v7 = +[ITIdleTimerConfiguration configurationToDisableIdleTimer];
  v8 = [(ITIdleTimerState *)self newIdleTimerAssertionWithConfiguration:v7 forReason:v6 error:a4];

  return v8;
}

- (id)newIdleTimerAssertionWithConfiguration:(id)a3 forReason:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    [ITIdleTimerState newIdleTimerAssertionWithConfiguration:forReason:error:];
  }

  if ([objc_opt_class() isIdleTimerServiceAvailable])
  {
    model = self->_model;
    v11 = [v8 _copyWithNewIdentifier];
    v12 = [(ITIdleTimerStateModel *)model newIdleTimerAssertionWithConfiguration:v11 forReason:v9 error:a5];
  }

  else
  {
    v13 = ITLogIdleTimer();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ITIdleTimerState newAssertionToDisableIdleTimerOnBehalfOfSceneWithPID:v13 forReason:? error:?];
    }

    v12 = 0;
    if (a5)
    {
      *a5 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ITIdleTimerConfigurationErrorDomain" code:1 userInfo:0];
    }
  }

  return v12;
}

- (void)newAssertionToDisableIdleTimerOnBehalfOfSceneWithPID:forReason:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"pid" object:? file:? lineNumber:? description:?];
}

- (void)newAssertionToDisableIdleTimerOnBehalfOfSceneWithPID:forReason:error:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)newAssertionToDisableIdleTimerForReason:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)newIdleTimerAssertionWithConfiguration:forReason:error:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

@end