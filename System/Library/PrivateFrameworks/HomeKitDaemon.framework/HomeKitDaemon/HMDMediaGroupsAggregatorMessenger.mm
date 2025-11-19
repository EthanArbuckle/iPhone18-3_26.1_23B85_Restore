@interface HMDMediaGroupsAggregatorMessenger
+ (id)logCategory;
- (HMDMediaGroupsAggregatorMessenger)init;
- (HMDMediaGroupsAggregatorMessengerDataSource)dataSource;
- (HMDMediaGroupsAggregatorMessengerDelegate)delegate;
- (id)logIdentifier;
- (id)router;
- (void)configureWithMessageDispatcher:(id)a3 home:(id)a4;
- (void)locallyHandleUpdateAssociatedGroupIdentifierRequestMessage:(id)a3;
- (void)notifyOfRequestToUpdateAssociatedGroupIdentifierWithPayload:(id)a3 message:(id)a4;
- (void)registerForMessagesWithMessageDispatcher:(id)a3 home:(id)a4;
- (void)routeMessage:(id)a3 localHandler:(id)a4;
- (void)routeUpdateAssociatedGroupIdentifierRequestMessage:(id)a3;
- (void)sendRequestToUpdateAssociatedGroupIdentifier:(id)a3 forGroupIdentifier:(id)a4 completion:(id)a5;
@end

@implementation HMDMediaGroupsAggregatorMessenger

- (HMDMediaGroupsAggregatorMessengerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDMediaGroupsAggregatorMessengerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDMediaGroupsAggregatorMessenger *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)router
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaGroupsAggregatorMessenger *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 routerForMediaGroupsAggregatorMessenger:self];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to get router due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)notifyOfRequestToUpdateAssociatedGroupIdentifierWithPayload:(id)a3 message:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(HMDMediaGroupsAggregatorMessenger *)self delegate];
  if (v7)
  {
    v8 = [v10 groupIdentifier];
    v9 = [v10 associatedGroupIdentifier];
    [v7 didReceiveUpdateAssociatedGroupRequestMessage:v6 withGroupIdentifier:v8 associatedGroupIdentifier:v9 messenger:self];
  }
}

- (void)locallyHandleUpdateAssociatedGroupIdentifierRequestMessage:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    v10 = [v4 identifier];
    v24 = 138543874;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Locally handling update associated group identifier request message: %@/%@", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v11 = [v4 messagePayload];
  if (v11)
  {
    v12 = [[HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload alloc] initWithPayload:v11];
    if (v12)
    {
      v13 = v12;
      [(HMDMediaGroupsAggregatorMessenger *)v6 notifyOfRequestToUpdateAssociatedGroupIdentifierWithPayload:v12 message:v4];
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = v6;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v21;
        v26 = 2112;
        v27 = v4;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse message payload from message: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [v4 respondWithError:v22];

      v13 = 0;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v6;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v17;
      v26 = 2112;
      v27 = v4;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to get a message payload from message: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v4 respondWithError:v13];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)routeUpdateAssociatedGroupIdentifierRequestMessage:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    v10 = [v4 identifier];
    *buf = 138543874;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Routing update associated group identifier request message: %@/%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__HMDMediaGroupsAggregatorMessenger_routeUpdateAssociatedGroupIdentifierRequestMessage___block_invoke;
  v12[3] = &unk_27868A398;
  v12[4] = v6;
  [(HMDMediaGroupsAggregatorMessenger *)v6 routeMessage:v4 localHandler:v12];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)routeMessage:(id)a3 localHandler:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDMediaGroupsAggregatorMessenger *)self router];
  v9 = v8;
  if (v8)
  {
    [v8 routeMessage:v6 localHandler:v7];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v6 name];
      v15 = [v6 identifier];
      v18 = 138543874;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to route message: %@/%@ due to no router", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
    [v6 respondWithError:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)sendRequestToUpdateAssociatedGroupIdentifier:(id)a3 forGroupIdentifier:(id)a4 completion:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v36 = v14;
    v37 = 2112;
    v38 = v8;
    v39 = 2112;
    v40 = v9;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Sending request to update associated group identifier: %@ for group identifier: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [[HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload alloc] initWithGroupIdentifier:v9 associatedGroupIdentifier:v8];
  v16 = objc_alloc(MEMORY[0x277D0F848]);
  v17 = +[HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload messageName];
  v18 = objc_alloc(MEMORY[0x277D0F820]);
  v19 = [(HMDMediaGroupsAggregatorMessenger *)v12 messageTargetUUID];
  v20 = [v18 initWithTarget:v19];
  v21 = [(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)v15 payloadCopy];
  v22 = [v16 initWithName:v17 destination:v20 payload:v21];

  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __112__HMDMediaGroupsAggregatorMessenger_sendRequestToUpdateAssociatedGroupIdentifier_forGroupIdentifier_completion___block_invoke;
  v30 = &unk_27868A370;
  v31 = v12;
  v32 = v8;
  v33 = v9;
  v34 = v10;
  v23 = v10;
  v24 = v9;
  v25 = v8;
  [v22 setResponseHandler:&v27];
  [(HMDMediaGroupsAggregatorMessenger *)v12 routeUpdateAssociatedGroupIdentifierRequestMessage:v22, v27, v28, v29, v30, v31];

  v26 = *MEMORY[0x277D85DE8];
}

void __112__HMDMediaGroupsAggregatorMessenger_sendRequestToUpdateAssociatedGroupIdentifier_forGroupIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v14 = 138544130;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Send request to update associated group identifier: %@ for group identifier: %@ responded with error: %@", &v14, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
  }

  (*(*(a1 + 56) + 16))();

  v13 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessagesWithMessageDispatcher:(id)a3 home:(id)a4
{
  v14[3] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v9 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v10 = [HMDUserMessagePolicy userMessagePolicyWithHome:v6 userPrivilege:3 remoteAccessRequired:0];

  v11 = +[HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload messageName];
  v14[0] = v8;
  v14[1] = v9;
  v14[2] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  [v7 registerForMessage:v11 receiver:self policies:v12 selector:sel_routeUpdateAssociatedGroupIdentifierRequestMessage_];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)configureWithMessageDispatcher:(id)a3 home:(id)a4
{
  v6 = a4;
  v8 = a3;
  v7 = [v6 uuid];
  [(HMDMediaGroupsAggregatorMessenger *)self setIdentifier:v7];

  [(HMDMediaGroupsAggregatorMessenger *)self registerForMessagesWithMessageDispatcher:v8 home:v6];
}

- (HMDMediaGroupsAggregatorMessenger)init
{
  v6.receiver = self;
  v6.super_class = HMDMediaGroupsAggregatorMessenger;
  v2 = [(HMDMediaGroupsAggregatorMessenger *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    identifier = v2->_identifier;
    v2->_identifier = v3;
  }

  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_285156 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_285156, &__block_literal_global_285157);
  }

  v3 = logCategory__hmf_once_v9_285158;

  return v3;
}

void __48__HMDMediaGroupsAggregatorMessenger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_285158;
  logCategory__hmf_once_v9_285158 = v1;
}

@end