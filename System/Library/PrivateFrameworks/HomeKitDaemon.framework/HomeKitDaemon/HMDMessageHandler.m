@interface HMDMessageHandler
+ (id)logCategory;
- (BOOL)hasQueuedIncomingMessage:(id)a3;
- (BOOL)hasQueuedIncomingMessages;
- (BOOL)hasQueuedOutgoingMessage:(id)a3;
- (BOOL)hasQueuedOutgoingMessages;
- (BOOL)hasQueuedOutgoingMessagesForDevice:(id)a3;
- (BOOL)isReadyForIncomingMessage:(id)a3 error:(id *)a4;
- (BOOL)isReadyForOutgoingMessaging;
- (BOOL)shouldRelayIncomingMessage:(id)a3 error:(id *)a4;
- (HMDHome)home;
- (HMDHomeManager)homeManager;
- (HMDMessageHandler)initWithMessageTargetUUID:(id)a3 messageDispatcher:(id)a4 notificationCenter:(id)a5 ownerPrivateRemoteMessages:(id)a6 adminPrivateRemoteMessages:(id)a7 internalMessages:(id)a8 notifications:(id)a9 notificationsToObject:(id)a10;
- (HMDMessageHandler)initWithMessageTargetUUID:(id)a3 messageDispatcher:(id)a4 notificationCenter:(id)a5 ownerPrivateRemoteMessages:(id)a6 adminPrivateRemoteMessages:(id)a7 internalMessages:(id)a8 notifications:(id)a9 notificationsToObject:(id)a10 appleAccountManager:(id)a11 metricsDispatcher:(id)a12;
- (HMDMessageHandlerDataSource)dataSource;
- (SEL)selectorForName:(id)a3;
- (id)attributeDescriptions;
- (id)currentAccountDevice;
- (id)dequeueIncomingMessage:(id)a3;
- (id)dequeueOutgoingMessage:(id)a3;
- (id)dequeueQueuedIncomingMessages;
- (id)deviceForMessage:(id)a3;
- (id)logIdentifier;
- (id)queuedIncomingMessages;
- (id)queuedOutgoingMessages;
- (id)queuedOutgoingMessagesForDevice:(id)a3;
- (void)_cleanUpDeviceMappingsForMessage:(id)a3;
- (void)_logMediaDestinationControllerUpdateMetricsUsingMessage:(id)a3;
- (void)associateDevice:(id)a3 withOutgoingMessage:(id)a4;
- (void)configureWithHome:(id)a3;
- (void)didTriggerMessageHandlerQueuedMessage:(id)a3;
- (void)didTriggerQueuedIncomingMessage:(id)a3;
- (void)didTriggerQueuedOutgoingMessage:(id)a3;
- (void)handleAccountAddedDeviceNotification:(id)a3;
- (void)queueIncomingMessage:(id)a3;
- (void)queueOutgoingMessage:(id)a3;
- (void)registerForMessagesWithHome:(id)a3;
- (void)registerForNotifications;
- (void)registerForSPIRemoteMessages:(id)a3 home:(id)a4 userPrivilege:(unint64_t)a5 internalBuildOnly:(BOOL)a6;
- (void)relayMessage:(id)a3 shouldQueue:(BOOL)a4;
- (void)routeMessage:(id)a3 shouldQueue:(BOOL)a4;
- (void)routeQueuedIncomingMessages;
- (void)sendQueuedOutgoingMessages;
- (void)sendQueuedOutgoingMessages:(id)a3;
- (void)sendQueuedOutgoingMessagesForDevice:(id)a3;
- (void)triggerQueuedIncomingMessagesTimeouts;
- (void)triggerQueuedOutgoingMessagesTimeouts;
@end

@implementation HMDMessageHandler

