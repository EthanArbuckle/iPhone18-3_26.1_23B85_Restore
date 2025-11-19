@interface HMDRapportMessaging
+ (id)logCategory;
+ (id)sharedInstance;
- (BOOL)isRapportDeviceDiscoveredWithIdentifier:(id)a3;
- (HMDRapportMessaging)initWithClientFactory:(id)a3;
- (HMDRapportMessagingReachabilityDelegate)reachabilityDelegate;
- (id)_clientForIDSIdentifier:(id)a3 withDevice:(id)a4;
- (id)_createRapportClientForDevice:(id)a3;
- (void)_completeQuededRequestsOnWorkQueue:(id)a3;
- (void)_configureDiscoveryClientWithCompletion:(id)a3 forRequestIDs:(id)a4;
- (void)_handleRequest:(id)a3 forTopic:(id)a4 options:(id)a5 responseHandler:(id)a6;
- (void)_invalidateDestinationDeviceWithIDSIdentifier:(id)a3;
- (void)_queueRequest:(id)a3 forTopic:(id)a4 options:(id)a5 responseHandler:(id)a6;
- (void)_updateDevice:(id)a3 reachable:(BOOL)a4;
- (void)configureDiscoveryClientForRequestIDs:(id)a3 withCompletion:(id)a4;
- (void)registerRequestHandlerForRequestID:(id)a3 withRequestHandler:(id)a4;
- (void)sendRequest:(id)a3 requestID:(id)a4 destinationID:(id)a5 options:(id)a6 responseHandler:(id)a7;
@end

@implementation HMDRapportMessaging

- (HMDRapportMessagingReachabilityDelegate)reachabilityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_reachabilityDelegate);

  return WeakRetained;
}

- (void)_updateDevice:(id)a3 reachable:(BOOL)a4
{
  v6 = a3;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDRapportMessaging__updateDevice_reachable___block_invoke;
  block[3] = &unk_278688BD0;
  v10 = v6;
  v11 = self;
  v12 = a4;
  v8 = v6;
  dispatch_async(workQueue, block);
}

void __47__HMDRapportMessaging__updateDevice_reachable___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CCAD78]);
  v3 = [*(a1 + 32) idsDeviceIdentifier];
  v4 = [v2 initWithUUIDString:v3];

  if (v4)
  {
    v5 = [*(a1 + 40) reachabilityDelegate];
    [v5 rapportMessaging:*(a1 + 40) idsIdentifier:v4 didAppearReachable:*(a1 + 48)];

    if (*(a1 + 48) == 1)
    {
      v6 = *(a1 + 40);
      v9 = @"HMDHomeDeviceIDSIdentifierKey";
      v10[0] = v4;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      logAndPostNotification(@"HMDHomeDeviceBecameReachableOverRapport", v6, v7);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateDestinationDeviceWithIDSIdentifier:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  dispatch_assert_queue_V2(workQueue);
  os_unfair_lock_lock_with_options();
  if (self)
  {
    deviceClients = self->_deviceClients;
  }

  else
  {
    deviceClients = 0;
  }

  v7 = deviceClients;
  v8 = [(NSMutableDictionary *)v7 objectForKeyedSubscript:v4];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v12;
      v18 = 2114;
      v19 = v4;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Invalidating Rapport client for device: %{public}@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    if (self)
    {
      v13 = v10->_deviceClients;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    [(NSMutableDictionary *)v14 removeObjectForKey:v4];
  }

  os_unfair_lock_unlock(&self->_lock);
  [v8 invalidate];

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_createRapportClientForDevice:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v30 = v8;
    v31 = 2112;
    v32 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Creating Rapport client for device: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (v6)
  {
    clientFactory = v6->_clientFactory;
  }

  else
  {
    clientFactory = 0;
  }

  v10 = [(HMDRapportMessagingClientFactory *)clientFactory newCompanionLinkClient];
  [v10 setDestinationDevice:v4];
  [v10 setControlFlags:0x20000400800];
  [v10 setServiceType:@"com.apple.home.messaging"];
  if (v6)
  {
    workQueue = v6->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  [v10 setDispatchQueue:workQueue];
  v12 = [v4 idsDeviceIdentifier];
  objc_initWeak(buf, v6);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __53__HMDRapportMessaging__createRapportClientForDevice___block_invoke;
  v25[3] = &unk_278685F38;
  objc_copyWeak(&v28, buf);
  v13 = v12;
  v26 = v13;
  v14 = v4;
  v27 = v14;
  [v10 setDisconnectHandler:v25];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __53__HMDRapportMessaging__createRapportClientForDevice___block_invoke_124;
  v22[3] = &unk_278686B48;
  objc_copyWeak(&v24, buf);
  v15 = v14;
  v23 = v15;
  [v10 setInterruptionHandler:v22];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __53__HMDRapportMessaging__createRapportClientForDevice___block_invoke_2;
  v19[3] = &unk_278686B48;
  objc_copyWeak(&v21, buf);
  v16 = v15;
  v20 = v16;
  [v10 setInvalidationHandler:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v24);

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

void __53__HMDRapportMessaging__createRapportClientForDevice___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 32);
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Rapport client disconnected for device: %{public}@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [*(a1 + 40) idsDeviceIdentifier];
  [v4 _invalidateDestinationDeviceWithIDSIdentifier:v8];

  v9 = *MEMORY[0x277D85DE8];
}

void __53__HMDRapportMessaging__createRapportClientForDevice___block_invoke_124(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) idsDeviceIdentifier];
  [WeakRetained _invalidateDestinationDeviceWithIDSIdentifier:v2];
}

