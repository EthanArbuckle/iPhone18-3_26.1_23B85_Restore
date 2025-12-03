@interface DRSTaskingManager
- (BOOL)checkConfigsForInvalidation:(id *)invalidation;
- (BOOL)clearTaskingHistoryWithErrorOut:(id *)out;
- (BOOL)isTaskingEnabled;
- (BOOL)subscribeToChannelWithConfig:(id)config errorOut:(id *)out;
- (BOOL)unsubscribeFromSubscribedChannelWithErrorOut:(id *)out;
- (BOOL)updatePersistedChannelConfig:(id)config errorOut:(id *)out;
- (DRSTaskingManager)initWithDecisionMaker:(id)maker cloudKitHelper:(id)helper configStateChangeBlock:(id)block;
- (id)metadataForConfigUUID:(id)d teamID:(id)iD errorOut:(id *)out;
- (id)persistedCloudChannelConfig;
- (void)_bestEffortLogMessageReceiptTelemetry:(id)telemetry transaction:(id)transaction cloudChannelConfig:(id)config;
- (void)_emitTaskingSystemMessageTelemetry:(id)telemetry messageType:(id)type dateBroadcast:(id)broadcast dateReceived:(id)received transaction:(id)transaction cloudChannelConfig:(id)config;
- (void)_emitTelemetryForLoggableMesssage:(id)messsage transaction:(id)transaction cloudChannelConfig:(id)config;
- (void)clientCompletedConfigUUID:(id)d teamID:(id)iD;
- (void)clientRejectsConfigUUID:(id)d teamID:(id)iD;
- (void)processCancelMessage:(id)message cloudChannelConfig:(id)config transaction:(id)transaction shouldEmitCATelemetry:(BOOL)telemetry;
- (void)processPingMessage:(id)message cloudChannelConfig:(id)config transaction:(id)transaction shouldEmitCATelemetry:(BOOL)telemetry;
- (void)processTaskingMessage:(id)message cloudChannelConfig:(id)config transaction:(id)transaction shouldEmitCATelemetry:(BOOL)telemetry;
@end

@implementation DRSTaskingManager

