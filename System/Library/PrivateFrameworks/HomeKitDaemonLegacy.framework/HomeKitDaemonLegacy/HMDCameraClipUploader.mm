@interface HMDCameraClipUploader
+ (id)logCategory;
- (BOOL)_isCancelledError:(id)a3;
- (BOOL)hasAddedCreateClipOperation;
- (HMDCameraClipUploader)initWithClipUUID:(id)a3 startDate:(id)a4 targetFragmentDuration:(double)a5 quality:(int64_t)a6 localZone:(id)a7 workQueue:(id)a8 logIdentifier:(id)a9;
- (HMDCameraClipUploader)initWithClipUUID:(id)a3 startDate:(id)a4 targetFragmentDuration:(double)a5 quality:(int64_t)a6 localZone:(id)a7 workQueue:(id)a8 logIdentifier:(id)a9 encryptionManager:(id)a10 factory:(id)a11;
- (HMDCameraClipUploadingDelegate)delegate;
- (NSDictionary)stateDump;
- (id)_addOperation:(id)a3 isFinalOperation:(BOOL)a4;
- (id)_createClip;
- (id)_createClipWithSignificantEvent:(id)a3 homePresenceByPairingIdentity:(id)a4;
- (id)attributeDescriptions;
- (void)_handleFatalOperationFailureDueToError:(id)a3;
- (void)_operationCompleted:(id)a3 isFinalOperation:(BOOL)a4 future:(id)a5;
- (void)_startNextOperation;
- (void)addSignificantEvent:(id)a3 homePresenceByPairingIdentity:(id)a4 completionHandler:(id)a5;
- (void)addVideoInitData:(id)a3 completionHandler:(id)a4;
- (void)createClipWithCompletionHandler:(id)a3;
- (void)finishWithCompletionHandler:(id)a3;
@end

@implementation HMDCameraClipUploader

- (HMDCameraClipUploadingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDCameraClipUploader *)self logIdentifier];
  v5 = [v3 initWithName:@"Identifier" value:v4];
  v19[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDCameraClipUploader *)self clipUUID];
  v8 = [v6 initWithName:@"Clip UUID" value:v7];
  v19[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDCameraClipUploader *)self startDate];
  v11 = [v9 initWithName:@"Start Date" value:v10];
  v19[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = MEMORY[0x277CCABB0];
  [(HMDCameraClipUploader *)self targetFragmentDuration];
  v14 = [v13 numberWithDouble:?];
  v15 = [v12 initWithName:@"Target Fragment Duration" value:v14];
  v19[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)_isCancelledError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:@"HMDCameraClipUploaderErrorDomain"])
  {
    v5 = [v3 code] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_handleFatalOperationFailureDueToError:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipUploader *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = MEMORY[0x277CCA9B8];
  if (v4)
  {
    v21 = *MEMORY[0x277CCA7E8];
    v22[0] = v4;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v8 = [v6 errorWithDomain:@"HMDCameraClipUploaderErrorDomain" code:1 userInfo:v7];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMDCameraClipUploaderErrorDomain" code:1 userInfo:0];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [(HMDCameraClipUploader *)self operations];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v16 + 1) + 8 * v13++) cancelWithError:v8];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v14 = [(HMDCameraClipUploader *)self delegate];
  [v14 clipUploaderDidFail:self];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_startNextOperation
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraClipUploader *)self operations];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting next operation: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v4 start];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_operationCompleted:(id)a3 isFinalOperation:(BOOL)a4 future:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [v8 error];
  if (v10 && !a4 && ![(HMDCameraClipUploader *)self _isCancelledError:v10])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v21 = 138543874;
      v22 = v14;
      v23 = 2114;
      v24 = v8;
      v25 = 2114;
      v26 = v10;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Handling fatal error for operation %{public}@: %{public}@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDCameraClipUploader *)v12 _handleFatalOperationFailureDueToError:v10];
  }

  v15 = [(HMDCameraClipUploader *)self operations];
  [v15 removeObject:v8];

  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v21 = 138543618;
    v22 = v19;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Operation completed: %@", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  [(HMDCameraClipUploader *)v17 _startNextOperation];
  if (v10)
  {
    [v9 finishWithError:v10];
  }

  else
  {
    [v9 finishWithNoResult];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_addOperation:(id)a3 isFinalOperation:(BOOL)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDCameraClipUploader *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = objc_alloc_init(MEMORY[0x277D2C900]);
  objc_initWeak(&location, v6);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __56__HMDCameraClipUploader__addOperation_isFinalOperation___block_invoke;
  v21[3] = &unk_279730EA0;
  v21[4] = self;
  objc_copyWeak(&v23, &location);
  v24 = a4;
  v9 = v8;
  v22 = v9;
  [v6 setCompletionBlock:v21];
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v13;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Adding operation to queue: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [(HMDCameraClipUploader *)v11 operations];
  [v14 addObject:v6];

  v15 = [(HMDCameraClipUploader *)v11 operations];
  v16 = [v15 count] == 1;

  if (v16)
  {
    [(HMDCameraClipUploader *)v11 _startNextOperation];
  }

  v17 = v22;
  v18 = v9;

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __56__HMDCameraClipUploader__addOperation_isFinalOperation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__HMDCameraClipUploader__addOperation_isFinalOperation___block_invoke_2;
  v4[3] = &unk_279730EA0;
  objc_copyWeak(&v6, (a1 + 48));
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v7 = *(a1 + 56);
  v5 = v3;
  dispatch_async(v2, v4);

  objc_destroyWeak(&v6);
}