void __53__HMDRapportMessaging__createRapportClientForDevice___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [*(a1 + 32) idsDeviceIdentifier];
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Rapport client invalidated for device: %{public}@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)_clientForIDSIdentifier:(id)a3 withDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  dispatch_assert_queue_V2(workQueue);
  v9 = v7;
  os_unfair_lock_lock_with_options();
  if (self)
  {
    deviceClients = self->_deviceClients;
  }

  else
  {
    deviceClients = 0;
  }

  v11 = deviceClients;
  v12 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v6];

  if (v12)
  {
    v13 = v12;
    os_unfair_lock_unlock(&self->_lock);
    v14 = v9;
  }

  else
  {
    v15 = v9;
    if (!v9)
    {
      if (self)
      {
        clientFactory = self->_clientFactory;
      }

      else
      {
        clientFactory = 0;
      }

      v17 = clientFactory;
      v15 = [(HMDRapportMessagingClientFactory *)v17 newCompanionLinkDevice];

      [v15 setIdentifier:v6];
    }

    if (self)
    {
      v18 = self->_clientFactory;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    v20 = [(HMDRapportMessaging *)self _createRapportClientForDevice:v15];
    v21 = [(HMDRapportMessagingClientFactory *)v19 newRapportDeviceClientWrapperWithClient:v20];

    if (self)
    {
      v22 = self->_deviceClients;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    [(NSMutableDictionary *)v23 setObject:v21 forKeyedSubscript:v6];

    os_unfair_lock_unlock(&self->_lock);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __58__HMDRapportMessaging__clientForIDSIdentifier_withDevice___block_invoke;
    v25[3] = &unk_278688D58;
    v25[4] = self;
    v14 = v15;
    v26 = v14;
    v27 = v6;
    [v21 activateWithCompletion:v25];
    v13 = v21;
  }

  return v13;
}

void __58__HMDRapportMessaging__clientForIDSIdentifier_withDevice___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v10 = 138543874;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to activate Rapport client for device: %@, error: %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _invalidateDestinationDeviceWithIDSIdentifier:*(a1 + 48)];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_completeQuededRequestsOnWorkQueue:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  dispatch_assert_queue_V2(workQueue);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        (*(v11 + 16))(v11);
        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [v6 removeAllObjects];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_queueRequest:(id)a3 forTopic:(id)a4 options:(id)a5 responseHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    receiverContexts = self->_receiverContexts;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    receiverContexts = 0;
  }

  v15 = [(NSMutableDictionary *)receiverContexts objectForKeyedSubscript:v11];
  if (!v15)
  {
    v16 = objc_alloc_init(HMDRapportMessagingReceiverContext);
    if (self)
    {
      v17 = self->_receiverContexts;
    }

    else
    {
      v17 = 0;
    }

    [(NSMutableDictionary *)v17 setObject:v16 forKeyedSubscript:v11];
  }

  objc_initWeak(&location, self);
  if (self)
  {
    v18 = self->_receiverContexts;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  v20 = [(NSMutableDictionary *)v19 objectForKeyedSubscript:v11];
  v21 = [v20 requestQueue];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __70__HMDRapportMessaging__queueRequest_forTopic_options_responseHandler___block_invoke;
  v30 = &unk_2786860E8;
  objc_copyWeak(&v35, &location);
  v22 = v13;
  v34 = v22;
  v23 = v11;
  v31 = v23;
  v24 = v10;
  v32 = v24;
  v25 = v12;
  v33 = v25;
  v26 = _Block_copy(&v27);
  [v21 addObject:{v26, v27, v28, v29, v30}];

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

void __70__HMDRapportMessaging__queueRequest_forTopic_options_responseHandler___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v12 = *(a1 + 56);
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 description:@"Unexpected error." reason:@"HMDRapportMessaging has been deallocated." suggestion:0];
    (*(v12 + 16))(v12, 0, 0, v10);
    goto LABEL_6;
  }

  v4 = [WeakRetained[6] objectForKeyedSubscript:*(a1 + 32)];
  v5 = [v4 requestHandler];

  if (!v5)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v3;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v17 = HMFGetLogIdentifier();
      v18 = *(a1 + 32);
      *buf = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: %@ Request handler is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v19 = [[HMDAssertionLogEvent alloc] initWithReason:@"%@ Request handler is nil", *(a1 + 32)];
    v20 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v20 submitLogEvent:v19];
  }

  v6 = [v3[6] objectForKeyedSubscript:*(a1 + 32)];
  v7 = [v6 requestHandler];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = v3[6];
    v10 = [v9 objectForKeyedSubscript:v8];
    v11 = [v10 requestHandler];
    v11[2](v11, *(a1 + 40), *(a1 + 48), *(a1 + 56));

