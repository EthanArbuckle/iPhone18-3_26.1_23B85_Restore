@interface HMDRemoteEventRouterClient
+ (id)logCategory;
+ (id)routerClientWithQueue:(id)a3 storeReadHandle:(id)a4 storeWriteHandle:(id)a5 logCategory:(const char *)a6;
+ (id)routerClientWithQueue:(id)a3 storeReadHandle:(id)a4 storeWriteHandle:(id)a5 retryIntervalProvider:(id)a6 logCategory:(const char *)a7;
- (BOOL)client:(id)a3 isConnectionTerminatingError:(id)a4;
- (BOOL)clientIsEnabled:(id)a3;
- (BOOL)hasConnectivityToServer;
- (BOOL)isPrimaryResident;
- (HMDRemoteEventRouterClient)initWithMessageTargetUUID:(id)a3 queue:(id)a4 dataSource:(id)a5 messageDispatcher:(id)a6 notificationCenter:(id)a7 requestMessageName:(id)a8 updateMessageName:(id)a9 multiHopFetchResponseMessageName:(id)a10 logCategory:(const char *)a11 logEventSubmitter:(id)a12 eventRouterClientFactory:(id)a13;
- (HMDRemoteEventRouterClient)initWithMessageTargetUUID:(id)a3 queue:(id)a4 dataSource:(id)a5 messageDispatcher:(id)a6 notificationCenter:(id)a7 requestMessageName:(id)a8 updateMessageName:(id)a9 multiHopFetchResponseMessageName:(id)a10 storeReadHandle:(id)a11 storeWriteHandle:(id)a12;
- (HMDRemoteEventRouterClient)initWithMessageTargetUUID:(id)a3 queue:(id)a4 dataSource:(id)a5 messageDispatcher:(id)a6 notificationCenter:(id)a7 requestMessageName:(id)a8 updateMessageName:(id)a9 multiHopFetchResponseMessageName:(id)a10 storeReadHandle:(id)a11 storeWriteHandle:(id)a12 logCategory:(const char *)a13;
- (HMDRemoteEventRouterClient)initWithMessageTargetUUID:(id)a3 queue:(id)a4 dataSource:(id)a5 messageDispatcher:(id)a6 notificationCenter:(id)a7 requestMessageName:(id)a8 updateMessageName:(id)a9 multiHopFetchResponseMessageName:(id)a10 storeReadHandle:(id)a11 storeWriteHandle:(id)a12 retryIntervalProvider:(id)a13 logCategory:(const char *)a14;
- (HMDRemoteEventRouterClientDataSource)dataSource;
- (HMMLogEventSubmitting)logEventSubmitter;
- (id)_underlyingMessageDataFromFragmentMessageData:(id)a3 error:(id *)a4;
- (id)client:(id)a3 forwardingTopicsForTopics:(id)a4;
- (id)client:(id)a3 sendConnectWithAddedFilters:(id)a4 completion:(id)a5;
- (id)client:(id)a3 upstreamTopicsForTopic:(id)a4;
- (id)dumpStateDescription;
- (id)logIdentifier;
- (id)responseHandlerForMessageIdentifier:(id)a3 serverIdentifier:(id)a4 messageType:(int64_t)a5 completion:(id)a6;
- (id)sendMessageWithPayloadMessage:(id)a3 client:(id)a4 messageType:(int64_t)a5 completion:(id)a6;
- (void)_handleCachedEventMessage:(id)a3 fromServer:(id)a4 events:(id)a5 completion:(id)a6;
- (void)_handleEventUpdateMessage:(id)a3 fromServer:(id)a4 events:(id)a5 completion:(id)a6;
- (void)_handleMultiHopFetchResponse:(id)a3 originalMessage:(id)a4;
- (void)_handleUpdateMessage:(id)a3;
- (void)_handleUpdatedEventsRequest:(id)a3 originalMessage:(id)a4;
- (void)_registerForMessages:(id)a3;
- (void)clientDidConnect:(id)a3 serverIdentifier:(id)a4;
- (void)clientDidDisconnect:(id)a3;
- (void)didChangeFetchAvailableCondition:(BOOL)a3;
- (void)didChangeHasForegroundClient:(BOOL)a3;
- (void)handlePrimaryResidentConfirmedDeviceIdentifierChangeNotification:(id)a3;
- (void)hasConnectivityDidChangeFor:(id)a3;
- (void)networkAvailabilityDidChange:(BOOL)a3;
- (void)sendChangeRegistrationsMessageWithAddedFilters:(id)a3 removedFilters:(id)a4 client:(id)a5 completion:(id)a6;
- (void)sendChangeRegistrationsMessageWithAddedFilters:(id)a3 removedFilters:(id)a4 completion:(id)a5;
- (void)sendDisconnectForClient:(id)a3 completion:(id)a4;
- (void)sendKeepAliveForClient:(id)a3 completion:(id)a4;
- (void)sendMessageWithPayloadMessage:(id)a3 messageType:(int64_t)a4 destination:(id)a5 serverIdentifier:(id)a6 completion:(id)a7;
@end

@implementation HMDRemoteEventRouterClient

- (HMDRemoteEventRouterClientDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (HMMLogEventSubmitting)logEventSubmitter
{
  WeakRetained = objc_loadWeakRetained(&self->_logEventSubmitter);

  return WeakRetained;
}

- (id)dumpStateDescription
{
  v3 = MEMORY[0x277CCACA8];
  isPrimaryResident = self->_isPrimaryResident;
  v5 = HMFBooleanToString();
  v6 = [(HMDRemoteEventRouterClient *)self messageTargetUUID];
  v7 = [(HMDRemoteEventRouterClient *)self eventRouterClient];
  v8 = [v7 dumpStateDescription];
  v9 = [v3 stringWithFormat:@"[HMDRemoteEventRouterClient primary: %@, messageTarget: %@, client: %@]", v5, v6, v8];

  return v9;
}

- (void)didChangeFetchAvailableCondition:(BOOL)a3
{
  v5 = [(HMDRemoteEventRouterClient *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__HMDRemoteEventRouterClient_didChangeFetchAvailableCondition___block_invoke;
  v6[3] = &unk_279735D28;
  v7 = a3;
  v6[4] = self;
  dispatch_async(v5, v6);
}

void __63__HMDRemoteEventRouterClient_didChangeFetchAvailableCondition___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  v2 = [*(a1 + 32) eventRouterClient];
  [v2 updateDormantFetchCondition:v1 completion:&__block_literal_global_218];
}

- (void)didChangeHasForegroundClient:(BOOL)a3
{
  v5 = [(HMDRemoteEventRouterClient *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HMDRemoteEventRouterClient_didChangeHasForegroundClient___block_invoke;
  v6[3] = &unk_279735D28;
  v7 = a3;
  v6[4] = self;
  dispatch_async(v5, v6);
}

void __59__HMDRemoteEventRouterClient_didChangeHasForegroundClient___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  v2 = [*(a1 + 32) eventRouterClient];
  [v2 updateConnectionMode:v1 completion:&__block_literal_global_216];
}

- (void)networkAvailabilityDidChange:(BOOL)a3
{
  v5 = [(HMDRemoteEventRouterClient *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HMDRemoteEventRouterClient_networkAvailabilityDidChange___block_invoke;
  v6[3] = &unk_279735D28;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

void __59__HMDRemoteEventRouterClient_networkAvailabilityDidChange___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isNetworkAvailable];
  LODWORD(v3) = *(a1 + 40);
  if (v3 == v2)
  {
    if (!*(a1 + 40))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v4 = *(a1 + 32);
  v5 = v4[1];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v3 = HMFBooleanToString();
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "Network availability changed to %@", &v11, 0xCu);

    v4 = *(a1 + 32);
    LOBYTE(v3) = *(a1 + 40);
  }

  [v4 setIsNetworkAvailable:v3 & 1];
  if (*(a1 + 40))
  {
LABEL_7:
    v7 = *(a1 + 32);
    v8 = [v7 eventRouterClient];
    LODWORD(v7) = [v7 clientIsEnabled:v8];

    if (v7)
    {
      v9 = [*(a1 + 32) eventRouterClient];
      [v9 connectionCapabilityDidChange];
    }
  }

LABEL_9:
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasConnectivityToServer
{
  v2 = [(HMDRemoteEventRouterClient *)self connectivityMonitor];
  v3 = [v2 hasConnectivity];

  return v3;
}

- (id)responseHandlerForMessageIdentifier:(id)a3 serverIdentifier:(id)a4 messageType:(int64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __106__HMDRemoteEventRouterClient_responseHandlerForMessageIdentifier_serverIdentifier_messageType_completion___block_invoke;
  v18[3] = &unk_2797238E8;
  objc_copyWeak(v22, &location);
  v22[1] = a5;
  v20 = v11;
  v21 = v12;
  v19 = v10;
  v13 = v11;
  v14 = v12;
  v15 = v10;
  v16 = _Block_copy(v18);

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);

  return v16;
}

void __106__HMDRemoteEventRouterClient_responseHandlerForMessageIdentifier_serverIdentifier_messageType_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __106__HMDRemoteEventRouterClient_responseHandlerForMessageIdentifier_serverIdentifier_messageType_completion___block_invoke_2;
    block[3] = &unk_279731CD8;
    block[4] = v8;
    v13 = v5;
    v10 = *(a1 + 32);
    v11 = *(a1 + 64);
    v14 = v10;
    v18 = v11;
    v15 = v6;
    v17 = *(a1 + 48);
    v16 = *(a1 + 40);
    dispatch_async(v9, block);
  }
}

void __106__HMDRemoteEventRouterClient_responseHandlerForMessageIdentifier_serverIdentifier_messageType_completion___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dataSource];
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = v4[1];
  if (v3)
  {
    if (os_log_type_enabled(v4[1], OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 48);
      *buf = 138412546;
      v24 = v20;
      v25 = 2112;
      v26 = v3;
      _os_log_error_impl(&dword_2531F8000, v5, OS_LOG_TYPE_ERROR, "Failed to send message: %@ error: %@", buf, 0x16u);
      v4 = *(a1 + 32);
    }

    v6 = [(os_log_t *)v4 connectivityMonitor];
    [v6 sendMessageFailed];

    if (*(a1 + 80) == 1)
    {
      [v2 client:*(a1 + 32) connectDidFailWithError:*(a1 + 40)];
    }
  }

  else
  {
    if (os_log_type_enabled(v4[1], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      *buf = 138412290;
      v24 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "Successfully sent message: %@", buf, 0xCu);
      v4 = *(a1 + 32);
    }

    v8 = [(os_log_t *)v4 connectivityMonitor];
    [v8 sendMessageSucceeded];
  }

  if ([v3 isHMError] && objc_msgSend(v3, "code") == 3202)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Event router message rejected by remote due to it being non-primary, kicking primary discovery", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [v2 discoverPrimaryResidentForEventRouterClient:*(a1 + 32)];
  }

  v13 = [*(a1 + 56) hmf_dataForKey:@"message.payload"];
  v14 = 0;
  if ([*(a1 + 56) hmf_BOOLForKey:@"isFragmented"] && v13)
  {
    v15 = *(a1 + 32);
    v22 = 0;
    v16 = [v15 _underlyingMessageDataFromFragmentMessageData:v13 error:&v22];
    v14 = v22;

    if (!v16 || v14)
    {
      v17 = *(*(a1 + 32) + 8);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        if (!v14)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }

      v21 = *(a1 + 40);
      *buf = 138412290;
      v24 = v21;
      _os_log_error_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "Unable to decode fragment payload with error: %@", buf, 0xCu);
      if (v14)
      {
LABEL_20:
        v14 = v14;

        v3 = v14;
      }
    }
  }

  else
  {
    v16 = v13;
  }

