@interface HMBCloudPushHandler
+ (id)logCategory;
+ (id)sharedHandlerForEnvironment:(id)environment;
- (HMBCloudPushHandler)initWithAPSConnection:(id)connection;
- (void)_performObserverCallback:(os_unfair_lock_s *)callback;
- (void)addObserver:(id)observer forBundleIdentifier:(id)identifier;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)removeAllObserversForBundleIdentifier:(id)identifier;
@end

@implementation HMBCloudPushHandler

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  v36 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v31 = v11;
    v32 = 2112;
    v33 = connectionCopy;
    v34 = 2112;
    v35 = messageCopy;
    _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_INFO, "%{public}@connection: %@ didReceiveIncomingMessage: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = objc_autoreleasePoolPush();
  v13 = selfCopy;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    topic = [messageCopy topic];
    userInfo = [messageCopy userInfo];
    *buf = 138543874;
    v31 = v15;
    v32 = 2112;
    v33 = topic;
    v34 = 2112;
    v35 = userInfo;
    _os_log_impl(&dword_22AD27000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Handling incoming APS message with topic: %@ userInfo: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __60__HMBCloudPushHandler_connection_didReceiveIncomingMessage___block_invoke;
  v28[3] = &unk_2786E1AB0;
  v28[4] = v13;
  v18 = messageCopy;
  v29 = v18;
  [(HMBCloudPushHandler *)v13 _performObserverCallback:v28];
  v19 = MEMORY[0x277CBC4C0];
  userInfo2 = [v18 userInfo];
  v21 = [v19 notificationFromRemoteNotificationDictionary:userInfo2];

  if (v21)
  {
    v22 = v27;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v23 = __60__HMBCloudPushHandler_connection_didReceiveIncomingMessage___block_invoke_2;
    v24 = v21;
  }

  else
  {
    v22 = v26;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v23 = __60__HMBCloudPushHandler_connection_didReceiveIncomingMessage___block_invoke_3;
    v24 = v18;
  }

  v22[2] = v23;
  v22[3] = &unk_2786E1AB0;
  v22[4] = v13;
  v22[5] = v24;
  [(HMBCloudPushHandler *)v13 _performObserverCallback:v22];

  v25 = *MEMORY[0x277D85DE8];
}

void __60__HMBCloudPushHandler_connection_didReceiveIncomingMessage___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) topic];
    [v5 handler:v3 didReceivePushForTopic:v4];
  }
}

- (void)_performObserverCallback:(os_unfair_lock_s *)callback
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (callback)
  {
    os_unfair_lock_lock_with_options();
    v5 = objc_getProperty(callback, v4, 24, 1);
    v6 = NSAllMapTableKeys(v5);

    os_unfair_lock_unlock(callback + 2);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v3[2](v3, *(*(&v12 + 1) + 8 * v10++));
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __60__HMBCloudPushHandler_connection_didReceiveIncomingMessage___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 handler:*(a1 + 32) didReceiveCKNotification:*(a1 + 40)];
  }
}

