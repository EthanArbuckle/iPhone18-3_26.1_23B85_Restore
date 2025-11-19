@interface HMDAppleMediaAccessoryMessageHandler
- (HMDAppleMediaAccessoryMessageHandler)initWithMessageTargetUUID:(id)a3 messageDispatcher:(id)a4 notificationCenter:(id)a5 ownerPrivateRemoteMessages:(id)a6 adminPrivateRemoteMessages:(id)a7 internalMessages:(id)a8 notifications:(id)a9 notificationsToObject:(id)a10;
- (void)handleAppleMediaAccessoryDeviceIsReachableNotification:(id)a3;
- (void)handleAppleMediaAccessoryDeviceUpdatedNotification:(id)a3;
@end

@implementation HMDAppleMediaAccessoryMessageHandler

- (void)handleAppleMediaAccessoryDeviceIsReachableNotification:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    if ([(HMDMessageHandler *)self hasQueuedOutgoingMessagesForDevice:v7])
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v18 = 138543618;
        v19 = v11;
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling remote device is reachable notification with device: %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      [(HMDMessageHandler *)v9 sendQueuedOutgoingMessagesForDevice:v7];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v4 object];
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to get device from remote device is reachable notification object: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleAppleMediaAccessoryDeviceUpdatedNotification:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDMessageHandler *)self hasQueuedOutgoingMessages])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling apple media accessory device updated notification: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDMessageHandler *)v6 sendQueuedOutgoingMessages];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (HMDAppleMediaAccessoryMessageHandler)initWithMessageTargetUUID:(id)a3 messageDispatcher:(id)a4 notificationCenter:(id)a5 ownerPrivateRemoteMessages:(id)a6 adminPrivateRemoteMessages:(id)a7 internalMessages:(id)a8 notifications:(id)a9 notificationsToObject:(id)a10
{
  v40[2] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  if (!v16)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v17)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!v18)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!v19)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!v20)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!v21)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!v22)
  {
LABEL_16:
    _HMFPreconditionFailure();
LABEL_17:
    _HMFPreconditionFailure();
  }

  v24 = v23;
  if (!v23)
  {
    goto LABEL_17;
  }

  v25 = [v22 mutableCopy];
  v38 = v22;
  v26 = v21;
  v27 = v20;
  v28 = v19;
  v29 = v18;
  v30 = v17;
  v31 = v16;
  v32 = self;
  v33 = v25;
  v40[0] = @"HMDAppleMediaAccessoryDeviceUpdatedNotification";
  v40[1] = @"HMDAppleMediaAccessoryDeviceIsReachableNotification";
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
  [v33 addObjectsFromArray:v34];

  v39.receiver = v32;
  v39.super_class = HMDAppleMediaAccessoryMessageHandler;
  v35 = [(HMDMessageHandler *)&v39 initWithMessageTargetUUID:v31 messageDispatcher:v30 notificationCenter:v29 ownerPrivateRemoteMessages:v28 adminPrivateRemoteMessages:v27 internalMessages:v26 notifications:v33 notificationsToObject:v24];

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

@end