LABEL_22:
  v18 = *(a1 + 72);
  if (v18)
  {
    (*(v18 + 16))(v18, *(a1 + 64), v16, v3);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)sendMessageWithPayloadMessage:(id)a3 messageType:(int64_t)a4 destination:(id)a5 serverIdentifier:(id)a6 completion:(id)a7
{
  v31[2] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [(HMDRemoteEventRouterClient *)self dataSource];
  if ([v15 routerClientSupportsFragmentMessageForServerIdentifier:v13])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = objc_alloc_init(HMDRemoteEventRouterProtoFragmentedMessage);
    [(HMDRemoteEventRouterProtoFragmentedMessage *)v17 setFragmentNumber:0];
    [(HMDRemoteEventRouterProtoFragmentedMessage *)v17 setFragmentData:v11];
    [(HMDRemoteEventRouterProtoFragmentedMessage *)v17 setTotalFragments:1];
    v18 = [(HMDRemoteEventRouterProtoFragmentedMessage *)v17 fragmentData];
    -[HMDRemoteEventRouterProtoFragmentedMessage setTotalSize:](v17, "setTotalSize:", [v18 length]);

    [(HMDRemoteEventRouterProtoFragmentedMessage *)v17 setRouterVersion:0];
    v19 = [(HMDRemoteEventRouterProtoFragmentedMessage *)v17 data];

    objc_autoreleasePoolPop(v16);
    v11 = v19;
  }

  v20 = [(HMDRemoteEventRouterClient *)self requestMessageName];
  v30[0] = @"message.payload";
  v21 = [v11 copy];
  v30[1] = @"isFragmented";
  v31[0] = v21;
  v31[1] = MEMORY[0x277CBEC38];
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v23 = [HMDRemoteMessage secureMessageWithName:v20 qualityOfService:-1 destination:v12 messagePayload:v22 timeout:[(HMDRemoteEventRouterClient *)self messageTransportRestriction] restriction:150.0];

  v24 = [v23 identifier];
  v25 = [(HMDRemoteEventRouterClient *)self responseHandlerForMessageIdentifier:v24 serverIdentifier:v13 messageType:v29 completion:v14];
  [v23 setResponseHandler:v25];

  v26 = [(HMDRemoteEventRouterClient *)self messageDispatcher];
  [v26 sendMessage:v23];

  v27 = *MEMORY[0x277D85DE8];
}

- (id)sendMessageWithPayloadMessage:(id)a3 client:(id)a4 messageType:(int64_t)a5 completion:(id)a6
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  v11 = [(HMDRemoteEventRouterClient *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(HMDRemoteEventRouterClient *)self dataSource];
  v21 = 0;
  v13 = [v12 routerClientMessageDestination:self serverIdentifier:&v21];
  v14 = v21;
  v15 = v14;
  if (v13 && v14)
  {
    [(HMDRemoteEventRouterClient *)self sendMessageWithPayloadMessage:v9 messageType:a5 destination:v13 serverIdentifier:v14 completion:v10];
    v16 = v15;
    goto LABEL_8;
  }

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v23 = v15;
    _os_log_error_impl(&dword_2531F8000, logger, OS_LOG_TYPE_ERROR, "Did not find resident destination for server identifier %@.", buf, 0xCu);
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(v10 + 2))(v10, 0, 0, v18);
  }

LABEL_7:
  v16 = 0;
LABEL_8:

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)clientDidDisconnect:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = [(HMDRemoteEventRouterClient *)self workQueue];
  dispatch_assert_queue_V2(v4);

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_2531F8000, logger, OS_LOG_TYPE_DEFAULT, "Client disconnected from server", v12, 2u);
  }

  if ([(HMDRemoteEventRouterClient *)self isConnected])
  {
    v6 = [(HMDRemoteEventRouterClient *)self notificationCenter];
    v13 = @"HMDRemoteEventRouterClientHomeUUIDKey";
    v7 = [(HMDRemoteEventRouterClient *)self identifier];
    v14[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v6 postNotificationName:@"HMDRemoteEventRouterClientDidDisconnect" object:self userInfo:v8];
  }

  [(HMDRemoteEventRouterClient *)self setIsConnected:0];
  v9 = [(HMDRemoteEventRouterClient *)self connectivityMonitor];
  [v9 underlyingConnectionChanged:{-[HMDRemoteEventRouterClient isConnected](self, "isConnected")}];

  v10 = [(HMDRemoteEventRouterClient *)self dataSource];
  [v10 client:self connectionStatusDidChange:{-[HMDRemoteEventRouterClient isConnected](self, "isConnected")}];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)clientDidConnect:(id)a3 serverIdentifier:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(HMDRemoteEventRouterClient *)self workQueue];
  dispatch_assert_queue_V2(v6);

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&dword_2531F8000, logger, OS_LOG_TYPE_DEFAULT, "Client did connect to server %@", buf, 0xCu);
  }

  if (![(HMDRemoteEventRouterClient *)self isConnected])
  {
    v8 = [(HMDRemoteEventRouterClient *)self notificationCenter];
    v9 = [(HMDRemoteEventRouterClient *)self identifier];
    v15 = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [v8 postNotificationName:@"HMDRemoteEventRouterClientDidConnect" object:self userInfo:v10];
  }

  [(HMDRemoteEventRouterClient *)self setIsConnected:1];
  v11 = [(HMDRemoteEventRouterClient *)self connectivityMonitor];
  [v11 underlyingConnectionChanged:{-[HMDRemoteEventRouterClient isConnected](self, "isConnected")}];

  v12 = [(HMDRemoteEventRouterClient *)self dataSource];
  [v12 client:self connectionStatusDidChange:{-[HMDRemoteEventRouterClient isConnected](self, "isConnected")}];

  v13 = *MEMORY[0x277D85DE8];
}

void __76__HMDRemoteEventRouterClient_client_fetchWithFilters_isMultiHop_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = v10;
  v12 = MEMORY[0x277CBEC10];
  if (v8 && !v9)
  {
    v36 = v10;
    v13 = [[HMDRemoteEventRouterProtoFetchEventsResponse alloc] initWithData:v8];
    if (v13)
    {
      v9 = 0;
    }

    else
    {
      v14 = *(*(a1 + 32) + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "Did not find fetch response", buf, 2u);
      }

      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:{2, v36}];
    }

    if ([(HMDRemoteEventRouterProtoFetchEventsResponse *)v13 changedEventsCount])
    {
      v15 = *(*(a1 + 32) + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = MEMORY[0x277CCABB0];
        v17 = v15;
        v18 = [v16 numberWithUnsignedInteger:{-[HMDRemoteEventRouterProtoFetchEventsResponse changedEventsCount](v13, "changedEventsCount")}];
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "length")}];
        *buf = 138412546;
        v41 = v18;
        v42 = 2112;
        v43 = v19;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "Received %@ events in fetch response of size %@", buf, 0x16u);
      }

      v20 = MEMORY[0x277D174A8];
      v21 = [(HMDRemoteEventRouterProtoFetchEventsResponse *)v13 changedEvents];
      v22 = [v20 eventsMapFromProtoEvents:v21];
    }

    else
    {
      v22 = MEMORY[0x277CBEC10];
    }

    v23 = objc_autoreleasePoolPush();
    v24 = *(a1 + 32);
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [v22 count];
      *buf = 138543618;
      v41 = v26;
      v42 = 2048;
      v43 = v27;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Fetch got topics %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 32);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v31;
      v42 = 2112;
      v43 = v22;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_DEBUG, "%{public}@Fetch got topics %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v32 = [*(a1 + 40) didReceiveFetchResponseWithCachedEvents:v22];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __76__HMDRemoteEventRouterClient_client_fetchWithFilters_isMultiHop_completion___block_invoke_211;
    v38[3] = &unk_279723828;
    v33 = v32;
    v39 = v33;
    v12 = [v22 na_filter:v38];

    if ([v12 count])
    {
      v34 = [*(a1 + 32) dataSource];
      [v34 client:*(a1 + 32) didReceiveFetchedCachedEvents:v12];
    }

    v11 = v37;
  }

  (*(*(a1 + 48) + 16))();

  objc_autoreleasePoolPop(v11);
  v35 = *MEMORY[0x277D85DE8];
}

