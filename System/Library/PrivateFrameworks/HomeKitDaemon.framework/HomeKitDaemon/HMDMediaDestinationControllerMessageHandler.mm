@interface HMDMediaDestinationControllerMessageHandler
+ (id)logCategory;
- (HMDMediaDestinationControllerMessageHandler)initWithMessageTargetUUID:(id)d messageDispatcher:(id)dispatcher notificationCenter:(id)center metricsEventDispatcher:(id)eventDispatcher targetDevice:(BOOL)device dataSource:(id)source delegate:(id)delegate;
- (HMDMediaDestinationControllerMessageHandlerDataSource)dataSource;
- (HMDMediaDestinationControllerMessageHandlerDelegate)delegate;
- (id)destinationIdentifierInMessage:(id)message error:(id *)error;
- (id)logIdentifier;
- (unint64_t)upateOptionsInMessage:(id)message error:(id *)error;
- (void)handleHomeAccessoryRemovedNotification:(id)notification;
- (void)handleMediaDestinationControllerUpdateDestinationRequestMessage:(id)message;
- (void)handleMediaDestinationControllerUpdatedDestinationNotification:(id)notification;
- (void)handleMediaDestinationUpdatedNotification:(id)notification;
- (void)handleMediaGroupsAggregateConsumerUpdatedAggregateDataNotification:(id)notification;
- (void)handleMediaSystemAddedNotification:(id)notification;
- (void)handleMediaSystemRemovedNotification:(id)notification;
- (void)handleNotificationAccessoryChangedRoom:(id)room;
- (void)notifyUpdatedDestinationWithIdentifier:(id)identifier;
- (void)sendRequestToUpdateDestinationIdentifier:(id)identifier options:(unint64_t)options completion:(id)completion;
@end

@implementation HMDMediaDestinationControllerMessageHandler

- (HMDMediaDestinationControllerMessageHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDMediaDestinationControllerMessageHandlerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)logIdentifier
{
  messageTargetUUID = [(HMDMessageHandler *)self messageTargetUUID];
  uUIDString = [messageTargetUUID UUIDString];

  return uUIDString;
}

