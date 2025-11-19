@interface PSYServiceSyncSession
- (NRDevice)pairedDevice;
- (NSUUID)pairingID;
- (PSYServiceSyncSession)initWithQueue:(id)a3 supportsMigrationSync:(BOOL)a4;
- (PSYServiceSyncSessionDelegate)delegate;
- (PSYSyncCoordinator)syncCoordinator;
- (unint64_t)syncSessionType;
- (void)reportProgress:(double)a3;
- (void)syncDidComplete;
- (void)syncDidCompleteSending;
- (void)syncDidFailWithError:(id)a3;
@end

@implementation PSYServiceSyncSession

- (PSYServiceSyncSession)initWithQueue:(id)a3 supportsMigrationSync:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PSYServiceSyncSession;
  v8 = [(PSYServiceSyncSession *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, a3);
    v9->_supportsMigrationSync = a4;
  }

  return v9;
}

- (NSUUID)pairingID
{
  v2 = [(PSYServiceSyncSession *)self pdrPairedDevice];
  v3 = [v2 pairingID];

  return v3;
}

- (NRDevice)pairedDevice
{
  v3 = [MEMORY[0x277D2BCF8] sharedInstance];
  v4 = [(PSYServiceSyncSession *)self pairingID];
  v5 = [v3 deviceForPairingID:v4];

  return v5;
}

- (void)syncDidCompleteSending
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PSYServiceSyncSession_syncDidCompleteSending__block_invoke;
  block[3] = &unk_2799FB560;
  block[4] = self;
  dispatch_async(queue, block);
}

void __47__PSYServiceSyncSession_syncDidCompleteSending__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 syncSessionDidCompleteSending:*(a1 + 32)];
}

- (void)syncDidComplete
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__PSYServiceSyncSession_syncDidComplete__block_invoke;
  block[3] = &unk_2799FB560;
  block[4] = self;
  dispatch_async(queue, block);
}

void __40__PSYServiceSyncSession_syncDidComplete__block_invoke(uint64_t a1)
{
  v2 = psy_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = psy_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25DF25000, v4, OS_LOG_TYPE_DEFAULT, "PSYSyncCoordinator client called syncDidComplete", v6, 2u);
    }
  }

  *(*(a1 + 32) + 16) = 1;
  v5 = [*(a1 + 32) delegate];
  [v5 syncSessionDidComplete:*(a1 + 32)];
}

- (void)syncDidFailWithError:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__PSYServiceSyncSession_syncDidFailWithError___block_invoke;
  v7[3] = &unk_2799FB588;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __46__PSYServiceSyncSession_syncDidFailWithError___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 16) = 1;
  v2 = [*(a1 + 32) delegate];
  [v2 syncSession:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

- (void)reportProgress:(double)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__PSYServiceSyncSession_reportProgress___block_invoke;
  v4[3] = &unk_2799FB738;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_async(queue, v4);
}

void __40__PSYServiceSyncSession_reportProgress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 syncSession:*(a1 + 32) reportProgress:*(a1 + 40)];
}

- (unint64_t)syncSessionType
{
  if (self->_syncSessionType == 2)
  {
    syncSessionType = 0;
  }

  else
  {
    syncSessionType = self->_syncSessionType;
  }

  if (self->_supportsMigrationSync)
  {
    return self->_syncSessionType;
  }

  else
  {
    return syncSessionType;
  }
}

- (PSYSyncCoordinator)syncCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_syncCoordinator);

  return WeakRetained;
}

- (PSYServiceSyncSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end