- (HMDMessageHandlerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDMessageHandler *)self messageTargetUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDMessageHandler *)self messageTargetUUID];
  v5 = [v3 initWithName:@"messageTargetUUID" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)didTriggerQueuedOutgoingMessage:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 message];
  v6 = [(HMDMessageHandler *)self dequeueOutgoingMessage:v5];

  if (v6)
  {
    v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:13];
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
      v19 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to send queued outgoing message: %@ error: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [v6 respondWithError:v7];
    v12 = [(HMDMessageHandler *)v9 metricsDispatcher];
    [v12 submitFailureEventOfType:2 message:v6];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didTriggerQueuedIncomingMessage:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 message];
  v6 = [(HMDMessageHandler *)self dequeueIncomingMessage:v5];

  if (v6)
  {
    v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:13];
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
      v19 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to send queued incoming message: %@ error: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [v6 respondWithError:v7];
    v12 = [(HMDMessageHandler *)v9 metricsDispatcher];
    [v12 submitFailureEventOfType:1 message:v6];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didTriggerMessageHandlerQueuedMessage:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 message];
  v6 = [(HMDMessageHandler *)self hasQueuedIncomingMessage:v5];

  if (v6)
  {
    [(HMDMessageHandler *)self didTriggerQueuedIncomingMessage:v4];
  }

  else
  {
    v7 = [v4 message];
    v8 = [(HMDMessageHandler *)self hasQueuedOutgoingMessage:v7];

    if (v8)
    {
      [(HMDMessageHandler *)self didTriggerQueuedOutgoingMessage:v4];
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v14 = 138543618;
        v15 = v12;
        v16 = 2112;
        v17 = v4;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Dropping unknown triggered queued message: %@", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)triggerQueuedIncomingMessagesTimeouts
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_messageNameToQueuedIncomingMessages allValues];
  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 delegate];
        [v9 didTriggerMessageHandlerQueuedMessage:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)triggerQueuedOutgoingMessagesTimeouts
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_messageNameToQueuedOutgoingMessage allValues];
  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 delegate];
        [v9 didTriggerMessageHandlerQueuedMessage:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleAccountAddedDeviceNotification:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"HMDDeviceNotificationKey"];

  v7 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [(HMDMessageHandler *)self currentAccountDevice];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 identifier];
      v13 = [v9 identifier];
      if ([v12 hmf_isEqualToUUID:v13])
      {
        v14 = [(HMDMessageHandler *)self hasQueuedOutgoingMessages];

        if (v14)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            v24 = 138543362;
            v25 = v18;
            _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Sending queued outgoing messages due to new account device added", &v24, 0xCu);
          }

          objc_autoreleasePoolPop(v15);
          [(HMDMessageHandler *)v16 sendQueuedOutgoingMessages];
        }
      }

      else
      {
      }
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v22;
      v26 = 2112;
      v27 = v4;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to get new device from notification: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)isReadyForOutgoingMessaging
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMessageHandler *)self appleAccountManager];
  v4 = [v3 device];

  if (!v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Not ready for outgoing messaging due to no device for account manager: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4 != 0;
}

- (id)currentAccountDevice
{
  v2 = [(HMDMessageHandler *)self appleAccountManager];
  v3 = [v2 device];

  return v3;
}

- (id)deviceForMessage:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMessageHandler *)self dataSource];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 messageHandler:self deviceForOutgoingMessage:v4];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get remote device message destination due to no data source", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (SEL)selectorForName:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length] < 4)
  {
LABEL_6:
    if ([v4 length] >= 3)
    {
      v11 = [v4 substringToIndex:3];
      v12 = [v4 substringToIndex:3];
      v13 = [v12 uppercaseString];
      if ([v11 isEqualToString:v13])
      {
        v8 = 2;
        v14 = [v4 substringToIndex:2];
        v15 = [v14 isEqualToString:@"HM"];

        if (v15)
        {
          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    v18 = 0;
    goto LABEL_18;
  }

  v5 = [v4 substringToIndex:4];
  v6 = [v4 substringToIndex:4];
  v7 = [v6 uppercaseString];
  if (([v5 isEqualToString:v7] & 1) == 0)
  {

    goto LABEL_6;
  }

  v8 = 3;
  v9 = [v4 substringToIndex:3];
  v10 = [v9 isEqualToString:@"HMD"];

  if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_9:
  v16 = MEMORY[0x277CCACA8];
  v17 = [v4 substringFromIndex:v8];
  v18 = [v16 stringWithFormat:@"handle%@:", v17];

  v19 = NSSelectorFromString(v18);
  if (!v19)
  {
LABEL_18:
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
LABEL_21:

      objc_autoreleasePoolPop(v27);
      v20 = 0;
      goto LABEL_22;
    }

    v30 = HMFGetLogIdentifier();
    *buf = 138543874;
    v35 = v30;
    v36 = 2112;
    v37 = v4;
    v38 = 2112;
    v39 = v18;
    v31 = "%{public}@Failed to parse name: %@ selector: %@";
LABEL_20:
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, v31, buf, 0x20u);

    goto LABEL_21;
  }

  v20 = v19;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v30 = HMFGetLogIdentifier();
    *buf = 138543874;
    v35 = v30;
    v36 = 2112;
    v37 = v4;
    v38 = 2112;
    v39 = v18;
    v31 = "%{public}@Failed to get handler for name: %@ selector: %@";
    goto LABEL_20;
  }

  v21 = [(HMDMessageHandler *)self methodSignatureForSelector:v20];
  v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v21, "methodReturnType")}];
  if (([v22 isEqualToString:@"v"] & 1) == 0)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543874;
      v35 = v26;
      v36 = 2112;
      v37 = v4;
      v38 = 2112;
      v39 = v18;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to route message due to unsafe return type on handler for name: %@ selector: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
    v20 = 0;
  }

