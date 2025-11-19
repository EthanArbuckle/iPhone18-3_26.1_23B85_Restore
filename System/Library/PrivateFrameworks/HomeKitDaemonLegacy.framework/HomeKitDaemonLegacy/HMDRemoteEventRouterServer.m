@interface HMDRemoteEventRouterServer
+ (id)logCategory;
- (BOOL)isErrorHMENotAcceptingConnections:(id)a3;
- (BOOL)server:(id)a3 shouldProcessEventsForConnection:(id)a4 shouldLogState:(BOOL)a5;
- (BOOL)shouldAllowEvent:(id)a3 topic:(id)a4 connection:(id)a5;
- (HMDRemoteEventRouterServer)initWithPrimaryModeUUID:(id)a3 residentModeUUID:(id)a4 queue:(id)a5 messageDispatcher:(id)a6 dataSource:(id)a7 notificationCenter:(id)a8 requestMessageName:(id)a9 updateMessageName:(id)a10 multiHopFetchResponseMessageName:(id)a11 logCategory:(const char *)a12 logEventSubmitter:(id)a13 connectionServerFactory:(id)a14;
- (HMDRemoteEventRouterServer)initWithPrimaryModeUUID:(id)a3 residentModeUUID:(id)a4 queue:(id)a5 messageDispatcher:(id)a6 dataSource:(id)a7 notificationCenter:(id)a8 requestMessageName:(id)a9 updateMessageName:(id)a10 multiHopFetchResponseMessageName:(id)a11 subscriptionProvider:(id)a12 registrationEventRouter:(id)a13 storeReadHandle:(id)a14;
- (NSString)description;
- (NSUUID)messageTargetUUID;
- (NSUUID)residentModeUUID;
- (OS_dispatch_queue)messageReceiveQueue;
- (double)diagnosticLastConnectTime;
- (double)serverDebounceTimeInterval:(id)a3;
- (id)_underlyingMessageDataFromFragmentMessageData:(id)a3 error:(id *)a4;
- (id)diagnosticInfo;
- (id)dumpStateDescription;
- (id)logIdentifier;
- (id)messageTargetForMode:(int64_t)a3;
- (id)responseHandlerForSendMessageIdentifier:(id)a3 completion:(id)a4;
- (id)server:(id)a3 expandedTopicsForTopics:(id)a4;
- (id)server:(id)a3 forwardingTopicsForTopics:(id)a4;
- (id)server:(id)a3 upstreamTopicsForTopic:(id)a4;
- (id)serverTimerProvider:(id)a3;
- (uint64_t)isPrimaryResident;
- (unint64_t)serverFragmentEventsDataSize:(id)a3;
- (void)_handleChangeRegistrationsRequest:(id)a3 originalMessage:(id)a4;
- (void)_handleConnectRequest:(id)a3 originalMessage:(id)a4 connectionMode:(int64_t)a5;
- (void)_handleDisconnectRequest:(id)a3 originalMessage:(id)a4;
- (void)_handleFetchEventsRequest:(id)a3 originalMessage:(id)a4 connectionMode:(int64_t)a5;
- (void)_handleKeepAliveRequest:(id)a3 originalMessage:(id)a4;
- (void)_handleProtoRequest:(id)a3 originalMessage:(id)a4 connectionMode:(int64_t)a5;
- (void)_handleRequestMessage:(id)a3 connectionMode:(int64_t)a4;
- (void)_handleUserPrivilegeChange:(id)a3;
- (void)_registerForAccessoryMessages:(id)a3;
- (void)_registerForMessages:(id)a3 withHome:(id)a4;
- (void)handleHomeUserRemovedNotification:(id)a3;
- (void)handlePrimaryResidentIsCurrentDeviceChangeNotification:(id)a3;
- (void)logMetricsForLiveEvents:(id)a3 cachedEvents:(id)a4 destinationDevice:(id)a5 destinationDeviceIdentifier:(id)a6 responseMessageType:(unint64_t)a7;
- (void)pendingEventCollectionDidComplete:(id)a3;
- (void)refreshConnections:(id)a3;
- (void)respondToMessage:(id)a3 underlyingResponseData:(id)a4 connection:(id)a5 label:(id)a6;
- (void)respondToMessage:(id)a3 underlyingResponseData:(id)a4 supportsFragmentMessage:(BOOL)a5 label:(id)a6;
- (void)sendMessageWithPayloadMessage:(id)a3 destination:(id)a4 messageType:(int64_t)a5 completion:(id)a6;
- (void)server:(id)a3 connectionDidConnect:(id)a4;
- (void)server:(id)a3 connectionDidExpire:(id)a4;
- (void)server:(id)a3 connectionDidFail:(id)a4;
- (void)server:(id)a3 sendEvents:(id)a4 cachedEvents:(id)a5 connection:(id)a6 completion:(id)a7;
- (void)submitLogEvent:(id)a3;
- (void)submitLogEvent:(id)a3 error:(id)a4;
@end

@implementation HMDRemoteEventRouterServer

- (void)pendingEventCollectionDidComplete:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__HMDRemoteEventRouterServer_pendingEventCollectionDidComplete___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(Property, v8);
}

void __64__HMDRemoteEventRouterServer_pendingEventCollectionDidComplete___block_invoke(uint64_t a1, const char *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 128, 1);
  }

  v5 = [Property objectForKey:*(a1 + 40)];
  if (!v5)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = *(a1 + 32);
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      v30 = *(a1 + 40);
      *buf = 138543618;
      v41 = v29;
      v42 = 2112;
      v43 = v30;
      v31 = "%{public}@Fetch collection completed with no connection found for collection %@";
LABEL_15:
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, v31, buf, 0x16u);
    }

LABEL_16:

    objc_autoreleasePoolPop(v26);
    goto LABEL_21;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = objc_getProperty(v6, v4, 128, 1);
  }

  [v6 removeObjectForKey:*(a1 + 40)];
  if (([*(a1 + 40) hasEventItem] & 1) == 0)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = *(a1 + 32);
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      v32 = *(a1 + 40);
      *buf = 138543618;
      v41 = v29;
      v42 = 2112;
      v43 = v32;
      v31 = "%{public}@Fetch collection completed with no items. %@";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v7 = *(v5 + 24);
  if (v7)
  {
    v8 = objc_alloc_init(HMDRemoteEventRouterProtoMultiHopFetchEventsResponse);
    v9 = [*(a1 + 40) popEventItemsUpWithFragments:0 toSizeInBytes:0 usedBytes:0];
    v10 = [v9 na_map:&__block_literal_global_184_71206];
    v11 = [v10 mutableCopy];
    [(HMDRemoteEventRouterProtoMultiHopFetchEventsResponse *)v8 setChangedEvents:v11];

    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v38 = v10;
      v16 = v15 = v9;
      v17 = [(HMDRemoteEventRouterProtoMultiHopFetchEventsResponse *)v8 changedEvents];
      *buf = 138543618;
      v41 = v16;
      v42 = 2048;
      v43 = [v17 count];
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Fetch collection completed with %ld items.", buf, 0x16u);

      v9 = v15;
      v10 = v38;
    }

    objc_autoreleasePoolPop(v12);
    v18 = objc_alloc_init(HMDRemoteEventRouterProtoServerMessage);
    v19 = [MEMORY[0x277CCAD78] UUID];
    v20 = [v19 UUIDString];
    [(HMDRemoteEventRouterProtoServerMessage *)v18 setIdentifier:v20];

    [(HMDRemoteEventRouterProtoServerMessage *)v18 setMultiHopFetchEventsResponse:v8];
    v21 = [HMDRemoteDeviceMessageDestination alloc];
    v22 = [*(a1 + 32) messageTargetForMode:*(v5 + 40)];
    v23 = [(HMDRemoteDeviceMessageDestination *)v21 initWithTarget:v22 device:v7];

    v24 = *(a1 + 32);
    v25 = [(HMDRemoteEventRouterProtoServerMessage *)v18 data];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __64__HMDRemoteEventRouterServer_pendingEventCollectionDidComplete___block_invoke_185;
    v39[3] = &unk_2797359D8;
    v39[4] = *(a1 + 32);
    [v24 sendMessageWithPayloadMessage:v25 destination:v23 messageType:2 completion:v39];
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = *(a1 + 32);
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v36;
      v42 = 2112;
      v43 = v5;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Device no longer available %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
  }

LABEL_21:
  v37 = *MEMORY[0x277D85DE8];
}

