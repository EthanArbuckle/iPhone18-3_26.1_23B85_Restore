@interface HMDMessageDispatcher
+ (HMDMessageDispatcher)defaultDispatcher;
+ (id)logCategory;
- (HMDHomeManager)homeManager;
- (HMDMessageDispatcher)initWithXPCTransport:(id)transport secureRemoteTransport:(id)remoteTransport messageFilterChain:(id)chain;
- (id)homeForMessageTarget:(id)target;
- (id)httpMessageTransport;
- (id)remoteAccessDeviceForHome:(id)home;
- (id)residentCommunicationHandlerForHome:(id)home;
- (id)sendMessageExpectingResponse:(id)response;
- (void)_setRemoteAccessDevice:(id)device forHome:(id)home sendNotification:(BOOL)notification;
- (void)configureHTTPTransport:(id)transport;
- (void)configureHomeManager:(id)manager;
- (void)dealloc;
- (void)disableMessageServer;
- (void)dispatchMessage:(id)message;
- (void)electDeviceForHH1User:(id)user destination:(id)destination deviceCapabilities:(id)capabilities responseTimeout:(double)timeout responseQueue:(id)queue responseHandler:(id)handler;
- (void)enableMessageServer;
- (void)handleSecureSessionError:(id)error;
- (void)reset;
- (void)sendMessage:(id)message completionHandler:(id)handler;
- (void)sendSecureMessage:(id)message target:(id)target userID:(id)d destination:(id)destination responseQueue:(id)queue responseHandler:(id)handler;
- (void)setCompanionDevice:(id)device forHome:(id)home;
- (void)setRemoteAccessDevice:(id)device forHome:(id)home;
@end

@implementation HMDMessageDispatcher

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (id)sendMessageExpectingResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = responseCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    responseHandler = [v6 responseHandler];

    if (responseHandler)
    {
      v10 = _HMFPreconditionFailure();
      return __53__HMDMessageDispatcher_sendMessageExpectingResponse___block_invoke(v10, v11);
    }

    v16 = 0;
    v8 = [MEMORY[0x277D0F7C0] futureWithPromise:&v16];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__HMDMessageDispatcher_sendMessageExpectingResponse___block_invoke;
    v14[3] = &unk_279734E00;
    v15 = v16;
    [v6 setResponseHandler:v14];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__HMDMessageDispatcher_sendMessageExpectingResponse___block_invoke_2;
    v12[3] = &unk_2797359D8;
    v13 = v16;
    [(HMDMessageDispatcher *)self sendMessage:v6 completionHandler:v12];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = HMDMessageDispatcher;
    v8 = [(HMDMessageDispatcher *)&v17 sendMessageExpectingResponse:responseCopy];
  }

  return v8;
}

uint64_t __53__HMDMessageDispatcher_sendMessageExpectingResponse___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 rejectWithError:a2];
  }

  else
  {
    return [v2 fulfillWithValue:?];
  }
}

uint64_t __53__HMDMessageDispatcher_sendMessageExpectingResponse___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) rejectWithError:a2];
  }

  return result;
}

- (void)sendMessage:(id)message completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handlerCopy = handler;
  if (messageCopy)
  {
    destination = [messageCopy destination];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      v16 = messageCopy;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        xPCTransport = [(HMDMessageDispatcher *)self XPCTransport];
        v15 = xPCTransport;
        v19 = v16;
        goto LABEL_11;
      }
    }

    xPCTransport = [(HMDMessageDispatcher *)self secureRemoteTransport];
    v15 = xPCTransport;
    v19 = messageCopy;
LABEL_11:
    [xPCTransport sendMessage:v19 completionHandler:handlerCopy];
    goto LABEL_12;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v22 = v12;
    v23 = 2112;
    v24 = @"Requested to send nil message";
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [[HMDAssertionLogEvent alloc] initWithReason:@"%@", @"Requested to send nil message"];
  v14 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v14 submitLogEvent:v13];

  if (handlerCopy)
  {
    v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8 reason:@"Requested to send nil message"];
    handlerCopy[2](handlerCopy, v15);
