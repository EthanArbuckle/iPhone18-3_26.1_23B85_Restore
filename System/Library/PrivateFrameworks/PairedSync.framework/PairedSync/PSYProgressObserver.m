@interface PSYProgressObserver
- (NSString)activityLabel;
- (PSYProgressObserver)initWithQueue:(id)a3;
- (PSYProgressObserverDelegate)delegate;
- (double)activityProgress;
- (double)totalProgress;
- (int64_t)progressObserverState;
- (void)_updateState;
- (void)syncSessionObserver:(id)a3 didReceiveUpdate:(id)a4;
- (void)syncSessionObserver:(id)a3 receivedSyncSession:(id)a4;
@end

@implementation PSYProgressObserver

- (PSYProgressObserver)initWithQueue:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PSYProgressObserver;
  v5 = [(PSYProgressObserver *)&v16 init];
  if (v5)
  {
    if (!v4)
    {
      v4 = MEMORY[0x277D85CD0];
      v6 = MEMORY[0x277D85CD0];
    }

    objc_storeStrong(&v5->_delegateQueue, v4);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.pairedsync.progressobserver", v7);
    internalQueue = v5->_internalQueue;
    v5->_internalQueue = v8;

    v10 = objc_alloc_init(PSYSyncSessionObserver);
    syncSessionObserver = v5->_syncSessionObserver;
    v5->_syncSessionObserver = v10;

    v12 = v5->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__PSYProgressObserver_initWithQueue___block_invoke;
    block[3] = &unk_2799FB560;
    v15 = v5;
    dispatch_async(v12, block);
  }

  return v5;
}

uint64_t __37__PSYProgressObserver_initWithQueue___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setDelegate:?];
  v2 = *(a1 + 32);

  return [v2 _updateState];
}

- (double)totalProgress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__PSYProgressObserver_totalProgress__block_invoke;
  v5[3] = &unk_2799FB5B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __36__PSYProgressObserver_totalProgress__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) sessionProgress];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (double)activityProgress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__PSYProgressObserver_activityProgress__block_invoke;
  v5[3] = &unk_2799FBAF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __39__PSYProgressObserver_activityProgress__block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 16) firstIncompleteActivity];
  [v3 activityProgress];
  *(*(*(a1 + 40) + 8) + 24) = v2;
}

- (NSString)activityLabel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__PSYProgressObserver_activityLabel__block_invoke;
  v5[3] = &unk_2799FBAF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __36__PSYProgressObserver_activityLabel__block_invoke(uint64_t a1)
{
  v6 = [*(*(a1 + 32) + 16) firstIncompleteActivity];
  v2 = [v6 activityInfo];
  v3 = [v2 label];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_updateState
{
  syncSessionObserver = self->_syncSessionObserver;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__PSYProgressObserver__updateState__block_invoke;
  v3[3] = &unk_2799FBB48;
  v3[4] = self;
  [(PSYSyncSessionObserver *)syncSessionObserver startObservingSyncSessionsWithCompletion:v3];
}

void __35__PSYProgressObserver__updateState__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (!a4)
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__PSYProgressObserver__updateState__block_invoke_2;
    block[3] = &unk_2799FBB20;
    block[4] = v9;
    v12 = v7;
    v13 = v8;
    dispatch_async(v10, block);
  }
}

void __35__PSYProgressObserver__updateState__block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v2 = [*(a1 + 48) mutableCopy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__PSYProgressObserver__updateState__block_invoke_3;
  block[3] = &unk_2799FB560;
  block[4] = v5;
  dispatch_async(v6, block);
}

void __35__PSYProgressObserver__updateState__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 progressObserverDidChangeState:*(a1 + 32)];
}

- (int64_t)progressObserverState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__PSYProgressObserver_progressObserverState__block_invoke;
  v5[3] = &unk_2799FBAF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __44__PSYProgressObserver_progressObserverState__block_invoke(uint64_t a1)
{
  v2 = +[PSYRegistrySingleton registry];
  v7 = [v2 pairingID];

  v3 = v7;
  if (v7)
  {
    v4 = [*(*(a1 + 32) + 40) containsObject:v7];
    v3 = v7;
    if (v4)
    {
      v5 = 4;
LABEL_7:
      *(*(*(a1 + 40) + 8) + 24) = v5;
      goto LABEL_8;
    }
  }

  v4 = *(*(a1 + 32) + 16);
  if (v4)
  {
    v4 = [v4 syncSessionState];
    v3 = v7;
    if (v4 <= 2)
    {
      v5 = qword_25DF38DF8[v4];
      goto LABEL_7;
    }
  }

LABEL_8:

  return MEMORY[0x2821F96F8](v4, v3);
}