void __64__HMDRemoteEventRouterServer_pendingEventCollectionDidComplete___block_invoke_185(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = v7;
    v9 = @"error : ";
    if (!v3)
    {
      v9 = @"success";
    }

    v12 = 138543874;
    v13 = v7;
    v14 = 2112;
    v15 = v9;
    if (v3)
    {
      v10 = v3;
    }

    else
    {
      v10 = &stru_286509E58;
    }

    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Fetch collection response completed with %@%@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *MEMORY[0x277D85DE8];
}

- (id)diagnosticInfo
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CD1D48]);
  [v3 setVersion:1];
  [v3 setConnectionState:0];
  [v3 setMode:0];
  if (fabs([(HMDRemoteEventRouterServer *)self diagnosticLastConnectTime]) >= 2.22044605e-16)
  {
    [v3 setLastConnected:-[HMDRemoteEventRouterServer diagnosticLastConnectTime](self)];
  }

  v4 = [(HMDRemoteEventRouterServer *)self currentConnections];
  v5 = [v4 count];

  if (v5)
  {
    [v3 setConnectionState:1];
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v3 setConnectedClients:v6];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [(HMDRemoteEventRouterServer *)self currentConnections];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        v11 = 0;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * v11);
          v13 = objc_alloc_init(MEMORY[0x277CD1D40]);
          if (v12)
          {
            v14 = *(v12 + 16);
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;
          v16 = [v15 UUIDString];
          [v13 setConnectedClientIdentifierString:v16];

          v17 = [v3 connectedClients];
          [v17 addObject:v13];

          ++v11;
        }

        while (v9 != v11);
        v18 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        v9 = v18;
      }

      while (v18);
    }
  }

  else
  {
    [v3 setConnectionState:2];
  }

  if ([(HMDRemoteEventRouterServer *)self isPrimaryResident])
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  [v3 setMode:v19];
  v20 = *MEMORY[0x277D85DE8];

  return v3;
}

- (double)diagnosticLastConnectTime
{
  if (!a1)
  {
    return 0.0;
  }

  os_unfair_lock_lock_with_options();
  v2 = *(a1 + 24);
  os_unfair_lock_unlock((a1 + 16));
  return v2;
}

- (uint64_t)isPrimaryResident
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    v2 = *(a1 + 20);
    os_unfair_lock_unlock((a1 + 16));
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (id)dumpStateDescription
{
  v3 = MEMORY[0x277CCACA8];
  [(HMDRemoteEventRouterServer *)self isPrimaryResident];
  v4 = HMFBooleanToString();
  if (self)
  {
    isResidentEventProviding = self->_isResidentEventProviding;
    v6 = HMFBooleanToString();
    Property = objc_getProperty(self, v7, 104, 1);
  }

  else
  {
    v6 = HMFBooleanToString();
    Property = 0;
  }

  v9 = [Property dumpStateDescription];
  v10 = [v3 stringWithFormat:@"[HMDRemoteEventRouterServer primary: %@, resident event providing: %@, \n\t server: %@]", v4, v6, v9];

  return v10;
}

- (NSUUID)residentModeUUID
{
  if (self)
  {
    self = objc_getProperty(self, a2, 48, 1);
    v2 = vars8;
  }

  return self;
}

- (BOOL)shouldAllowEvent:(id)a3 topic:(id)a4 connection:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v33 = v10;
    v34 = 2112;
    v35 = v7;
    _os_log_debug_impl(&dword_2531F8000, logger, OS_LOG_TYPE_DEBUG, "Checking access control connection: %@, topic: %@", buf, 0x16u);
  }

  os_unfair_lock_lock_with_options();
  isPrimaryResident = self->_isPrimaryResident;
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    v14 = v10[3];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 productInfo];
      v17 = [v16 productPlatform];

      v18 = 1;
      if (v17 != 4)
      {
        v18 = 2;
      }

      v31 = v18;
      v19 = v10[2];
      v20 = [WeakRetained isDeviceIdentifierPrimaryResident:v19];

      v21 = v10[4];
      v22 = [WeakRetained routerServerUserAccessControlProviderForIdentifier:v21];

      if (v22)
      {
        if ((isPrimaryResident & 1) == 0 && ((v20 ^ 1) & 1) == 0)
        {
          isPrimaryResident = [WeakRetained canTopicBeForwardedToPrimaryFromResident:v7];
        }

        v23 = [v15 identifier];
        v24 = [WeakRetained shouldAllowTopic:v7 forDeviceWithMessageIdentifier:v23];

        v25 = 0;
        if (isPrimaryResident && v24)
        {
          v26 = [WeakRetained remoteEventAccessControlProvider];
          v25 = [v26 remoteEventAllowedForTopic:v7 deviceType:v31 userType:{objc_msgSend(v22, "allowedRemoteEventAccessUserTypes")}];
        }

        goto LABEL_26;
      }

      v28 = self->_logger;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = v10;
        _os_log_error_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "Could not find user ACL provider for %@", buf, 0xCu);
      }
    }

    else
    {
      v27 = self->_logger;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v33 = v7;
        v34 = 2112;
        v35 = v8;
        _os_log_debug_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEBUG, "No device when attempting to check access control for %@ to %@", buf, 0x16u);
      }
    }

    v25 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v25 = 0;
LABEL_27:

  v29 = *MEMORY[0x277D85DE8];
  return v25;
}

- (void)logMetricsForLiveEvents:(id)a3 cachedEvents:(id)a4 destinationDevice:(id)a5 destinationDeviceIdentifier:(id)a6 responseMessageType:(unint64_t)a7
{
  v11 = a6;
  v9 = a5;
  [(HMDRemoteEventRouterServer *)self isPrimaryResident];
  if (self)
  {
    self = objc_loadWeakRetained(&self->_dataSource);
    [(HMDRemoteEventRouterServer *)self isDeviceIdentifierPrimaryResident:v11];
    v10 = [v9 productInfo];
    [v10 productPlatform];
  }

  else
  {
    [0 isDeviceIdentifierPrimaryResident:v11];
  }
}

