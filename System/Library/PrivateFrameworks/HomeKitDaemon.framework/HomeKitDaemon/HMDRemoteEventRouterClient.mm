@interface HMDRemoteEventRouterClient
+ (id)logCategory;
+ (id)routerClientWithQueue:(id)queue storeReadHandle:(id)handle storeWriteHandle:(id)writeHandle logCategory:(const char *)category;
+ (id)routerClientWithQueue:(id)queue storeReadHandle:(id)handle storeWriteHandle:(id)writeHandle retryIntervalProvider:(id)provider logCategory:(const char *)category;
- (BOOL)client:(id)client isConnectionTerminatingError:(id)error;
- (BOOL)clientIsEnabled:(id)enabled;
- (BOOL)hasConnectivityToServer;
- (BOOL)isPrimaryResident;
- (HMDRemoteEventRouterClient)initWithMessageTargetUUID:(id)d queue:(id)queue dataSource:(id)source messageDispatcher:(id)dispatcher notificationCenter:(id)center requestMessageName:(id)name updateMessageName:(id)messageName multiHopFetchResponseMessageName:(id)self0 logCategory:(const char *)self1 logEventSubmitter:(id)self2 eventRouterClientFactory:(id)self3;
- (HMDRemoteEventRouterClient)initWithMessageTargetUUID:(id)d queue:(id)queue dataSource:(id)source messageDispatcher:(id)dispatcher notificationCenter:(id)center requestMessageName:(id)name updateMessageName:(id)messageName multiHopFetchResponseMessageName:(id)self0 storeReadHandle:(id)self1 storeWriteHandle:(id)self2;
- (HMDRemoteEventRouterClient)initWithMessageTargetUUID:(id)d queue:(id)queue dataSource:(id)source messageDispatcher:(id)dispatcher notificationCenter:(id)center requestMessageName:(id)name updateMessageName:(id)messageName multiHopFetchResponseMessageName:(id)self0 storeReadHandle:(id)self1 storeWriteHandle:(id)self2 logCategory:(const char *)self3;
- (HMDRemoteEventRouterClient)initWithMessageTargetUUID:(id)d queue:(id)queue dataSource:(id)source messageDispatcher:(id)dispatcher notificationCenter:(id)center requestMessageName:(id)name updateMessageName:(id)messageName multiHopFetchResponseMessageName:(id)self0 storeReadHandle:(id)self1 storeWriteHandle:(id)self2 retryIntervalProvider:(id)self3 logCategory:(const char *)self4;
- (HMDRemoteEventRouterClientDataSource)dataSource;
- (HMMLogEventSubmitting)logEventSubmitter;
- (id)_underlyingMessageDataFromFragmentMessageData:(id)data error:(id *)error;
- (id)client:(id)client forwardingTopicsForTopics:(id)topics;
- (id)client:(id)client sendConnectWithAddedFilters:(id)filters completion:(id)completion;
- (id)client:(id)client upstreamTopicsForTopic:(id)topic;
- (id)dumpStateDescription;
- (id)logIdentifier;
- (id)responseHandlerForMessageIdentifier:(id)identifier serverIdentifier:(id)serverIdentifier messageType:(int64_t)type completion:(id)completion;
- (id)sendMessageWithPayloadMessage:(id)message client:(id)client messageType:(int64_t)type completion:(id)completion;
- (void)_handleCachedEventMessage:(id)message fromServer:(id)server events:(id)events completion:(id)completion;
- (void)_handleEventUpdateMessage:(id)message fromServer:(id)server events:(id)events completion:(id)completion;
- (void)_handleMultiHopFetchResponse:(id)response originalMessage:(id)message;
- (void)_handleUpdateMessage:(id)message;
- (void)_handleUpdatedEventsRequest:(id)request originalMessage:(id)message;
- (void)_registerForMessages:(id)messages;
- (void)clientDidConnect:(id)connect serverIdentifier:(id)identifier;
- (void)clientDidDisconnect:(id)disconnect;
- (void)didChangeFetchAvailableCondition:(BOOL)condition;
- (void)didChangeHasForegroundClient:(BOOL)client;
- (void)handlePrimaryResidentConfirmedDeviceIdentifierChangeNotification:(id)notification;
- (void)hasConnectivityDidChangeFor:(id)for;
- (void)networkAvailabilityDidChange:(BOOL)change;
- (void)sendChangeRegistrationsMessageWithAddedFilters:(id)filters removedFilters:(id)removedFilters client:(id)client completion:(id)completion;
- (void)sendChangeRegistrationsMessageWithAddedFilters:(id)filters removedFilters:(id)removedFilters completion:(id)completion;
- (void)sendDisconnectForClient:(id)client completion:(id)completion;
- (void)sendKeepAliveForClient:(id)client completion:(id)completion;
- (void)sendMessageWithPayloadMessage:(id)message messageType:(int64_t)type destination:(id)destination serverIdentifier:(id)identifier completion:(id)completion;
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
  messageTargetUUID = [(HMDRemoteEventRouterClient *)self messageTargetUUID];
  eventRouterClient = [(HMDRemoteEventRouterClient *)self eventRouterClient];
  dumpStateDescription = [eventRouterClient dumpStateDescription];
  v9 = [v3 stringWithFormat:@"[HMDRemoteEventRouterClient primary: %@, messageTarget: %@, client: %@]", v5, messageTargetUUID, dumpStateDescription];

  return v9;
}

