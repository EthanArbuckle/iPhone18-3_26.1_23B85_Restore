@interface HMDRapportDeviceClientWrapper
+ (id)logCategory;
- (HMDRapportDeviceClientWrapper)initWithClient:(id)a3;
- (void)_completeQueuedRequestsWithError:(id)a3;
- (void)_queueRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6;
- (void)activateWithCompletion:(id)a3;
- (void)invalidate;
- (void)sendRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6;
@end

@implementation HMDRapportDeviceClientWrapper

- (void)_completeQueuedRequestsWithError:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self)
  {
    requestQueue = self->_requestQueue;
  }

  else
  {
    requestQueue = 0;
  }

  if (([(NSMutableArray *)requestQueue hmf_isEmpty]& 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      if (self)
      {
        v9 = v7->_requestQueue;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      v11 = [(NSMutableArray *)v10 count];
      v23 = v6;
      if (self)
      {
        client = v7->_client;
      }

      else
      {
        client = 0;
      }

      v13 = client;
      v14 = [(RPCompanionLinkClient *)v13 destinationDevice];
      *buf = 138544130;
      v31 = v24;
      v32 = 2048;
      v33 = v11;
      v34 = 2112;
      v35 = v14;
      v36 = 2112;
      v37 = v4;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Completing %lu queued request(s) to device: %@, with error: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v6);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    if (self)
    {
      v15 = v7->_requestQueue;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          (*(*(*(&v25 + 1) + 8 * i) + 16))();
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v18);
    }

    if (self)
    {
      v21 = v7->_requestQueue;
    }

    else
    {
      v21 = 0;
    }

    [(NSMutableArray *)v21 removeAllObjects];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_queueRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    if (v15)
    {
      client = v15->_client;
    }

    else
    {
      client = 0;
    }

    v19 = client;
    v20 = [(RPCompanionLinkClient *)v19 destinationDevice];
    *buf = 138543618;
    v36 = v17;
    v37 = 2112;
    v38 = v20;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Queuing request to device: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  objc_initWeak(buf, v15);
  if (v15)
  {
    requestQueue = v15->_requestQueue;
  }

  else
  {
    requestQueue = 0;
  }

  v22 = requestQueue;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__HMDRapportDeviceClientWrapper__queueRequestID_request_options_responseHandler___block_invoke;
  aBlock[3] = &unk_2797316D8;
  objc_copyWeak(&v34, buf);
  v23 = v13;
  v33 = v23;
  v24 = v10;
  v30 = v24;
  v25 = v11;
  v31 = v25;
  v26 = v12;
  v32 = v26;
  v27 = _Block_copy(aBlock);
  [(NSMutableArray *)v22 addObject:v27];

  objc_destroyWeak(&v34);
  objc_destroyWeak(buf);

  v28 = *MEMORY[0x277D85DE8];
}

void __81__HMDRapportDeviceClientWrapper__queueRequestID_request_options_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = WeakRetained;
  if (v6)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (WeakRetained)
    {
      v5 = *(WeakRetained + 1);
    }

    else
    {
      v5 = 0;
    }

    [v5 sendRequestID:*(a1 + 32) request:*(a1 + 40) options:*(a1 + 48) responseHandler:*(a1 + 56)];
  }
}