- (void)server:(id)a3 sendEvents:(id)a4 cachedEvents:(id)a5 connection:(id)a6 completion:(id)a7
{
  v49 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = objc_alloc_init(HMDRemoteEventRouterProtoServerMessage);
  v16 = [MEMORY[0x277CCAD78] UUID];
  v17 = [v16 UUIDString];
  [(HMDRemoteEventRouterProtoServerMessage *)v15 setIdentifier:v17];

  v18 = objc_alloc_init(HMDRemoteEventRouterProtoEventsMessage);
  [(HMDRemoteEventRouterProtoServerMessage *)v15 setUpdatedEvents:v18];

  v19 = [v11 na_map:&__block_literal_global_171_71237];
  v20 = [v19 mutableCopy];
  v21 = [(HMDRemoteEventRouterProtoServerMessage *)v15 updatedEvents];
  [v21 setEvents:v20];

  v22 = [v12 na_map:&__block_literal_global_173_71238];
  v23 = [v22 mutableCopy];
  v24 = [(HMDRemoteEventRouterProtoServerMessage *)v15 updatedEvents];
  [v24 setCachedEvents:v23];

  v25 = v13;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  if (v27)
  {
    v28 = v27[3];
    if (v28)
    {
      v29 = v28;
      v30 = [HMDRemoteDeviceMessageDestination alloc];
      v31 = [(HMDRemoteEventRouterServer *)self messageTargetForMode:v27[5]];
      v32 = [(HMDRemoteDeviceMessageDestination *)v30 initWithTarget:v31 device:v29];

      if (v32)
      {
        v33 = v27[2];
        [(HMDRemoteEventRouterServer *)self logMetricsForLiveEvents:v11 cachedEvents:v12 destinationDevice:v29 destinationDeviceIdentifier:v33 responseMessageType:4];

        logger = self->_logger;
        v46 = v11;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
        {
          v35 = MEMORY[0x277CCABB0];
          v36 = logger;
          v45 = [(HMDRemoteEventRouterProtoServerMessage *)v15 data];
          v37 = [v35 numberWithUnsignedInteger:{objc_msgSend(v45, "length")}];
          *buf = 138412290;
          v48 = v37;
          _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_DEFAULT, "Sending events of size: %@", buf, 0xCu);

          v11 = v46;
          logger = self->_logger;
        }

        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v48 = v11;
          _os_log_debug_impl(&dword_2531F8000, logger, OS_LOG_TYPE_DEBUG, "Sending events: %@", buf, 0xCu);
        }

        v38 = [(HMDRemoteEventRouterProtoServerMessage *)v15 data];
        [(HMDRemoteEventRouterServer *)self sendMessageWithPayloadMessage:v38 destination:v32 messageType:1 completion:v14];

        v11 = v46;
      }

      else
      {
        v42 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
        v14[2](v14, v42);

        v43 = self->_logger;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "Could not create destination", buf, 2u);
        }
      }
    }

    else
    {
      v40 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      v14[2](v14, v40);

      v41 = self->_logger;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v48 = v25;
        _os_log_error_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "Device no longer available %@", buf, 0xCu);
      }

      v29 = 0;
    }
  }

  else
  {
    v39 = self->_logger;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v48 = v25;
      _os_log_error_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "Could not find remote connection for connection %@", buf, 0xCu);
    }

    v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    v14[2](v14, v29);
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (void)server:(id)a3 connectionDidFail:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_error_impl(&dword_2531F8000, logger, OS_LOG_TYPE_ERROR, "Removing connection on error %@", &v9, 0xCu);
  }

  v7 = [(HMDRemoteEventRouterServer *)self currentConnections];
  [v7 removeObject:v5];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)server:(id)a3 connectionDidExpire:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_error_impl(&dword_2531F8000, logger, OS_LOG_TYPE_ERROR, "Removing connection on expiry %@", &v9, 0xCu);
  }

  v7 = [(HMDRemoteEventRouterServer *)self currentConnections];
  [v7 removeObject:v5];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)server:(id)a3 connectionDidConnect:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [MEMORY[0x277CBEAA8] date];
  [v6 timeIntervalSince1970];
  if (self)
  {
    v8 = v7;
    os_unfair_lock_lock_with_options();
    self->_diagnosticLastConnectTime = v8;
    os_unfair_lock_unlock(&self->_lock);
  }

  if ([(HMDRemoteEventRouterServer *)self isPrimaryResident])
  {
    v9 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v12 = v11[3];
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = [v13 deviceAddress];
    v15 = [v14 idsIdentifier];

    if (v15)
    {
      logger = self->_logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v15;
        _os_log_impl(&dword_2531F8000, logger, OS_LOG_TYPE_DEFAULT, "Notifying on connecting to primary %@", buf, 0xCu);
      }

      Property = objc_getProperty(self, v17, 88, 1);
      v23 = @"idsIdentifier";
      v24 = v15;
      v19 = MEMORY[0x277CBEAC0];
      v20 = Property;
      v21 = [v19 dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      [v20 postNotificationName:@"RemoteEventRouterServerDidReceiveConnectionToPrimary" object:self userInfo:{v21, v23, v24}];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (unint64_t)serverFragmentEventsDataSize:(id)a3
{
  if (_os_feature_enabled_impl())
  {
    return 0x80000;
  }

  else
  {
    return 0;
  }
}

- (id)serverTimerProvider:(id)a3
{
  if (self)
  {
    self = objc_getProperty(self, a2, 96, 1);
    v3 = vars8;
  }

  return self;
}

- (double)serverDebounceTimeInterval:(id)a3
{
  v3 = [(HMDRemoteEventRouterServer *)self isPrimaryResident];
  result = 0.5;
  if (v3)
  {
    return 5.0;
  }

  return result;
}

- (BOOL)server:(id)a3 shouldProcessEventsForConnection:(id)a4 shouldLogState:(BOOL)a5
{
  v5 = a5;
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v10 = a4;
  if (self)
  {
    Property = objc_getProperty(self, v9, 32, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_assert_queue_V2(0);
    WeakRetained = 0;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v35 = 138412546;
    v36 = v10;
    v37 = 2112;
    v38 = WeakRetained;
    _os_log_impl(&dword_2531F8000, logger, OS_LOG_TYPE_DEFAULT, "Checking if server should process events for connection: %@, dataSource: %@", &v35, 0x16u);
  }

LABEL_5:
  v14 = v10;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (!v16)
  {
    goto LABEL_14;
  }

  isa = v16[5].isa;
  if (isa == 1)
  {
    v20 = v16[3].isa;
    if (v20)
    {
      v22 = v16[2].isa;
      v23 = [(objc_class *)WeakRetained isDeviceIdentifierPrimaryResident:v22];

      if (![(HMDRemoteEventRouterServer *)self isPrimaryResident]|| !v23)
      {
        if (self)
        {
          v18 = self->_isResidentEventProviding & v23;
          if (!v5)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v18 = 0;
          if (!v5)
          {
            goto LABEL_30;
          }
        }

        v29 = self->_logger;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v29;
          v30 = HMFBooleanToString();
          v31 = HMFBooleanToString();
          v32 = v16[2].isa;
          v35 = 138544130;
          v36 = v30;
          v37 = 2114;
          v38 = v31;
          v39 = 2112;
          v40 = v32;
          v41 = 2112;
          v42 = v20;
          _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, "Allow connection: %{public}@, for resident connection mode. isReceiverPrimary: %{public}@, incoming device:%@, primary device: %@", &v35, 0x2Au);

          goto LABEL_29;
        }

LABEL_30:

        goto LABEL_31;
      }

      if (v5)
      {
        v24 = self->_logger;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = v24;
          v26 = HMFBooleanToString();
          v27 = v16[2].isa;
          v35 = 138543874;
          v36 = v26;
          v37 = 2112;
          v38 = v27;
          v39 = 2112;
          v40 = v20;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "Not allowing connection while both devices are known as primary, this should resolve shortly. isReceiverPrimary: %{public}@, incoming device:%@, primary device: %@", &v35, 0x20u);

LABEL_23:
        }
      }
    }

    else
    {
      v28 = self->_logger;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v25 = v28;
        v26 = v16[2].isa;
        v35 = 138412290;
        v36 = v26;
        _os_log_error_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "Unexpectedly did not find device for resident. %@", &v35, 0xCu);
        goto LABEL_23;
      }
    }

    v18 = 0;
    goto LABEL_30;
  }

  if (isa)
  {
LABEL_14:
    v18 = 0;
    goto LABEL_31;
  }

  v18 = [(HMDRemoteEventRouterServer *)self isPrimaryResident];
  if (v5)
  {
    v19 = self->_logger;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = HMFBooleanToString();
      v35 = 138543362;
      v36 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "Allow connection: %{public}@, for primary connection mode.", &v35, 0xCu);
LABEL_29:

      goto LABEL_30;
    }
  }

LABEL_31:

  v33 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

- (id)server:(id)a3 forwardingTopicsForTopics:(id)a4
{
  v6 = a4;
  if (self)
  {
    Property = objc_getProperty(self, v5, 40, 1);
  }

  else
  {
    Property = 0;
  }

  v8 = [HMDHomeEventsGenerated forwardingTopicsWithTopics:v6 forHomeRouterWithUUID:Property];

  return v8;
}

- (id)server:(id)a3 expandedTopicsForTopics:(id)a4
{
  v5 = a4;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_dataSource);
  }

  v6 = [(HMDRemoteEventRouterServer *)self expandedTopicsWithTopics:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  v9 = v8;

  return v8;
}

- (id)server:(id)a3 upstreamTopicsForTopic:(id)a4
{
  v5 = a4;
  if ([(HMDRemoteEventRouterServer *)self isPrimaryResident])
  {
    v7 = [HMDHomeEventsGenerated upstreamTopicsForTopic:v5];
  }

  else
  {
    if (self)
    {
      v8 = objc_getProperty(self, v6, 40, 1);
      Property = objc_getProperty(self, v9, 48, 1);
    }

    else
    {
      v8 = 0;
      Property = 0;
    }

    v7 = [HMDHomeEventsGenerated upstreamHomeAndAccessoryTopicsForTopic:v5 homeUUID:v8 accessoryUUID:Property];
  }

  return v7;
}

- (id)responseHandlerForSendMessageIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__HMDRemoteEventRouterServer_responseHandlerForSendMessageIdentifier_completion___block_invoke;
  v12[3] = &unk_279731AF8;
  objc_copyWeak(&v15, &location);
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  v10 = _Block_copy(v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v10;
}

void __81__HMDRemoteEventRouterServer_responseHandlerForSendMessageIdentifier_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    Property = objc_getProperty(WeakRetained, v5, 32, 1);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __81__HMDRemoteEventRouterServer_responseHandlerForSendMessageIdentifier_completion___block_invoke_2;
    v8[3] = &unk_279734578;
    v9 = v3;
    v10 = v6;
    v11 = a1[4];
    v12 = a1[5];
    dispatch_async(Property, v8);
  }
}

