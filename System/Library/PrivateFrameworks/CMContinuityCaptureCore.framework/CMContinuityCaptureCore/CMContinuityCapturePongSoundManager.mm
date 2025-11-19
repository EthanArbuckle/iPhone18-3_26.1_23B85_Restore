@interface CMContinuityCapturePongSoundManager
+ (id)sharedInstance;
- (CMContinuityCapturePongSoundManager)init;
- (void)_playPongSoundForIdentifier:(id)a3;
- (void)_pongIfNeededWithShouldConsiderPongHistory:(BOOL)a3 forIdentifier:(id)a4;
- (void)acquireSystemPongAssertion;
- (void)clearPongHistory;
- (void)device:(id)a3 isNearby:(BOOL)a4;
- (void)pongIfNeededWithShouldConsiderPongHistory:(BOOL)a3 forIdentifier:(id)a4;
- (void)releaseSystemPongAssertion;
- (void)waitForPongCompletion:(id)a3;
@end

@implementation CMContinuityCapturePongSoundManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_9 != -1)
  {
    +[CMContinuityCapturePongSoundManager sharedInstance];
  }

  v3 = _pongSoundManager;

  return v3;
}

uint64_t __53__CMContinuityCapturePongSoundManager_sharedInstance__block_invoke()
{
  _pongSoundManager = objc_alloc_init(CMContinuityCapturePongSoundManager);

  return MEMORY[0x2821F96F8]();
}

- (CMContinuityCapturePongSoundManager)init
{
  v16.receiver = self;
  v16.super_class = CMContinuityCapturePongSoundManager;
  v2 = [(CMContinuityCapturePongSoundManager *)&v16 init];
  v3 = v2;
  if (v2)
  {
    if ([(CMContinuityCapturePongSoundManager *)v2 _shouldUseNearbyInteractionToDeterminePongSound])
    {
      v4 = [CMContinuityCaptureProximityMonitor alloc];
      v5 = [(CMContinuityCaptureProximityMonitor *)v4 initWithQueue:MEMORY[0x277D85CD0] delegate:v3];
      proximityMonitor = v3->_proximityMonitor;
      v3->_proximityMonitor = v5;
    }

    v7 = FigDispatchQueueCreateWithPriority();
    internalQueue = v3->_internalQueue;
    v3->_internalQueue = v7;

    v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3->_internalQueue);
    pongHistoryTimer = v3->_pongHistoryTimer;
    v3->_pongHistoryTimer = v9;

    objc_initWeak(&location, v3);
    v11 = v3->_pongHistoryTimer;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __43__CMContinuityCapturePongSoundManager_init__block_invoke;
    v13[3] = &unk_278D5C080;
    objc_copyWeak(&v14, &location);
    dispatch_source_set_event_handler(v11, v13);
    dispatch_activate(v3->_pongHistoryTimer);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __43__CMContinuityCapturePongSoundManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 32));
      v5 = WeakRetained[1];
      v6 = 134218242;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "<%p> [pong-check] reset pong history due to pongHistoryTimer %@", &v6, 0x16u);
    }

    [WeakRetained clearPongHistory];
  }
}

- (void)clearPongHistory
{
  objc_initWeak(&location, self);
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CMContinuityCapturePongSoundManager_clearPongHistory__block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(internalQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __55__CMContinuityCapturePongSoundManager_clearPongHistory__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v6 = 134218242;
      v7 = v4;
      v8 = 2080;
      v9 = "[CMContinuityCapturePongSoundManager clearPongHistory]_block_invoke";
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "<%p> [pong-check] %s", &v6, 0x16u);
    }

    dispatch_source_set_timer(WeakRetained[2], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v5 = WeakRetained[1];
    WeakRetained[1] = 0;
  }
}

