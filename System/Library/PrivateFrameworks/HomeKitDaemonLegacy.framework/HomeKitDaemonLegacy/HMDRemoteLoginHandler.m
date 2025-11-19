@interface HMDRemoteLoginHandler
+ (id)logCategory;
+ (id)remoteMessages;
- (HMDAppleMediaAccessory)accessory;
- (HMDRemoteLoginHandler)initWithAccessory:(id)a3 loggedInAccountData:(id)a4;
- (HMDRemoteLoginHandler)initWithCoder:(id)a3;
- (HMDRemoteLoginHandler)initWithUUID:(id)a3 accessory:(id)a4 loggedInAccount:(id)a5;
- (HMDRemoteLoginHandler)initWithUUID:(id)a3 accessory:(id)a4 loggedInAccount:(id)a5 accountStore:(id)a6 targetSupportsAccounts:(BOOL)a7;
- (id)accountInfoForAccount:(id)a3;
- (id)accountInfoFromLastEvent;
- (id)eventSource;
- (id)eventTopicForAccountInfo;
- (id)logIdentifier;
- (void)_handleRemoteLoginAccount:(id)a3 message:(id)a4;
- (void)_handleUpdateLoggedInAccountMessage:(id)a3;
- (void)_postAccountInfoFromAccountStore;
- (void)_postUpdatedAccountInfo:(id)a3;
- (void)_registerForUsernameUpdates;
- (void)_sendAccountUpdateNotification:(id)a3;
- (void)_updateLoggedInAccount:(id)a3;
- (void)configureWithWorkQueue:(id)a3 messageDispatcher:(id)a4 eventStoreReadHandle:(id)a5 eventForwarder:(id)a6;
- (void)encodeWithCoder:(id)a3;
- (void)handleAccountUsernameUpdatedOnCurrentDevice:(id)a3;
- (void)registerForMessages;
- (void)stageLoggedInAccount:(id)a3;
- (void)stagedValue:(id)a3 didExpireValue:(id)a4;
- (void)updateFrameworkWithReason:(id)a3;
@end

@implementation HMDRemoteLoginHandler

- (HMDAppleMediaAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (void)stagedValue:(id)a3 didExpireValue:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Unstaging logged in account: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDRemoteLoginHandler *)v9 updateFrameworkWithReason:@"HMDRemoteLoginHandlerStagedLoggedInAccount"];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(HMDRemoteLoginHandler *)self uuid];
  [v11 encodeObject:v4 forKey:@"kIdentifierKey"];

  v5 = [(HMDRemoteLoginHandler *)self accessory];
  [v11 encodeConditionalObject:v5 forKey:@"accessory"];

  v6 = [(HMDRemoteLoginHandler *)self loggedInAccount];
  [v11 encodeObject:v6 forKey:@"kRemoteLoginAccount"];

  if ([v11 hmd_isForXPCTransport])
  {
    v7 = [(HMDRemoteLoginHandler *)self initiator];
    v8 = [v7 anisetteProviderBridge];
    [v11 encodeObject:v8 forKey:@"kRemoteLoginAnisetterProviderBridge"];

    v9 = [(HMDRemoteLoginHandler *)self stagedLoggedInAccount];
    v10 = [v9 value];
    [v11 encodeObject:v10 forKey:@"kStagedRemoteLoginAccount"];
  }
}

- (HMDRemoteLoginHandler)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIdentifierKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kRemoteLoginAccount"];

  v8 = [(HMDRemoteLoginHandler *)self initWithUUID:v5 accessory:v6 loggedInAccount:v7];
  return v8;
}