- (void)didChangeFetchAvailableCondition:(BOOL)condition
{
  workQueue = [(HMDRemoteEventRouterClient *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__HMDRemoteEventRouterClient_didChangeFetchAvailableCondition___block_invoke;
  v6[3] = &unk_278688650;
  conditionCopy = condition;
  v6[4] = self;
  dispatch_async(workQueue, v6);
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
  [v2 updateDormantFetchCondition:v1 completion:&__block_literal_global_239];
}

- (void)didChangeHasForegroundClient:(BOOL)client
{
  workQueue = [(HMDRemoteEventRouterClient *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HMDRemoteEventRouterClient_didChangeHasForegroundClient___block_invoke;
  v6[3] = &unk_278688650;
  clientCopy = client;
  v6[4] = self;
  dispatch_async(workQueue, v6);
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
  [v2 updateConnectionMode:v1 completion:&__block_literal_global_237];
}

- (void)networkAvailabilityDidChange:(BOOL)change
{
  workQueue = [(HMDRemoteEventRouterClient *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HMDRemoteEventRouterClient_networkAvailabilityDidChange___block_invoke;
  v6[3] = &unk_278688650;
  v6[4] = self;
  changeCopy = change;
  dispatch_async(workQueue, v6);
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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "Network availability changed to %@", &v11, 0xCu);

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
  connectivityMonitor = [(HMDRemoteEventRouterClient *)self connectivityMonitor];
  hasConnectivity = [connectivityMonitor hasConnectivity];

  return hasConnectivity;
}

- (id)responseHandlerForMessageIdentifier:(id)identifier serverIdentifier:(id)serverIdentifier messageType:(int64_t)type completion:(id)completion
{
  identifierCopy = identifier;
  serverIdentifierCopy = serverIdentifier;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __106__HMDRemoteEventRouterClient_responseHandlerForMessageIdentifier_serverIdentifier_messageType_completion___block_invoke;
  v18[3] = &unk_278671800;
  objc_copyWeak(v22, &location);
  v22[1] = type;
  v20 = serverIdentifierCopy;
  v21 = completionCopy;
  v19 = identifierCopy;
  v13 = serverIdentifierCopy;
  v14 = completionCopy;
  v15 = identifierCopy;
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
    block[3] = &unk_2786820E8;
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
      _os_log_error_impl(&dword_229538000, v5, OS_LOG_TYPE_ERROR, "Failed to send message: %@ error: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "Successfully sent message: %@", buf, 0xCu);
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
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Event router message rejected by remote due to it being non-primary, kicking primary discovery", buf, 0xCu);
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
      _os_log_error_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "Unable to decode fragment payload with error: %@", buf, 0xCu);
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

- (void)sendMessageWithPayloadMessage:(id)message messageType:(int64_t)type destination:(id)destination serverIdentifier:(id)identifier completion:(id)completion
{
  v31[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  destinationCopy = destination;
  identifierCopy = identifier;
  completionCopy = completion;
  dataSource = [(HMDRemoteEventRouterClient *)self dataSource];
  if ([dataSource routerClientSupportsFragmentMessageForServerIdentifier:identifierCopy])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = objc_alloc_init(HMDRemoteEventRouterProtoFragmentedMessage);
    [(HMDRemoteEventRouterProtoFragmentedMessage *)v17 setFragmentNumber:0];
    [(HMDRemoteEventRouterProtoFragmentedMessage *)v17 setFragmentData:messageCopy];
    [(HMDRemoteEventRouterProtoFragmentedMessage *)v17 setTotalFragments:1];
    fragmentData = [(HMDRemoteEventRouterProtoFragmentedMessage *)v17 fragmentData];
    -[HMDRemoteEventRouterProtoFragmentedMessage setTotalSize:](v17, "setTotalSize:", [fragmentData length]);

    [(HMDRemoteEventRouterProtoFragmentedMessage *)v17 setRouterVersion:0];
    data = [(HMDRemoteEventRouterProtoFragmentedMessage *)v17 data];

    objc_autoreleasePoolPop(v16);
    messageCopy = data;
  }

  requestMessageName = [(HMDRemoteEventRouterClient *)self requestMessageName];
  v30[0] = @"message.payload";
  v21 = [messageCopy copy];
  v30[1] = @"isFragmented";
  v31[0] = v21;
  v31[1] = MEMORY[0x277CBEC38];
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v23 = [HMDRemoteMessage secureMessageWithName:requestMessageName qualityOfService:-1 destination:destinationCopy messagePayload:v22 timeout:[(HMDRemoteEventRouterClient *)self messageTransportRestriction] restriction:150.0];

  identifier = [v23 identifier];
  v25 = [(HMDRemoteEventRouterClient *)self responseHandlerForMessageIdentifier:identifier serverIdentifier:identifierCopy messageType:v29 completion:completionCopy];
  [v23 setResponseHandler:v25];

  messageDispatcher = [(HMDRemoteEventRouterClient *)self messageDispatcher];
  [messageDispatcher sendMessage:v23];

  v27 = *MEMORY[0x277D85DE8];
}

- (id)sendMessageWithPayloadMessage:(id)message client:(id)client messageType:(int64_t)type completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  completionCopy = completion;
  workQueue = [(HMDRemoteEventRouterClient *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(HMDRemoteEventRouterClient *)self dataSource];
  v21 = 0;
  v13 = [dataSource routerClientMessageDestination:self serverIdentifier:&v21];
  v14 = v21;
  v15 = v14;
  if (v13 && v14)
  {
    [(HMDRemoteEventRouterClient *)self sendMessageWithPayloadMessage:messageCopy messageType:type destination:v13 serverIdentifier:v14 completion:completionCopy];
    v16 = v15;
    goto LABEL_8;
  }

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v23 = v15;
    _os_log_error_impl(&dword_229538000, logger, OS_LOG_TYPE_ERROR, "Did not find resident destination for server identifier %@.", buf, 0xCu);
    if (!completionCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (completionCopy)
  {
LABEL_6:
    v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(completionCopy + 2))(completionCopy, 0, 0, v18);
  }

LABEL_7:
  v16 = 0;
LABEL_8:

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)clientDidDisconnect:(id)disconnect
{
  v14[1] = *MEMORY[0x277D85DE8];
  workQueue = [(HMDRemoteEventRouterClient *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_229538000, logger, OS_LOG_TYPE_DEFAULT, "Client disconnected from server", v12, 2u);
  }

  if ([(HMDRemoteEventRouterClient *)self isConnected])
  {
    notificationCenter = [(HMDRemoteEventRouterClient *)self notificationCenter];
    v13 = @"HMDRemoteEventRouterClientHomeUUIDKey";
    identifier = [(HMDRemoteEventRouterClient *)self identifier];
    v14[0] = identifier;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [notificationCenter postNotificationName:@"HMDRemoteEventRouterClientDidDisconnect" object:self userInfo:v8];
  }

  [(HMDRemoteEventRouterClient *)self setIsConnected:0];
  connectivityMonitor = [(HMDRemoteEventRouterClient *)self connectivityMonitor];
  [connectivityMonitor underlyingConnectionChanged:{-[HMDRemoteEventRouterClient isConnected](self, "isConnected")}];

  dataSource = [(HMDRemoteEventRouterClient *)self dataSource];
  [dataSource client:self connectionStatusDidChange:{-[HMDRemoteEventRouterClient isConnected](self, "isConnected")}];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)clientDidConnect:(id)connect serverIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  workQueue = [(HMDRemoteEventRouterClient *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = identifierCopy;
    _os_log_impl(&dword_229538000, logger, OS_LOG_TYPE_DEFAULT, "Client did connect to server %@", buf, 0xCu);
  }

  if (![(HMDRemoteEventRouterClient *)self isConnected])
  {
    notificationCenter = [(HMDRemoteEventRouterClient *)self notificationCenter];
    identifier = [(HMDRemoteEventRouterClient *)self identifier];
    v15 = identifier;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [notificationCenter postNotificationName:@"HMDRemoteEventRouterClientDidConnect" object:self userInfo:v10];
  }

  [(HMDRemoteEventRouterClient *)self setIsConnected:1];
  connectivityMonitor = [(HMDRemoteEventRouterClient *)self connectivityMonitor];
  [connectivityMonitor underlyingConnectionChanged:{-[HMDRemoteEventRouterClient isConnected](self, "isConnected")}];

  dataSource = [(HMDRemoteEventRouterClient *)self dataSource];
  [dataSource client:self connectionStatusDidChange:{-[HMDRemoteEventRouterClient isConnected](self, "isConnected")}];

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
        _os_log_error_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "Did not find fetch response", buf, 2u);
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
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "Received %@ events in fetch response of size %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Fetch got topics %ld", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEBUG, "%{public}@Fetch got topics %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v32 = [*(a1 + 40) didReceiveFetchResponseWithCachedEvents:v22];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __76__HMDRemoteEventRouterClient_client_fetchWithFilters_isMultiHop_completion___block_invoke_232;
    v38[3] = &unk_278671740;
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

- (void)sendDisconnectForClient:(id)client completion:(id)completion
{
  clientCopy = client;
  completionCopy = completion;
  v8 = objc_alloc_init(HMDRemoteEventRouterProtoMessage);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [(HMDRemoteEventRouterProtoMessage *)v8 setIdentifier:uUIDString];

  v11 = objc_alloc_init(HMDRemoteEventRouterProtoDisconnectMessage);
  [(HMDRemoteEventRouterProtoMessage *)v8 setDisconnect:v11];

  data = [(HMDRemoteEventRouterProtoMessage *)v8 data];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__HMDRemoteEventRouterClient_sendDisconnectForClient_completion___block_invoke;
  v15[3] = &unk_278671790;
  v16 = completionCopy;
  v13 = completionCopy;
  v14 = [(HMDRemoteEventRouterClient *)self sendMessageWithPayloadMessage:data client:clientCopy messageType:4 completion:v15];
}

- (void)sendKeepAliveForClient:(id)client completion:(id)completion
{
  clientCopy = client;
  completionCopy = completion;
  v8 = objc_alloc_init(HMDRemoteEventRouterProtoMessage);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [(HMDRemoteEventRouterProtoMessage *)v8 setIdentifier:uUIDString];

  v11 = objc_alloc_init(HMDRemoteEventRouterProtoKeepAliveMessage);
  [(HMDRemoteEventRouterProtoMessage *)v8 setKeepAlive:v11];

  data = [(HMDRemoteEventRouterProtoMessage *)v8 data];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__HMDRemoteEventRouterClient_sendKeepAliveForClient_completion___block_invoke;
  v15[3] = &unk_278671790;
  v16 = completionCopy;
  v13 = completionCopy;
  v14 = [(HMDRemoteEventRouterClient *)self sendMessageWithPayloadMessage:data client:clientCopy messageType:2 completion:v15];
}

- (id)client:(id)client sendConnectWithAddedFilters:(id)filters completion:(id)completion
{
  completionCopy = completion;
  filtersCopy = filters;
  clientCopy = client;
  v11 = objc_alloc_init(HMDRemoteEventRouterProtoMessage);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [(HMDRemoteEventRouterProtoMessage *)v11 setIdentifier:uUIDString];

  v14 = objc_alloc_init(HMDRemoteEventRouterProtoConnectMessage);
  [(HMDRemoteEventRouterProtoConnectMessage *)v14 setRouterVersion:0];
  v15 = [filtersCopy mutableCopy];

  [(HMDRemoteEventRouterProtoConnectMessage *)v14 setTopicFilterAdditions:v15];
  [(HMDRemoteEventRouterProtoMessage *)v11 setConnect:v14];
  data = [(HMDRemoteEventRouterProtoMessage *)v11 data];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __76__HMDRemoteEventRouterClient_client_sendConnectWithAddedFilters_completion___block_invoke;
  v20[3] = &unk_278671768;
  v20[4] = self;
  v21 = completionCopy;
  v17 = completionCopy;
  v18 = [(HMDRemoteEventRouterClient *)self sendMessageWithPayloadMessage:data client:clientCopy messageType:1 completion:v20];

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
        _os_log_error_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "Did not find connect response", &v23, 2u);
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
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "Received %@ events in connect response of size %@", &v23, 0x16u);
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
          _os_signpost_emit_with_name_impl(&dword_229538000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EventRouterClientConnected", "serverIdentifier=%{signpost.description:attribute}@ ", &v23, 0xCu);
        }
      }
    }
  }

  (*(*(a1 + 40) + 16))();

  v22 = *MEMORY[0x277D85DE8];
}

- (void)sendChangeRegistrationsMessageWithAddedFilters:(id)filters removedFilters:(id)removedFilters client:(id)client completion:(id)completion
{
  clientCopy = client;
  completionCopy = completion;
  removedFiltersCopy = removedFilters;
  filtersCopy = filters;
  v14 = objc_alloc_init(HMDRemoteEventRouterProtoMessage);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [(HMDRemoteEventRouterProtoMessage *)v14 setIdentifier:uUIDString];

  v17 = objc_alloc_init(HMDRemoteEventRouterProtoChangeRegistrationsMessage);
  [(HMDRemoteEventRouterProtoMessage *)v14 setChangeRegistrations:v17];

  v18 = [filtersCopy mutableCopy];
  changeRegistrations = [(HMDRemoteEventRouterProtoMessage *)v14 changeRegistrations];
  [changeRegistrations setTopicFilterAdditions:v18];

  v20 = [removedFiltersCopy mutableCopy];
  changeRegistrations2 = [(HMDRemoteEventRouterProtoMessage *)v14 changeRegistrations];
  [changeRegistrations2 setTopicFilterRemovals:v20];

  data = [(HMDRemoteEventRouterProtoMessage *)v14 data];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __110__HMDRemoteEventRouterClient_sendChangeRegistrationsMessageWithAddedFilters_removedFilters_client_completion___block_invoke;
  v25[3] = &unk_278671768;
  v25[4] = self;
  v26 = completionCopy;
  v23 = completionCopy;
  v24 = [(HMDRemoteEventRouterClient *)self sendMessageWithPayloadMessage:data client:clientCopy messageType:3 completion:v25];
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
        _os_log_error_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "Did not find change registrations response", &v20, 2u);
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
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "Received %@ events in change registrations response of size %@", &v20, 0x16u);
      }

      v17 = MEMORY[0x277D174A8];
      v18 = [(HMDRemoteEventRouterProtoChangeRegistrationsResponse *)v10 cachedEvents];
      v9 = [v17 eventsMapFromProtoEvents:v18];
    }
  }

  (*(*(a1 + 40) + 16))();

  v19 = *MEMORY[0x277D85DE8];
}