uint64_t __81__HMDRemoteEventRouterServer_responseHandlerForSendMessageIdentifier_completion___block_invoke_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = *(a1[5] + 8);
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = a1[6];
      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = v2;
      _os_log_error_impl(&dword_2531F8000, v3, OS_LOG_TYPE_ERROR, "Failed to send message: %@ error: %@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[6];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_2531F8000, v3, OS_LOG_TYPE_DEFAULT, "Successfully sent message: %@", &v8, 0xCu);
  }

  result = a1[7];
  if (result)
  {
    result = (*(result + 16))(result, a1[4]);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)sendMessageWithPayloadMessage:(id)a3 destination:(id)a4 messageType:(int64_t)a5 completion:(id)a6
{
  v28[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = a4;
  v14 = [(HMDRemoteEventRouterServer *)self isPrimaryResident];
  if (a5 == 2)
  {
    if (self)
    {
      v15 = 72;
      goto LABEL_7;
    }

LABEL_17:
    Property = 0;
    goto LABEL_8;
  }

  if (a5 == 1)
  {
    if (self)
    {
      v15 = 64;
LABEL_7:
      Property = objc_getProperty(self, v13, v15, 1);
LABEL_8:
      v17 = Property;
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  v17 = 0;
LABEL_10:
  if (v14)
  {
    v18 = -1;
  }

  else
  {
    v18 = 8;
  }

  v27 = @"message.payload";
  v19 = [v10 copy];
  v28[0] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v21 = [HMDRemoteMessage secureMessageWithName:v17 qualityOfService:-1 destination:v12 messagePayload:v20 timeout:v18 restriction:150.0];

  v22 = [v21 identifier];
  v23 = [(HMDRemoteEventRouterServer *)self responseHandlerForSendMessageIdentifier:v22 completion:v11];

  [v21 setResponseHandler:v23];
  if (self)
  {
    v25 = objc_getProperty(self, v24, 80, 1);
  }

  else
  {
    v25 = 0;
  }

  [v25 sendMessage:v21];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)submitLogEvent:(id)a3
{
  v4 = a3;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_logEventSubmitter);
  }

  [(HMDRemoteEventRouterServer *)self submitLogEvent:v4];
}

- (void)submitLogEvent:(id)a3 error:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_logEventSubmitter);
  }

  [(HMDRemoteEventRouterServer *)self submitLogEvent:v7 error:v6];
}

- (void)_handleFetchEventsRequest:(id)a3 originalMessage:(id)a4 connectionMode:(int64_t)a5
{
  v8 = a3;
  v10 = a4;
  if (self)
  {
    Property = objc_getProperty(self, v9, 32, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  if (v8)
  {
    v12 = [v10 remoteSourceDevice];
    v13 = [v12 identifier];
    v14 = v13;
    if (v12 && v13)
    {
      if (self && self->_isResidentEventProviding)
      {
        WeakRetained = objc_loadWeakRetained(&self->_dataSource);
        v16 = [WeakRetained routerServerUserAccessControlProviderIdentifierForMessage:v10];
        if (v16 && ([WeakRetained routerServerUserAccessControlProviderForIdentifier:v16], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v18 = v17;
          v49 = -[HMDRemoteEventRouterServerConnection initWithDevice:connectionMode:supportsFragmentMessage:userAccessControlProviderUUID:]([HMDRemoteEventRouterServerConnection alloc], "initWithDevice:connectionMode:supportsFragmentMessage:userAccessControlProviderUUID:", v12, a5, [v10 BOOLForKey:@"isFragmented"], v16);
          v19 = [v8 topics];
          v20 = [v19 count];

          if (v20)
          {
            v47 = v18;
            v21 = [v8 topics];
            v51[0] = MEMORY[0x277D85DD0];
            v51[1] = 3221225472;
            v51[2] = __87__HMDRemoteEventRouterServer__handleFetchEventsRequest_originalMessage_connectionMode___block_invoke;
            v51[3] = &unk_2797287A8;
            v51[4] = self;
            v22 = [v21 na_map:v51];

            v23 = objc_alloc_init(MEMORY[0x277D174E8]);
            [v23 setDelegate:self];
            v25 = objc_getProperty(self, v24, 104, 1);
            v50 = 0;
            v48 = v22;
            LOBYTE(v22) = [v25 fetchCachedEventsForTopics:v22 isMultiHop:objc_msgSend(v8 connection:"fetchType") == 1 cachedEventCollection:v49 error:{v23, &v50}];

            v26 = v50;
            v27 = v26;
            if (v22)
            {
              v45 = v26;
              v43 = [v23 isFinishedAddingItems];
              v46 = v23;
              v28 = [v23 popEventItemsUpWithFragments:0 toSizeInBytes:0 usedBytes:0];
              v29 = [v28 na_map:&__block_literal_global_157_71270];
              [(HMDRemoteEventRouterServer *)self logMetricsForLiveEvents:MEMORY[0x277CBEBF8] cachedEvents:v28 destinationDevice:v12 destinationDeviceIdentifier:v14 responseMessageType:1];
              v30 = objc_alloc_init(HMDRemoteEventRouterProtoFetchEventsResponse);
              v44 = v29;
              v31 = [v29 mutableCopy];
              [(HMDRemoteEventRouterProtoFetchEventsResponse *)v30 setChangedEvents:v31];

              v32 = [(HMDRemoteEventRouterProtoFetchEventsResponse *)v30 data];
              [(HMDRemoteEventRouterServer *)self respondToMessage:v10 underlyingResponseData:v32 supportsFragmentMessage:0 label:@"FetchEvents"];

              v34 = v49;
              if ((v43 & 1) == 0)
              {
                [objc_getProperty(self v33];
              }

              v27 = v45;
              v23 = v46;
            }

            else
            {
              if (!v26)
              {
                v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
              }

              [v10 respondWithError:v27];
              v34 = v49;
            }

            v18 = v47;
          }

          else
          {
            v34 = v49;
            logger = self->_logger;
            if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_2531F8000, logger, OS_LOG_TYPE_ERROR, "Got a fetch request with no topics.", buf, 2u);
            }

            v42 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
            [v10 respondWithError:v42];
          }
        }

        else
        {
          v40 = self->_logger;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "Could not find user for incoming request.", buf, 2u);
          }

          v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          [v10 respondWithError:v18];
        }

        goto LABEL_37;
      }

      v39 = self->_logger;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "Could not process fetch as non-resident event providing device.", buf, 2u);
      }

      v37 = MEMORY[0x277CCA9B8];
      v38 = 48;
    }

    else
    {
      v36 = self->_logger;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "Could not find device of incoming request.", buf, 2u);
      }

      v37 = MEMORY[0x277CCA9B8];
      v38 = 2;
    }

    WeakRetained = [v37 hmErrorWithCode:v38];
    [v10 respondWithError:WeakRetained];
LABEL_37:

    goto LABEL_38;
  }

  v35 = self->_logger;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "Did not find fetch request in payload.", buf, 2u);
  }

  v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  [v10 respondWithError:v12];
LABEL_38:
}

id __87__HMDRemoteEventRouterServer__handleFetchEventsRequest_originalMessage_connectionMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 hasTopic] & 1) == 0)
  {
    v4 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "No topic found!", v9, 2u);
    }
  }

  v5 = MEMORY[0x277D0F888];
  v6 = [v3 topic];
  v7 = [v5 hmf_cachedInstanceForString:v6];

  return v7;
}

- (void)_handleKeepAliveRequest:(id)a3 originalMessage:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [v7 remoteSourceDevice];
    v10 = [v9 identifier];
    v11 = v10;
    if (v9 && v10)
    {
      v12 = [(HMDRemoteEventRouterServer *)self currentConnections];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __70__HMDRemoteEventRouterServer__handleKeepAliveRequest_originalMessage___block_invoke;
      v26[3] = &unk_2797286A0;
      v13 = v11;
      v27 = v13;
      v14 = [v12 na_firstObjectPassingTest:v26];

      if (v14)
      {
        if (self)
        {
          self = objc_getProperty(self, v15, 104, 1);
        }

        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __70__HMDRemoteEventRouterServer__handleKeepAliveRequest_originalMessage___block_invoke_151;
        v24[3] = &unk_2797359D8;
        v25 = v8;
        [(HMDRemoteEventRouterServer *)self keepAliveConnection:v14 completion:v24];
        v16 = v25;
      }

      else
      {
        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
        {
          v22 = logger;
          v23 = [(HMDRemoteEventRouterServer *)self currentConnections];
          *buf = 138412546;
          v29 = v23;
          v30 = 2112;
          v31 = v13;
          _os_log_error_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "No connection was found for keep alive request in current connections: %@ device identifier: %@", buf, 0x16u);
        }

        v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v8 respondWithError:v16];
      }

      v19 = v27;
    }

    else
    {
      v18 = self->_logger;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "Could not find device of incoming request.", buf, 2u);
      }

      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v8 respondWithError:v19];
    }
  }

  else
  {
    v17 = self->_logger;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "Did not keep-alive request in payload.", buf, 2u);
    }

    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [v8 respondWithError:v9];
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __70__HMDRemoteEventRouterServer__handleKeepAliveRequest_originalMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 hmf_isEqualToUUID:*(a1 + 32)];

  return v5;
}