HMDRemoteEventRouterProtoTopic *__76__HMDRemoteEventRouterClient_client_fetchWithFilters_isMultiHop_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(HMDRemoteEventRouterProtoTopic);
  [(HMDRemoteEventRouterProtoTopic *)v3 setTopic:v2];

  return v3;
}

- (void)sendDisconnectForClient:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(HMDRemoteEventRouterProtoMessage);
  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [v9 UUIDString];
  [(HMDRemoteEventRouterProtoMessage *)v8 setIdentifier:v10];

  v11 = objc_alloc_init(HMDRemoteEventRouterProtoDisconnectMessage);
  [(HMDRemoteEventRouterProtoMessage *)v8 setDisconnect:v11];

  v12 = [(HMDRemoteEventRouterProtoMessage *)v8 data];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__HMDRemoteEventRouterClient_sendDisconnectForClient_completion___block_invoke;
  v15[3] = &unk_279723878;
  v16 = v7;
  v13 = v7;
  v14 = [(HMDRemoteEventRouterClient *)self sendMessageWithPayloadMessage:v12 client:v6 messageType:4 completion:v15];
}

- (void)sendKeepAliveForClient:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(HMDRemoteEventRouterProtoMessage);
  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [v9 UUIDString];
  [(HMDRemoteEventRouterProtoMessage *)v8 setIdentifier:v10];

  v11 = objc_alloc_init(HMDRemoteEventRouterProtoKeepAliveMessage);
  [(HMDRemoteEventRouterProtoMessage *)v8 setKeepAlive:v11];

  v12 = [(HMDRemoteEventRouterProtoMessage *)v8 data];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__HMDRemoteEventRouterClient_sendKeepAliveForClient_completion___block_invoke;
  v15[3] = &unk_279723878;
  v16 = v7;
  v13 = v7;
  v14 = [(HMDRemoteEventRouterClient *)self sendMessageWithPayloadMessage:v12 client:v6 messageType:2 completion:v15];
}

- (id)client:(id)a3 sendConnectWithAddedFilters:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(HMDRemoteEventRouterProtoMessage);
  v12 = [MEMORY[0x277CCAD78] UUID];
  v13 = [v12 UUIDString];
  [(HMDRemoteEventRouterProtoMessage *)v11 setIdentifier:v13];

  v14 = objc_alloc_init(HMDRemoteEventRouterProtoConnectMessage);
  [(HMDRemoteEventRouterProtoConnectMessage *)v14 setRouterVersion:0];
  v15 = [v9 mutableCopy];

  [(HMDRemoteEventRouterProtoConnectMessage *)v14 setTopicFilterAdditions:v15];
  [(HMDRemoteEventRouterProtoMessage *)v11 setConnect:v14];
  v16 = [(HMDRemoteEventRouterProtoMessage *)v11 data];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __76__HMDRemoteEventRouterClient_client_sendConnectWithAddedFilters_completion___block_invoke;
  v20[3] = &unk_279723850;
  v20[4] = self;
  v21 = v8;
  v17 = v8;
  v18 = [(HMDRemoteEventRouterClient *)self sendMessageWithPayloadMessage:v16 client:v10 messageType:1 completion:v20];

  return v18;
}

void __76__HMDRemoteEventRouterClient_client_sendConnectWithAddedFilters_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = MEMORY[0x277CBEC10];
  if (v8 && !v9)
  {
    v12 = [[HMDRemoteEventRouterProtoConnectResponse alloc] initWithData:v8];
    if (v12)
    {
      v10 = 0;
    }

    else
    {
      v13 = *(*(a1 + 32) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v23) = 0;
        _os_log_error_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "Did not find connect response", &v23, 2u);
      }

      v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    }

    if ([(HMDRemoteEventRouterProtoConnectResponse *)v12 cachedEventsCount])
    {
      v14 = *(*(a1 + 32) + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = MEMORY[0x277CCABB0];
        v16 = v14;
        v17 = [v15 numberWithUnsignedInteger:{-[HMDRemoteEventRouterProtoConnectResponse cachedEventsCount](v12, "cachedEventsCount")}];
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "length")}];
        v23 = 138412546;
        v24 = v17;
        v25 = 2112;
        v26 = v18;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "Received %@ events in connect response of size %@", &v23, 0x16u);
      }

      v19 = MEMORY[0x277D174A8];
      v20 = [(HMDRemoteEventRouterProtoConnectResponse *)v12 cachedEvents];
      v11 = [v19 eventsMapFromProtoEvents:v20];
    }

    if (v7)
    {
      if (!v10)
      {
        v21 = *(*(a1 + 32) + 8);
        if (os_signpost_enabled(v21))
        {
          v23 = 138412290;
          v24 = v7;
          _os_signpost_emit_with_name_impl(&dword_2531F8000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EventRouterClientConnected", "serverIdentifier=%{signpost.description:attribute}@ ", &v23, 0xCu);
        }
      }
    }
  }

  (*(*(a1 + 40) + 16))();

  v22 = *MEMORY[0x277D85DE8];
}

