@interface HMDXPCClientConnection
+ (id)logCategory;
+ (unint64_t)entitlementsForConnection:(id)connection;
- (BOOL)canSendMessage:(id)message;
- (BOOL)isAuthorizedForHomeDataAccess;
- (BOOL)isAuthorizedForLocationAccess;
- (BOOL)isAuthorizedForMicrophoneAccess;
- (BOOL)isEntitledForHomeLocationAccess;
- (BOOL)isPlatformBinary;
- (BOOL)sendMessage:(id)message error:(id *)error;
- (Class)principalClass;
- (HMDProcessInfo)processInfo;
- (HMDXPCClientConnection)initWithConnection:(id)connection queue:(id)queue;
- (HMDXPCClientConnection)initWithConnection:(id)connection queue:(id)queue messageCountTracker:(id)tracker requestTracker:(id)requestTracker;
- (HMDXPCClientConnectionDelegate)delegate;
- (HMDXPCMessageSendPolicyParameters)sendPolicyParameters;
- (NSDictionary)stateDump;
- (NSDictionary)userInfo;
- (NSString)applicationBundleIdentifier;
- (NSString)clientIdentifier;
- (NSString)clientName;
- (NSString)name;
- (id)_displayName;
- (id)attributeDescriptions;
- (id)clientUUID;
- (id)shortDescription;
- (int)clientPid;
- (unint64_t)homeManagerOptions;
- (unint64_t)inactiveUpdatingLevel;
- (void)_activate;
- (void)_deactivate;
- (void)_handleMessage:(id)message responseHandler:(id)handler;
- (void)_invalidate;
- (void)_start;
- (void)activate;
- (void)deactivate;
- (void)dealloc;
- (void)handleMessage:(id)message;
- (void)handleMessage:(id)message responseHandler:(id)handler;
- (void)handleProcessStateDidChange;
- (void)initiateRefresh;
- (void)invalidate;
- (void)notifyOfExternallyManagedActivation;
- (void)sendMessage:(id)message completionHandler:(id)handler;
- (void)setProcessInfo:(id)info;
- (void)setSendPolicyParameters:(id)parameters;
- (void)setUserInfo:(id)info;
- (void)updateSendPolicyParameters:(id)parameters;
- (void)updateUserInfo:(id)info;
- (void)updateUserInfo:(id)info responseHandler:(id)handler;
@end

@implementation HMDXPCClientConnection

- (HMDXPCClientConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)sendMessage:(id)message error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v7 = [(HMDXPCClientConnection *)self canSendMessage:messageCopy];
  if (v7)
  {
    if (([messageCopy isLocationAuthorized] & 1) != 0 || objc_msgSend(messageCopy, "requiresHomeLocationEntitlement"))
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        shortDescription = [messageCopy shortDescription];
        *buf = 138543618;
        v30 = v11;
        v31 = 2112;
        v32 = shortDescription;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Marking location for message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      processInfo = [(HMDXPCClientConnection *)selfCopy processInfo];
      locationAuthorization = [processInfo locationAuthorization];
      [locationAuthorization mark];
    }

    v15 = [messageCopy mutableCopy];
    identifier = [messageCopy identifier];
    [v15 setIdentifier:identifier];

    date = [MEMORY[0x277CBEAA8] date];
    [v15 setHeaderValue:date forKey:*MEMORY[0x277CD15E0]];

    xpcConnection = [(HMDXPCClientConnection *)self xpcConnection];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __44__HMDXPCClientConnection_sendMessage_error___block_invoke;
    v28[3] = &unk_2797359D8;
    v28[4] = self;
    v19 = [xpcConnection remoteObjectProxyWithErrorHandler:v28];

    responseHandler = [v15 responseHandler];

    v21 = [v15 copy];
    if (responseHandler)
    {
      responseHandler2 = [v15 responseHandler];
      [v19 handleMessage:v21 responseHandler:responseHandler2];
    }

    else
    {
      [v19 handleMessage:v21];
    }

    clientIdentifier = [(HMDXPCClientConnection *)self clientIdentifier];
    if (clientIdentifier)
    {
      messageCountTracker = [(HMDXPCClientConnection *)self messageCountTracker];
      name = [messageCopy name];
      [messageCountTracker incrementCounterOfType:2 clientIdentifier:clientIdentifier messageName:name];
    }
  }

  else if (error)
  {
    *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  }

  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

void __44__HMDXPCClientConnection_sendMessage_error___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to get remote object proxy for sending message: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(id)message completionHandler:(id)handler
{
  v11 = 0;
  handlerCopy = handler;
  v7 = [(HMDXPCClientConnection *)self sendMessage:message error:&v11];
  v8 = v11;
  v9 = _Block_copy(handlerCopy);

  if (v9)
  {
    if (v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v8;
    }

    (v9)[2](v9, v10);
  }
}

- (void)updateUserInfo:(id)info responseHandler:(id)handler
{
  handlerCopy = handler;
  infoCopy = info;
  queue = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  [(HMDXPCClientConnection *)self setUserInfo:infoCopy];
  handlerCopy[2]();
}

- (void)updateUserInfo:(id)info
{
  infoCopy = info;
  queue = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  [(HMDXPCClientConnection *)self setUserInfo:infoCopy];
}

