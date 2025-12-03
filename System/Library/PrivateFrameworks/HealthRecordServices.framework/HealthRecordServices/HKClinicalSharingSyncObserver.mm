@interface HKClinicalSharingSyncObserver
- (HKClinicalSharingSyncObserver)initWithConnection:(id)connection delegateQueue:(id)queue;
- (HKClinicalSharingSyncObserver)initWithDelegateQueue:(id)queue;
- (HKClinicalSharingSyncObserverDelegate)delegate;
- (void)client_syncDidFinishWithError:(id)error;
- (void)client_syncDidStartWithInfo:(id)info;
- (void)connectionInterrupted;
- (void)invalidate;
- (void)resumeWithCompletion:(id)completion;
@end

@implementation HKClinicalSharingSyncObserver

- (HKClinicalSharingSyncObserver)initWithDelegateQueue:(id)queue
{
  queueCopy = queue;
  v5 = +[HKHealthRecordsDaemonConnection sharedConnection];
  v6 = [(HKClinicalSharingSyncObserver *)self initWithConnection:v5 delegateQueue:queueCopy];

  return v6;
}

- (HKClinicalSharingSyncObserver)initWithConnection:(id)connection delegateQueue:(id)queue
{
  connectionCopy = connection;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = HKClinicalSharingSyncObserver;
  v8 = [(HKClinicalSharingSyncObserver *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_delegateQueue, queue);
    v9->_lock._os_unfair_lock_opaque = 0;
    v10 = [[HKHealthRecordsDaemonProxyProvider alloc] initWithConnection:connectionCopy serviceIdentifier:@"ClinicalSharingSyncObserver" exportedObject:v9];
    proxyProvider = v9->_proxyProvider;
    v9->_proxyProvider = &v10->super;
  }

  return v9;
}

- (void)resumeWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (!WeakRetained)
  {
    [(HKClinicalSharingSyncObserver *)a2 resumeWithCompletion:?];
  }

  os_unfair_lock_lock(&self->_lock);
  proxyProvider = self->_proxyProvider;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__HKClinicalSharingSyncObserver_resumeWithCompletion___block_invoke;
  v14[3] = &unk_2796DD020;
  v15 = completionCopy;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __54__HKClinicalSharingSyncObserver_resumeWithCompletion___block_invoke_305;
  v12 = &unk_2796DBFF8;
  v13 = v15;
  v8 = v15;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v14 errorHandler:&v9];
  [(HKProxyProvider *)self->_proxyProvider setAutomaticProxyReconnectionHandler:&__block_literal_global_310_0, v9, v10, v11, v12];
  os_unfair_lock_unlock(&self->_lock);
}

void __54__HKClinicalSharingSyncObserver_resumeWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__HKClinicalSharingSyncObserver_resumeWithCompletion___block_invoke_2;
  v3[3] = &unk_2796DCFF8;
  v4 = *(a1 + 32);
  [a2 remote_startObservingSyncStatusWithCompletion:v3];
}

void __54__HKClinicalSharingSyncObserver_resumeWithCompletion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      __54__HKClinicalSharingSyncObserver_resumeWithCompletion___block_invoke_2_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __54__HKClinicalSharingSyncObserver_resumeWithCompletion___block_invoke_305(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2C0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
  {
    __54__HKClinicalSharingSyncObserver_resumeWithCompletion___block_invoke_2_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  (*(*(a1 + 32) + 16))();
}

void __54__HKClinicalSharingSyncObserver_resumeWithCompletion___block_invoke_2_311(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2C0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
    {
      __54__HKClinicalSharingSyncObserver_resumeWithCompletion___block_invoke_2_311_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  self->_didSyncStart = 0;
  [(HKProxyProvider *)self->_proxyProvider setAutomaticProxyReconnectionHandler:0];
  [(HKProxyProvider *)self->_proxyProvider invalidate];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)client_syncDidFinishWithError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2C0];
  v6 = os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT);
  if (errorCopy)
  {
    if (v6)
    {
      v7 = v5;
      *buf = 138412546;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = errorCopy;
      v8 = "%@: sync failed: %{public}@";
      v9 = v7;
      v10 = 22;
LABEL_6:
      _os_log_impl(&dword_2519FE000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    }
  }

  else if (v6)
  {
    v7 = v5;
    *buf = 138412290;
    v17 = objc_opt_class();
    v8 = "%@: sync finished";
    v9 = v7;
    v10 = 12;
    goto LABEL_6;
  }

  os_unfair_lock_lock(&self->_lock);
  self->_didSyncStart = 0;
  delegateQueue = self->_delegateQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__HKClinicalSharingSyncObserver_client_syncDidFinishWithError___block_invoke;
  v14[3] = &unk_2796DD068;
  v14[4] = self;
  v15 = errorCopy;
  v12 = errorCopy;
  dispatch_async(delegateQueue, v14);
  os_unfair_lock_unlock(&self->_lock);

  v13 = *MEMORY[0x277D85DE8];
}

void __63__HKClinicalSharingSyncObserver_client_syncDidFinishWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 clinicalSharingSyncObserver:*(a1 + 32) syncDidFinishWithError:*(a1 + 40)];
}

- (void)client_syncDidStartWithInfo:(id)info
{
  v16 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2C0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 138412546;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = infoCopy;
    _os_log_impl(&dword_2519FE000, v6, OS_LOG_TYPE_DEFAULT, "%@: sync did start: %{public}@", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  self->_didSyncStart = 1;
  delegateQueue = self->_delegateQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__HKClinicalSharingSyncObserver_client_syncDidStartWithInfo___block_invoke;
  v10[3] = &unk_2796DD068;
  v10[4] = self;
  v11 = infoCopy;
  v8 = infoCopy;
  dispatch_async(delegateQueue, v10);
  os_unfair_lock_unlock(&self->_lock);

  v9 = *MEMORY[0x277D85DE8];
}

void __61__HKClinicalSharingSyncObserver_client_syncDidStartWithInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 clinicalSharingSyncObserver:*(a1 + 32) syncDidStartWithInfo:*(a1 + 40)];
}

- (void)connectionInterrupted
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_didSyncStart)
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__HKClinicalSharingSyncObserver_connectionInterrupted__block_invoke;
    block[3] = &unk_2796DD090;
    block[4] = self;
    dispatch_async(delegateQueue, block);
    self->_didSyncStart = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __54__HKClinicalSharingSyncObserver_connectionInterrupted__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4097 userInfo:0];
  v2 = [*(a1 + 32) delegate];
  [v2 clinicalSharingSyncObserver:*(a1 + 32) syncDidFinishWithError:v3];
}

- (HKClinicalSharingSyncObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)resumeWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKClinicalSharingSyncObserver.m" lineNumber:59 description:@"Delegate must be set before resume"];
}

void __54__HKClinicalSharingSyncObserver_resumeWithCompletion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_2519FE000, a2, a3, "Failed to begin observing clinical sharing sync status: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __54__HKClinicalSharingSyncObserver_resumeWithCompletion___block_invoke_2_311_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_2519FE000, a2, a3, "Failed to begin observing clinical sharing sync status after reconnection: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end