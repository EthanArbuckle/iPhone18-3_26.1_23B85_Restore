@interface HMDRemoteLoginInitiator
+ (id)logCategory;
- (HMDRemoteLoginInitiator)initWithUUID:(id)a3 accessory:(id)a4 remoteLoginHandler:(id)a5;
- (void)_callCompletion:(id)a3 loggedInAccount:(id)a4 authSession:(id)a5;
- (void)_companionLoginWithSessionID:(id)a3 account:(id)a4 remoteDevice:(id)a5 completion:(id)a6;
- (void)_handleProxyDeviceResponse:(id)a3 error:(id)a4 message:(id)a5;
- (void)_handleRemoteLoginCompanionAuthentication:(id)a3;
- (void)_handleRemoteLoginProxiedDevice:(id)a3;
- (void)_handleRemoteLoginProxyAuthentication:(id)a3;
- (void)_handleRemoteLoginSignout:(id)a3;
- (void)_handleSignoutResponse:(id)a3 error:(id)a4 message:(id)a5;
- (void)_proxyLoginWithSessionID:(id)a3 authResults:(id)a4 remoteDevice:(id)a5 completion:(id)a6;
- (void)configureWithWorkQueue:(id)a3 messageDispatcher:(id)a4;
- (void)didCompleteAuthentication:(id)a3 error:(id)a4 loggedInAccount:(id)a5;
- (void)registerForMessages;
@end

@implementation HMDRemoteLoginInitiator

- (void)didCompleteAuthentication:(id)a3 error:(id)a4 loggedInAccount:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDRemoteLoginBase *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__HMDRemoteLoginInitiator_didCompleteAuthentication_error_loggedInAccount___block_invoke;
  v15[3] = &unk_279734870;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@%@ has completed with error %@", &v17, 0x20u);
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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Received completion from unknown remote authentication with error %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_callCompletion:(id)a3 loggedInAccount:(id)a4 authSession:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [(HMDRemoteLoginInitiator *)v12 loginSession];
    v26 = 138543874;
    v27 = v14;
    v28 = 2112;
    v29 = v15;
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Login session %@ has ended with error %@", &v26, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [v10 completion];

  if (v16)
  {
    v17 = [v10 completion];
    (v17)[2](v17, v8, v9);
  }

  if (v9)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v12;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [(HMDRemoteLoginBase *)v19 remoteLoginHandler];
      v23 = [v22 loggedInAccount];
      v26 = 138543874;
      v27 = v21;
      v28 = 2112;
      v29 = v23;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Updating the logged in account from %@ to %@", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    v24 = [(HMDRemoteLoginBase *)v19 remoteLoginHandler];
    [v24 _updateLoggedInAccount:v9];
  }

  [(HMDRemoteLoginInitiator *)v12 _resetCurrentSession:v8];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_handleSignoutResponse:(id)a3 error:(id)a4 message:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v20 = 138543874;
    v21 = v14;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Received proxy device response %@ and error %@", &v20, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  if (v9)
  {
    v15 = v9;
  }

  else
  {
    v16 = [(HMDRemoteLoginBase *)v12 remoteLoginHandler];
    [v16 _updateLoggedInAccount:0];
  }

  v17 = [v10 responseHandler];

  if (v17)
  {
    v18 = [v10 responseHandler];
    (v18)[2](v18, v9, 0);
  }

  [(HMDRemoteLoginInitiator *)v12 _resetCurrentSession:v9];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemoteLoginSignout:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 stringForKey:@"kRemoteLoginSessionID"];
  v6 = [(HMDRemoteLoginInitiatorSession *)[HMDRemoteLoginInitiatorSignoutSession alloc] initWithSessionID:v5];
  [(HMDRemoteLoginInitiator *)self setLoginSession:v6];
  v7 = [(HMRemoteLoginMessage *)[HMDRemoteLoginSignoutRequest alloc] initWithSessionID:v5];
  v8 = [(HMDRemoteLoginBase *)self remoteLoginHandler];
  v9 = [v8 loggedInAccount];
  [(HMDRemoteLoginSignoutRequest *)v7 setAccount:v9];

  v10 = [(HMDRemoteLoginSignoutRequest *)v7 messageName];
  v21 = v10;
  v11 = encodeRootObject();
  v22[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

  objc_initWeak(&location, self);
  v13 = [(HMDRemoteLoginInitiator *)self remoteMessageSender];
  v14 = [(HMDRemoteLoginSignoutRequest *)v7 messageName];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__HMDRemoteLoginInitiator__handleRemoteLoginSignout___block_invoke;
  v17[3] = &unk_279733AE8;
  objc_copyWeak(&v19, &location);
  v15 = v4;
  v18 = v15;
  [v13 sendRemoteMessageWithName:v14 payload:v12 responseHandler:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  v16 = *MEMORY[0x277D85DE8];
}

void __53__HMDRemoteLoginInitiator__handleRemoteLoginSignout___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleSignoutResponse:v5 error:v6 message:*(a1 + 32)];
}

