@interface HMDDataStreamSocket
- (BOOL)isClosed;
- (BOOL)writeData:(id)data error:(id *)error;
- (HMDDataStreamSocket)initWithStreamProtocol:(id)protocol applicationProtocolName:(id)name workQueue:(id)queue;
- (HMDDataStreamSocketDelegate)delegate;
- (HMDDataStreamStreamProtocol)streamProtocol;
- (id)readData;
- (unint64_t)trafficClass;
- (void)_writeData:(id)data completion:(id)completion;
- (void)closeInitiated;
- (void)closeWithError:(id)error;
- (void)handleIncomingData:(id)data;
- (void)setDelegate:(id)delegate;
- (void)setTrafficClass:(unint64_t)class;
- (void)writeData:(id)data completion:(id)completion;
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

- (void)handleIncomingData:(id)data
{
  dataCopy = data;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_pendingReads hmf_enqueue:dataCopy];
  os_unfair_lock_unlock(&self->_lock);
  workQueue = [(HMDDataStreamSocket *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDDataStreamSocket_handleIncomingData___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __42__HMDDataStreamSocket_handleIncomingData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 socketDidReceiveData:*(a1 + 32)];
}

- (void)closeWithError:(id)error
{
  errorCopy = error;
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
    workQueue = [(HMDDataStreamSocket *)self workQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__HMDDataStreamSocket_closeWithError___block_invoke;
    v6[3] = &unk_27868A750;
    v6[4] = self;
    v7 = errorCopy;
    dispatch_async(workQueue, v6);
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
  hmf_maybeDequeue = [(NSMutableArray *)self->_pendingReads hmf_maybeDequeue];
  os_unfair_lock_unlock(&self->_lock);

  return hmf_maybeDequeue;
}

- (void)_writeData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  workQueue = [(HMDDataStreamSocket *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMDDataStreamSocket__writeData_completion___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = dataCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dataCopy;
  dispatch_async(workQueue, block);
}

void __45__HMDDataStreamSocket__writeData_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) streamProtocol];
  [v2 sendData:*(a1 + 40) socket:*(a1 + 32) completion:*(a1 + 48)];
}

- (void)writeData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  if ([(HMDDataStreamSocket *)self isClosed])
  {
    v7 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1061];
    completionCopy[2](completionCopy, v7);
  }

  else
  {
    [(HMDDataStreamSocket *)self _writeData:dataCopy completion:completionCopy];
  }
}

- (BOOL)writeData:(id)data error:(id *)error
{
  dataCopy = data;
  isClosed = [(HMDDataStreamSocket *)self isClosed];
  if (isClosed)
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1061];
    }
  }

  else
  {
    [(HMDDataStreamSocket *)self _writeData:dataCopy completion:0];
  }

  return !isClosed;
}

- (void)setTrafficClass:(unint64_t)class
{
  os_unfair_lock_lock_with_options();
  trafficClass = self->_trafficClass;
  self->_trafficClass = class;
  os_unfair_lock_unlock(&self->_lock);
  if (trafficClass != class)
  {
    workQueue = [(HMDDataStreamSocket *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__HMDDataStreamSocket_setTrafficClass___block_invoke;
    block[3] = &unk_278677D10;
    block[4] = self;
    block[5] = trafficClass;
    block[6] = class;
    dispatch_async(workQueue, block);
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Traffic class changed from %lu -> %lu, notifying protocol", &v10, 0x20u);
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

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, delegateCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDDataStreamSocketDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (HMDDataStreamSocket)initWithStreamProtocol:(id)protocol applicationProtocolName:(id)name workQueue:(id)queue
{
  protocolCopy = protocol;
  nameCopy = name;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = HMDDataStreamSocket;
  v11 = [(HMDDataStreamSocket *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_streamProtocol, protocolCopy);
    objc_storeStrong(&v12->_applicationProtocolName, name);
    objc_storeStrong(&v12->_workQueue, queue);
    *&v12->_closing = 0;
    v12->_trafficClass = 0;
    array = [MEMORY[0x277CBEB18] array];
    pendingReads = v12->_pendingReads;
    v12->_pendingReads = array;
  }

  return v12;
}

@end