LABEL_12:
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)dispatchMessage:(id)message
{
  messageCopy = message;
  messageFilterChain = [(HMDMessageDispatcher *)self messageFilterChain];
  v29 = 0;
  v6 = [messageFilterChain acceptMessage:messageCopy error:&v29];
  v7 = v29;

  responseHandler = [messageCopy responseHandler];
  responseHandler2 = responseHandler;
  if (v6)
  {
    if (responseHandler)
    {
      name = [messageCopy name];
      identifier = [messageCopy identifier];
      isRemote = [messageCopy isRemote];
      v13 = messageCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      isSecure = [v15 isSecure];
      v27[0] = 0;
      v27[1] = v27;
      v27[2] = 0x2810000000;
      v27[3] = "";
      v28 = 0;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __40__HMDMessageDispatcher_dispatchMessage___block_invoke;
      v20[3] = &unk_279728D60;
      v24 = v27;
      v20[4] = self;
      v17 = name;
      v21 = v17;
      v18 = identifier;
      v22 = v18;
      v25 = isRemote;
      v26 = isSecure;
      v23 = responseHandler2;
      [v13 setResponseHandler:v20];

      _Block_object_dispose(v27, 8);
    }

    v19.receiver = self;
    v19.super_class = HMDMessageDispatcher;
    [(HMDMessageDispatcher *)&v19 dispatchMessage:messageCopy];
    goto LABEL_10;
  }

  if (responseHandler2)
  {
    responseHandler2 = [messageCopy responseHandler];
    (responseHandler2)[2](responseHandler2, v7, 0);
LABEL_10:
  }
}

void __40__HMDMessageDispatcher_dispatchMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ((atomic_exchange((*(*(a1 + 64) + 8) + 32), 1u) & 1) == 0)
  {
    v13 = v5;
    v14 = v13;
    if (!v13)
    {
      goto LABEL_15;
    }

    v15 = [v13 domain];
    if ([v15 isEqualToString:*MEMORY[0x277D0F1A0]])
    {
      v16 = [v14 code];

      if (v16 != 14)
      {
        goto LABEL_15;
      }

      if (*(a1 + 72) == 1)
      {
        if ((*(a1 + 73) & 1) == 0)
        {
          v17 = objc_autoreleasePoolPush();
          v18 = *(a1 + 32);
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = HMFGetLogIdentifier();
            v21 = *(a1 + 40);
            v22 = *(a1 + 48);
            v27 = 138543874;
            v28 = v20;
            v29 = 2112;
            v30 = v21;
            v31 = 2112;
            v32 = v22;
            _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping unhandled remote message as it is not secure: %@ (%@)", &v27, 0x20u);
          }

          objc_autoreleasePoolPop(v17);
          goto LABEL_16;
        }

LABEL_15:
        (*(*(a1 + 56) + 16))();
LABEL_16:

        goto LABEL_17;
      }

      v23 = MEMORY[0x277CCA9B8];
      v15 = [v14 domain];
      v24 = [v14 userInfo];
      v25 = [v23 errorWithDomain:v15 code:2 userInfo:v24];

      v14 = v25;
    }

    goto LABEL_15;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v27 = 138543874;
    v28 = v10;
    v29 = 2112;
    v30 = v11;
    v31 = 2112;
    v32 = v12;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Multiple invocations of response handler for message: %@ (%@)", &v27, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
LABEL_17:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)configureHTTPTransport:(id)transport
{
  transportCopy = transport;
  workQueue = [(HMDMessageDispatcher *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDMessageDispatcher_configureHTTPTransport___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = transportCopy;
  v6 = transportCopy;
  dispatch_async(workQueue, v7);
}

void __47__HMDMessageDispatcher_configureHTTPTransport___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) httpMessageTransport];
  [v2 configureWithDevice:*(a1 + 40)];
}

- (void)disableMessageServer
{
  httpMessageTransport = [(HMDMessageDispatcher *)self httpMessageTransport];
  [httpMessageTransport setServerEnabled:0];
}

- (void)enableMessageServer
{
  httpMessageTransport = [(HMDMessageDispatcher *)self httpMessageTransport];
  [httpMessageTransport setServerEnabled:1];
}

