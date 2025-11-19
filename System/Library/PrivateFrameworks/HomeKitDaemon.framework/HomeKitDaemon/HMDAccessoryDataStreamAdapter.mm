@interface HMDAccessoryDataStreamAdapter
+ (id)logCategory;
- (BOOL)_handleFrame:(id)a3;
- (BOOL)isBulkSendActive;
- (BOOL)isSessionOpenInProgress;
- (HMDAccessoryDataStreamAdapter)initWithAccessory:(id)a3 workQueue:(id)a4 fileType:(id)a5 metadata:(id)a6 reason:(id)a7;
- (HMDAccessoryDataStreamAdapterDelegate)delegate;
- (HMDHAPAccessory)accessory;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (void)_bulkSendDidComplete;
- (void)_bulkSendDidFail;
- (void)_callPendingOpenSessionCallbackWithResult:(id)a3 error:(id)a4;
- (void)_handleAccessoryDidClose;
- (void)_openSession;
- (void)_setUpTransport;
- (void)accessory:(id)a3 didCloseDataStreamWithError:(id)a4;
- (void)accessoryDidStartListening:(id)a3;
- (void)callPendingOpenSessionCallbackWithResult:(id)a3 error:(id)a4;
- (void)dealloc;
- (void)readData;
- (void)setUpWithCallback:(id)a3;
- (void)shutDown;
@end

@implementation HMDAccessoryDataStreamAdapter

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (HMDAccessoryDataStreamAdapterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDAccessoryDataStreamAdapter *)self accessory];
  v3 = [v2 logIdentifier];

  return v3;
}

- (void)accessory:(id)a3 didCloseDataStreamWithError:(id)a4
{
  v5 = a3;
  v6 = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__HMDAccessoryDataStreamAdapter_accessory_didCloseDataStreamWithError___block_invoke;
  v8[3] = &unk_27868A750;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __71__HMDAccessoryDataStreamAdapter_accessory_didCloseDataStreamWithError___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessory];
  v3 = *(a1 + 40);

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v2 == v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 32) accessory];
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Accessory:%@ closed data stream", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _handleAccessoryDidClose];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 32) accessory];
      v10 = *(a1 + 40);
      v14 = 138543874;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Accessory Closed Data Stream, expected accessory: %@ actual accessory: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)accessoryDidStartListening:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HMDAccessoryDataStreamAdapter_accessoryDidStartListening___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __60__HMDAccessoryDataStreamAdapter_accessoryDidStartListening___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessory];
  v3 = *(a1 + 40);

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v2 == v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 32) accessory];
      v19 = 138543618;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Accessory:%@ started listening", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setTransportReady:1];
    v13 = [*(a1 + 32) pendingOpenSessionCallback];

    if (v13)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 32);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v17;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Handling pending start bulk send session request", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      [*(a1 + 32) _openSession];
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 32) accessory];
      v10 = *(a1 + 40);
      v19 = 138543874;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Accessory start listening failed, expected accessory: %@ actual accessory: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_bulkSendDidComplete
{
  v3 = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDAccessoryDataStreamAdapter *)self isBulkSendActive])
  {
    [(HMDAccessoryDataStreamAdapter *)self setDidBulkSendComplete:1];
  }

  v4 = [(HMDAccessoryDataStreamAdapter *)self delegate];
  [v4 dataStreamAdapterDidCompleteDataRead:self];
}

- (void)_bulkSendDidFail
{
  v3 = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDAccessoryDataStreamAdapter *)self isBulkSendActive])
  {
    [(HMDAccessoryDataStreamAdapter *)self setDidBulkSendFail:1];
  }

  v4 = [(HMDAccessoryDataStreamAdapter *)self delegate];
  [v4 dataStreamAdapterDidFailDataRead:self];
}

- (BOOL)_handleFrame:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDAccessoryDataStreamAdapter *)self delegate];
  LOBYTE(self) = [v6 dataStreamAdapter:self didReceiveData:v4];

  return self;
}

- (BOOL)isSessionOpenInProgress
{
  v2 = self;
  v3 = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAccessoryDataStreamAdapter *)v2 pendingOpenSessionCallback];
  LOBYTE(v2) = v4 != 0;

  return v2;
}