- (void)handleMessage:(id)message responseHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  queue = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  [(HMDXPCClientConnection *)self _handleMessage:messageCopy responseHandler:handlerCopy];
}

- (void)handleMessage:(id)message
{
  messageCopy = message;
  queue = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  [(HMDXPCClientConnection *)self _handleMessage:messageCopy responseHandler:0];
}

- (void)_invalidate
{
  v15 = *MEMORY[0x277D85DE8];
  queue = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  state = [(HMDXPCClientConnection *)self state];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (state == 3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Not invalidating already invalidated XPC connection", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Invalidating XPC connection", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDXPCClientConnection *)selfCopy _deactivate];
    [(HMDXPCClientConnection *)selfCopy setState:3];
    delegate = [(HMDXPCClientConnection *)selfCopy delegate];
    [delegate connectionDidInvalidate:selfCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_deactivate
{
  v15 = *MEMORY[0x277D85DE8];
  queue = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDXPCClientConnection *)self state]== 3)
  {
    _HMFPreconditionFailure();
  }

  state = [(HMDXPCClientConnection *)self state];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (state == 2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Not de-activating already de-activated XPC connection", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Deactivating XPC connection", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDXPCClientConnection *)selfCopy setState:2];
    delegate = [(HMDXPCClientConnection *)selfCopy delegate];
    [delegate connectionDidDeactivate:selfCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_activate
{
  v16 = *MEMORY[0x277D85DE8];
  queue = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDXPCClientConnection *)self state]== 3)
  {
    _HMFPreconditionFailure();
  }

  state = [(HMDXPCClientConnection *)self state];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (state == 1)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Not activating already activated XPC connection", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Activating XPC connection", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    state2 = [(HMDXPCClientConnection *)selfCopy state];
    [(HMDXPCClientConnection *)selfCopy setState:1];
    delegate = [(HMDXPCClientConnection *)selfCopy delegate];
    [delegate connectionDidActivate:selfCopy];

    if (state2 == 2)
    {
      [(HMDXPCClientConnection *)selfCopy initiateRefresh];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_start
{
  v15 = *MEMORY[0x277D85DE8];
  queue = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDXPCClientConnection *)self state]== 3)
  {
    _HMFPreconditionFailure();
  }

  state = [(HMDXPCClientConnection *)self state];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (state)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Not starting already started XPC connection", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Starting XPC connection", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    delegate = [(HMDXPCClientConnection *)selfCopy delegate];
    [delegate connectionDidStart:selfCopy];

    if (![(HMDXPCClientConnection *)selfCopy hasExternallyManagedActivation])
    {
      [(HMDXPCClientConnection *)selfCopy _activate];
    }

    [(HMDXPCClientConnection *)selfCopy handleProcessStateDidChange];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  queue = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  [(HMDXPCClientConnection *)self _invalidate];
}

- (void)deactivate
{
  queue = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDXPCClientConnection *)self hasExternallyManagedActivation])
  {

    [(HMDXPCClientConnection *)self _deactivate];
  }

  else
  {
    v4 = _HMFPreconditionFailure();
    [(HMDXPCClientConnection *)v4 activate];
  }
}

- (void)activate
{
  queue = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDXPCClientConnection *)self hasExternallyManagedActivation])
  {

    [(HMDXPCClientConnection *)self _activate];
  }

  else
  {
    v4 = _HMFPreconditionFailure();
    [(HMDXPCClientConnection *)v4 _handleMessage:v5 responseHandler:v6, v7];
  }
}