- (id)httpMessageTransport
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  secureRemoteTransport = [(HMDMessageDispatcher *)self secureRemoteTransport];
  transports = [secureRemoteTransport transports];

  v4 = [transports countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(transports);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [transports countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)configureHomeManager:(id)manager
{
  managerCopy = manager;
  workQueue = [(HMDMessageDispatcher *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HMDMessageDispatcher_configureHomeManager___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = managerCopy;
  v6 = managerCopy;
  dispatch_async(workQueue, v7);
}

- (id)homeForMessageTarget:(id)target
{
  v20 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  v5 = [(NSCache *)self->_homeForTarget objectForKey:targetCopy];
  if (!v5)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    homeManager = [(HMDMessageDispatcher *)self homeManager];
    homes = [homeManager homes];

    v5 = [homes countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v8 = 0;
      v9 = *v16;
      while (2)
      {
        v10 = 0;
        v11 = v8;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(homes);
          }

          v8 = *(*(&v15 + 1) + 8 * v10);

          v12 = [v8 resolveReceiverForMessageTargetUUID:targetCopy];

          if (v12)
          {
            if (self)
            {
              [(NSCache *)self->_homeForTarget setObject:v8 forKey:targetCopy];
            }

            v5 = v8;
            v8 = homes;
            homes = v5;
            goto LABEL_14;
          }

          v10 = v10 + 1;
          v11 = v8;
        }

        while (v5 != v10);
        v5 = [homes countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }

LABEL_14:
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)reset
{
  secureRemoteTransport = [(HMDMessageDispatcher *)self secureRemoteTransport];
  [secureRemoteTransport reset];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HMDMessageDispatcher;
  [(HMDMessageDispatcher *)&v4 dealloc];
}

- (HMDMessageDispatcher)initWithXPCTransport:(id)transport secureRemoteTransport:(id)remoteTransport messageFilterChain:(id)chain
{
  v31[7] = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  remoteTransportCopy = remoteTransport;
  chainCopy = chain;
  v30.receiver = self;
  v30.super_class = HMDMessageDispatcher;
  v12 = [(HMDMessageDispatcher *)&v30 initWithTransport:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_XPCTransport, transport);
    [(HMFMessageTransport *)v13->_XPCTransport setDelegate:v13];
    objc_storeStrong(&v13->_secureRemoteTransport, remoteTransport);
    [(HMFMessageTransport *)v13->_secureRemoteTransport setDelegate:v13];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    remoteGateways = v13->_remoteGateways;
    v13->_remoteGateways = dictionary;

    objc_storeStrong(&v13->_messageFilterChain, chain);
    v16 = [(HMDMessageFilter *)[HMDSecureRemoteMessageFilter alloc] initWithName:@"SecureRemote"];
    secureRemoteMessageFilter = v13->_secureRemoteMessageFilter;
    v13->_secureRemoteMessageFilter = v16;

    [(HMDMessageFilterChain *)v13->_messageFilterChain addMessageFilter:v13->_secureRemoteMessageFilter];
    v29.receiver = v13;
    v29.super_class = HMDMessageDispatcher;
    filterClasses = [(HMDMessageDispatcher *)&v29 filterClasses];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v31[2] = objc_opt_class();
    v31[3] = objc_opt_class();
    v31[4] = objc_opt_class();
    v31[5] = objc_opt_class();
    v31[6] = objc_opt_class();
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:7];
    v20 = [filterClasses setByAddingObjectsFromArray:v19];
    [(HMDMessageDispatcher *)v13 setFilterClasses:v20];

    v21 = objc_opt_new();
    homeForTarget = v13->_homeForTarget;
    v13->_homeForTarget = v21;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel_handleSecureSessionError_ name:@"HMDSecureRemoteSessionErrorNotification" object:0];

    objc_initWeak(&location, v13);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __86__HMDMessageDispatcher_initWithXPCTransport_secureRemoteTransport_messageFilterChain___block_invoke;
    v26[3] = &unk_279728D38;
    objc_copyWeak(&v27, &location);
    [(HMDMessageDispatcher *)v13 setResolveHook:v26];
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v13;
}

id __86__HMDMessageDispatcher_initWithXPCTransport_secureRemoteTransport_messageFilterChain___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [WeakRetained homeManager];
  v6 = [v5 homes];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 resolveReceiverForMessageTargetUUID:v3];
        if (v12)
        {
          v13 = v12;
          if (WeakRetained)
          {
            [WeakRetained[15] setObject:v11 forKey:v3];
          }

          goto LABEL_12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_79120 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_79120, &__block_literal_global_79121);
  }

  v3 = logCategory__hmf_once_v10_79122;

  return v3;
}

