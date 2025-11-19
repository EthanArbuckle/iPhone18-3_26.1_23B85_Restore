@interface HMFHTTPClient
+ (id)baseURLWithScheme:(id)a3 hostAddress:(id)a4 port:(unint64_t)a5;
+ (id)logCategory;
- (BOOL)isPinging;
- (BOOL)isReachable;
- (BOOL)requestClientReachabilityPingWithRetry:(BOOL)a3;
- (HMFHTTPClient)init;
- (HMFHTTPClient)initWithBaseURL:(id)a3 configuration:(id)a4;
- (HMFHTTPClient)initWithBaseURL:(id)a3 configuration:(id)a4 netManager:(id)a5;
- (HMFHTTPClient)initWithBaseURL:(id)a3 configuration:(id)a4 session:(id)a5 reachabilityMonitor:(id)a6 netManager:(id)a7;
- (HMFHTTPClient)initWithBaseURL:(id)a3 options:(unint64_t)a4;
- (HMFHTTPClient)initWithNetService:(id)a3 options:(unint64_t)a4;
- (HMFHTTPClient)initWithService:(id)a3 configuration:(id)a4;
- (HMFHTTPClient)initWithService:(id)a3 configuration:(id)a4 netManager:(id)a5;
- (HMFHTTPClient)initWithService:(id)a3 configuration:(id)a4 session:(id)a5 reachabilityMonitor:(id)a6 netManager:(id)a7;
- (HMFHTTPClientConfiguration)configuration;
- (HMFHTTPClientDelegate)delegate;
- (NSString)debugDescription;
- (NSURL)baseURL;
- (id)attributeDescriptions;
- (id)createNSURLSession:(id)a3;
- (id)logIdentifier;
- (unint64_t)options;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)_sendRequest:(id)a3 baseURL:(id)a4 completionHandler:(id)a5;
- (void)cancelPendingRequests;
- (void)dealloc;
- (void)finishCommonInitialization;
- (void)invalidate;
- (void)networkMonitorIsReachable:(id)a3;
- (void)networkMonitorIsUnreachable:(id)a3;
- (void)resolveWithCompletionHandler:(id)a3;
- (void)sendRequest:(id)a3 completionHandler:(id)a4;
- (void)setPinging:(BOOL)a3;
- (void)setReachable:(BOOL)a3;
- (void)startDelegatedPingTimer;
- (void)startReachabilityProbe;
- (void)stopDelegatedPingTimer;
- (void)timerDidFire:(id)a3;
@end

@implementation HMFHTTPClient

+ (id)baseURLWithScheme:(id)a3 hostAddress:(id)a4 port:(unint64_t)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = a1;
    v18 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v19 = HMFGetLogIdentifier(v17);
    *buf = 138543362;
    v28 = v19;
    v20 = "%{public}@Scheme is required";
LABEL_12:
    _os_log_impl(&dword_22ADEC000, v18, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);

    goto LABEL_13;
  }

  if (!v9)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = a1;
    v18 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v19 = HMFGetLogIdentifier(v17);
    *buf = 138543362;
    v28 = v19;
    v20 = "%{public}@Host address is required";
    goto LABEL_12;
  }

  if (!a5)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = a1;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier(v17);
      *buf = 138543362;
      v28 = v19;
      v20 = "%{public}@Port is required";
      goto LABEL_12;
    }

LABEL_13:

    objc_autoreleasePoolPop(v16);
    v15 = 0;
    goto LABEL_14;
  }

  if ([v9 addressFamily] == 2)
  {
    v11 = [v10 addressString];
    v12 = [v11 stringByReplacingOccurrencesOfString:@"%" withString:@"%25"];

    v13 = MEMORY[0x277CBEBC0];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@://[%@]:%tu", v8, v12, a5];
    v15 = [v13 URLWithString:v14];
  }

  else
  {
    v23 = MEMORY[0x277CBEBC0];
    v24 = MEMORY[0x277CCACA8];
    v25 = [v10 addressString];
    v26 = [v24 stringWithFormat:@"%@://%@:%tu", v8, v25, a5];
    v15 = [v23 URLWithString:v26];
  }

LABEL_14:

  v21 = *MEMORY[0x277D85DE8];

  return v15;
}

- (HMFHTTPClient)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (HMFHTTPClient)initWithBaseURL:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc_init(HMFHTTPClientConfiguration);
  v8 = v7;
  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    [(HMFHTTPClientConfiguration *)v8 setMonitorsReachability:1];
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [(HMFHTTPClientConfiguration *)v7 setRequiresEncryption:1];
  if ((v4 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v4 & 4) != 0)
  {
LABEL_4:
    [(HMFHTTPClientConfiguration *)v8 setSupportsWakeOnLAN:1];
  }

LABEL_5:
  v9 = [(HMFHTTPClient *)self initWithBaseURL:v6 configuration:v8];

  return v9;
}