- (void)_handleMessage:(id)message responseHandler:(id)handler
{
  v82 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handlerCopy = handler;
  queue = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v52 = objc_autoreleasePoolPush();
  v8 = objc_alloc(MEMORY[0x277D0F770]);
  v9 = MEMORY[0x277D0F818];
  name = [messageCopy name];
  v11 = [v9 activityNameWithMessageName:name];
  v57 = [v8 initWithName:v11];

  headers = [messageCopy headers];
  v13 = [headers objectForKeyedSubscript:*MEMORY[0x277CCF1D0]];

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

  [v57 setClientMetricIdentifier:v15];
  name2 = [messageCopy name];
  identifier = [messageCopy identifier];
  context = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v48 = HMFGetLogIdentifier();
    identifier2 = [v57 identifier];
    shortDescription = [identifier2 shortDescription];
    uUIDString = [identifier UUIDString];
    name3 = [(HMDXPCClientConnection *)selfCopy name];
    destination = [messageCopy destination];
    target = [destination target];
    uUIDString2 = [target UUIDString];
    if (handlerCopy)
    {
      v20 = "";
    }

    else
    {
      v20 = " not";
    }

    messagePayload = [messageCopy messagePayload];
    if (getDenylistKeys_onceToken != -1)
    {
      dispatch_once(&getDenylistKeys_onceToken, &__block_literal_global_419);
    }

    v22 = getDenylistKeys_denylistKeys;
    v23 = [messagePayload secureDescriptionWithBlacklistKeys:v22];
    [messageCopy qualityOfService];
    v24 = HMFQualityOfServiceToString();
    *buf = 138545411;
    v65 = v48;
    v66 = 2114;
    v67 = shortDescription;
    v68 = 2114;
    v69 = name2;
    v70 = 2114;
    v71 = uUIDString;
    v72 = 2114;
    v73 = name3;
    v74 = 2114;
    v75 = uUIDString2;
    v76 = 2082;
    v77 = v20;
    v78 = 2113;
    v79 = v23;
    v80 = 2114;
    v81 = v24;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Received incoming message %{public}@ (%{public}@) from client '%{public}@' for target %{public}@ that does%{public}s expect a response, payload %{private}@, QoS: %{public}@", buf, 0x5Cu);
  }

  objc_autoreleasePoolPop(context);
  clientIdentifier = [(HMDXPCClientConnection *)selfCopy clientIdentifier];
  if (clientIdentifier)
  {
    messageCountTracker = [(HMDXPCClientConnection *)selfCopy messageCountTracker];
    name4 = [messageCopy name];
    [messageCountTracker incrementCounterOfType:0 clientIdentifier:clientIdentifier messageName:name4];
  }

  [(HMDXPCClientConnection *)selfCopy clientName];
  v28 = [messageCopy mutableCopy];
  if (shouldEnableInternalDebugInterfaces__hmf_once_t44 != -1)
  {
    dispatch_once(&shouldEnableInternalDebugInterfaces__hmf_once_t44, &__block_literal_global_790);
  }

  if (shouldEnableInternalDebugInterfaces__hmf_once_v45)
  {
    messagePayload2 = [messageCopy messagePayload];
    v30 = *MEMORY[0x277CD0B10];
    v31 = [messagePayload2 objectForKeyedSubscript:*MEMORY[0x277CD0B10]];
    v32 = v31 == 0;

    if (!v32)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v30 = *MEMORY[0x277CD0B10];
  }

  messagePayload3 = [messageCopy messagePayload];
  v34 = [messagePayload3 mutableCopy];

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString3 = [uUID UUIDString];
  [v34 setObject:uUIDString3 forKeyedSubscript:v30];

  v37 = [v34 copy];
  [v28 setMessagePayload:v37];

LABEL_20:
  [v28 setTransport:selfCopy];
  [v28 setActivity:v57];
  if (handlerCopy)
  {
    requestTracker = [(HMDXPCClientConnection *)selfCopy requestTracker];
    identifier3 = [messageCopy identifier];
    name5 = [messageCopy name];
    [requestTracker addRequestWithIdentifier:identifier3 name:name5 qualityOfService:objc_msgSend(messageCopy isTimeoutDisabled:"qualityOfService") responseHandler:{objc_msgSend(messageCopy, "hm_isXPCTimeoutDisabled"), handlerCopy}];

    clientName = [(HMDXPCClientConnection *)selfCopy clientName];
    objc_initWeak(buf, selfCopy);
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __57__HMDXPCClientConnection__handleMessage_responseHandler___block_invoke;
    v58[3] = &unk_279731A58;
    objc_copyWeak(&v63, buf);
    v59 = v57;
    v42 = clientName;
    v60 = v42;
    v61 = identifier;
    v62 = messageCopy;
    [v28 setResponseHandler:v58];

    objc_destroyWeak(&v63);
    objc_destroyWeak(buf);
  }

  else
  {
    [v57 end];
  }

  delegate = [(HMDXPCClientConnection *)selfCopy delegate];
  v44 = [v28 copy];
  [delegate messageTransport:selfCopy didReceiveMessage:v44];

  objc_autoreleasePoolPop(v52);
  v45 = *MEMORY[0x277D85DE8];
}

void __57__HMDXPCClientConnection__handleMessage_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    [v11 domain];

    [v11 code];
    v7 = [WeakRetained requestTracker];
    [v7 respondToRequestWithIdentifier:*(a1 + 48) withPayload:v5 error:v11];

    if (v11)
    {
      v8 = [WeakRetained clientIdentifier];
      if (v8)
      {
        v9 = [WeakRetained messageCountTracker];
        v10 = [*(a1 + 56) name];
        [v9 incrementCounterOfType:1 clientIdentifier:v8 messageName:v10];
      }
    }

    [*(a1 + 32) end];
  }
}

- (BOOL)canSendMessage:(id)message
{
  v50 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  transport = [messageCopy transport];
  v6 = transport;
  if (transport && ([transport isEqual:self] & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      shortDescription = [messageCopy shortDescription];
      v42 = 138543874;
      v43 = v10;
      v44 = 2112;
      v45 = shortDescription;
      v46 = 2112;
      v47 = v6;
      v12 = "%{public}@Cannot send message %@: This XPC client connection does not match the message's transport: %@";
      v24 = v9;
      v25 = 32;
LABEL_53:
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEBUG, v12, &v42, v25);

LABEL_54:
      goto LABEL_55;
    }

    goto LABEL_55;
  }

  if ([messageCopy requiresSPIEntitlement] && !-[HMDXPCClientConnection isEntitledForSPIAccess](self, "isEntitledForSPIAccess"))
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      shortDescription = [messageCopy shortDescription];
      v42 = 138543618;
      v43 = v10;
      v44 = 2112;
      v45 = shortDescription;
      v12 = "%{public}@Cannot send message %@: Client is not SPI entitled and message requires SPI entitlement";
      goto LABEL_52;
    }

