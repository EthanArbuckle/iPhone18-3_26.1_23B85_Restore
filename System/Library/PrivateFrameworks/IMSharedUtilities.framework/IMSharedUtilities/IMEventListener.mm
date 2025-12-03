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
- (id)createResult:(BOOL)result userInfo:(id)info error:(id)error;
- (id)target;
- (void)_addToListeners;
- (void)_didReceiveEvent:(BOOL)event userInfo:(id)info error:(id)error;
- (void)_dispatchStartEventBlock:(id)block;
- (void)_handleTimeout:(id)timeout;
- (void)_invokeCompletion:(BOOL)completion userInfo:(id)info error:(id)error;
- (void)_removeFromListeners;
- (void)_reset;
- (void)_startListening;
- (void)_startTimeoutTimerIfNeeded;
- (void)_stopListening;
- (void)reset;
- (void)setCompletionBlock:(id)block;
- (void)setTimeout:(double)timeout;
- (void)startListening;
- (void)startListeningForEventTarget:(id)target sendStartingEvent:(id)event completion:(id)completion;
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
  allValues = [v2 allValues];

  return allValues;
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

- (id)createResult:(BOOL)result userInfo:(id)info error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  infoCopy = info;
  v9 = [[IMEventListenerResponse alloc] initWithSuccess:resultCopy userInfo:infoCopy error:errorCopy];

  return v9;
}

- (void)_invokeCompletion:(BOOL)completion userInfo:(id)info error:(id)error
{
  completionCopy = completion;
  infoCopy = info;
  errorCopy = error;
  [(IMEventListener *)self _cancelTimeoutTimer];
  WeakRetained = objc_loadWeakRetained(&self->_target);
  if (WeakRetained)
  {
    willInvokeCompletion = [(IMEventListener *)self willInvokeCompletion];
    v11 = willInvokeCompletion;
    if (willInvokeCompletion)
    {
      (*(willInvokeCompletion + 16))(willInvokeCompletion, WeakRetained, self);
    }

    completionBlock = [(IMEventListener *)self completionBlock];
    [(IMEventListener *)self _stopListening];
    if (completionBlock)
    {
      v13 = [(IMEventListener *)self createResult:completionCopy userInfo:infoCopy error:errorCopy];
      (completionBlock)[2](completionBlock, WeakRetained, self, v13);
    }

    didInvokeCompletion = [(IMEventListener *)self didInvokeCompletion];
    v15 = didInvokeCompletion;
    if (didInvokeCompletion)
    {
      (*(didInvokeCompletion + 16))(didInvokeCompletion, WeakRetained, self);
    }
  }
}

- (void)_handleTimeout:(id)timeout
{
  v10[1] = *MEMORY[0x1E69E9840];
  timeoutCopy = timeout;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A578];
  v10[0] = @"Event timed out";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8 = [v6 errorWithDomain:@"IMEventListenerErrorDomain" code:1 userInfo:v7];
  [(IMEventListener *)selfCopy _invokeCompletion:0 userInfo:0 error:v8];

  objc_sync_exit(selfCopy);
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

- (void)_dispatchStartEventBlock:(id)block
{
  if (block)
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
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
        currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
        v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.1];
        [currentRunLoop runUntilDate:v4];
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

- (void)startListeningForEventTarget:(id)target sendStartingEvent:(id)event completion:(id)completion
{
  obj = target;
  eventCopy = event;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(IMEventListener *)selfCopy _stopListening];
  objc_storeWeak(&selfCopy->_target, obj);
  v11 = [completionCopy copy];
  completionBlock = selfCopy->_completionBlock;
  selfCopy->_completionBlock = v11;

  [(IMEventListener *)selfCopy _startListening];
  if (eventCopy)
  {
    eventCopy[2](eventCopy, obj, selfCopy);
  }

  objc_sync_exit(selfCopy);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  timeListeningStarted = selfCopy->_timeListeningStarted;
  objc_sync_exit(selfCopy);

  return timeListeningStarted;
}

- (double)timeListeningStopped
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  timeListeningStopped = selfCopy->_timeListeningStopped;
  objc_sync_exit(selfCopy);

  return timeListeningStopped;
}

- (double)timeLastEventReceived
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  timeLastEventReceived = selfCopy->_timeLastEventReceived;
  objc_sync_exit(selfCopy);

  return timeLastEventReceived;
}

- (double)elapsedWaitingTime
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  timeListeningStarted = selfCopy->_timeListeningStarted;
  v4 = 0.0;
  if (timeListeningStarted != 0.0)
  {
    timeListeningStopped = selfCopy->_timeListeningStopped;
    if (timeListeningStopped == 0.0)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      timeListeningStarted = selfCopy->_timeListeningStarted;
    }

    v4 = timeListeningStopped - timeListeningStarted;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (void)setCompletionBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(IMEventListener *)selfCopy _stopListening];
  v5 = [blockCopy copy];
  completionBlock = selfCopy->_completionBlock;
  selfCopy->_completionBlock = v5;

  objc_sync_exit(selfCopy);
}

- (id)completionBlock
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = _Block_copy(selfCopy->_completionBlock);
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)reset
{
  obj = self;
  objc_sync_enter(obj);
  [(IMEventListener *)obj _reset];
  objc_sync_exit(obj);
}

- (void)setTimeout:(double)timeout
{
  obj = self;
  objc_sync_enter(obj);
  [(IMEventListener *)obj _cancelTimeoutTimer];
  obj->_timeout = timeout;
  [(IMEventListener *)obj _startTimeoutTimerIfNeeded];
  objc_sync_exit(obj);
}

- (double)timeout
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  timeout = selfCopy->_timeout;
  objc_sync_exit(selfCopy);

  return timeout;
}

- (void)_didReceiveEvent:(BOOL)event userInfo:(id)info error:(id)error
{
  infoCopy = info;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ++selfCopy->_eventCount;
  if (selfCopy->_timeLastEventReceived == 0.0)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    selfCopy->_timeLastEventReceived = v10;
    [(IMEventListener *)selfCopy _cancelTimeoutTimer];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1A8613ADC;
    v11[3] = &unk_1E78260F0;
    v11[4] = selfCopy;
    v12 = infoCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }

  objc_sync_exit(selfCopy);
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end