- (HMFHTTPClient)initWithBaseURL:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[HMFNetManager sharedManager];
  v9 = [(HMFHTTPClient *)self initWithBaseURL:v7 configuration:v6 netManager:v8];

  return v9;
}

- (HMFHTTPClient)initWithBaseURL:(id)a3 configuration:(id)a4 netManager:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  v12 = [v11 scheme];

  if (v12 && ([v11 host], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = [v11 port];

    if (v14)
    {
      v15 = [v11 baseURL];

      if (v15)
      {
        v16 = [v11 baseURL];

        v11 = v16;
      }

      if ([v9 monitorsReachability])
      {
        v17 = [HMFNetAddress alloc];
        v18 = [v11 host];
        v19 = [(HMFNetAddress *)v17 initWithHostname:v18];

        v20 = [[HMFNetMonitor alloc] initWithNetAddress:v19];
      }

      else
      {
        v20 = 0;
      }

      v26 = [(HMFHTTPClient *)self createNSURLSession:v9];
      v22 = [(HMFHTTPClient *)self initWithBaseURL:v11 configuration:v9 session:v26 reachabilityMonitor:v20 netManager:v10];

      v25 = v22;
      goto LABEL_14;
    }
  }

  else
  {
  }

  v21 = objc_autoreleasePoolPush();
  v22 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier(v22);
    v29 = 138543618;
    v30 = v24;
    v31 = 2112;
    v32 = v11;
    _os_log_impl(&dword_22ADEC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Invalid base URL: %@", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  v25 = 0;
LABEL_14:

  v27 = *MEMORY[0x277D85DE8];
  return v25;
}

- (HMFHTTPClient)initWithBaseURL:(id)a3 configuration:(id)a4 session:(id)a5 reachabilityMonitor:(id)a6 netManager:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v27.receiver = self;
  v27.super_class = HMFHTTPClient;
  v17 = [(HMFHTTPClient *)&v27 init];
  v18 = v17;
  if (v17)
  {
    v19 = HMFDispatchQueueName(v17, 0);
    v20 = dispatch_queue_create(v19, 0);
    queue = v18->_queue;
    v18->_queue = v20;

    v22 = [v12 copy];
    baseURL = v18->_baseURL;
    v18->_baseURL = v22;

    v24 = [v13 copy];
    configuration = v18->_configuration;
    v18->_configuration = v24;

    objc_storeStrong(&v18->_session, a5);
    objc_storeStrong(&v18->_reachabilityMonitor, a6);
    objc_storeStrong(&v18->_netManager, a7);
    [(HMFHTTPClient *)v18 finishCommonInitialization];
  }

  return v18;
}

- (HMFHTTPClient)initWithNetService:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc_init(HMFHTTPClientConfiguration);
  v8 = v7;
  if ((v4 & 1) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    [(HMFHTTPClientConfiguration *)v8 setMonitorsReachability:1];
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [(HMFHTTPClientConfiguration *)v7 setRequiresEncryption:1];
  if ((v4 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v4 & 4) != 0)
  {
LABEL_4:
    [(HMFHTTPClientConfiguration *)v8 setSupportsWakeOnLAN:1];
  }

LABEL_5:
  v9 = [(HMFHTTPClient *)self initWithService:v6 configuration:v8];

  return v9;
}

- (HMFHTTPClient)initWithService:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[HMFNetManager sharedManager];
  v9 = [(HMFHTTPClient *)self initWithService:v7 configuration:v6 netManager:v8];

  return v9;
}

- (HMFHTTPClient)initWithService:(id)a3 configuration:(id)a4 netManager:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if ([v9 monitorsReachability])
    {
      v11 = [[HMFNetMonitor alloc] initWithNetService:v8];
    }

    else
    {
      v11 = 0;
    }

    v17 = [(HMFHTTPClient *)self createNSURLSession:v9];
    v13 = [(HMFHTTPClient *)self initWithService:v8 configuration:v9 session:v17 reachabilityMonitor:v11 netManager:v10];

    v16 = v13;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier(v13);
      v20 = 138543362;
      v21 = v15;
      _os_log_impl(&dword_22ADEC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Network service is required", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (HMFHTTPClient)initWithService:(id)a3 configuration:(id)a4 session:(id)a5 reachabilityMonitor:(id)a6 netManager:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v30.receiver = self;
  v30.super_class = HMFHTTPClient;
  v18 = [(HMFHTTPClient *)&v30 init];
  v19 = v18;
  if (v18)
  {
    v20 = HMFDispatchQueueName(v18, 0);
    v21 = dispatch_queue_create(v20, 0);
    queue = v19->_queue;
    v19->_queue = v21;

    objc_storeStrong(&v19->_netService, a3);
    v23 = [v14 copy];
    configuration = v19->_configuration;
    v19->_configuration = v23;

    objc_storeStrong(&v19->_session, a5);
    objc_storeStrong(&v19->_reachabilityMonitor, a6);
    objc_storeStrong(&v19->_netManager, a7);
    if (v19->_reachabilityMonitor)
    {
      v25 = objc_alloc_init(MEMORY[0x277CCABD8]);
      reachabilityProbeQueue = v19->_reachabilityProbeQueue;
      v19->_reachabilityProbeQueue = v25;

      v27 = v19->_reachabilityProbeQueue;
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", HMFDispatchQueueName(v19, @"reachabilityProbeQueue"];
      [(NSOperationQueue *)v27 setName:v28];

      [(NSOperationQueue *)v19->_reachabilityProbeQueue setMaxConcurrentOperationCount:1];
      [(NSOperationQueue *)v19->_reachabilityProbeQueue setQualityOfService:25];
    }

    [(HMFHTTPClient *)v19 finishCommonInitialization];
  }

  return v19;
}

