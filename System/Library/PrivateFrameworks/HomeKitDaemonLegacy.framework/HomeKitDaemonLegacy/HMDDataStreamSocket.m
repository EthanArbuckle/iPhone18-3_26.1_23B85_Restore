@interface HMDDataStreamSocket
- (BOOL)isClosed;
- (BOOL)writeData:(id)a3 error:(id *)a4;
- (HMDDataStreamSocket)initWithStreamProtocol:(id)a3 applicationProtocolName:(id)a4 workQueue:(id)a5;
- (HMDDataStreamSocketDelegate)delegate;
- (HMDDataStreamStreamProtocol)streamProtocol;
- (id)readData;
- (unint64_t)trafficClass;
- (void)_writeData:(id)a3 completion:(id)a4;
- (void)closeInitiated;
- (void)closeWithError:(id)a3;
- (void)handleIncomingData:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setTrafficClass:(unint64_t)a3;
- (void)writeData:(id)a3 completion:(id)a4;
@end

@implementation HMDDataStreamSocket

- (HMDDataStreamStreamProtocol)streamProtocol
{
  WeakRetained = objc_loadWeakRetained(&self->_streamProtocol);

  return WeakRetained;
}

- (void)closeInitiated
{
  os_unfair_lock_lock_with_options();
  self->_closing = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)handleIncomingData:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_pendingReads hmf_enqueue:v4];
  os_unfair_lock_unlock(&self->_lock);
  v5 = [(HMDDataStreamSocket *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDDataStreamSocket_handleIncomingData___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v5, block);
}

void __42__HMDDataStreamSocket_handleIncomingData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 socketDidReceiveData:*(a1 + 32)];
}

- (void)closeWithError:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  if (self->_closed)
  {
    self->_closing = 0;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    *&self->_closing = 256;
    os_unfair_lock_unlock(&self->_lock);
    v5 = [(HMDDataStreamSocket *)self workQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__HMDDataStreamSocket_closeWithError___block_invoke;
    v6[3] = &unk_2797359B0;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void __38__HMDDataStreamSocket_closeWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) streamProtocol];
  [v2 unregisterSocket:*(a1 + 32)];

  v3 = [*(a1 + 32) delegate];
  v4 = *(a1 + 32);
  v5 = v3;
  if (*(a1 + 40))
  {
    [v3 socket:v4 didFailWithError:?];
  }

  else
  {
    [v3 socketDidClose:v4];
  }
}

- (id)readData
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_pendingReads hmf_maybeDequeue];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_writeData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDDataStreamSocket *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMDDataStreamSocket__writeData_completion___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __45__HMDDataStreamSocket__writeData_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) streamProtocol];
  [v2 sendData:*(a1 + 40) socket:*(a1 + 32) completion:*(a1 + 48)];
}

- (void)writeData:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(HMDDataStreamSocket *)self isClosed])
  {
    v7 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1061];
    v6[2](v6, v7);
  }

  else
  {
    [(HMDDataStreamSocket *)self _writeData:v8 completion:v6];
  }
}

- (BOOL)writeData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HMDDataStreamSocket *)self isClosed];
  if (v7)
  {
    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1061];
    }
  }

  else
  {
    [(HMDDataStreamSocket *)self _writeData:v6 completion:0];
  }

  return !v7;
}

- (void)setTrafficClass:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  trafficClass = self->_trafficClass;
  self->_trafficClass = a3;
  os_unfair_lock_unlock(&self->_lock);
  if (trafficClass != a3)
  {
    v6 = [(HMDDataStreamSocket *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__HMDDataStreamSocket_setTrafficClass___block_invoke;
    block[3] = &unk_279728228;
    block[4] = self;
    block[5] = trafficClass;
    block[6] = a3;
    dispatch_async(v6, block);
  }
}

void __39__HMDDataStreamSocket_setTrafficClass___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v10 = 138543874;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    v14 = 2048;
    v15 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Traffic class changed from %lu -> %lu, notifying protocol", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = [*(a1 + 32) streamProtocol];
  [v8 evaluateOptionsForSocket:*(a1 + 32)];

  v9 = *MEMORY[0x277D85DE8];
}

- (unint64_t)trafficClass
{
  os_unfair_lock_lock_with_options();
  trafficClass = self->_trafficClass;
  os_unfair_lock_unlock(&self->_lock);
  return trafficClass;
}

- (BOOL)isClosed
{
  os_unfair_lock_lock_with_options();
  closed = self->_closed;
  os_unfair_lock_unlock(&self->_lock);
  return closed;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDDataStreamSocketDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (HMDDataStreamSocket)initWithStreamProtocol:(id)a3 applicationProtocolName:(id)a4 workQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = HMDDataStreamSocket;
  v11 = [(HMDDataStreamSocket *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_streamProtocol, v8);
    objc_storeStrong(&v12->_applicationProtocolName, a4);
    objc_storeStrong(&v12->_workQueue, a5);
    *&v12->_closing = 0;
    v12->_trafficClass = 0;
    v13 = [MEMORY[0x277CBEB18] array];
    pendingReads = v12->_pendingReads;
    v12->_pendingReads = v13;
  }

  return v12;
}

@end