- (void)waitForPongCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v12 = self;
    v13 = 2080;
    v14 = "[CMContinuityCapturePongSoundManager waitForPongCompletion:]";
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "<%p> [pong-check] %s start", buf, 0x16u);
  }

  dispatch_assert_queue_not_V2(self->_internalQueue);
  internalQueue = self->_internalQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__CMContinuityCapturePongSoundManager_waitForPongCompletion___block_invoke;
  v8[3] = &unk_278D5C688;
  objc_copyWeak(&v10, &location);
  v9 = v4;
  v7 = v4;
  dispatch_async_and_wait(internalQueue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

uint64_t __61__CMContinuityCapturePongSoundManager_waitForPongCompletion___block_invoke(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = 134218242;
    v6 = WeakRetained;
    v7 = 2080;
    v8 = "[CMContinuityCapturePongSoundManager waitForPongCompletion:]_block_invoke";
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "<%p> [pong-check] %s end", &v5, 0x16u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)acquireSystemPongAssertion
{
  v3 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v11 = self;
    v12 = 2080;
    v13 = "[CMContinuityCapturePongSoundManager acquireSystemPongAssertion]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "<%p> [pong-check] %s", buf, 0x16u);
  }

  v4 = self;
  objc_sync_enter(v4);
  if (v4->_pongAssertSemaphore)
  {
    v5 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v11 = v4;
      v12 = 2080;
      v13 = "[CMContinuityCapturePongSoundManager acquireSystemPongAssertion]";
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "<%p> [pong-check] %s The pong assertion is already held so we return immediately.", buf, 0x16u);
    }

    objc_sync_exit(v4);
  }

  else
  {
    v6 = dispatch_semaphore_create(0);
    pongAssertSemaphore = v4->_pongAssertSemaphore;
    v4->_pongAssertSemaphore = v6;

    objc_sync_exit(v4);
    internalQueue = v4->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__CMContinuityCapturePongSoundManager_acquireSystemPongAssertion__block_invoke;
    block[3] = &unk_278D5C0D0;
    block[4] = v4;
    dispatch_async(internalQueue, block);
  }
}

void __65__CMContinuityCapturePongSoundManager_acquireSystemPongAssertion__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  dsema = *(*(a1 + 32) + 40);
  objc_sync_exit(v2);

  if (dsema)
  {
    v3 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(dsema, v3);
  }
}

- (void)releaseSystemPongAssertion
{
  v3 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218242;
    v8 = self;
    v9 = 2080;
    v10 = "[CMContinuityCapturePongSoundManager releaseSystemPongAssertion]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "<%p> [pong-check] %s", &v7, 0x16u);
  }

  v4 = self;
  objc_sync_enter(v4);
  pongAssertSemaphore = v4->_pongAssertSemaphore;
  if (pongAssertSemaphore)
  {
    dispatch_semaphore_signal(pongAssertSemaphore);
    v6 = v4->_pongAssertSemaphore;
    v4->_pongAssertSemaphore = 0;
  }

  objc_sync_exit(v4);
}

- (void)pongIfNeededWithShouldConsiderPongHistory:(BOOL)a3 forIdentifier:(id)a4
{
  v6 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__CMContinuityCapturePongSoundManager_pongIfNeededWithShouldConsiderPongHistory_forIdentifier___block_invoke;
  block[3] = &unk_278D5C198;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

- (void)_pongIfNeededWithShouldConsiderPongHistory:(BOOL)a3 forIdentifier:(id)a4
{
  v4 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_internalQueue);
  v7 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v23 = self;
    v24 = 2112;
    v25 = v6;
    v26 = 1024;
    LODWORD(v27) = v4;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "<%p> [pong-check] checking whether need to play pong for Identifier %@, should consider pong history: %d", buf, 0x1Cu);
  }

  if (v4 && [(NSString *)self->_playedPongForIdentifier isEqualToString:v6])
  {
    v8 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v23 = self;
      v24 = 2080;
      v25 = "[CMContinuityCapturePongSoundManager _pongIfNeededWithShouldConsiderPongHistory:forIdentifier:]";
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%@ %s [pong-check] Already ponged for %@, do not pong again", buf, 0x20u);
    }
  }

  else if ([(CMContinuityCapturePongSoundManager *)self _shouldUseNearbyInteractionToDeterminePongSound])
  {
    if (!self->_proximityMonitor)
    {
      v9 = CMContinuityCaptureLog(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v23 = self;
        _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "<%p> [pong-check] restarting proximity monitor", buf, 0xCu);
      }

      v10 = [CMContinuityCaptureProximityMonitor alloc];
      v11 = [(CMContinuityCaptureProximityMonitor *)v10 initWithQueue:MEMORY[0x277D85CD0] delegate:self];
      proximityMonitor = self->_proximityMonitor;
      self->_proximityMonitor = v11;
    }

    if (!self->_proximityTimer)
    {
      v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
      proximityTimer = self->_proximityTimer;
      self->_proximityTimer = v13;

      v15 = self->_proximityTimer;
      v16 = dispatch_time(0, 5000000000);
      dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0);
      objc_initWeak(buf, self);
      v17 = self->_proximityTimer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __96__CMContinuityCapturePongSoundManager__pongIfNeededWithShouldConsiderPongHistory_forIdentifier___block_invoke;
      handler[3] = &unk_278D5CA78;
      handler[4] = self;
      v20 = v6;
      objc_copyWeak(&v21, buf);
      dispatch_source_set_event_handler(v17, handler);
      dispatch_resume(self->_proximityTimer);
      objc_destroyWeak(&v21);

      objc_destroyWeak(buf);
    }

    [(CMContinuityCaptureProximityMonitor *)self->_proximityMonitor beginTracking:v6];
  }

  else
  {
    v18 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v23 = self;
      _os_log_impl(&dword_242545000, v18, OS_LOG_TYPE_DEFAULT, "<%p> [pong-check] Not using NearbyInteraction to determine whether pong sound is played. Go ahead and play it.", buf, 0xCu);
    }

    [(CMContinuityCapturePongSoundManager *)self _playPongSoundForIdentifier:v6];
  }
}