- (void)sendChangeRegistrationsMessageWithAddedFilters:(id)a3 removedFilters:(id)a4 client:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(HMDRemoteEventRouterProtoMessage);
  v15 = [MEMORY[0x277CCAD78] UUID];
  v16 = [v15 UUIDString];
  [(HMDRemoteEventRouterProtoMessage *)v14 setIdentifier:v16];

  v17 = objc_alloc_init(HMDRemoteEventRouterProtoChangeRegistrationsMessage);
  [(HMDRemoteEventRouterProtoMessage *)v14 setChangeRegistrations:v17];

  v18 = [v13 mutableCopy];
  v19 = [(HMDRemoteEventRouterProtoMessage *)v14 changeRegistrations];
  [v19 setTopicFilterAdditions:v18];

  v20 = [v12 mutableCopy];
  v21 = [(HMDRemoteEventRouterProtoMessage *)v14 changeRegistrations];
  [v21 setTopicFilterRemovals:v20];

  v22 = [(HMDRemoteEventRouterProtoMessage *)v14 data];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __110__HMDRemoteEventRouterClient_sendChangeRegistrationsMessageWithAddedFilters_removedFilters_client_completion___block_invoke;
  v25[3] = &unk_279723850;
  v25[4] = self;
  v26 = v11;
  v23 = v11;
  v24 = [(HMDRemoteEventRouterClient *)self sendMessageWithPayloadMessage:v22 client:v10 messageType:3 completion:v25];
}

void __110__HMDRemoteEventRouterClient_sendChangeRegistrationsMessageWithAddedFilters_removedFilters_client_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = MEMORY[0x277CBEC10];
  if (v6 && !v7)
  {
    v10 = [[HMDRemoteEventRouterProtoChangeRegistrationsResponse alloc] initWithData:v6];
    if (v10)
    {
      v8 = 0;
    }

    else
    {
      v11 = *(*(a1 + 32) + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20) = 0;
        _os_log_error_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "Did not find change registrations response", &v20, 2u);
      }

      v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    }

    if ([(HMDRemoteEventRouterProtoChangeRegistrationsResponse *)v10 cachedEventsCount])
    {
      v12 = *(*(a1 + 32) + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = MEMORY[0x277CCABB0];
        v14 = v12;
        v15 = [v13 numberWithUnsignedInteger:{-[HMDRemoteEventRouterProtoChangeRegistrationsResponse cachedEventsCount](v10, "cachedEventsCount")}];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "length")}];
        v20 = 138412546;
        v21 = v15;
        v22 = 2112;
        v23 = v16;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "Received %@ events in change registrations response of size %@", &v20, 0x16u);
      }

      v17 = MEMORY[0x277D174A8];
      v18 = [(HMDRemoteEventRouterProtoChangeRegistrationsResponse *)v10 cachedEvents];
      v9 = [v17 eventsMapFromProtoEvents:v18];
    }
  }

  (*(*(a1 + 40) + 16))();

  v19 = *MEMORY[0x277D85DE8];
}

- (void)sendChangeRegistrationsMessageWithAddedFilters:(id)a3 removedFilters:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HMDRemoteEventRouterClient *)self eventRouterClient];
  [(HMDRemoteEventRouterClient *)self sendChangeRegistrationsMessageWithAddedFilters:v10 removedFilters:v9 client:v11 completion:v8];
}

- (BOOL)client:(id)a3 isConnectionTerminatingError:(id)a4
{
  v4 = a4;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:*MEMORY[0x277CCFD28]];

  if (!v6)
  {
    v8 = [v4 domain];
    v9 = [v8 isEqualToString:*MEMORY[0x277D0F1A0]];

    if (v9 || ([v4 domain], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277D17490]), v10, v11) && objc_msgSend(v4, "code") != 4 && objc_msgSend(v4, "code") != 1)
    {
      [v4 code];
    }

    goto LABEL_13;
  }

  if ([v4 code] == 2 || objc_msgSend(v4, "code") == 27 || objc_msgSend(v4, "code") == 3 || objc_msgSend(v4, "code") != 54 && objc_msgSend(v4, "code") != 78)
  {
LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

  v7 = 0;
LABEL_14:

  return v7;
}

- (id)client:(id)a3 forwardingTopicsForTopics:(id)a4
{
  v5 = a4;
  v6 = [(HMDRemoteEventRouterClient *)self dataSource];
  v7 = [v6 client:self forwardingTopicsForTopics:v5];

  return v7;
}

- (id)client:(id)a3 upstreamTopicsForTopic:(id)a4
{
  v5 = a4;
  v6 = [(HMDRemoteEventRouterClient *)self messageTargetUUID];
  v7 = [HMDHomeEventsGenerated upstreamHomeTopicForTopic:v5 homeUUID:v6];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEB98] setWithObject:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)clientIsEnabled:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
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

- (void)hasConnectivityDidChangeFor:(id)a3
{
  v4 = a3;
  v5 = [(HMDRemoteEventRouterClient *)self connectivityMonitor];

  if (v5 == v4)
  {
    v6 = [(HMDRemoteEventRouterClient *)self dataSource];
    [v6 hasConnectivityToServerDidChangeForEventRouterClient:self];
  }
}

- (void)_handleMultiHopFetchResponse:(id)a3 originalMessage:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDRemoteEventRouterClient *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDRemoteEventRouterClient *)self dataSource];
  v10 = [v7 remoteSourceDevice];
  v11 = [v10 identifier];

  v12 = [v9 routerClientPrimaryResidentDeviceIdentifier:self];
  if ([v11 hmf_isEqualToUUID:v12])
  {
    if ([v6 changedEventsCount])
    {
      v13 = objc_autoreleasePoolPush();
      v14 = MEMORY[0x277D174A8];
      v15 = [v6 changedEvents];
      v16 = [v14 eventsMapFromProtoEvents:v15];

      v17 = [(HMDRemoteEventRouterClient *)self eventRouterClient];
      v18 = [v17 didReceiveFetchResponseWithCachedEvents:v16];

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __75__HMDRemoteEventRouterClient__handleMultiHopFetchResponse_originalMessage___block_invoke;
      v27[3] = &unk_279723828;
      v19 = v18;
      v28 = v19;
      v20 = [v16 na_filter:v27];

      if ([v20 count])
      {
        [v9 client:self didReceiveFetchedCachedEvents:v20];
      }

      objc_autoreleasePoolPop(v13);
    }

    [v7 respondWithSuccess];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v24;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Received fetch response from non-primary: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2037];
    [v7 respondWithError:v25];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_handleCachedEventMessage:(id)a3 fromServer:(id)a4 events:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(HMDRemoteEventRouterClient *)self workQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [(HMDRemoteEventRouterClient *)self eventRouterClient];
  [v13 didReceiveMessageWithCachedEvents:v10 serverIdentifier:v11 completion:v9];
}

- (void)_handleEventUpdateMessage:(id)a3 fromServer:(id)a4 events:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(HMDRemoteEventRouterClient *)self workQueue];
  dispatch_assert_queue_V2(v12);

  v13 = [(HMDRemoteEventRouterClient *)self eventRouterClient];
  [v13 didReceiveMessageWithEvents:v10 serverIdentifier:v11 completion:v9];
}