- (id)createNSURLSession:(id)a3
{
  v4 = MEMORY[0x277CBABC8];
  v5 = a3;
  v6 = [v4 defaultSessionConfiguration];
  [v6 setHTTPCookieAcceptPolicy:1];
  [v6 setHTTPCookieStorage:0];
  [v6 setHTTPShouldSetCookies:0];
  [v6 setURLCredentialStorage:0];
  [v6 setURLCache:0];
  [v6 setHTTPShouldUsePipelining:1];
  v7 = [v5 allowsCellularAccess];

  [v6 setAllowsCellularAccess:v7];
  v8 = MEMORY[0x277CBABB8];
  v9 = [MEMORY[0x277CCABD8] mainQueue];
  v10 = [v8 sessionWithConfiguration:v6 delegate:self delegateQueue:v9];

  return v10;
}

- (void)finishCommonInitialization
{
  v11 = *MEMORY[0x277D85DE8];
  self->_reachable = 1;
  timerFactory = self->_timerFactory;
  self->_timerFactory = &__block_literal_global_31;

  [(HMFNetMonitor *)self->_reachabilityMonitor setDelegate:self];
  if ([(HMFHTTPClientConfiguration *)self->_configuration supportsWakeOnLAN])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier(v5);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_INFO, "%{public}@Registering for WOW assertion", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMFNetManager *)v5->_netManager registerWoWAssertionForObject:v5];
  }

  [(HMFHTTPClient *)self resolveWithCompletionHandler:0];
  v8 = *MEMORY[0x277D85DE8];
}

HMFExponentialBackoffTimer *__43__HMFHTTPClient_finishCommonInitialization__block_invoke()
{
  v0 = [[HMFExponentialBackoffTimer alloc] initWithMinimumTimeInterval:3 maximumTimeInterval:1 exponentialFactor:1.0 options:1800.0];

  return v0;
}

- (void)dealloc
{
  [(HMFNetManager *)self->_netManager deregisterObject:self];
  v3.receiver = self;
  v3.super_class = HMFHTTPClient;
  [(HMFHTTPClient *)&v3 dealloc];
}

- (id)attributeDescriptions
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  v4 = [(HMFHTTPClient *)self baseURL];
  v5 = +[HMFPrivateObjectFormatter defaultFormatter];
  v6 = [(HMFAttributeDescription *)v3 initWithName:@"URL" value:v4 options:0 formatter:v5];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMFHTTPClient *)self baseURL];
  v6 = [(HMFHTTPClient *)self session];
  v7 = [v6 description];
  v8 = [v3 stringWithFormat:@"<%@ URL = %@, Session = %@, active = %d, pinging = %d, proxy = %d, reachable = %d>", v4, v5, v7, -[HMFHTTPClient isActive](self, "isActive"), -[HMFHTTPClient isPinging](self, "isPinging"), -[HMFHTTPClient isProxy](self, "isProxy"), -[HMFHTTPClient isReachable](self, "isReachable")];

  return v8;
}

- (HMFHTTPClientConfiguration)configuration
{
  v2 = [(HMFHTTPClientConfiguration *)self->_configuration copy];

  return v2;
}

- (unint64_t)options
{
  v3 = [(HMFHTTPClientConfiguration *)self->_configuration requiresEncryption];
  if ([(HMFHTTPClientConfiguration *)self->_configuration monitorsReachability])
  {
    v3 |= 2uLL;
  }

  if ([(HMFHTTPClientConfiguration *)self->_configuration supportsWakeOnLAN])
  {
    return v3 | 4;
  }

  else
  {
    return v3;
  }
}