- (void)_emitTaskingSystemMessageTelemetry:(id)telemetry messageType:(id)type dateBroadcast:(id)broadcast dateReceived:(id)received transaction:(id)transaction cloudChannelConfig:(id)config
{
  v43[3] = *MEMORY[0x277D85DE8];
  telemetryCopy = telemetry;
  typeCopy = type;
  broadcastCopy = broadcast;
  receivedCopy = received;
  transactionCopy = transaction;
  configCopy = config;
  v19 = configCopy;
  if (typeCopy)
  {
    v20 = typeCopy;
  }

  else
  {
    v20 = @"InvalidMessage";
  }

  v36 = v20;
  if (configCopy)
  {
    v43[0] = v20;
    v42[0] = kMessageReceivedEventKey_MessageType;
    v42[1] = kMessageReceivedEventKey_ChannelType;
    v21 = +[DRSCloudChannelConfig stringForChannelType:](DRSCloudChannelConfig, "stringForChannelType:", [configCopy type]);
    v43[1] = v21;
    v42[2] = kMessageReceivedEventKey_ChannelEnvironment;
    v22 = +[DRSCloudChannelConfig stringForEnvironment:](DRSCloudChannelConfig, "stringForEnvironment:", [v19 environment]);
    v43[2] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];
    v24 = [v23 mutableCopy];
  }

  else
  {
    v40[0] = kMessageReceivedEventKey_MessageType;
    v40[1] = kMessageReceivedEventKey_ChannelType;
    v41[0] = v20;
    v41[1] = @"ManualInjection";
    v40[2] = kMessageReceivedEventKey_ChannelEnvironment;
    v41[2] = @"ManualInjection";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
    v24 = [v21 mutableCopy];
  }

  if (telemetryCopy)
  {
    uUIDString = [telemetryCopy UUIDString];
    [v24 setObject:uUIDString forKeyedSubscript:kUUIDKey];
  }

  if (broadcastCopy && receivedCopy)
  {
    v26 = MEMORY[0x277CCABB0];
    [receivedCopy timeIntervalSinceDate:broadcastCopy];
    v27 = [v26 numberWithDouble:?];
    [v24 setObject:v27 forKeyedSubscript:kMessageReceivedEventKey_ReceiptDelay];
  }

  DRSCoreAnalyticsSendEvent(kMessageReceivedEventName, v24);
  v28 = +[DRSSystemProfile sharedInstance];
  if (![v28 isInternal])
  {
    goto LABEL_15;
  }

  cloudKitHelper = [(DRSTaskingManager *)self cloudKitHelper];

  if (cloudKitHelper)
  {
    cloudKitHelper2 = [(DRSTaskingManager *)self cloudKitHelper];
    v30 = [v24 objectForKeyedSubscript:kUUIDKey];
    v31 = [v24 objectForKeyedSubscript:kMessageReceivedEventKey_MessageType];
    v32 = [v24 objectForKeyedSubscript:kMessageReceivedEventKey_ChannelType];
    v33 = [v24 objectForKeyedSubscript:kMessageReceivedEventKey_ChannelEnvironment];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __126__DRSTaskingManager__emitTaskingSystemMessageTelemetry_messageType_dateBroadcast_dateReceived_transaction_cloudChannelConfig___block_invoke;
    v38[3] = &unk_27899F820;
    v39 = telemetryCopy;
    [cloudKitHelper2 reportTaskingSystemMessageReceipt:v30 messageType:v31 channelType:v32 channelEnvironment:v33 dateBroadcast:broadcastCopy dateReceived:receivedCopy transaction:transactionCopy completionHandler:v38];

    v28 = v39;
LABEL_15:
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __126__DRSTaskingManager__emitTaskingSystemMessageTelemetry_messageType_dateBroadcast_dateReceived_transaction_cloudChannelConfig___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = DPLogHandle_ConfigPersistedStoreError();
    if (os_signpost_enabled(v4))
    {
      v5 = *(a1 + 32);
      v12 = 138543618;
      v13 = v5;
      v14 = 2114;
      v15 = v3;
      v6 = "TaskingManagerMessageReceiptTelemetryError";
      v7 = "Telemetry reporting for %{public}@ failed %{public}@";
      v8 = v4;
      v9 = 22;
LABEL_6:
      _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v6, v7, &v12, v9);
    }
  }

  else
  {
    v4 = DPLogHandle_ConfigPersistedStore();
    if (os_signpost_enabled(v4))
    {
      v10 = *(a1 + 32);
      v12 = 138543362;
      v13 = v10;
      v6 = "TaskingManagerMessageReceiptTelemetrySuccess";
      v7 = "Telemetry reporting for %{public}@ succeeded!";
      v8 = v4;
      v9 = 12;
      goto LABEL_6;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_emitTelemetryForLoggableMesssage:(id)messsage transaction:(id)transaction cloudChannelConfig:(id)config
{
  configCopy = config;
  transactionCopy = transaction;
  messsageCopy = messsage;
  messageUUID = [messsageCopy messageUUID];
  messageType = [messsageCopy messageType];
  dateBroadcast = [messsageCopy dateBroadcast];
  dateReceived = [messsageCopy dateReceived];

  [(DRSTaskingManager *)self _emitTaskingSystemMessageTelemetry:messageUUID messageType:messageType dateBroadcast:dateBroadcast dateReceived:dateReceived transaction:transactionCopy cloudChannelConfig:configCopy];
}

- (void)processTaskingMessage:(id)message cloudChannelConfig:(id)config transaction:(id)transaction shouldEmitCATelemetry:(BOOL)telemetry
{
  telemetryCopy = telemetry;
  messageCopy = message;
  configCopy = config;
  transactionCopy = transaction;
  if (telemetryCopy)
  {
    [(DRSTaskingManager *)self _emitTelemetryForLoggableMesssage:messageCopy transaction:transactionCopy cloudChannelConfig:configCopy];
  }

  workQueue = [(DRSTaskingManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__DRSTaskingManager_processTaskingMessage_cloudChannelConfig_transaction_shouldEmitCATelemetry___block_invoke;
  block[3] = &unk_27899F9E0;
  v18 = messageCopy;
  selfCopy = self;
  v22 = telemetryCopy;
  v20 = configCopy;
  v21 = transactionCopy;
  v14 = transactionCopy;
  v15 = configCopy;
  v16 = messageCopy;
  dispatch_sync(workQueue, block);
}

void __96__DRSTaskingManager_processTaskingMessage_cloudChannelConfig_transaction_shouldEmitCATelemetry___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = DPLogHandle_TaskingManager();
  if (os_signpost_enabled(v2))
  {
    v3 = [*(a1 + 32) messageUUID];
    *buf = 138543362;
    v26 = v3;
    _os_signpost_emit_with_name_impl(&dword_232906000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReceivedTaskingMessage", "TaskingMessage with UUID %{public}@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) decisionMaker];
  v5 = [v4 acceptedConfigs:*(a1 + 32) logTelemetry:*(a1 + 64) allowWildcardBuild:{objc_msgSend(*(a1 + 48), "allowsWildcardBuild")}];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 state] == 2;
        v12 = [*(a1 + 40) workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __96__DRSTaskingManager_processTaskingMessage_cloudChannelConfig_transaction_shouldEmitCATelemetry___block_invoke_44;
        block[3] = &unk_27899F9E0;
        v13 = *(a1 + 32);
        block[4] = *(a1 + 40);
        block[5] = v10;
        v19 = v11;
        v17 = v13;
        v18 = *(a1 + 56);
        dispatch_async(v12, block);
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __96__DRSTaskingManager_processTaskingMessage_cloudChannelConfig_transaction_shouldEmitCATelemetry___block_invoke_44(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) configStateChangeBlock];
  v3 = [*(a1 + 40) teamID];
  v4 = [*(a1 + 40) configUUID];
  v5 = [*(a1 + 40) config];
  (v2)[2](v2, v3, v4, v5, [*(a1 + 40) state], 0, *(a1 + 64));

  v6 = DPLogHandle_TaskingManager();
  if (os_signpost_enabled(v6))
  {
    v7 = [*(a1 + 40) configUUID];
    v8 = [*(a1 + 40) teamID];
    v9 = [*(a1 + 48) messageUUID];
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AcceptedConfig", "Accepted config %{public}@ (teamID: %{public}@) due to tasking message %{public}@", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)processCancelMessage:(id)message cloudChannelConfig:(id)config transaction:(id)transaction shouldEmitCATelemetry:(BOOL)telemetry
{
  telemetryCopy = telemetry;
  messageCopy = message;
  transactionCopy = transaction;
  if (telemetryCopy)
  {
    [(DRSTaskingManager *)self _emitTelemetryForLoggableMesssage:messageCopy transaction:transactionCopy cloudChannelConfig:config];
  }

  workQueue = [(DRSTaskingManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__DRSTaskingManager_processCancelMessage_cloudChannelConfig_transaction_shouldEmitCATelemetry___block_invoke;
  block[3] = &unk_27899F400;
  v16 = messageCopy;
  selfCopy = self;
  v18 = transactionCopy;
  v13 = transactionCopy;
  v14 = messageCopy;
  dispatch_sync(workQueue, block);
}

void __95__DRSTaskingManager_processCancelMessage_cloudChannelConfig_transaction_shouldEmitCATelemetry___block_invoke(id *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = DPLogHandle_TaskingManager();
  if (os_signpost_enabled(v2))
  {
    v3 = [a1[4] messageUUID];
    *buf = 138543362;
    v13 = v3;
    _os_signpost_emit_with_name_impl(&dword_232906000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReceivedCancelMessage", "CancelMessage with UUID %{public}@", buf, 0xCu);
  }

  v4 = [a1[5] decisionMaker];
  v5 = [v4 acceptedCancels:a1[4]];

  if (v5)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __95__DRSTaskingManager_processCancelMessage_cloudChannelConfig_transaction_shouldEmitCATelemetry___block_invoke_46;
    v9[3] = &unk_27899FA30;
    v8 = *(a1 + 2);
    v6 = v8.i64[0];
    v10 = vextq_s8(v8, v8, 8uLL);
    v11 = a1[6];
    [v5 enumerateKeysAndObjectsUsingBlock:v9];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __95__DRSTaskingManager_processCancelMessage_cloudChannelConfig_transaction_shouldEmitCATelemetry___block_invoke_46(id *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = a3;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = [a1[4] workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __95__DRSTaskingManager_processCancelMessage_cloudChannelConfig_transaction_shouldEmitCATelemetry___block_invoke_2;
        block[3] = &unk_27899FA08;
        block[4] = a1[4];
        v15 = v5;
        v16 = v10;
        v17 = a1[5];
        v18 = a1[6];
        dispatch_async(v11, block);

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __95__DRSTaskingManager_processCancelMessage_cloudChannelConfig_transaction_shouldEmitCATelemetry___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) configStateChangeBlock];
  v2[2](v2, *(a1 + 40), *(a1 + 48), 0, 3, 2, 1);

  v3 = DPLogHandle_TaskingManager();
  if (os_signpost_enabled(v3))
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = [*(a1 + 56) messageUUID];
    v8 = 138543874;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CancelledConfig", "Cancelled config %{public}@ (teamID: %{public}@) due to cancel message %{public}@", &v8, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)processPingMessage:(id)message cloudChannelConfig:(id)config transaction:(id)transaction shouldEmitCATelemetry:(BOOL)telemetry
{
  telemetryCopy = telemetry;
  messageCopy = message;
  configCopy = config;
  transactionCopy = transaction;
  if (telemetryCopy)
  {
    [(DRSTaskingManager *)self _emitTelemetryForLoggableMesssage:messageCopy transaction:transactionCopy cloudChannelConfig:configCopy];
  }

  v13 = DPLogHandle_TaskingManager();
  if (os_signpost_enabled(v13))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReceivedPingMesssage", &unk_232980861, v14, 2u);
  }
}

- (void)_bestEffortLogMessageReceiptTelemetry:(id)telemetry transaction:(id)transaction cloudChannelConfig:(id)config
{
  telemetryCopy = telemetry;
  transactionCopy = transaction;
  configCopy = config;
  date = [MEMORY[0x277CBEAA8] date];
  v11 = _dateFromJSONDict(telemetryCopy, kDRSTaskingSystemMessage_DateBroadcastKey);
  v12 = [telemetryCopy objectForKeyedSubscript:kDRSTaskingSystemMessage_messageUUIDKey];
  if (v12)
  {
    v13 = v12;
    v14 = off_27899E9D8;
LABEL_5:
    messageType = [(__objc2_class *)*v14 messageType];
    goto LABEL_6;
  }

  v13 = [telemetryCopy objectForKeyedSubscript:kDRSTaskingSystemMessage_messageUUIDKey];
  if (v13)
  {
    v14 = off_27899E8C8;
    goto LABEL_5;
  }

  messageType = 0;
LABEL_6:
  [(DRSTaskingManager *)self _emitTaskingSystemMessageTelemetry:v13 messageType:messageType dateBroadcast:v11 dateReceived:date transaction:transactionCopy cloudChannelConfig:configCopy];
}

- (DRSTaskingManager)initWithDecisionMaker:(id)maker cloudKitHelper:(id)helper configStateChangeBlock:(id)block
{
  makerCopy = maker;
  helperCopy = helper;
  blockCopy = block;
  if (!blockCopy)
  {
    v18 = DPLogHandle_TaskingManagerError();
    if (os_signpost_enabled(v18))
    {
      *buf = 0;
      v19 = "No config state change block specified";
LABEL_10:
      _os_signpost_emit_with_name_impl(&dword_232906000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TaskingManagerInitFailure", v19, buf, 2u);
    }

LABEL_11:

    selfCopy = 0;
    goto LABEL_12;
  }

  if (!makerCopy)
  {
    v18 = DPLogHandle_TaskingManagerError();
    if (os_signpost_enabled(v18))
    {
      *buf = 0;
      v19 = "No decision maker provided";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v21.receiver = self;
  v21.super_class = DRSTaskingManager;
  v12 = [(DRSTaskingManager *)&v21 init];
  if (v12)
  {
    v13 = dispatch_queue_create("DRSTaskingManager message queue", 0);
    workQueue = v12->_workQueue;
    v12->_workQueue = v13;

    v15 = _Block_copy(blockCopy);
    configStateChangeBlock = v12->_configStateChangeBlock;
    v12->_configStateChangeBlock = v15;

    objc_storeStrong(&v12->_decisionMaker, maker);
    objc_storeStrong(&v12->_cloudKitHelper, helper);
  }

  self = v12;
  selfCopy = self;
LABEL_12:

  return selfCopy;
}

- (void)clientRejectsConfigUUID:(id)d teamID:(id)iD
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v8 = DPLogHandle_TaskingManager();
  if (os_signpost_enabled(v8))
  {
    *buf = 138543618;
    v22 = dCopy;
    v23 = 2114;
    v24 = iDCopy;
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientRejectsConfig", "Client rejects config %{public}@ (teamID: %{public}@)", buf, 0x16u);
  }

  decisionMaker = [(DRSTaskingManager *)self decisionMaker];
  configStore = [decisionMaker configStore];
  v20 = 0;
  v11 = [configStore configMetadataForUUID:dCopy errorOut:&v20];
  v12 = v20;

  if (v11)
  {
    if ([v11 state] == 3)
    {
      configStateChangeBlock = DPLogHandle_TaskingManagerError();
      if (os_signpost_enabled(configStateChangeBlock))
      {
        *buf = 138543618;
        v22 = iDCopy;
        v23 = 2114;
        v24 = dCopy;
        v14 = "Client (teamID %{public}@) attempting to reject completed config %{public}@";
LABEL_13:
        _os_signpost_emit_with_name_impl(&dword_232906000, configStateChangeBlock, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientRejectsConfigError", v14, buf, 0x16u);
      }
    }

    else
    {
      teamID = [v11 teamID];
      v16 = [teamID isEqualToString:iDCopy];

      if (v16)
      {
        decisionMaker2 = [(DRSTaskingManager *)self decisionMaker];
        [decisionMaker2 clientRejectsConfigUUID:dCopy];

        v18 = [v11 state] == 2;
        configStateChangeBlock = [(DRSTaskingManager *)self configStateChangeBlock];
        (*(configStateChangeBlock + 16))(configStateChangeBlock, iDCopy, dCopy, 0, 3, 5, v18);
      }

      else
      {
        configStateChangeBlock = DPLogHandle_TaskingManagerError();
        if (os_signpost_enabled(configStateChangeBlock))
        {
          *buf = 138543618;
          v22 = iDCopy;
          v23 = 2114;
          v24 = dCopy;
          v14 = "Client (teamID %{public}@) attempting to reject config %{public}@ for wrong team";
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
    configStateChangeBlock = DPLogHandle_TaskingManagerError();
    if (os_signpost_enabled(configStateChangeBlock))
    {
      *buf = 138543618;
      v22 = iDCopy;
      v23 = 2114;
      v24 = dCopy;
      v14 = "Client (teamID %{public}@) attempting to reject non-existent config %{public}@";
      goto LABEL_13;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)clientCompletedConfigUUID:(id)d teamID:(id)iD
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v8 = DPLogHandle_TaskingManager();
  if (os_signpost_enabled(v8))
  {
    *buf = 138543618;
    v22 = dCopy;
    v23 = 2114;
    v24 = iDCopy;
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientCompletedConfig", "Client completed config %{public}@ (teamID: %{public}@)", buf, 0x16u);
  }

  decisionMaker = [(DRSTaskingManager *)self decisionMaker];
  configStore = [decisionMaker configStore];
  v20 = 0;
  v11 = [configStore configMetadataForUUID:dCopy errorOut:&v20];
  v12 = v20;

  if (v11)
  {
    if ([v11 state] == 3)
    {
      configStateChangeBlock = DPLogHandle_TaskingManagerError();
      if (os_signpost_enabled(configStateChangeBlock))
      {
        *buf = 138543618;
        v22 = iDCopy;
        v23 = 2114;
        v24 = dCopy;
        v14 = "Client (teamID %{public}@) attempting to complete already-completed config %{public}@";
LABEL_13:
        _os_signpost_emit_with_name_impl(&dword_232906000, configStateChangeBlock, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientCompletedConfigError", v14, buf, 0x16u);
      }
    }

    else
    {
      teamID = [v11 teamID];
      v16 = [teamID isEqualToString:iDCopy];

      if (v16)
      {
        decisionMaker2 = [(DRSTaskingManager *)self decisionMaker];
        [decisionMaker2 clientCompletedConfigUUID:dCopy];

        v18 = [v11 state] == 2;
        configStateChangeBlock = [(DRSTaskingManager *)self configStateChangeBlock];
        (*(configStateChangeBlock + 16))(configStateChangeBlock, iDCopy, dCopy, 0, 3, 6, v18);
      }

      else
      {
        configStateChangeBlock = DPLogHandle_TaskingManagerError();
        if (os_signpost_enabled(configStateChangeBlock))
        {
          *buf = 138543618;
          v22 = iDCopy;
          v23 = 2114;
          v24 = dCopy;
          v14 = "Client (teamID %{public}@) attempting to complete config %{public}@ for wrong team";
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
    configStateChangeBlock = DPLogHandle_TaskingManagerError();
    if (os_signpost_enabled(configStateChangeBlock))
    {
      *buf = 138543618;
      v22 = iDCopy;
      v23 = 2114;
      v24 = dCopy;
      v14 = "Client (teamID %{public}@) attempting to complete non-existent config %{public}@";
      goto LABEL_13;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)metadataForConfigUUID:(id)d teamID:(id)iD errorOut:(id *)out
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(teamID == %@) AND (configUUID == %@)", iD, d];
  decisionMaker = [(DRSTaskingManager *)self decisionMaker];
  configStore = [decisionMaker configStore];
  v17 = 0;
  v10 = [configStore configMetadatasForPredicate:v7 sortDescriptors:0 fetchLimit:1 errorOut:&v17];
  v11 = v17;

  if (v11)
  {
    v12 = DPLogHandle_TaskingManagerError();
    if (os_signpost_enabled(v12))
    {
      *buf = 138543362;
      v19 = v11;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MetadataLookupFailure", "Failed to lookup metadata due to error: %{public}@", buf, 0xCu);
    }

    if (out)
    {
      v13 = v11;
      firstObject = 0;
      *out = v11;
      goto LABEL_10;
    }
  }

  else if (v10 && [v10 count])
  {
    firstObject = [v10 firstObject];
    goto LABEL_10;
  }

  firstObject = 0;
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (BOOL)clearTaskingHistoryWithErrorOut:(id *)out
{
  decisionMaker = [(DRSTaskingManager *)self decisionMaker];
  configStore = [decisionMaker configStore];
  LOBYTE(out) = [configStore clearStoreWithErrorOut:out];

  return out;
}

- (id)persistedCloudChannelConfig
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  workQueue = [(DRSTaskingManager *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__DRSTaskingManager_persistedCloudChannelConfig__block_invoke;
  v6[3] = &unk_27899F4F0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __48__DRSTaskingManager_persistedCloudChannelConfig__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) decisionMaker];
  v2 = [v6 configStore];
  v3 = [v2 cloudChannelConfig];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)updatePersistedChannelConfig:(id)config errorOut:(id *)out
{
  configCopy = config;
  decisionMaker = [(DRSTaskingManager *)self decisionMaker];
  configStore = [decisionMaker configStore];
  LOBYTE(out) = [configStore updateCloudChannelConfig:configCopy errorOut:out];

  return out;
}

- (BOOL)unsubscribeFromSubscribedChannelWithErrorOut:(id *)out
{
  v21[1] = *MEMORY[0x277D85DE8];
  *out = 0;
  taskingMessageChannel = [(DRSTaskingManager *)self taskingMessageChannel];

  if (!taskingMessageChannel)
  {
    goto LABEL_4;
  }

  taskingMessageChannel2 = [(DRSTaskingManager *)self taskingMessageChannel];
  v7 = [taskingMessageChannel2 unsubscribe:out];

  if (v7)
  {
    [(DRSTaskingManager *)self setTaskingMessageChannel:0];
LABEL_4:
    result = 1;
    goto LABEL_10;
  }

  if (!*out)
  {
    v9 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"Unknown unsubscribe failure";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    *out = [v9 errorWithDomain:@"DiagnosticRequestCloudChannelError" code:0 userInfo:v10];
  }

  v11 = DPLogHandle_TaskingManagerError();
  if (os_signpost_enabled(v11))
  {
    taskingMessageChannel3 = [(DRSTaskingManager *)self taskingMessageChannel];
    config = [taskingMessageChannel3 config];
    v14 = *out;
    v16 = 138543618;
    v17 = config;
    v18 = 2114;
    v19 = v14;
    _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnsubscribeChannelFailed", "Failed to unsubscribe from %{public}@ due to error: %{public}@", &v16, 0x16u);
  }

  result = 0;
LABEL_10:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isTaskingEnabled
{
  v2 = +[DRSSystemProfile sharedInstance];
  isTaskingEnabled = [v2 isTaskingEnabled];

  return isTaskingEnabled;
}

- (BOOL)subscribeToChannelWithConfig:(id)config errorOut:(id *)out
{
  v21 = *MEMORY[0x277D85DE8];
  configCopy = config;
  *out = 0;
  if (configCopy)
  {
    v7 = [DRSTaskingMessageChannel alloc];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__DRSTaskingManager_subscribeToChannelWithConfig_errorOut___block_invoke;
    v16[3] = &unk_27899FA58;
    v16[4] = self;
    v8 = [(DRSTaskingMessageChannel *)v7 initWithCloudChannelConfig:configCopy payloadProcessingBlock:v16];
    LODWORD(v9) = [(DRSTaskingMessageChannel *)v8 subscribe:out];
    if (v9)
    {
      [(DRSTaskingManager *)self setTaskingMessageChannel:v8];
    }

    else
    {
      v10 = DPLogHandle_TaskingManagerError();
      if (os_signpost_enabled(v10))
      {
        v11 = [configCopy debugDescription];
        v12 = v11;
        v13 = *out;
        if (!*out)
        {
          v13 = @"Unknown";
        }

        *buf = 138543618;
        v18 = v11;
        v19 = 2114;
        v20 = v13;
        _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SubscriptionFailed", "Failed to subscribe to %{public}@ to error: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v9 = DPLogHandle_TaskingManager();
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NotSubscribingToTaskingChannel", "nil config means no subscription", buf, 2u);
    }

    LOBYTE(v9) = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

void __59__DRSTaskingManager_subscribeToChannelWithConfig_errorOut___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_transaction_create();
  v8 = DPLogHandle_TaskingManager();
  if (os_signpost_enabled(v8))
  {
    v10 = 138543362;
    v11 = v5;
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TaskingSystemMessageReceived", "Tasking system message: %{public}@", &v10, 0xCu);
  }

  [*(a1 + 32) processTaskingSystemMessageJSONDict:v5 cloudChannelConfig:v6 transaction:v7 shouldEmitCATelemetry:1];
  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)checkConfigsForInvalidation:(id *)invalidation
{
  v107 = *MEMORY[0x277D85DE8];
  *invalidation = 0;
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(state == %u) || (state == %u)", 2, 1];
  decisionMaker = [(DRSTaskingManager *)self decisionMaker];
  configStore = [decisionMaker configStore];
  v8 = [configStore configMetadatasForPredicate:v5 sortDescriptors:0 fetchLimit:0 errorOut:invalidation];

  v9 = *invalidation;
  if (*invalidation)
  {
    v10 = DPLogHandle_TaskingManagerError();
    if (os_signpost_enabled(v10))
    {
      v11 = *invalidation;
      *buf = 138543362;
      v98 = v11;
      v12 = "InvalidationCheckFailed";
      v13 = "Failed to fetch waiting or active configs due to error: %{public}@";
      v14 = v10;
      v15 = 12;
LABEL_53:
      _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v12, v13, buf, v15);
      goto LABEL_54;
    }

    goto LABEL_54;
  }

  if (v8 && [v8 count])
  {
    selfCopy = self;
    v78 = v5;
    date = [MEMORY[0x277CBEAA8] date];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v18 = v8;
    v19 = [v18 countByEnumeratingWithState:&v93 objects:v106 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v94;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v94 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v93 + 1) + 8 * i);
          teamID = [v23 teamID];
          array = [dictionary objectForKeyedSubscript:teamID];

          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
            teamID2 = [v23 teamID];
            [dictionary setObject:array forKeyedSubscript:teamID2];
          }

          [array addObject:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v93 objects:v106 count:16];
      }

      while (v20);
    }

    array2 = [MEMORY[0x277CBEB18] array];
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __49__DRSTaskingManager_checkConfigsForInvalidation___block_invoke;
    v89[3] = &unk_27899FA30;
    v28 = array2;
    v90 = v28;
    v91 = selfCopy;
    v82 = date;
    v92 = v82;
    [dictionary enumerateKeysAndObjectsUsingBlock:v89];
    v29 = v28;

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v8 = v29;
    v30 = [v8 countByEnumeratingWithState:&v85 objects:v105 count:16];
    if (!v30)
    {
LABEL_50:

      v9 = 0;
      v5 = v78;
      v10 = v82;
      goto LABEL_54;
    }

    v31 = v30;
    v32 = 0x27899E000uLL;
    v81 = *v86;
    obj = v8;
LABEL_17:
    v33 = 0;
    while (1)
    {
      if (*v86 != v81)
      {
        objc_enumerationMutation(obj);
      }

      v34 = *(*(&v85 + 1) + 8 * v33);
      sharedInstance = [*(v32 + 2456) sharedInstance];
      build = [sharedInstance build];
      config = [v34 config];
      build2 = [config build];
      v39 = [build isEqualToString:build2];

      if (v39)
      {
        config2 = [v34 config];
        endDate = [config2 endDate];
        v42 = [v82 compare:endDate];

        if (v42 == -1)
        {
          v48 = DPLogHandle_TaskingManager();
          if (os_signpost_enabled(v48))
          {
            configUUID = [v34 configUUID];
            teamID3 = [v34 teamID];
            *buf = 138543618;
            v98 = configUUID;
            v99 = 2114;
            v100 = teamID3;
            _os_signpost_emit_with_name_impl(&dword_232906000, v48, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigStillValid", "Config %{public}@ (Team ID %{public}@) is still valid", buf, 0x16u);
          }

          v32 = 0x27899E000;
          goto LABEL_48;
        }

        if ([v34 state] == 1)
        {
          v43 = 1;
        }

        else
        {
          v43 = 8194;
        }

        decisionMaker2 = [(DRSTaskingManager *)selfCopy decisionMaker];
        configStore2 = [decisionMaker2 configStore];
        configUUID2 = [v34 configUUID];
        v83 = 0;
        v47 = [configStore2 completeConfigWithUUID:configUUID2 completedDate:v82 completionType:v43 completionDescription:@"Expired" errorOut:&v83];
        v48 = v83;

        if (v47)
        {
          configStateChangeBlock = [(DRSTaskingManager *)selfCopy configStateChangeBlock];
          teamID4 = [v34 teamID];
          configUUID3 = [v34 configUUID];
          (configStateChangeBlock[2].isa)(configStateChangeBlock, teamID4, configUUID3, 0, 3, 4, [v34 state] == 2);
          goto LABEL_45;
        }

        configStateChangeBlock = DPLogHandle_TaskingManagerError();
        if (os_signpost_enabled(configStateChangeBlock))
        {
          teamID4 = [v34 configUUID];
          teamID5 = [v34 teamID];
          configUUID3 = teamID5;
          *buf = 138543874;
          v75 = @"Unknown";
          if (v48)
          {
            v75 = v48;
          }

          v98 = teamID4;
          v99 = 2114;
          v100 = teamID5;
          v101 = 2114;
          v102 = v75;
          _os_signpost_emit_with_name_impl(&dword_232906000, configStateChangeBlock, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidationFailed", "Failed to invalidate expiring config %{public}@ (Team ID: %{public}@) due to error: %{public}@", buf, 0x20u);
LABEL_45:
        }

        v32 = 0x27899E000;
        goto LABEL_47;
      }

      v52 = MEMORY[0x277CCACA8];
      config3 = [v34 config];
      build3 = [config3 build];
      sharedInstance2 = [*(v32 + 2456) sharedInstance];
      build4 = [sharedInstance2 build];
      v48 = [v52 stringWithFormat:@"Build changed (%@ -> %@)", build3, build4];

      if ([v34 state] == 1)
      {
        v57 = 1;
      }

      else
      {
        v57 = 8193;
      }

      decisionMaker3 = [(DRSTaskingManager *)selfCopy decisionMaker];
      configStore3 = [decisionMaker3 configStore];
      configUUID4 = [v34 configUUID];
      v84 = 0;
      v61 = [configStore3 completeConfigWithUUID:configUUID4 completedDate:v82 completionType:v57 completionDescription:v48 errorOut:&v84];
      configStateChangeBlock = v84;

      if (v61)
      {
        configStateChangeBlock2 = [(DRSTaskingManager *)selfCopy configStateChangeBlock];
        teamID6 = [v34 teamID];
        configUUID5 = [v34 configUUID];
        (*(configStateChangeBlock2 + 16))(configStateChangeBlock2, teamID6, configUUID5, 0, 3, 3, [v34 state] == 2);
      }

      else
      {
        configStateChangeBlock2 = DPLogHandle_TaskingManagerError();
        if (os_signpost_enabled(configStateChangeBlock2))
        {
          configUUID6 = [v34 configUUID];
          config4 = [v34 config];
          build5 = [config4 build];
          v68 = +[DRSSystemProfile sharedInstance];
          build6 = [v68 build];
          v70 = build6;
          *buf = 138544130;
          v71 = @"Unknown";
          if (configStateChangeBlock)
          {
            v71 = configStateChangeBlock;
          }

          v98 = configUUID6;
          v99 = 2114;
          v100 = build5;
          v101 = 2114;
          v102 = build6;
          v103 = 2114;
          v104 = v71;
          _os_signpost_emit_with_name_impl(&dword_232906000, configStateChangeBlock2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidationFailed", "Failed to invalidate config %{public}@ (%{public}@ -> %{public}@) due to error: %{public}@", buf, 0x2Au);

          v32 = 0x27899E000;
          goto LABEL_37;
        }
      }

      v32 = 0x27899E000;
LABEL_37:

LABEL_47:
LABEL_48:

      if (v31 == ++v33)
      {
        v8 = obj;
        v31 = [obj countByEnumeratingWithState:&v85 objects:v105 count:16];
        if (!v31)
        {
          goto LABEL_50;
        }

        goto LABEL_17;
      }
    }
  }

  v10 = DPLogHandle_TaskingManager();
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    v12 = "NoOpInvalidation";
    v13 = "No active or waiting configs";
    v14 = v10;
    v15 = 2;
    goto LABEL_53;
  }

LABEL_54:

  v76 = *MEMORY[0x277D85DE8];
  return v9 == 0;
}

void __49__DRSTaskingManager_checkConfigsForInvalidation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v28 = a2;
  v5 = a3;
  if ([v5 count] > 1)
  {
    v6 = DPLogHandle_TaskingManagerError();
    if (os_signpost_enabled(v6))
    {
      *buf = 134349314;
      v37 = [v5 count];
      v38 = 2114;
      v39 = v28;
      _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CollidingConfigsForTeam", "Found %{public}lu active or waiting configs for team ID %{public}@. Invalidating team configs", buf, 0x16u);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = v5;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (!v7)
    {
LABEL_24:

      v5 = v27;
      goto LABEL_25;
    }

    v8 = v7;
    v9 = *v32;
LABEL_7:
    v10 = 0;
    while (1)
    {
      if (*v32 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v31 + 1) + 8 * v10);
      v12 = DPLogHandle_TaskingManagerError();
      if (os_signpost_enabled(v12))
      {
        v13 = [v11 configUUID];
        *buf = 138543618;
        v37 = v28;
        v38 = 2114;
        v39 = v13;
        _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidatingCollidingConfigs", "Invalidating %{public}@: %{public}@ due to colliding configs", buf, 0x16u);
      }

      v14 = [v11 state] == 1 ? 1 : 8193;
      v15 = [*(a1 + 40) decisionMaker];
      v16 = [v15 configStore];
      v17 = [v11 configUUID];
      v18 = *(a1 + 48);
      v30 = 0;
      v19 = [v16 completeConfigWithUUID:v17 completedDate:v18 completionType:v14 completionDescription:@"Collided with active config for team" errorOut:&v30];
      v20 = v30;

      if (v19)
      {
        break;
      }

      v21 = DPLogHandle_TaskingManagerError();
      if (os_signpost_enabled(v21))
      {
        v24 = [v11 configUUID];
        v22 = v24;
        *buf = 138543618;
        v25 = @"Unknown";
        if (v20)
        {
          v25 = v20;
        }

        v37 = v24;
        v38 = 2114;
        v39 = v25;
        _os_signpost_emit_with_name_impl(&dword_232906000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidationFailed", "Failed to invalidate colliding config %{public}@ due to error: %{public}@", buf, 0x16u);
        goto LABEL_21;
      }

LABEL_22:

      if (v8 == ++v10)
      {
        v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (!v8)
        {
          goto LABEL_24;
        }

        goto LABEL_7;
      }
    }

    v21 = [*(a1 + 40) configStateChangeBlock];
    v22 = [v11 teamID];
    v23 = [v11 configUUID];
    (*(v21 + 16))(v21, v22, v23, 0, 3, 3, [v11 state] == 2);

LABEL_21:
    goto LABEL_22;
  }

  [*(a1 + 32) addObjectsFromArray:v5];
LABEL_25:

  v26 = *MEMORY[0x277D85DE8];
}

@end