- (void)sendChangeRegistrationsMessageWithAddedFilters:(id)filters removedFilters:(id)removedFilters completion:(id)completion
{
  completionCopy = completion;
  removedFiltersCopy = removedFilters;
  filtersCopy = filters;
  eventRouterClient = [(HMDRemoteEventRouterClient *)self eventRouterClient];
  [(HMDRemoteEventRouterClient *)self sendChangeRegistrationsMessageWithAddedFilters:filtersCopy removedFilters:removedFiltersCopy client:eventRouterClient completion:completionCopy];
}

- (BOOL)client:(id)client isConnectionTerminatingError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:*MEMORY[0x277CCFD28]];

  if (!v6)
  {
    domain2 = [errorCopy domain];
    v9 = [domain2 isEqualToString:*MEMORY[0x277D0F1A0]];

    if (v9 || ([errorCopy domain], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277D17490]), v10, v11) && objc_msgSend(errorCopy, "code") != 4 && objc_msgSend(errorCopy, "code") != 1)
    {
      [errorCopy code];
    }

    goto LABEL_13;
  }

  if ([errorCopy code] == 2 || objc_msgSend(errorCopy, "code") == 27 || objc_msgSend(errorCopy, "code") == 3 || objc_msgSend(errorCopy, "code") != 54 && objc_msgSend(errorCopy, "code") != 78)
  {
LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

  v7 = 0;
LABEL_14:

  return v7;
}