LABEL_22:
  v32 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)routeQueuedIncomingMessages
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMessageHandler *)self dequeueQueuedIncomingMessages];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v7;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Routing queued incoming messages: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(HMDMessageHandler *)v5 routeMessage:*(*(&v14 + 1) + 8 * v12++), v14];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)sendQueuedOutgoingMessages:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending queued messages: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(HMDMessageHandler *)v6 relayMessage:*(*(&v15 + 1) + 8 * v13++) shouldQueue:0, v15];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)sendQueuedOutgoingMessagesForDevice:(id)a3
{
  v4 = [(HMDMessageHandler *)self queuedOutgoingMessagesForDevice:a3];
  [(HMDMessageHandler *)self sendQueuedOutgoingMessages:v4];
}

- (void)sendQueuedOutgoingMessages
{
  v3 = [(HMDMessageHandler *)self queuedOutgoingMessages];
  [(HMDMessageHandler *)self sendQueuedOutgoingMessages:v3];
}

- (BOOL)hasQueuedOutgoingMessagesForDevice:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  deviceIdentifierToQueuedOutgoingMessageNames = self->_deviceIdentifierToQueuedOutgoingMessageNames;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)deviceIdentifierToQueuedOutgoingMessageNames objectForKey:v6];

  if (v7)
  {
    v8 = [v7 count] != 0;
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v8;
}