uint64_t __35__HMDMessageDispatcher_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_79122;
  logCategory__hmf_once_v10_79122 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (HMDMessageDispatcher)defaultDispatcher
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HMDMessageDispatcher_defaultDispatcher__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultDispatcher_onceToken != -1)
  {
    dispatch_once(&defaultDispatcher_onceToken, block);
  }

  v2 = defaultDispatcher_defaultDispatcher;

  return v2;
}

void __41__HMDMessageDispatcher_defaultDispatcher__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [HMDMessageDispatcher alloc];
  v3 = +[HMDXPCMessageTransport defaultTransport];
  v4 = +[HMDSecureRemoteMessageTransport defaultTransport];
  v5 = objc_alloc_init(HMDMessageFilterChain);
  v6 = [(HMDMessageDispatcher *)v2 initWithXPCTransport:v3 secureRemoteTransport:v4 messageFilterChain:v5];
  v7 = defaultDispatcher_defaultDispatcher;
  defaultDispatcher_defaultDispatcher = v6;

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Creating default message dispatcher", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)electDeviceForHH1User:(id)user destination:(id)destination deviceCapabilities:(id)capabilities responseTimeout:(double)timeout responseQueue:(id)queue responseHandler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  capabilitiesCopy = capabilities;
  destinationCopy = destination;
  userCopy = user;
  secureRemoteTransport = [(HMDMessageDispatcher *)self secureRemoteTransport];
  [secureRemoteTransport electDeviceForHH1User:userCopy destination:destinationCopy deviceCapabilities:capabilitiesCopy responseTimeout:queueCopy responseQueue:handlerCopy responseHandler:timeout];
}

- (void)sendSecureMessage:(id)message target:(id)target userID:(id)d destination:(id)destination responseQueue:(id)queue responseHandler:(id)handler
{
  v70 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  targetCopy = target;
  dCopy = d;
  destinationCopy = destination;
  queueCopy = queue;
  handlerCopy = handler;
  destination = [messageCopy destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_4:
    destination2 = [messageCopy destination];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = destination2;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    if (v22)
    {
      remoteDestinationString = [v22 remoteDestinationString];
      v24 = [remoteDestinationString isEqualToString:destinationCopy];

      if ((v24 & 1) == 0)
      {
        v40 = objc_autoreleasePoolPush();
        selfCopy = self;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          v43 = HMFGetLogIdentifier();
          [messageCopy shortDescription];
          *buf = 138543618;
          v67 = v43;
          v69 = v68 = 2112;
          v58 = v40;
          v44 = v69;
          _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Mismatched device message destination: %@", buf, 0x16u);

          v40 = v58;
        }

        objc_autoreleasePoolPop(v40);
        v45 = [HMDAssertionLogEvent alloc];
        shortDescription = [messageCopy shortDescription];
        v47 = [(HMDAssertionLogEvent *)v45 initWithReason:@"Mismatched device message destination: %@", shortDescription];

        v48 = +[HMDMetricsManager sharedLogEventSubmitter];
        [v48 submitLogEvent:v47];
      }
    }

    v25 = destinationCopy;

    destination3 = [messageCopy destination];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = destination3;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    if (v28)
    {
      v29 = +[HMDAccountHandleFormatter defaultFormatter];
      remoteDestinationString2 = [v28 remoteDestinationString];
      v31 = [v29 stringForObjectValue:remoteDestinationString2];
      v32 = [v29 stringForObjectValue:dCopy];
      v33 = [v31 isEqualToString:v32];

      if ((v33 & 1) == 0)
      {
        v49 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v51 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
        {
          HMFGetLogIdentifier();
          v52 = v59 = selfCopy2;
          shortDescription2 = [messageCopy shortDescription];
          *buf = 138543618;
          v67 = v52;
          v68 = 2112;
          v69 = shortDescription2;
          _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Mismatched account message destination: %@", buf, 0x16u);

          selfCopy2 = v59;
        }

        objc_autoreleasePoolPop(v49);
        v54 = [HMDAssertionLogEvent alloc];
        shortDescription3 = [messageCopy shortDescription];
        v56 = [(HMDAssertionLogEvent *)v54 initWithReason:@"Mismatched account message destination: %@", shortDescription3];

        v57 = +[HMDMetricsManager sharedLogEventSubmitter];
        [v57 submitLogEvent:v56];
      }
    }

    v34 = targetCopy;
    goto LABEL_19;
  }

  destination4 = [messageCopy destination];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  v34 = targetCopy;
  v25 = destinationCopy;
  v35 = [HMDMessageDispatcher destinationWithTarget:targetCopy userID:dCopy destination:destinationCopy multicast:0];
  if (v35)
  {
    [messageCopy setDestination:v35];
  }

