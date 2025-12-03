@interface FBWaitForProcessDeathTransaction
- (FBWaitForProcessDeathTransaction)initWithProcess:(id)process timeout:(double)timeout;
- (id)_customizedDescriptionProperties;
- (void)_begin;
- (void)_didComplete;
- (void)processManager:(id)manager didRemoveProcess:(id)process;
@end

@implementation FBWaitForProcessDeathTransaction

- (FBWaitForProcessDeathTransaction)initWithProcess:(id)process timeout:(double)timeout
{
  processCopy = process;
  v11.receiver = self;
  v11.super_class = FBWaitForProcessDeathTransaction;
  v8 = [(FBTransaction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_process, process);
    v9->_timeout = timeout;
  }

  return v9;
}

- (void)_begin
{
  if (self->_process)
  {
    v3 = +[FBProcessManager sharedInstance];
    [v3 addObserver:self];
    v4 = [v3 processForPID:{-[FBProcess pid](self->_process, "pid")}];
    process = self->_process;

    if (v4 == process)
    {
      [(FBWaitForProcessDeathTransaction *)self addMilestone:@"FBProcessDidExitMilestone"];
      if (self->_timeout > 0.0)
      {
        v6 = [objc_alloc(MEMORY[0x1E698E5E8]) initWithIdentifier:@"FBWaitForProcessDeathTransaction-watchdog"];
        timer = self->_timer;
        self->_timer = v6;

        v8 = self->_timer;
        timeout = self->_timeout;
        queue = [(FBWaitForProcessDeathTransaction *)self queue];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __42__FBWaitForProcessDeathTransaction__begin__block_invoke;
        v12[3] = &unk_1E783CC48;
        v12[4] = self;
        [(BSAbsoluteMachTimer *)v8 scheduleWithFireInterval:queue leewayInterval:v12 queue:timeout handler:1.0];
      }

      v11.receiver = self;
      v11.super_class = FBWaitForProcessDeathTransaction;
      [(FBWaitForProcessDeathTransaction *)&v11 _begin];
    }

    else
    {
      [v3 removeObserver:self];
    }
  }
}

- (void)_didComplete
{
  v3 = +[FBProcessManager sharedInstance];
  [v3 removeObserver:self];

  [(BSAbsoluteMachTimer *)self->_timer invalidate];
  v4.receiver = self;
  v4.super_class = FBWaitForProcessDeathTransaction;
  [(FBWaitForProcessDeathTransaction *)&v4 _didComplete];
}

- (id)_customizedDescriptionProperties
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  if (self->_process)
  {
    process = self->_process;
  }

  else
  {
    process = @"(none)";
  }

  [dictionary setObject:process forKey:@"Process"];

  return v4;
}

- (void)processManager:(id)manager didRemoveProcess:(id)process
{
  processCopy = process;
  queue = [(FBWaitForProcessDeathTransaction *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__FBWaitForProcessDeathTransaction_processManager_didRemoveProcess___block_invoke;
  v8[3] = &unk_1E783B240;
  v8[4] = self;
  v9 = processCopy;
  v7 = processCopy;
  dispatch_async(queue, v8);
}

void __68__FBWaitForProcessDeathTransaction_processManager_didRemoveProcess___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__FBWaitForProcessDeathTransaction_processManager_didRemoveProcess___block_invoke_2;
  v5[3] = &unk_1E783CC70;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 evaluateMilestone:@"FBProcessDidExitMilestone" withEvaluator:v5];
}

@end