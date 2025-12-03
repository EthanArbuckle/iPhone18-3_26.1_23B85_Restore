@interface HMDRemoteLoginInitiator
+ (id)logCategory;
- (HMDRemoteLoginInitiator)initWithUUID:(id)d accessory:(id)accessory remoteLoginHandler:(id)handler;
- (void)_callCompletion:(id)completion loggedInAccount:(id)account authSession:(id)session;
- (void)_companionLoginWithSessionID:(id)d account:(id)account remoteDevice:(id)device completion:(id)completion;
- (void)_handleProxyDeviceResponse:(id)response error:(id)error message:(id)message;
- (void)_handleRemoteLoginCompanionAuthentication:(id)authentication;
- (void)_handleRemoteLoginProxiedDevice:(id)device;
- (void)_handleRemoteLoginProxyAuthentication:(id)authentication;
- (void)_handleRemoteLoginSignout:(id)signout;
- (void)_handleSignoutResponse:(id)response error:(id)error message:(id)message;
- (void)_proxyLoginWithSessionID:(id)d authResults:(id)results remoteDevice:(id)device completion:(id)completion;
- (void)configureWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher;
- (void)didCompleteAuthentication:(id)authentication error:(id)error loggedInAccount:(id)account;
- (void)registerForMessages;
@end

@implementation HMDRemoteLoginInitiator