- (NSURL)baseURL
{
  v36 = *MEMORY[0x277D85DE8];
  netService = self->_netService;
  if (netService)
  {
    v4 = [(HMFNetService *)netService hostName];
    v5 = [(HMFNetService *)self->_netService addresses];
    v6 = [(HMFNetService *)self->_netService port];
    if ([v5 count])
    {
      v7 = v6 == -1;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      if ([(HMFHTTPClientConfiguration *)self->_configuration requiresEncryption])
      {
        v10 = @"https";
      }

      else
      {
        v10 = @"http";
      }

      if (v4)
      {
        v11 = v4;
      }

      else
      {
        v11 = [v5 firstObject];
      }

      v12 = v11;
      if ([(HMFHTTPClientConfiguration *)self->_configuration supportsWakeOnLAN])
      {
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v13 = v5;
        v14 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v14)
        {
          v15 = v14;
          v26 = v10;
          v16 = *v28;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v28 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v27 + 1) + 8 * i);
              if ([v18 addressFamily] == 1)
              {
                v19 = v18;

                v12 = v19;
                goto LABEL_26;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }

LABEL_26:
          v10 = v26;
        }

        if ([v12 addressFamily] != 1)
        {
          v20 = objc_autoreleasePoolPush();
          v21 = self;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = HMFGetLogIdentifier(v21);
            *buf = 138543618;
            v32 = v23;
            v33 = 2112;
            v34 = v12;
            _os_log_impl(&dword_22ADEC000, v22, OS_LOG_TYPE_INFO, "%{public}@No available IPv4 address, falling back to '%@', WoW may fail.", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v20);
        }
      }

      v8 = [HMFHTTPClient baseURLWithScheme:v10 hostAddress:v12 port:v6];
    }
  }

  else
  {
    v8 = self->_baseURL;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)isReachable
{
  os_unfair_lock_lock_with_options();
  reachable = self->_reachable;
  os_unfair_lock_unlock(&self->_lock);
  return reachable;
}

- (void)setReachable:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (self->_reachable == v3)
  {
    v5 = *MEMORY[0x277D85DE8];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_reachable = v3;
    if (!v3)
    {
      self->_active = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
    v6 = self;
    v7 = objc_autoreleasePoolPush();
    v8 = v6;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier(v8);
      v11 = v10;
      v12 = @"unreachable";
      if (v3)
      {
        v12 = @"reachable";
      }

      v15 = 138543618;
      v16 = v10;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of reachablity change to %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [(HMFHTTPClient *)v8 delegate];
    if (v3)
    {
      if (objc_opt_respondsToSelector())
      {
        [v13 clientDidBecomeReachable:v8];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [v13 clientDidBecomeUnreachable:v8];
    }

    v14 = *MEMORY[0x277D85DE8];
  }
}

- (BOOL)isPinging
{
  os_unfair_lock_lock_with_options();
  pinging = self->_pinging;
  os_unfair_lock_unlock(&self->_lock);
  return pinging;
}

- (void)setPinging:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_pinging = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)startReachabilityProbe
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HMFHTTPClient_startReachabilityProbe__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(queue, block);
}

