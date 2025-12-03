@interface HMDAppleMediaAccessoryMessageHandler
- (HMDAppleMediaAccessoryMessageHandler)initWithMessageTargetUUID:(id)d messageDispatcher:(id)dispatcher notificationCenter:(id)center ownerPrivateRemoteMessages:(id)messages adminPrivateRemoteMessages:(id)remoteMessages internalMessages:(id)internalMessages notifications:(id)notifications notificationsToObject:(id)self0;
- (void)handleAppleMediaAccessoryDeviceIsReachableNotification:(id)notification;
- (void)handleAppleMediaAccessoryDeviceUpdatedNotification:(id)notification;
@end

@implementation HMDAppleMediaAccessoryMessageHandler

- (void)handleAppleMediaAccessoryDeviceIsReachableNotification:(id)notification
{
  v22 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
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
      selfCopy = self;
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
      [(HMDMessageHandler *)selfCopy sendQueuedOutgoingMessagesForDevice:v7];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      object2 = [notificationCopy object];
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = object2;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to get device from remote device is reachable notification object: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleAppleMediaAccessoryDeviceUpdatedNotification:(id)notification
{
  v14 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if ([(HMDMessageHandler *)self hasQueuedOutgoingMessages])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = notificationCopy;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling apple media accessory device updated notification: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDMessageHandler *)selfCopy sendQueuedOutgoingMessages];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (HMDAppleMediaAccessoryMessageHandler)initWithMessageTargetUUID:(id)d messageDispatcher:(id)dispatcher notificationCenter:(id)center ownerPrivateRemoteMessages:(id)messages adminPrivateRemoteMessages:(id)remoteMessages internalMessages:(id)internalMessages notifications:(id)notifications notificationsToObject:(id)self0
{
  v40[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatcherCopy = dispatcher;
  centerCopy = center;
  messagesCopy = messages;
  remoteMessagesCopy = remoteMessages;
  internalMessagesCopy = internalMessages;
  notificationsCopy = notifications;
  objectCopy = object;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!dispatcherCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!centerCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!messagesCopy)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!remoteMessagesCopy)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!internalMessagesCopy)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!notificationsCopy)
  {
LABEL_16:
    _HMFPreconditionFailure();
LABEL_17:
    _HMFPreconditionFailure();
  }

  v24 = objectCopy;
  if (!objectCopy)
  {
    goto LABEL_17;
  }

  v25 = [notificationsCopy mutableCopy];
  v38 = notificationsCopy;
  v26 = internalMessagesCopy;
  v27 = remoteMessagesCopy;
  v28 = messagesCopy;
  v29 = centerCopy;
  v30 = dispatcherCopy;
  v31 = dCopy;
  selfCopy = self;
  v33 = v25;
  v40[0] = @"HMDAppleMediaAccessoryDeviceUpdatedNotification";
  v40[1] = @"HMDAppleMediaAccessoryDeviceIsReachableNotification";
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
  [v33 addObjectsFromArray:v34];

  v39.receiver = selfCopy;
  v39.super_class = HMDAppleMediaAccessoryMessageHandler;
  v35 = [(HMDMessageHandler *)&v39 initWithMessageTargetUUID:v31 messageDispatcher:v30 notificationCenter:v29 ownerPrivateRemoteMessages:v28 adminPrivateRemoteMessages:v27 internalMessages:v26 notifications:v33 notificationsToObject:v24];

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

@end