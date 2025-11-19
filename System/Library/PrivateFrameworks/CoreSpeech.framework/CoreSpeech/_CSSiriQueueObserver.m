@interface _CSSiriQueueObserver
- (_CSSiriQueueObserver)initWithQueue:(id)a3 heartBeatInterval:(double)a4 timeoutInterval:(double)a5 timeoutHandler:(id)a6;
- (void)heartBeatFiredWithQueue:(id)a3;
- (void)startWithQueue:(id)a3;
- (void)stop;
- (void)timeoutDetected;
@end

@implementation _CSSiriQueueObserver

- (void)timeoutDetected
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = self->_numberOfOccurrences + 1;
  self->_numberOfOccurrences = v3;
  v4 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_ERROR))
  {
    queue = self->_queue;
    v8 = 136315650;
    v9 = "[_CSSiriQueueObserver timeoutDetected]";
    v10 = 2112;
    v11 = queue;
    v12 = 2048;
    v13 = v3;
    _os_log_error_impl(&dword_222E4D000, v4, OS_LOG_TYPE_ERROR, "%s queue = %@, numberOfOccurrences = %tu", &v8, 0x20u);
  }

  timeoutHandler = self->_timeoutHandler;
  if (timeoutHandler)
  {
    timeoutHandler[2](timeoutHandler, self->_numberOfOccurrences);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)heartBeatFiredWithQueue:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__20165;
  v27 = __Block_byref_object_dispose__20166;
  v28 = 0;
  v5 = objc_alloc(MEMORY[0x277CEF380]);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __48___CSSiriQueueObserver_heartBeatFiredWithQueue___block_invoke;
  v21[3] = &unk_2784C56A0;
  objc_copyWeak(&v22, &location);
  v6 = [v5 initWithBlock:v21];
  v7 = objc_alloc(MEMORY[0x277CEF530]);
  timeoutInterval = self->_timeoutInterval;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __48___CSSiriQueueObserver_heartBeatFiredWithQueue___block_invoke_2;
  v19[3] = &unk_2784C6FD0;
  v9 = v6;
  v20 = v9;
  v10 = [v7 initWithTimeoutInterval:v4 onQueue:v19 timeoutHandler:timeoutInterval];
  v11 = v24[5];
  v24[5] = v10;

  [v24[5] start];
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48___CSSiriQueueObserver_heartBeatFiredWithQueue___block_invoke_3;
  v15[3] = &unk_2784C5948;
  v16 = v9;
  v17 = v4;
  v18 = &v23;
  v13 = v4;
  v14 = v9;
  dispatch_async(queue, v15);

  objc_destroyWeak(&v22);
  _Block_object_dispose(&v23, 8);

  objc_destroyWeak(&location);
}

- (void)stop
{
  v12 = *MEMORY[0x277D85DE8];
  heartBeat = self->_heartBeat;
  if (heartBeat)
  {
    v4 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEBUG))
    {
      queue = self->_queue;
      v8 = 136315394;
      v9 = "[_CSSiriQueueObserver stop]";
      v10 = 2112;
      v11 = queue;
      _os_log_debug_impl(&dword_222E4D000, v4, OS_LOG_TYPE_DEBUG, "%s queue = %@", &v8, 0x16u);
      heartBeat = self->_heartBeat;
    }

    [(AFHeartBeat *)heartBeat invalidate];
    v5 = self->_heartBeat;
    self->_heartBeat = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)startWithQueue:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_heartBeat)
  {
    v5 = *MEMORY[0x277CEF0A0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_DEBUG))
    {
      queue = self->_queue;
      *location = 136315394;
      *&location[4] = "[_CSSiriQueueObserver startWithQueue:]";
      v17 = 2112;
      v18 = queue;
      _os_log_debug_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEBUG, "%s queue = %@", location, 0x16u);
    }

    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.assistant.queue-observer.%s", dispatch_queue_get_label(self->_queue)];
    objc_initWeak(location, self);
    v7 = objc_alloc(MEMORY[0x277CEF2B0]);
    heartBeatInterval = self->_heartBeatInterval;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __39___CSSiriQueueObserver_startWithQueue___block_invoke;
    v13[3] = &unk_2784C5678;
    objc_copyWeak(&v15, location);
    v14 = v4;
    v9 = [v7 initWithIdentifier:v6 queue:v14 effectiveDate:0 expirationDuration:v13 heartBeatInterval:0 heartBeatHandler:0.0 invalidationHandler:heartBeatInterval];
    heartBeat = self->_heartBeat;
    self->_heartBeat = v9;

    objc_destroyWeak(&v15);
    objc_destroyWeak(location);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (_CSSiriQueueObserver)initWithQueue:(id)a3 heartBeatInterval:(double)a4 timeoutInterval:(double)a5 timeoutHandler:(id)a6
{
  v11 = a3;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = _CSSiriQueueObserver;
  v13 = [(_CSSiriQueueObserver *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_queue, a3);
    v14->_heartBeatInterval = a4;
    v14->_timeoutInterval = a5;
    v15 = [v12 copy];
    timeoutHandler = v14->_timeoutHandler;
    v14->_timeoutHandler = v15;
  }

  return v14;
}

@end