void __39__HMFHTTPClient_startReachabilityProbe__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 56);
  v3 = v2;
  if (v2)
  {
    if ([v2 isPublishing])
    {
      v4 = objc_autoreleasePoolPush();
      v5 = *(a1 + 32);
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = HMFGetLogIdentifier(v5);
        *buf = 138543362;
        v24 = v7;
        _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Starting net service reachability resolution", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      v8 = objc_alloc_init(HMFBlockOperation);
      objc_initWeak(buf, *(a1 + 32));
      objc_initWeak(&location, v8);
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __39__HMFHTTPClient_startReachabilityProbe__block_invoke_74;
      v18 = &unk_2786E7910;
      objc_copyWeak(&v20, &location);
      objc_copyWeak(&v21, buf);
      v19 = v3;
      [(HMFBlockOperation *)v8 addExecutionBlock:&v15];
      v9 = [*(a1 + 32) reachabilityProbeQueue];
      [v9 addOperation:v8];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }

    else if ([*(a1 + 32) isReachable] && (objc_msgSend(*(a1 + 32), "isPinging") & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 32);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = HMFGetLogIdentifier(v11);
        *buf = 138543362;
        v24 = v13;
        _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Service is unreachable, performing a one-time ping", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      if (([*(a1 + 32) requestClientReachabilityPingWithRetry:0] & 1) == 0)
      {
        [*(a1 + 32) setReachable:0];
      }
    }
  }

  else if (([*(a1 + 32) requestClientReachabilityPingWithRetry:1] & 1) == 0)
  {
    [*(a1 + 32) setReachable:0];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __39__HMFHTTPClient_startReachabilityProbe__block_invoke_74(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0)
  {
    v4 = objc_loadWeakRetained((a1 + 48));
    v5 = objc_autoreleasePoolPush();
    v6 = v4;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier(v6);
      v9 = *(a1 + 32);
      *buf = 138543618;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting confirmation for service: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __39__HMFHTTPClient_startReachabilityProbe__block_invoke_75;
    v12[3] = &unk_2786E75F8;
    objc_copyWeak(&v13, (a1 + 40));
    objc_copyWeak(&v14, (a1 + 48));
    [v10 confirmWithTimeout:v12 completionHandler:15.0];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v13);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __39__HMFHTTPClient_startReachabilityProbe__block_invoke_75(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = v6;
    if (v3)
    {
      v8 = [v6 isReachable];
      v9 = objc_autoreleasePoolPush();
      v10 = v7;
      v11 = HMFGetOSLogHandle();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v12)
        {
          v13 = HMFGetLogIdentifier(v10);
          v22 = 138543362;
          v23 = v13;
          _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to confirm service, marking the client as unreachable", &v22, 0xCu);
        }

        objc_autoreleasePoolPop(v9);
        [v10 setReachable:0];
      }

      else
      {
        if (v12)
        {
          v20 = HMFGetLogIdentifier(v10);
          v22 = 138543362;
          v23 = v20;
          _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to confirm service, the client is already unreachable", &v22, 0xCu);
        }

        objc_autoreleasePoolPop(v9);
      }
    }

    else
    {
      v14 = [v6 reachabilityProbeQueue];
      [v14 cancelAllOperations];

      v15 = [v7 delegatedPingTimer];

      if (!v15)
      {
        v16 = objc_autoreleasePoolPush();
        v17 = v7;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier(v17);
          v22 = 138543362;
          v23 = v19;
          _os_log_impl(&dword_22ADEC000, v18, OS_LOG_TYPE_INFO, "%{public}@Confirmed service, requesting application ping", &v22, 0xCu);
        }

        objc_autoreleasePoolPop(v16);
        [v17 requestClientReachabilityPingWithRetry:1];
      }
    }

    [v5 finish];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)requestClientReachabilityPingWithRetry:(BOOL)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(HMFHTTPClient *)self delegate];
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    v7 = [(HMFHTTPClient *)self isPinging];
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier(v9);
        *buf = 138543362;
        v20 = v12;
        _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_INFO, "%{public}@Client ping in progress, dropping ping request", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
    }

    else
    {
      if (v11)
      {
        v13 = HMFGetLogIdentifier(v9);
        *buf = 138543362;
        v20 = v13;
        _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_INFO, "%{public}@Requesting client to perform a ping", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      [(HMFHTTPClient *)v9 setPinging:1];
      objc_initWeak(buf, v9);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __56__HMFHTTPClient_requestClientReachabilityPingWithRetry___block_invoke;
      v16[3] = &unk_2786E7938;
      objc_copyWeak(&v17, buf);
      v18 = a3;
      [v5 client:v9 didRequestPingWithCompletionHandler:v16];
      objc_destroyWeak(&v17);
      objc_destroyWeak(buf);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

void __56__HMFHTTPClient_requestClientReachabilityPingWithRetry___block_invoke(uint64_t a1, char a2)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPinging:0];
  if (a2)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier(v6);
      v17 = 138543362;
      v18 = v8;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_INFO, "%{public}@Delegated ping succeeded, marking the client as reachable", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [v6 setReachable:1];
    [v6 stopDelegatedPingTimer];
  }

  else
  {
    v9 = [WeakRetained isReachable];
    v10 = objc_autoreleasePoolPush();
    v11 = WeakRetained;
    v12 = HMFGetOSLogHandle();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v13)
      {
        v14 = HMFGetLogIdentifier(v11);
        v17 = 138543362;
        v18 = v14;
        _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Delegated ping failed, marking the client as unreachable", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      [v11 setReachable:0];
    }

    else
    {
      if (v13)
      {
        v15 = HMFGetLogIdentifier(v11);
        v17 = 138543362;
        v18 = v15;
        _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Delegated ping failed, the client is already unreachable", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
    }

    if (*(a1 + 40) == 1)
    {
      [v11 startDelegatedPingTimer];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)startDelegatedPingTimer
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HMFHTTPClient_startDelegatedPingTimer__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(queue, block);
}

void __40__HMFHTTPClient_startDelegatedPingTimer__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier(v3);
    v14 = 138543362;
    v15 = v5;
    _os_log_impl(&dword_22ADEC000, v4, OS_LOG_TYPE_INFO, "%{public}@Going to attempt to retry delegated ping later", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) delegatedPingTimer];

  if (!v6)
  {
    v7 = *(a1 + 32);
    v8 = [v7 timerFactory];
    v9 = v8[2]();
    [v7 setDelegatedPingTimer:v9];

    v10 = [*(a1 + 32) delegatedPingTimer];
    [v10 setDelegateQueue:*(*(a1 + 32) + 16)];

    v11 = [*(a1 + 32) delegatedPingTimer];
    [v11 setDelegate:*(a1 + 32)];
  }

  v12 = [*(a1 + 32) delegatedPingTimer];
  [v12 resume];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)stopDelegatedPingTimer
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HMFHTTPClient_stopDelegatedPingTimer__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __39__HMFHTTPClient_stopDelegatedPingTimer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegatedPingTimer];
  [v2 suspend];

  v3 = *(a1 + 32);

  return [v3 setDelegatedPingTimer:0];
}