- (void)didCompleteAuthentication:(id)authentication error:(id)error loggedInAccount:(id)account
{
  authenticationCopy = authentication;
  errorCopy = error;
  accountCopy = account;
  workQueue = [(HMDRemoteLoginBase *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__HMDRemoteLoginInitiator_didCompleteAuthentication_error_loggedInAccount___block_invoke;
  v15[3] = &unk_2786891E0;
  v15[4] = self;
  v16 = authenticationCopy;
  v17 = errorCopy;
  v18 = accountCopy;
  v12 = accountCopy;
  v13 = errorCopy;
  v14 = authenticationCopy;
  dispatch_async(workQueue, v15);
}

void __75__HMDRemoteLoginInitiator_didCompleteAuthentication_error_loggedInAccount___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) loginSession];
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

  v5 = [v4 remoteAuthentication];
  v6 = *(a1 + 40);

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v5 == v6)
  {
    if (v10)
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v17 = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@%@ has completed with error %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) _callCompletion:*(a1 + 48) loggedInAccount:*(a1 + 56) authSession:v4];
  }

  else
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 48);
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Received completion from unknown remote authentication with error %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_callCompletion:(id)completion loggedInAccount:(id)account authSession:(id)session
{
  v32 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  accountCopy = account;
  sessionCopy = session;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    loginSession = [(HMDRemoteLoginInitiator *)selfCopy loginSession];
    v26 = 138543874;
    v27 = v14;
    v28 = 2112;
    v29 = loginSession;
    v30 = 2112;
    v31 = completionCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Login session %@ has ended with error %@", &v26, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  completion = [sessionCopy completion];

  if (completion)
  {
    completion2 = [sessionCopy completion];
    (completion2)[2](completion2, completionCopy, accountCopy);
  }

  if (accountCopy)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      remoteLoginHandler = [(HMDRemoteLoginBase *)v19 remoteLoginHandler];
      loggedInAccount = [remoteLoginHandler loggedInAccount];
      v26 = 138543874;
      v27 = v21;
      v28 = 2112;
      v29 = loggedInAccount;
      v30 = 2112;
      v31 = accountCopy;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Updating the logged in account from %@ to %@", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    remoteLoginHandler2 = [(HMDRemoteLoginBase *)v19 remoteLoginHandler];
    [remoteLoginHandler2 _updateLoggedInAccount:accountCopy];
  }

  [(HMDRemoteLoginInitiator *)selfCopy _resetCurrentSession:completionCopy];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_handleSignoutResponse:(id)response error:(id)error message:(id)message
{
  v26 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  errorCopy = error;
  messageCopy = message;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v20 = 138543874;
    v21 = v14;
    v22 = 2112;
    v23 = responseCopy;
    v24 = 2112;
    v25 = errorCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Received proxy device response %@ and error %@", &v20, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  if (errorCopy)
  {
    v15 = errorCopy;
  }

  else
  {
    remoteLoginHandler = [(HMDRemoteLoginBase *)selfCopy remoteLoginHandler];
    [remoteLoginHandler _updateLoggedInAccount:0];
  }

  responseHandler = [messageCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [messageCopy responseHandler];
    (responseHandler2)[2](responseHandler2, errorCopy, 0);
  }

  [(HMDRemoteLoginInitiator *)selfCopy _resetCurrentSession:errorCopy];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemoteLoginSignout:(id)signout
{
  v20[1] = *MEMORY[0x277D85DE8];
  signoutCopy = signout;
  v5 = [signoutCopy stringForKey:@"kRemoteLoginSessionID"];
  v6 = [(HMDRemoteLoginInitiatorSession *)[HMDRemoteLoginInitiatorSignoutSession alloc] initWithSessionID:v5];
  [(HMDRemoteLoginInitiator *)self setLoginSession:v6];
  v7 = [(HMRemoteLoginMessage *)[HMDRemoteLoginSignoutRequest alloc] initWithSessionID:v5];
  messageName = [(HMDRemoteLoginSignoutRequest *)v7 messageName];
  v19 = messageName;
  v9 = encodeRootObject();
  v20[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  objc_initWeak(&location, self);
  remoteMessageSender = [(HMDRemoteLoginInitiator *)self remoteMessageSender];
  messageName2 = [(HMDRemoteLoginSignoutRequest *)v7 messageName];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__HMDRemoteLoginInitiator__handleRemoteLoginSignout___block_invoke;
  v15[3] = &unk_278687F40;
  objc_copyWeak(&v17, &location);
  v13 = signoutCopy;
  v16 = v13;
  [remoteMessageSender sendRemoteMessageWithName:messageName2 payload:v10 responseHandler:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  v14 = *MEMORY[0x277D85DE8];
}

void __53__HMDRemoteLoginInitiator__handleRemoteLoginSignout___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleSignoutResponse:v5 error:v6 message:*(a1 + 32)];
}

- (void)_proxyLoginWithSessionID:(id)d authResults:(id)results remoteDevice:(id)device completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  resultsCopy = results;
  deviceCopy = device;
  completionCopy = completion;
  v14 = [HMDRemoteLoginInitiatorProxyAuthentication alloc];
  workQueue = [(HMDRemoteLoginBase *)self workQueue];
  remoteMessageSender = [(HMDRemoteLoginInitiator *)self remoteMessageSender];
  v17 = [(HMDRemoteLoginInitiatorProxyAuthentication *)v14 initWithSessionID:dCopy remoteDevice:deviceCopy workQueue:workQueue remoteMessageSender:remoteMessageSender delegate:self authResults:resultsCopy];

  v18 = [[HMDRemoteLoginInitiatorAuthenticationSession alloc] initWithSessionID:dCopy remoteAuthentication:v17 completion:completionCopy];
  [(HMDRemoteLoginInitiator *)self setLoginSession:v18];
  v19 = objc_autoreleasePoolPush();
  selfCopy = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v25 = 138543618;
    v26 = v22;
    v27 = 2112;
    v28 = dCopy;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Created the proxy login with Session ID: %@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  remoteAuthentication = [(HMDRemoteLoginInitiatorAuthenticationSession *)v18 remoteAuthentication];
  [remoteAuthentication authenticate];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemoteLoginProxyAuthentication:(id)authentication
{
  v31[2] = *MEMORY[0x277D85DE8];
  authenticationCopy = authentication;
  v5 = [authenticationCopy stringForKey:@"kRemoteLoginSessionID"];
  v6 = [authenticationCopy dataForKey:@"kRemoteLoginAuthResults"];
  v7 = MEMORY[0x277CCAAC8];
  v8 = MEMORY[0x277CBEB98];
  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v10 = [v8 setWithArray:v9];
  v26 = 0;
  v11 = [v7 unarchivedObjectOfClasses:v10 fromData:v6 error:&v26];
  v12 = v26;

  if (!v11)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v16;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive authentication results from results data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = v11;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  accessory = [(HMDRemoteLoginBase *)self accessory];
  device = [accessory device];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __65__HMDRemoteLoginInitiator__handleRemoteLoginProxyAuthentication___block_invoke;
  v24[3] = &unk_2786733F0;
  v25 = authenticationCopy;
  v22 = authenticationCopy;
  [(HMDRemoteLoginInitiator *)self _proxyLoginWithSessionID:v5 authResults:v19 remoteDevice:device completion:v24];

  v23 = *MEMORY[0x277D85DE8];
}

void __65__HMDRemoteLoginInitiator__handleRemoteLoginProxyAuthentication___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) responseHandler];

  if (v6)
  {
    v7 = [*(a1 + 32) responseHandler];
    v8 = [v5 messagePayload];
    (v7)[2](v7, v9, v8);
  }
}

