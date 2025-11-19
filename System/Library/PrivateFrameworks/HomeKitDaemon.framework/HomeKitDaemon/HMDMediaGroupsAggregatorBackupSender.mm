@interface HMDMediaGroupsAggregatorBackupSender
+ (id)logCategory;
- (HMDMediaGroupsAggregateBackupMessageTimerProvider)backupTimerProvider;
- (HMDMediaGroupsAggregatorBackupSender)initWithIdentifier:(id)a3 backupTimerProvider:(id)a4;
- (HMDMediaGroupsAggregatorBackupSenderDataSource)dataSource;
- (id)backupGroupsForParticipantAccessoryUUID:(id)a3;
- (id)backupTimerForParticipantAccessoryUUID:(id)a3;
- (id)logIdentifier;
- (id)mediaGroupsAggregateBackupMessageTimerWithParticipantAccessoryUUID:(id)a3;
- (id)receiverForParticipantAccessoryUUID:(id)a3;
- (id)routerParticipantAccessoryUUID:(id)a3;
- (void)_sendBackupToFirstPartyParticipantAccessoryUUID:(id)a3 backupGroups:(id)a4;
- (void)_sendBackupToParticipantAccessoryUUID:(id)a3;
- (void)clearCachedData;
- (void)clearCachedDataForParticipantAccessoryUUID:(id)a3;
- (void)createNewBackupTimerForParticipantAccessoryUUID:(id)a3;
- (void)didFireTimerForMediaGroupsAggregateBackupMessageTimer:(id)a3;
- (void)locallyRouteGroupsBackupDataMessage:(id)a3 toParticipantAccessoryUUID:(id)a4;
- (void)markAttemptForParticipantAccessoryUUID:(id)a3 withMessageIdentifier:(id)a4;
- (void)removeBackupTimerWithParticipantAccessoryUUID:(id)a3;
- (void)routeBackedUpGroupsMessage:(id)a3 toParticipantAccessoryUUID:(id)a4;
- (void)sendBackupToParticipantAccessoryUUID:(id)a3;
- (void)setBackUpTimer:(id)a3;
- (void)startBackupTimerWithParticipantAccessoryUUID:(id)a3 dueToFailedMessageIdentifier:(id)a4;
@end

@implementation HMDMediaGroupsAggregatorBackupSender

- (HMDMediaGroupsAggregateBackupMessageTimerProvider)backupTimerProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_backupTimerProvider);

  return WeakRetained;
}

- (HMDMediaGroupsAggregatorBackupSenderDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDMediaGroupsAggregatorBackupSender *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)mediaGroupsAggregateBackupMessageTimerWithParticipantAccessoryUUID:(id)a3
{
  v3 = a3;
  v4 = [[HMDMediaGroupsAggregateBackupMessageTimer alloc] initWithParticipantAccessoryUUID:v3];

  return v4;
}

- (void)didFireTimerForMediaGroupsAggregateBackupMessageTimer:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 participantAccessoryUUID];
  v6 = [(HMDMediaGroupsAggregatorBackupSender *)self backupTimerForParticipantAccessoryUUID:v5];

  if (v6 && v6 == v4)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 participantAccessoryUUID];
      v14 = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Backup timer fired for participant accessory uuid: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [v4 participantAccessoryUUID];
    [(HMDMediaGroupsAggregatorBackupSender *)v8 _sendBackupToParticipantAccessoryUUID:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)markAttemptForParticipantAccessoryUUID:(id)a3 withMessageIdentifier:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDMediaGroupsAggregatorBackupSender *)self backupTimerForParticipantAccessoryUUID:v6];
  v9 = v8;
  if (v8)
  {
    [v8 markAttemptWithMessageIdentifier:v7];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to mark backup timer attempt due to no timer for accessory UUID: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)startBackupTimerWithParticipantAccessoryUUID:(id)a3 dueToFailedMessageIdentifier:(id)a4
{
  v6 = a4;
  v8 = [(HMDMediaGroupsAggregatorBackupSender *)self backupTimerForParticipantAccessoryUUID:a3];
  v7 = [v8 currentMessageIdentifier];
  LODWORD(self) = [v7 hmf_isEqualToUUID:v6];

  if (self)
  {
    [v8 startRetryTimer];
  }
}

