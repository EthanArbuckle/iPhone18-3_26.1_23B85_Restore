@interface HMDCameraRecordingBulkSendListener
+ (id)logCategory;
- (BOOL)isSessionOpenInProgress;
- (HMDCameraRecordingBulkSendListener)initWithWorkQueue:(id)queue;
- (HMDCameraRecordingBulkSendListenerDelegate)delegate;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (void)_callPendingOpenSessionCallbackWithResult:(void *)result error:;
- (void)accessory:(id)accessory didCloseDataStreamWithError:(id)error;
- (void)accessoryDidStartListening:(id)listening;
- (void)addPendingBulkSendSessionCallback:(id)callback;
- (void)openBulkSendSessionWithAccessory:(id)accessory callback:(id)callback;
@end

@implementation HMDCameraRecordingBulkSendListener

- (HMDCameraRecordingBulkSendListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  uUID = [(HMDCameraRecordingBulkSendListener *)self UUID];
  v5 = [v3 initWithName:@"UUID" value:uUID];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)logIdentifier
{
  uUID = [(HMDCameraRecordingBulkSendListener *)self UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (void)accessory:(id)accessory didCloseDataStreamWithError:(id)error
{
  errorCopy = error;
  if (self)
  {
    Property = objc_getProperty(self, v5, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HMDCameraRecordingBulkSendListener_accessory_didCloseDataStreamWithError___block_invoke;
  v9[3] = &unk_2797359B0;
  v9[4] = self;
  v10 = errorCopy;
  v8 = errorCopy;
  dispatch_async(Property, v9);
}

void __76__HMDCameraRecordingBulkSendListener_accessory_didCloseDataStreamWithError___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory did close data stream", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3305];
  }

  v8 = v7;
  [(HMDCameraRecordingBulkSendListener *)*(a1 + 32) _callPendingOpenSessionCallbackWithResult:v7 error:?];
  v9 = [*(a1 + 32) delegate];
  [v9 listenerDidReceiveDataStreamClose:*(a1 + 32)];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_callPendingOpenSessionCallbackWithResult:(void *)result error:
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  resultCopy = result;
  if (self)
  {
    Property = objc_getProperty(self, v6, 24, 1);
    dispatch_assert_queue_V2(Property);
    v10 = objc_getProperty(self, v9, 32, 1);
    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v17 = 138543874;
        v18 = v14;
        v19 = 2112;
        v20 = v5;
        v21 = 2112;
        v22 = resultCopy;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Calling pending callback with result: %@ error: %@", &v17, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      objc_setProperty_atomic_copy(selfCopy, v15, 0, 32);
      v10[2](v10, v5, resultCopy);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)accessoryDidStartListening:(id)listening
{
  listeningCopy = listening;
  if (self)
  {
    Property = objc_getProperty(self, v4, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__HMDCameraRecordingBulkSendListener_accessoryDidStartListening___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = listeningCopy;
  v7 = listeningCopy;
  dispatch_async(Property, v8);
}

void __65__HMDCameraRecordingBulkSendListener_accessoryDidStartListening___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Accessory did start listening", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = objc_getProperty(v7, v6, 32, 1);
    if (v8)
    {
      v9 = v8;
      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 32);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v13;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling pending open bulk send session request", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      [*(a1 + 32) openBulkSendSessionWithAccessory:*(a1 + 40) callback:v9];
    }
  }

  v14 = [*(a1 + 32) delegate];
  [v14 listenerDidReceiveDataStreamStart:*(a1 + 32)];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)openBulkSendSessionWithAccessory:(id)accessory callback:(id)callback
{
  callbackCopy = callback;
  accessoryCopy = accessory;
  if (self)
  {
    Property = objc_getProperty(self, v8, 24, 1);
    dispatch_assert_queue_V2(Property);
    objc_setProperty_atomic_copy(self, v10, callbackCopy, 32);
    v12 = objc_getProperty(self, v11, 24, 1);
  }

  else
  {
    dispatch_assert_queue_V2(0);
    v12 = 0;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__HMDCameraRecordingBulkSendListener_openBulkSendSessionWithAccessory_callback___block_invoke;
  v13[3] = &unk_27972D078;
  v13[4] = self;
  [accessory openBulkSendSessionForFileType:@"ipcamera.recording" reason:@"record" metadata:0 queue:v12 callback:v13];
}

void __80__HMDCameraRecordingBulkSendListener_openBulkSendSessionWithAccessory_callback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  if (v8)
  {
    Property = objc_getProperty(v8, v6, 24, 1);
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = 0;
    Property = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HMDCameraRecordingBulkSendListener_openBulkSendSessionWithAccessory_callback___block_invoke_2;
  block[3] = &unk_279734960;
  block[4] = v10;
  v14 = v5;
  v15 = v7;
  v11 = v7;
  v12 = v5;
  dispatch_async(Property, block);
}

- (void)addPendingBulkSendSessionCallback:(id)callback
{
  newValue = callback;
  if (self)
  {
    Property = objc_getProperty(self, v4, 24, 1);
    dispatch_assert_queue_V2(Property);
    objc_setProperty_atomic_copy(self, v6, newValue, 32);
  }

  else
  {
    dispatch_assert_queue_V2(0);
  }
}

- (BOOL)isSessionOpenInProgress
{
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
  }

  return self != 0;
}

- (HMDCameraRecordingBulkSendListener)initWithWorkQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = HMDCameraRecordingBulkSendListener;
  v6 = [(HMDCameraRecordingBulkSendListener *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workQueue, queue);
    uUID = [MEMORY[0x277CCAD78] UUID];
    UUID = v7->_UUID;
    v7->_UUID = uUID;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_132798 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_132798, &__block_literal_global_132799);
  }

  v3 = logCategory__hmf_once_v5_132800;

  return v3;
}

uint64_t __49__HMDCameraRecordingBulkSendListener_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_132800;
  logCategory__hmf_once_v5_132800 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end