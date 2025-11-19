@interface HMDMediaDestinationControllerMessageHandler
+ (id)logCategory;
- (HMDMediaDestinationControllerMessageHandler)initWithMessageTargetUUID:(id)a3 messageDispatcher:(id)a4 notificationCenter:(id)a5 metricsEventDispatcher:(id)a6 targetDevice:(BOOL)a7 dataSource:(id)a8 delegate:(id)a9;
- (HMDMediaDestinationControllerMessageHandlerDataSource)dataSource;
- (HMDMediaDestinationControllerMessageHandlerDelegate)delegate;
- (id)destinationIdentifierInMessage:(id)a3 error:(id *)a4;
- (id)logIdentifier;
- (unint64_t)upateOptionsInMessage:(id)a3 error:(id *)a4;
- (void)handleHomeAccessoryRemovedNotification:(id)a3;
- (void)handleMediaDestinationControllerUpdateDestinationRequestMessage:(id)a3;
- (void)handleMediaDestinationControllerUpdatedDestinationNotification:(id)a3;
- (void)handleMediaDestinationUpdatedNotification:(id)a3;
- (void)handleMediaGroupsAggregateConsumerUpdatedAggregateDataNotification:(id)a3;
- (void)handleMediaSystemAddedNotification:(id)a3;
- (void)handleMediaSystemRemovedNotification:(id)a3;
- (void)handleNotificationAccessoryChangedRoom:(id)a3;
- (void)notifyUpdatedDestinationWithIdentifier:(id)a3;
- (void)sendRequestToUpdateDestinationIdentifier:(id)a3 options:(unint64_t)a4 completion:(id)a5;
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
  v2 = [(HMDMessageHandler *)self messageTargetUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)handleMediaGroupsAggregateConsumerUpdatedAggregateDataNotification:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling media groups aggregate consumer updated aggregate data notification", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMediaDestinationControllerMessageHandler *)v6 delegate];
  v10 = v9;
  if (v9)
  {
    [v9 mediaDestinationControllerMessageHandler:v6 didReceiveMediaGroupsAggregateConsumerUpdatedAggregateDataNotification:v4];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v6;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of media groups aggregate consumer updated aggregate data notification due to no delegate", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleMediaDestinationControllerUpdatedDestinationNotification:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v39 = 138543618;
    v40 = v8;
    v41 = 2112;
    v42 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling media destination controller updated destination notification: %@", &v39, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 userInfo];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 hmf_UUIDForKey:@"HMDMediaDestinationControllerIdentifierNotificationKey"];
    if (!v11)
    {
      v28 = objc_autoreleasePoolPush();
      v29 = v6;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v39 = 138543618;
        v40 = v31;
        v41 = 2112;
        v42 = v10;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to get media destination controller identifier from media destination controller updated destination notification user info: %@", &v39, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      goto LABEL_26;
    }

    v12 = [v10 hmf_UUIDForKey:@"HMDMediaDestinationIdentifierNotificationKey"];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 UUIDString];
      v15 = [v14 isEqualToString:*MEMORY[0x277CD0860]];

      if (!v15)
      {
        v32 = [(HMDMediaDestinationControllerMessageHandler *)v6 delegate];
        v33 = v32;
        if (v32)
        {
          [v32 mediaDestinationControllerMessageHandler:v6 didReceiveMediaDestinationControllerUpdatedDestinationNotification:v4 destinationControllerIdentifier:v11 destinationIdentifier:v13];
        }

        else
        {
          v34 = objc_autoreleasePoolPush();
          v35 = v6;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = HMFGetLogIdentifier();
            v39 = 138543362;
            v40 = v37;
            _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of media destination controller updated destination notification due to no delegate", &v39, 0xCu);
          }

          objc_autoreleasePoolPop(v34);
        }

        goto LABEL_25;
      }

      v16 = objc_autoreleasePoolPush();
      v17 = v6;
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
        _os_log_impl(&dword_2531F8000, v21, v22, v20, &v39, v23);
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = v6;
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
  v25 = v6;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    v39 = 138543618;
    v40 = v27;
    v41 = 2112;
    v42 = v4;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to get user info in media destination controller updated destination notification: %@", &v39, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