- (BOOL)hasQueuedOutgoingMessages
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_messageNameToQueuedOutgoingMessage count]!= 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)shouldRelayIncomingMessage:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDMessageHandler *)self dataSource];
  v8 = [v7 messageHandler:self shouldRelayIncomingMessage:v6];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 BOOLValue];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get relay preference from data source: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    if (a4)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      *a4 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isReadyForIncomingMessage:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDMessageHandler *)self dataSource];
  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [v7 messageHandler:self isReadyForIncomingMessage:v6];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to get is ready for message value due to no data source", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    if (a4)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      *a4 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)relayMessage:(id)a3 shouldQueue:(BOOL)a4
{
  v4 = a4;
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMFBooleanToString();
    *buf = 138543874;
    v51 = v10;
    v52 = 2112;
    v53 = v6;
    v54 = 2112;
    v55 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Relaying message: %@ should queue: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if ([v6 isRemote])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v8;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v51 = v15;
      v52 = 2112;
      v53 = v6;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to relay remote message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    [v6 respondWithError:v16];
    v17 = [(HMDMessageHandler *)v13 metricsDispatcher];
    [v17 submitFailureEventOfType:0 message:v6];
  }

  else
  {
    if (v4)
    {
      [(HMDMessageHandler *)v8 queueOutgoingMessage:v6];
    }

    v18 = [(HMDMessageHandler *)v8 deviceForMessage:v6];
    if (v18)
    {
      v16 = v18;
      [(HMDMessageHandler *)v8 associateDevice:v18 withOutgoingMessage:v6];
      if ([(HMDMessageHandler *)v8 isReadyForOutgoingMessaging])
      {
        v19 = [(HMDMessageHandler *)v8 dequeueOutgoingMessage:v6];

        if (v19)
        {
          v20 = [HMDRemoteDeviceMessageDestination alloc];
          v21 = [(HMDMessageHandler *)v8 messageTargetUUID];
          v22 = [(HMDRemoteDeviceMessageDestination *)v20 initWithTarget:v21 device:v16];

          v23 = [v19 name];
          v24 = [v19 remoteRestriction];
          if ([v23 isEqualToString:@"HMMediaDestinationControllerUpdateDestinationRequestMessage"])
          {
            v25 = objc_autoreleasePoolPush();
            v26 = v8;
            v27 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v28 = HMFGetLogIdentifier();
              [MEMORY[0x277CCABB0] numberWithUnsignedInteger:41];
              v29 = v49 = v25;
              *buf = 138543874;
              v51 = v28;
              v52 = 2112;
              v53 = v29;
              v54 = 2112;
              v55 = @"HMMediaDestinationControllerUpdateDestinationRequestMessage";
              _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Setting remote message restriction:%@ for message %@ ", buf, 0x20u);

              v25 = v49;
            }

            objc_autoreleasePoolPop(v25);
            v24 = 41;
          }

          v30 = [(HMDMessageHandler *)v8 messageDispatcher];
          v31 = [v19 name];
          v32 = [v19 qualityOfService];
          v33 = [v19 messagePayload];
          v34 = [HMDRemoteMessage secureMessageWithName:v31 qualityOfService:v32 destination:v22 messagePayload:v33 restriction:v24];

          v35 = [v19 responseHandler];
          [v34 setResponseHandler:v35];

          [v30 sendMessage:v34];
          v6 = v19;
        }

        else
        {
          v44 = objc_autoreleasePoolPush();
          v45 = v8;
          v46 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            v47 = HMFGetLogIdentifier();
            *buf = 138543362;
            v51 = v47;
            _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@Skipping relaying of message due to message already being dequeued on different thread", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v44);
          v6 = 0;
        }
      }

      else
      {
        v40 = objc_autoreleasePoolPush();
        v41 = v8;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138543618;
          v51 = v43;
          v52 = 2112;
          v53 = v6;
          _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@Leaving message in queue until ready for outgoing message: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v40);
      }
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      v37 = v8;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543618;
        v51 = v39;
        v52 = 2112;
        v53 = v6;
        _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Leaving message in queue until device is found for message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v36);
      v16 = 0;
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (void)_logMediaDestinationControllerUpdateMetricsUsingMessage:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMessageHandler *)self home];
  v6 = [v5 homeTheaterSetupMetricDispatcher];
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [v4 name];
    v9 = [v4 messagePayload];
    if ([v8 isEqualToString:@"HMMediaDestinationControllerUpdateDestinationRequestMessage"] && v9)
    {
      v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CD0858]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v12];
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      v17 = v16;
      v39 = v13;
      if (v12)
      {
        v18 = v13 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v19 = HMFGetLogIdentifier();
          *buf = 138543874;
          v42 = v19;
          v43 = 2112;
          v44 = v12;
          v45 = 2112;
          v46 = v39;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Destination UUID string %@ or UUID %@ is nil", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v14);
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v25 = v37 = v14;
          v26 = [(HMDMessageHandler *)v15 messageTargetUUID];
          *buf = 138543874;
          v42 = v25;
          v43 = 2112;
          v44 = v26;
          v45 = 2112;
          v46 = v12;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Received request to update controller %@ with destination identifier %@", buf, 0x20u);

          v14 = v37;
        }

        objc_autoreleasePoolPop(v14);
        if ([v12 isEqualToString:*MEMORY[0x277CD0860]])
        {
          v27 = [(HMDMessageHandler *)v15 messageTargetUUID];
          [v7 markRequestReceivedForGroupIdentifier:v27 metricType:4 setupSessionIdentifier:0 setupRequestOption:0 setupSessionStartTimeMS:0];
        }

        else
        {
          v40 = 0.0;
          v28 = [v5 homeManager];
          v29 = [v28 firstSetupSessionIdentifierOutputStartTime:&v40];

          v30 = objc_autoreleasePoolPush();
          v31 = v15;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v33 = v38 = v30;
            *buf = 138543618;
            v42 = v33;
            v43 = 2112;
            v44 = v29;
            _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Found associated setup session identifier %@ during home theater grouping", buf, 0x16u);

            v30 = v38;
          }

          objc_autoreleasePoolPop(v30);
          v34 = 1000 * v40;
          v35 = [(HMDMessageHandler *)v31 messageTargetUUID];
          [v7 markRequestReceivedForGroupIdentifier:v35 metricType:3 setupSessionIdentifier:v29 setupRequestOption:0 setupSessionStartTimeMS:v34];
        }
      }
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to log media destination controller update metrics due to either no home or metric dispatcher", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)routeMessage:(id)a3 shouldQueue:(BOOL)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v44 = v9;
    v45 = 2112;
    v46 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Routing message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [v5 responseHandler];

  if (!v10)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v7;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v21;
      v45 = 2112;
      v46 = v5;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to route message due to no response handler from message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v13 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    goto LABEL_11;
  }

  [(HMDMessageHandler *)v7 queueIncomingMessage:v5];
  v42 = 0;
  v11 = [(HMDMessageHandler *)v7 isReadyForIncomingMessage:v5 error:&v42];
  v12 = v42;
  if (v12)
  {
    v13 = v12;
    v14 = objc_autoreleasePoolPush();
    v15 = v7;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v17;
      v45 = 2112;
      v46 = v13;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to route message due to ready preference error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
LABEL_11:
    [v5 respondWithError:v13];

    goto LABEL_12;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  v23 = [(HMDMessageHandler *)v7 dequeueIncomingMessage:v5];

  if (v23)
  {
    v41 = 0;
    v24 = [(HMDMessageHandler *)v7 shouldRelayIncomingMessage:v23 error:&v41];
    v25 = v41;
    if (v25)
    {
      v26 = v25;
      v27 = objc_autoreleasePoolPush();
      v28 = v7;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        v44 = v30;
        v45 = 2112;
        v46 = v26;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to route message due to relay preference error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
    }

    else
    {
      [(HMDMessageHandler *)v7 _logMediaDestinationControllerUpdateMetricsUsingMessage:v23];
      if (v24)
      {
        [(HMDMessageHandler *)v7 relayMessage:v23];
        goto LABEL_27;
      }

      v35 = [v23 name];
      v36 = [(HMDMessageHandler *)v7 selectorForName:v35];

      if (v36)
      {
        [(HMDMessageHandler *)v7 performSelector:v36 withObject:v23];
        goto LABEL_27;
      }

      v37 = objc_autoreleasePoolPush();
      v38 = v7;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543618;
        v44 = v40;
        v45 = 2112;
        v46 = v23;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to route message due to no handler available for message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v37);
      v26 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    }

    [v23 respondWithError:v26];

LABEL_27:
    v5 = v23;
    goto LABEL_12;
  }

  v31 = objc_autoreleasePoolPush();
  v32 = v7;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = HMFGetLogIdentifier();
    *buf = 138543362;
    v44 = v34;
    _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Skipping routing message since message was already dequeued on another thread", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v31);
  v5 = 0;