- (void)removeBackupTimerWithParticipantAccessoryUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_backupTimers removeObjectForKey:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)backupTimerForParticipantAccessoryUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_backupTimers objectForKey:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)setBackUpTimer:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  backupTimers = self->_backupTimers;
  v5 = [v6 participantAccessoryUUID];
  [(NSMutableDictionary *)backupTimers setObject:v6 forKey:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)createNewBackupTimerForParticipantAccessoryUUID:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaGroupsAggregatorBackupSender *)self backupTimerProvider];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mediaGroupsAggregateBackupMessageTimerWithParticipantAccessoryUUID:v4];
    [v7 setDelegate:self];
    [(HMDMediaGroupsAggregatorBackupSender *)self setBackUpTimer:v7];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to create new backup timer due to no provider", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)receiverForParticipantAccessoryUUID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaGroupsAggregatorBackupSender *)self dataSource];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 receiverForParticipantAccessoryUUID:v4 mediaGroupsAggregatorBackupSender:self];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get receiver for participant accessory uuid: %@ due to no data source", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)routerParticipantAccessoryUUID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaGroupsAggregatorBackupSender *)self dataSource];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 routerForParticipantAccessoryUUID:v4 mediaGroupsAggregatorBackupSender:self];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get router for participant accessory uuid: %@ due to no data source", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)backupGroupsForParticipantAccessoryUUID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaGroupsAggregatorBackupSender *)self dataSource];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 backupGroupsForParticipantAccessoryUUID:v4 mediaGroupsAggregatorBackupSender:self];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get backup groups for participant accessory uuid: %@ due to no data source", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)locallyRouteGroupsBackupDataMessage:(id)a3 toParticipantAccessoryUUID:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDMediaGroupsAggregatorBackupSender *)self receiverForParticipantAccessoryUUID:v7];
  v9 = v8;
  if (v8)
  {
    [v8 handleGroupsBackupDataMessage:v6];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to locally route due to no receiver for groups backup data message: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
    [v6 respondWithError:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)routeBackedUpGroupsMessage:(id)a3 toParticipantAccessoryUUID:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v6 name];
    v13 = [v6 identifier];
    *buf = 138543874;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    v27 = 2112;
    v28 = v13;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Routing message: %@(%@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v14 = [(HMDMediaGroupsAggregatorBackupSender *)v9 routerParticipantAccessoryUUID:v7];
  if (v14)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __94__HMDMediaGroupsAggregatorBackupSender_routeBackedUpGroupsMessage_toParticipantAccessoryUUID___block_invoke;
    v21[3] = &unk_2786858B0;
    v21[4] = v9;
    v22 = v7;
    [v14 routeMessage:v6 localHandler:v21];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v9;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v18;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to route backup group data due to no router found for participant accessory UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
    [v6 respondWithError:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)clearCachedDataForParticipantAccessoryUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_backupTimers removeObjectForKey:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)clearCachedData
{
  os_unfair_lock_lock_with_options();
  v3 = [MEMORY[0x277CBEB38] dictionary];
  backupTimers = self->_backupTimers;
  self->_backupTimers = v3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_sendBackupToFirstPartyParticipantAccessoryUUID:(id)a3 backupGroups:(id)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v28 = @"HMDMediaGroupsBackupDataKey";
  v29[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v9 = objc_alloc(MEMORY[0x277D0F820]);
  v10 = [(HMDMediaGroupsAggregatorBackupSender *)self identifier];
  v11 = [v9 initWithTarget:v10];

  v12 = [objc_alloc(MEMORY[0x277D0F848]) initWithName:@"HMDMediaGroupsBackupDataMessage" destination:v11 payload:v8];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__17315;
  v26 = __Block_byref_object_dispose__17316;
  v27 = [v12 identifier];
  [(HMDMediaGroupsAggregatorBackupSender *)self markAttemptForParticipantAccessoryUUID:v6 withMessageIdentifier:v23[5]];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __101__HMDMediaGroupsAggregatorBackupSender__sendBackupToFirstPartyParticipantAccessoryUUID_backupGroups___block_invoke;
  v18 = &unk_278670C30;
  v19 = self;
  v13 = v6;
  v20 = v13;
  v21 = &v22;
  [v12 setResponseHandler:&v15];
  [(HMDMediaGroupsAggregatorBackupSender *)self routeBackedUpGroupsMessage:v12 toParticipantAccessoryUUID:v13, v15, v16, v17, v18, v19];

  _Block_object_dispose(&v22, 8);
  v14 = *MEMORY[0x277D85DE8];
}

void __101__HMDMediaGroupsAggregatorBackupSender__sendBackupToFirstPartyParticipantAccessoryUUID_backupGroups___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
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
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Groups backup data message responded with error: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) startBackupTimerWithParticipantAccessoryUUID:*(a1 + 40) dueToFailedMessageIdentifier:*(*(*(a1 + 48) + 8) + 40)];
  }

  else
  {
    [*(a1 + 32) removeBackupTimerWithParticipantAccessoryUUID:*(a1 + 40)];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_sendBackupToParticipantAccessoryUUID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending backup group data message to participant accessory uuid: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMediaGroupsAggregatorBackupSender *)v6 backupGroupsForParticipantAccessoryUUID:v4];
  if (v9)
  {
    [(HMDMediaGroupsAggregatorBackupSender *)v6 _sendBackupToFirstPartyParticipantAccessoryUUID:v4 backupGroups:v9];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v6;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to get backup groups to send for participant accessory uuid: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [(HMDMediaGroupsAggregatorBackupSender *)v11 removeBackupTimerWithParticipantAccessoryUUID:v4];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)sendBackupToParticipantAccessoryUUID:(id)a3
{
  v4 = a3;
  [(HMDMediaGroupsAggregatorBackupSender *)self createNewBackupTimerForParticipantAccessoryUUID:v4];
  [(HMDMediaGroupsAggregatorBackupSender *)self _sendBackupToParticipantAccessoryUUID:v4];
}

- (HMDMediaGroupsAggregatorBackupSender)initWithIdentifier:(id)a3 backupTimerProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v8;
  if (!v8)
  {
LABEL_7:
    v15 = _HMFPreconditionFailure();
    return [(HMDMediaGroupsAggregatorBackupSender *)v15 initWithIdentifier:v16, v17];
  }

  v18.receiver = self;
  v18.super_class = HMDMediaGroupsAggregatorBackupSender;
  v10 = [(HMDMediaGroupsAggregatorBackupSender *)&v18 init];
  v11 = v10;
  if (v10)
  {
    v10->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v10->_identifier, a3);
    v12 = [MEMORY[0x277CBEB38] dictionary];
    backupTimers = v11->_backupTimers;
    v11->_backupTimers = v12;

    objc_storeWeak(&v11->_backupTimerProvider, v9);
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t17_17333 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t17_17333, &__block_literal_global_17334);
  }

  v3 = logCategory__hmf_once_v18_17335;

  return v3;
}

void __51__HMDMediaGroupsAggregatorBackupSender_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v18_17335;
  logCategory__hmf_once_v18_17335 = v1;
}

@end