void __56__HMDCameraClipUploader__addOperation_isFinalOperation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [*(a1 + 32) _operationCompleted:WeakRetained isFinalOperation:*(a1 + 56) future:*(a1 + 40)];
}

- (id)_createClipWithSignificantEvent:(id)a3 homePresenceByPairingIdentity:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDCameraClipUploader *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDCameraClipUploader *)self factory];
  v10 = [(HMDCameraClipUploader *)self clipUUID];
  v11 = [(HMDCameraClipUploader *)self localZone];
  [(HMDCameraClipUploader *)self targetFragmentDuration];
  v13 = v12;
  v14 = [(HMDCameraClipUploader *)self startDate];
  v15 = [(HMDCameraClipUploader *)self quality];
  v16 = [(HMDCameraClipUploader *)self encryptionManager];
  v17 = [v9 createCreateClipWithSignificantEventOperationForClipModelID:v10 localZone:v11 significantEvent:v7 homePresenceByPairingIdentity:v6 targetFragmentDuration:v14 clipStartDate:v15 quality:v13 encryptionManager:v16];

  v18 = [(HMDCameraClipUploader *)self _addOperation:v17 isFinalOperation:0];

  return v18;
}

- (id)_createClip
{
  v3 = [(HMDCameraClipUploader *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraClipUploader *)self factory];
  v5 = [(HMDCameraClipUploader *)self clipUUID];
  v6 = [(HMDCameraClipUploader *)self localZone];
  [(HMDCameraClipUploader *)self targetFragmentDuration];
  v8 = v7;
  v9 = [(HMDCameraClipUploader *)self startDate];
  v10 = [(HMDCameraClipUploader *)self quality];
  v11 = [(HMDCameraClipUploader *)self encryptionManager];
  v12 = [v4 createCreateClipOperationForClipModelID:v5 localZone:v6 targetFragmentDuration:v9 clipStartDate:v10 quality:v11 encryptionManager:v8];

  v13 = [(HMDCameraClipUploader *)self _addOperation:v12 isFinalOperation:0];

  return v13;
}

- (BOOL)hasAddedCreateClipOperation
{
  v2 = [(HMDCameraClipUploader *)self didCreateClipFuture];
  v3 = v2 != 0;

  return v3;
}

- (void)finishWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraClipUploader *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraClipUploader *)self factory];
  v7 = [(HMDCameraClipUploader *)self clipUUID];
  v8 = [(HMDCameraClipUploader *)self localZone];
  v9 = [v6 createFinalizeClipOperationForModelID:v7 localZone:v8];

  v10 = [(HMDCameraClipUploader *)self _addOperation:v9 isFinalOperation:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__HMDCameraClipUploader_finishWithCompletionHandler___block_invoke;
  v13[3] = &unk_279730E28;
  v14 = v4;
  v11 = v4;
  v12 = [v10 addCompletionBlock:v13];
}

void __53__HMDCameraClipUploader_finishWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = _Block_copy(*(a1 + 32));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }
}

void __133__HMDCameraClipUploader_addVideoSegmentData_timeOffsetWithinClip_duration_clipFinalizedBecauseMaxDurationExceeded_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = _Block_copy(*(a1 + 32));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }
}