LABEL_12:

  v22 = *MEMORY[0x277D85DE8];
}

- (id)queuedOutgoingMessagesForDevice:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  deviceIdentifierToQueuedOutgoingMessageNames = self->_deviceIdentifierToQueuedOutgoingMessageNames;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)deviceIdentifierToQueuedOutgoingMessageNames objectForKey:v6];

  if (v7)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__HMDMessageHandler_queuedOutgoingMessagesForDevice___block_invoke;
    v11[3] = &unk_278686DF0;
    v11[4] = self;
    v8 = [v7 na_map:v11];
    v9 = [v8 allObjects];
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

id __53__HMDMessageHandler_queuedOutgoingMessagesForDevice___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 24) objectForKey:a2];
  v3 = [v2 message];

  return v3;
}

- (id)queuedOutgoingMessages
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_messageNameToQueuedOutgoingMessage allValues];
  os_unfair_lock_unlock(&self->_lock);
  v4 = [v3 na_map:&__block_literal_global_48_259950];

  return v4;
}

- (BOOL)hasQueuedOutgoingMessage:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_messageNameToQueuedOutgoingMessage allValues];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__HMDMessageHandler_hasQueuedOutgoingMessage___block_invoke;
  v9[3] = &unk_278686DC8;
  v6 = v4;
  v10 = v6;
  v7 = [v5 na_firstObjectPassingTest:v9];

  os_unfair_lock_unlock(&self->_lock);
  return v7 != 0;
}