- (void)_proxyLoginWithSessionID:(id)a3 authResults:(id)a4 remoteDevice:(id)a5 completion:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [HMDRemoteLoginInitiatorProxyAuthentication alloc];
  v15 = [(HMDRemoteLoginBase *)self workQueue];
  v16 = [(HMDRemoteLoginInitiator *)self remoteMessageSender];
  v17 = [(HMDRemoteLoginInitiatorProxyAuthentication *)v14 initWithSessionID:v10 remoteDevice:v12 workQueue:v15 remoteMessageSender:v16 delegate:self authResults:v11];

  v18 = [[HMDRemoteLoginInitiatorAuthenticationSession alloc] initWithSessionID:v10 remoteAuthentication:v17 completion:v13];
  [(HMDRemoteLoginInitiator *)self setLoginSession:v18];
  v19 = objc_autoreleasePoolPush();
  v20 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v25 = 138543618;
    v26 = v22;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Created the proxy login with Session ID: %@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  v23 = [(HMDRemoteLoginInitiatorAuthenticationSession *)v18 remoteAuthentication];
  [v23 authenticate];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemoteLoginProxyAuthentication:(id)a3
{
  v31[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 stringForKey:@"kRemoteLoginSessionID"];
  v6 = [v4 dataForKey:@"kRemoteLoginAuthResults"];
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
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v16;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive authentication results from results data: %@", buf, 0x16u);
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

  v20 = [(HMDRemoteLoginBase *)self accessory];
  v21 = [v20 device];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __65__HMDRemoteLoginInitiator__handleRemoteLoginProxyAuthentication___block_invoke;
  v24[3] = &unk_279724918;
  v25 = v4;
  v22 = v4;
  [(HMDRemoteLoginInitiator *)self _proxyLoginWithSessionID:v5 authResults:v19 remoteDevice:v21 completion:v24];

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

- (void)_handleProxyDeviceResponse:(id)a3 error:(id)a4 message:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v17 = [HMDRemoteLoginProxyDeviceResponse objWithDict:v8];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 error];

      if (!v19)
      {
        v29 = [v18 proxyDevice];
        v30 = objc_autoreleasePoolPush();
        v31 = self;
        v32 = HMFGetOSLogHandle();
        v33 = v32;
        if (v29)
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v34 = HMFGetLogIdentifier();
            *buf = 138543618;
            v43 = v34;
            v44 = 2112;
            v45 = v29;
            _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Received proxy device response with device: %@", buf, 0x16u);
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
            _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Received proxy device response with no device", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v30);
          v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
          v16 = 0;
        }

        goto LABEL_22;
      }

      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v43 = v23;
        v44 = 2112;
        v45 = 0;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Received proxy device response with response error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [v18 error];
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v43 = v28;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Received proxy device response with invalid payload", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      v24 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    }

    v15 = v24;
    v16 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v14;
    v44 = 2112;
    v45 = v9;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Received proxy device response with error %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = v9;
  v16 = 0;