uint64_t __70__HMDRemoteEventRouterServer__handleKeepAliveRequest_originalMessage___block_invoke_151(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 respondWithError:a2];
  }

  else
  {
    return [v2 respondWithSuccess];
  }
}

- (void)_handleChangeRegistrationsRequest:(id)a3 originalMessage:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [v7 remoteSourceDevice];
    v10 = [v9 identifier];
    v11 = v10;
    if (v9 && v10)
    {
      v12 = [(HMDRemoteEventRouterServer *)self currentConnections];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __80__HMDRemoteEventRouterServer__handleChangeRegistrationsRequest_originalMessage___block_invoke;
      v37[3] = &unk_2797286A0;
      v13 = v11;
      v38 = v13;
      v14 = [v12 na_firstObjectPassingTest:v37];

      if (v14)
      {
        v30 = v13;
        if (self)
        {
          Property = objc_getProperty(self, v15, 104, 1);
        }

        else
        {
          Property = 0;
        }

        v17 = Property;
        v29 = [v6 topicFilterAdditions];
        v18 = [v29 na_map:&__block_literal_global_140_71286];
        v19 = [v6 topicFilterRemovals];
        v20 = [v19 na_map:&__block_literal_global_142];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __80__HMDRemoteEventRouterServer__handleChangeRegistrationsRequest_originalMessage___block_invoke_3;
        v31[3] = &unk_279728780;
        v32 = v14;
        v33 = self;
        v34 = v8;
        v35 = v9;
        v36 = v30;
        [v17 changeRegistrationsForConnection:v32 topicFilterAdditions:v18 topicFilterRemovals:v20 completion:v31];

        v21 = v32;
      }

      else
      {
        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
        {
          v27 = logger;
          v28 = [(HMDRemoteEventRouterServer *)self currentConnections];
          *buf = 138412546;
          v40 = v28;
          v41 = 2112;
          v42 = v13;
          _os_log_error_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "No connection was found during change registrations request in current connections: %@ device identifier: %@", buf, 0x16u);
        }

        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v8 respondWithError:v21];
      }

      v24 = v38;
    }

    else
    {
      v23 = self->_logger;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "Could not find device of incoming request.", buf, 2u);
      }

      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v8 respondWithError:v24];
    }
  }

  else
  {
    v22 = self->_logger;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "Did not change registrations request in payload.", buf, 2u);
    }

    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [v8 respondWithError:v9];
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __80__HMDRemoteEventRouterServer__handleChangeRegistrationsRequest_originalMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 hmf_isEqualToUUID:*(a1 + 32)];

  return v5;
}

void __80__HMDRemoteEventRouterServer__handleChangeRegistrationsRequest_originalMessage___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = *(a1 + 32);
    if ((!v8 || !*(v8 + 40)) && [*(a1 + 40) isErrorHMENotAcceptingConnections:v7])
    {
      v9 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3202];

      v7 = v9;
    }

    [*(a1 + 48) respondWithError:v7];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [v18 na_map:&__block_literal_global_144];
    v12 = [v11 na_map:&__block_literal_global_146_71287];
    [*(a1 + 40) logMetricsForLiveEvents:MEMORY[0x277CBEBF8] cachedEvents:v11 destinationDevice:*(a1 + 56) destinationDeviceIdentifier:*(a1 + 64) responseMessageType:3];
    v13 = objc_alloc_init(HMDRemoteEventRouterProtoChangeRegistrationsResponse);
    v14 = [v12 mutableCopy];
    [(HMDRemoteEventRouterProtoChangeRegistrationsResponse *)v13 setCachedEvents:v14];

    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = [(HMDRemoteEventRouterProtoChangeRegistrationsResponse *)v13 data];
    [v15 respondToMessage:v16 underlyingResponseData:v17 connection:*(a1 + 32) label:@"ChangeRegistration"];

    objc_autoreleasePoolPop(v10);
  }
}

id __80__HMDRemoteEventRouterServer__handleChangeRegistrationsRequest_originalMessage___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D174A8];
  v5 = a3;
  v6 = a2;
  v7 = [[v4 alloc] initWithEvent:v5 topic:v6];

  return v7;
}

- (void)_handleDisconnectRequest:(id)a3 originalMessage:(id)a4
{
  v6 = a3;
  v8 = a4;
  if (self)
  {
    Property = objc_getProperty(self, v7, 32, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  if (v6)
  {
    v10 = [v8 remoteSourceDevice];
    v11 = [v10 identifier];
    v12 = v11;
    if (v10 && v11)
    {
      v13 = [(HMDRemoteEventRouterServer *)self currentConnections];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __71__HMDRemoteEventRouterServer__handleDisconnectRequest_originalMessage___block_invoke;
      v22[3] = &unk_2797286A0;
      v23 = v12;
      v14 = [v13 na_firstObjectPassingTest:v22];

      if (v14)
      {
        if (self)
        {
          v16 = objc_getProperty(self, v15, 104, 1);
        }

        else
        {
          v16 = 0;
        }

        [v16 disconnectConnection:v14];
        [v8 respondWithSuccess];
      }

      else
      {
        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2531F8000, logger, OS_LOG_TYPE_ERROR, "No connection was found to disconnect.", buf, 2u);
        }

        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v8 respondWithError:v21];
      }

      v19 = v23;
    }

    else
    {
      v18 = self->_logger;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "Could not find device of incoming request.", buf, 2u);
      }

      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v8 respondWithError:v19];
    }
  }

  else
  {
    v17 = self->_logger;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "Did not find disconnect request in payload.", buf, 2u);
    }

    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [v8 respondWithError:v10];
  }
}

uint64_t __71__HMDRemoteEventRouterServer__handleDisconnectRequest_originalMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 hmf_isEqualToUUID:*(a1 + 32)];

  return v5;
}

- (void)refreshConnections:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v18 = v10;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Refresh connections for user:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(HMDRemoteEventRouterServer *)v8 currentConnections];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__HMDRemoteEventRouterServer_refreshConnections___block_invoke;
  v14[3] = &unk_279728758;
  v15 = v5;
  v16 = v8;
  v12 = v5;
  [v11 na_each:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __49__HMDRemoteEventRouterServer_refreshConnections___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    v4 = *(v3 + 4);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = *(a1 + 32);
  if (HMFEqualObjects())
  {
    Property = *(a1 + 40);
    if (Property)
    {
      Property = objc_getProperty(Property, v7, 104, 1);
    }

    [Property refreshConnection:v9];
  }
}

