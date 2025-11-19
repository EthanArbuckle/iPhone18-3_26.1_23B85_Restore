@interface IMEventListener
+ (id)_mutableListenerDictionary;
+ (id)allListeners;
+ (id)eventListener;
- (double)elapsedWaitingTime;
- (double)timeLastEventReceived;
- (double)timeListeningStarted;
- (double)timeListeningStopped;
- (double)timeout;
- (id)completionBlock;
- (id)createResult:(BOOL)a3 userInfo:(id)a4 error:(id)a5;
- (id)target;
- (void)_addToListeners;
- (void)_didReceiveEvent:(BOOL)a3 userInfo:(id)a4 error:(id)a5;
- (void)_dispatchStartEventBlock:(id)a3;
- (void)_handleTimeout:(id)a3;
- (void)_invokeCompletion:(BOOL)a3 userInfo:(id)a4 error:(id)a5;
- (void)_removeFromListeners;
- (void)_reset;
- (void)_startListening;
- (void)_startTimeoutTimerIfNeeded;
- (void)_stopListening;
- (void)reset;
- (void)setCompletionBlock:(id)a3;
- (void)setTimeout:(double)a3;
- (void)startListening;
- (void)startListeningForEventTarget:(id)a3 sendStartingEvent:(id)a4 completion:(id)a5;
- (void)stopListening;
- (void)waitForCompletion;
@end

@implementation IMEventListener

+ (id)_mutableListenerDictionary
{
  if (qword_1EB3095C0 != -1)
  {
    sub_1A88C00C8();
  }

  v3 = qword_1EB3095B8;

  return v3;
}

+ (id)allListeners
{
  v2 = +[IMEventListener _mutableListenerDictionary];
  v3 = [v2 allValues];

  return v3;
}

+ (id)eventListener
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)_removeFromListeners
{
  if (self->_timeListeningStarted != 0.0)
  {
    v5 = +[IMEventListener _mutableListenerDictionary];
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timeListeningStarted];
    [v5 removeObjectForKey:v4];
  }
}

- (void)_addToListeners
{
  if (self->_timeListeningStarted != 0.0)
  {
    v5 = +[IMEventListener _mutableListenerDictionary];
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timeListeningStarted];
    [v5 setObject:self forKey:v4];
  }
}

- (id)createResult:(BOOL)a3 userInfo:(id)a4 error:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = a4;
  v9 = [[IMEventListenerResponse alloc] initWithSuccess:v6 userInfo:v8 error:v7];

  return v9;
}

- (void)_invokeCompletion:(BOOL)a3 userInfo:(id)a4 error:(id)a5
{
  v6 = a3;
  v16 = a4;
  v8 = a5;
  [(IMEventListener *)self _cancelTimeoutTimer];
  WeakRetained = objc_loadWeakRetained(&self->_target);
  if (WeakRetained)
  {
    v10 = [(IMEventListener *)self willInvokeCompletion];
    v11 = v10;
    if (v10)
    {
      (*(v10 + 16))(v10, WeakRetained, self);
    }

    v12 = [(IMEventListener *)self completionBlock];
    [(IMEventListener *)self _stopListening];
    if (v12)
    {
      v13 = [(IMEventListener *)self createResult:v6 userInfo:v16 error:v8];
      (v12)[2](v12, WeakRetained, self, v13);
    }

    v14 = [(IMEventListener *)self didInvokeCompletion];
    v15 = v14;
    if (v14)
    {
      (*(v14 + 16))(v14, WeakRetained, self);
    }
  }
}

- (void)_handleTimeout:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A578];
  v10[0] = @"Event timed out";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8 = [v6 errorWithDomain:@"IMEventListenerErrorDomain" code:1 userInfo:v7];
  [(IMEventListener *)v5 _invokeCompletion:0 userInfo:0 error:v8];

  objc_sync_exit(v5);
}

- (void)_startListening
{
  [(IMEventListener *)self _stopListening];
  self->_eventCount = 0;
  v3 = dispatch_semaphore_create(0);
  semaphore = self->_semaphore;
  self->_semaphore = v3;

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  self->_timeListeningStarted = v5;
  self->_timeListeningStopped = 0.0;
  self->_timeLastEventReceived = 0.0;
  [(IMEventListener *)self willStartListening];
  [(IMEventListener *)self _addToListeners];

  [(IMEventListener *)self _startTimeoutTimerIfNeeded];
}

- (void)_stopListening
{
  if (self->_timeListeningStarted != 0.0)
  {
    [(IMEventListener *)self _removeFromListeners];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    self->_timeListeningStopped = v3;
  }

  [(IMEventListener *)self willStopListening];
  semaphore = self->_semaphore;
  if (semaphore)
  {
    dispatch_semaphore_signal(semaphore);
    v5 = self->_semaphore;
    self->_semaphore = 0;
  }

  [(IMEventListener *)self _cancelTimeoutTimer];
}