- (void)sendRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMFHTTPClient_sendRequest_completionHandler___block_invoke;
  block[3] = &unk_2786E79B0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __47__HMFHTTPClient_sendRequest_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internal];
  v3 = [v2 activity];
  [v3 markWithReason:@"Resolving"];

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __47__HMFHTTPClient_sendRequest_completionHandler___block_invoke_2;
  v18 = &unk_2786E7988;
  v4 = *(a1 + 40);
  v19 = *(a1 + 32);
  v5 = *(a1 + 48);
  v20 = *(a1 + 40);
  v21 = v5;
  v6 = v4;
  v7 = &v15;
  v8 = v7;
  if (v6)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = ____HMFHTTPClientGetBaseURL_block_invoke;
    aBlock[3] = &unk_2786E7A78;
    v9 = v7;
    v26 = v9;
    v10 = _Block_copy(aBlock);
    v11 = [v6 netService];
    v12 = v11;
    if (v11 && ![v11 isResolved])
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = ____HMFHTTPClientGetBaseURL_block_invoke_2;
      v22[3] = &unk_2786E7AA0;
      v14 = v6;
      v23 = v14;
      v24 = v9;
      [v14 resolveWithCompletionHandler:v22];

      v13 = v23;
    }

    else
    {
      v13 = [v6 baseURL];
      v10[2](v10, v13, 0);
    }
  }
}

void __47__HMFHTTPClient_sendRequest_completionHandler___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] internal];
  v8 = [v7 activity];
  [v8 markWithReason:@"Resolved"];

  if (v5)
  {
    [a1[5] setActive:1];
    v10 = a1[4];
    v9 = a1[5];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__HMFHTTPClient_sendRequest_completionHandler___block_invoke_3;
    v12[3] = &unk_2786E7960;
    v12[4] = v9;
    v13 = a1[6];
    [v9 _sendRequest:v10 baseURL:v5 completionHandler:v12];
  }

  else
  {
    v11 = a1[6];
    if (v11)
    {
      v11[2](v11, 0, v6);
    }

    [a1[5] startReachabilityProbe];
  }
}

void __47__HMFHTTPClient_sendRequest_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_18;
  }

  v8 = v6;
  v9 = [v8 domain];
  v10 = *MEMORY[0x277CCA738];
  if ([v9 isEqualToString:*MEMORY[0x277CCA738]])
  {
    v11 = [v8 code];

    if (v11 == -999)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier(v13);
        v32 = 138543362;
        v33 = v15;
        _os_log_impl(&dword_22ADEC000, v14, OS_LOG_TYPE_INFO, "%{public}@Request cancelled, reachability probe is not started", &v32, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      goto LABEL_18;
    }
  }

  else
  {
  }

  v16 = v8;
  v17 = [v16 domain];
  if ([v17 isEqualToString:v10])
  {
    v18 = [v16 code];

    if (v18 == -1001)
    {
      v19 = [*(a1 + 32) isReachable];
      v20 = objc_autoreleasePoolPush();
      v21 = *(a1 + 32);
      v22 = HMFGetOSLogHandle();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
      if (v19)
      {
        if (v23)
        {
          v24 = HMFGetLogIdentifier(v21);
          v32 = 138543362;
          v33 = v24;
          _os_log_impl(&dword_22ADEC000, v22, OS_LOG_TYPE_INFO, "%{public}@Request timed out, marking the client as unreachable", &v32, 0xCu);
        }

        objc_autoreleasePoolPop(v20);
        [*(a1 + 32) setReachable:0];
      }

      else
      {
        if (v23)
        {
          v31 = HMFGetLogIdentifier(v21);
          v32 = 138543362;
          v33 = v31;
          _os_log_impl(&dword_22ADEC000, v22, OS_LOG_TYPE_INFO, "%{public}@Request timed out, the client is already unreachable", &v32, 0xCu);
        }

        objc_autoreleasePoolPop(v20);
      }
    }
  }

  else
  {
  }

  v25 = objc_autoreleasePoolPush();
  v26 = *(a1 + 32);
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier(v26);
    v32 = 138543362;
    v33 = v28;
    _os_log_impl(&dword_22ADEC000, v27, OS_LOG_TYPE_INFO, "%{public}@Request failed, starting reachability probe", &v32, 0xCu);
  }

  objc_autoreleasePoolPop(v25);
  [*(a1 + 32) startReachabilityProbe];