- (void)_handleUpdatedEventsRequest:(id)a3 originalMessage:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDRemoteEventRouterClient *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 remoteSourceDevice];
  v10 = [v9 identifier];

  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__17408;
  v38[4] = __Block_byref_object_dispose__17409;
  v39 = 0;
  v11 = dispatch_group_create();
  if ([v6 eventsCount])
  {
    v12 = [v6 events];
    v13 = [v12 na_map:&__block_literal_global_179];

    if (v13 && [v13 count])
    {
      v14 = self->_logger;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = MEMORY[0x277CCABB0];
        v16 = [v7 dataForKey:@"message.payload"];
        v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "length")}];
        *buf = 138412546;
        v41 = v13;
        v42 = 2112;
        v43 = v17;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "Received update events request %@, payloadSize: %@", buf, 0x16u);
      }

      logger = self->_logger;
      if (os_signpost_enabled(logger))
      {
        *buf = 138412290;
        v41 = v10;
        _os_signpost_emit_with_name_impl(&dword_2531F8000, logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EventRouterClientHandleUpdatedEvents", "serverIdentifier=%{signpost.description:attribute}@ ", buf, 0xCu);
      }

      dispatch_group_enter(v11);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __74__HMDRemoteEventRouterClient__handleUpdatedEventsRequest_originalMessage___block_invoke_181;
      v35[3] = &unk_279731688;
      v35[4] = self;
      v37 = v38;
      v36 = v11;
      [(HMDRemoteEventRouterClient *)self _handleEventUpdateMessage:v7 fromServer:v10 events:v13 completion:v35];
    }
  }

  if ([v6 cachedEventsCount])
  {
    v19 = [v6 cachedEvents];
    v20 = [v19 na_map:&__block_literal_global_184];

    if (v20 && [v20 count])
    {
      v21 = self->_logger;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = MEMORY[0x277CCABB0];
        v23 = [v7 dataForKey:@"message.payload"];
        v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(v23, "length")}];
        *buf = 138412546;
        v41 = v20;
        v42 = 2112;
        v43 = v24;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, "Received cached events request %@, payloadSize: %@", buf, 0x16u);
      }

      v25 = self->_logger;
      if (os_signpost_enabled(v25))
      {
        *buf = 138412290;
        v41 = v10;
        _os_signpost_emit_with_name_impl(&dword_2531F8000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EventRouterClientHandleCachedEvents", "serverIdentifier=%{signpost.description:attribute}@ ", buf, 0xCu);
      }

      dispatch_group_enter(v11);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __74__HMDRemoteEventRouterClient__handleUpdatedEventsRequest_originalMessage___block_invoke_185;
      v32[3] = &unk_279731688;
      v32[4] = self;
      v34 = v38;
      v33 = v11;
      [(HMDRemoteEventRouterClient *)self _handleCachedEventMessage:v7 fromServer:v10 events:v20 completion:v32];
    }
  }

  v26 = [(HMDRemoteEventRouterClient *)self workQueue];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __74__HMDRemoteEventRouterClient__handleUpdatedEventsRequest_originalMessage___block_invoke_2_186;
  v29[3] = &unk_279734898;
  v30 = v7;
  v31 = v38;
  v27 = v7;
  dispatch_group_notify(v11, v26, v29);

  _Block_object_dispose(v38, 8);
  v28 = *MEMORY[0x277D85DE8];
}

void __74__HMDRemoteEventRouterClient__handleUpdatedEventsRequest_originalMessage___block_invoke_181(uint64_t a1, void *a2)
{
  v8 = a2;
  v4 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  if (v8)
  {
    v5 = *(*(a1 + 48) + 8);
    v7 = *(v5 + 40);
    v6 = (v5 + 40);
    if (!v7)
    {
      objc_storeStrong(v6, a2);
    }
  }

  os_unfair_lock_unlock(v4 + 5);
  dispatch_group_leave(*(a1 + 40));
}

void __74__HMDRemoteEventRouterClient__handleUpdatedEventsRequest_originalMessage___block_invoke_185(uint64_t a1, void *a2)
{
  v8 = a2;
  v4 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  if (v8)
  {
    v5 = *(*(a1 + 48) + 8);
    v7 = *(v5 + 40);
    v6 = (v5 + 40);
    if (!v7)
    {
      objc_storeStrong(v6, a2);
    }
  }

  os_unfair_lock_unlock(v4 + 5);
  dispatch_group_leave(*(a1 + 40));
}

uint64_t __74__HMDRemoteEventRouterClient__handleUpdatedEventsRequest_originalMessage___block_invoke_2_186(uint64_t a1)
{
  v2 = a1 + 32;
  v1 = *(a1 + 32);
  if (*(*(*(v2 + 8) + 8) + 40))
  {
    return [v1 respondWithError:?];
  }

  else
  {
    return [v1 respondWithSuccess];
  }
}