- (void)handleAccountUsernameUpdatedOnCurrentDevice:(id)a3
{
  v4 = [(HMDRemoteLoginHandler *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDRemoteLoginHandler_handleAccountUsernameUpdatedOnCurrentDevice___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

void __69__HMDRemoteLoginHandler_handleAccountUsernameUpdatedOnCurrentDevice___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = +[HMDRemoteLoginUtilities primaryITunesAccount];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [MEMORY[0x277D0F8D8] defaultFormatter];
    v8 = [v7 privateStringForObjectValue:v2];
    v20 = 138543618;
    v21 = v6;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEBUG, "%{public}@loggedInAccount On Update:%@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v9 = [*(a1 + 32) loggedInAccount];
  if (v9)
  {
    v10 = v9;
    v11 = [*(a1 + 32) loggedInAccount];
    v12 = [v11 username];
    v13 = [v2 username];
    v14 = HMFEqualObjects();

    if ((v14 & 1) == 0)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 32);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Updating account on username change", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      [*(a1 + 32) _updateLoggedInAccount:v2];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_registerForUsernameUpdates
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Register for username updates", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 removeObserver:v4 name:@"HMDHomeManagerIDMSAccountUsernameDidUpdateNotification" object:0];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 addObserver:v4 selector:sel_handleAccountUsernameUpdatedOnCurrentDevice_ name:@"HMDHomeManagerIDMSAccountUsernameDidUpdateNotification" object:0];

  [(HMDRemoteLoginHandler *)v4 handleAccountUsernameUpdatedOnCurrentDevice:0];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateLoggedInAccount:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMDRemoteLoginHandler *)v6 accessory];
    [v9 supportsMessagedHomePodSettings];
    v10 = HMFBooleanToString();
    v15 = 138543874;
    v16 = v8;
    v17 = 2112;
    v18 = v4;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating logged in account to: %@, supportsMessagedHomePodSettings: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v11 = [(HMDRemoteLoginHandler *)v6 accessory];
  v12 = [v11 supportsMessagedHomePodSettings];

  if (v12)
  {
    [(HMDRemoteLoginHandler *)v6 _postUpdatedAccountInfo:v4];
  }

  else
  {
    v13 = [MEMORY[0x277D0F818] entitledMessageWithName:@"kRemoteLoginAccountUpdatedNotificationKey" messagePayload:0];
    __updateLoggedInAccount(v6, v4, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_postUpdatedAccountInfo:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDRemoteLoginHandler *)self targetSupportsAccounts])
  {
    [(HMDRemoteLoginHandler *)self setLoggedInAccount:v4];
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v8;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Posting event to update logged in account: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [(HMDRemoteLoginHandler *)v6 workQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __49__HMDRemoteLoginHandler__postUpdatedAccountInfo___block_invoke;
    v15[3] = &unk_2797359B0;
    v15[4] = v6;
    v16 = v4;
    dispatch_async(v9, v15);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to post account: %@ due to unsupported account target", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __49__HMDRemoteLoginHandler__postUpdatedAccountInfo___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) eventTopicForAccountInfo];
  v3 = [*(a1 + 32) eventForwarder];
  v4 = [*(a1 + 32) eventSource];
  v5 = v4;
  if (v2)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || v4 == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      *buf = 138544386;
      v32 = v11;
      v33 = 2112;
      v34 = v12;
      v35 = 2112;
      v36 = v2;
      v37 = 2112;
      v38 = v3;
      v39 = 2112;
      v40 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to post event to update logged in account: %@ due to missing topic: %@ event forwarder: %@ event source: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v13 = [*(a1 + 32) accountInfoForAccount:*(a1 + 40)];
    v14 = [*(a1 + 32) accountInfoFromLastEvent];
    v15 = v14;
    if (v14 && [v14 isEqual:v13])
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v19;
        v33 = 2112;
        v34 = v15;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Skip posting event to update logged in account as it matches account info from last event: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = *(a1 + 32);
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543874;
        v32 = v23;
        v33 = 2112;
        v34 = v2;
        v35 = 2112;
        v36 = v13;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Forwarding account info event with topic: %@ for accountInfo: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      v24 = objc_alloc(MEMORY[0x277D174B0]);
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v25 = [v24 initWithSource:v5 cachePolicy:2 combineType:2 timestamp:?];
      v26 = objc_alloc(MEMORY[0x277D174A0]);
      v27 = [v13 protoData];
      v28 = [v26 initWithEventData:v27 metadata:v25];

      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __49__HMDRemoteLoginHandler__postUpdatedAccountInfo___block_invoke_63;
      v30[3] = &unk_2797359D8;
      v30[4] = *(a1 + 32);
      [v3 forwardEvent:v28 topic:v2 completion:v30];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __49__HMDRemoteLoginHandler__postUpdatedAccountInfo___block_invoke_63(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to forward account info event with error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_postAccountInfoFromAccountStore
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(HMDRemoteLoginHandler *)self accessory];
  v4 = v3;
  if (v3)
  {
    if ([v3 supportsMessagedHomePodSettings] && objc_msgSend(v4, "isCurrentAccessory"))
    {
      v5 = [(HMDRemoteLoginHandler *)self accountStore];
      v6 = [v5 hmd_ams_activeiTunesAccount];

      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v16 = 138543618;
        v17 = v10;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Posting account store account: %@", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      [(HMDRemoteLoginHandler *)v8 _postUpdatedAccountInfo:v6];
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to post account info from account store due to missing accessory", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)eventTopicForAccountInfo
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(HMDRemoteLoginHandler *)self accessory];
  v4 = [v3 uuid];
  v5 = [v3 home];
  v6 = [v5 uuid];

  if (v4 && v6)
  {
    v7 = [MEMORY[0x277CD16F0] topicFromSuffixID:*MEMORY[0x277CCEA58] homeUUID:v6 accessoryUUID:v4];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get account info event topic due to missing accessory uuid: %@ home uuid: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)accountInfoForAccount:(id)a3
{
  v3 = MEMORY[0x277CD16F8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 username];
  v7 = [v4 hmd_aa_altDSID];
  v8 = [v4 hmd_ams_altDSID];

  v9 = [v5 initWithUsername:v6 aaAltDSID:v7 amsAltDSID:v8 signedIn:v4 != 0];

  return v9;
}

- (id)accountInfoFromLastEvent
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(HMDRemoteLoginHandler *)self eventTopicForAccountInfo];
  if (v3)
  {
    v4 = [(HMDRemoteLoginHandler *)self eventStoreReadHandle];
    if (v4)
    {
      v5 = [(HMDRemoteLoginHandler *)self eventStoreReadHandle];
      v6 = [v5 lastEventForTopic:v3];

      if (v6)
      {
        v7 = objc_alloc(MEMORY[0x277CD16F8]);
        v8 = [v6 encodedData];
        v9 = [v7 initWithProtoData:v8];

        if (v9)
        {
          v10 = v9;
        }

        else
        {
          v19 = objc_autoreleasePoolPush();
          v20 = self;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = HMFGetLogIdentifier();
            v25 = 138543362;
            v26 = v22;
            _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to get last account info event account due invalid stored event data", &v25, 0xCu);
          }

          objc_autoreleasePoolPop(v19);
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v25 = 138543362;
        v26 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to get last account info event account due to no event store read handle", &v25, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v9 = 0;
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get last account info event account due to no topic", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v9 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)eventSource
{
  v2 = [(HMDRemoteLoginHandler *)self accessory];
  v3 = [v2 uuid];
  v4 = [v3 UUIDString];

  return v4;
}

- (void)updateFrameworkWithReason:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDRemoteLoginHandler *)self accessory];
  v6 = [v5 home];
  v7 = [v6 homeManager];

  if (v7)
  {
    v8 = [(HMDRemoteLoginHandler *)self uuid];
    [v7 updateGenerationCounterWithReason:v4 sourceUUID:v8 shouldNotifyClients:1];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to update home graph without a home manager for reason: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)stageLoggedInAccount:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Staging logged in account: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDRemoteLoginHandler *)v6 stagedLoggedInAccount];
  [v9 stageValue:v4 withTimeout:600.0];

  [(HMDRemoteLoginHandler *)v6 updateFrameworkWithReason:@"HMDRemoteLoginHandlerStagedLoggedInAccount"];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateLoggedInAccountMessage:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 shortDescription];
    v41 = 138543618;
    v42 = v8;
    v43 = 2112;
    v44 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update logged in account message: %@", &v41, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [v4 dataForKey:@"kRemoteLoginAccount"];
  if (v10)
  {
    v11 = [MEMORY[0x277CCAAC8] deserializeObjectWithData:v10 allowedClass:objc_opt_class() frameworkClasses:MEMORY[0x277CBEBF8]];
    v12 = [(HMDRemoteLoginHandler *)v6 loggedInAccount];
    if (!v12)
    {
      goto LABEL_10;
    }

    v13 = v12;
    v14 = [v11 aa_altDSID];
    v15 = [(HMDRemoteLoginHandler *)v6 loggedInAccount];
    v16 = [v15 aa_altDSID];
    v17 = HMFEqualObjects();

    if (v17)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = v6;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v41 = 138543618;
        v42 = v21;
        v43 = 2112;
        v44 = v11;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Updated account matches the currently logged in account: %@", &v41, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v22 = [v4 responseHandler];

      if (!v22)
      {
        goto LABEL_25;
      }
    }

    else
    {
LABEL_10:
      v23 = [(HMDRemoteLoginHandler *)v6 loggedInAccount];

      if (v23)
      {
        v24 = objc_autoreleasePoolPush();
        v25 = v6;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = HMFGetLogIdentifier();
          v41 = 138543362;
          v42 = v27;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to update account, existing account present", &v41, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        v28 = [v4 responseHandler];

        if (!v28)
        {
          goto LABEL_25;
        }

        v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:@"Not supported." reason:@"Existing account present." suggestion:0];
        v30 = [v4 responseHandler];
        (v30)[2](v30, v29, 0);

        goto LABEL_24;
      }

      v38 = [(HMDRemoteLoginHandler *)v6 accessory];
      v39 = [v38 supportsMessagedHomePodSettings];

      if (v39)
      {
        [(HMDRemoteLoginHandler *)v6 stageLoggedInAccount:v11];
      }

      else
      {
        __updateLoggedInAccount(v6, v11, v4);
      }
    }

    v29 = [v4 responseHandler];
    v37 = v29[2];
