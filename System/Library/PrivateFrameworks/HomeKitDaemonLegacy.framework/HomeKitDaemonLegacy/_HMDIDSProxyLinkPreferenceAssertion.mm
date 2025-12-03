@interface _HMDIDSProxyLinkPreferenceAssertion
- (_HMDIDSProxyLinkPreferenceAssertion)initWithIDSProxyService:(id)service;
- (void)dealloc;
@end

@implementation _HMDIDSProxyLinkPreferenceAssertion

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting the link preference for proxy service", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  proxyService = [(_HMDIDSProxyLinkPreferenceAssertion *)selfCopy proxyService];
  [proxyService setLinkPreferences:MEMORY[0x277CBEC10]];

  v9.receiver = selfCopy;
  v9.super_class = _HMDIDSProxyLinkPreferenceAssertion;
  [(_HMDIDSProxyLinkPreferenceAssertion *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (_HMDIDSProxyLinkPreferenceAssertion)initWithIDSProxyService:(id)service
{
  v26 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v21.receiver = self;
  v21.super_class = _HMDIDSProxyLinkPreferenceAssertion;
  v6 = [(_HMDIDSProxyLinkPreferenceAssertion *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proxyService, service);
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:150];
    [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x277D18558]];

    [v8 setObject:@"forceBTClassic" forKeyedSubscript:*MEMORY[0x277D18548]];
    v10 = isWatch();
    if (v10)
    {
      v11 = 6250;
    }

    else
    {
      v11 = 37500;
    }

    if (v10)
    {
      v12 = 37500;
    }

    else
    {
      v12 = 6250;
    }

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
    [v8 setObject:v13 forKeyedSubscript:*MEMORY[0x277D18540]];

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
    [v8 setObject:v14 forKeyedSubscript:*MEMORY[0x277D18550]];

    v15 = objc_autoreleasePoolPush();
    v16 = v7;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Setting the link preference for proxy service with %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    [(HMDIDSService *)v7->_proxyService setLinkPreferences:v8];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v7;
}

@end