LABEL_55:

    objc_autoreleasePoolPop(v7);
    v22 = 0;
    goto LABEL_56;
  }

  if ([messageCopy requiresNoSPIEntitlement] && -[HMDXPCClientConnection isEntitledForSPIAccess](self, "isEntitledForSPIAccess"))
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      shortDescription = [messageCopy shortDescription];
      v42 = 138543618;
      v43 = v10;
      v44 = 2112;
      v45 = shortDescription;
      v12 = "%{public}@Cannot send message %@: Client is SPI entitled and message requires no SPI entitlement";
LABEL_52:
      v24 = v9;
      v25 = 22;
      goto LABEL_53;
    }

    goto LABEL_55;
  }

  if ([messageCopy isLocationAuthorized] && !-[HMDXPCClientConnection isAuthorizedForLocationAccess](self, "isAuthorizedForLocationAccess"))
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      shortDescription = [messageCopy shortDescription];
      v42 = 138543618;
      v43 = v10;
      v44 = 2112;
      v45 = shortDescription;
      v12 = "%{public}@Cannot send message %@: Client is not location authorized and message requires location authorization";
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  if ([messageCopy requiresHomeLocationEntitlement] && !-[HMDXPCClientConnection isEntitledForHomeLocationAccess](self, "isEntitledForHomeLocationAccess"))
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      shortDescription = [messageCopy shortDescription];
      v42 = 138543618;
      v43 = v10;
      v44 = 2112;
      v45 = shortDescription;
      v12 = "%{public}@Cannot send message %@: Client is not entitled for the HomeKit location data. Please make sure the client has com.apple.private.homekit.home-location & com.apple.private.homekit.location entitlements.";
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  if ([messageCopy requiresCameraClipsEntitlement] && !-[HMDXPCClientConnection isEntitledForCameraClipsAccess](self, "isEntitledForCameraClipsAccess"))
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy6 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      shortDescription = [messageCopy shortDescription];
      v42 = 138543618;
      v43 = v10;
      v44 = 2112;
      v45 = shortDescription;
      v12 = "%{public}@Cannot send message %@: Client is not camera clips entitled and message requires camera clips entitlement";
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  if ([messageCopy requiresMultiUserSetupEntitlement] && !-[HMDXPCClientConnection isEntitledForMultiUserSetupAccess](self, "isEntitledForMultiUserSetupAccess"))
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      shortDescription = [messageCopy shortDescription];
      v42 = 138543618;
      v43 = v10;
      v44 = 2112;
      v45 = shortDescription;
      v12 = "%{public}@Cannot send message %@: Client is not multi user entitled and message requires multi user entitlement";
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  if ([messageCopy requiresSetupPayloadEntitlement] && !-[HMDXPCClientConnection isEntitledToProvideAccessorySetupPayload](self, "isEntitledToProvideAccessorySetupPayload"))
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      shortDescription = [messageCopy shortDescription];
      v42 = 138543618;
      v43 = v10;
      v44 = 2112;
      v45 = shortDescription;
      v12 = "%{public}@Cannot send message %@: Client is not setup payload entitled and message requires setup payload entitlement";
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  if ([messageCopy requiresMatterSetupPayloadEntitlement] && !-[HMDXPCClientConnection isEntitledToProvideMatterSetupPayload](self, "isEntitledToProvideMatterSetupPayload"))
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy9 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      shortDescription = [messageCopy shortDescription];
      v42 = 138543618;
      v43 = v10;
      v44 = 2112;
      v45 = shortDescription;
      v12 = "%{public}@Cannot send message %@: Client is not matter setup payload entitled and message requires matter setup payload entitlement";
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  if ([messageCopy requiresPersonManagerEntitlement] && !-[HMDXPCClientConnection isEntitledForPersonManagerAccess](self, "isEntitledForPersonManagerAccess"))
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy10 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      shortDescription = [messageCopy shortDescription];
      v42 = 138543618;
      v43 = v10;
      v44 = 2112;
      v45 = shortDescription;
      v12 = "%{public}@Cannot send message %@: Client is not person manager entitled and message requires person manager entitlement";
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  if ([messageCopy requiresWalletKeyEntitlement] && !-[HMDXPCClientConnection isEntitledForWalletKeyAccess](self, "isEntitledForWalletKeyAccess"))
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy11 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      shortDescription = [messageCopy shortDescription];
      v42 = 138543618;
      v43 = v10;
      v44 = 2112;
      v45 = shortDescription;
      v12 = "%{public}@Cannot send message %@: Client is not wallet key entitled and message requires wallet key entitlement";
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  if (![(HMDXPCClientConnection *)self isActivated])
  {
    requestTracker = [(HMDXPCClientConnection *)self requestTracker];
    requestIdentifiers = [requestTracker requestIdentifiers];
    identifier = [messageCopy identifier];
    v16 = [requestIdentifiers containsObject:identifier];

    if ((v16 & 1) == 0)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy12 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = HMFGetLogIdentifier();
        shortDescription = [messageCopy shortDescription];
        v42 = 138543618;
        v43 = v10;
        v44 = 2112;
        v45 = shortDescription;
        v12 = "%{public}@Cannot send message %@: Connection is not activated and the message isn't responding to a pending request";
        goto LABEL_52;
      }

      goto LABEL_55;
    }
  }

  sendPolicy = [messageCopy sendPolicy];
  if (sendPolicy)
  {
    v18 = sendPolicy;
    sendPolicy2 = [messageCopy sendPolicy];
    sendPolicyParameters = [(HMDXPCClientConnection *)self sendPolicyParameters];
    v21 = [sendPolicy2 canSendWithPolicyParameters:sendPolicyParameters];

    if ((v21 & 1) == 0)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy13 = self;
      v9 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_55;
      }

      v10 = HMFGetLogIdentifier();
      shortDescription2 = [messageCopy shortDescription];
      sendPolicy3 = [messageCopy sendPolicy];
      sendPolicyParameters2 = [(HMDXPCClientConnection *)selfCopy13 sendPolicyParameters];
      v42 = 138544130;
      v43 = v10;
      v44 = 2112;
      v45 = shortDescription2;
      v46 = 2112;
      v47 = sendPolicy3;
      v48 = 2112;
      v49 = sendPolicyParameters2;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Cannot send message %@: Message send policy %@ does not pass client connection send policy: %@", &v42, 0x2Au);

      goto LABEL_54;
    }
  }

  v22 = 1;