- (void)syncSessionObserver:(id)a3 didReceiveUpdate:(id)a4
{
  v5 = a4;
  v6 = [v5 updatedSession];
  v7 = [(PSYProgressObserver *)self _shouldHandleSyncSession:v6];

  if (v7)
  {
    internalQueue = self->_internalQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__PSYProgressObserver_syncSessionObserver_didReceiveUpdate___block_invoke;
    v9[3] = &unk_2799FB588;
    v9[4] = self;
    v10 = v5;
    dispatch_async(internalQueue, v9);
  }
}

void __60__PSYProgressObserver_syncSessionObserver_didReceiveUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) updatedSession];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = [*(a1 + 40) originalSession];
  [v5 sessionProgress];
  v7 = v6;
  v8 = [*(a1 + 40) updatedSession];
  [v8 sessionProgress];
  v10 = vabdd_f64(v7, v9);

  if (v10 > 0.00000011920929)
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__PSYProgressObserver_syncSessionObserver_didReceiveUpdate___block_invoke_2;
    block[3] = &unk_2799FB560;
    block[4] = v11;
    dispatch_async(v12, block);
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __60__PSYProgressObserver_syncSessionObserver_didReceiveUpdate___block_invoke_3;
  v27[3] = &unk_2799FBB70;
  v13 = *(a1 + 40);
  v27[4] = *(a1 + 32);
  [v13 enumerateNewlyCompletedActivitiesWithBlock:v27];
  v14 = [*(a1 + 40) originalSession];
  v15 = [v14 syncSessionState];
  v16 = [*(a1 + 40) updatedSession];
  v17 = [v16 syncSessionState];

  if (v15 != v17)
  {
    v18 = *(a1 + 32);
    v19 = *(v18 + 32);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __60__PSYProgressObserver_syncSessionObserver_didReceiveUpdate___block_invoke_5;
    v26[3] = &unk_2799FB560;
    v26[4] = v18;
    dispatch_async(v19, v26);
  }

  v20 = [*(a1 + 40) updatedSession];
  v21 = [v20 syncSessionState];

  if (v21 == 2)
  {
    v22 = *(a1 + 40);
    v23 = *(*(a1 + 32) + 40);
    v24 = [v22 updatedSession];
    v25 = [v24 pairingIdentifier];
    [v23 addObject:v25];
  }
}

void __60__PSYProgressObserver_syncSessionObserver_didReceiveUpdate___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 progressObserverDidChangeProgress:*(a1 + 32)];
}

void __60__PSYProgressObserver_syncSessionObserver_didReceiveUpdate___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__PSYProgressObserver_syncSessionObserver_didReceiveUpdate___block_invoke_4;
  v8[3] = &unk_2799FB588;
  v8[4] = v5;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __60__PSYProgressObserver_syncSessionObserver_didReceiveUpdate___block_invoke_4(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) activityInfo];
  v4 = [v3 label];
  v5 = [*(a1 + 40) error];
  [v6 progressObserver:v2 didFinishActivity:v4 withError:v5];
}

void __60__PSYProgressObserver_syncSessionObserver_didReceiveUpdate___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 progressObserverDidChangeState:*(a1 + 32)];
}

- (void)syncSessionObserver:(id)a3 receivedSyncSession:(id)a4
{
  v5 = a4;
  if ([(PSYProgressObserver *)self _shouldHandleSyncSession:v5])
  {
    internalQueue = self->_internalQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63__PSYProgressObserver_syncSessionObserver_receivedSyncSession___block_invoke;
    v7[3] = &unk_2799FB588;
    v7[4] = self;
    v8 = v5;
    dispatch_async(internalQueue, v7);
  }
}

void __63__PSYProgressObserver_syncSessionObserver_receivedSyncSession___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__PSYProgressObserver_syncSessionObserver_receivedSyncSession___block_invoke_2;
  block[3] = &unk_2799FB560;
  block[4] = v2;
  dispatch_async(v3, block);
}

void __63__PSYProgressObserver_syncSessionObserver_receivedSyncSession___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 progressObserverDidChangeState:*(a1 + 32)];
}

- (PSYProgressObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end