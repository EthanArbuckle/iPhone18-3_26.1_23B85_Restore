@interface HMDModernTransportMessageContextManager
+ (id)logCategory;
- (HMDModernTransportMessageContextFactory)factory;
- (HMDModernTransportMessageContextManager)initWithFactory:(id)factory;
- (id)contextForIdentifier:(id)identifier;
- (id)contextWithMessage:(id)message options:(id)options completionHandler:(id)handler dateProvider:(id)provider timerProvider:(id)timerProvider;
- (id)createContextWithMessage:(id)message options:(id)options completionHandler:(id)handler dateProvider:(id)provider timerProvider:(id)timerProvider;
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

- (id)contextWithMessage:(id)message options:(id)options completionHandler:(id)handler dateProvider:(id)provider timerProvider:(id)timerProvider
{
  timerProviderCopy = timerProvider;
  providerCopy = provider;
  handlerCopy = handler;
  optionsCopy = options;
  messageCopy = message;
  v16 = [[HMDModernTransportMessageContext alloc] initWithMessage:messageCopy options:optionsCopy completionHandler:handlerCopy dateProvider:providerCopy timerProvider:timerProviderCopy];

  return v16;
}

void __85__HMDModernTransportMessageContextManager_completeContext_withPayload_error_isFinal___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) messageResponseHandler];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
}

- (id)contextForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  contexts = [(HMDModernTransportMessageContextManager *)self contexts];
  v6 = [contexts objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (id)createContextWithMessage:(id)message options:(id)options completionHandler:(id)handler dateProvider:(id)provider timerProvider:(id)timerProvider
{
  v38 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  optionsCopy = options;
  handlerCopy = handler;
  providerCopy = provider;
  timerProviderCopy = timerProvider;
  factory = [(HMDModernTransportMessageContextManager *)self factory];
  v18 = [factory contextWithMessage:messageCopy options:optionsCopy completionHandler:handlerCopy dateProvider:providerCopy timerProvider:timerProviderCopy];

  if (v18)
  {
    contexts = [(HMDModernTransportMessageContextManager *)self contexts];
    identifier = [v18 identifier];
    [contexts setObject:v18 forKeyedSubscript:identifier];

    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v24 = v30 = optionsCopy;
      [v18 identifier];
      v25 = v31 = v21;
      identifier2 = [messageCopy identifier];
      *buf = 138543874;
      v33 = v24;
      v34 = 2112;
      v35 = v25;
      v36 = 2112;
      v37 = identifier2;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Created context %@ for message %@", buf, 0x20u);

      v21 = v31;
      optionsCopy = v30;
    }

    objc_autoreleasePoolPop(v21);
    v27 = v18;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v18;
}

- (HMDModernTransportMessageContextManager)initWithFactory:(id)factory
{
  factoryCopy = factory;
  v10.receiver = self;
  v10.super_class = HMDModernTransportMessageContextManager;
  v5 = [(HMDModernTransportMessageContextManager *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_factory, factoryCopy);
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