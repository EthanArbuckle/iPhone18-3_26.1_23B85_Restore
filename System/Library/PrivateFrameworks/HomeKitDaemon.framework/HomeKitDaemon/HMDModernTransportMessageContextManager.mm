@interface HMDModernTransportMessageContextManager
+ (id)logCategory;
- (HMDModernTransportMessageContextFactory)factory;
- (HMDModernTransportMessageContextManager)initWithFactory:(id)a3;
- (id)contextForIdentifier:(id)a3;
- (id)contextWithMessage:(id)a3 options:(id)a4 completionHandler:(id)a5 dateProvider:(id)a6 timerProvider:(id)a7;
- (id)createContextWithMessage:(id)a3 options:(id)a4 completionHandler:(id)a5 dateProvider:(id)a6 timerProvider:(id)a7;
@end

@implementation HMDModernTransportMessageContextManager

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_89789 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_89789, &__block_literal_global_89790);
  }

  v3 = logCategory__hmf_once_v3_89791;

  return v3;
}

- (HMDModernTransportMessageContextFactory)factory
{
  WeakRetained = objc_loadWeakRetained(&self->_factory);

  return WeakRetained;
}

- (id)contextWithMessage:(id)a3 options:(id)a4 completionHandler:(id)a5 dateProvider:(id)a6 timerProvider:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[HMDModernTransportMessageContext alloc] initWithMessage:v15 options:v14 completionHandler:v13 dateProvider:v12 timerProvider:v11];

  return v16;
}

void __85__HMDModernTransportMessageContextManager_completeContext_withPayload_error_isFinal___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) messageResponseHandler];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

- (id)contextForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDModernTransportMessageContextManager *)self contexts];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)createContextWithMessage:(id)a3 options:(id)a4 completionHandler:(id)a5 dateProvider:(id)a6 timerProvider:(id)a7
{
  v38 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(HMDModernTransportMessageContextManager *)self factory];
  v18 = [v17 contextWithMessage:v12 options:v13 completionHandler:v14 dateProvider:v15 timerProvider:v16];

  if (v18)
  {
    v19 = [(HMDModernTransportMessageContextManager *)self contexts];
    v20 = [v18 identifier];
    [v19 setObject:v18 forKeyedSubscript:v20];

    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v24 = v30 = v13;
      [v18 identifier];
      v25 = v31 = v21;
      v26 = [v12 identifier];
      *buf = 138543874;
      v33 = v24;
      v34 = 2112;
      v35 = v25;
      v36 = 2112;
      v37 = v26;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Created context %@ for message %@", buf, 0x20u);

      v21 = v31;
      v13 = v30;
    }

    objc_autoreleasePoolPop(v21);
    v27 = v18;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v18;
}

- (HMDModernTransportMessageContextManager)initWithFactory:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HMDModernTransportMessageContextManager;
  v5 = [(HMDModernTransportMessageContextManager *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_factory, v4);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    contexts = v6->_contexts;
    v6->_contexts = v7;
  }

  return v6;
}

void __54__HMDModernTransportMessageContextManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_89791;
  logCategory__hmf_once_v3_89791 = v1;
}

@end