void __60__HMBCloudPushHandler_connection_didReceiveIncomingMessage___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) userInfo];
    [v5 handler:v3 didReceiveMessageWithUserInfo:v4];
  }
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  v19 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  tokenCopy = token;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543874;
    v14 = v11;
    v15 = 2112;
    v16 = connectionCopy;
    v17 = 2112;
    v18 = tokenCopy;
    _os_log_impl(&dword_22AD27000, v10, OS_LOG_TYPE_INFO, "%{public}@connection: %@ didReceivePublicToken: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  v29 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  tokenCopy = token;
  topicCopy = topic;
  identifierCopy = identifier;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v19 = 138544386;
    v20 = v17;
    v21 = 2112;
    v22 = connectionCopy;
    v23 = 2112;
    v24 = tokenCopy;
    v25 = 2112;
    v26 = topicCopy;
    v27 = 2112;
    v28 = identifierCopy;
    _os_log_impl(&dword_22AD27000, v16, OS_LOG_TYPE_INFO, "%{public}@connection: %@ didReceiveToken: %@ forTopic: %@ identifier: %@", &v19, 0x34u);
  }

  objc_autoreleasePoolPop(v14);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)removeAllObserversForBundleIdentifier:(id)identifier
{
  v50 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  if (self)
  {
    Property = objc_getProperty(self, v5, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v8 = [v7 copy];

  v10 = [v8 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v10)
  {
    v11 = *v42;
    do
    {
      v12 = 0;
      do
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v41 + 1) + 8 * v12);
        if (self)
        {
          v14 = objc_getProperty(self, v9, 24, 1);
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;
        v16 = [v15 objectForKey:v13];

        if ([v16 isEqualToString:identifierCopy])
        {
          if (self)
          {
            v18 = objc_getProperty(self, v17, 24, 1);
          }

          else
          {
            v18 = 0;
          }

          v19 = v18;
          [v19 removeObjectForKey:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v20 = [v8 countByEnumeratingWithState:&v41 objects:v49 count:16];
      v10 = v20;
    }

    while (v20);
  }

  os_unfair_lock_unlock(&self->_lock);
  lock = &self->_apsLock;
  os_unfair_lock_lock_with_options();
  v22 = [@"com.apple.icloud-container." stringByAppendingString:identifierCopy];
  v23 = MEMORY[0x277CBEB58];
  if (self)
  {
    v24 = objc_getProperty(self, v21, 16, 1);
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  enabledTopics = [v25 enabledTopics];
  v27 = [v23 setWithArray:enabledTopics];

  [v27 removeObject:v22];
  v28 = objc_autoreleasePoolPush();
  selfCopy = self;
  v30 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = HMFGetLogIdentifier();
    *buf = 138543618;
    v46 = v31;
    v47 = 2112;
    v48 = v22;
    _os_log_impl(&dword_22AD27000, v30, OS_LOG_TYPE_INFO, "%{public}@Removing enabled topic from APS connection: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v28);
  allObjects = [v27 allObjects];
  if (self)
  {
    v34 = objc_getProperty(selfCopy, v32, 16, 1);
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  [v35 setEnabledTopics:allObjects];

  if (self)
  {
    v37 = objc_getProperty(selfCopy, v36, 16, 1);
  }

  else
  {
    v37 = 0;
  }

  v38 = v37;
  [v38 invalidateTokenForTopic:v22 identifier:0];

  os_unfair_lock_unlock(lock);
  v39 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)observer forBundleIdentifier:(id)identifier
{
  v37 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  if (self)
  {
    Property = objc_getProperty(self, v7, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v9 = Property;
  [v9 setObject:identifierCopy forKey:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
  os_unfair_lock_lock_with_options();
  v11 = [@"com.apple.icloud-container." stringByAppendingString:identifierCopy];
  v12 = MEMORY[0x277CBEB58];
  if (self)
  {
    v13 = objc_getProperty(self, v10, 16, 1);
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  enabledTopics = [v14 enabledTopics];
  v16 = [v12 setWithArray:enabledTopics];

  [v16 addObject:v11];
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v34 = v20;
    v35 = 2112;
    v36 = v11;
    _os_log_impl(&dword_22AD27000, v19, OS_LOG_TYPE_INFO, "%{public}@Adding enabled topic to APS connection: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  if (self)
  {
    v22 = objc_getProperty(selfCopy, v21, 16, 1);
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  [v23 setDelegate:selfCopy];

  allObjects = [v16 allObjects];
  if (self)
  {
    v26 = objc_getProperty(selfCopy, v24, 16, 1);
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;
  [v27 setEnabledTopics:allObjects];

  if (self)
  {
    v29 = objc_getProperty(selfCopy, v28, 16, 1);
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;
  [v30 requestTokenForTopic:v11 identifier:0];

  os_unfair_lock_unlock(&self->_apsLock);
  v31 = *MEMORY[0x277D85DE8];
}

- (HMBCloudPushHandler)initWithAPSConnection:(id)connection
{
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = HMBCloudPushHandler;
  v6 = [(HMBCloudPushHandler *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v6->_apsLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_apsConnection, connection);
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    bundleIdentifiersByObservers = v7->_bundleIdentifiersByObservers;
    v7->_bundleIdentifiersByObservers = weakToStrongObjectsMapTable;
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t12 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t12, &__block_literal_global_77);
  }

  v3 = logCategory__hmf_once_v13;

  return v3;
}

uint64_t __34__HMBCloudPushHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v13;
  logCategory__hmf_once_v13 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)sharedHandlerForEnvironment:(id)environment
{
  v24 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  if (sharedHandlerForEnvironment__onceToken != -1)
  {
    dispatch_once(&sharedHandlerForEnvironment__onceToken, &__block_literal_global_5934);
  }

  v4 = sharedHandlerForEnvironment__pushHandlersByEnvironment;
  objc_sync_enter(v4);
  v5 = [sharedHandlerForEnvironment__pushHandlersByEnvironment objectForKeyedSubscript:environmentCopy];
  if (!v5)
  {
    v5 = [HMBCloudPushHandler alloc];
    v6 = environmentCopy;
    if (v5)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = v5;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v18 = 138543874;
        v19 = v10;
        v20 = 2112;
        v21 = v6;
        v22 = 2112;
        v23 = @"com.apple.homed.aps";
        _os_log_impl(&dword_22AD27000, v9, OS_LOG_TYPE_INFO, "%{public}@Creating APSConnection with environment: %@ namedDelegatePort: %@", &v18, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      v11 = objc_alloc(MEMORY[0x277CEEA10]);
      v12 = HMFDispatchQueueName();
      v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v14 = dispatch_queue_create(v12, v13);
      v15 = [v11 initWithEnvironmentName:v6 namedDelegatePort:@"com.apple.homed.aps" queue:v14];

      v5 = [(HMBCloudPushHandler *)v8 initWithAPSConnection:v15];
    }

    [sharedHandlerForEnvironment__pushHandlersByEnvironment setObject:v5 forKeyedSubscript:v6];
  }

  objc_sync_exit(v4);

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __51__HMBCloudPushHandler_sharedHandlerForEnvironment___block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = sharedHandlerForEnvironment__pushHandlersByEnvironment;
  sharedHandlerForEnvironment__pushHandlersByEnvironment = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end