void __96__CMContinuityCapturePongSoundManager__pongIfNeededWithShouldConsiderPongHistory_forIdentifier___block_invoke(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 134218242;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "<%p> [pong-check] %@ did not get proximity update in time, assume the device is too far away", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained device:*(a1 + 40) isNearby:0];
}

- (void)_playPongSoundForIdentifier:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_internalQueue);
  objc_initWeak(&location, self);
  v5 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v18 = self;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "<%p> [pong-check] playing pong sound for %@", buf, 0x16u);
  }

  v6 = dispatch_semaphore_create(0);
  inCompletionBlock[0] = MEMORY[0x277D85DD0];
  inCompletionBlock[1] = 3221225472;
  inCompletionBlock[2] = __67__CMContinuityCapturePongSoundManager__playPongSoundForIdentifier___block_invoke;
  inCompletionBlock[3] = &unk_278D5C120;
  objc_copyWeak(&v16, &location);
  v7 = v4;
  v14 = v7;
  v8 = v6;
  v15 = v8;
  AudioServicesPlaySystemSoundWithCompletion(0x424u, inCompletionBlock);
  v9 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v8, v9);
  playedPongForIdentifier = self->_playedPongForIdentifier;
  self->_playedPongForIdentifier = v7;
  v11 = v7;

  v12 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(self->_pongHistoryTimer, v12, 0xFFFFFFFFFFFFFFFFLL, 0);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

intptr_t __67__CMContinuityCapturePongSoundManager__playPongSoundForIdentifier___block_invoke(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v4 = *(a1 + 32);
    v6 = 134218242;
    v7 = WeakRetained;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "<%p> [pong-check] pong sound is done being played for %@", &v6, 0x16u);
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

- (void)device:(id)a3 isNearby:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = MEMORY[0x277D85CD0];
  v8 = MEMORY[0x277D85CD0];
  dispatch_assert_queue_V2(v7);

  v9 = CMContinuityCaptureLog(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v18 = self;
    v19 = 2112;
    v20 = v6;
    v21 = 1024;
    v22 = v4;
    _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "<%p> [pong-check] %@ got proximity update: nearby %d", buf, 0x1Cu);
  }

  proximityTimer = self->_proximityTimer;
  if (proximityTimer)
  {
    dispatch_source_cancel(proximityTimer);
    v11 = self->_proximityTimer;
    self->_proximityTimer = 0;
  }

  [(CMContinuityCaptureProximityMonitor *)self->_proximityMonitor endTracking:v6];
  proximityMonitor = self->_proximityMonitor;
  self->_proximityMonitor = 0;

  if (!v4)
  {
    internalQueue = self->_internalQueue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __55__CMContinuityCapturePongSoundManager_device_isNearby___block_invoke;
    v14[3] = &unk_278D5C0A8;
    objc_copyWeak(&v16, &location);
    v15 = v6;
    dispatch_async(internalQueue, v14);

    objc_destroyWeak(&v16);
  }

  objc_destroyWeak(&location);
}

void __55__CMContinuityCapturePongSoundManager_device_isNearby___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _playPongSoundForIdentifier:*(a1 + 32)];
    WeakRetained = v3;
  }
}

@end