LABEL_27:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)handleNotificationAccessoryChangedRoom:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
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
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v29 = 138543618;
      v30 = v11;
      v31 = 2112;
      v32 = v4;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling accessory changed room notification: %@", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [v7 audioDestination];
    v13 = [v7 audioDestinationController];
    v14 = v13;
    if (v12 || ([v13 identifier], v15 = objc_claimAutoreleasedReturnValue(), -[HMDMessageHandler messageTargetUUID](v9, "messageTargetUUID"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "hmf_isEqualToUUID:", v16), v16, v15, (v17 & 1) != 0))
    {
      v18 = [(HMDMediaDestinationControllerMessageHandler *)v9 delegate];
      v19 = v18;
      if (v18)
      {
        [v18 mediaDestinationControllerMessageHandler:v9 didReceiveAccessoryChangedRoomNotification:v4];
      }

      else
      {
        v20 = objc_autoreleasePoolPush();
        v21 = v9;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          v29 = 138543362;
          v30 = v23;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of accessory changed rooms notification due to no delegate", &v29, 0xCu);
        }

        objc_autoreleasePoolPop(v20);
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = v9;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v29 = 138543362;
        v30 = v28;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Skipping accessory changed room notification due to no destination and no related destination controller", &v29, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)handleMediaSystemRemovedNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling media system removed notification: %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMediaDestinationControllerMessageHandler *)v6 delegate];
  v10 = v9;
  if (v9)
  {
    [v9 mediaDestinationControllerMessageHandler:v6 didReceiveMediaSystemRemovedNotification:v4];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v6;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of media system removed notification due to no delegate", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleMediaSystemAddedNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling media system added notification: %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMediaDestinationControllerMessageHandler *)v6 delegate];
  v10 = v9;
  if (v9)
  {
    [v9 mediaDestinationControllerMessageHandler:v6 didReceiveMediaSystemAddedNotification:v4];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v6;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of media system added notification due to no delegate", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeAccessoryRemovedNotification:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
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
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v11;
      v26 = 2112;
      v27 = v4;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling home accessory removed notification: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [v7 audioDestination];
    if (v12)
    {
      v13 = [(HMDMediaDestinationControllerMessageHandler *)v9 delegate];
      v14 = v13;
      if (v13)
      {
        [v13 mediaDestinationControllerMessageHandler:v9 didReceiveHomeAccessoryRemovedNotification:v4 destination:v12];
      }

      else
      {
        v19 = objc_autoreleasePoolPush();
        v20 = v9;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          v24 = 138543362;
          v25 = v22;
          _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of accessory removed notification due to no delegate", &v24, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v9;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v24 = 138543362;
        v25 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Skipping home accessory removed notification due to no destination", &v24, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleMediaDestinationUpdatedNotification:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling media destination updated notification: %@", &v16, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMediaDestinationControllerMessageHandler *)v6 delegate];
  v10 = v9;
  if (v9)
  {
    [v9 mediaDestinationControllerMessageHandler:v6 didReceiveMediaDestinationUpdatedNotification:v4];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = v6;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of media destination updated notification due to no delegate", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleMediaDestinationControllerUpdateDestinationRequestMessage:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v37 = v8;
    v38 = 2112;
    v39 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling update destination request message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 responseHandler];

  if (v9)
  {
    v35 = 0;
    v10 = [(HMDMediaDestinationControllerMessageHandler *)v6 destinationIdentifierInMessage:v4 error:&v35];
    v11 = v35;
    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = v6;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543874;
        v37 = v15;
        v38 = 2112;
        v39 = v4;
        v40 = 2112;
        v41 = v11;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to get destination identifier from update destination message: %@ error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      [v4 respondWithError:v11];
    }

    v34 = v11;
    v16 = [(HMDMediaDestinationControllerMessageHandler *)v6 upateOptionsInMessage:v4 error:&v34];
    v17 = v34;

    if (v17)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = v6;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543874;
        v37 = v21;
        v38 = 2112;
        v39 = v4;
        v40 = 2112;
        v41 = v17;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to get update options from update destination message: %@ error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      [v4 respondWithError:v17];
    }

    v22 = [(HMDMediaDestinationControllerMessageHandler *)v6 delegate];
    v23 = v22;
    if (v22)
    {
      [v22 mediaDestinationControllerMessageHandler:v6 didReceiveMediaDestinationControllerUpdateDestinationRequestMessage:v4 destinationIdentifier:v10 updateOptions:v16];
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = v6;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543362;
        v37 = v31;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of update destination request message due to no delegate", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v28);
      v32 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      [v4 respondWithError:v32];
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v6;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v37 = v27;
      v38 = 2112;
      v39 = v4;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to get response handler from update destination request message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [v4 respondWithError:v17];
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (unint64_t)upateOptionsInMessage:(id)a3 error:(id *)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 messagePayload];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 hmf_numberForKey:*MEMORY[0x277CD0848]];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 unsignedIntegerValue];
      if (v11 < 4)
      {
LABEL_18:

        goto LABEL_19;
      }

      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v16 = HMMediaDestinationControllerUpateOptionsAsString();
        v28 = 138543618;
        v29 = v15;
        v30 = 2112;
        v31 = v16;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to perform update due to unknown update options: %@", &v28, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      if (a4)
      {
        v17 = 3;
LABEL_16:
        [MEMORY[0x277CCA9B8] hmErrorWithCode:v17];
        *a4 = v11 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v28 = 138543618;
        v29 = v25;
        v30 = 2112;
        v31 = v6;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to get update options from message: %@", &v28, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      if (a4)
      {
        v17 = 20;
        goto LABEL_16;
      }
    }

    v11 = 0;
    goto LABEL_18;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    v28 = 138543618;
    v29 = v21;
    v30 = 2112;
    v31 = v6;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to get payload from message: %@", &v28, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  if (a4)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_19:

  v26 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)destinationIdentifierInMessage:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 messagePayload];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 hmf_stringForKey:*MEMORY[0x277CD0858]];
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
          v23 = self;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = HMFGetLogIdentifier();
            v28 = 138543874;
            v29 = v25;
            v30 = 2112;
            v31 = v10;
            v32 = 2112;
            v33 = v6;
            _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse destination identifier: %@ message: %@", &v28, 0x20u);
          }

          objc_autoreleasePoolPop(v22);
          if (a4)
          {
            *a4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
          }
        }

        goto LABEL_21;
      }
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v28 = 138543618;
        v29 = v21;
        v30 = 2112;
        v31 = v6;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to get destination identifier from message: %@", &v28, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      if (a4)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        *a4 = v12 = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    v12 = 0;
    goto LABEL_21;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    v28 = 138543618;
    v29 = v17;
    v30 = 2112;
    v31 = v6;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to get payload from message: %@", &v28, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  if (a4)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *a4 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_22:

  v26 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)sendRequestToUpdateDestinationIdentifier:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v32 = v13;
    v33 = 2112;
    v34 = v8;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Sending request to update destination identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = [objc_alloc(MEMORY[0x277CD1B98]) initWithDestinationIdentifier:v8 updateOptions:a4];
  v15 = objc_alloc(MEMORY[0x277D0F820]);
  v16 = [(HMDMessageHandler *)v11 messageTargetUUID];
  v17 = [v15 initWithTarget:v16];

  v18 = objc_alloc(MEMORY[0x277D0F848]);
  v19 = *MEMORY[0x277CD0840];
  v20 = [v14 payloadCopy];
  v21 = [v18 initWithName:v19 destination:v17 payload:v20];

  [v21 setRemoteRestriction:9];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __107__HMDMediaDestinationControllerMessageHandler_sendRequestToUpdateDestinationIdentifier_options_completion___block_invoke;
  v28 = &unk_279732CF0;
  v29 = v11;
  v30 = v9;
  v22 = v9;
  [v21 setResponseHandler:&v25];
  v23 = [v21 copy];
  [(HMDMessageHandler *)v11 routeMessage:v23];

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
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Update destination identifier request message responded with error: %@", &v13, 0x16u);
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