LABEL_23:
    v37();
LABEL_24:

LABEL_25:
    goto LABEL_26;
  }

  v31 = objc_autoreleasePoolPush();
  v32 = v6;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = HMFGetLogIdentifier();
    v35 = [v4 messagePayload];
    v41 = 138543618;
    v42 = v34;
    v43 = 2112;
    v44 = v35;
    _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Missing serialized account in message payload: %@", &v41, 0x16u);
  }

  objc_autoreleasePoolPop(v31);
  v36 = [v4 responseHandler];

  if (v36)
  {
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v29 = [v4 responseHandler];
    v37 = v29[2];
    goto LABEL_23;
  }

LABEL_26:

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_sendAccountUpdateNotification:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v8;
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending account update notification: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v18 = @"kRemoteLoginAccount";
    v9 = encodeRootObject();
    v19 = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(HMDRemoteLoginHandler *)self initiator];
  v12 = [v11 workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__HMDRemoteLoginHandler__sendAccountUpdateNotification___block_invoke;
  v15[3] = &unk_2797359B0;
  v16 = v10;
  v17 = self;
  v13 = v10;
  dispatch_async(v12, v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __56__HMDRemoteLoginHandler__sendAccountUpdateNotification___block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x277D0F818] entitledMessageWithName:@"kRemoteLoginAccountUpdatedNotificationKey" messagePayload:*(a1 + 32)];
  v2 = [*(a1 + 40) initiator];
  v3 = [v2 msgDispatcher];
  v4 = [*(a1 + 40) uuid];
  [v3 sendMessage:v5 target:v4];
}