- (void)_handleUpdateMessage:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDRemoteEventRouterClient *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 identifier];
    *buf = 138543618;
    v29 = v9;
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling update message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 dataForKey:@"message.payload"];
  v12 = [v4 BOOLForKey:@"isFragmented"];
  if (v11)
  {
    if (!v12)
    {
      v14 = v11;
LABEL_12:
      v16 = [[HMDRemoteEventRouterProtoServerMessage alloc] initWithData:v14];
      if ([(HMDRemoteEventRouterProtoServerMessage *)v16 hasMessage])
      {
        v17 = [(HMDRemoteEventRouterProtoServerMessage *)v16 message];
        if (v17 > 1)
        {
          if ((v17 - 2) >= 2)
          {
            if (v17 == 4)
            {
              v18 = [(HMDRemoteEventRouterProtoServerMessage *)v16 multiHopFetchEventsResponse];
              [(HMDRemoteEventRouterClient *)v7 _handleMultiHopFetchResponse:v18 originalMessage:v4];
LABEL_20:

              goto LABEL_21;
            }

            goto LABEL_30;
          }

          goto LABEL_18;
        }

        if (v17)
        {
          if (v17 == 1)
          {
            v18 = [(HMDRemoteEventRouterProtoServerMessage *)v16 updatedEvents];
            [(HMDRemoteEventRouterClient *)v7 _handleUpdatedEventsRequest:v18 originalMessage:v4];
            goto LABEL_20;
          }

LABEL_30:
          logger = v7->_logger;
          if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_2531F8000, logger, OS_LOG_TYPE_ERROR, "Received an unrecognized request type.", buf, 2u);
          }

          v20 = MEMORY[0x277CCA9B8];
          v21 = -1;
          goto LABEL_19;
        }

        v19 = v7->_logger;
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
LABEL_18:
          v20 = MEMORY[0x277CCA9B8];
          v21 = 3;
LABEL_19:
          v18 = [v20 hmErrorWithCode:v21];
          [v4 respondWithError:v18];
          goto LABEL_20;
        }

        *buf = 0;
        v25 = "Unable to find request type.";
      }

      else
      {
        v19 = v7->_logger;
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }

        *buf = 0;
        v25 = "Decoded payload does not have request.";
      }

      _os_log_error_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, v25, buf, 2u);
      goto LABEL_18;
    }

    v27 = 0;
    v13 = [(HMDRemoteEventRouterClient *)v7 _underlyingMessageDataFromFragmentMessageData:v11 error:&v27];
    v14 = v27;

    if (v13)
    {

      v14 = v13;
      goto LABEL_12;
    }

    v23 = v7->_logger;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "Unable to decode payload from fragment message.", buf, 2u);
      if (!v14)
      {
        goto LABEL_24;
      }
    }

    else if (!v14)
    {
LABEL_24:
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [v4 respondWithError:v24];

      v14 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v15 = v7->_logger;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "Did not find message payload.", buf, 2u);
    }

    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
  }

  [v4 respondWithError:v14];
