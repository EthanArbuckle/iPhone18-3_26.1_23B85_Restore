@interface MROptimisticState
- (MROptimisticState)initWithInitialState:(id)state expectedState:(id)expectedState timeout:(double)timeout queue:(id)queue timeoutHandler:(id)handler;
- (void)dealloc;
@end

@implementation MROptimisticState

- (MROptimisticState)initWithInitialState:(id)state expectedState:(id)expectedState timeout:(double)timeout queue:(id)queue timeoutHandler:(id)handler
{
  stateCopy = state;
  expectedStateCopy = expectedState;
  queueCopy = queue;
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = MROptimisticState;
  v18 = [(MROptimisticState *)&v27 init];
  if (v18)
  {
    if (!handlerCopy)
    {
      [MROptimisticState initWithInitialState:a2 expectedState:v18 timeout:? queue:? timeoutHandler:?];
    }

    objc_storeStrong(&v18->_initialState, state);
    objc_storeStrong(&v18->_expectedState, expectedState);
    objc_initWeak(&location, v18);
    v19 = MEMORY[0x1E69B14D8];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __85__MROptimisticState_initWithInitialState_expectedState_timeout_queue_timeoutHandler___block_invoke;
    v23[3] = &unk_1E769C898;
    objc_copyWeak(&v25, &location);
    v24 = handlerCopy;
    v20 = [v19 timerWithInterval:0 repeats:queueCopy queue:v23 block:timeout];
    timer = v18->_timer;
    v18->_timer = v20;

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v18;
}

void __85__MROptimisticState_initWithInitialState_expectedState_timeout_queue_timeoutHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  timer = [(MROptimisticState *)self timer];
  [timer invalidate];

  v4 = _MRLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[MROptimisticState]<%p> dealloc", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = MROptimisticState;
  [(MROptimisticState *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithInitialState:(uint64_t)a1 expectedState:(uint64_t)a2 timeout:queue:timeoutHandler:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MROptimisticState.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
}

@end