LABEL_6:
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_handleRequest:(id)a3 forTopic:(id)a4 options:(id)a5 responseHandler:(id)a6
{
  v18 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    receiverContexts = self->_receiverContexts;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    receiverContexts = 0;
  }

  v14 = [(NSMutableDictionary *)receiverContexts objectForKeyedSubscript:v10];
  v15 = v14;
  if (v14 && ([v14 requestHandler], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    v17 = [v15 requestHandler];
    (v17)[2](v17, v18, v11, v12);
  }

  else
  {
    [(HMDRapportMessaging *)self _queueRequest:v18 forTopic:v10 options:v11 responseHandler:v12];
  }
}

- (void)_configureDiscoveryClientWithCompletion:(id)a3 forRequestIDs:(id)a4
{
  v78 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self)
  {
    dispatch_assert_queue_V2(self->_workQueue);
    v8 = [(HMDRapportMessagingClientFactory *)self->_clientFactory newCompanionLinkClient];
    objc_setProperty_atomic(self, v9, v8, 40);

    [objc_getProperty(self v10];
    [objc_getProperty(self v11];
    v12 = self->_workQueue;
    Property = objc_getProperty(self, v13, 40, 1);
  }

  else
  {
    dispatch_assert_queue_V2(0);

    [0 setControlFlags:4196356];
    [0 setServiceType:@"com.apple.home.messaging"];
    v12 = 0;
    Property = 0;
  }

  [Property setDispatchQueue:v12];

  v15 = self;
  objc_initWeak(&location, self);
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke;
  v74[3] = &unk_278686B80;
  objc_copyWeak(&v75, &location);
  if (self)
  {
    v17 = self;
    v18 = objc_getProperty(self, v16, 40, 1);
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v19 = v18;
  [v19 setInterruptionHandler:v74];

  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_100;
  v72[3] = &unk_278686B80;
  objc_copyWeak(&v73, &location);
  if (v17)
  {
    v21 = self;
    v22 = objc_getProperty(self, v20, 40, 1);
  }

  else
  {
    v22 = 0;
    v21 = self;
  }

  v23 = v22;
  [v23 setInvalidationHandler:v72];

  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_101;
  v70[3] = &unk_27867CA08;
  objc_copyWeak(&v71, &location);
  if (v21)
  {
    v25 = self;
    v26 = objc_getProperty(self, v24, 40, 1);
  }

  else
  {
    v26 = 0;
    v25 = self;
  }

  v27 = v26;
  [v27 setDeviceLostHandler:v70];

  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_103;
  v68[3] = &unk_27867CA08;
  objc_copyWeak(&v69, &location);
  if (v25)
  {
    v29 = self;
    v30 = objc_getProperty(self, v28, 40, 1);
  }

  else
  {
    v30 = 0;
    v29 = self;
  }

  v31 = v30;
  [v31 setDeviceFoundHandler:v68];

  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_104;
  v66[3] = &unk_27867CA30;
  objc_copyWeak(&v67, &location);
  if (v29)
  {
    v33 = self;
    v34 = objc_getProperty(self, v32, 40, 1);
  }

  else
  {
    v34 = 0;
    v33 = self;
  }

  v35 = v34;
  [v35 setDeviceChangedHandler:v66];

  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_106;
  v64[3] = &unk_278686B80;
  objc_copyWeak(&v65, &location);
  if (v33)
  {
    v37 = objc_getProperty(self, v36, 40, 1);
  }

  else
  {
    v37 = 0;
  }

  v38 = v37;
  [v38 setErrorFlagsChangedHandler:v64];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v7;
  v39 = [obj countByEnumeratingWithState:&v60 objects:v77 count:16];
  if (v39)
  {
    v40 = *v61;
    do
    {
      v41 = 0;
      do
      {
        if (*v61 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v60 + 1) + 8 * v41);
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_107;
        aBlock[3] = &unk_278675738;
        objc_copyWeak(&v59, &location);
        aBlock[4] = v42;
        v44 = _Block_copy(aBlock);
        if (v15)
        {
          v45 = objc_getProperty(v15, v43, 40, 1);
        }

        else
        {
          v45 = 0;
        }

        v46 = v45;
        [v46 registerRequestID:v42 options:0 handler:v44];

        objc_destroyWeak(&v59);
        ++v41;
      }

      while (v39 != v41);
      v47 = [obj countByEnumeratingWithState:&v60 objects:v77 count:16];
      v39 = v47;
    }

    while (v47);
  }

  if (v15)
  {
    v49 = objc_getProperty(v15, v48, 40, 1);
  }

  else
  {
    v49 = 0;
  }

  v50 = v49;
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_2;
  v55[3] = &unk_278686D60;
  objc_copyWeak(&v57, &location);
  v51 = v53;
  v56 = v51;
  [v50 activateWithCompletion:v55];

  objc_destroyWeak(&v57);
  objc_destroyWeak(&v65);
  objc_destroyWeak(&v67);
  objc_destroyWeak(&v69);
  objc_destroyWeak(&v71);
  objc_destroyWeak(&v73);
  objc_destroyWeak(&v75);
  objc_destroyWeak(&location);

  v52 = *MEMORY[0x277D85DE8];
}

void __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_autoreleasePoolPush();
  v3 = WeakRetained;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Discovery client interrupted", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

void __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_100(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_autoreleasePoolPush();
  v3 = WeakRetained;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Discovery client invalidated", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

void __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_101(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Discovery client lost device: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v3 idsDeviceIdentifier];
  [v6 _invalidateDestinationDeviceWithIDSIdentifier:v9];

  v10 = *MEMORY[0x277D85DE8];
}

void __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_103(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Discovery client found device: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [v6 _updateDevice:v3 reachable:1];

  v9 = *MEMORY[0x277D85DE8];
}

void __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_104(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Discovery client device changed: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *MEMORY[0x277D85DE8];
}

void __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_106(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_autoreleasePoolPush();
  v3 = WeakRetained;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    if (v3)
    {
      Property = objc_getProperty(v3, v5, 40, 1);
    }

    else
    {
      Property = 0;
    }

    [Property errorFlags];
    v8 = NSPrintF();
    *buf = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Discovery client error flag changed: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

void __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_107(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleRequest:v12 forTopic:*(a1 + 32) options:v7 responseHandler:v8];
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 description:@"Unexpected error." reason:@"HMDRapportMessaging has been deallocated" suggestion:0];
    (*(v8 + 2))(v8, 0, 0, v11);
  }
}