- (void)_handleProxyDeviceResponse:(id)response error:(id)error message:(id)message
{
  v46 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  errorCopy = error;
  messageCopy = message;
  if (!errorCopy)
  {
    v17 = [HMDRemoteLoginProxyDeviceResponse objWithDict:responseCopy];
    v18 = v17;
    if (v17)
    {
      error = [v17 error];

      if (!error)
      {
        proxyDevice = [v18 proxyDevice];
        v30 = objc_autoreleasePoolPush();
        selfCopy = self;
        v32 = HMFGetOSLogHandle();
        v33 = v32;
        if (proxyDevice)
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v34 = HMFGetLogIdentifier();
            *buf = 138543618;
            v43 = v34;
            v44 = 2112;
            v45 = proxyDevice;
            _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Received proxy device response with device: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v30);
          v40 = @"kRemoteLoginProxiedDevice";
          v35 = encodeRootObject();
          v41 = v35;
          v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];

          v15 = 0;
        }

        else
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v36 = HMFGetLogIdentifier();
            *buf = 138543362;
            v43 = v36;
            _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Received proxy device response with no device", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v30);
          v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
          v16 = 0;
        }

        goto LABEL_22;
      }

      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v43 = v23;
        v44 = 2112;
        v45 = 0;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Received proxy device response with response error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      error2 = [v18 error];
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v43 = v28;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Received proxy device response with invalid payload", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      error2 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    }

    v15 = error2;
    v16 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v14;
    v44 = 2112;
    v45 = errorCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Received proxy device response with error %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = errorCopy;
  v16 = 0;
LABEL_23:
  responseHandler = [messageCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [messageCopy responseHandler];
    (responseHandler2)[2](responseHandler2, v15, v16);
  }

  [(HMDRemoteLoginInitiator *)self _resetCurrentSession:v15];

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemoteLoginProxiedDevice:(id)device
{
  v20[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = [deviceCopy stringForKey:@"kRemoteLoginSessionID"];
  v6 = [[HMDRemoteLoginInitiatorSession alloc] initWithSessionID:v5];
  [(HMDRemoteLoginInitiator *)self setLoginSession:v6];
  v7 = [(HMRemoteLoginMessage *)[HMDRemoteLoginProxyDeviceRequest alloc] initWithSessionID:v5];
  messageName = [(HMDRemoteLoginProxyDeviceRequest *)v7 messageName];
  v19 = messageName;
  v9 = encodeRootObject();
  v20[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  objc_initWeak(&location, self);
  remoteMessageSender = [(HMDRemoteLoginInitiator *)self remoteMessageSender];
  messageName2 = [(HMDRemoteLoginProxyDeviceRequest *)v7 messageName];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__HMDRemoteLoginInitiator__handleRemoteLoginProxiedDevice___block_invoke;
  v15[3] = &unk_278687F40;
  objc_copyWeak(&v17, &location);
  v13 = deviceCopy;
  v16 = v13;
  [remoteMessageSender sendRemoteMessageWithName:messageName2 payload:v10 responseHandler:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  v14 = *MEMORY[0x277D85DE8];
}

void __59__HMDRemoteLoginInitiator__handleRemoteLoginProxiedDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleProxyDeviceResponse:v5 error:v6 message:*(a1 + 32)];
}

- (void)_companionLoginWithSessionID:(id)d account:(id)account remoteDevice:(id)device completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  accountCopy = account;
  deviceCopy = device;
  completionCopy = completion;
  v14 = [HMDRemoteLoginInitiatorCompanionAuthentication alloc];
  workQueue = [(HMDRemoteLoginBase *)self workQueue];
  remoteMessageSender = [(HMDRemoteLoginInitiator *)self remoteMessageSender];
  v17 = [(HMDRemoteLoginInitiatorCompanionAuthentication *)v14 initWithSessionID:dCopy remoteDevice:deviceCopy workQueue:workQueue remoteMessageSender:remoteMessageSender delegate:self account:accountCopy];

  v18 = [[HMDRemoteLoginInitiatorAuthenticationSession alloc] initWithSessionID:dCopy remoteAuthentication:v17 completion:completionCopy];
  [(HMDRemoteLoginInitiator *)self setLoginSession:v18];
  v19 = objc_autoreleasePoolPush();
  selfCopy = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v25 = 138543618;
    v26 = v22;
    v27 = 2112;
    v28 = dCopy;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Created the companion login with Session ID: %@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  remoteAuthentication = [(HMDRemoteLoginInitiatorAuthenticationSession *)v18 remoteAuthentication];
  [remoteAuthentication authenticate];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemoteLoginCompanionAuthentication:(id)authentication
{
  v24 = *MEMORY[0x277D85DE8];
  authenticationCopy = authentication;
  v5 = [authenticationCopy stringForKey:@"kRemoteLoginSessionID"];
  v6 = [authenticationCopy dataForKey:@"kRemoteLoginAccount"];
  v19 = 0;
  v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v19];
  v8 = v19;
  if (!v7)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v12;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive account from account data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  accessory = [(HMDRemoteLoginBase *)self accessory];
  device = [accessory device];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__HMDRemoteLoginInitiator__handleRemoteLoginCompanionAuthentication___block_invoke;
  v17[3] = &unk_2786733F0;
  v18 = authenticationCopy;
  v15 = authenticationCopy;
  [(HMDRemoteLoginInitiator *)self _companionLoginWithSessionID:v5 account:v7 remoteDevice:device completion:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __69__HMDRemoteLoginInitiator__handleRemoteLoginCompanionAuthentication___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) responseHandler];

  if (v6)
  {
    v7 = [*(a1 + 32) responseHandler];
    v8 = [v5 messagePayload];
    (v7)[2](v7, v9, v8);
  }
}