LABEL_19:
  homeManager = [(HMDMessageDispatcher *)self homeManager];
  accountRegistry = [homeManager accountRegistry];
  v38 = [HMDRemoteMessageTransport remoteMessageFromMessage:messageCopy secure:1 accountRegistry:accountRegistry];

  if (queueCopy && handlerCopy)
  {
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __110__HMDMessageDispatcher_Deprecated__sendSecureMessage_target_userID_destination_responseQueue_responseHandler___block_invoke;
    v63[3] = &unk_279732CF0;
    v64 = queueCopy;
    v65 = handlerCopy;
    [v38 setResponseHandler:v63];
  }

  [(HMDMessageDispatcher *)self sendMessage:v38 completionHandler:0];

  v39 = *MEMORY[0x277D85DE8];
}

void __110__HMDMessageDispatcher_Deprecated__sendSecureMessage_target_userID_destination_responseQueue_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__HMDMessageDispatcher_Deprecated__sendSecureMessage_target_userID_destination_responseQueue_responseHandler___block_invoke_2;
  block[3] = &unk_2797355D0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (id)remoteAccessDeviceForHome:(id)home
{
  v3 = [(HMDMessageDispatcher *)self residentCommunicationHandlerForHome:home];
  preferredDevice = [v3 preferredDevice];

  return preferredDevice;
}