LABEL_56:

  v36 = *MEMORY[0x277D85DE8];
  return v22;
}

- (NSDictionary)stateDump
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  name = [(HMDXPCClientConnection *)self name];
  [dictionary setObject:name forKeyedSubscript:@"Name"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDXPCClientConnection clientPid](self, "clientPid")}];
  [dictionary setObject:v5 forKeyedSubscript:@"PID"];

  [(HMDXPCClientConnection *)self entitlements];
  v6 = HMXPCClientEntitlementsShortDescription();
  [dictionary setObject:v6 forKeyedSubscript:@"Entitlements"];

  [(HMDXPCClientConnection *)self isActivated];
  v7 = HMFBooleanToString();
  [dictionary setObject:v7 forKeyedSubscript:@"Activated"];

  sendPolicyParameters = [(HMDXPCClientConnection *)self sendPolicyParameters];
  v9 = [sendPolicyParameters description];
  [dictionary setObject:v9 forKeyedSubscript:@"Send Policy Parameters"];

  userInfo = [(HMDXPCClientConnection *)self userInfo];
  [dictionary setObject:userInfo forKeyedSubscript:@"User Info"];

  requestTracker = [(HMDXPCClientConnection *)self requestTracker];
  requestIdentifiers = [requestTracker requestIdentifiers];
  [dictionary setObject:requestIdentifiers forKeyedSubscript:@"Active Requests"];

  v13 = [dictionary copy];

  return v13;
}

- (void)updateSendPolicyParameters:(id)parameters
{
  v14 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = parametersCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Updating sendPolicyParameters to %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDXPCClientConnection *)selfCopy setSendPolicyParameters:parametersCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)initiateRefresh
{
  v19 = *MEMORY[0x277D85DE8];
  queue = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDXPCClientConnection *)self state]!= 1)
  {
    _HMFPreconditionFailure();
  }

  v4 = MEMORY[0x277D0F818];
  v5 = *MEMORY[0x277CD15A8];
  allMessageDestinations = [MEMORY[0x277D0F820] allMessageDestinations];
  v7 = [v4 messageWithName:v5 qualityOfService:9 destination:allMessageDestinations payload:0];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 0;
    *&buf[8] = 0;
    identifier = [v7 identifier];

    if (identifier)
    {
      identifier2 = [v7 identifier];
      [identifier2 getUUIDBytes:buf];
    }

    else
    {
      *buf = *MEMORY[0x277D0F960];
    }

    v15 = *buf;
    *buf = 138543874;
    *&buf[4] = v11;
    *&buf[12] = 1042;
    *&buf[14] = 16;
    v17 = 2098;
    v18 = &v15;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Initiating refresh using message with identifier: %{public,uuid_t}.16P", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDXPCClientConnection *)selfCopy sendMessage:v7 completionHandler:0];

  v14 = *MEMORY[0x277D85DE8];
}

- (NSString)applicationBundleIdentifier
{
  processInfo = [(HMDXPCClientConnection *)self processInfo];
  applicationInfo = [processInfo applicationInfo];
  bundleIdentifier = [applicationInfo bundleIdentifier];

  if (bundleIdentifier)
  {
    v5 = bundleIdentifier;
  }

  return bundleIdentifier;
}

- (void)setSendPolicyParameters:(id)parameters
{
  parametersCopy = parameters;
  os_unfair_lock_lock_with_options();
  v4 = [parametersCopy copy];
  sendPolicyParameters = self->_sendPolicyParameters;
  self->_sendPolicyParameters = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDXPCMessageSendPolicyParameters)sendPolicyParameters
{
  os_unfair_lock_lock_with_options();
  v3 = self->_sendPolicyParameters;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)notifyOfExternallyManagedActivation
{
  queue = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDXPCClientConnection *)self state])
  {
    v4 = _HMFPreconditionFailure();
    [(HMDXPCClientConnection *)v4 handleProcessStateDidChange];
  }

  else
  {

    [(HMDXPCClientConnection *)self setHasExternallyManagedActivation:1];
  }
}

