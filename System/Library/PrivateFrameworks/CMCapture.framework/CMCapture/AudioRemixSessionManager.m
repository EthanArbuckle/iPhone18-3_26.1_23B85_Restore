@interface AudioRemixSessionManager
- (AudioRemixSessionManager)initWithNodeMetadataOutput:(id)a3;
- (int)_handleSessionCreated:(id)a3;
- (int)_handleSubscriberCompletedFromCancellation:(BOOL)a3;
- (int)finishAndGetResultsBlockingWithStartingPTS:(id *)a3 andEndingPTS:(id *)a4;
- (int)startNewSessionBlocking;
- (void)abortSessionIfNeeded;
- (void)dealloc;
- (void)submitAudioBuffer:(id)a3;
@end

@implementation AudioRemixSessionManager

- (AudioRemixSessionManager)initWithNodeMetadataOutput:(id)a3
{
  v7.receiver = self;
  v7.super_class = AudioRemixSessionManager;
  v4 = [(AudioRemixSessionManager *)&v7 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4->_workQueue = dispatch_queue_create("com.apple.cameracapture.audioremixanalysis.application", v5);
    v4->_subscriber = 0;
    v4->_session = 0;
    v4->_nodeMetadataOutput = a3;
    v4->_sampleRate = 0.0;
    v4->_channelCount = 0;
  }

  return v4;
}

- (int)finishAndGetResultsBlockingWithStartingPTS:(id *)a3 andEndingPTS:(id *)a4
{
  subscriber = self->_subscriber;
  if (subscriber)
  {
    v7 = *a3;
    v6 = *a4;
    return [(AudioRemixSubscriber *)subscriber finishAndGetResultsBlockingWithStartingPTS:&v7 andEndingPTS:&v6];
  }

  else
  {
    [AudioRemixSessionManager finishAndGetResultsBlockingWithStartingPTS:? andEndingPTS:?];
    return v7.var0;
  }
}

- (void)dealloc
{
  [(AudioRemixSessionManager *)self abortSessionIfNeeded];
  workQueue = self->_workQueue;
  if (workQueue)
  {
    dispatch_release(workQueue);
    self->_workQueue = 0;
  }

  v4.receiver = self;
  v4.super_class = AudioRemixSessionManager;
  [(AudioRemixSessionManager *)&v4 dealloc];
}

- (int)startNewSessionBlocking
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  [(AudioRemixSessionManager *)self abortSessionIfNeeded];
  v3 = [objc_alloc(getSNMovieRemixRequestClass()) initWithInputAudioSampleRate:self->_sampleRate inputAudioChannelCount:self->_channelCount];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = dispatch_semaphore_create(0);
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__AudioRemixSessionManager_startNewSessionBlocking__block_invoke;
  v9[3] = &unk_1E7990760;
  objc_copyWeak(&v10, &location);
  v9[4] = &v18;
  v9[5] = &v12;
  [getSNMovieRemixClass() runRequest:v3 completionHandler:v9];
  v4 = v13[5];
  v5 = dispatch_time(0, 2000000000);
  v6 = dispatch_semaphore_wait(v4, v5);
  dispatch_release(v13[5]);
  v13[5] = 0;
  if (v6)
  {
    *(v19 + 6) = FigSignalErrorAtGM();
  }

  v7 = *(v19 + 6);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
  return v7;
}

intptr_t __51__AudioRemixSessionManager_startNewSessionBlocking__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  Weak = objc_loadWeak((a1 + 48));
  if (a3)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [a3 code];
    *(*(*(a1 + 32) + 8) + 24) = FigSignalErrorAtGM();
  }

  else if (Weak)
  {
    if (a2)
    {
      *(*(*(a1 + 32) + 8) + 24) = [Weak _handleSessionCreated:a2];
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        __51__AudioRemixSessionManager_startNewSessionBlocking__block_invoke_cold_1();
      }
    }

    else
    {
      __51__AudioRemixSessionManager_startNewSessionBlocking__block_invoke_cold_2(a1);
    }
  }

  else
  {
    __51__AudioRemixSessionManager_startNewSessionBlocking__block_invoke_cold_3(a1);
  }

  return dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

- (void)abortSessionIfNeeded
{
  session = self->_session;
  if (session)
  {
    subscriber = self->_subscriber;
    if (subscriber)
    {

      self->_subscriber = 0;
      session = self->_session;
    }

    [(SNMovieRemixSession *)session finishWithError:0];

    self->_session = 0;
  }
}

- (int)_handleSubscriberCompletedFromCancellation:(BOOL)a3
{
  if (!a3)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  [AudioRemixSessionManager _handleSubscriberCompletedFromCancellation:?];
  return v6;
}

- (int)_handleSessionCreated:(id)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (!_FigIsNotCurrentDispatchQueue())
  {
    FigDebugAssert3();
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AudioRemixSessionManager__handleSessionCreated___block_invoke;
  block[3] = &unk_1E79907B0;
  block[5] = a3;
  block[6] = &v9;
  block[4] = self;
  dispatch_sync(workQueue, block);
  v6 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v6;
}

void __50__AudioRemixSessionManager__handleSessionCreated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24))
  {
    __50__AudioRemixSessionManager__handleSessionCreated___block_invoke_cold_1(a1);
  }

  else
  {
    *(v2 + 24) = *(a1 + 40);
    v3 = *(*(a1 + 32) + 24);
    if (v3)
    {
      v4 = v3;
      objc_initWeak(&location, *(a1 + 32));
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __50__AudioRemixSessionManager__handleSessionCreated___block_invoke_2;
      v5[3] = &unk_1E7990788;
      v5[4] = *(a1 + 48);
      objc_copyWeak(&v6, &location);
      [*(*(a1 + 32) + 24) setInFrameMixMode:*(*(a1 + 32) + 40)];
      *(*(a1 + 32) + 16) = [[AudioRemixSubscriber alloc] initWithSession:*(*(a1 + 32) + 24) andNodeMetadataOutput:*(*(a1 + 32) + 32) usePIPAIngestSignalingDomain:*(*(a1 + 32) + 40) completionHandler:v5];
      [*(*(a1 + 32) + 16) activate];
      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }

    else
    {
      __50__AudioRemixSessionManager__handleSessionCreated___block_invoke_cold_2(a1);
    }
  }
}

uint64_t __50__AudioRemixSessionManager__handleSessionCreated___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return __50__AudioRemixSessionManager__handleSessionCreated___block_invoke_2_cold_1(a1);
  }

  Weak = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    *(*(*(a1 + 32) + 8) + 24) = [Weak _handleSubscriberCompletedFromCancellation:a2];
    result = *(*(*(a1 + 32) + 8) + 24);
    if (result)
    {
      return __50__AudioRemixSessionManager__handleSessionCreated___block_invoke_2_cold_2();
    }
  }

  else
  {
    result = FigSignalErrorAtGM();
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

- (void)submitAudioBuffer:(id)a3
{
  if (a3)
  {
    [(SNMovieRemixSession *)self->_session yieldBuffer:?];
  }
}

- (uint64_t)finishAndGetResultsBlockingWithStartingPTS:(_DWORD *)a1 andEndingPTS:.cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_handleSubscriberCompletedFromCancellation:(_DWORD *)a1 .cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end