- (id)client:(id)client forwardingTopicsForTopics:(id)topics
{
  topicsCopy = topics;
  dataSource = [(HMDRemoteEventRouterClient *)self dataSource];
  v7 = [dataSource client:self forwardingTopicsForTopics:topicsCopy];

  return v7;
}

- (id)client:(id)client upstreamTopicsForTopic:(id)topic
{
  topicCopy = topic;
  messageTargetUUID = [(HMDRemoteEventRouterClient *)self messageTargetUUID];
  v7 = [HMDHomeEventsGenerated upstreamHomeTopicForTopic:topicCopy homeUUID:messageTargetUUID];

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

- (BOOL)clientIsEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)_underlyingMessageDataFromFragmentMessageData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [[HMDRemoteEventRouterProtoFragmentedMessage alloc] initWithData:dataCopy];
  v8 = v7;
  if (v7)
  {
    if ([(HMDRemoteEventRouterProtoFragmentedMessage *)v7 fragmentNumber]|| [(HMDRemoteEventRouterProtoFragmentedMessage *)v8 totalFragments]!= 1)
    {
      logger = self->_logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_error_impl(&dword_229538000, logger, OS_LOG_TYPE_ERROR, "Cannot decode fragmented data yet.", v13, 2u);
      }

      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *error = fragmentData = 0;
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      fragmentData = [(HMDRemoteEventRouterProtoFragmentedMessage *)v8 fragmentData];
      objc_autoreleasePoolPop(v9);
    }
  }

  else
  {
    fragmentData = 0;
  }

  return fragmentData;
}