- (void)_handleRemoteLoginAccount:(id)a3 message:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 loggedInAccount];
  if (v8)
  {
    v39 = 0;
    v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v39];
    v10 = v39;
    if (!v9)
    {
      v11 = v8;
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v16 = v15 = v6;
        *buf = 138543618;
        v41 = v16;
        v42 = 2112;
        v43 = v10;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive logged in account from logged in account data: %@", buf, 0x16u);

        v6 = v15;
      }

      objc_autoreleasePoolPop(v12);
      v8 = v11;
    }
  }

  else
  {
    v9 = 0;
  }

  [(HMDRemoteLoginHandler *)self setLoggedInAccount:v9];
  v17 = [(HMDRemoteLoginHandler *)self loggedInAccount];
  v18 = [v17 aa_altDSID];
  v19 = [v9 aa_altDSID];
  if (HMFEqualObjects())
  {
    [(HMDRemoteLoginHandler *)self loggedInAccount];
    v20 = v38 = v8;
    [v20 username];
    v21 = self;
    v22 = v7;
    v24 = v23 = v6;
    v25 = [v9 username];
    v37 = HMFEqualObjects();

    v6 = v23;
    v7 = v22;
    self = v21;

    v8 = v38;
    if (v37)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = v21;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [(HMDRemoteLoginHandler *)v27 loggedInAccount];
        *buf = 138543874;
        v41 = v29;
        v42 = 2112;
        v43 = v30;
        v44 = 2112;
        v45 = v9;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Not updating logged in account from %@ to %@, as they are equal", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      goto LABEL_17;
    }
  }

  else
  {
  }

  v31 = objc_autoreleasePoolPush();
  v32 = self;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = HMFGetLogIdentifier();
    v35 = [(HMDRemoteLoginHandler *)v32 loggedInAccount];
    *buf = 138543874;
    v41 = v34;
    v42 = 2112;
    v43 = v35;
    v44 = 2112;
    v45 = v9;
    _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Updating logged in account from %@ to %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v31);
  [(HMDRemoteLoginHandler *)v32 setLoggedInAccount:v9];
  [(HMDRemoteLoginHandler *)v32 _sendAccountUpdateNotification:v9];