- (id)residentCommunicationHandlerForHome:(id)home
{
  homeCopy = home;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__79184;
  v16 = __Block_byref_object_dispose__79185;
  v17 = 0;
  if (homeCopy)
  {
    workQueue = [(HMDMessageDispatcher *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HMDMessageDispatcher_Deprecated__residentCommunicationHandlerForHome___block_invoke;
    block[3] = &unk_279735BC0;
    v11 = &v12;
    block[4] = self;
    v10 = homeCopy;
    dispatch_sync(workQueue, block);

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __72__HMDMessageDispatcher_Deprecated__residentCommunicationHandlerForHome___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) remoteGateways];
  v2 = [*(a1 + 40) uuid];
  v3 = [v6 objectForKey:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_setRemoteAccessDevice:(id)device forHome:(id)home sendNotification:(BOOL)notification
{
  notificationCopy = notification;
  v78[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  homeCopy = home;
  if (homeCopy)
  {
    remoteGateways = [(HMDMessageDispatcher *)self remoteGateways];
    uuid = [homeCopy uuid];
    v12 = [remoteGateways objectForKeyedSubscript:uuid];

    v13 = [(HMDResidentCommunicationHandler *)v12 deviceForType:2];
    if ([v13 isEqual:deviceCopy])
    {
LABEL_46:
      preferredDevice = [(HMDResidentCommunicationHandler *)v12 preferredDevice];
      [homeCopy remoteAccessEnabled:preferredDevice != 0];

      goto LABEL_47;
    }

    residentDeviceManager = [homeCopy residentDeviceManager];
    isResidentAvailable = [residentDeviceManager isResidentAvailable];

    if (!isResidentAvailable)
    {
      v24 = 0;
      v29 = 0;
      if (deviceCopy && v13)
      {
        v30 = objc_autoreleasePoolPush();
        selfCopy = self;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543618;
          v72 = v33;
          v73 = 2112;
          v74 = homeCopy;
          _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Ignoring setting a new peer since we already have an existing peer for home: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v30);
        goto LABEL_46;
      }

      goto LABEL_29;
    }

    primaryResident = [homeCopy primaryResident];
    v17 = primaryResident;
    if (v12 && [primaryResident isReachable] && (objc_msgSend(v17, "device"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqual:", v13), v18, v19))
    {
      v66 = notificationCopy;
      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v72 = v23;
        v73 = 2112;
        v74 = homeCopy;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Ignoring setting a new remote access device as the current resident is reachable for home: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v24 = 1;
      notificationCopy = v66;
    }

    else
    {
      v24 = 0;
    }

    productInfo = [MEMORY[0x277D0F8E8] productInfo];
    if ([productInfo productPlatform] == 3)
    {
      version = [deviceCopy version];

      if (version)
      {
        v67 = notificationCopy;
        v36 = +[HMDHomeKitVersion version4];
        version2 = [deviceCopy version];
        v38 = [version2 isAtLeastVersion:v36];

        if ((v38 & 1) == 0)
        {
          context = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v39 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v64 = HMFGetLogIdentifier();
            *buf = 138543618;
            v72 = v64;
            v73 = 2112;
            v74 = deviceCopy;
            _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@Watch does not support the current resident: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(context);
        }

        v29 = v38 ^ 1;
        notificationCopy = v67;
        goto LABEL_28;
      }
    }

    else
    {
    }

    v29 = 0;
LABEL_28:

LABEL_29:
    if (v12 && (v24 & 1) == 0)
    {
      v70 = v29;
      v40 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v43 = v68 = notificationCopy;
        shortDescription = [homeCopy shortDescription];
        *buf = 138543618;
        v72 = v43;
        v73 = 2112;
        v74 = shortDescription;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Disabling resident remote access for home: %@", buf, 0x16u);

        notificationCopy = v68;
      }

      objc_autoreleasePoolPop(v40);
      [(HMDResidentCommunicationHandler *)v12 removeDeviceForType:2];
      v29 = v70;
      if (notificationCopy)
      {
        v45 = objc_autoreleasePoolPush();
        v46 = selfCopy4;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          v48 = HMFGetLogIdentifier();
          shortDescription2 = [homeCopy shortDescription];
          *buf = 138543618;
          v72 = v48;
          v73 = 2112;
          v74 = shortDescription2;
          _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@Sending notification that remote session was torn down for home: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v45);
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        v77 = *MEMORY[0x277CD0640];
        uuid2 = [homeCopy uuid];
        v78[0] = uuid2;
        v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:&v77 count:1];
        [defaultCenter postNotificationName:@"HMDMessageDispatcherRemoteSessionTornDownNotification" object:v46 userInfo:v52];

        v29 = v70;
      }
    }

    if (deviceCopy)
    {
      v53 = v29;
    }

    else
    {
      v53 = 1;
    }

    if ((v53 & 1) == 0)
    {
      v54 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v56 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v57 = HMFGetLogIdentifier();
        shortDescription3 = [homeCopy shortDescription];
        shortDescription4 = [deviceCopy shortDescription];
        *buf = 138543874;
        v72 = v57;
        v73 = 2112;
        v74 = shortDescription3;
        v75 = 2112;
        v76 = shortDescription4;
        _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_INFO, "%{public}@Enabling resident remote access for home %@ via device: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v54);
      if (!v12)
      {
        v12 = [[HMDResidentCommunicationHandler alloc] initWithHome:homeCopy remoteDispatcher:selfCopy5];
        remoteGateways2 = [(HMDMessageDispatcher *)selfCopy5 remoteGateways];
        uuid3 = [homeCopy uuid];
        [remoteGateways2 setObject:v12 forKeyedSubscript:uuid3];
      }

      [(HMDResidentCommunicationHandler *)v12 setDevice:deviceCopy forType:2, v64];
    }

    goto LABEL_46;
  }

  v25 = objc_autoreleasePoolPush();
  selfCopy6 = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138543362;
    v72 = v28;
    _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Invalid home specified to setup/disable remote access", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v25);
LABEL_47:

  v63 = *MEMORY[0x277D85DE8];
}

- (void)setRemoteAccessDevice:(id)device forHome:(id)home
{
  deviceCopy = device;
  homeCopy = home;
  workQueue = [(HMDMessageDispatcher *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HMDMessageDispatcher_Deprecated__setRemoteAccessDevice_forHome___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = deviceCopy;
  v13 = homeCopy;
  v9 = homeCopy;
  v10 = deviceCopy;
  dispatch_async(workQueue, block);
}

- (void)setCompanionDevice:(id)device forHome:(id)home
{
  deviceCopy = device;
  homeCopy = home;
  workQueue = [(HMDMessageDispatcher *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HMDMessageDispatcher_Deprecated__setCompanionDevice_forHome___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = homeCopy;
  v13 = deviceCopy;
  v9 = deviceCopy;
  v10 = homeCopy;
  dispatch_async(workQueue, block);
}

void __63__HMDMessageDispatcher_Deprecated__setCompanionDevice_forHome___block_invoke(id *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] remoteGateways];
  v3 = [a1[5] uuid];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = a1[6];
  v6 = objc_autoreleasePoolPush();
  v7 = a1[4];
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v11 = [a1[5] shortDescription];
      v12 = [a1[6] shortDescription];
      v20 = 138543874;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Enabling companion remote access for home %@ via device: %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    if (!v4)
    {
      v4 = [[HMDResidentCommunicationHandler alloc] initWithHome:a1[5] remoteDispatcher:a1[4]];
      v13 = [a1[4] remoteGateways];
      v14 = [a1[5] uuid];
      [v13 setObject:v4 forKeyedSubscript:v14];
    }
  }

  else
  {
    if (v9)
    {
      v15 = HMFGetLogIdentifier();
      v16 = [a1[5] shortDescription];
      v20 = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Disabling companion remote access for home: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  [(HMDResidentCommunicationHandler *)v4 setDevice:a1[6] forType:1];
  v17 = a1[5];
  v18 = [(HMDResidentCommunicationHandler *)v4 preferredDevice];
  [v17 remoteAccessEnabled:v18 != 0];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleSecureSessionError:(id)error
{
  errorCopy = error;
  workQueue = [(HMDMessageDispatcher *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HMDMessageDispatcher_Deprecated__handleSecureSessionError___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = errorCopy;
  selfCopy = self;
  v6 = errorCopy;
  dispatch_async(workQueue, v7);
}

void __61__HMDMessageDispatcher_Deprecated__handleSecureSessionError___block_invoke(uint64_t a1)
{
  v1 = a1;
  v44 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v32 = v4;
  if (v4)
  {
    v5 = [*(v1 + 40) remoteGateways];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [v5 copy];
    v6 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
    v30 = v1;
    if (v6)
    {
      v8 = v6;
      v9 = *v34;
      v10 = 1;
      *&v7 = 138543874;
      v29 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v33 + 1) + 8 * i);
          v13 = [v5 objectForKeyedSubscript:{v12, v29}];
          if ([v13 containsDevice:v32])
          {
            v14 = objc_autoreleasePoolPush();
            v15 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v16 = HMFGetLogIdentifier();
              v17 = [v12 UUIDString];
              *buf = v29;
              v38 = v16;
              v39 = 2112;
              v40 = v32;
              v41 = 2112;
              v42 = v17;
              _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Tearing down remote access session to device, %@, for home '%@'", buf, 0x20u);

              v1 = v30;
            }

            objc_autoreleasePoolPop(v14);
            v18 = [*(v1 + 40) homeManager];
            v19 = [v18 _homeWithUUID:v12];

            if (v19)
            {
              [*(v1 + 40) _setRemoteAccessDevice:0 forHome:v19 sendNotification:1];
            }

            v10 = 0;
          }
        }

        v8 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = 1;
    }

    v20 = [*(v1 + 32) userInfo];
    v21 = [v20 hmf_errorForKey:@"HMDSecureRemoteSessionErrorKey"];

    if ((v10 & 1) == 0)
    {
      goto LABEL_27;
    }

    v22 = [v21 domain];
    if ([v22 isEqualToString:*MEMORY[0x277CCA590]])
    {
      v23 = [v21 code];

      if (v23 != -6752)
      {
LABEL_27:

        goto LABEL_28;
      }

      v24 = objc_autoreleasePoolPush();
      v25 = *(v1 + 40);
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543362;
        v38 = v27;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Posting notification that remote session was torn down for an unknown home", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      v22 = [MEMORY[0x277CCAB98] defaultCenter];
      [v22 postNotificationName:@"HMDMessageDispatcherRemoteSessionTornDownNotification" object:*(v30 + 40) userInfo:0];
    }

    goto LABEL_27;
  }

LABEL_28:

  v28 = *MEMORY[0x277D85DE8];
}

@end