- (void)hasConnectivityDidChangeFor:(id)for
{
  forCopy = for;
  connectivityMonitor = [(HMDRemoteEventRouterClient *)self connectivityMonitor];

  if (connectivityMonitor == forCopy)
  {
    dataSource = [(HMDRemoteEventRouterClient *)self dataSource];
    [dataSource hasConnectivityToServerDidChangeForEventRouterClient:self];
  }
}

- (void)_handleMultiHopFetchResponse:(id)response originalMessage:(id)message
{
  v33 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  messageCopy = message;
  workQueue = [(HMDRemoteEventRouterClient *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [(HMDRemoteEventRouterClient *)self dataSource];
  remoteSourceDevice = [messageCopy remoteSourceDevice];
  identifier = [remoteSourceDevice identifier];

  v12 = [dataSource routerClientPrimaryResidentDeviceIdentifier:self];
  if ([identifier hmf_isEqualToUUID:v12])
  {
    if ([responseCopy changedEventsCount])
    {
      v13 = objc_autoreleasePoolPush();
      v14 = MEMORY[0x277D174A8];
      changedEvents = [responseCopy changedEvents];
      v16 = [v14 eventsMapFromProtoEvents:changedEvents];

      eventRouterClient = [(HMDRemoteEventRouterClient *)self eventRouterClient];
      v18 = [eventRouterClient didReceiveFetchResponseWithCachedEvents:v16];

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __75__HMDRemoteEventRouterClient__handleMultiHopFetchResponse_originalMessage___block_invoke;
      v27[3] = &unk_278671740;
      v19 = v18;
      v28 = v19;
      v20 = [v16 na_filter:v27];

      if ([v20 count])
      {
        [dataSource client:self didReceiveFetchedCachedEvents:v20];
      }

      objc_autoreleasePoolPop(v13);
    }

    [messageCopy respondWithSuccess];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v24;
      v31 = 2112;
      v32 = identifier;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Received fetch response from non-primary: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2037];
    [messageCopy respondWithError:v25];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_handleCachedEventMessage:(id)message fromServer:(id)server events:(id)events completion:(id)completion
{
  completionCopy = completion;
  eventsCopy = events;
  serverCopy = server;
  workQueue = [(HMDRemoteEventRouterClient *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  eventRouterClient = [(HMDRemoteEventRouterClient *)self eventRouterClient];
  [eventRouterClient didReceiveMessageWithCachedEvents:eventsCopy serverIdentifier:serverCopy completion:completionCopy];
}

- (void)_handleEventUpdateMessage:(id)message fromServer:(id)server events:(id)events completion:(id)completion
{
  completionCopy = completion;
  eventsCopy = events;
  serverCopy = server;
  workQueue = [(HMDRemoteEventRouterClient *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  eventRouterClient = [(HMDRemoteEventRouterClient *)self eventRouterClient];
  [eventRouterClient didReceiveMessageWithEvents:eventsCopy serverIdentifier:serverCopy completion:completionCopy];
}

- (void)_handleUpdatedEventsRequest:(id)request originalMessage:(id)message
{
  v44 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  messageCopy = message;
  workQueue = [(HMDRemoteEventRouterClient *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  remoteSourceDevice = [messageCopy remoteSourceDevice];
  identifier = [remoteSourceDevice identifier];

  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__24946;
  v38[4] = __Block_byref_object_dispose__24947;
  v39 = 0;
  v11 = dispatch_group_create();
  if ([requestCopy eventsCount])
  {
    events = [requestCopy events];
    v13 = [events na_map:&__block_literal_global_200];

    if (v13 && [v13 count])
    {
      v14 = self->_logger;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = MEMORY[0x277CCABB0];
        v16 = [messageCopy dataForKey:@"message.payload"];
        v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "length")}];
        *buf = 138412546;
        v41 = v13;
        v42 = 2112;
        v43 = v17;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "Received update events request %@, payloadSize: %@", buf, 0x16u);
      }

      logger = self->_logger;
      if (os_signpost_enabled(logger))
      {
        *buf = 138412290;
        v41 = identifier;
        _os_signpost_emit_with_name_impl(&dword_229538000, logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EventRouterClientHandleUpdatedEvents", "serverIdentifier=%{signpost.description:attribute}@ ", buf, 0xCu);
      }

      dispatch_group_enter(v11);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __74__HMDRemoteEventRouterClient__handleUpdatedEventsRequest_originalMessage___block_invoke_202;
      v35[3] = &unk_278685888;
      v35[4] = self;
      v37 = v38;
      v36 = v11;
      [(HMDRemoteEventRouterClient *)self _handleEventUpdateMessage:messageCopy fromServer:identifier events:v13 completion:v35];
    }
  }

  if ([requestCopy cachedEventsCount])
  {
    cachedEvents = [requestCopy cachedEvents];
    v20 = [cachedEvents na_map:&__block_literal_global_205];

    if (v20 && [v20 count])
    {
      v21 = self->_logger;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = MEMORY[0x277CCABB0];
        v23 = [messageCopy dataForKey:@"message.payload"];
        v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(v23, "length")}];
        *buf = 138412546;
        v41 = v20;
        v42 = 2112;
        v43 = v24;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "Received cached events request %@, payloadSize: %@", buf, 0x16u);
      }

      v25 = self->_logger;
      if (os_signpost_enabled(v25))
      {
        *buf = 138412290;
        v41 = identifier;
        _os_signpost_emit_with_name_impl(&dword_229538000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EventRouterClientHandleCachedEvents", "serverIdentifier=%{signpost.description:attribute}@ ", buf, 0xCu);
      }

      dispatch_group_enter(v11);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __74__HMDRemoteEventRouterClient__handleUpdatedEventsRequest_originalMessage___block_invoke_206;
      v32[3] = &unk_278685888;
      v32[4] = self;
      v34 = v38;
      v33 = v11;
      [(HMDRemoteEventRouterClient *)self _handleCachedEventMessage:messageCopy fromServer:identifier events:v20 completion:v32];
    }
  }

  workQueue2 = [(HMDRemoteEventRouterClient *)self workQueue];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __74__HMDRemoteEventRouterClient__handleUpdatedEventsRequest_originalMessage___block_invoke_2_207;
  v29[3] = &unk_27868A688;
  v30 = messageCopy;
  v31 = v38;
  v27 = messageCopy;
  dispatch_group_notify(v11, workQueue2, v29);

  _Block_object_dispose(v38, 8);
  v28 = *MEMORY[0x277D85DE8];
}

void __74__HMDRemoteEventRouterClient__handleUpdatedEventsRequest_originalMessage___block_invoke_202(uint64_t a1, void *a2)
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

void __74__HMDRemoteEventRouterClient__handleUpdatedEventsRequest_originalMessage___block_invoke_206(uint64_t a1, void *a2)
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

uint64_t __74__HMDRemoteEventRouterClient__handleUpdatedEventsRequest_originalMessage___block_invoke_2_207(uint64_t a1)
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

- (void)_handleUpdateMessage:(id)message
{
  v32 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDRemoteEventRouterClient *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [messageCopy identifier];
    *buf = 138543618;
    v29 = v9;
    v30 = 2112;
    v31 = identifier;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling update message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [messageCopy dataForKey:@"message.payload"];
  v12 = [messageCopy BOOLForKey:@"isFragmented"];
  if (v11)
  {
    if (!v12)
    {
      v14 = v11;
LABEL_12:
      v16 = [[HMDRemoteEventRouterProtoServerMessage alloc] initWithData:v14];
      if ([(HMDRemoteEventRouterProtoServerMessage *)v16 hasMessage])
      {
        message = [(HMDRemoteEventRouterProtoServerMessage *)v16 message];
        if (message > 1)
        {
          if ((message - 2) >= 2)
          {
            if (message == 4)
            {
              multiHopFetchEventsResponse = [(HMDRemoteEventRouterProtoServerMessage *)v16 multiHopFetchEventsResponse];
              [(HMDRemoteEventRouterClient *)selfCopy _handleMultiHopFetchResponse:multiHopFetchEventsResponse originalMessage:messageCopy];
LABEL_20:

              goto LABEL_21;
            }

            goto LABEL_30;
          }

          goto LABEL_18;
        }

        if (message)
        {
          if (message == 1)
          {
            multiHopFetchEventsResponse = [(HMDRemoteEventRouterProtoServerMessage *)v16 updatedEvents];
            [(HMDRemoteEventRouterClient *)selfCopy _handleUpdatedEventsRequest:multiHopFetchEventsResponse originalMessage:messageCopy];
            goto LABEL_20;
          }

LABEL_30:
          logger = selfCopy->_logger;
          if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_229538000, logger, OS_LOG_TYPE_ERROR, "Received an unrecognized request type.", buf, 2u);
          }

          v20 = MEMORY[0x277CCA9B8];
          v21 = -1;
          goto LABEL_19;
        }

        v19 = selfCopy->_logger;
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
LABEL_18:
          v20 = MEMORY[0x277CCA9B8];
          v21 = 3;
LABEL_19:
          multiHopFetchEventsResponse = [v20 hmErrorWithCode:v21];
          [messageCopy respondWithError:multiHopFetchEventsResponse];
          goto LABEL_20;
        }

        *buf = 0;
        v25 = "Unable to find request type.";
      }

      else
      {
        v19 = selfCopy->_logger;
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }

        *buf = 0;
        v25 = "Decoded payload does not have request.";
      }

      _os_log_error_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, v25, buf, 2u);
      goto LABEL_18;
    }

    v27 = 0;
    v13 = [(HMDRemoteEventRouterClient *)selfCopy _underlyingMessageDataFromFragmentMessageData:v11 error:&v27];
    v14 = v27;

    if (v13)
    {

      v14 = v13;
      goto LABEL_12;
    }

    v23 = selfCopy->_logger;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "Unable to decode payload from fragment message.", buf, 2u);
      if (!v14)
      {
        goto LABEL_24;
      }
    }

    else if (!v14)
    {
LABEL_24:
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [messageCopy respondWithError:v24];

      v14 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v15 = selfCopy->_logger;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "Did not find message payload.", buf, 2u);
    }

    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
  }

  [messageCopy respondWithError:v14];
