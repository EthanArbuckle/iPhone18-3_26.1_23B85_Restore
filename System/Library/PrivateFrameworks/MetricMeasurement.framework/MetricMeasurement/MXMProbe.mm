@interface MXMProbe
+ (id)probe;
- (BOOL)_setupWaitSemaphore;
- (BOOL)waitUntilStoppedWithTimeout:(double)a3;
- (MXMProbe)init;
- (MXMProbeDelegate)delegate;
- (OS_dispatch_queue)updateQueue;
- (id)sampleWithTimeout:(double)a3 stopReason:(unint64_t *)a4;
- (void)_handleIncomingData:(id)a3;
- (void)_stopUpdates;
- (void)updateNowUntilStoppedWithUpdateHandler:(id)a3 stopHandler:(id)a4;
- (void)updateNowUntilTimeout:(double)a3 updateHandler:(id)a4 stopHandler:(id)a5;
- (void)waitForeverUntilStopped;
@end

@implementation MXMProbe

- (OS_dispatch_queue)updateQueue
{
  updateQueue = self->_updateQueue;
  if (updateQueue)
  {
    v3 = updateQueue;
  }

  else
  {
    v3 = dispatch_get_global_queue(0, 0);
  }

  return v3;
}

+ (id)probe
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (MXMProbe)init
{
  v3.receiver = self;
  v3.super_class = MXMProbe;
  return [(MXMProbe *)&v3 init];
}

- (void)updateNowUntilStoppedWithUpdateHandler:(id)a3 stopHandler:(id)a4
{
  v6 = a4;
  v7 = _Block_copy(a3);
  updateHandler = self->_updateHandler;
  self->_updateHandler = v7;

  v9 = _Block_copy(v6);
  stopHandler = self->_stopHandler;
  self->_stopHandler = v9;

  [(MXMProbe *)self _beginUpdates];
}

- (void)updateNowUntilTimeout:(double)a3 updateHandler:(id)a4 stopHandler:(id)a5
{
  v9 = a4;
  v10 = a5;
  [(MXMProbe *)self updateNowUntilStoppedWithUpdateHandler:v9 stopHandler:v10];
  objc_initWeak(&location, self);
  v11 = dispatch_time(0, (a3 * 1000000000.0));
  v12 = [(MXMProbe *)self updateQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__MXMProbe_updateNowUntilTimeout_updateHandler_stopHandler___block_invoke;
  v13[3] = &unk_2798C95F0;
  objc_copyWeak(v14, &location);
  v14[1] = a2;
  v13[4] = self;
  dispatch_after(v11, v12, v13);

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

void __60__MXMProbe_updateNowUntilTimeout_updateHandler_stopHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (!WeakRetained)
  {
    __60__MXMProbe_updateNowUntilTimeout_updateHandler_stopHandler___block_invoke_cold_1(a1);
  }

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 _stopUpdates];
}

- (void)_handleIncomingData:(id)a3
{
  v4 = a3;
  if (-[MXMProbe _shouldStop](self, "_shouldStop") || ![v4 numberOfSets] || -[MXMProbe _shouldStop](self, "_shouldStop"))
  {
    v5 = v4;
  }

  else
  {
    v10 = 0;
    v6 = [(MXMProbe *)self filter];
    v5 = [v4 dataMatchingFilter:v6];

    v7 = [(MXMProbe *)self delegate];
    [v7 probeDidUpdate:self data:v5 stop:&v10];

    updateHandler = self->_updateHandler;
    v9 = v10;
    if (updateHandler && (v10 & 1) == 0)
    {
      updateHandler[2](updateHandler, self, v5, &v10);
      v9 = v10;
    }

    if (v9)
    {
      [(MXMProbe *)self set_shouldStop:1];
      [(MXMProbe *)self _stopUpdates];
    }
  }
}

- (void)_stopUpdates
{
  [(MXMProbe *)self set_updating:0];
  updateHandler = self->_updateHandler;
  self->_updateHandler = 0;

  stopHandler = self->_stopHandler;
  self->_stopHandler = 0;

  stopWaiter = self->_stopWaiter;
  if (stopWaiter)
  {
    dispatch_semaphore_signal(stopWaiter);
    v6 = self->_stopWaiter;
    self->_stopWaiter = 0;
  }
}

- (BOOL)_setupWaitSemaphore
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(MXMProbe *)v2 _updating]&& !v2->_stopWaiter)
  {
    v5 = dispatch_semaphore_create(0);
    stopWaiter = v2->_stopWaiter;
    v2->_stopWaiter = v5;

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v2);

  return v3;
}

- (void)waitForeverUntilStopped
{
  if ([(MXMProbe *)self _setupWaitSemaphore])
  {
    stopWaiter = self->_stopWaiter;

    dispatch_semaphore_wait(stopWaiter, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (BOOL)waitUntilStoppedWithTimeout:(double)a3
{
  v4 = [(MXMProbe *)self _setupWaitSemaphore];
  if (v4)
  {
    LOBYTE(v4) = dispatch_semaphore_wait(self->_stopWaiter, 0xFFFFFFFFFFFFFFFFLL) != 0;
  }

  return v4;
}

- (id)sampleWithTimeout:(double)a3 stopReason:(unint64_t *)a4
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1;
  v27 = __Block_byref_object_dispose__1;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v8 = dispatch_semaphore_create(0);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __41__MXMProbe_sampleWithTimeout_stopReason___block_invoke;
  v16[3] = &unk_2798C9618;
  v18 = &v23;
  v9 = v8;
  v17 = v9;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __41__MXMProbe_sampleWithTimeout_stopReason___block_invoke_2;
  v15[3] = &unk_2798C9640;
  v15[4] = &v19;
  [(MXMProbe *)self updateNowUntilStoppedWithUpdateHandler:v16 stopHandler:v15];
  v10 = dispatch_time(0, (a3 * 1000000000.0));
  if (!dispatch_semaphore_wait(v9, v10))
  {
    if (!a4)
    {
      goto LABEL_8;
    }

    v11 = v20[3];
    goto LABEL_7;
  }

  [(MXMProbe *)self stopUpdates];
  if ([(MXMProbe *)self waitUntilStoppedWithTimeout:60.0])
  {
    if (!a4)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  v14 = [MEMORY[0x277CCA890] currentHandler];
  [v14 handleFailureInMethod:a2 object:self file:@"MXMProbe.m" lineNumber:197 description:@"Failed to stop the probe!"];

  if (a4)
  {
LABEL_4:
    v11 = 1;
LABEL_7:
    *a4 = v11;
  }

LABEL_8:
  v12 = v24[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v12;
}

void __41__MXMProbe_sampleWithTimeout_stopReason___block_invoke(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (MXMProbeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __60__MXMProbe_updateNowUntilTimeout_updateHandler_stopHandler___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"MXMProbe.m" lineNumber:73 description:@"_w_self pointer is nil."];
}

@end