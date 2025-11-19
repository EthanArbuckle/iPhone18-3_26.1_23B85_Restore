@interface HMDMediaDestinationsMessageHandler
- (HMDMediaDestinationsMessageHandler)initWithDestination:(id)a3 messageDispatcher:(id)a4 notificationCenter:(id)a5 dataSource:(id)a6 delegate:(id)a7;
- (HMDMediaDestinationsMessageHandlerDataSource)dataSource;
- (HMDMediaDestinationsMessageHandlerDelegate)delegate;
- (void)handleMediaDestinationUpdatedNotification:(id)a3;
- (void)handleUpdatedDestination:(id)a3;
@end

@implementation HMDMediaDestinationsMessageHandler

- (HMDMediaDestinationsMessageHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMDMediaDestinationsMessageHandlerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)handleUpdatedDestination:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMDMediaDestinationsMessageHandler;
  v4 = a3;
  [(HMDMediaDestinationMessageHandler *)&v6 handleUpdatedDestination:v4];
  v5 = [v4 supportedOptions];

  if (v5)
  {
    if ([(HMDMessageHandler *)self hasQueuedIncomingMessages])
    {
      [(HMDMessageHandler *)self routeQueuedIncomingMessages];
    }
  }
}

- (void)handleMediaDestinationUpdatedNotification:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v32 = 138543362;
    v33 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling media destination updated notification", &v32, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDMediaDestinationsMessageHandler *)v6 delegate];
  if (v9)
  {
    v10 = [v4 object];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      objc_opt_class();
      v13 = objc_opt_isKindOfClass() & 1;
      if (v13)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      if (v13)
      {
        v16 = [v12 uniqueIdentifier];
        v17 = [(HMDMessageHandler *)v6 messageTargetUUID];
        v18 = [v16 hmf_isEqualToUUID:v17];

        if ((v18 & 1) == 0)
        {
          [v9 mediaDestinationsMessageHandler:v6 didReceiveDestinationUpdatedNotification:v4 destination:v12];
        }
      }

      else
      {
        v27 = objc_autoreleasePoolPush();
        v28 = v6;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          v32 = 138543618;
          v33 = v30;
          v34 = 2112;
          v35 = v4;
          _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to get destination from media destination updated notification: %@", &v32, 0x16u);
        }

        objc_autoreleasePoolPop(v27);
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v6;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v32 = 138543618;
        v33 = v26;
        v34 = 2112;
        v35 = v4;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to get notification object from media destination updated notification: %@", &v32, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      [v9 mediaDestinationsMessageHandler:v24 didReceiveDestinationUpdatedNotification:v4 destination:0];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v6;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v32 = 138543362;
      v33 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle destination updated notification due to no delegate", &v32, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (HMDMediaDestinationsMessageHandler)initWithDestination:(id)a3 messageDispatcher:(id)a4 notificationCenter:(id)a5 dataSource:(id)a6 delegate:(id)a7
{
  v23[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v12)
  {
    _HMFPreconditionFailure();
    goto LABEL_6;
  }

  if (!v13)
  {
LABEL_6:
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  if (!v14)
  {
    goto LABEL_7;
  }

  v17 = v16;
  v23[0] = *MEMORY[0x277CD0880];
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v22.receiver = self;
  v22.super_class = HMDMediaDestinationsMessageHandler;
  v19 = [(HMDMediaDestinationMessageHandler *)&v22 initWithDestination:v12 messageDispatcher:v13 notificationCenter:v14 notifications:v18 dataSource:v15 delegate:v17];

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

@end