LABEL_23:
  v37 = [v10 responseHandler];

  if (v37)
  {
    v38 = [v10 responseHandler];
    (v38)[2](v38, v15, v16);
  }

  [(HMDRemoteLoginInitiator *)self _resetCurrentSession:v15];

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemoteLoginProxiedDevice:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 stringForKey:@"kRemoteLoginSessionID"];
  v6 = [[HMDRemoteLoginInitiatorSession alloc] initWithSessionID:v5];
  [(HMDRemoteLoginInitiator *)self setLoginSession:v6];
  v7 = [(HMRemoteLoginMessage *)[HMDRemoteLoginProxyDeviceRequest alloc] initWithSessionID:v5];
  v8 = [(HMDRemoteLoginProxyDeviceRequest *)v7 messageName];
  v19 = v8;
  v9 = encodeRootObject();
  v20[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  objc_initWeak(&location, self);
  v11 = [(HMDRemoteLoginInitiator *)self remoteMessageSender];
  v12 = [(HMDRemoteLoginProxyDeviceRequest *)v7 messageName];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__HMDRemoteLoginInitiator__handleRemoteLoginProxiedDevice___block_invoke;
  v15[3] = &unk_279733AE8;
  objc_copyWeak(&v17, &location);
  v13 = v4;
  v16 = v13;
  [v11 sendRemoteMessageWithName:v12 payload:v10 responseHandler:v15];

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

- (void)_companionLoginWithSessionID:(id)a3 account:(id)a4 remoteDevice:(id)a5 completion:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [HMDRemoteLoginInitiatorCompanionAuthentication alloc];
  v15 = [(HMDRemoteLoginBase *)self workQueue];
  v16 = [(HMDRemoteLoginInitiator *)self remoteMessageSender];
  v17 = [(HMDRemoteLoginInitiatorCompanionAuthentication *)v14 initWithSessionID:v10 remoteDevice:v12 workQueue:v15 remoteMessageSender:v16 delegate:self account:v11];

  v18 = [[HMDRemoteLoginInitiatorAuthenticationSession alloc] initWithSessionID:v10 remoteAuthentication:v17 completion:v13];
  [(HMDRemoteLoginInitiator *)self setLoginSession:v18];
  v19 = objc_autoreleasePoolPush();
  v20 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v25 = 138543618;
    v26 = v22;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Created the companion login with Session ID: %@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  v23 = [(HMDRemoteLoginInitiatorAuthenticationSession *)v18 remoteAuthentication];
  [v23 authenticate];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemoteLoginCompanionAuthentication:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 stringForKey:@"kRemoteLoginSessionID"];
  v6 = [v4 dataForKey:@"kRemoteLoginAccount"];
  v19 = 0;
  v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v19];
  v8 = v19;
  if (!v7)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v12;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive account from account data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = [(HMDRemoteLoginBase *)self accessory];
  v14 = [v13 device];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__HMDRemoteLoginInitiator__handleRemoteLoginCompanionAuthentication___block_invoke;
  v17[3] = &unk_279724918;
  v18 = v4;
  v15 = v4;
  [(HMDRemoteLoginInitiator *)self _companionLoginWithSessionID:v5 account:v7 remoteDevice:v14 completion:v17];

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
  v3 = [(HMDRemoteLoginBase *)self accessory];
  v4 = [v3 home];
  v5 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:4 remoteAccessRequired:0];

  v6 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v7 = [(HMDRemoteLoginBase *)self msgDispatcher];
  v20[0] = v5;
  v20[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  [v7 registerForMessage:@"kRemoteLoginCompanionAuthentication" receiver:self policies:v8 selector:sel__handleRemoteLoginCompanionAuthentication_];

  v9 = [(HMDRemoteLoginBase *)self msgDispatcher];
  v19[0] = v5;
  v19[1] = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  [v9 registerForMessage:@"kRemoteLoginQueryProxiedDevice" receiver:self policies:v10 selector:sel__handleRemoteLoginProxiedDevice_];

  v11 = [(HMDRemoteLoginBase *)self msgDispatcher];
  v18[0] = v5;
  v18[1] = v6;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  [v11 registerForMessage:@"kRemoteLoginProxyAuthentication" receiver:self policies:v12 selector:sel__handleRemoteLoginProxyAuthentication_];

  v13 = [(HMDRemoteLoginBase *)self msgDispatcher];
  v17[0] = v5;
  v17[1] = v6;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  [v13 registerForMessage:@"kRemoteLoginSignout" receiver:self policies:v14 selector:sel__handleRemoteLoginSignout_];

  v15 = [(HMDRemoteLoginInitiator *)self anisetteProviderBridge];
  [v15 registerForMessages];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)configureWithWorkQueue:(id)a3 messageDispatcher:(id)a4
{
  v18.receiver = self;
  v18.super_class = HMDRemoteLoginInitiator;
  v6 = a4;
  v7 = a3;
  [(HMDRemoteLoginBase *)&v18 configureWithWorkQueue:v7 messageDispatcher:v6];
  v8 = [(HMDRemoteLoginBase *)self accessory:v18.receiver];
  v9 = [v8 home];
  v10 = [v9 homeManager];
  v11 = [v10 messageDispatcher];

  v12 = [HMDRemoteLoginMessageSender alloc];
  v13 = [(HMDRemoteLoginBase *)self uuid];
  v14 = [(HMDRemoteLoginBase *)self workQueue];
  v15 = [(HMDRemoteLoginMessageSender *)v12 initWithTarget:v13 accessory:v8 device:0 workQueue:v14 messageDispatcher:v11];
  [(HMDRemoteLoginInitiator *)self setRemoteMessageSender:v15];

  v16 = [(HMDRemoteLoginInitiator *)self anisetteProviderBridge];
  v17 = [(HMDRemoteLoginInitiator *)self remoteMessageSender];
  [v16 configureWithWorkQueue:v7 messageDispatcher:v6 remoteMessageSender:v17];
}

- (HMDRemoteLoginInitiator)initWithUUID:(id)a3 accessory:(id)a4 remoteLoginHandler:(id)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = HMDRemoteLoginInitiator;
  v9 = [(HMDRemoteLoginBase *)&v13 initWithUUID:v8 accessory:a4 remoteLoginHandler:a5];
  if (v9)
  {
    v10 = [[HMDRemoteLoginAnisetteDataProviderBridge alloc] initWithUUID:v8];
    anisetteProviderBridge = v9->_anisetteProviderBridge;
    v9->_anisetteProviderBridge = v10;
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_31811 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_31811, &__block_literal_global_31812);
  }

  v3 = logCategory__hmf_once_v1_31813;

  return v3;
}

uint64_t __38__HMDRemoteLoginInitiator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_31813;
  logCategory__hmf_once_v1_31813 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end