- (void)registerForMessages
{
  v20[2] = *MEMORY[0x277D85DE8];
  accessory = [(HMDRemoteLoginBase *)self accessory];
  home = [accessory home];
  v5 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];

  v6 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  msgDispatcher = [(HMDRemoteLoginBase *)self msgDispatcher];
  v20[0] = v5;
  v20[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  [msgDispatcher registerForMessage:@"kRemoteLoginCompanionAuthentication" receiver:self policies:v8 selector:sel__handleRemoteLoginCompanionAuthentication_];

  msgDispatcher2 = [(HMDRemoteLoginBase *)self msgDispatcher];
  v19[0] = v5;
  v19[1] = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  [msgDispatcher2 registerForMessage:@"kRemoteLoginQueryProxiedDevice" receiver:self policies:v10 selector:sel__handleRemoteLoginProxiedDevice_];

  msgDispatcher3 = [(HMDRemoteLoginBase *)self msgDispatcher];
  v18[0] = v5;
  v18[1] = v6;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  [msgDispatcher3 registerForMessage:@"kRemoteLoginProxyAuthentication" receiver:self policies:v12 selector:sel__handleRemoteLoginProxyAuthentication_];

  msgDispatcher4 = [(HMDRemoteLoginBase *)self msgDispatcher];
  v17[0] = v5;
  v17[1] = v6;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  [msgDispatcher4 registerForMessage:@"kRemoteLoginSignout" receiver:self policies:v14 selector:sel__handleRemoteLoginSignout_];

  anisetteProviderBridge = [(HMDRemoteLoginInitiator *)self anisetteProviderBridge];
  [anisetteProviderBridge registerForMessages];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)configureWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher
{
  v18.receiver = self;
  v18.super_class = HMDRemoteLoginInitiator;
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  [(HMDRemoteLoginBase *)&v18 configureWithWorkQueue:queueCopy messageDispatcher:dispatcherCopy];
  v8 = [(HMDRemoteLoginBase *)self accessory:v18.receiver];
  home = [v8 home];
  homeManager = [home homeManager];
  messageDispatcher = [homeManager messageDispatcher];

  v12 = [HMDRemoteLoginMessageSender alloc];
  uuid = [(HMDRemoteLoginBase *)self uuid];
  workQueue = [(HMDRemoteLoginBase *)self workQueue];
  v15 = [(HMDRemoteLoginMessageSender *)v12 initWithTarget:uuid accessory:v8 device:0 workQueue:workQueue messageDispatcher:messageDispatcher];
  [(HMDRemoteLoginInitiator *)self setRemoteMessageSender:v15];

  anisetteProviderBridge = [(HMDRemoteLoginInitiator *)self anisetteProviderBridge];
  remoteMessageSender = [(HMDRemoteLoginInitiator *)self remoteMessageSender];
  [anisetteProviderBridge configureWithWorkQueue:queueCopy messageDispatcher:dispatcherCopy remoteMessageSender:remoteMessageSender];
}

- (HMDRemoteLoginInitiator)initWithUUID:(id)d accessory:(id)accessory remoteLoginHandler:(id)handler
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = HMDRemoteLoginInitiator;
  v9 = [(HMDRemoteLoginBase *)&v13 initWithUUID:dCopy accessory:accessory remoteLoginHandler:handler];
  if (v9)
  {
    v10 = [[HMDRemoteLoginAnisetteDataProviderBridge alloc] initWithUUID:dCopy];
    anisetteProviderBridge = v9->_anisetteProviderBridge;
    v9->_anisetteProviderBridge = v10;
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_47019 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_47019, &__block_literal_global_47020);
  }

  v3 = logCategory__hmf_once_v1_47021;

  return v3;
}

void __38__HMDRemoteLoginInitiator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_47021;
  logCategory__hmf_once_v1_47021 = v1;
}

@end