- (void)addVideoInitData:(id)a3 completionHandler:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDCameraClipUploader *)self workQueue];
  dispatch_assert_queue_V2(v8);

  if ([(HMDCameraClipUploader *)self hasAddedCreateClipOperation])
  {
    v9 = objc_alloc_init(HMDCameraClipSegmentMetadata);
    [(HMDCameraClipSegmentMetadata *)v9 setType:0];
    v10 = [(HMDCameraClipUploader *)self factory];
    v11 = [(HMDCameraClipUploader *)self clipUUID];
    v12 = [(HMDCameraClipUploader *)self localZone];
    v13 = [(HMDCameraClipUploader *)self encryptionManager];
    v14 = [v10 createUploadVideoSegmentOperationForModelID:v11 localZone:v12 data:v6 metadata:v9 encryptionManager:v13];

    v15 = [(HMDCameraClipUploader *)self _addOperation:v14 isFinalOperation:0];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __60__HMDCameraClipUploader_addVideoInitData_completionHandler___block_invoke;
    v22[3] = &unk_279730E28;
    v23 = v7;
    v16 = [v15 addCompletionBlock:v22];

LABEL_7:
    goto LABEL_8;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v20;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Asked to add video init data before clip has been created", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v17);
  v9 = _Block_copy(v7);
  if (v9)
  {
    v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    (v9->_byteOffset)(v9, v14);
    goto LABEL_7;
  }

LABEL_8:

  v21 = *MEMORY[0x277D85DE8];
}

void __60__HMDCameraClipUploader_addVideoInitData_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = _Block_copy(*(a1 + 32));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }
}

- (void)addSignificantEvent:(id)a3 homePresenceByPairingIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDCameraClipUploader *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(HMDCameraClipUploader *)self didCreateClipFuture];
  if (!v12)
  {
    v12 = [(HMDCameraClipUploader *)self _createClipWithSignificantEvent:v8 homePresenceByPairingIdentity:v9];
    [(HMDCameraClipUploader *)self setDidCreateClipFuture:v12];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __93__HMDCameraClipUploader_addSignificantEvent_homePresenceByPairingIdentity_completionHandler___block_invoke;
    v30[3] = &unk_279730E28;
    v31 = v10;
    v13 = [v12 addCompletionBlock:v30];
  }

  v14 = [(HMDCameraClipUploader *)self factory];
  v15 = [(HMDCameraClipUploader *)self clipUUID];
  v16 = [(HMDCameraClipUploader *)self localZone];
  v17 = [v14 createAddSignificantEventOperationForClipModelID:v15 localZone:v16 significantEvent:v8 homePresenceByPairingIdentity:v9];

  objc_initWeak(&location, v17);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __93__HMDCameraClipUploader_addSignificantEvent_homePresenceByPairingIdentity_completionHandler___block_invoke_2;
  v26[3] = &unk_279730E50;
  v26[4] = self;
  objc_copyWeak(&v28, &location);
  v18 = v10;
  v27 = v18;
  [v17 setCompletionBlock:v26];
  objc_initWeak(&from, self);
  v19 = [(HMDCameraClipUploader *)self didCreateClipFuture];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __93__HMDCameraClipUploader_addSignificantEvent_homePresenceByPairingIdentity_completionHandler___block_invoke_4;
  v22[3] = &unk_279730E78;
  objc_copyWeak(&v24, &from);
  v20 = v17;
  v23 = v20;
  v21 = [v19 addSuccessBlock:v22];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __93__HMDCameraClipUploader_addSignificantEvent_homePresenceByPairingIdentity_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = _Block_copy(*(a1 + 32));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }
}

void __93__HMDCameraClipUploader_addSignificantEvent_homePresenceByPairingIdentity_completionHandler___block_invoke_2(id *a1)
{
  v2 = [a1[4] workQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __93__HMDCameraClipUploader_addSignificantEvent_homePresenceByPairingIdentity_completionHandler___block_invoke_3;
  v3[3] = &unk_279731EB8;
  objc_copyWeak(&v5, a1 + 6);
  v4 = a1[5];
  dispatch_async(v2, v3);

  objc_destroyWeak(&v5);
}

void __93__HMDCameraClipUploader_addSignificantEvent_homePresenceByPairingIdentity_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 32);
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting significant event operation: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [*(a1 + 32) start];

  v10 = *MEMORY[0x277D85DE8];
}

void __93__HMDCameraClipUploader_addSignificantEvent_homePresenceByPairingIdentity_completionHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = _Block_copy(*(a1 + 32));
  if (v2)
  {
    v3 = [WeakRetained error];
    v2[2](v2, v3);
  }
}