uint64_t __46__HMDMessageHandler_hasQueuedOutgoingMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)_cleanUpDeviceMappingsForMessage:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_deviceIdentifierToQueuedOutgoingMessageNames allKeys];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_deviceIdentifierToQueuedOutgoingMessageNames objectForKey:v10];
        if (v11)
        {
          v12 = [v4 name];
          [v11 removeObject:v12];

          if (![v11 count])
          {
            [(NSMutableDictionary *)self->_deviceIdentifierToQueuedOutgoingMessageNames removeObjectForKey:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)dequeueOutgoingMessage:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Dequeueing outgoing message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  v9 = [(NSMutableDictionary *)v6->_messageNameToQueuedOutgoingMessage allValues];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __44__HMDMessageHandler_dequeueOutgoingMessage___block_invoke;
  v17[3] = &unk_278686DC8;
  v10 = v4;
  v18 = v10;
  v11 = [v9 na_firstObjectPassingTest:v17];

  if (v11)
  {
    [v11 setDelegate:0];
    [v11 suspendTimer];
    messageNameToQueuedOutgoingMessage = v6->_messageNameToQueuedOutgoingMessage;
    v13 = [v10 name];
    [(NSMutableDictionary *)messageNameToQueuedOutgoingMessage removeObjectForKey:v13];

    [(HMDMessageHandler *)v6 _cleanUpDeviceMappingsForMessage:v10];
    v14 = [v11 message];
  }

  else
  {
    v14 = 0;
  }

  os_unfair_lock_unlock(&v6->_lock);
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

uint64_t __44__HMDMessageHandler_dequeueOutgoingMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5;
}

- (void)associateDevice:(id)a3 withOutgoingMessage:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v16 = 138543874;
    v17 = v11;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Associating device: %@ with outgoing message: %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  v12 = [v6 identifier];
  v13 = [(NSMutableDictionary *)v9->_deviceIdentifierToQueuedOutgoingMessageNames objectForKey:v12];
  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(NSMutableDictionary *)v9->_deviceIdentifierToQueuedOutgoingMessageNames setObject:v13 forKey:v12];
  }

  v14 = [v7 name];
  [v13 addObject:v14];

  os_unfair_lock_unlock(&v9->_lock);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)queueOutgoingMessage:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v23 = 138543618;
    v24 = v8;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Queueing outgoing message: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [[HMDMessageHandlerQueuedMessage alloc] initWithMessage:v4 timeInterval:180.0];
  [(HMDMessageHandlerQueuedMessage *)v9 setDelegate:v6];
  [(HMDMessageHandlerQueuedMessage *)v9 resumeTimer];
  os_unfair_lock_lock_with_options();
  messageNameToQueuedOutgoingMessage = v6->_messageNameToQueuedOutgoingMessage;
  v11 = [(HMDMessageHandlerQueuedMessage *)v9 name];
  v12 = [(NSMutableDictionary *)messageNameToQueuedOutgoingMessage objectForKey:v11];

  v13 = v6->_messageNameToQueuedOutgoingMessage;
  v14 = [(HMDMessageHandlerQueuedMessage *)v9 name];
  [(NSMutableDictionary *)v13 setObject:v9 forKey:v14];

  os_unfair_lock_unlock(&v6->_lock);
  if (v12)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v6;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v12 message];
      v23 = 138543618;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Canceling queued outgoing message due to duplicate message name for message: %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    [v12 setDelegate:0];
    [v12 suspendTimer];
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
    v21 = [v12 message];
    [v21 respondWithError:v20];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasQueuedIncomingMessage:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_messageNameToQueuedIncomingMessages allValues];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__HMDMessageHandler_hasQueuedIncomingMessage___block_invoke;
  v9[3] = &unk_278686DC8;
  v6 = v4;
  v10 = v6;
  v7 = [v5 na_firstObjectPassingTest:v9];

  os_unfair_lock_unlock(&self->_lock);
  return v7 != 0;
}

uint64_t __46__HMDMessageHandler_hasQueuedIncomingMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (id)dequeueQueuedIncomingMessages
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMDMessageHandler *)v4 queuedIncomingMessages];
    v12 = 138543618;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Dequeueing incoming messages: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  v8 = [(NSMutableDictionary *)v4->_messageNameToQueuedIncomingMessages allValues];
  [(NSMutableDictionary *)v4->_messageNameToQueuedIncomingMessages removeAllObjects];
  os_unfair_lock_unlock(&v4->_lock);
  v9 = [v8 na_map:&__block_literal_global_45_259961];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id __50__HMDMessageHandler_dequeueQueuedIncomingMessages__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setDelegate:0];
  [v2 suspendTimer];
  v3 = [v2 message];

  return v3;
}

- (id)dequeueIncomingMessage:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Dequeueing incoming message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  v9 = [(NSMutableDictionary *)v6->_messageNameToQueuedIncomingMessages allValues];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __44__HMDMessageHandler_dequeueIncomingMessage___block_invoke;
  v17[3] = &unk_278686DC8;
  v10 = v4;
  v18 = v10;
  v11 = [v9 na_firstObjectPassingTest:v17];

  if (v11)
  {
    [v11 setDelegate:0];
    [v11 suspendTimer];
    messageNameToQueuedIncomingMessages = v6->_messageNameToQueuedIncomingMessages;
    v13 = [v10 name];
    [(NSMutableDictionary *)messageNameToQueuedIncomingMessages removeObjectForKey:v13];

    v14 = [v11 message];
  }

  else
  {
    v14 = 0;
  }

  os_unfair_lock_unlock(&v6->_lock);
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

uint64_t __44__HMDMessageHandler_dequeueIncomingMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5;
}