void __77__HMDRapportMessaging__configureDiscoveryClientWithCompletion_forRequestIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Activated Rapport client with error: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)isRapportDeviceDiscoveredWithIdentifier:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self && objc_getProperty(self, v4, 40, 1))
  {
    v7 = [objc_getProperty(self v6];
    v8 = [v7 copy];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __63__HMDRapportMessaging_isRapportDeviceDiscoveredWithIdentifier___block_invoke;
    v17[3] = &unk_27867C800;
    v18 = v5;
    v9 = [v8 na_firstObjectPassingTest:v17];
    v10 = v9 != 0;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Discovery client is not configured", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __63__HMDRapportMessaging_isRapportDeviceDiscoveredWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 idsDeviceIdentifier];
  v4 = [*(a1 + 32) UUIDString];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)sendRequest:(id)a3 requestID:(id)a4 destinationID:(id)a5 options:(id)a6 responseHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __83__HMDRapportMessaging_sendRequest_requestID_destinationID_options_responseHandler___block_invoke;
  v24[3] = &unk_278688B58;
  v24[4] = self;
  v25 = v14;
  v26 = v13;
  v27 = v12;
  v28 = v15;
  v29 = v16;
  v19 = v15;
  v20 = v12;
  v21 = v13;
  v22 = v17;
  v23 = v14;
  dispatch_async(workQueue, v24);
}