- (void)createClipWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraClipUploader *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraClipUploader *)self didCreateClipFuture];

  if (v6)
  {
    v20 = _HMFPreconditionFailure();
    __57__HMDCameraClipUploader_createClipWithCompletionHandler___block_invoke(v20, v21, v22);
  }

  else
  {
    v7 = [(HMDCameraClipUploader *)self factory];
    v8 = [(HMDCameraClipUploader *)self clipUUID];
    v9 = [(HMDCameraClipUploader *)self localZone];
    [(HMDCameraClipUploader *)self targetFragmentDuration];
    v11 = v10;
    v12 = [(HMDCameraClipUploader *)self startDate];
    v13 = [(HMDCameraClipUploader *)self quality];
    v14 = [(HMDCameraClipUploader *)self encryptionManager];
    v15 = [v7 createCreateClipOperationForClipModelID:v8 localZone:v9 targetFragmentDuration:v12 clipStartDate:v13 quality:v14 encryptionManager:v11];

    v16 = [(HMDCameraClipUploader *)self _addOperation:v15 isFinalOperation:0];
    [(HMDCameraClipUploader *)self setDidCreateClipFuture:v16];

    v17 = [(HMDCameraClipUploader *)self didCreateClipFuture];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __57__HMDCameraClipUploader_createClipWithCompletionHandler___block_invoke;
    v23[3] = &unk_279730E28;
    v24 = v4;
    v18 = v4;
    v19 = [v17 addCompletionBlock:v23];
  }
}

void __57__HMDCameraClipUploader_createClipWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = _Block_copy(*(a1 + 32));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }
}

- (NSDictionary)stateDump
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDCameraClipUploader *)self operations];
  v5 = [v4 firstObject];
  v6 = [v5 description];
  [v3 setObject:v6 forKeyedSubscript:@"Current Operation"];

  v7 = MEMORY[0x277CCABB0];
  v8 = [(HMDCameraClipUploader *)self operations];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
  [v3 setObject:v9 forKeyedSubscript:@"Total Operations Count"];

  v10 = [v3 copy];

  return v10;
}

- (HMDCameraClipUploader)initWithClipUUID:(id)a3 startDate:(id)a4 targetFragmentDuration:(double)a5 quality:(int64_t)a6 localZone:(id)a7 workQueue:(id)a8 logIdentifier:(id)a9 encryptionManager:(id)a10 factory:(id)a11
{
  v18 = a3;
  v19 = a4;
  v44 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  if (!v18)
  {
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!v19)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (fabs(a5) < 2.22044605e-16)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!v44)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!v20)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!v21)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  if (!v22)
  {
LABEL_18:
    _HMFPreconditionFailure();
    goto LABEL_19;
  }

  v24 = v23;
  if (!v23)
  {
LABEL_19:
    v34 = _HMFPreconditionFailure();
    return [(HMDCameraClipUploader *)v34 initWithClipUUID:v35 startDate:v36 targetFragmentDuration:v37 quality:v42 localZone:v38 workQueue:v39 logIdentifier:v40, v41];
  }

  v45.receiver = self;
  v45.super_class = HMDCameraClipUploader;
  v25 = [(HMDCameraClipUploader *)&v45 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_clipUUID, a3);
    v27 = [v19 copy];
    startDate = v26->_startDate;
    v26->_startDate = v27;

    v26->_targetFragmentDuration = a5;
    v26->_quality = a6;
    objc_storeStrong(&v26->_localZone, a7);
    objc_storeStrong(&v26->_workQueue, a8);
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v21, v18];
    logIdentifier = v26->_logIdentifier;
    v26->_logIdentifier = v29;

    objc_storeStrong(&v26->_encryptionManager, a10);
    objc_storeStrong(&v26->_factory, a11);
    v31 = [MEMORY[0x277CBEB18] array];
    operations = v26->_operations;
    v26->_operations = v31;
  }

  return v26;
}

- (HMDCameraClipUploader)initWithClipUUID:(id)a3 startDate:(id)a4 targetFragmentDuration:(double)a5 quality:(int64_t)a6 localZone:(id)a7 workQueue:(id)a8 logIdentifier:(id)a9
{
  v16 = MEMORY[0x277CD18E0];
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a4;
  v21 = a3;
  v22 = objc_alloc_init(v16);
  v23 = objc_alloc_init(HMDCameraClipUploaderFactory);
  v24 = [(HMDCameraClipUploader *)self initWithClipUUID:v21 startDate:v20 targetFragmentDuration:a6 quality:v19 localZone:v18 workQueue:v17 logIdentifier:a5 encryptionManager:v22 factory:v23];

  return v24;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t15_163715 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t15_163715, &__block_literal_global_163716);
  }

  v3 = logCategory__hmf_once_v16_163717;

  return v3;
}

uint64_t __36__HMDCameraClipUploader_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v16_163717;
  logCategory__hmf_once_v16_163717 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end