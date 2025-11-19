@interface HMDMediaGroupsAggregatorBackupReceiver
+ (id)logCategory;
- (HMDMediaGroupsAggregatorBackupReceiver)init;
- (HMDMediaGroupsAggregatorBackupReceiverDelegate)delegate;
- (id)logIdentifier;
- (void)configureWithHome:(id)a3 messageDispatcher:(id)a4;
- (void)handleGroupsBackupDataMessage:(id)a3;
- (void)registerForMessagesWithHome:(id)a3 messageDispatcher:(id)a4;
@end

@implementation HMDMediaGroupsAggregatorBackupReceiver

- (HMDMediaGroupsAggregatorBackupReceiverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDMediaGroupsAggregatorBackupReceiver *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)handleGroupsBackupDataMessage:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v28 = 138543618;
    v29 = v8;
    v30 = 2112;
    v31 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling backup group data message: %@", &v28, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 messagePayload];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 hmf_arrayForKey:@"HMDMediaGroupsBackupDataKey"];
    if (v11)
    {
      v12 = [(HMDMediaGroupsAggregatorBackupReceiver *)v6 delegate];
      if (v12)
      {
        v13 = v12;
        [v12 didReceiveBackupData:v11 forBackupReceiver:v6];
        [v4 respondWithSuccess];
      }

      else
      {
        v22 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
        v23 = objc_autoreleasePoolPush();
        v24 = v6;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          v28 = 138543618;
          v29 = v26;
          v30 = 2112;
          v31 = v22;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify delegate of received backup due to unconfigured delegate error: %@", &v28, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
        [v4 respondWithError:v22];

        v13 = 0;
      }
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
      v18 = objc_autoreleasePoolPush();
      v19 = v6;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v28 = 138543874;
        v29 = v21;
        v30 = 2112;
        v31 = v10;
        v32 = 2112;
        v33 = v13;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Failed to decode group backup data payload: %@ error: %@", &v28, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      [v4 respondWithError:v13];
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    v14 = objc_autoreleasePoolPush();
    v15 = v6;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v28 = 138543874;
      v29 = v17;
      v30 = 2112;
      v31 = v4;
      v32 = 2112;
      v33 = v11;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to get message payload from group backup data message: %@ error: %@", &v28, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    [v4 respondWithError:v11];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessagesWithHome:(id)a3 messageDispatcher:(id)a4
{
  v13[3] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v9 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v10 = [HMDUserMessagePolicy userMessagePolicyWithHome:v7 userPrivilege:3 remoteAccessRequired:0];

  v13[0] = v8;
  v13[1] = v9;
  v13[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  [v6 registerForMessage:@"HMDMediaGroupsBackupDataMessage" receiver:self policies:v11 selector:sel_handleGroupsBackupDataMessage_];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)configureWithHome:(id)a3 messageDispatcher:(id)a4
{
  v6 = a4;
  v8 = a3;
  v7 = [v8 uuid];
  [(HMDMediaGroupsAggregatorBackupReceiver *)self setIdentifier:v7];

  [(HMDMediaGroupsAggregatorBackupReceiver *)self registerForMessagesWithHome:v8 messageDispatcher:v6];
}

- (HMDMediaGroupsAggregatorBackupReceiver)init
{
  v6.receiver = self;
  v6.super_class = HMDMediaGroupsAggregatorBackupReceiver;
  v2 = [(HMDMediaGroupsAggregatorBackupReceiver *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
    identifier = v2->_identifier;
    v2->_identifier = v3;
  }

  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_6028 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_6028, &__block_literal_global_6029);
  }

  v3 = logCategory__hmf_once_v5_6030;

  return v3;
}

void __53__HMDMediaGroupsAggregatorBackupReceiver_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_6030;
  logCategory__hmf_once_v5_6030 = v1;
}

@end