- (void)_handleConnectRequest:(id)a3 originalMessage:(id)a4 connectionMode:(int64_t)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v10 = a4;
  if (self)
  {
    Property = objc_getProperty(self, v9, 32, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    if (v8)
    {
LABEL_3:
      v13 = [v10 remoteSourceDevice];
      v14 = [v13 identifier];
      v15 = v14;
      if (!v13 || !v14)
      {
        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2531F8000, logger, OS_LOG_TYPE_ERROR, "Could not find device of incoming request.", buf, 2u);
        }

        v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v10 respondWithError:v16];
        goto LABEL_38;
      }

      v16 = [WeakRetained routerServerUserAccessControlProviderIdentifierForMessage:v10];
      if (!v16)
      {
        v24 = self->_logger;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "Could not find user for incoming request.", buf, 2u);
        }

        v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v10 respondWithError:v25];
        goto LABEL_37;
      }

      v17 = [(HMDRemoteEventRouterServer *)self currentConnections];
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __83__HMDRemoteEventRouterServer__handleConnectRequest_originalMessage_connectionMode___block_invoke;
      v59[3] = &unk_2797286A0;
      v50 = v15;
      v60 = v50;
      v18 = [v17 na_firstObjectPassingTest:v59];

      v51 = v15;
      v52 = WeakRetained;
      if (v18)
      {
        if (v18->_connectionMode == a5)
        {
LABEL_26:
          if ([v8 hasConnectEvent])
          {
            v31 = MEMORY[0x277D174A8];
            v32 = [v8 connectEvent];
            v49 = [v31 fromProtobuff:v32];
          }

          else
          {
            v49 = 0;
          }

          if ([v8 hasUnregisterEvent])
          {
            v33 = MEMORY[0x277D174A8];
            v34 = [v8 unregisterEvent];
            v47 = [v33 fromProtobuff:v34];
          }

          else
          {
            v47 = 0;
          }

          v35 = [MEMORY[0x277CBEB18] array];
          v36 = [v8 topicFilterAdditions];
          v37 = [v36 count];

          if (v37)
          {
            v39 = [v8 topicFilterAdditions];
            v40 = [v39 na_map:&__block_literal_global_125];
            [v35 addObjectsFromArray:v40];
          }

          if (self)
          {
            v41 = objc_getProperty(self, v38, 104, 1);
          }

          else
          {
            v41 = 0;
          }

          v42 = v41;
          v43 = [v35 copy];
          v53[0] = MEMORY[0x277D85DD0];
          v53[1] = 3221225472;
          v53[2] = __83__HMDRemoteEventRouterServer__handleConnectRequest_originalMessage_connectionMode___block_invoke_2;
          v53[3] = &unk_279728730;
          v58 = a5;
          v53[4] = self;
          v54 = v10;
          v55 = v13;
          v56 = v50;
          v57 = v18;
          v44 = v18;
          [v42 connectWithConnection:v44 connectEvent:v49 unregisterEvent:v48 topicFilterAdditions:v43 completion:v53];

          v25 = v60;
          v15 = v51;
          WeakRetained = v52;
LABEL_37:

LABEL_38:
          goto LABEL_43;
        }

        v19 = self->_logger;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v62 = v18;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "Connection mode is different remove existing %@", buf, 0xCu);
        }

        v20 = [(HMDRemoteEventRouterServer *)self currentConnections];
        [v20 removeObject:v18];
      }

      v18 = -[HMDRemoteEventRouterServerConnection initWithDevice:connectionMode:supportsFragmentMessage:userAccessControlProviderUUID:]([HMDRemoteEventRouterServerConnection alloc], "initWithDevice:connectionMode:supportsFragmentMessage:userAccessControlProviderUUID:", v13, a5, [v10 BOOLForKey:@"isFragmented"], v16);
      if (a5 == 1)
      {
        v21 = self->_logger;
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }

        *buf = 138412290;
        v62 = v18;
        v22 = "Created resident connection %@";
      }

      else
      {
        if (a5 || (v21 = self->_logger, !os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT)))
        {
LABEL_24:
          v26 = [(HMDRemoteEventRouterServer *)self currentConnections];
          [v26 addObject:v18];

          v27 = self->_logger;
          if (os_signpost_enabled(v27))
          {
            v28 = MEMORY[0x277CCABB0];
            v29 = v27;
            v30 = [v28 numberWithInteger:a5];
            *buf = 138412290;
            v62 = v30;
            _os_signpost_emit_with_name_impl(&dword_2531F8000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EventRouterServerConnectionCreated", "connectionMode=%{signpost.description:attribute}@ ", buf, 0xCu);
          }

          goto LABEL_26;
        }

        *buf = 138412290;
        v62 = v18;
        v22 = "Created primary client connection %@";
      }

      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
      goto LABEL_24;
    }
  }

  else
  {
    dispatch_assert_queue_V2(0);
    WeakRetained = 0;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  v45 = self->_logger;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "Did not find connect request in payload.", buf, 2u);
  }

  v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  [v10 respondWithError:v13];
LABEL_43:

  v46 = *MEMORY[0x277D85DE8];
}

uint64_t __83__HMDRemoteEventRouterServer__handleConnectRequest_originalMessage_connectionMode___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 hmf_isEqualToUUID:*(a1 + 32)];

  return v5;
}

void __83__HMDRemoteEventRouterServer__handleConnectRequest_originalMessage_connectionMode___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    if (!*(a1 + 72) && [*(a1 + 32) isErrorHMENotAcceptingConnections:v7])
    {
      v8 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3202];

      v7 = v8;
    }

    [*(a1 + 40) respondWithError:v7];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [v17 na_map:&__block_literal_global_129];
    v11 = [v10 na_map:&__block_literal_global_132_71309];
    [*(a1 + 32) logMetricsForLiveEvents:MEMORY[0x277CBEBF8] cachedEvents:v10 destinationDevice:*(a1 + 48) destinationDeviceIdentifier:*(a1 + 56) responseMessageType:2];
    v12 = objc_alloc_init(HMDRemoteEventRouterProtoConnectResponse);
    v13 = [v11 mutableCopy];
    [(HMDRemoteEventRouterProtoConnectResponse *)v12 setCachedEvents:v13];

    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = [(HMDRemoteEventRouterProtoConnectResponse *)v12 data];
    [v14 respondToMessage:v15 underlyingResponseData:v16 connection:*(a1 + 64) label:@"ConnectResponse"];

    objc_autoreleasePoolPop(v9);
  }
}

id __83__HMDRemoteEventRouterServer__handleConnectRequest_originalMessage_connectionMode___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D174A8];
  v5 = a3;
  v6 = a2;
  v7 = [[v4 alloc] initWithEvent:v5 topic:v6];

  return v7;
}

- (id)_underlyingMessageDataFromFragmentMessageData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[HMDRemoteEventRouterProtoFragmentedMessage alloc] initWithData:v6];
  v8 = v7;
  if (v7)
  {
    if ([(HMDRemoteEventRouterProtoFragmentedMessage *)v7 fragmentNumber]|| [(HMDRemoteEventRouterProtoFragmentedMessage *)v8 totalFragments]!= 1)
    {
      logger = self->_logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_error_impl(&dword_2531F8000, logger, OS_LOG_TYPE_ERROR, "Cannot decode fragmented data yet.", v13, 2u);
      }

      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *a4 = v10 = 0;
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [(HMDRemoteEventRouterProtoFragmentedMessage *)v8 fragmentData];
      objc_autoreleasePoolPop(v9);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_handleProtoRequest:(id)a3 originalMessage:(id)a4 connectionMode:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 request];
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      v11 = [v8 keepAlive];
      [(HMDRemoteEventRouterServer *)self _handleKeepAliveRequest:v11 originalMessage:v9];
      goto LABEL_21;
    }

    if (v10 == 4)
    {
      v11 = [v8 disconnect];
      [(HMDRemoteEventRouterServer *)self _handleDisconnectRequest:v11 originalMessage:v9];
      goto LABEL_21;
    }

    if (v10 != 5)
    {
      goto LABEL_14;
    }

    v12 = [v8 fetchEvents];
    [(HMDRemoteEventRouterServer *)self _handleFetchEventsRequest:v12 originalMessage:v9 connectionMode:a5];
LABEL_19:

    goto LABEL_22;
  }

  switch(v10)
  {
    case 0:
      logger = self->_logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2531F8000, logger, OS_LOG_TYPE_ERROR, "Unable to find request type.", buf, 2u);
      }

      v14 = MEMORY[0x277CCA9B8];
      v15 = 3;
      goto LABEL_17;
    case 1:
      v12 = [v8 connect];
      [(HMDRemoteEventRouterServer *)self _handleConnectRequest:v12 originalMessage:v9 connectionMode:a5];
      goto LABEL_19;
    case 2:
      v11 = [v8 changeRegistrations];
      [(HMDRemoteEventRouterServer *)self _handleChangeRegistrationsRequest:v11 originalMessage:v9];
LABEL_21:

      goto LABEL_22;
  }

LABEL_14:
  v16 = self->_logger;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *v18 = 0;
    _os_log_error_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "Received an unrecognized request type.", v18, 2u);
  }

  v14 = MEMORY[0x277CCA9B8];
  v15 = -1;
LABEL_17:
  v17 = [v14 hmErrorWithCode:v15];
  [v9 respondWithError:v17];

LABEL_22:
}

- (void)_handleRequestMessage:(id)a3 connectionMode:(int64_t)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
  {
    v8 = logger;
    v9 = [v6 identifier];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    *buf = 138412546;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "Handle request message: %@ connection mode: %@", buf, 0x16u);
  }

  v11 = [v6 BOOLForKey:@"isFragmented"];
  v12 = [v6 dataForKey:@"message.payload"];
  if (!v12)
  {
    v16 = self->_logger;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "Did not find message payload.", buf, 2u);
    }

    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    goto LABEL_23;
  }

  v13 = v12;
  if (!v11)
  {
    v15 = v12;
    goto LABEL_11;
  }

  v23 = 0;
  v14 = [(HMDRemoteEventRouterServer *)self _underlyingMessageDataFromFragmentMessageData:v12 error:&v23];
  v15 = v23;

  if (!v14)
  {
    if (!v15)
    {
      v20 = self->_logger;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "No payload from fragment message", buf, 2u);
      }

      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    }

    v21 = self->_logger;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v15;
      _os_log_error_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "Could not decode payload from fragment message %@", buf, 0xCu);
    }