- (void)_handleAccessoryDidClose
{
  v3 = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAccessoryDataStreamAdapter *)self accessory];
  v5 = HAPStringFromAccessoryServerSession();
  [v4 deregisterFromSessionRestore:v5];

  v6 = [(HMDAccessoryDataStreamAdapter *)self pendingOpenSessionCallback];

  if (v6)
  {
    [(HMDAccessoryDataStreamAdapter *)self setTransportReady:0];
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    [(HMDAccessoryDataStreamAdapter *)self _callPendingOpenSessionCallbackWithResult:0 error:v7];
  }

  else if ([(HMDAccessoryDataStreamAdapter *)self isBulkSendActive])
  {

    [(HMDAccessoryDataStreamAdapter *)self _bulkSendDidFail];
  }
}

- (void)_callPendingOpenSessionCallbackWithResult:(id)a3 error:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 session];
  [(HMDAccessoryDataStreamAdapter *)self setCurrentBulkSendSession:v9];

  v10 = [(HMDAccessoryDataStreamAdapter *)self pendingOpenSessionCallback];
  [(HMDAccessoryDataStreamAdapter *)self setPendingOpenSessionCallback:0];
  if (!v7)
  {
    v11 = [(HMDAccessoryDataStreamAdapter *)self accessory];
    v12 = HAPStringFromAccessoryServerSession();
    [v11 registerForSessionRestore:v12];
  }

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v18 = 138543874;
    v19 = v16;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Calling pending callback with result: %@ error: %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  (v10)[2](v10, v6, v7);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)callPendingOpenSessionCallbackWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HMDAccessoryDataStreamAdapter_callPendingOpenSessionCallbackWithResult_error___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __80__HMDAccessoryDataStreamAdapter_callPendingOpenSessionCallbackWithResult_error___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pendingOpenSessionCallback];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *MEMORY[0x277D85DE8];

    [v3 _callPendingOpenSessionCallbackWithResult:v4 error:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Pending open session callback was unexpectedly nil", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = *MEMORY[0x277D85DE8];
  }
}

- (void)_openSession
{
  v3 = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  dispatch_assert_queue_V2(v3);

  objc_initWeak(&location, self);
  v4 = [(HMDAccessoryDataStreamAdapter *)self accessory];
  v5 = [(HMDAccessoryDataStreamAdapter *)self fileType];
  v6 = [(HMDAccessoryDataStreamAdapter *)self reason];
  v7 = [(HMDAccessoryDataStreamAdapter *)self metadata];
  v8 = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__HMDAccessoryDataStreamAdapter__openSession__block_invoke;
  v9[3] = &unk_278672FB8;
  objc_copyWeak(&v10, &location);
  [v4 openBulkSendSessionForFileType:v5 reason:v6 metadata:v7 queue:v8 callback:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __45__HMDAccessoryDataStreamAdapter__openSession__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained callPendingOpenSessionCallbackWithResult:v6 error:v5];
}

- (void)_setUpTransport
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Setting up data stream transport", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDAccessoryDataStreamAdapter *)v5 accessory];
  v9 = [(HMDAccessoryDataStreamAdapter *)v5 fileType];
  [v8 addDataStreamBulkSendListener:v5 fileType:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)readData
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAccessoryDataStreamAdapter *)self currentBulkSendSession];

  if (v4)
  {
    v5 = [(HMDAccessoryDataStreamAdapter *)self currentBulkSendSession];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__HMDAccessoryDataStreamAdapter_readData__block_invoke;
    v12[3] = &unk_278689230;
    v12[4] = self;
    [v5 read:v12];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [(HMDAccessoryDataStreamAdapter *)v7 accessory];
      *buf = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Read data failed with no bulkSend session present for accessory:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDAccessoryDataStreamAdapter *)v7 _bulkSendDidFail];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __41__HMDAccessoryDataStreamAdapter_readData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v7);

  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

      objc_autoreleasePoolPop(v8);
      [*(a1 + 32) _bulkSendDidFail];
      goto LABEL_6;
    }

    v11 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v11;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Diagnostics transfer read data channel has error:(%@)", &v21, 0x16u);