- (void)_reset
{
  [(IMEventListener *)self _stopListening];
  self->_timeout = 0.0;
  completionBlock = self->_completionBlock;
  self->_completionBlock = 0;

  didInvokeCompletion = self->_didInvokeCompletion;
  self->_didInvokeCompletion = 0;

  willInvokeCompletion = self->_willInvokeCompletion;
  self->_willInvokeCompletion = 0;

  self->_timeListeningStarted = 0.0;
  self->_timeListeningStopped = 0.0;
  self->_timeLastEventReceived = 0.0;
  objc_storeWeak(&self->_target, 0);
  self->_eventCount = 0;

  MEMORY[0x1EEE66B58](self, sel_willReset);
}

- (void)_startTimeoutTimerIfNeeded
{
  if (self->_timeout > 0.0)
  {
    objc_initWeak(&location, self);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v4 = v3;
    self->_timerStart = v3;
    v5 = dispatch_time(0, (self->_timeout * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A8613344;
    block[3] = &unk_1E78260A8;
    objc_copyWeak(v7, &location);
    v7[1] = *&v4;
    dispatch_after(v5, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(v7);
    objc_destroyWeak(&location);
  }
}

- (void)_dispatchStartEventBlock:(id)a3
{
  if (a3)
  {
    dispatch_async(MEMORY[0x1E69E96A0], a3);
  }
}

- (void)waitForCompletion
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if ([(IMEventListener *)self isListening])
    {
      do
      {
        v3 = [MEMORY[0x1E695DFD0] currentRunLoop];
        v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.1];
        [v3 runUntilDate:v4];
      }

      while ([(IMEventListener *)self isListening]);
    }
  }

  else
  {
    semaphore = self->_semaphore;

    dispatch_semaphore_wait(semaphore, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)startListeningForEventTarget:(id)a3 sendStartingEvent:(id)a4 completion:(id)a5
{
  obj = a3;
  v8 = a4;
  v9 = a5;
  v10 = self;
  objc_sync_enter(v10);
  [(IMEventListener *)v10 _stopListening];
  objc_storeWeak(&v10->_target, obj);
  v11 = [v9 copy];
  completionBlock = v10->_completionBlock;
  v10->_completionBlock = v11;

  [(IMEventListener *)v10 _startListening];
  if (v8)
  {
    v8[2](v8, obj, v10);
  }

  objc_sync_exit(v10);
}

- (void)stopListening
{
  obj = self;
  objc_sync_enter(obj);
  [(IMEventListener *)obj _stopListening];
  objc_sync_exit(obj);
}

- (void)startListening
{
  obj = self;
  objc_sync_enter(obj);
  [(IMEventListener *)obj _startListening];
  objc_sync_exit(obj);
}

- (double)timeListeningStarted
{
  v2 = self;
  objc_sync_enter(v2);
  timeListeningStarted = v2->_timeListeningStarted;
  objc_sync_exit(v2);

  return timeListeningStarted;
}

- (double)timeListeningStopped
{
  v2 = self;
  objc_sync_enter(v2);
  timeListeningStopped = v2->_timeListeningStopped;
  objc_sync_exit(v2);

  return timeListeningStopped;
}

- (double)timeLastEventReceived
{
  v2 = self;
  objc_sync_enter(v2);
  timeLastEventReceived = v2->_timeLastEventReceived;
  objc_sync_exit(v2);

  return timeLastEventReceived;
}

- (double)elapsedWaitingTime
{
  v2 = self;
  objc_sync_enter(v2);
  timeListeningStarted = v2->_timeListeningStarted;
  v4 = 0.0;
  if (timeListeningStarted != 0.0)
  {
    timeListeningStopped = v2->_timeListeningStopped;
    if (timeListeningStopped == 0.0)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      timeListeningStarted = v2->_timeListeningStarted;
    }

    v4 = timeListeningStopped - timeListeningStarted;
  }

  objc_sync_exit(v2);

  return v4;
}

- (void)setCompletionBlock:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(IMEventListener *)v4 _stopListening];
  v5 = [v7 copy];
  completionBlock = v4->_completionBlock;
  v4->_completionBlock = v5;

  objc_sync_exit(v4);
}

- (id)completionBlock
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = _Block_copy(v2->_completionBlock);
  objc_sync_exit(v2);

  return v3;
}

- (void)reset
{
  obj = self;
  objc_sync_enter(obj);
  [(IMEventListener *)obj _reset];
  objc_sync_exit(obj);
}

- (void)setTimeout:(double)a3
{
  obj = self;
  objc_sync_enter(obj);
  [(IMEventListener *)obj _cancelTimeoutTimer];
  obj->_timeout = a3;
  [(IMEventListener *)obj _startTimeoutTimerIfNeeded];
  objc_sync_exit(obj);
}

- (double)timeout
{
  v2 = self;
  objc_sync_enter(v2);
  timeout = v2->_timeout;
  objc_sync_exit(v2);

  return timeout;
}

- (void)_didReceiveEvent:(BOOL)a3 userInfo:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = self;
  objc_sync_enter(v9);
  ++v9->_eventCount;
  if (v9->_timeLastEventReceived == 0.0)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v9->_timeLastEventReceived = v10;
    [(IMEventListener *)v9 _cancelTimeoutTimer];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1A8613ADC;
    v11[3] = &unk_1E78260F0;
    v11[4] = v9;
    v12 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }

  objc_sync_exit(v9);
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end