- (void)handleMediaGroupsAggregateConsumerUpdatedAggregateDataNotification:(id)notification
{
  v18 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling media groups aggregate consumer updated aggregate data notification", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  delegate = [(HMDMediaDestinationControllerMessageHandler *)selfCopy delegate];
  v10 = delegate;
  if (delegate)
  {
    [delegate mediaDestinationControllerMessageHandler:selfCopy didReceiveMediaGroupsAggregateConsumerUpdatedAggregateDataNotification:notificationCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of media groups aggregate consumer updated aggregate data notification due to no delegate", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleMediaDestinationControllerUpdatedDestinationNotification:(id)notification
{
  v43 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v39 = 138543618;
    v40 = v8;
    v41 = 2112;
    v42 = notificationCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling media destination controller updated destination notification: %@", &v39, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  userInfo = [notificationCopy userInfo];
  v10 = userInfo;
  if (userInfo)
  {
    v11 = [userInfo hmf_UUIDForKey:@"HMDMediaDestinationControllerIdentifierNotificationKey"];
    if (!v11)
    {
      v28 = objc_autoreleasePoolPush();
      v29 = selfCopy;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v39 = 138543618;
        v40 = v31;
        v41 = 2112;
        v42 = v10;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to get media destination controller identifier from media destination controller updated destination notification user info: %@", &v39, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      goto LABEL_26;
    }

    v12 = [v10 hmf_UUIDForKey:@"HMDMediaDestinationIdentifierNotificationKey"];
    v13 = v12;
    if (v12)
    {
      uUIDString = [v12 UUIDString];
      v15 = [uUIDString isEqualToString:*MEMORY[0x277CD0860]];

      if (!v15)
      {
        delegate = [(HMDMediaDestinationControllerMessageHandler *)selfCopy delegate];
        v33 = delegate;
        if (delegate)
        {
          [delegate mediaDestinationControllerMessageHandler:selfCopy didReceiveMediaDestinationControllerUpdatedDestinationNotification:notificationCopy destinationControllerIdentifier:v11 destinationIdentifier:v13];
        }

        else
        {
          v34 = objc_autoreleasePoolPush();
          v35 = selfCopy;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = HMFGetLogIdentifier();
            v39 = 138543362;
            v40 = v37;
            _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of media destination controller updated destination notification due to no delegate", &v39, 0xCu);
          }

          objc_autoreleasePoolPop(v34);
        }

        goto LABEL_25;
      }

      v16 = objc_autoreleasePoolPush();
      v17 = selfCopy;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v39 = 138543362;
        v40 = v19;
        v20 = "%{public}@Skipping media destination controller updated destination notification due to null destination";
        v21 = v18;
        v22 = OS_LOG_TYPE_INFO;
        v23 = 12;
LABEL_17:
        _os_log_impl(&dword_229538000, v21, v22, v20, &v39, v23);
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = selfCopy;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v39 = 138543618;
        v40 = v19;
        v41 = 2112;
        v42 = v10;
        v20 = "%{public}@Failed to get media destination identifier from media destination controller updated destination notification user info: %@";
        v21 = v18;
        v22 = OS_LOG_TYPE_ERROR;
        v23 = 22;
        goto LABEL_17;
      }
    }

    objc_autoreleasePoolPop(v16);
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  v24 = objc_autoreleasePoolPush();
  v25 = selfCopy;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    v39 = 138543618;
    v40 = v27;
    v41 = 2112;
    v42 = notificationCopy;
    _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to get user info in media destination controller updated destination notification: %@", &v39, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
LABEL_27:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)handleNotificationAccessoryChangedRoom:(id)room
{
  v33 = *MEMORY[0x277D85DE8];
  roomCopy = room;
  object = [roomCopy object];
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
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v29 = 138543618;
      v30 = v11;
      v31 = 2112;
      v32 = roomCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling accessory changed room notification: %@", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    audioDestination = [v7 audioDestination];
    audioDestinationController = [v7 audioDestinationController];
    v14 = audioDestinationController;
    if (audioDestination || ([audioDestinationController identifier], v15 = objc_claimAutoreleasedReturnValue(), -[HMDMessageHandler messageTargetUUID](selfCopy, "messageTargetUUID"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "hmf_isEqualToUUID:", v16), v16, v15, (v17 & 1) != 0))
    {
      delegate = [(HMDMediaDestinationControllerMessageHandler *)selfCopy delegate];
      v19 = delegate;
      if (delegate)
      {
        [delegate mediaDestinationControllerMessageHandler:selfCopy didReceiveAccessoryChangedRoomNotification:roomCopy];
      }

      else
      {
        v20 = objc_autoreleasePoolPush();
        v21 = selfCopy;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          v29 = 138543362;
          v30 = v23;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of accessory changed rooms notification due to no delegate", &v29, 0xCu);
        }

        objc_autoreleasePoolPop(v20);
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = selfCopy;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v29 = 138543362;
        v30 = v28;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Skipping accessory changed room notification due to no destination and no related destination controller", &v29, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)handleMediaSystemRemovedNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = notificationCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling media system removed notification: %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  delegate = [(HMDMediaDestinationControllerMessageHandler *)selfCopy delegate];
  v10 = delegate;
  if (delegate)
  {
    [delegate mediaDestinationControllerMessageHandler:selfCopy didReceiveMediaSystemRemovedNotification:notificationCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of media system removed notification due to no delegate", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleMediaSystemAddedNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = notificationCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling media system added notification: %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  delegate = [(HMDMediaDestinationControllerMessageHandler *)selfCopy delegate];
  v10 = delegate;
  if (delegate)
  {
    [delegate mediaDestinationControllerMessageHandler:selfCopy didReceiveMediaSystemAddedNotification:notificationCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of media system added notification due to no delegate", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeAccessoryRemovedNotification:(id)notification
{
  v28 = *MEMORY[0x277D85DE8];
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
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v11;
      v26 = 2112;
      v27 = notificationCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling home accessory removed notification: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    audioDestination = [v7 audioDestination];
    if (audioDestination)
    {
      delegate = [(HMDMediaDestinationControllerMessageHandler *)selfCopy delegate];
      v14 = delegate;
      if (delegate)
      {
        [delegate mediaDestinationControllerMessageHandler:selfCopy didReceiveHomeAccessoryRemovedNotification:notificationCopy destination:audioDestination];
      }

      else
      {
        v19 = objc_autoreleasePoolPush();
        v20 = selfCopy;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          v24 = 138543362;
          v25 = v22;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of accessory removed notification due to no delegate", &v24, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = selfCopy;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v24 = 138543362;
        v25 = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Skipping home accessory removed notification due to no destination", &v24, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleMediaDestinationUpdatedNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = notificationCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling media destination updated notification: %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  delegate = [(HMDMediaDestinationControllerMessageHandler *)selfCopy delegate];
  v10 = delegate;
  if (delegate)
  {
    [delegate mediaDestinationControllerMessageHandler:selfCopy didReceiveMediaDestinationUpdatedNotification:notificationCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of media destination updated notification due to no delegate", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleMediaDestinationControllerUpdateDestinationRequestMessage:(id)message
{
  v42 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v37 = v8;
    v38 = 2112;
    v39 = messageCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update destination request message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  responseHandler = [messageCopy responseHandler];

  if (responseHandler)
  {
    v35 = 0;
    v10 = [(HMDMediaDestinationControllerMessageHandler *)selfCopy destinationIdentifierInMessage:messageCopy error:&v35];
    v11 = v35;
    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = selfCopy;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543874;
        v37 = v15;
        v38 = 2112;
        v39 = messageCopy;
        v40 = 2112;
        v41 = v11;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to get destination identifier from update destination message: %@ error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      [messageCopy respondWithError:v11];
    }

    v34 = v11;
    v16 = [(HMDMediaDestinationControllerMessageHandler *)selfCopy upateOptionsInMessage:messageCopy error:&v34];
    v17 = v34;

    if (v17)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = selfCopy;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543874;
        v37 = v21;
        v38 = 2112;
        v39 = messageCopy;
        v40 = 2112;
        v41 = v17;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to get update options from update destination message: %@ error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      [messageCopy respondWithError:v17];
    }

    delegate = [(HMDMediaDestinationControllerMessageHandler *)selfCopy delegate];
    v23 = delegate;
    if (delegate)
    {
      [delegate mediaDestinationControllerMessageHandler:selfCopy didReceiveMediaDestinationControllerUpdateDestinationRequestMessage:messageCopy destinationIdentifier:v10 updateOptions:v16];
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = selfCopy;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543362;
        v37 = v31;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of update destination request message due to no delegate", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v28);
      v32 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      [messageCopy respondWithError:v32];
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v27;
      v38 = 2112;
      v39 = messageCopy;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to get response handler from update destination request message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [messageCopy respondWithError:v17];
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (unint64_t)upateOptionsInMessage:(id)message error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  messagePayload = [messageCopy messagePayload];
  v8 = messagePayload;
  if (messagePayload)
  {
    v9 = [messagePayload hmf_numberForKey:*MEMORY[0x277CD0848]];
    v10 = v9;
    if (v9)
    {
      unsignedIntegerValue = [v9 unsignedIntegerValue];
      if (unsignedIntegerValue < 4)
      {
LABEL_18:

        goto LABEL_19;
      }

      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v16 = HMMediaDestinationControllerUpateOptionsAsString();
        v28 = 138543618;
        v29 = v15;
        v30 = 2112;
        v31 = v16;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to perform update due to unknown update options: %@", &v28, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      if (error)
      {
        v17 = 3;
LABEL_16:
        [MEMORY[0x277CCA9B8] hmErrorWithCode:v17];
        *error = unsignedIntegerValue = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v28 = 138543618;
        v29 = v25;
        v30 = 2112;
        v31 = messageCopy;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to get update options from message: %@", &v28, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      if (error)
      {
        v17 = 20;
        goto LABEL_16;
      }
    }

    unsignedIntegerValue = 0;
    goto LABEL_18;
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    v28 = 138543618;
    v29 = v21;
    v30 = 2112;
    v31 = messageCopy;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to get payload from message: %@", &v28, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  if (error)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *error = unsignedIntegerValue = 0;
  }

  else
  {
    unsignedIntegerValue = 0;
  }

LABEL_19:

  v26 = *MEMORY[0x277D85DE8];
  return unsignedIntegerValue;
}

- (id)destinationIdentifierInMessage:(id)message error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  messagePayload = [messageCopy messagePayload];
  v8 = messagePayload;
  if (messagePayload)
  {
    v9 = [messagePayload hmf_stringForKey:*MEMORY[0x277CD0858]];
    v10 = v9;
    if (v9)
    {
      if (([v9 isEqualToString:*MEMORY[0x277CD0860]] & 1) == 0)
      {
        v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v10];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v22 = objc_autoreleasePoolPush();
          selfCopy = self;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = HMFGetLogIdentifier();
            v28 = 138543874;
            v29 = v25;
            v30 = 2112;
            v31 = v10;
            v32 = 2112;
            v33 = messageCopy;
            _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse destination identifier: %@ message: %@", &v28, 0x20u);
          }

          objc_autoreleasePoolPop(v22);
          if (error)
          {
            *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
          }
        }

        goto LABEL_21;
      }
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v28 = 138543618;
        v29 = v21;
        v30 = 2112;
        v31 = messageCopy;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to get destination identifier from message: %@", &v28, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      if (error)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        *error = v12 = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    v12 = 0;
    goto LABEL_21;
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    v28 = 138543618;
    v29 = v17;
    v30 = 2112;
    v31 = messageCopy;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to get payload from message: %@", &v28, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  if (error)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_22:

  v26 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)sendRequestToUpdateDestinationIdentifier:(id)identifier options:(unint64_t)options completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v32 = v13;
    v33 = 2112;
    v34 = identifierCopy;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Sending request to update destination identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [objc_alloc(MEMORY[0x277CD1B98]) initWithDestinationIdentifier:identifierCopy updateOptions:options];
  v15 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDMessageHandler *)selfCopy messageTargetUUID];
  v17 = [v15 initWithTarget:messageTargetUUID];

  v18 = objc_alloc(MEMORY[0x277D0F848]);
  v19 = *MEMORY[0x277CD0840];
  payloadCopy = [v14 payloadCopy];
  v21 = [v18 initWithName:v19 destination:v17 payload:payloadCopy];

  [v21 setRemoteRestriction:41];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __107__HMDMediaDestinationControllerMessageHandler_sendRequestToUpdateDestinationIdentifier_options_completion___block_invoke;
  v28 = &unk_278685AF8;
  v29 = selfCopy;
  v30 = completionCopy;
  v22 = completionCopy;
  [v21 setResponseHandler:&v25];
  v23 = [v21 copy];
  [(HMDMessageHandler *)selfCopy routeMessage:v23];

  v24 = *MEMORY[0x277D85DE8];
}

void __107__HMDMediaDestinationControllerMessageHandler_sendRequestToUpdateDestinationIdentifier_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
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
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Update destination identifier request message responded with error: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = *(*(a1 + 40) + 16);
  }

  else
  {
    v11 = *(*(a1 + 40) + 16);
  }

  v11();

  v12 = *MEMORY[0x277D85DE8];
}

- (void)notifyUpdatedDestinationWithIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = identifierCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Notifying updated destination with identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  messageTargetUUID = [(HMDMessageHandler *)selfCopy messageTargetUUID];
  v15[1] = @"HMDMediaDestinationIdentifierNotificationKey";
  v16[0] = messageTargetUUID;
  v10 = identifierCopy;
  if (!identifierCopy)
  {
    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    v10 = [v11 initWithUUIDString:*MEMORY[0x277CD0860]];
  }

  v16[1] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  if (!identifierCopy)
  {
  }

  notificationCenter = [(HMDMessageHandler *)selfCopy notificationCenter];
  [notificationCenter postNotificationName:@"HMDMediaDestinationControllerUpdatedDestinationNotification" object:selfCopy userInfo:v12];

  v14 = *MEMORY[0x277D85DE8];
}

- (HMDMediaDestinationControllerMessageHandler)initWithMessageTargetUUID:(id)d messageDispatcher:(id)dispatcher notificationCenter:(id)center metricsEventDispatcher:(id)eventDispatcher targetDevice:(BOOL)device dataSource:(id)source delegate:(id)delegate
{
  deviceCopy = device;
  v30[7] = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatcherCopy = dispatcher;
  centerCopy = center;
  eventDispatcherCopy = eventDispatcher;
  sourceCopy = source;
  delegateCopy = delegate;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!dispatcherCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
LABEL_12:
    _HMFPreconditionFailure();
  }

  if (!centerCopy)
  {
    goto LABEL_12;
  }

  v21 = delegateCopy;
  if (deviceCopy)
  {
    v30[0] = *MEMORY[0x277CD0880];
    v30[1] = @"HMDHomeAccessoryRemovedNotification";
    v30[2] = @"HMDMediaSystemAddedNotification";
    v30[3] = @"HMDMediaSystemRemovedNotification";
    v30[4] = @"HMDNotificationAccessoryChangedRoom";
    v30[5] = @"HMDMediaDestinationControllerUpdatedDestinationNotification";
    v30[6] = @"HMDMediaGroupsAggregateConsumerUpdatedAggregateDataNotification";
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:7];
  }

  else
  {
    v22 = MEMORY[0x277CBEBF8];
  }

  v29 = *MEMORY[0x277CD0840];
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v28.receiver = self;
  v28.super_class = HMDMediaDestinationControllerMessageHandler;
  v24 = [(HMDAppleMediaAccessoryMessageHandler *)&v28 initWithMessageTargetUUID:dCopy messageDispatcher:dispatcherCopy notificationCenter:centerCopy ownerPrivateRemoteMessages:MEMORY[0x277CBEBF8] adminPrivateRemoteMessages:v23 internalMessages:MEMORY[0x277CBEBF8] notifications:v22 notificationsToObject:MEMORY[0x277CBEC10]];
  v25 = v24;
  if (v24)
  {
    objc_storeWeak(&v24->_dataSource, sourceCopy);
    objc_storeWeak(&v25->_delegate, v21);
    objc_storeStrong(&v25->_metricsEventDispatcher, eventDispatcher);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t36_237972 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t36_237972, &__block_literal_global_237973);
  }

  v3 = logCategory__hmf_once_v37_237974;

  return v3;
}

void __58__HMDMediaDestinationControllerMessageHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v37_237974;
  logCategory__hmf_once_v37_237974 = v1;
}

@end