LABEL_23:
    [v6 respondWithError:v15];
    goto LABEL_24;
  }

  v15 = v14;
LABEL_11:
  v17 = [[HMDRemoteEventRouterProtoMessage alloc] initWithData:v15];
  if ([(HMDRemoteEventRouterProtoMessage *)v17 hasRequest])
  {
    [(HMDRemoteEventRouterServer *)self _handleProtoRequest:v17 originalMessage:v6 connectionMode:a4];
  }

  else
  {
    v18 = self->_logger;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "Decoded payload does not have request.", buf, 2u);
    }

    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [v6 respondWithError:v19];
  }

LABEL_24:
  v22 = *MEMORY[0x277D85DE8];
}

- (void)_handleUserPrivilegeChange:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"kUserUUIDKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    if (self)
    {
      Property = objc_getProperty(self, v9, 32, 1);
    }

    else
    {
      Property = 0;
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __57__HMDRemoteEventRouterServer__handleUserPrivilegeChange___block_invoke;
    v16[3] = &unk_2797359B0;
    v16[4] = self;
    v17 = v8;
    dispatch_async(Property, v16);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@user UUID missed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)isErrorHMENotAcceptingConnections:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x277D17490]])
  {
    v5 = [v3 code] == 4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)respondToMessage:(id)a3 underlyingResponseData:(id)a4 supportsFragmentMessage:(BOOL)a5 label:(id)a6
{
  v7 = a5;
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v7)
  {
    v13 = objc_autoreleasePoolPush();
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      v15 = MEMORY[0x277CCABB0];
      v16 = logger;
      v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v11, "length")}];
      *buf = 138412546;
      v32 = v12;
      v33 = 2112;
      v34 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "Responding to %@ with message size: %@, fragment: 0", buf, 0x16u);
    }

    v18 = objc_alloc_init(HMDRemoteEventRouterProtoFragmentedMessage);
    [(HMDRemoteEventRouterProtoFragmentedMessage *)v18 setFragmentData:v11];
    [(HMDRemoteEventRouterProtoFragmentedMessage *)v18 setFragmentNumber:0];
    [(HMDRemoteEventRouterProtoFragmentedMessage *)v18 setTotalFragments:1];
    -[HMDRemoteEventRouterProtoFragmentedMessage setTotalSize:](v18, "setTotalSize:", [v11 length]);
    [(HMDRemoteEventRouterProtoFragmentedMessage *)v18 setRouterVersion:0];
    v29[0] = @"message.payload";
    v19 = [(HMDRemoteEventRouterProtoFragmentedMessage *)v18 data];
    v29[1] = @"isFragmented";
    v30[0] = v19;
    v30[1] = MEMORY[0x277CBEC38];
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    [v10 respondWithPayload:v20];

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v21 = self->_logger;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = MEMORY[0x277CCABB0];
      v23 = v21;
      v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(v11, "length")}];
      *buf = 138412546;
      v32 = v12;
      v33 = 2112;
      v34 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, "Responding to %@ with message size: %@", buf, 0x16u);
    }

    v27 = @"message.payload";
    v28 = v11;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    [v10 respondWithPayload:v25];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)respondToMessage:(id)a3 underlyingResponseData:(id)a4 connection:(id)a5 label:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  if (a5)
  {
    v13 = *(a5 + 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = v12;
  [(HMDRemoteEventRouterServer *)self respondToMessage:v12 underlyingResponseData:v11 supportsFragmentMessage:v13 & 1 label:v10];
}

- (id)messageTargetForMode:(int64_t)a3
{
  if (a3 == 1)
  {
    if (!self)
    {
      goto LABEL_7;
    }

    v4 = 48;
  }

  else
  {
    if (!self)
    {
      goto LABEL_7;
    }

    v4 = 40;
  }

  self = objc_getProperty(self, a2, v4, 1);
LABEL_7:

  return self;
}

- (OS_dispatch_queue)messageReceiveQueue
{
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
    v2 = vars8;
  }

  return self;
}

- (NSUUID)messageTargetUUID
{
  if (self)
  {
    self = objc_getProperty(self, a2, 40, 1);
    v2 = vars8;
  }

  return self;
}

- (void)handleHomeUserRemovedNotification:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__HMDRemoteEventRouterServer_handleHomeUserRemovedNotification___block_invoke;
  v8[3] = &unk_2797359B0;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(Property, v8);
}

void __64__HMDRemoteEventRouterServer_handleHomeUserRemovedNotification___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:@"HMDUserNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (!v5)
  {
    _HMFPreconditionFailure();
  }

  v6 = [*(a1 + 40) currentConnections];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__HMDRemoteEventRouterServer_handleHomeUserRemovedNotification___block_invoke_2;
  v16[3] = &unk_2797286A0;
  v7 = v5;
  v17 = v7;
  v8 = [v6 na_filter:v16];

  if ([v8 count])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v7 uuid];
      *buf = 138543874;
      v19 = v12;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Removing connections: %@ due to removed user: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__HMDRemoteEventRouterServer_handleHomeUserRemovedNotification___block_invoke_113;
  v15[3] = &unk_2797286C8;
  v15[4] = *(a1 + 40);
  [v8 na_each:v15];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __64__HMDRemoteEventRouterServer_handleHomeUserRemovedNotification___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [*(a1 + 32) uuid];
  v6 = [v4 hmf_isEqualToUUID:v5];

  return v6;
}

void __64__HMDRemoteEventRouterServer_handleHomeUserRemovedNotification___block_invoke_113(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 currentConnections];
  [v4 removeObject:v3];
}

- (void)handlePrimaryResidentIsCurrentDeviceChangeNotification:(id)a3
{
  v3 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HMDRemoteEventRouterServer_handlePrimaryResidentIsCurrentDeviceChangeNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = v3;
  dispatch_async(&self->super, block);
}

uint64_t __85__HMDRemoteEventRouterServer_handlePrimaryResidentIsCurrentDeviceChangeNotification___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 112));
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = [WeakRetained isCurrentDevicePrimaryResident];

  result = [(HMDRemoteEventRouterServer *)*(a1 + 32) isPrimaryResident];
  if (v4 != result)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    v8 = MEMORY[0x277CCABB0];
    v9 = v7;
    v10 = [v8 numberWithBool:v4];
    v16 = 138412290;
    v17 = v10;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "Primary resident status changed to %@", &v16, 0xCu);

    v6 = *(a1 + 32);
    if (!v6)
    {
      v11 = 0;
    }

    else
    {
LABEL_6:
      os_unfair_lock_lock_with_options();
      *(v6 + 20) = v4;
      os_unfair_lock_unlock((v6 + 16));
      v11 = *(a1 + 32);
    }

    v12 = [v11 currentConnections];
    [v12 removeAllObjects];

    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v13, 104, 1);
    }

    result = [Property reset];
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_registerForAccessoryMessages:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 na_firstObjectPassingTest:&__block_literal_global_106];
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

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v9 = logger;
    Property = objc_getProperty(self, v10, 48, 1);
    v12 = MEMORY[0x277CCABB0];
    v13 = Property;
    v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v7, "userPrivilege")}];
    *v39 = 138412802;
    *&v39[4] = Property;
    *&v39[12] = 1024;
    *&v39[14] = v7 != 0;
    v40 = 2112;
    v41 = v14;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "Registering for accessory messages %@, user privilege: (exists: %d) %@", v39, 0x1Cu);
  }

  v15 = [HMDRemoteEventRouterServerMessageReceiver alloc];
  v17 = objc_getProperty(self, v16, 48, 1);
  v18 = v17;
  v20 = objc_getProperty(self, v19, 32, 1);
  v21 = v18;
  v22 = v20;
  v23 = self;
  if (v15)
  {
    *v39 = v15;
    *&v39[8] = HMDRemoteEventRouterServerMessageReceiver;
    v24 = objc_msgSendSuper2(v39, sel_init);
    v25 = v24;
    if (v24)
    {
      objc_storeStrong(v24 + 1, v17);
      objc_storeStrong(v25 + 2, v20);
      objc_storeWeak(v25 + 3, v23);
    }
  }

  else
  {
    v25 = 0;
  }

  objc_setProperty_atomic(v23, v26, v25, 136);
  v28 = objc_getProperty(v23, v27, 136, 1);
  v30 = objc_getProperty(v23, v29, 80, 1);
  if (v28)
  {
    v31 = v4;
    WeakRetained = objc_loadWeakRetained(v28 + 3);
    v33 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    *v39 = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    v35 = [v34 arrayByAddingObjectsFromArray:v31];

    if (WeakRetained)
    {
      v37 = objc_getProperty(WeakRetained, v36, 56, 1);
    }

    else
    {
      v37 = 0;
    }

    [v30 registerForMessage:v37 receiver:v28 policies:v35 selector:sel_handleRequestMessage_];
  }

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t __60__HMDRemoteEventRouterServer__registerForAccessoryMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v2 != 0);
}