- (void)handleProcessStateDidChange
{
  v17 = *MEMORY[0x277D85DE8];
  queue = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  if (![(HMDXPCClientConnection *)self hasExternallyManagedActivation])
  {
    processInfo = [(HMDXPCClientConnection *)self processInfo];
    state = [processInfo state];

    if ((state & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      if ([(HMDXPCClientConnection *)self state]== 1)
      {
        v10 = objc_autoreleasePoolPush();
        selfCopy = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          v15 = 138543362;
          v16 = v13;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Deactivating XPC connection that is now in the background", &v15, 0xCu);
        }

        objc_autoreleasePoolPop(v10);
        [(HMDXPCClientConnection *)selfCopy _deactivate];
      }
    }

    else if ((state & 0xFFFFFFFFFFFFFFFDLL) == 0 && [(HMDXPCClientConnection *)self state]== 2)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v15 = 138543362;
        v16 = v9;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Activating XPC connection that is now in the foreground and initiating refresh", &v15, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      [(HMDXPCClientConnection *)selfCopy2 _activate];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setProcessInfo:(id)info
{
  infoCopy = info;
  os_unfair_lock_lock_with_options();
  processInfo = self->_processInfo;
  self->_processInfo = infoCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDProcessInfo)processInfo
{
  os_unfair_lock_lock_with_options();
  v3 = self->_processInfo;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isPlatformBinary
{
  v3 = [(HMDXPCClientConnection *)self xpcConnection:0];
  v4 = v3;
  if (v3)
  {
    [v3 auditToken];
  }

  [(HMDXPCClientConnection *)self clientPid];
  if (csops_audittoken())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (int)clientPid
{
  xpcConnection = [(HMDXPCClientConnection *)self xpcConnection];
  processIdentifier = [xpcConnection processIdentifier];
  if (processIdentifier)
  {
    v4 = processIdentifier;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (NSString)name
{
  processInfo = [(HMDXPCClientConnection *)self processInfo];
  name = [processInfo name];
  v5 = name;
  if (name)
  {
    clientName = name;
  }

  else
  {
    clientName = [(HMDXPCClientConnection *)self clientName];
  }

  v7 = clientName;

  return v7;
}

- (id)_displayName
{
  name = [(HMDXPCClientConnection *)self name];

  if (name)
  {
    name2 = [(HMDXPCClientConnection *)self name];
  }

  else
  {
    processInfo = [(HMDXPCClientConnection *)self processInfo];
    applicationInfo = [processInfo applicationInfo];
    bundleIdentifier = [applicationInfo bundleIdentifier];

    if (bundleIdentifier)
    {
      processInfo2 = [(HMDXPCClientConnection *)self processInfo];
      applicationInfo2 = [processInfo2 applicationInfo];
      name2 = [applicationInfo2 bundleIdentifier];
    }

    else
    {
      name2 = @"unknown";
    }
  }

  return name2;
}

- (BOOL)isEntitledForHomeLocationAccess
{
  xpcConnection = [(HMDXPCClientConnection *)self xpcConnection];
  v3 = validateEntitlementForConnection(@"com.apple.private.homekit.home-location", xpcConnection);

  return v3;
}

- (BOOL)isAuthorizedForLocationAccess
{
  if (([(HMDXPCClientConnection *)self entitlements]& 0x400) != 0)
  {
    bundleForLocationManager = [objc_opt_class() bundleForLocationManager];
    if (!bundleForLocationManager)
    {
      v5 = 0;
      goto LABEL_6;
    }

    locationAuthorization = [objc_alloc(MEMORY[0x277D0F800]) initWithBundle:bundleForLocationManager];
  }

  else
  {
    bundleForLocationManager = [(HMDXPCClientConnection *)self processInfo];
    locationAuthorization = [bundleForLocationManager locationAuthorization];
  }

  v5 = locationAuthorization;
LABEL_6:

  isAuthorized = [v5 isAuthorized];
  return isAuthorized;
}

- (BOOL)isAuthorizedForMicrophoneAccess
{
  v2 = *MEMORY[0x277D6C1A8];
  xpcConnection = [(HMDXPCClientConnection *)self xpcConnection];
  v4 = xpcConnection;
  if (xpcConnection)
  {
    [xpcConnection auditToken];
  }

  v5 = TCCAccessCheckAuditToken() != 0;

  return v5;
}

- (BOOL)isAuthorizedForHomeDataAccess
{
  v2 = *MEMORY[0x277D6C258];
  xpcConnection = [(HMDXPCClientConnection *)self xpcConnection];
  v4 = xpcConnection;
  if (xpcConnection)
  {
    [xpcConnection auditToken];
  }

  v5 = TCCAccessCheckAuditToken() != 0;

  return v5;
}

- (NSString)clientIdentifier
{
  os_unfair_lock_lock_with_options();
  clientIdentifier = self->_clientIdentifier;
  if (!clientIdentifier)
  {
    applicationInfo = [(HMDProcessInfo *)self->_processInfo applicationInfo];
    bundleIdentifier = [applicationInfo bundleIdentifier];
    v6 = bundleIdentifier;
    if (bundleIdentifier)
    {
      v7 = bundleIdentifier;
      v8 = self->_clientIdentifier;
      self->_clientIdentifier = v7;
    }

    else
    {
      name = [(HMFProcessInfo *)self->_processInfo name];
      v8 = name;
      if (name)
      {
        v10 = name;
      }

      else
      {
        v10 = [(NSDictionary *)self->_userInfo hmf_stringForKey:*MEMORY[0x277CD0C88]];
      }

      v11 = self->_clientIdentifier;
      self->_clientIdentifier = v10;
    }

    clientIdentifier = self->_clientIdentifier;
  }

  v12 = clientIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v12;
}

- (unint64_t)homeManagerOptions
{
  if (![(objc_class *)[(HMDXPCClientConnection *)self principalClass] isEqual:objc_opt_class()])
  {
    return -1;
  }

  userInfo = [(HMDXPCClientConnection *)self userInfo];
  v4 = [userInfo hmf_numberForKey:*MEMORY[0x277CD02D8]];

  if (v4)
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
    if (([(HMDXPCClientConnection *)self entitlements]& 4) != 0)
    {
      v6 = unsignedIntegerValue;
    }

    else
    {
      v6 = unsignedIntegerValue & 0xFFFFFFFFFFFF372FLL;
    }
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (Class)principalClass
{
  userInfo = [(HMDXPCClientConnection *)self userInfo];
  v3 = [userInfo hmf_stringForKey:*MEMORY[0x277CD0C80]];

  if (v3)
  {
    v4 = NSClassFromString(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)inactiveUpdatingLevel
{
  userInfo = [(HMDXPCClientConnection *)self userInfo];
  v3 = [userInfo hmf_numberForKey:*MEMORY[0x277CD0250]];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (id)clientUUID
{
  userInfo = [(HMDXPCClientConnection *)self userInfo];
  v3 = [userInfo hmf_UUIDForKey:*MEMORY[0x277CD15B0]];

  return v3;
}

- (NSString)clientName
{
  userInfo = [(HMDXPCClientConnection *)self userInfo];
  v3 = [userInfo hmf_stringForKey:*MEMORY[0x277CD0C88]];

  return v3;
}

- (void)setUserInfo:(id)info
{
  v26 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  queue = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  os_unfair_lock_lock_with_options();
  userInfo = self->_userInfo;
  if (HMFEqualObjects())
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v7 = self->_userInfo;
    v8 = [infoCopy copy];
    v9 = self->_userInfo;
    self->_userInfo = v8;

    os_unfair_lock_unlock(&self->_lock);
    clientName = [(HMDXPCClientConnection *)self clientName];
    if (clientName)
    {
      requestTracker = [(HMDXPCClientConnection *)self requestTracker];
      [requestTracker setClientName:clientName];
    }

    v12 = MEMORY[0x277CCACA8];
    name = [(HMDXPCClientConnection *)self name];
    clientPid = [(HMDXPCClientConnection *)self clientPid];
    clientUUID = [(HMDXPCClientConnection *)self clientUUID];
    v16 = [v12 stringWithFormat:@"%@/%d/%@", name, clientPid, clientUUID];
    [(HMDXPCClientConnection *)self setLogIdentifier:v16];

    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v20;
      v24 = 2112;
      v25 = infoCopy;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Updated user info: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    if (!v7)
    {
      [(HMDXPCClientConnection *)selfCopy _start];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)userInfo
{
  os_unfair_lock_lock_with_options();
  v3 = self->_userInfo;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  _displayName = [(HMDXPCClientConnection *)self _displayName];
  v5 = [v3 initWithName:@"Name" value:_displayName];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDXPCClientConnection clientPid](self, "clientPid", v5)}];
  v8 = [v6 initWithName:@"PID" value:v7];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDXPCClientConnection *)self entitlements];
  v10 = HMXPCClientEntitlementsShortDescription();
  v11 = [v9 initWithName:@"Entitlements" value:v10];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  name = [(HMDXPCClientConnection *)self name];
  v6 = [v3 stringWithFormat:@"%@ %@ (%d)", shortDescription, name, -[HMDXPCClientConnection clientPid](self, "clientPid")];

  return v6;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  requestTracker = [(HMDXPCClientConnection *)self requestTracker];
  [requestTracker cancelAllRequests];

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@XPC connection got deallocated.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v10.receiver = selfCopy;
  v10.super_class = HMDXPCClientConnection;
  [(HMDXPCClientConnection *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (HMDXPCClientConnection)initWithConnection:(id)connection queue:(id)queue messageCountTracker:(id)tracker requestTracker:(id)requestTracker
{
  connectionCopy = connection;
  queueCopy = queue;
  trackerCopy = tracker;
  requestTrackerCopy = requestTracker;
  if (!connectionCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!queueCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!trackerCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v15 = requestTrackerCopy;
  if (!requestTrackerCopy)
  {
LABEL_11:
    v22 = _HMFPreconditionFailure();
    return [(HMDXPCClientConnection *)v22 initWithConnection:v23 queue:v24, v25];
  }

  v26.receiver = self;
  v26.super_class = HMDXPCClientConnection;
  v16 = [(HMDXPCClientConnection *)&v26 init];
  if (v16)
  {
    [connectionCopy setQueue:queueCopy];
    objc_storeStrong(&v16->_xpcConnection, connection);
    objc_storeStrong(&v16->_queue, queue);
    objc_storeStrong(&v16->_messageCountTracker, tracker);
    objc_storeStrong(&v16->_requestTracker, requestTracker);
    v16->_state = 0;
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(connectionCopy, "processIdentifier")];
    logIdentifier = v16->_logIdentifier;
    v16->_logIdentifier = v17;

    v16->_entitlements = [HMDXPCClientConnection entitlementsForConnection:connectionCopy];
    v16->_entitledForAPIAccess = validateEntitlementForConnection(@"com.apple.developer.homekit", connectionCopy);
    v16->_entitledForBackgroundMode = validateEntitlementForConnection(@"com.apple.developer.homekit.background-mode", connectionCopy);
    v16->_entitledForCameraClipsAccess = validateEntitlementForConnection(@"com.apple.private.homekit.cameraclips", connectionCopy);
    v16->_entitledForMultiUserSetupAccess = validateEntitlementForConnection(@"com.apple.private.homekit.multi-user.setup", connectionCopy);
    v16->_entitledForPersonManagerAccess = validateEntitlementForConnection(@"com.apple.private.homekit.person-manager", connectionCopy);
    v16->_entitledForWalletKeyAccess = validateEntitlementForConnection(@"com.apple.private.homekit.wallet-key", connectionCopy);
    v19 = [[HMDXPCMessageSendPolicyParameters alloc] initWithEntitlements:v16->_entitlements];
    sendPolicyParameters = v16->_sendPolicyParameters;
    v16->_sendPolicyParameters = v19;
  }

  return v16;
}

- (HMDXPCClientConnection)initWithConnection:(id)connection queue:(id)queue
{
  connectionCopy = connection;
  queueCopy = queue;
  if (connectionCopy)
  {
    v8 = queueCopy;
    v9 = +[HMDXPCMessageCountTracker sharedTracker];
    v10 = [[HMDXPCRequestTracker alloc] initWithQueue:v8];
    v11 = [(HMDXPCClientConnection *)self initWithConnection:connectionCopy queue:v8 messageCountTracker:v9 requestTracker:v10];

    return v11;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return +[(HMDXPCClientConnection *)v13];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t42_37344 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t42_37344, &__block_literal_global_37345);
  }

  v3 = logCategory__hmf_once_v43_37346;

  return v3;
}

uint64_t __37__HMDXPCClientConnection_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v43_37346;
  logCategory__hmf_once_v43_37346 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (unint64_t)entitlementsForConnection:(id)connection
{
  v20 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = validateEntitlementForConnection(@"com.apple.developer.homekit", connectionCopy);
  if (validateEntitlementForConnection(@"com.apple.developer.homekit.background-mode", connectionCopy))
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  if (!validateEntitlementForConnection(@"com.apple.private.homekit", connectionCopy))
  {
    if (!validateEntitlementForConnection(@"com.apple.homekit.private-spi-access", connectionCopy))
    {
      goto LABEL_10;
    }

    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v10;
      v16 = 2112;
      v17 = @"com.apple.private.homekit";
      v18 = 2112;
      v19 = connectionCopy;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Client should adopt %@ entitlement: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v6 |= 4uLL;
LABEL_10:
  if (validateEntitlementForConnection(@"com.apple.private.homekit.pairing-identity.private", connectionCopy))
  {
    v11 = v6 | 0x18;
  }

  else if (validateEntitlementForConnection(@"com.apple.private.homekit.pairing-identity", connectionCopy))
  {
    v11 = v6 | 8;
  }

  else
  {
    v11 = v6;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.remote-login.private", connectionCopy))
  {
    v11 |= 0x20uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.developer.homekit.allow-setup-payload", connectionCopy))
  {
    v11 |= 0x40uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.developer.matter.allow-setup-payload", connectionCopy))
  {
    v11 |= 0x200000uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.cameraclips", connectionCopy))
  {
    v11 |= 0x80uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.connectivity-info", connectionCopy))
  {
    v11 |= 0x100uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.multi-user.setup", connectionCopy))
  {
    v11 |= 0x200uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.location", connectionCopy))
  {
    v11 |= 0x400uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.home-location", connectionCopy))
  {
    v11 |= 0x80000uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.shortcuts-automation-access", connectionCopy))
  {
    v11 |= 0x800uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.messaging", connectionCopy))
  {
    v11 |= 0x1000uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.person-manager", connectionCopy))
  {
    v11 |= 0x2000uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.allow-secure-access", connectionCopy))
  {
    v11 |= 0x4000uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.diagnostics", connectionCopy))
  {
    v11 |= 0x8000uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.state-dump", connectionCopy))
  {
    v11 |= 0x10000uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.wallet-key", connectionCopy))
  {
    v11 |= 0x20000uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.assistant-identifiers", connectionCopy))
  {
    v11 |= 0x40000uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.location-feedback-debug", connectionCopy))
  {
    v11 |= 0x100000uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.modern-messaging", connectionCopy))
  {
    v11 |= 0x400000uLL;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

@end