LABEL_21:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handlePrimaryResidentConfirmedDeviceIdentifierChangeNotification:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDRemoteEventRouterClient *)self workQueue];
  dispatch_assert_queue_V2(v5);

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&dword_2531F8000, logger, OS_LOG_TYPE_DEFAULT, "Received primary resident change notification %@", &v14, 0xCu);
  }

  v7 = [(HMDRemoteEventRouterClient *)self dataSource];
  v8 = [v7 isCurrentDevicePrimaryResident];
  if (v8 != [(HMDRemoteEventRouterClient *)self isPrimaryResident])
  {
    v9 = self->_logger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = MEMORY[0x277CCABB0];
      v11 = v9;
      v12 = [v10 numberWithBool:v8];
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "Primary resident status changed to %@", &v14, 0xCu);
    }

    self->_isPrimaryResident = v8;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v19[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v7 = [v6 arrayByAddingObjectsFromArray:v4];

  v8 = [(HMDRemoteEventRouterClient *)self messageDispatcher];
  v9 = [(HMDRemoteEventRouterClient *)self updateMessageName];
  [v8 registerForMessage:v9 receiver:self policies:v7 selector:sel__handleUpdateMessage_];

  v10 = [(HMDRemoteEventRouterClient *)self messageDispatcher];
  v11 = [(HMDRemoteEventRouterClient *)self multiHopFetchResponseMessageName];
  [v10 registerForMessage:v11 receiver:self policies:v7 selector:sel__handleUpdateMessage_];

  v12 = [(HMDRemoteEventRouterClient *)self dataSource];
  v13 = [v12 primaryResidentChangeMonitorForRouterClient:self];

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v13;
    _os_log_impl(&dword_2531F8000, logger, OS_LOG_TYPE_DEFAULT, "Registering for primary resident change notification %@", &v17, 0xCu);
  }

  v15 = [(HMDRemoteEventRouterClient *)self notificationCenter];
  [v15 addObserver:self selector:sel_handlePrimaryResidentConfirmedDeviceIdentifierChangeNotification_ name:@"HMDPrimaryResidentChangeMonitorConfirmedDeviceIdentifierChangeNotification" object:v13];

  v16 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  v2 = [(HMDRemoteEventRouterClient *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (BOOL)isPrimaryResident
{
  v3 = [(HMDRemoteEventRouterClient *)self workQueue];
  dispatch_assert_queue_V2(v3);

  return self->_isPrimaryResident;
}

- (HMDRemoteEventRouterClient)initWithMessageTargetUUID:(id)a3 queue:(id)a4 dataSource:(id)a5 messageDispatcher:(id)a6 notificationCenter:(id)a7 requestMessageName:(id)a8 updateMessageName:(id)a9 multiHopFetchResponseMessageName:(id)a10 logCategory:(const char *)a11 logEventSubmitter:(id)a12 eventRouterClientFactory:(id)a13
{
  v35 = a3;
  v37 = a4;
  v36 = a5;
  v34 = a6;
  v33 = a7;
  v32 = a8;
  v31 = a9;
  v19 = a10;
  v20 = a12;
  v21 = a13;
  v38.receiver = self;
  v38.super_class = HMDRemoteEventRouterClient;
  v22 = [(HMDRemoteEventRouterClient *)&v38 init];
  if (v22)
  {
    v23 = os_log_create("com.apple.HomeKitDaemon", a11);
    logger = v22->_logger;
    v22->_logger = v23;

    objc_storeStrong(&v22->_logger, v23);
    objc_storeStrong(&v22->_identifier, a3);
    objc_storeStrong(&v22->_workQueue, a4);
    objc_storeWeak(&v22->_dataSource, v36);
    objc_storeStrong(&v22->_messageDispatcher, a6);
    v25 = [[_TtC19HomeKitDaemonLegacy28HMDRemoteConnectivityMonitor alloc] initWithFailedMessagesThreshold:3 connectivityLostTimerInterval:v22 delegate:v37 workQueue:60.0];
    connectivityMonitor = v22->_connectivityMonitor;
    v22->_connectivityMonitor = v25;

    objc_storeStrong(&v22->_notificationCenter, a7);
    objc_storeStrong(&v22->_requestMessageName, a8);
    objc_storeStrong(&v22->_updateMessageName, a9);
    objc_storeStrong(&v22->_multiHopFetchResponseMessageName, a10);
    v27 = v21[2](v21);
    eventRouterClient = v22->_eventRouterClient;
    v22->_eventRouterClient = v27;

    [(HMEMessageDatagramClient *)v22->_eventRouterClient setDelegate:v22];
    [(HMEMessageDatagramClient *)v22->_eventRouterClient setDataSource:v22];
    v22->_isPrimaryResident = 0;
    objc_storeWeak(&v22->_logEventSubmitter, v20);
    v22->_lock._os_unfair_lock_opaque = 0;
  }

  return v22;
}

- (HMDRemoteEventRouterClient)initWithMessageTargetUUID:(id)a3 queue:(id)a4 dataSource:(id)a5 messageDispatcher:(id)a6 notificationCenter:(id)a7 requestMessageName:(id)a8 updateMessageName:(id)a9 multiHopFetchResponseMessageName:(id)a10 storeReadHandle:(id)a11 storeWriteHandle:(id)a12 retryIntervalProvider:(id)a13 logCategory:(const char *)a14
{
  v29 = a4;
  v18 = a11;
  v19 = a12;
  v20 = a13;
  v34 = a10;
  v30 = a9;
  v31 = a8;
  v28 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a3;
  v24 = +[HMDMetricsManager sharedLogEventSubmitter];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __247__HMDRemoteEventRouterClient_initWithMessageTargetUUID_queue_dataSource_messageDispatcher_notificationCenter_requestMessageName_updateMessageName_multiHopFetchResponseMessageName_storeReadHandle_storeWriteHandle_retryIntervalProvider_logCategory___block_invoke;
  v38[3] = &unk_279728108;
  v39 = v29;
  v40 = v18;
  v41 = v19;
  v42 = v20;
  v43 = a14;
  v36 = v20;
  v33 = v19;
  v32 = v18;
  v25 = v29;
  v26 = [(HMDRemoteEventRouterClient *)self initWithMessageTargetUUID:v23 queue:v25 dataSource:v22 messageDispatcher:v21 notificationCenter:v28 requestMessageName:v31 updateMessageName:v30 multiHopFetchResponseMessageName:v34 logCategory:a14 logEventSubmitter:v24 eventRouterClientFactory:v38];

  return v26;
}

- (HMDRemoteEventRouterClient)initWithMessageTargetUUID:(id)a3 queue:(id)a4 dataSource:(id)a5 messageDispatcher:(id)a6 notificationCenter:(id)a7 requestMessageName:(id)a8 updateMessageName:(id)a9 multiHopFetchResponseMessageName:(id)a10 storeReadHandle:(id)a11 storeWriteHandle:(id)a12 logCategory:(const char *)a13
{
  v17 = a4;
  v18 = a11;
  v19 = a12;
  v33 = a10;
  v29 = a9;
  v32 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a3;
  v24 = +[HMDMetricsManager sharedLogEventSubmitter];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __225__HMDRemoteEventRouterClient_initWithMessageTargetUUID_queue_dataSource_messageDispatcher_notificationCenter_requestMessageName_updateMessageName_multiHopFetchResponseMessageName_storeReadHandle_storeWriteHandle_logCategory___block_invoke;
  v35[3] = &unk_2797237E0;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  v39 = a13;
  v31 = v19;
  v28 = v18;
  v25 = v17;
  v26 = [(HMDRemoteEventRouterClient *)self initWithMessageTargetUUID:v23 queue:v25 dataSource:v22 messageDispatcher:v21 notificationCenter:v20 requestMessageName:v32 updateMessageName:v29 multiHopFetchResponseMessageName:v33 logCategory:a13 logEventSubmitter:v24 eventRouterClientFactory:v35];

  return v26;
}

- (HMDRemoteEventRouterClient)initWithMessageTargetUUID:(id)a3 queue:(id)a4 dataSource:(id)a5 messageDispatcher:(id)a6 notificationCenter:(id)a7 requestMessageName:(id)a8 updateMessageName:(id)a9 multiHopFetchResponseMessageName:(id)a10 storeReadHandle:(id)a11 storeWriteHandle:(id)a12
{
  v17 = a4;
  v18 = a11;
  v19 = a12;
  v36 = a10;
  v34 = a9;
  v35 = a8;
  v33 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a3;
  v23 = [v22 UUIDString];
  v24 = [@"RemoteEventRouter.Client." stringByAppendingString:v23];

  v25 = [v24 UTF8String];
  v26 = +[HMDMetricsManager sharedLogEventSubmitter];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __213__HMDRemoteEventRouterClient_initWithMessageTargetUUID_queue_dataSource_messageDispatcher_notificationCenter_requestMessageName_updateMessageName_multiHopFetchResponseMessageName_storeReadHandle_storeWriteHandle___block_invoke;
  v38[3] = &unk_2797237B8;
  v39 = v17;
  v40 = v18;
  v41 = v19;
  v42 = v24;
  v32 = v24;
  v31 = v19;
  v30 = v18;
  v27 = v17;
  v28 = [(HMDRemoteEventRouterClient *)self initWithMessageTargetUUID:v22 queue:v27 dataSource:v21 messageDispatcher:v20 notificationCenter:v33 requestMessageName:v35 updateMessageName:v34 multiHopFetchResponseMessageName:v36 logCategory:v25 logEventSubmitter:v26 eventRouterClientFactory:v38];

  return v28;
}

HMDRemoteEventRouterClient *__213__HMDRemoteEventRouterClient_initWithMessageTargetUUID_queue_dataSource_messageDispatcher_notificationCenter_requestMessageName_updateMessageName_multiHopFetchResponseMessageName_storeReadHandle_storeWriteHandle___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 56) UTF8String];

  return [HMDRemoteEventRouterClient routerClientWithQueue:v1 storeReadHandle:v2 storeWriteHandle:v3 logCategory:v4];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_17444 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_17444, &__block_literal_global_17445);
  }

  v3 = logCategory__hmf_once_v1_17446;

  return v3;
}

uint64_t __41__HMDRemoteEventRouterClient_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v1_17446 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (id)routerClientWithQueue:(id)a3 storeReadHandle:(id)a4 storeWriteHandle:(id)a5 logCategory:(const char *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(HMDRemoteEventRouterClientRetryIntervals);
  v14 = [a1 routerClientWithQueue:v12 storeReadHandle:v11 storeWriteHandle:v10 retryIntervalProvider:v13 logCategory:a6];

  return v14;
}

+ (id)routerClientWithQueue:(id)a3 storeReadHandle:(id)a4 storeWriteHandle:(id)a5 retryIntervalProvider:(id)a6 logCategory:(const char *)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = objc_alloc_init(HMDEventRouterTimerProvider);
  v16 = [objc_alloc(MEMORY[0x277D174C8]) initWithQueue:v14 timerProvider:v15 keepAliveInterval:v11 dormantFetchTimerInterval:v13 retryIntervalProvider:v12 storeReadHandle:a7 storeWriteHandle:420.0 logCategory:28800.0];

  return v16;
}

@end