@interface HMDMessageHandler
+ (id)logCategory;
- (BOOL)hasQueuedIncomingMessage:(id)message;
- (BOOL)hasQueuedIncomingMessages;
- (BOOL)hasQueuedOutgoingMessage:(id)message;
- (BOOL)hasQueuedOutgoingMessages;
- (BOOL)hasQueuedOutgoingMessagesForDevice:(id)device;
- (BOOL)isReadyForIncomingMessage:(id)message error:(id *)error;
- (BOOL)isReadyForOutgoingMessaging;
- (BOOL)shouldRelayIncomingMessage:(id)message error:(id *)error;
- (HMDHome)home;
- (HMDHomeManager)homeManager;
- (HMDMessageHandler)initWithMessageTargetUUID:(id)d messageDispatcher:(id)dispatcher notificationCenter:(id)center ownerPrivateRemoteMessages:(id)messages adminPrivateRemoteMessages:(id)remoteMessages internalMessages:(id)internalMessages notifications:(id)notifications notificationsToObject:(id)self0;
- (HMDMessageHandler)initWithMessageTargetUUID:(id)d messageDispatcher:(id)dispatcher notificationCenter:(id)center ownerPrivateRemoteMessages:(id)messages adminPrivateRemoteMessages:(id)remoteMessages internalMessages:(id)internalMessages notifications:(id)notifications notificationsToObject:(id)self0 appleAccountManager:(id)self1 metricsDispatcher:(id)self2;
- (HMDMessageHandlerDataSource)dataSource;
- (SEL)selectorForName:(id)name;
- (id)attributeDescriptions;
- (id)currentAccountDevice;
- (id)dequeueIncomingMessage:(id)message;
- (id)dequeueOutgoingMessage:(id)message;
- (id)dequeueQueuedIncomingMessages;
- (id)deviceForMessage:(id)message;
- (id)logIdentifier;
- (id)queuedIncomingMessages;
- (id)queuedOutgoingMessages;
- (id)queuedOutgoingMessagesForDevice:(id)device;
- (void)_cleanUpDeviceMappingsForMessage:(id)message;
- (void)_logMediaDestinationControllerUpdateMetricsUsingMessage:(id)message;
- (void)associateDevice:(id)device withOutgoingMessage:(id)message;
- (void)configureWithHome:(id)home;
- (void)didTriggerMessageHandlerQueuedMessage:(id)message;
- (void)didTriggerQueuedIncomingMessage:(id)message;
- (void)didTriggerQueuedOutgoingMessage:(id)message;
- (void)handleAccountAddedDeviceNotification:(id)notification;
- (void)queueIncomingMessage:(id)message;
- (void)queueOutgoingMessage:(id)message;
- (void)registerForMessagesWithHome:(id)home;
- (void)registerForNotifications;
- (void)registerForSPIRemoteMessages:(id)messages home:(id)home userPrivilege:(unint64_t)privilege internalBuildOnly:(BOOL)only;
- (void)relayMessage:(id)message shouldQueue:(BOOL)queue;
- (void)routeMessage:(id)message shouldQueue:(BOOL)queue;
- (void)routeQueuedIncomingMessages;
- (void)sendQueuedOutgoingMessages;
- (void)sendQueuedOutgoingMessages:(id)messages;
- (void)sendQueuedOutgoingMessagesForDevice:(id)device;
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
  messageTargetUUID = [(HMDMessageHandler *)self messageTargetUUID];
  uUIDString = [messageTargetUUID UUIDString];

  return uUIDString;
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  messageTargetUUID = [(HMDMessageHandler *)self messageTargetUUID];
  v5 = [v3 initWithName:@"messageTargetUUID" value:messageTargetUUID];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)didTriggerQueuedOutgoingMessage:(id)message
{
  v20 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  message = [messageCopy message];
  v6 = [(HMDMessageHandler *)self dequeueOutgoingMessage:message];

  if (v6)
  {
    v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:13];
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v11;
      v16 = 2112;
      v17 = messageCopy;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to send queued outgoing message: %@ error: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [v6 respondWithError:v7];
    metricsDispatcher = [(HMDMessageHandler *)selfCopy metricsDispatcher];
    [metricsDispatcher submitFailureEventOfType:2 message:v6];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didTriggerQueuedIncomingMessage:(id)message
{
  v20 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  message = [messageCopy message];
  v6 = [(HMDMessageHandler *)self dequeueIncomingMessage:message];

  if (v6)
  {
    v7 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:13];
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v11;
      v16 = 2112;
      v17 = messageCopy;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to send queued incoming message: %@ error: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [v6 respondWithError:v7];
    metricsDispatcher = [(HMDMessageHandler *)selfCopy metricsDispatcher];
    [metricsDispatcher submitFailureEventOfType:1 message:v6];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didTriggerMessageHandlerQueuedMessage:(id)message
{
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  message = [messageCopy message];
  v6 = [(HMDMessageHandler *)self hasQueuedIncomingMessage:message];

  if (v6)
  {
    [(HMDMessageHandler *)self didTriggerQueuedIncomingMessage:messageCopy];
  }

  else
  {
    message2 = [messageCopy message];
    v8 = [(HMDMessageHandler *)self hasQueuedOutgoingMessage:message2];

    if (v8)
    {
      [(HMDMessageHandler *)self didTriggerQueuedOutgoingMessage:messageCopy];
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v14 = 138543618;
        v15 = v12;
        v16 = 2112;
        v17 = messageCopy;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Dropping unknown triggered queued message: %@", &v14, 0x16u);
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
  allValues = [(NSMutableDictionary *)self->_messageNameToQueuedIncomingMessages allValues];
  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = allValues;
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
        delegate = [v8 delegate];
        [delegate didTriggerMessageHandlerQueuedMessage:v8];
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
  allValues = [(NSMutableDictionary *)self->_messageNameToQueuedOutgoingMessage allValues];
  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = allValues;
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
        delegate = [v8 delegate];
        [delegate didTriggerMessageHandlerQueuedMessage:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleAccountAddedDeviceNotification:(id)notification
{
  v28 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"HMDDeviceNotificationKey"];

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
    currentAccountDevice = [(HMDMessageHandler *)self currentAccountDevice];
    v11 = currentAccountDevice;
    if (currentAccountDevice)
    {
      identifier = [currentAccountDevice identifier];
      identifier2 = [v9 identifier];
      if ([identifier hmf_isEqualToUUID:identifier2])
      {
        hasQueuedOutgoingMessages = [(HMDMessageHandler *)self hasQueuedOutgoingMessages];

        if (hasQueuedOutgoingMessages)
        {
          v15 = objc_autoreleasePoolPush();
          selfCopy = self;
          v17 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = HMFGetLogIdentifier();
            v24 = 138543362;
            v25 = v18;
            _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Sending queued outgoing messages due to new account device added", &v24, 0xCu);
          }

          objc_autoreleasePoolPop(v15);
          [(HMDMessageHandler *)selfCopy sendQueuedOutgoingMessages];
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
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v22;
      v26 = 2112;
      v27 = notificationCopy;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to get new device from notification: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)isReadyForOutgoingMessaging
{
  v15 = *MEMORY[0x277D85DE8];
  appleAccountManager = [(HMDMessageHandler *)self appleAccountManager];
  device = [appleAccountManager device];

  if (!device)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = appleAccountManager;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Not ready for outgoing messaging due to no device for account manager: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x277D85DE8];
  return device != 0;
}

- (id)currentAccountDevice
{
  appleAccountManager = [(HMDMessageHandler *)self appleAccountManager];
  device = [appleAccountManager device];

  return device;
}

- (id)deviceForMessage:(id)message
{
  v16 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dataSource = [(HMDMessageHandler *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    v7 = [dataSource messageHandler:self deviceForOutgoingMessage:messageCopy];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get remote device message destination due to no data source", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (SEL)selectorForName:(id)name
{
  v40 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy length] < 4)
  {
LABEL_6:
    if ([nameCopy length] >= 3)
    {
      v11 = [nameCopy substringToIndex:3];
      v12 = [nameCopy substringToIndex:3];
      uppercaseString = [v12 uppercaseString];
      if ([v11 isEqualToString:uppercaseString])
      {
        v8 = 2;
        v14 = [nameCopy substringToIndex:2];
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

  v5 = [nameCopy substringToIndex:4];
  v6 = [nameCopy substringToIndex:4];
  uppercaseString2 = [v6 uppercaseString];
  if (([v5 isEqualToString:uppercaseString2] & 1) == 0)
  {

    goto LABEL_6;
  }

  v8 = 3;
  v9 = [nameCopy substringToIndex:3];
  v10 = [v9 isEqualToString:@"HMD"];

  if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_9:
  v16 = MEMORY[0x277CCACA8];
  v17 = [nameCopy substringFromIndex:v8];
  v18 = [v16 stringWithFormat:@"handle%@:", v17];

  v19 = NSSelectorFromString(v18);
  if (!v19)
  {
LABEL_18:
    v27 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    v37 = nameCopy;
    v38 = 2112;
    v39 = v18;
    v31 = "%{public}@Failed to parse name: %@ selector: %@";
LABEL_20:
    _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, v31, buf, 0x20u);

    goto LABEL_21;
  }

  v20 = v19;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v29 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v30 = HMFGetLogIdentifier();
    *buf = 138543874;
    v35 = v30;
    v36 = 2112;
    v37 = nameCopy;
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
    selfCopy3 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543874;
      v35 = v26;
      v36 = 2112;
      v37 = nameCopy;
      v38 = 2112;
      v39 = v18;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to route message due to unsafe return type on handler for name: %@ selector: %@", buf, 0x20u);
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
  dequeueQueuedIncomingMessages = [(HMDMessageHandler *)self dequeueQueuedIncomingMessages];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v7;
    v21 = 2112;
    v22 = dequeueQueuedIncomingMessages;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Routing queued incoming messages: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = dequeueQueuedIncomingMessages;
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

        [(HMDMessageHandler *)selfCopy routeMessage:*(*(&v14 + 1) + 8 * v12++), v14];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)sendQueuedOutgoingMessages:(id)messages
{
  v24 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v21 = v8;
    v22 = 2112;
    v23 = messagesCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Sending queued messages: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = messagesCopy;
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

        [(HMDMessageHandler *)selfCopy relayMessage:*(*(&v15 + 1) + 8 * v13++) shouldQueue:0, v15];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)sendQueuedOutgoingMessagesForDevice:(id)device
{
  v4 = [(HMDMessageHandler *)self queuedOutgoingMessagesForDevice:device];
  [(HMDMessageHandler *)self sendQueuedOutgoingMessages:v4];
}

- (void)sendQueuedOutgoingMessages
{
  queuedOutgoingMessages = [(HMDMessageHandler *)self queuedOutgoingMessages];
  [(HMDMessageHandler *)self sendQueuedOutgoingMessages:queuedOutgoingMessages];
}

- (BOOL)hasQueuedOutgoingMessagesForDevice:(id)device
{
  deviceCopy = device;
  os_unfair_lock_lock_with_options();
  deviceIdentifierToQueuedOutgoingMessageNames = self->_deviceIdentifierToQueuedOutgoingMessageNames;
  identifier = [deviceCopy identifier];
  v7 = [(NSMutableDictionary *)deviceIdentifierToQueuedOutgoingMessageNames objectForKey:identifier];

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

- (BOOL)shouldRelayIncomingMessage:(id)message error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dataSource = [(HMDMessageHandler *)self dataSource];
  v8 = [dataSource messageHandler:self shouldRelayIncomingMessage:messageCopy];
  v9 = v8;
  if (v8)
  {
    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = dataSource;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to get relay preference from data source: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      *error = bOOLValue = 0;
    }

    else
    {
      bOOLValue = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (BOOL)isReadyForIncomingMessage:(id)message error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dataSource = [(HMDMessageHandler *)self dataSource];
  if (dataSource)
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [dataSource messageHandler:self isReadyForIncomingMessage:messageCopy];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to get is ready for message value due to no data source", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)relayMessage:(id)message shouldQueue:(BOOL)queue
{
  queueCopy = queue;
  v56 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMFBooleanToString();
    *buf = 138543874;
    v51 = v10;
    v52 = 2112;
    v53 = messageCopy;
    v54 = 2112;
    v55 = v11;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Relaying message: %@ should queue: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if ([messageCopy isRemote])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v51 = v15;
      v52 = 2112;
      v53 = messageCopy;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to relay remote message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
    [messageCopy respondWithError:v16];
    metricsDispatcher = [(HMDMessageHandler *)v13 metricsDispatcher];
    [metricsDispatcher submitFailureEventOfType:0 message:messageCopy];
  }

  else
  {
    if (queueCopy)
    {
      [(HMDMessageHandler *)selfCopy queueOutgoingMessage:messageCopy];
    }

    v18 = [(HMDMessageHandler *)selfCopy deviceForMessage:messageCopy];
    if (v18)
    {
      v16 = v18;
      [(HMDMessageHandler *)selfCopy associateDevice:v18 withOutgoingMessage:messageCopy];
      if ([(HMDMessageHandler *)selfCopy isReadyForOutgoingMessaging])
      {
        v19 = [(HMDMessageHandler *)selfCopy dequeueOutgoingMessage:messageCopy];

        if (v19)
        {
          v20 = [HMDRemoteDeviceMessageDestination alloc];
          messageTargetUUID = [(HMDMessageHandler *)selfCopy messageTargetUUID];
          v22 = [(HMDRemoteDeviceMessageDestination *)v20 initWithTarget:messageTargetUUID device:v16];

          name = [v19 name];
          remoteRestriction = [v19 remoteRestriction];
          if ([name isEqualToString:@"HMMediaDestinationControllerUpdateDestinationRequestMessage"])
          {
            v25 = objc_autoreleasePoolPush();
            v26 = selfCopy;
            v27 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v28 = HMFGetLogIdentifier();
              [MEMORY[0x277CCABB0] numberWithUnsignedInteger:9];
              v29 = v49 = v25;
              *buf = 138543874;
              v51 = v28;
              v52 = 2112;
              v53 = v29;
              v54 = 2112;
              v55 = @"HMMediaDestinationControllerUpdateDestinationRequestMessage";
              _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Setting remote message restriction:%@ for message %@ ", buf, 0x20u);

              v25 = v49;
            }

            objc_autoreleasePoolPop(v25);
            remoteRestriction = 9;
          }

          messageDispatcher = [(HMDMessageHandler *)selfCopy messageDispatcher];
          name2 = [v19 name];
          qualityOfService = [v19 qualityOfService];
          messagePayload = [v19 messagePayload];
          v34 = [HMDRemoteMessage secureMessageWithName:name2 qualityOfService:qualityOfService destination:v22 messagePayload:messagePayload restriction:remoteRestriction];

          responseHandler = [v19 responseHandler];
          [v34 setResponseHandler:responseHandler];

          [messageDispatcher sendMessage:v34];
          messageCopy = v19;
        }

        else
        {
          v44 = objc_autoreleasePoolPush();
          v45 = selfCopy;
          v46 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            v47 = HMFGetLogIdentifier();
            *buf = 138543362;
            v51 = v47;
            _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Skipping relaying of message due to message already being dequeued on different thread", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v44);
          messageCopy = 0;
        }
      }

      else
      {
        v40 = objc_autoreleasePoolPush();
        v41 = selfCopy;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138543618;
          v51 = v43;
          v52 = 2112;
          v53 = messageCopy;
          _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Leaving message in queue until ready for outgoing message: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v40);
      }
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      v37 = selfCopy;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543618;
        v51 = v39;
        v52 = 2112;
        v53 = messageCopy;
        _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Leaving message in queue until device is found for message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v36);
      v16 = 0;
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (void)_logMediaDestinationControllerUpdateMetricsUsingMessage:(id)message
{
  v47 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  home = [(HMDMessageHandler *)self home];
  homeTheaterSetupMetricDispatcher = [home homeTheaterSetupMetricDispatcher];
  v7 = homeTheaterSetupMetricDispatcher;
  if (home && homeTheaterSetupMetricDispatcher)
  {
    name = [messageCopy name];
    messagePayload = [messageCopy messagePayload];
    if ([name isEqualToString:@"HMMediaDestinationControllerUpdateDestinationRequestMessage"] && messagePayload)
    {
      v10 = [messagePayload objectForKeyedSubscript:*MEMORY[0x277CD0858]];
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
      selfCopy = self;
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
          _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Destination UUID string %@ or UUID %@ is nil", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v14);
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v25 = v37 = v14;
          messageTargetUUID = [(HMDMessageHandler *)selfCopy messageTargetUUID];
          *buf = 138543874;
          v42 = v25;
          v43 = 2112;
          v44 = messageTargetUUID;
          v45 = 2112;
          v46 = v12;
          _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Received request to update controller %@ with destination identifier %@", buf, 0x20u);

          v14 = v37;
        }

        objc_autoreleasePoolPop(v14);
        if ([v12 isEqualToString:*MEMORY[0x277CD0860]])
        {
          messageTargetUUID2 = [(HMDMessageHandler *)selfCopy messageTargetUUID];
          [v7 markRequestReceivedForGroupIdentifier:messageTargetUUID2 metricType:4 setupSessionIdentifier:0 setupRequestOption:0 setupSessionStartTimeMS:0];
        }

        else
        {
          v40 = 0.0;
          homeManager = [home homeManager];
          v29 = [homeManager firstSetupSessionIdentifierOutputStartTime:&v40];

          v30 = objc_autoreleasePoolPush();
          v31 = selfCopy;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v33 = v38 = v30;
            *buf = 138543618;
            v42 = v33;
            v43 = 2112;
            v44 = v29;
            _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Found associated setup session identifier %@ during home theater grouping", buf, 0x16u);

            v30 = v38;
          }

          objc_autoreleasePoolPop(v30);
          v34 = 1000 * v40;
          messageTargetUUID3 = [(HMDMessageHandler *)v31 messageTargetUUID];
          [v7 markRequestReceivedForGroupIdentifier:messageTargetUUID3 metricType:3 setupSessionIdentifier:v29 setupRequestOption:0 setupSessionStartTimeMS:v34];
        }
      }
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to log media destination controller update metrics due to either no home or metric dispatcher", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)routeMessage:(id)message shouldQueue:(BOOL)queue
{
  v47 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v44 = v9;
    v45 = 2112;
    v46 = messageCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Routing message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  responseHandler = [messageCopy responseHandler];

  if (!responseHandler)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v21;
      v45 = 2112;
      v46 = messageCopy;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to route message due to no response handler from message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v13 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    goto LABEL_11;
  }

  [(HMDMessageHandler *)selfCopy queueIncomingMessage:messageCopy];
  v42 = 0;
  v11 = [(HMDMessageHandler *)selfCopy isReadyForIncomingMessage:messageCopy error:&v42];
  v12 = v42;
  if (v12)
  {
    v13 = v12;
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v17;
      v45 = 2112;
      v46 = v13;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to route message due to ready preference error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
LABEL_11:
    [messageCopy respondWithError:v13];

    goto LABEL_12;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  v23 = [(HMDMessageHandler *)selfCopy dequeueIncomingMessage:messageCopy];

  if (v23)
  {
    v41 = 0;
    v24 = [(HMDMessageHandler *)selfCopy shouldRelayIncomingMessage:v23 error:&v41];
    v25 = v41;
    if (v25)
    {
      v26 = v25;
      v27 = objc_autoreleasePoolPush();
      v28 = selfCopy;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        v44 = v30;
        v45 = 2112;
        v46 = v26;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to route message due to relay preference error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
    }

    else
    {
      [(HMDMessageHandler *)selfCopy _logMediaDestinationControllerUpdateMetricsUsingMessage:v23];
      if (v24)
      {
        [(HMDMessageHandler *)selfCopy relayMessage:v23];
        goto LABEL_27;
      }

      name = [v23 name];
      v36 = [(HMDMessageHandler *)selfCopy selectorForName:name];

      if (v36)
      {
        [(HMDMessageHandler *)selfCopy performSelector:v36 withObject:v23];
        goto LABEL_27;
      }

      v37 = objc_autoreleasePoolPush();
      v38 = selfCopy;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543618;
        v44 = v40;
        v45 = 2112;
        v46 = v23;
        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to route message due to no handler available for message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v37);
      v26 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    }

    [v23 respondWithError:v26];

LABEL_27:
    messageCopy = v23;
    goto LABEL_12;
  }

  v31 = objc_autoreleasePoolPush();
  v32 = selfCopy;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = HMFGetLogIdentifier();
    *buf = 138543362;
    v44 = v34;
    _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Skipping routing message since message was already dequeued on another thread", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v31);
  messageCopy = 0;
LABEL_12:

  v22 = *MEMORY[0x277D85DE8];
}

- (id)queuedOutgoingMessagesForDevice:(id)device
{
  deviceCopy = device;
  os_unfair_lock_lock_with_options();
  deviceIdentifierToQueuedOutgoingMessageNames = self->_deviceIdentifierToQueuedOutgoingMessageNames;
  identifier = [deviceCopy identifier];
  v7 = [(NSMutableDictionary *)deviceIdentifierToQueuedOutgoingMessageNames objectForKey:identifier];

  if (v7)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__HMDMessageHandler_queuedOutgoingMessagesForDevice___block_invoke;
    v11[3] = &unk_279733270;
    v11[4] = self;
    v8 = [v7 na_map:v11];
    allObjects = [v8 allObjects];
  }

  else
  {
    allObjects = MEMORY[0x277CBEBF8];
  }

  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
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
  allValues = [(NSMutableDictionary *)self->_messageNameToQueuedOutgoingMessage allValues];
  os_unfair_lock_unlock(&self->_lock);
  v4 = [allValues na_map:&__block_literal_global_48_177948];

  return v4;
}

- (BOOL)hasQueuedOutgoingMessage:(id)message
{
  messageCopy = message;
  os_unfair_lock_lock_with_options();
  allValues = [(NSMutableDictionary *)self->_messageNameToQueuedOutgoingMessage allValues];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__HMDMessageHandler_hasQueuedOutgoingMessage___block_invoke;
  v9[3] = &unk_279733248;
  v6 = messageCopy;
  v10 = v6;
  v7 = [allValues na_firstObjectPassingTest:v9];

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

- (void)_cleanUpDeviceMappingsForMessage:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  os_unfair_lock_assert_owner(&self->_lock);
  allKeys = [(NSMutableDictionary *)self->_deviceIdentifierToQueuedOutgoingMessageNames allKeys];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_deviceIdentifierToQueuedOutgoingMessageNames objectForKey:v10];
        if (v11)
        {
          name = [messageCopy name];
          [v11 removeObject:name];

          if (![v11 count])
          {
            [(NSMutableDictionary *)self->_deviceIdentifierToQueuedOutgoingMessageNames removeObjectForKey:v10];
          }
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)dequeueOutgoingMessage:(id)message
{
  v23 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = messageCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Dequeueing outgoing message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  allValues = [(NSMutableDictionary *)selfCopy->_messageNameToQueuedOutgoingMessage allValues];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __44__HMDMessageHandler_dequeueOutgoingMessage___block_invoke;
  v17[3] = &unk_279733248;
  v10 = messageCopy;
  v18 = v10;
  v11 = [allValues na_firstObjectPassingTest:v17];

  if (v11)
  {
    [v11 setDelegate:0];
    [v11 suspendTimer];
    messageNameToQueuedOutgoingMessage = selfCopy->_messageNameToQueuedOutgoingMessage;
    name = [v10 name];
    [(NSMutableDictionary *)messageNameToQueuedOutgoingMessage removeObjectForKey:name];

    [(HMDMessageHandler *)selfCopy _cleanUpDeviceMappingsForMessage:v10];
    message = [v11 message];
  }

  else
  {
    message = 0;
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
  v15 = *MEMORY[0x277D85DE8];

  return message;
}

uint64_t __44__HMDMessageHandler_dequeueOutgoingMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5;
}

- (void)associateDevice:(id)device withOutgoingMessage:(id)message
{
  v22 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v16 = 138543874;
    v17 = v11;
    v18 = 2112;
    v19 = deviceCopy;
    v20 = 2112;
    v21 = messageCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Associating device: %@ with outgoing message: %@", &v16, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  identifier = [deviceCopy identifier];
  v13 = [(NSMutableDictionary *)selfCopy->_deviceIdentifierToQueuedOutgoingMessageNames objectForKey:identifier];
  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(NSMutableDictionary *)selfCopy->_deviceIdentifierToQueuedOutgoingMessageNames setObject:v13 forKey:identifier];
  }

  name = [messageCopy name];
  [v13 addObject:name];

  os_unfair_lock_unlock(&selfCopy->_lock);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)queueOutgoingMessage:(id)message
{
  v27 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v23 = 138543618;
    v24 = v8;
    v25 = 2112;
    v26 = messageCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Queueing outgoing message: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [[HMDMessageHandlerQueuedMessage alloc] initWithMessage:messageCopy timeInterval:180.0];
  [(HMDMessageHandlerQueuedMessage *)v9 setDelegate:selfCopy];
  [(HMDMessageHandlerQueuedMessage *)v9 resumeTimer];
  os_unfair_lock_lock_with_options();
  messageNameToQueuedOutgoingMessage = selfCopy->_messageNameToQueuedOutgoingMessage;
  name = [(HMDMessageHandlerQueuedMessage *)v9 name];
  v12 = [(NSMutableDictionary *)messageNameToQueuedOutgoingMessage objectForKey:name];

  v13 = selfCopy->_messageNameToQueuedOutgoingMessage;
  name2 = [(HMDMessageHandlerQueuedMessage *)v9 name];
  [(NSMutableDictionary *)v13 setObject:v9 forKey:name2];

  os_unfair_lock_unlock(&selfCopy->_lock);
  if (v12)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      message = [v12 message];
      v23 = 138543618;
      v24 = v18;
      v25 = 2112;
      v26 = message;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Canceling queued outgoing message due to duplicate message name for message: %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    [v12 setDelegate:0];
    [v12 suspendTimer];
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
    message2 = [v12 message];
    [message2 respondWithError:v20];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasQueuedIncomingMessage:(id)message
{
  messageCopy = message;
  os_unfair_lock_lock_with_options();
  allValues = [(NSMutableDictionary *)self->_messageNameToQueuedIncomingMessages allValues];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__HMDMessageHandler_hasQueuedIncomingMessage___block_invoke;
  v9[3] = &unk_279733248;
  v6 = messageCopy;
  v10 = v6;
  v7 = [allValues na_firstObjectPassingTest:v9];

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
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    queuedIncomingMessages = [(HMDMessageHandler *)selfCopy queuedIncomingMessages];
    v12 = 138543618;
    v13 = v6;
    v14 = 2112;
    v15 = queuedIncomingMessages;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Dequeueing incoming messages: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  os_unfair_lock_lock_with_options();
  allValues = [(NSMutableDictionary *)selfCopy->_messageNameToQueuedIncomingMessages allValues];
  [(NSMutableDictionary *)selfCopy->_messageNameToQueuedIncomingMessages removeAllObjects];
  os_unfair_lock_unlock(&selfCopy->_lock);
  v9 = [allValues na_map:&__block_literal_global_45_177959];

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

- (id)dequeueIncomingMessage:(id)message
{
  v23 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v8;
    v21 = 2112;
    v22 = messageCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Dequeueing incoming message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  allValues = [(NSMutableDictionary *)selfCopy->_messageNameToQueuedIncomingMessages allValues];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __44__HMDMessageHandler_dequeueIncomingMessage___block_invoke;
  v17[3] = &unk_279733248;
  v10 = messageCopy;
  v18 = v10;
  v11 = [allValues na_firstObjectPassingTest:v17];

  if (v11)
  {
    [v11 setDelegate:0];
    [v11 suspendTimer];
    messageNameToQueuedIncomingMessages = selfCopy->_messageNameToQueuedIncomingMessages;
    name = [v10 name];
    [(NSMutableDictionary *)messageNameToQueuedIncomingMessages removeObjectForKey:name];

    message = [v11 message];
  }

  else
  {
    message = 0;
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
  v15 = *MEMORY[0x277D85DE8];

  return message;
}

uint64_t __44__HMDMessageHandler_dequeueIncomingMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5;
}

- (void)queueIncomingMessage:(id)message
{
  v27 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v23 = 138543618;
    v24 = v8;
    v25 = 2112;
    v26 = messageCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Queueing incoming message: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [[HMDMessageHandlerQueuedMessage alloc] initWithMessage:messageCopy timeInterval:600.0];
  [(HMDMessageHandlerQueuedMessage *)v9 setDelegate:selfCopy];
  [(HMDMessageHandlerQueuedMessage *)v9 resumeTimer];
  os_unfair_lock_lock_with_options();
  messageNameToQueuedIncomingMessages = selfCopy->_messageNameToQueuedIncomingMessages;
  name = [(HMDMessageHandlerQueuedMessage *)v9 name];
  v12 = [(NSMutableDictionary *)messageNameToQueuedIncomingMessages objectForKey:name];

  v13 = selfCopy->_messageNameToQueuedIncomingMessages;
  name2 = [(HMDMessageHandlerQueuedMessage *)v9 name];
  [(NSMutableDictionary *)v13 setObject:v9 forKey:name2];

  os_unfair_lock_unlock(&selfCopy->_lock);
  if (v12)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      message = [v12 message];
      v23 = 138543618;
      v24 = v18;
      v25 = 2112;
      v26 = message;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Canceling queued incoming message due to duplicate message name for message: %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    [v12 setDelegate:0];
    [v12 suspendTimer];
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
    message2 = [v12 message];
    [message2 respondWithError:v20];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)queuedIncomingMessages
{
  os_unfair_lock_lock_with_options();
  allValues = [(NSMutableDictionary *)self->_messageNameToQueuedIncomingMessages allValues];
  os_unfair_lock_unlock(&self->_lock);
  v4 = [allValues na_map:&__block_literal_global_177964];

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
  notifications = [(HMDMessageHandler *)self notifications];
  notificationsToObject = [(HMDMessageHandler *)self notificationsToObject];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543874;
    v29 = v8;
    v30 = 2112;
    v31 = notifications;
    v32 = 2112;
    v33 = notificationsToObject;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Register for notifications: %@ notifications to objects: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  allKeys = [notificationsToObject allKeys];
  v22 = notifications;
  v10 = [notifications arrayByAddingObjectsFromArray:allKeys];

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
        v17 = [(HMDMessageHandler *)selfCopy selectorForName:v16];
        if (v17)
        {
          v18 = v17;
          v19 = [notificationsToObject objectForKeyedSubscript:v16];
          notificationCenter = [(HMDMessageHandler *)selfCopy notificationCenter];
          [notificationCenter addObserver:selfCopy selector:v18 name:v16 object:v19];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)registerForSPIRemoteMessages:(id)messages home:(id)home userPrivilege:(unint64_t)privilege internalBuildOnly:(BOOL)only
{
  onlyCopy = only;
  v39 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  homeCopy = home;
  if (onlyCopy && (isInternalBuild() & 1) == 0)
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v22;
      v37 = 2112;
      v38 = messagesCopy;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Skipping registration for internal build messages: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  else
  {
    messageDispatcher = [(HMDMessageHandler *)self messageDispatcher];
    v26 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v10 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v24 = messagesCopy;
    v11 = messagesCopy;
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
            v17 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:privilege remoteAccessRequired:0];
            v33[0] = v17;
            v33[1] = v10;
            v33[2] = v26;
            v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
            [messageDispatcher registerForMessage:v16 receiver:self policies:v18 selector:sel_routeMessage_];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v13);
    }

    messagesCopy = v24;
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessagesWithHome:(id)home
{
  v21 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  ownerPrivateRemoteMessages = [(HMDMessageHandler *)self ownerPrivateRemoteMessages];
  adminPrivateRemoteMessages = [(HMDMessageHandler *)self adminPrivateRemoteMessages];
  internalMessages = [(HMDMessageHandler *)self internalMessages];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138544130;
    v14 = v11;
    v15 = 2112;
    v16 = ownerPrivateRemoteMessages;
    v17 = 2112;
    v18 = adminPrivateRemoteMessages;
    v19 = 2112;
    v20 = internalMessages;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Registering for messages owner: %@, admin: %@, internal: %@", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDMessageHandler *)selfCopy registerForSPIRemoteMessages:ownerPrivateRemoteMessages home:homeCopy userPrivilege:3 internalBuildOnly:0];
  [(HMDMessageHandler *)selfCopy registerForSPIRemoteMessages:adminPrivateRemoteMessages home:homeCopy userPrivilege:4 internalBuildOnly:0];
  [(HMDMessageHandler *)selfCopy registerForSPIRemoteMessages:internalMessages home:homeCopy userPrivilege:3 internalBuildOnly:1];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)configureWithHome:(id)home
{
  v13 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDMessageHandler *)selfCopy registerForMessagesWithHome:homeCopy];
  [(HMDMessageHandler *)selfCopy registerForNotifications];
  [(HMDMessageHandler *)selfCopy setHome:homeCopy];
  homeManager = [homeCopy homeManager];
  [(HMDMessageHandler *)selfCopy setHomeManager:homeManager];

  v10 = *MEMORY[0x277D85DE8];
}

- (HMDMessageHandler)initWithMessageTargetUUID:(id)d messageDispatcher:(id)dispatcher notificationCenter:(id)center ownerPrivateRemoteMessages:(id)messages adminPrivateRemoteMessages:(id)remoteMessages internalMessages:(id)internalMessages notifications:(id)notifications notificationsToObject:(id)self0 appleAccountManager:(id)self1 metricsDispatcher:(id)self2
{
  dCopy = d;
  dispatcherCopy = dispatcher;
  dispatcherCopy2 = dispatcher;
  centerCopy = center;
  messagesCopy = messages;
  remoteMessagesCopy = remoteMessages;
  internalMessagesCopy = internalMessages;
  internalMessagesCopy2 = internalMessages;
  notificationsCopy = notifications;
  objectCopy = object;
  managerCopy = manager;
  metricsDispatcherCopy = metricsDispatcher;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!dispatcherCopy2)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!centerCopy)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!messagesCopy)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!remoteMessagesCopy)
  {
LABEL_17:
    _HMFPreconditionFailure();
    goto LABEL_18;
  }

  if (!internalMessagesCopy2)
  {
LABEL_18:
    _HMFPreconditionFailure();
    goto LABEL_19;
  }

  if (!notificationsCopy)
  {
LABEL_19:
    _HMFPreconditionFailure();
    goto LABEL_20;
  }

  if (!objectCopy)
  {
LABEL_20:
    _HMFPreconditionFailure();
    goto LABEL_21;
  }

  v22 = metricsDispatcherCopy;
  if (!metricsDispatcherCopy)
  {
LABEL_21:
    v33 = _HMFPreconditionFailure();
    return [(HMDMessageHandler *)v33 initWithMessageTargetUUID:v34 messageDispatcher:v35 notificationCenter:v36 ownerPrivateRemoteMessages:v37 adminPrivateRemoteMessages:v38 internalMessages:v39 notifications:v40 notificationsToObject:notifications, object];
  }

  v44 = objectCopy;
  v23 = [notificationsCopy arrayByAddingObject:@"HMDAccountAddedDeviceNotification"];

  v51.receiver = self;
  v51.super_class = HMDMessageHandler;
  v24 = [(HMDMessageHandler *)&v51 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_messageTargetUUID, d);
    objc_storeStrong(&v25->_messageDispatcher, dispatcherCopy);
    objc_storeStrong(&v25->_notificationCenter, center);
    objc_storeStrong(&v25->_ownerPrivateRemoteMessages, messages);
    objc_storeStrong(&v25->_adminPrivateRemoteMessages, remoteMessages);
    objc_storeStrong(&v25->_internalMessages, internalMessagesCopy);
    objc_storeStrong(&v25->_notifications, v23);
    objc_storeStrong(&v25->_notificationsToObject, object);
    objc_storeStrong(&v25->_appleAccountManager, manager);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    messageNameToQueuedIncomingMessages = v25->_messageNameToQueuedIncomingMessages;
    v25->_messageNameToQueuedIncomingMessages = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    messageNameToQueuedOutgoingMessage = v25->_messageNameToQueuedOutgoingMessage;
    v25->_messageNameToQueuedOutgoingMessage = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    deviceIdentifierToQueuedOutgoingMessageNames = v25->_deviceIdentifierToQueuedOutgoingMessageNames;
    v25->_deviceIdentifierToQueuedOutgoingMessageNames = dictionary3;

    objc_storeStrong(&v25->_metricsDispatcher, metricsDispatcher);
  }

  return v25;
}

- (HMDMessageHandler)initWithMessageTargetUUID:(id)d messageDispatcher:(id)dispatcher notificationCenter:(id)center ownerPrivateRemoteMessages:(id)messages adminPrivateRemoteMessages:(id)remoteMessages internalMessages:(id)internalMessages notifications:(id)notifications notificationsToObject:(id)self0
{
  objectCopy = object;
  notificationsCopy = notifications;
  internalMessagesCopy = internalMessages;
  remoteMessagesCopy = remoteMessages;
  messagesCopy = messages;
  centerCopy = center;
  dispatcherCopy = dispatcher;
  dCopy = d;
  v24 = [HMDMessageHandlerMetricsDispatcher alloc];
  v25 = +[HMDMetricsManager sharedLogEventSubmitter];
  v26 = [(HMDMessageHandlerMetricsDispatcher *)v24 initWithIdentifier:dCopy logEventSubmitter:v25];

  v27 = +[HMDAppleAccountManager sharedManager];
  v30 = [(HMDMessageHandler *)self initWithMessageTargetUUID:dCopy messageDispatcher:dispatcherCopy notificationCenter:centerCopy ownerPrivateRemoteMessages:messagesCopy adminPrivateRemoteMessages:remoteMessagesCopy internalMessages:internalMessagesCopy notifications:notificationsCopy notificationsToObject:objectCopy appleAccountManager:v27 metricsDispatcher:v26];

  return v30;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t60_178010 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t60_178010, &__block_literal_global_70_178011);
  }

  v3 = logCategory__hmf_once_v61_178012;

  return v3;
}

uint64_t __32__HMDMessageHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v61_178012;
  logCategory__hmf_once_v61_178012 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end