LABEL_17:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessages
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDRemoteLoginHandler *)self msgDispatcher];
  v4 = *MEMORY[0x277CD0C98];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:33];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v3 registerForMessage:v4 receiver:self policies:v6 selector:sel__handleUpdateLoggedInAccountMessage_];

  v7 = [(HMDRemoteLoginHandler *)self initiator];
  [v7 registerForMessages];

  v8 = [(HMDRemoteLoginHandler *)self receiver];
  [v8 registerForMessages];

  v9 = [(HMDRemoteLoginHandler *)self anisetteDataHandler];
  [v9 registerForMessages];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)configureWithWorkQueue:(id)a3 messageDispatcher:(id)a4 eventStoreReadHandle:(id)a5 eventForwarder:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [(HMDRemoteLoginHandler *)self setWorkQueue:v13];
  [(HMDRemoteLoginHandler *)self setMsgDispatcher:v12];
  [(HMDRemoteLoginHandler *)self setEventStoreReadHandle:v11];

  [(HMDRemoteLoginHandler *)self setEventForwarder:v10];
  v14 = [(HMDRemoteLoginHandler *)self initiator];
  [v14 configureWithWorkQueue:v13 messageDispatcher:v12];

  v15 = [(HMDRemoteLoginHandler *)self receiver];
  [v15 configureWithWorkQueue:v13 messageDispatcher:v12];

  v16 = [(HMDRemoteLoginHandler *)self anisetteDataHandler];
  [v16 configureWithWorkQueue:v13 messageDispatcher:v12];

  [(HMDRemoteLoginHandler *)self registerForMessages];

  [(HMDRemoteLoginHandler *)self _postAccountInfoFromAccountStore];
}