LABEL_21:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handlePrimaryResidentConfirmedDeviceIdentifierChangeNotification:(id)notification
{
  v16 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  workQueue = [(HMDRemoteEventRouterClient *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = notificationCopy;
    _os_log_impl(&dword_229538000, logger, OS_LOG_TYPE_DEFAULT, "Received primary resident change notification %@", &v14, 0xCu);
  }

  dataSource = [(HMDRemoteEventRouterClient *)self dataSource];
  isCurrentDevicePrimaryResident = [dataSource isCurrentDevicePrimaryResident];
  if (isCurrentDevicePrimaryResident != [(HMDRemoteEventRouterClient *)self isPrimaryResident])
  {
    v9 = self->_logger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = MEMORY[0x277CCABB0];
      v11 = v9;
      v12 = [v10 numberWithBool:isCurrentDevicePrimaryResident];
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "Primary resident status changed to %@", &v14, 0xCu);
    }

    self->_isPrimaryResident = isCurrentDevicePrimaryResident;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages:(id)messages
{
  v19[1] = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  v5 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v19[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v7 = [v6 arrayByAddingObjectsFromArray:messagesCopy];

  messageDispatcher = [(HMDRemoteEventRouterClient *)self messageDispatcher];
  updateMessageName = [(HMDRemoteEventRouterClient *)self updateMessageName];
  [messageDispatcher registerForMessage:updateMessageName receiver:self policies:v7 selector:sel__handleUpdateMessage_];

  messageDispatcher2 = [(HMDRemoteEventRouterClient *)self messageDispatcher];
  multiHopFetchResponseMessageName = [(HMDRemoteEventRouterClient *)self multiHopFetchResponseMessageName];
  [messageDispatcher2 registerForMessage:multiHopFetchResponseMessageName receiver:self policies:v7 selector:sel__handleUpdateMessage_];

  dataSource = [(HMDRemoteEventRouterClient *)self dataSource];
  v13 = [dataSource primaryResidentChangeMonitorForRouterClient:self];

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v13;
    _os_log_impl(&dword_229538000, logger, OS_LOG_TYPE_DEFAULT, "Registering for primary resident change notification %@", &v17, 0xCu);
  }

  notificationCenter = [(HMDRemoteEventRouterClient *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel_handlePrimaryResidentConfirmedDeviceIdentifierChangeNotification_ name:@"HMDPrimaryResidentChangeMonitorConfirmedDeviceIdentifierChangeNotification" object:v13];

  v16 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  identifier = [(HMDRemoteEventRouterClient *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (BOOL)isPrimaryResident
{
  workQueue = [(HMDRemoteEventRouterClient *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  return self->_isPrimaryResident;
}

- (HMDRemoteEventRouterClient)initWithMessageTargetUUID:(id)d queue:(id)queue dataSource:(id)source messageDispatcher:(id)dispatcher notificationCenter:(id)center requestMessageName:(id)name updateMessageName:(id)messageName multiHopFetchResponseMessageName:(id)self0 logCategory:(const char *)self1 logEventSubmitter:(id)self2 eventRouterClientFactory:(id)self3
{
  dCopy = d;
  queueCopy = queue;
  sourceCopy = source;
  dispatcherCopy = dispatcher;
  centerCopy = center;
  nameCopy = name;
  messageNameCopy = messageName;
  responseMessageNameCopy = responseMessageName;
  submitterCopy = submitter;
  factoryCopy = factory;
  v38.receiver = self;
  v38.super_class = HMDRemoteEventRouterClient;
  v22 = [(HMDRemoteEventRouterClient *)&v38 init];
  if (v22)
  {
    v23 = os_log_create("com.apple.HomeKitDaemon", category);
    logger = v22->_logger;
    v22->_logger = v23;

    objc_storeStrong(&v22->_logger, v23);
    objc_storeStrong(&v22->_identifier, d);
    objc_storeStrong(&v22->_workQueue, queue);
    objc_storeWeak(&v22->_dataSource, sourceCopy);
    objc_storeStrong(&v22->_messageDispatcher, dispatcher);
    v25 = [[_TtC13HomeKitDaemon28HMDRemoteConnectivityMonitor alloc] initWithFailedMessagesThreshold:3 connectivityLostTimerInterval:v22 delegate:queueCopy workQueue:60.0];
    connectivityMonitor = v22->_connectivityMonitor;
    v22->_connectivityMonitor = v25;

    objc_storeStrong(&v22->_notificationCenter, center);
    objc_storeStrong(&v22->_requestMessageName, name);
    objc_storeStrong(&v22->_updateMessageName, messageName);
    objc_storeStrong(&v22->_multiHopFetchResponseMessageName, responseMessageName);
    v27 = factoryCopy[2](factoryCopy);
    eventRouterClient = v22->_eventRouterClient;
    v22->_eventRouterClient = v27;

    [(HMEMessageDatagramClient *)v22->_eventRouterClient setDelegate:v22];
    [(HMEMessageDatagramClient *)v22->_eventRouterClient setDataSource:v22];
    v22->_isPrimaryResident = 0;
    objc_storeWeak(&v22->_logEventSubmitter, submitterCopy);
    v22->_lock._os_unfair_lock_opaque = 0;
  }

  return v22;
}

- (HMDRemoteEventRouterClient)initWithMessageTargetUUID:(id)d queue:(id)queue dataSource:(id)source messageDispatcher:(id)dispatcher notificationCenter:(id)center requestMessageName:(id)name updateMessageName:(id)messageName multiHopFetchResponseMessageName:(id)self0 storeReadHandle:(id)self1 storeWriteHandle:(id)self2 retryIntervalProvider:(id)self3 logCategory:(const char *)self4
{
  queueCopy = queue;
  handleCopy = handle;
  writeHandleCopy = writeHandle;
  providerCopy = provider;
  responseMessageNameCopy = responseMessageName;
  messageNameCopy = messageName;
  nameCopy = name;
  centerCopy = center;
  dispatcherCopy = dispatcher;
  sourceCopy = source;
  dCopy = d;
  v24 = +[HMDMetricsManager sharedLogEventSubmitter];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __247__HMDRemoteEventRouterClient_initWithMessageTargetUUID_queue_dataSource_messageDispatcher_notificationCenter_requestMessageName_updateMessageName_multiHopFetchResponseMessageName_storeReadHandle_storeWriteHandle_retryIntervalProvider_logCategory___block_invoke;
  v38[3] = &unk_2786726B0;
  v39 = queueCopy;
  v40 = handleCopy;
  v41 = writeHandleCopy;
  v42 = providerCopy;
  categoryCopy = category;
  v36 = providerCopy;
  v33 = writeHandleCopy;
  v32 = handleCopy;
  v25 = queueCopy;
  v26 = [(HMDRemoteEventRouterClient *)self initWithMessageTargetUUID:dCopy queue:v25 dataSource:sourceCopy messageDispatcher:dispatcherCopy notificationCenter:centerCopy requestMessageName:nameCopy updateMessageName:messageNameCopy multiHopFetchResponseMessageName:responseMessageNameCopy logCategory:category logEventSubmitter:v24 eventRouterClientFactory:v38];

  return v26;
}

- (HMDRemoteEventRouterClient)initWithMessageTargetUUID:(id)d queue:(id)queue dataSource:(id)source messageDispatcher:(id)dispatcher notificationCenter:(id)center requestMessageName:(id)name updateMessageName:(id)messageName multiHopFetchResponseMessageName:(id)self0 storeReadHandle:(id)self1 storeWriteHandle:(id)self2 logCategory:(const char *)self3
{
  queueCopy = queue;
  handleCopy = handle;
  writeHandleCopy = writeHandle;
  responseMessageNameCopy = responseMessageName;
  messageNameCopy = messageName;
  nameCopy = name;
  centerCopy = center;
  dispatcherCopy = dispatcher;
  sourceCopy = source;
  dCopy = d;
  v24 = +[HMDMetricsManager sharedLogEventSubmitter];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __225__HMDRemoteEventRouterClient_initWithMessageTargetUUID_queue_dataSource_messageDispatcher_notificationCenter_requestMessageName_updateMessageName_multiHopFetchResponseMessageName_storeReadHandle_storeWriteHandle_logCategory___block_invoke;
  v35[3] = &unk_2786716F8;
  v36 = queueCopy;
  v37 = handleCopy;
  v38 = writeHandleCopy;
  categoryCopy = category;
  v31 = writeHandleCopy;
  v28 = handleCopy;
  v25 = queueCopy;
  v26 = [(HMDRemoteEventRouterClient *)self initWithMessageTargetUUID:dCopy queue:v25 dataSource:sourceCopy messageDispatcher:dispatcherCopy notificationCenter:centerCopy requestMessageName:nameCopy updateMessageName:messageNameCopy multiHopFetchResponseMessageName:responseMessageNameCopy logCategory:category logEventSubmitter:v24 eventRouterClientFactory:v35];

  return v26;
}

- (HMDRemoteEventRouterClient)initWithMessageTargetUUID:(id)d queue:(id)queue dataSource:(id)source messageDispatcher:(id)dispatcher notificationCenter:(id)center requestMessageName:(id)name updateMessageName:(id)messageName multiHopFetchResponseMessageName:(id)self0 storeReadHandle:(id)self1 storeWriteHandle:(id)self2
{
  queueCopy = queue;
  handleCopy = handle;
  writeHandleCopy = writeHandle;
  responseMessageNameCopy = responseMessageName;
  messageNameCopy = messageName;
  nameCopy = name;
  centerCopy = center;
  dispatcherCopy = dispatcher;
  sourceCopy = source;
  dCopy = d;
  uUIDString = [dCopy UUIDString];
  v24 = [@"RemoteEventRouter.Client." stringByAppendingString:uUIDString];

  uTF8String = [v24 UTF8String];
  v26 = +[HMDMetricsManager sharedLogEventSubmitter];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __213__HMDRemoteEventRouterClient_initWithMessageTargetUUID_queue_dataSource_messageDispatcher_notificationCenter_requestMessageName_updateMessageName_multiHopFetchResponseMessageName_storeReadHandle_storeWriteHandle___block_invoke;
  v38[3] = &unk_2786716D0;
  v39 = queueCopy;
  v40 = handleCopy;
  v41 = writeHandleCopy;
  v42 = v24;
  v32 = v24;
  v31 = writeHandleCopy;
  v30 = handleCopy;
  v27 = queueCopy;
  v28 = [(HMDRemoteEventRouterClient *)self initWithMessageTargetUUID:dCopy queue:v27 dataSource:sourceCopy messageDispatcher:dispatcherCopy notificationCenter:centerCopy requestMessageName:nameCopy updateMessageName:messageNameCopy multiHopFetchResponseMessageName:responseMessageNameCopy logCategory:uTF8String logEventSubmitter:v26 eventRouterClientFactory:v38];

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
  if (logCategory__hmf_once_t0_24987 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_24987, &__block_literal_global_24988);
  }

  v3 = logCategory__hmf_once_v1_24989;

  return v3;
}

void __41__HMDRemoteEventRouterClient_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_24989;
  logCategory__hmf_once_v1_24989 = v1;
}

+ (id)routerClientWithQueue:(id)queue storeReadHandle:(id)handle storeWriteHandle:(id)writeHandle logCategory:(const char *)category
{
  writeHandleCopy = writeHandle;
  handleCopy = handle;
  queueCopy = queue;
  v13 = objc_alloc_init(HMDRemoteEventRouterClientRetryIntervals);
  v14 = [self routerClientWithQueue:queueCopy storeReadHandle:handleCopy storeWriteHandle:writeHandleCopy retryIntervalProvider:v13 logCategory:category];

  return v14;
}

+ (id)routerClientWithQueue:(id)queue storeReadHandle:(id)handle storeWriteHandle:(id)writeHandle retryIntervalProvider:(id)provider logCategory:(const char *)category
{
  providerCopy = provider;
  writeHandleCopy = writeHandle;
  handleCopy = handle;
  queueCopy = queue;
  v15 = objc_alloc_init(HMDEventRouterTimerProvider);
  v16 = [objc_alloc(MEMORY[0x277D174C8]) initWithQueue:queueCopy timerProvider:v15 keepAliveInterval:providerCopy dormantFetchTimerInterval:handleCopy retryIntervalProvider:writeHandleCopy storeReadHandle:category storeWriteHandle:420.0 logCategory:28800.0];

  return v16;
}

@end