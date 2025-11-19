@interface HAPAuthSession
+ (id)logCategory;
- (BOOL)getToken:(id *)a3 uuid:(id *)a4;
- (HAPAuthSession)initWithRole:(int64_t)a3 instanceId:(id)a4 delegate:(id)a5;
- (HAPAuthSessionDelegate)delegate;
- (id)logIdentifier;
- (void)_reportAuthFailure;
- (void)_resetSession;
- (void)_sendTokenRequest;
- (void)_sendTokenUpdateRequest:(id)a3;
- (void)continueAuthAfterValidation:(BOOL)a3;
- (void)handleAuthExchangeData:(id)a3 withHeader:(BOOL)a4;
- (void)resetSession;
- (void)sendTokenUpdateRequest:(id)a3;
@end

@implementation HAPAuthSession

- (HAPAuthSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HAPAuthSession *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 identifier];

  v9 = [v3 stringWithFormat:@"%@ %@", v4, v8];

  return v9;
}

- (BOOL)getToken:(id *)a3 uuid:(id *)a4
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = [(HAPAuthSession *)self workQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __32__HAPAuthSession_getToken_uuid___block_invoke;
  v10[3] = &unk_2786D2570;
  v10[4] = self;
  v10[5] = &v21;
  v10[6] = &v15;
  v10[7] = &v11;
  dispatch_sync(v7, v10);

  if (a3)
  {
    *a3 = v22[5];
  }

  if (a4)
  {
    *a4 = v16[5];
  }

  v8 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v8;
}

void __32__HAPAuthSession_getToken_uuid___block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 56));
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 72));
  *(*(a1[7] + 8) + 24) = 1;
}

- (void)_sendTokenUpdateRequest:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0;
  v5 = [(HAPAuthSession *)self instanceId];
  v6 = [HAPProtocolMessages constructTokenUpdateRequest:v5 token:v4 outTID:&v18];

  if (!v6)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v15;
      v16 = "%{public}@Failed constructing token request";
LABEL_10:
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, v16, buf, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v9);
    [(HAPAuthSession *)v10 _reportAuthFailure];
    goto LABEL_12;
  }

  [(HAPAuthSession *)self setToken1:v4];
  [(HAPAuthSession *)self setCurrentTID:v18];
  [(HAPAuthSession *)self setCurrentState:8];
  v7 = [(HAPAuthSession *)self delegate];
  v8 = objc_opt_respondsToSelector();

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if ((v8 & 1) == 0)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v15;
      v16 = "%{public}@[HAPAuthSession] Delegate does not implement sendAuthExchangeData:";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v13;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Sending Token Update Request: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [(HAPAuthSession *)v10 delegate];
  [v14 authSession:v10 sendAuthExchangeData:v6];

LABEL_12:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)sendTokenUpdateRequest:(id)a3
{
  v4 = a3;
  v5 = [(HAPAuthSession *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__HAPAuthSession_sendTokenUpdateRequest___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_sendTokenRequest
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v3 = [(HAPAuthSession *)self instanceId];
  v4 = [HAPProtocolMessages constructTokenRequest:v3 outTID:&v22];

  if (!v4)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v15;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed constructing token request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = v13;
    goto LABEL_12;
  }

  [(HAPAuthSession *)self setCurrentState:4];
  [(HAPAuthSession *)self setCurrentTID:v22];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v24 = v8;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Sending Token Request: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HAPAuthSession *)v6 delegate];
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) == 0)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v6;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v20;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement sendAuthExchangeData:", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v16 = v18;
LABEL_12:
    [(HAPAuthSession *)v16 _reportAuthFailure];
    goto LABEL_13;
  }

  v11 = [(HAPAuthSession *)v6 delegate];
  [v11 authSession:v6 sendAuthExchangeData:v4];

LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)continueAuthAfterValidation:(BOOL)a3
{
  v5 = [(HAPAuthSession *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__HAPAuthSession_continueAuthAfterValidation___block_invoke;
  v6[3] = &unk_2786D6768;
  v7 = a3;
  v6[4] = self;
  dispatch_async(v5, v6);
}

void __46__HAPAuthSession_continueAuthAfterValidation___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = [v3 delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v16 = [*(a1 + 32) delegate];
      v6 = *(a1 + 32);
      v7 = [v6 provisionUUID];
      v8 = [*(a1 + 32) token1];
      [v16 authSession:v6 authenticateUUID:v7 token:v8];

      v9 = *MEMORY[0x277D85DE8];
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v18 = v14;
        _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement authenticateUUID:token1:token2:", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      [*(a1 + 32) _reportAuthFailure];
      v15 = *MEMORY[0x277D85DE8];
    }
  }

  else
  {
    v10 = *MEMORY[0x277D85DE8];

    [v3 _reportAuthFailure];
  }
}

- (void)handleAuthExchangeData:(id)a3 withHeader:(BOOL)a4
{
  v6 = a3;
  v7 = [(HAPAuthSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HAPAuthSession_handleAuthExchangeData_withHeader___block_invoke;
  block[3] = &unk_2786D5268;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)resetSession
{
  v3 = [(HAPAuthSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__HAPAuthSession_resetSession__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_reportAuthFailure
{
  v15 = *MEMORY[0x277D85DE8];
  [(HAPAuthSession *)self _resetSession];
  v3 = [(HAPAuthSession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v12 = [(HAPAuthSession *)self delegate];
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:17 userInfo:0];
    [v12 authSession:self authComplete:v5];

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v10;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement authComplete:", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = *MEMORY[0x277D85DE8];
  }
}

- (void)_resetSession
{
  v17 = *MEMORY[0x277D85DE8];
  [(HAPAuthSession *)self setToken2:0];
  [(HAPAuthSession *)self setToken1:0];
  v3 = [(HAPAuthSession *)self role];
  if (v3 == 1)
  {
    v7 = *MEMORY[0x277D85DE8];
    v5 = self;
    v6 = 2;
    goto LABEL_5;
  }

  if (!v3)
  {
    v4 = *MEMORY[0x277D85DE8];
    v5 = self;
    v6 = 1;
LABEL_5:

    [(HAPAuthSession *)v5 setCurrentState:v6];
    return;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2048;
    v16 = [(HAPAuthSession *)v9 role];
    _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Invalid auth session role: %tu", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (HAPAuthSession)initWithRole:(int64_t)a3 instanceId:(id)a4 delegate:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    if ([v10 conformsToProtocol:&unk_283EAD308])
    {
      v30.receiver = self;
      v30.super_class = HAPAuthSession;
      v12 = [(HAPAuthSession *)&v30 init];
      v13 = v12;
      if (v12)
      {
        v14 = HAPDispatchQueueName(v12, 0);
        v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v16 = dispatch_queue_create(v14, v15);
        workQueue = v13->_workQueue;
        v13->_workQueue = v16;

        v13->_role = a3;
        objc_storeStrong(&v13->_instanceId, a4);
        objc_storeWeak(&v13->_delegate, v11);
        v13->_currentState = 0;
        [(HAPAuthSession *)v13 _resetSession];
      }

      v18 = v13;
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v32 = v27;
        _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_ERROR, "%{public}@Delegate must confirm to the HAPAuthSessionDelegate protocol", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      v18 = v25;
    }

    v20 = v18;
    v23 = v18;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v22;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%{public}@A valid delegate is required.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v23 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v23;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t17 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t17, &__block_literal_global_32);
  }

  v3 = logCategory__hmf_once_v18;

  return v3;
}

uint64_t __29__HAPAuthSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v18 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end