LABEL_4:

    goto LABEL_5;
  }

  if (v5 && ([*(a1 + 32) _handleFrame:v5] & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    v11 = HMFGetLogIdentifier();
    v20 = [*(a1 + 32) accessory];
    v21 = 138543618;
    v22 = v11;
    v23 = 2112;
    v24 = v20;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Received data frame is not accepted for accessory:%@", &v21, 0x16u);

    goto LABEL_4;
  }

  v13 = [*(a1 + 32) currentBulkSendSession];
  v14 = [v13 isActive];

  if (v14)
  {
    [*(a1 + 32) readData];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [*(a1 + 32) accessory];
      v21 = 138543618;
      v22 = v18;
      v23 = 2112;
      v24 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Diagnostics data transfer is completed for accessory:%@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    [*(a1 + 32) _bulkSendDidComplete];
  }

LABEL_6:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setUpWithCallback:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDAccessoryDataStreamAdapter *)self pendingOpenSessionCallback];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Session is being setup already", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:15];
    v4[2](v4, 0, v11);
  }

  else
  {
    [(HMDAccessoryDataStreamAdapter *)self _setUpTransport];
    [(HMDAccessoryDataStreamAdapter *)self setPendingOpenSessionCallback:v4];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isBulkSendActive
{
  v3 = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAccessoryDataStreamAdapter *)self currentBulkSendSession];
  if (v4 && ![(HMDAccessoryDataStreamAdapter *)self didBulkSendFail])
  {
    v5 = ![(HMDAccessoryDataStreamAdapter *)self didBulkSendComplete];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = v4;
  v8.super_class = HMDAccessoryDataStreamAdapter;
  [(HMDAccessoryDataStreamAdapter *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)shutDown
{
  v3 = [(HMDAccessoryDataStreamAdapter *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAccessoryDataStreamAdapter *)self currentBulkSendSession];

  if (v4)
  {
    v5 = [(HMDAccessoryDataStreamAdapter *)self didBulkSendComplete];
    v6 = [(HMDAccessoryDataStreamAdapter *)self currentBulkSendSession];
    v7 = v6;
    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = 5;
    }

    [v6 cancelWithReason:v8];

    [(HMDAccessoryDataStreamAdapter *)self setCurrentBulkSendSession:0];
  }

  v9 = [(HMDAccessoryDataStreamAdapter *)self pendingOpenSessionCallback];

  if (v9)
  {
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    [(HMDAccessoryDataStreamAdapter *)self _callPendingOpenSessionCallbackWithResult:0 error:v10];
  }

  v12 = [(HMDAccessoryDataStreamAdapter *)self accessory];
  if (v12)
  {
    [v12 removeDataStreamBulkSendListener:self];
    v11 = HAPStringFromAccessoryServerSession();
    [v12 deregisterFromSessionRestore:v11];
  }

  [(HMDAccessoryDataStreamAdapter *)self setTransportReady:0];
}

- (id)attributeDescriptions
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDAccessoryDataStreamAdapter *)self fileType];
  v5 = [v3 initWithName:@"Diagnostics DataStream File Type" value:v4];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAccessoryDataStreamAdapter *)self transportReady];
  v7 = HMFBooleanToString();
  v8 = [v6 initWithName:@"TransportReady" value:v7];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAccessoryDataStreamAdapter *)self didBulkSendFail];
  v10 = HMFBooleanToString();
  v11 = [v9 initWithName:@"DidBulkSendFail" value:v10];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAccessoryDataStreamAdapter *)self didBulkSendComplete];
  v13 = HMFBooleanToString();
  v14 = [v12 initWithName:@"DidBulkSendComplete" value:v13];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (HMDAccessoryDataStreamAdapter)initWithAccessory:(id)a3 workQueue:(id)a4 fileType:(id)a5 metadata:(id)a6 reason:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = HMDAccessoryDataStreamAdapter;
  v17 = [(HMDAccessoryDataStreamAdapter *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_accessory, v12);
    objc_storeStrong(&v18->_workQueue, a4);
    objc_storeStrong(&v18->_fileType, a5);
    objc_storeStrong(&v18->_reason, a7);
    objc_storeStrong(&v18->_metadata, a6);
  }

  return v18;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_43358 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_43358, &__block_literal_global_43359);
  }

  v3 = logCategory__hmf_once_v15_43360;

  return v3;
}

void __44__HMDAccessoryDataStreamAdapter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v15_43360;
  logCategory__hmf_once_v15_43360 = v1;
}

@end