- (void)_registerForMessages:(id)a3 withHome:(id)a4
{
  v32[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  v9 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v32[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  v11 = [v10 arrayByAddingObjectsFromArray:v6];

  if (self)
  {
    Property = objc_getProperty(self, v12, 80, 1);
  }

  else
  {
    Property = 0;
  }

  v14 = Property;
  v15 = [v6 na_firstObjectPassingTest:&__block_literal_global_95];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v20 = MEMORY[0x277CCABB0];
    v21 = logger;
    v22 = [v20 numberWithUnsignedInteger:{objc_msgSend(v17, "userPrivilege")}];
    v29[0] = 67109378;
    v29[1] = v17 != 0;
    v30 = 2112;
    v31 = v22;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, "Registering for messages with user privilege: (exists: %d) %@", v29, 0x12u);
  }

  [v14 registerForMessage:objc_getProperty(self receiver:v19 policies:56 selector:{1), self, v11, sel__handlePrimaryRequestMessage_}];

  v24 = objc_getProperty(self, v23, 88, 1);
  v25 = [WeakRetained primaryResidentChangeMonitorForRouterServer:self];
  [v24 addObserver:self selector:sel_handlePrimaryResidentIsCurrentDeviceChangeNotification_ name:@"HMDPrimaryResidentChangeMonitorIsCurrentDeviceChangeNotification" object:v25];

  [objc_getProperty(self v26];
  [objc_getProperty(self v27];

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __60__HMDRemoteEventRouterServer__registerForMessages_withHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v2 != 0);
}

- (id)logIdentifier
{
  if (self)
  {
    self = objc_getProperty(self, a2, 48, 1);
    v2 = vars8;
  }

  return [(HMDRemoteEventRouterServer *)self UUIDString];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v6 = NSStringFromClass(v4);
  if (self)
  {
    v7 = objc_getProperty(self, v5, 40, 1);
    Property = objc_getProperty(self, v8, 48, 1);
    v10 = MEMORY[0x277CCABB0];
    v11 = Property;
    os_unfair_lock_lock_with_options();
    isPrimaryResident = self->_isPrimaryResident;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v10 = MEMORY[0x277CCABB0];
    isPrimaryResident = 0;
    v7 = 0;
    v11 = 0;
  }

  v13 = [v10 numberWithBool:isPrimaryResident];
  v14 = [v3 stringWithFormat:@"<%@ home: %@, accessory: %@, mode: %@>", v6, v7, v11, v13];

  return v14;
}

- (HMDRemoteEventRouterServer)initWithPrimaryModeUUID:(id)a3 residentModeUUID:(id)a4 queue:(id)a5 messageDispatcher:(id)a6 dataSource:(id)a7 notificationCenter:(id)a8 requestMessageName:(id)a9 updateMessageName:(id)a10 multiHopFetchResponseMessageName:(id)a11 logCategory:(const char *)a12 logEventSubmitter:(id)a13 connectionServerFactory:(id)a14
{
  v49 = a3;
  v40 = a4;
  v48 = a4;
  v47 = a5;
  v46 = a6;
  v19 = a7;
  v45 = a8;
  v44 = a9;
  v43 = a10;
  v42 = a11;
  v20 = v19;
  v50 = a13;
  v21 = a14;
  v51.receiver = self;
  v51.super_class = HMDRemoteEventRouterServer;
  v22 = [(HMDRemoteEventRouterServer *)&v51 init];
  v23 = v22;
  if (v22)
  {
    v22->_lock._os_unfair_lock_opaque = 0;
    v24 = HMFGetOSLogHandle();
    logger = v23->_logger;
    v23->_logger = v24;

    v26 = os_log_create("com.apple.HomeKitDaemon", a12);
    v27 = v23->_logger;
    v23->_logger = v26;

    v28 = objc_alloc_init(HMDEventRouterTimerProvider);
    timerProvider = v23->_timerProvider;
    v23->_timerProvider = v28;

    objc_storeStrong(&v23->_homeUUID, a3);
    objc_storeStrong(&v23->_accessoryUUID, v40);
    objc_storeStrong(&v23->_messageDispatcher, a6);
    objc_storeStrong(&v23->_workQueue, a5);
    objc_storeWeak(&v23->_dataSource, v20);
    objc_storeStrong(&v23->_notificationCenter, a8);
    objc_storeStrong(&v23->_routerRequestMessageName, a9);
    objc_storeStrong(&v23->_routerUpdateMessageName, a10);
    objc_storeStrong(&v23->_routerMultiHopFetchResponseMessageName, a11);
    v30 = v21[2](v21);
    connectionServer = v23->_connectionServer;
    v23->_connectionServer = v30;

    [(HMEMessageDatagramServer *)v23->_connectionServer setDelegate:v23];
    [(HMEMessageDatagramServer *)v23->_connectionServer setDataSource:v23];
    v32 = [MEMORY[0x277CBEB18] array];
    currentConnections = v23->_currentConnections;
    v23->_currentConnections = v32;

    *&v23->_isPrimaryResident = 0;
    v34 = [MEMORY[0x277CBEB38] dictionary];
    accessControls = v23->_accessControls;
    v23->_accessControls = v34;

    v36 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    pendingFetchRequests = v23->_pendingFetchRequests;
    v23->_pendingFetchRequests = v36;

    objc_storeWeak(&v23->_logEventSubmitter, v50);
  }

  return v23;
}

- (HMDRemoteEventRouterServer)initWithPrimaryModeUUID:(id)a3 residentModeUUID:(id)a4 queue:(id)a5 messageDispatcher:(id)a6 dataSource:(id)a7 notificationCenter:(id)a8 requestMessageName:(id)a9 updateMessageName:(id)a10 multiHopFetchResponseMessageName:(id)a11 subscriptionProvider:(id)a12 registrationEventRouter:(id)a13 storeReadHandle:(id)a14
{
  v36 = a5;
  v33 = a12;
  v18 = a13;
  v19 = a14;
  v41 = a11;
  v40 = a10;
  v38 = a9;
  v39 = a8;
  v37 = a7;
  v35 = a6;
  v20 = a4;
  v21 = a3;
  v22 = [v21 UUIDString];
  v23 = [@"RemoteEventRouter.Server." stringByAppendingString:v22];

  v24 = [v23 UTF8String];
  v28 = +[HMDMetricsManager sharedLogEventSubmitter];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __256__HMDRemoteEventRouterServer_initWithPrimaryModeUUID_residentModeUUID_queue_messageDispatcher_dataSource_notificationCenter_requestMessageName_updateMessageName_multiHopFetchResponseMessageName_subscriptionProvider_registrationEventRouter_storeReadHandle___block_invoke;
  v43[3] = &unk_279728658;
  v44 = v36;
  v45 = v33;
  v46 = v18;
  v47 = v19;
  v48 = v23;
  v32 = v23;
  v30 = v19;
  v29 = v18;
  v34 = v33;
  v25 = v36;
  v26 = [(HMDRemoteEventRouterServer *)self initWithPrimaryModeUUID:v21 residentModeUUID:v20 queue:v25 messageDispatcher:v35 dataSource:v37 notificationCenter:v39 requestMessageName:v38 updateMessageName:v40 multiHopFetchResponseMessageName:v41 logCategory:v24 logEventSubmitter:v28 connectionServerFactory:v43];

  return v26;
}

id __256__HMDRemoteEventRouterServer_initWithPrimaryModeUUID_residentModeUUID_queue_messageDispatcher_dataSource_notificationCenter_requestMessageName_updateMessageName_multiHopFetchResponseMessageName_subscriptionProvider_registrationEventRouter_storeReadHandle___block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x277D174D0]) initWithQueue:*(a1 + 32) provider:*(a1 + 40) registrationEventRouter:*(a1 + 48) storeReadHandle:*(a1 + 56) logCategory:{objc_msgSend(*(a1 + 64), "UTF8String")}];

  return v1;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_71364 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_71364, &__block_literal_global_71365);
  }

  v3 = logCategory__hmf_once_v5_71366;

  return v3;
}

uint64_t __41__HMDRemoteEventRouterServer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_71366;
  logCategory__hmf_once_v5_71366 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end