LABEL_18:
  v29 = *(a1 + 40);
  if (v29)
  {
    (*(v29 + 16))(v29, v5, v7);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_sendRequest:(id)a3 baseURL:(id)a4 completionHandler:(id)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 urlRequest];
  v12 = [v11 mutableCopy];

  [v12 setAllowsCellularAccess:{-[HMFHTTPClientConfiguration allowsCellularAccess](self->_configuration, "allowsCellularAccess")}];
  v13 = MEMORY[0x277CBEBC0];
  v14 = [v12 URL];
  v15 = [v14 relativePath];
  v16 = [v13 URLWithString:v15 relativeToURL:v9];

  v17 = [v16 baseURL];
  v18 = [v12 URL];
  v19 = [v18 baseURL];
  v20 = [v17 isEqual:v19];

  if ((v20 & 1) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = HMFGetLogIdentifier(v22);
      *buf = 138543618;
      v47 = v24;
      v48 = 2112;
      v49 = v16;
      _os_log_impl(&dword_22ADEC000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Override the request URL to: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    [v12 setURL:v16];
  }

  v25 = [v12 valueForHTTPHeaderField:@"Host"];

  if (!v25)
  {
    v26 = [MEMORY[0x277CCACE0] componentsWithURL:v9 resolvingAgainstBaseURL:0];
    v27 = [v26 host];

    [v12 setValue:v27 forHTTPHeaderField:@"Host"];
  }

  v28 = objc_autoreleasePoolPush();
  v29 = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = HMFGetLogIdentifier(v29);
    *buf = 138543618;
    v47 = v31;
    v48 = 2112;
    v49 = v12;
    _os_log_impl(&dword_22ADEC000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Sending request: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v28);
  v32 = [(HMFHTTPClient *)v29 session];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __56__HMFHTTPClient__sendRequest_baseURL_completionHandler___block_invoke;
  v43[3] = &unk_2786E79D8;
  v43[4] = v29;
  v33 = v8;
  v44 = v33;
  v34 = v10;
  v45 = v34;
  v35 = [v32 dataTaskWithRequest:v12 completionHandler:v43];

  v36 = objc_autoreleasePoolPush();
  v37 = v29;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = HMFGetLogIdentifier(v37);
    *buf = 138543618;
    v47 = v39;
    v48 = 2112;
    v49 = v35;
    _os_log_impl(&dword_22ADEC000, v38, OS_LOG_TYPE_INFO, "%{public}@Resuming task: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v36);
  v40 = [v33 internal];
  v41 = [v40 activity];
  [v41 markWithReason:@"Sending"];

  [v35 resume];
  v42 = *MEMORY[0x277D85DE8];
}

void __56__HMFHTTPClient__sendRequest_baseURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier(v11);
    v14 = [*(a1 + 40) shortDescription];
    v37 = 138544130;
    v38 = v13;
    v39 = 2112;
    v40 = v8;
    v41 = 2112;
    v42 = v14;
    v43 = 2112;
    v44 = v9;
    _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Received response, %@, to request, %@, with error: %@", &v37, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  v15 = v9;
  v16 = v15;
  if (v15)
  {
    goto LABEL_4;
  }

  v23 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  if (v25)
  {
    v26 = [*(a1 + 40) internal];
    v27 = [v26 responseWithStatusCode:{-[HMFHTTPResponse statusCode](v25, "statusCode")}];

    v28 = [(HMFHTTPResponse *)v25 allHeaderFields];
    [v27 setHeaderFields:v28];

    [v27 setBody:v7];
    v22 = [[HMFHTTPResponse alloc] initWithRequest:*(a1 + 40) internalResponse:v27];
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3 reason:@"Invalid response scheme type"];
    if (v16)
    {
LABEL_4:
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 32);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = HMFGetLogIdentifier(v18);
        v21 = *(a1 + 40);
        v37 = 138543874;
        v38 = v20;
        v39 = 2112;
        v40 = v21;
        v41 = 2112;
        v42 = v16;
        _os_log_impl(&dword_22ADEC000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to send request, %@, with error: %@", &v37, 0x20u);
      }

      v22 = 0;
      goto LABEL_15;
    }

    v22 = 0;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = *(a1 + 32);
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v29 = HMFGetLogIdentifier(v18);
    v37 = 138543618;
    v38 = v29;
    v39 = 2112;
    v40 = v22;
    _os_log_impl(&dword_22ADEC000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Received response: %@", &v37, 0x16u);
  }

  v16 = 0;
LABEL_15:

  objc_autoreleasePoolPop(v17);
  if (*(a1 + 48))
  {
    v30 = [*(a1 + 40) internal];
    v31 = [v30 activity];
    [v31 markWithReason:@"Received response"];

    (*(*(a1 + 48) + 16))();
  }

  v32 = [(HMFHTTPResponse *)v22 internal];
  v33 = [v32 activity];
  [v33 invalidate];

  v34 = [*(a1 + 40) internal];
  v35 = [v34 activity];
  [v35 invalidate];

  v36 = *MEMORY[0x277D85DE8];
}

- (void)cancelPendingRequests
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HMFHTTPClient_cancelPendingRequests__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(queue, block);
}

void __38__HMFHTTPClient_cancelPendingRequests__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier(v3);
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&dword_22ADEC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Cancelling all pending requests", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  objc_initWeak(buf, *(a1 + 32));
  v6 = [*(a1 + 32) session];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__HMFHTTPClient_cancelPendingRequests__block_invoke_103;
  v8[3] = &unk_2786E7A00;
  objc_copyWeak(&v9, buf);
  [v6 getAllTasksWithCompletionHandler:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
}