- (void)sendRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (self && (activateState = self->_activateState, activateState >= 2))
  {
    if (activateState == 3)
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3212];
      v17 = [v15 hmInternalErrorWithCode:3203 underlyingError:v16];
      v18 = [v15 hmErrorWithCode:54 description:@"Communication failure." reason:@"Cannot send request on client that failed to activate." suggestion:0 underlyingError:v17];
      (*(v13 + 2))(v13, 0, 0, v18);
    }

    else
    {
      if (activateState != 2)
      {
        v20 = objc_autoreleasePoolPush();
        v21 = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          v23 = HMFGetLogIdentifier();
          v26 = 138543362;
          v27 = v23;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: State is not activated.", &v26, 0xCu);
        }

        objc_autoreleasePoolPop(v20);
        v24 = [[HMDAssertionLogEvent alloc] initWithReason:@"State is not activated."];
        v25 = +[HMDMetricsManager sharedLogEventSubmitter];
        [v25 submitLogEvent:v24];
      }

      [(RPCompanionLinkClient *)self->_client sendRequestID:v10 request:v11 options:v12 responseHandler:v13];
    }
  }

  else
  {
    [(HMDRapportDeviceClientWrapper *)self _queueRequestID:v10 request:v11 options:v12 responseHandler:v13];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  if (self)
  {
    self->_activateState = 3;
    v3 = MEMORY[0x277CCA9B8];
    v4 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3211];
    v5 = [v3 hmInternalErrorWithCode:3203 underlyingError:v4];
    v6 = [v3 hmErrorWithCode:54 description:@"Communication failure." reason:@"The client was invalidated." suggestion:0 underlyingError:v5];
    [(HMDRapportDeviceClientWrapper *)self _completeQueuedRequestsWithError:v6];

    client = self->_client;
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3211];
    v10 = [v8 hmInternalErrorWithCode:3203 underlyingError:v9];
    v11 = [v8 hmErrorWithCode:54 description:@"Communication failure." reason:@"The client was invalidated." suggestion:0 underlyingError:v10];
    [0 _completeQueuedRequestsWithError:v11];

    client = 0;
  }

  [(RPCompanionLinkClient *)client invalidate];
}

- (void)activateWithCompletion:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self)
  {
    if (self->_activateState)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v23 = v17;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Activate called more than once.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      v18 = [[HMDAssertionLogEvent alloc] initWithReason:@"Activate called more than once."];
      v19 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v19 submitLogEvent:v18];

      if (self->_activateState)
      {
        v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 description:@"Unexpected error." reason:@"Activate called more than once." suggestion:0];
        v4[2](v4, v12);
        goto LABEL_11;
      }
    }

    self->_activateState = 1;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    if (self)
    {
      client = v6->_client;
    }

    else
    {
      client = 0;
    }

    v10 = client;
    v11 = [(RPCompanionLinkClient *)v10 destinationDevice];
    *buf = 138543618;
    v23 = v8;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Activating client for destination: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (self)
  {
    self = v6->_client;
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __56__HMDRapportDeviceClientWrapper_activateWithCompletion___block_invoke;
  v20[3] = &unk_279733F30;
  v20[4] = v6;
  v21 = v4;
  [(HMDRapportDeviceClientWrapper *)self activateWithCompletion:v20];
  v12 = v21;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
}

void __56__HMDRapportDeviceClientWrapper_activateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3203 underlyingError:v3];
    v6 = [v4 hmErrorWithCode:54 description:@"Communication failure." reason:@"Failed to activate Rapport client." suggestion:0 underlyingError:v5];
  }

  else
  {
    v6 = 0;
  }

  (*(*(a1 + 40) + 16))();
  v7 = *(a1 + 32);
  if (v7 && *(v7 + 16) == 1)
  {
    v8 = 2;
    if (v6)
    {
      v8 = 3;
    }

    *(v7 + 16) = v8;
    [*(a1 + 32) _completeQueuedRequestsWithError:v6];
  }
}

- (HMDRapportDeviceClientWrapper)initWithClient:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HMDRapportDeviceClientWrapper;
  v6 = [(HMDRapportDeviceClientWrapper *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_client, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    requestQueue = v7->_requestQueue;
    v7->_requestQueue = v8;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t5_171562 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t5_171562, &__block_literal_global_171563);
  }

  v3 = logCategory__hmf_once_v6_171564;

  return v3;
}

uint64_t __44__HMDRapportDeviceClientWrapper_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v6_171564;
  logCategory__hmf_once_v6_171564 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end