- (void)notifyUpdatedDestinationWithIdentifier:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Notifying updated destination with identifier: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMessageHandler *)v6 messageTargetUUID];
  v15[1] = @"HMDMediaDestinationIdentifierNotificationKey";
  v16[0] = v9;
  v10 = v4;
  if (!v4)
  {
    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    v10 = [v11 initWithUUIDString:*MEMORY[0x277CD0860]];
  }

  v16[1] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  if (!v4)
  {
  }

  v13 = [(HMDMessageHandler *)v6 notificationCenter];
  [v13 postNotificationName:@"HMDMediaDestinationControllerUpdatedDestinationNotification" object:v6 userInfo:v12];

  v14 = *MEMORY[0x277D85DE8];
}

- (HMDMediaDestinationControllerMessageHandler)initWithMessageTargetUUID:(id)a3 messageDispatcher:(id)a4 notificationCenter:(id)a5 metricsEventDispatcher:(id)a6 targetDevice:(BOOL)a7 dataSource:(id)a8 delegate:(id)a9
{
  v10 = a7;
  v30[7] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  if (!v15)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v16)
  {
LABEL_11:
    _HMFPreconditionFailure();
LABEL_12:
    _HMFPreconditionFailure();
  }

  if (!v17)
  {
    goto LABEL_12;
  }

  v21 = v20;
  if (v10)
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
  v24 = [(HMDAppleMediaAccessoryMessageHandler *)&v28 initWithMessageTargetUUID:v15 messageDispatcher:v16 notificationCenter:v17 ownerPrivateRemoteMessages:MEMORY[0x277CBEBF8] adminPrivateRemoteMessages:v23 internalMessages:MEMORY[0x277CBEBF8] notifications:v22 notificationsToObject:MEMORY[0x277CBEC10]];
  v25 = v24;
  if (v24)
  {
    objc_storeWeak(&v24->_dataSource, v19);
    objc_storeWeak(&v25->_delegate, v21);
    objc_storeStrong(&v25->_metricsEventDispatcher, a6);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t36_161246 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t36_161246, &__block_literal_global_161247);
  }

  v3 = logCategory__hmf_once_v37_161248;

  return v3;
}

uint64_t __58__HMDMediaDestinationControllerMessageHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v37_161248;
  logCategory__hmf_once_v37_161248 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end