void __38__HMFHTTPClient_cancelPendingRequests__block_invoke_103(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = WeakRetained;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier(v12);
          *buf = 138543618;
          v21 = v14;
          v22 = 2112;
          v23 = v10;
          _os_log_impl(&dword_22ADEC000, v13, OS_LOG_TYPE_INFO, "%{public}@Canceling task: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v11);
        [v10 cancel];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__HMFHTTPClient_invalidate__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(queue, block);
}

void __27__HMFHTTPClient_invalidate__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier(v3);
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_22ADEC000, v4, OS_LOG_TYPE_INFO, "%{public}@Invalidating the client", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) session];
  [v6 invalidateAndCancel];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)resolveWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_netService)
  {
    objc_initWeak(&location, self);
    netService = self->_netService;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__HMFHTTPClient_resolveWithCompletionHandler___block_invoke;
    v7[3] = &unk_2786E7A50;
    objc_copyWeak(&v9, &location);
    v8 = v5;
    [(HMFNetService *)netService resolveWithTimeout:v7 completionHandler:15.0];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0);
  }
}

void __46__HMFHTTPClient_resolveWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = WeakRetained[2];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __46__HMFHTTPClient_resolveWithCompletionHandler___block_invoke_2;
      v9[3] = &unk_2786E7A28;
      v11 = v7;
      v10 = v4;
      dispatch_async(v8, v9);
    }
  }
}

+ (id)logCategory
{
  if (_MergedGlobals_3_12 != -1)
  {
    dispatch_once(&_MergedGlobals_3_12, &__block_literal_global_107);
  }

  v3 = qword_280AFC410;

  return v3;
}

uint64_t __28__HMFHTTPClient_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle(@"Networking.HTTP.Client", @"com.apple.HMFoundation");
  v1 = qword_280AFC410;
  qword_280AFC410 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)logIdentifier
{
  netService = self->_netService;
  if (netService)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(HMFNetService *)netService domain];
    v6 = [(HMFNetService *)self->_netService type];
    v7 = [(HMFNetService *)self->_netService name];
    v8 = [v4 stringWithFormat:@"%@%@%@", v5, v6, v7];
  }

  else
  {
    v5 = [(HMFHTTPClient *)self baseURL];
    v8 = [v5 absoluteString];
  }

  return v8;
}

- (void)networkMonitorIsReachable:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMFHTTPClient_networkMonitorIsReachable___block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(queue, block);
}

void __43__HMFHTTPClient_networkMonitorIsReachable___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[7])
  {
    v3 = *MEMORY[0x277D85DE8];

    __HMFHTTPClientHandleReachabilityChange(v2, 1);
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier(v5);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_INFO, "%{public}@Received notification that the client is now reachable", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setReachable:1];
    v8 = *MEMORY[0x277D85DE8];
  }
}

- (void)networkMonitorIsUnreachable:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMFHTTPClient_networkMonitorIsUnreachable___block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(queue, block);
}

void __45__HMFHTTPClient_networkMonitorIsUnreachable___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[7])
  {
    v3 = *MEMORY[0x277D85DE8];

    __HMFHTTPClientHandleReachabilityChange(v2, 0);
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier(v5);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_INFO, "%{public}@Received notification that the client is no longer reachable", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) setReachable:0];
    v8 = *MEMORY[0x277D85DE8];
  }
}

- (void)timerDidFire:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier(v6);
    v15 = 138543362;
    v16 = v8;
    _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Delegated ping timer fired", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [v4 suspend];
  netService = v6->_netService;
  if (!netService || [(HMFNetService *)netService isPublishing])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v6;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier(v11);
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Retrying delegated ping", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    if (![(HMFHTTPClient *)v11 requestClientReachabilityPingWithRetry:1])
    {
      [(HMFHTTPClient *)v11 stopDelegatedPingTimer];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier(v9);
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Session did become invalid with error: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = HMFGetLogIdentifier(v12);
    v23 = 138543618;
    v24 = v14;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_22ADEC000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Received challenge: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  if ([(HMFHTTPClientConfiguration *)v12->_configuration allowsAnonymousConnection]|| [(HMFHTTPClient *)v12 allowAnonymousConnection])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v12;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier(v16);
      v23 = 138543362;
      v24 = v18;
      _os_log_impl(&dword_22ADEC000, v17, OS_LOG_TYPE_INFO, "%{public}@Received connection challenge, accepting the server's certificate as the client is set to allow anonymous connections", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v19 = MEMORY[0x277CBAB80];
    v20 = [v9 protectionSpace];
    v21 = [v19 credentialForTrust:{objc_msgSend(v20, "serverTrust")}];
    v10[2](v10, 0, v21);
  }

  else
  {
    v10[2](v10, 1, 0);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (HMFHTTPClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end