- (id)logIdentifier
{
  v2 = [(HMDRemoteLoginHandler *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (HMDRemoteLoginHandler)initWithUUID:(id)a3 accessory:(id)a4 loggedInAccount:(id)a5 accountStore:(id)a6 targetSupportsAccounts:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v28.receiver = self;
  v28.super_class = HMDRemoteLoginHandler;
  v17 = [(HMDRemoteLoginHandler *)&v28 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_accessory, v14);
    objc_storeStrong(&v18->_uuid, a3);
    objc_storeStrong(&v18->_loggedInAccount, a5);
    v19 = [objc_alloc(MEMORY[0x277D0F900]) initWithValue:0];
    stagedLoggedInAccount = v18->_stagedLoggedInAccount;
    v18->_stagedLoggedInAccount = v19;

    [(HMFStagedValue *)v18->_stagedLoggedInAccount setDelegate:v18];
    v21 = [[HMDRemoteLoginInitiator alloc] initWithUUID:v13 accessory:v14 remoteLoginHandler:v18];
    initiator = v18->_initiator;
    v18->_initiator = v21;

    v23 = [(HMDRemoteLoginBase *)[HMDRemoteLoginReceiver alloc] initWithUUID:v13 accessory:v14 remoteLoginHandler:v18];
    receiver = v18->_receiver;
    v18->_receiver = v23;

    v25 = [[HMDRemoteLoginAnisetteDataHandler alloc] initWithUUID:v13 accessory:v14];
    anisetteDataHandler = v18->_anisetteDataHandler;
    v18->_anisetteDataHandler = v25;

    objc_storeStrong(&v18->_accountStore, a6);
    v18->_targetSupportsAccounts = a7;
  }

  return v18;
}

- (HMDRemoteLoginHandler)initWithUUID:(id)a3 accessory:(id)a4 loggedInAccount:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[HMDAppleAccountManager sharedManager];
  v12 = [v11 accountStore];

  v13 = [(HMDRemoteLoginHandler *)self initWithUUID:v10 accessory:v9 loggedInAccount:v8 accountStore:v12 targetSupportsAccounts:1];
  return v13;
}

- (HMDRemoteLoginHandler)initWithAccessory:(id)a3 loggedInAccountData:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v21 = 0;
    v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v21];
    v9 = v21;
    if (v9)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v13;
        v25 = 2112;
        v26 = v9;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive logged in account from logged in account data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v14 = MEMORY[0x277CCAD78];
  v15 = [v6 uuid];
  v22 = @"HMDRemoteLoginHandler";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  v17 = [v14 hm_deriveUUIDFromBaseUUID:v15 withSalts:v16];
  v18 = [(HMDRemoteLoginHandler *)self initWithUUID:v17 accessory:v6 loggedInAccount:v8];

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (id)remoteMessages
{
  v10[16] = *MEMORY[0x277D85DE8];
  v10[0] = @"kHMDRemoteLoginCompanionAuthenticationRequest";
  v10[1] = @"kHMDRemoteLoginProxyAuthenticationRequest";
  v10[2] = @"kHMDRemoteLoginAuthenticationResponse";
  v10[3] = @"kHMDRemoteLoginProxyDeviceRequest";
  v10[4] = @"kHMDRemoteLoginProxyDeviceResponse";
  v10[5] = @"kHMDRemoteLoginSignoutRequest";
  v2 = *MEMORY[0x277CD23B0];
  v10[6] = *MEMORY[0x277CD23A8];
  v10[7] = v2;
  v3 = *MEMORY[0x277CD23C0];
  v10[8] = *MEMORY[0x277CD23B8];
  v10[9] = v3;
  v4 = *MEMORY[0x277CD2380];
  v10[10] = *MEMORY[0x277CD2378];
  v10[11] = v4;
  v5 = *MEMORY[0x277CD2390];
  v10[12] = *MEMORY[0x277CD2388];
  v10[13] = v5;
  v6 = *MEMORY[0x277CD23A0];
  v10[14] = *MEMORY[0x277CD2398];
  v10[15] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:16];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_193942 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_193942, &__block_literal_global_193943);
  }

  v3 = logCategory__hmf_once_v2_193944;

  return v3;
}

uint64_t __36__HMDRemoteLoginHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_193944;
  logCategory__hmf_once_v2_193944 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end