- (void)queueIncomingMessage:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v23 = 138543618;
    v24 = v8;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Queueing incoming message: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [[HMDMessageHandlerQueuedMessage alloc] initWithMessage:v4 timeInterval:600.0];
  [(HMDMessageHandlerQueuedMessage *)v9 setDelegate:v6];
  [(HMDMessageHandlerQueuedMessage *)v9 resumeTimer];
  os_unfair_lock_lock_with_options();
  messageNameToQueuedIncomingMessages = v6->_messageNameToQueuedIncomingMessages;
  v11 = [(HMDMessageHandlerQueuedMessage *)v9 name];
  v12 = [(NSMutableDictionary *)messageNameToQueuedIncomingMessages objectForKey:v11];

  v13 = v6->_messageNameToQueuedIncomingMessages;
  v14 = [(HMDMessageHandlerQueuedMessage *)v9 name];
  [(NSMutableDictionary *)v13 setObject:v9 forKey:v14];

  os_unfair_lock_unlock(&v6->_lock);
  if (v12)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v6;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v12 message];
      v23 = 138543618;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Canceling queued incoming message due to duplicate message name for message: %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    [v12 setDelegate:0];
    [v12 suspendTimer];
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
    v21 = [v12 message];
    [v21 respondWithError:v20];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)queuedIncomingMessages
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_messageNameToQueuedIncomingMessages allValues];
  os_unfair_lock_unlock(&self->_lock);
  v4 = [v3 na_map:&__block_literal_global_259966];

  return v4;
}