void __83__HMDRapportMessaging_sendRequest_requestID_destinationID_options_responseHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForIDSIdentifier:*(a1 + 40) withDevice:0];
  v5 = v2;
  if (v2)
  {
    [v2 sendRequestID:*(a1 + 48) request:*(a1 + 56) options:*(a1 + 64) responseHandler:*(a1 + 72)];
  }

  else
  {
    v3 = *(a1 + 72);
    v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Not found." reason:@"Could not create a device matching the destination" suggestion:0];
    (*(v3 + 16))(v3, 0, 0, v4);
  }
}

- (void)registerRequestHandlerForRequestID:(id)a3 withRequestHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__HMDRapportMessaging_registerRequestHandlerForRequestID_withRequestHandler___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(workQueue, block);
}

void __77__HMDRapportMessaging_registerRequestHandlerForRequestID_withRequestHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 48);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 objectForKeyedSubscript:a1[5]];

  if (!v4)
  {
    v5 = objc_alloc_init(HMDRapportMessagingReceiverContext);
    v6 = a1[4];
    if (v6)
    {
      v7 = *(v6 + 48);
    }

    else
    {
      v7 = 0;
    }

    [v7 setObject:v5 forKeyedSubscript:a1[5]];
  }

  v8 = a1[6];
  v9 = a1[4];
  if (v9)
  {
    v9 = v9[6];
  }

  v10 = a1[5];
  v11 = v9;
  v12 = [v11 objectForKeyedSubscript:v10];
  [v12 setRequestHandler:v8];

  v13 = a1[4];
  if (v13)
  {
    v14 = v13[6];
  }

  else
  {
    v14 = 0;
  }

  v15 = a1[5];
  v16 = v14;
  v17 = [v16 objectForKeyedSubscript:v15];
  v18 = [v17 requestQueue];
  [v13 _completeQuededRequestsOnWorkQueue:v18];

  v19 = a1[4];
  if (v19)
  {
    v20 = *(v19 + 48);
  }

  else
  {
    v20 = 0;
  }

  v21 = [v20 objectForKeyedSubscript:a1[5]];
  [v21 setRequestQueue:0];
}

- (void)configureDiscoveryClientForRequestIDs:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self)
  {
    workQueue = self->_workQueue;
  }

  else
  {
    workQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HMDRapportMessaging_configureDiscoveryClientForRequestIDs_withCompletion___block_invoke;
  block[3] = &unk_278689F98;
  v13 = v6;
  v14 = v7;
  block[4] = self;
  v10 = v6;
  v11 = v8;
  dispatch_async(workQueue, block);
}

uint64_t __76__HMDRapportMessaging_configureDiscoveryClientForRequestIDs_withCompletion___block_invoke(void *a1, const char *a2)
{
  v3 = a1[4];
  if (v3)
  {
    if (objc_getProperty(v3, a2, 40, 1))
    {
      result = a1[6];
      if (result)
      {
        v5 = *(result + 16);

        return v5();
      }

      return result;
    }

    v3 = a1[4];
  }

  v7 = a1[5];
  v6 = a1[6];

  return [v3 _configureDiscoveryClientWithCompletion:v6 forRequestIDs:v7];
}

- (HMDRapportMessaging)initWithClientFactory:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = HMDRapportMessaging;
  v6 = [(HMDRapportMessaging *)&v18 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = HMDispatchQueueNameString();
    v9 = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(v9, v10);
    workQueue = v7->_workQueue;
    v7->_workQueue = v11;

    objc_storeStrong(&v7->_clientFactory, a3);
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    receiverContexts = v7->_receiverContexts;
    v7->_receiverContexts = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceClients = v7->_deviceClients;
    v7->_deviceClients = v15;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t16 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t16, &__block_literal_global_128_73853);
  }

  v3 = logCategory__hmf_once_v17;

  return v3;
}

void __34__HMDRapportMessaging_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v17;
  logCategory__hmf_once_v17 = v1;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_73858 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_73858, &__block_literal_global_73859);
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __37__HMDRapportMessaging_sharedInstance__block_invoke()
{
  v0 = [HMDRapportMessaging alloc];
  v3 = objc_alloc_init(HMDRapportMessagingClientFactory);
  v1 = [(HMDRapportMessaging *)v0 initWithClientFactory:v3];
  v2 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v1;
}

@end