- (BOOL)hasQueuedIncomingMessages
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_messageNameToQueuedIncomingMessages count]!= 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)registerForNotifications
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMessageHandler *)self notifications];
  v4 = [(HMDMessageHandler *)self notificationsToObject];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543874;
    v29 = v8;
    v30 = 2112;
    v31 = v3;
    v32 = 2112;
    v33 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Register for notifications: %@ notifications to objects: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 allKeys];
  v22 = v3;
  v10 = [v3 arrayByAddingObjectsFromArray:v9];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = [(HMDMessageHandler *)v6 selectorForName:v16];
        if (v17)
        {
          v18 = v17;
          v19 = [v4 objectForKeyedSubscript:v16];
          v20 = [(HMDMessageHandler *)v6 notificationCenter];
          [v20 addObserver:v6 selector:v18 name:v16 object:v19];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)registerForSPIRemoteMessages:(id)a3 home:(id)a4 userPrivilege:(unint64_t)a5 internalBuildOnly:(BOOL)a6
{
  v6 = a6;
  v39 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v28 = a4;
  if (v6 && (isInternalBuild() & 1) == 0)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v22;
      v37 = 2112;
      v38 = v9;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Skipping registration for internal build messages: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  else
  {
    v27 = [(HMDMessageHandler *)self messageDispatcher];
    v26 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v10 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v24 = v9;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          if ([(HMDMessageHandler *)self selectorForName:v16])
          {
            v17 = [HMDUserMessagePolicy userMessagePolicyWithHome:v28 userPrivilege:a5 remoteAccessRequired:0];
            v33[0] = v17;
            v33[1] = v10;
            v33[2] = v26;
            v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
            [v27 registerForMessage:v16 receiver:self policies:v18 selector:sel_routeMessage_];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v13);
    }

    v9 = v24;
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessagesWithHome:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMessageHandler *)self ownerPrivateRemoteMessages];
  v6 = [(HMDMessageHandler *)self adminPrivateRemoteMessages];
  v7 = [(HMDMessageHandler *)self internalMessages];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138544130;
    v14 = v11;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Registering for messages owner: %@, admin: %@, internal: %@", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDMessageHandler *)v9 registerForSPIRemoteMessages:v5 home:v4 userPrivilege:3 internalBuildOnly:0];
  [(HMDMessageHandler *)v9 registerForSPIRemoteMessages:v6 home:v4 userPrivilege:4 internalBuildOnly:0];
  [(HMDMessageHandler *)v9 registerForSPIRemoteMessages:v7 home:v4 userPrivilege:3 internalBuildOnly:1];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)configureWithHome:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDMessageHandler *)v6 registerForMessagesWithHome:v4];
  [(HMDMessageHandler *)v6 registerForNotifications];
  [(HMDMessageHandler *)v6 setHome:v4];
  v9 = [v4 homeManager];
  [(HMDMessageHandler *)v6 setHomeManager:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (HMDMessageHandler)initWithMessageTargetUUID:(id)a3 messageDispatcher:(id)a4 notificationCenter:(id)a5 ownerPrivateRemoteMessages:(id)a6 adminPrivateRemoteMessages:(id)a7 internalMessages:(id)a8 notifications:(id)a9 notificationsToObject:(id)a10 appleAccountManager:(id)a11 metricsDispatcher:(id)a12
{
  v17 = a3;
  v42 = a4;
  v18 = a4;
  v50 = a5;
  v49 = a6;
  v48 = a7;
  v43 = a8;
  v47 = a8;
  v19 = a9;
  v20 = a10;
  v46 = a11;
  v21 = a12;
  if (!v17)
  {
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!v18)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!v50)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!v49)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!v48)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  if (!v47)
  {
LABEL_18:
    _HMFPreconditionFailure();
    goto LABEL_19;
  }

  if (!v19)
  {
LABEL_19:
    _HMFPreconditionFailure();
    goto LABEL_20;
  }

  if (!v20)
  {
LABEL_20:
    _HMFPreconditionFailure();
    goto LABEL_21;
  }

  v22 = v21;
  if (!v21)
  {
LABEL_21:
    v33 = _HMFPreconditionFailure();
    return [(HMDMessageHandler *)v33 initWithMessageTargetUUID:v34 messageDispatcher:v35 notificationCenter:v36 ownerPrivateRemoteMessages:v37 adminPrivateRemoteMessages:v38 internalMessages:v39 notifications:v40 notificationsToObject:a9, a10];
  }

  v44 = v20;
  v23 = [v19 arrayByAddingObject:@"HMDAccountAddedDeviceNotification"];

  v51.receiver = self;
  v51.super_class = HMDMessageHandler;
  v24 = [(HMDMessageHandler *)&v51 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_messageTargetUUID, a3);
    objc_storeStrong(&v25->_messageDispatcher, v42);
    objc_storeStrong(&v25->_notificationCenter, a5);
    objc_storeStrong(&v25->_ownerPrivateRemoteMessages, a6);
    objc_storeStrong(&v25->_adminPrivateRemoteMessages, a7);
    objc_storeStrong(&v25->_internalMessages, v43);
    objc_storeStrong(&v25->_notifications, v23);
    objc_storeStrong(&v25->_notificationsToObject, a10);
    objc_storeStrong(&v25->_appleAccountManager, a11);
    v26 = [MEMORY[0x277CBEB38] dictionary];
    messageNameToQueuedIncomingMessages = v25->_messageNameToQueuedIncomingMessages;
    v25->_messageNameToQueuedIncomingMessages = v26;

    v28 = [MEMORY[0x277CBEB38] dictionary];
    messageNameToQueuedOutgoingMessage = v25->_messageNameToQueuedOutgoingMessage;
    v25->_messageNameToQueuedOutgoingMessage = v28;

    v30 = [MEMORY[0x277CBEB38] dictionary];
    deviceIdentifierToQueuedOutgoingMessageNames = v25->_deviceIdentifierToQueuedOutgoingMessageNames;
    v25->_deviceIdentifierToQueuedOutgoingMessageNames = v30;

    objc_storeStrong(&v25->_metricsDispatcher, a12);
  }

  return v25;
}

- (HMDMessageHandler)initWithMessageTargetUUID:(id)a3 messageDispatcher:(id)a4 notificationCenter:(id)a5 ownerPrivateRemoteMessages:(id)a6 adminPrivateRemoteMessages:(id)a7 internalMessages:(id)a8 notifications:(id)a9 notificationsToObject:(id)a10
{
  v16 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [HMDMessageHandlerMetricsDispatcher alloc];
  v25 = +[HMDMetricsManager sharedLogEventSubmitter];
  v26 = [(HMDMessageHandlerMetricsDispatcher *)v24 initWithIdentifier:v23 logEventSubmitter:v25];

  v27 = +[HMDAppleAccountManager sharedManager];
  v30 = [(HMDMessageHandler *)self initWithMessageTargetUUID:v23 messageDispatcher:v22 notificationCenter:v21 ownerPrivateRemoteMessages:v20 adminPrivateRemoteMessages:v19 internalMessages:v18 notifications:v17 notificationsToObject:v16 appleAccountManager:v27 metricsDispatcher:v26];

  return v30;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t60 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t60, &__block_literal_global_70_260012);
  }

  v3 = logCategory__hmf_once_v61;

  return v3;
}

void __32__HMDMessageHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v61;
  logCategory__hmf_once_v61 = v1;
}

@end