@interface DRSTaskingManager
- (BOOL)checkConfigsForInvalidation:(id *)a3;
- (BOOL)clearTaskingHistoryWithErrorOut:(id *)a3;
- (BOOL)isTaskingEnabled;
- (BOOL)subscribeToChannelWithConfig:(id)a3 errorOut:(id *)a4;
- (BOOL)unsubscribeFromSubscribedChannelWithErrorOut:(id *)a3;
- (BOOL)updatePersistedChannelConfig:(id)a3 errorOut:(id *)a4;
- (DRSTaskingManager)initWithDecisionMaker:(id)a3 cloudKitHelper:(id)a4 configStateChangeBlock:(id)a5;
- (id)metadataForConfigUUID:(id)a3 teamID:(id)a4 errorOut:(id *)a5;
- (id)persistedCloudChannelConfig;
- (void)_bestEffortLogMessageReceiptTelemetry:(id)a3 transaction:(id)a4 cloudChannelConfig:(id)a5;
- (void)_emitTaskingSystemMessageTelemetry:(id)a3 messageType:(id)a4 dateBroadcast:(id)a5 dateReceived:(id)a6 transaction:(id)a7 cloudChannelConfig:(id)a8;
- (void)_emitTelemetryForLoggableMesssage:(id)a3 transaction:(id)a4 cloudChannelConfig:(id)a5;
- (void)clientCompletedConfigUUID:(id)a3 teamID:(id)a4;
- (void)clientRejectsConfigUUID:(id)a3 teamID:(id)a4;
- (void)processCancelMessage:(id)a3 cloudChannelConfig:(id)a4 transaction:(id)a5 shouldEmitCATelemetry:(BOOL)a6;
- (void)processPingMessage:(id)a3 cloudChannelConfig:(id)a4 transaction:(id)a5 shouldEmitCATelemetry:(BOOL)a6;
- (void)processTaskingMessage:(id)a3 cloudChannelConfig:(id)a4 transaction:(id)a5 shouldEmitCATelemetry:(BOOL)a6;
@end

@implementation DRSTaskingManager

- (void)_emitTaskingSystemMessageTelemetry:(id)a3 messageType:(id)a4 dateBroadcast:(id)a5 dateReceived:(id)a6 transaction:(id)a7 cloudChannelConfig:(id)a8
{
  v43[3] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v37 = a7;
  v18 = a8;
  v19 = v18;
  if (v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = @"InvalidMessage";
  }

  v36 = v20;
  if (v18)
  {
    v43[0] = v20;
    v42[0] = kMessageReceivedEventKey_MessageType;
    v42[1] = kMessageReceivedEventKey_ChannelType;
    v21 = +[DRSCloudChannelConfig stringForChannelType:](DRSCloudChannelConfig, "stringForChannelType:", [v18 type]);
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

  if (v14)
  {
    v25 = [v14 UUIDString];
    [v24 setObject:v25 forKeyedSubscript:kUUIDKey];
  }

  if (v16 && v17)
  {
    v26 = MEMORY[0x277CCABB0];
    [v17 timeIntervalSinceDate:v16];
    v27 = [v26 numberWithDouble:?];
    [v24 setObject:v27 forKeyedSubscript:kMessageReceivedEventKey_ReceiptDelay];
  }

  DRSCoreAnalyticsSendEvent(kMessageReceivedEventName, v24);
  v28 = +[DRSSystemProfile sharedInstance];
  if (![v28 isInternal])
  {
    goto LABEL_15;
  }

  v29 = [(DRSTaskingManager *)self cloudKitHelper];

  if (v29)
  {
    v35 = [(DRSTaskingManager *)self cloudKitHelper];
    v30 = [v24 objectForKeyedSubscript:kUUIDKey];
    v31 = [v24 objectForKeyedSubscript:kMessageReceivedEventKey_MessageType];
    v32 = [v24 objectForKeyedSubscript:kMessageReceivedEventKey_ChannelType];
    v33 = [v24 objectForKeyedSubscript:kMessageReceivedEventKey_ChannelEnvironment];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __126__DRSTaskingManager__emitTaskingSystemMessageTelemetry_messageType_dateBroadcast_dateReceived_transaction_cloudChannelConfig___block_invoke;
    v38[3] = &unk_27899F820;
    v39 = v14;
    [v35 reportTaskingSystemMessageReceipt:v30 messageType:v31 channelType:v32 channelEnvironment:v33 dateBroadcast:v16 dateReceived:v17 transaction:v37 completionHandler:v38];

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

- (void)_emitTelemetryForLoggableMesssage:(id)a3 transaction:(id)a4 cloudChannelConfig:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v14 = [v10 messageUUID];
  v11 = [v10 messageType];
  v12 = [v10 dateBroadcast];
  v13 = [v10 dateReceived];

  [(DRSTaskingManager *)self _emitTaskingSystemMessageTelemetry:v14 messageType:v11 dateBroadcast:v12 dateReceived:v13 transaction:v9 cloudChannelConfig:v8];
}

- (void)processTaskingMessage:(id)a3 cloudChannelConfig:(id)a4 transaction:(id)a5 shouldEmitCATelemetry:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v6)
  {
    [(DRSTaskingManager *)self _emitTelemetryForLoggableMesssage:v10 transaction:v12 cloudChannelConfig:v11];
  }

  v13 = [(DRSTaskingManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__DRSTaskingManager_processTaskingMessage_cloudChannelConfig_transaction_shouldEmitCATelemetry___block_invoke;
  block[3] = &unk_27899F9E0;
  v18 = v10;
  v19 = self;
  v22 = v6;
  v20 = v11;
  v21 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_sync(v13, block);
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

- (void)processCancelMessage:(id)a3 cloudChannelConfig:(id)a4 transaction:(id)a5 shouldEmitCATelemetry:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  if (v6)
  {
    [(DRSTaskingManager *)self _emitTelemetryForLoggableMesssage:v10 transaction:v11 cloudChannelConfig:a4];
  }

  v12 = [(DRSTaskingManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__DRSTaskingManager_processCancelMessage_cloudChannelConfig_transaction_shouldEmitCATelemetry___block_invoke;
  block[3] = &unk_27899F400;
  v16 = v10;
  v17 = self;
  v18 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_sync(v12, block);
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

- (void)processPingMessage:(id)a3 cloudChannelConfig:(id)a4 transaction:(id)a5 shouldEmitCATelemetry:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v6)
  {
    [(DRSTaskingManager *)self _emitTelemetryForLoggableMesssage:v10 transaction:v12 cloudChannelConfig:v11];
  }

  v13 = DPLogHandle_TaskingManager();
  if (os_signpost_enabled(v13))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReceivedPingMesssage", &unk_232980861, v14, 2u);
  }
}

- (void)_bestEffortLogMessageReceiptTelemetry:(id)a3 transaction:(id)a4 cloudChannelConfig:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEAA8] date];
  v11 = _dateFromJSONDict(v16, kDRSTaskingSystemMessage_DateBroadcastKey);
  v12 = [v16 objectForKeyedSubscript:kDRSTaskingSystemMessage_messageUUIDKey];
  if (v12)
  {
    v13 = v12;
    v14 = off_27899E9D8;
LABEL_5:
    v15 = [(__objc2_class *)*v14 messageType];
    goto LABEL_6;
  }

  v13 = [v16 objectForKeyedSubscript:kDRSTaskingSystemMessage_messageUUIDKey];
  if (v13)
  {
    v14 = off_27899E8C8;
    goto LABEL_5;
  }

  v15 = 0;
LABEL_6:
  [(DRSTaskingManager *)self _emitTaskingSystemMessageTelemetry:v13 messageType:v15 dateBroadcast:v11 dateReceived:v10 transaction:v8 cloudChannelConfig:v9];
}

- (DRSTaskingManager)initWithDecisionMaker:(id)a3 cloudKitHelper:(id)a4 configStateChangeBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
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

    v17 = 0;
    goto LABEL_12;
  }

  if (!v9)
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

    v15 = _Block_copy(v11);
    configStateChangeBlock = v12->_configStateChangeBlock;
    v12->_configStateChangeBlock = v15;

    objc_storeStrong(&v12->_decisionMaker, a3);
    objc_storeStrong(&v12->_cloudKitHelper, a4);
  }

  self = v12;
  v17 = self;
LABEL_12:

  return v17;
}

- (void)clientRejectsConfigUUID:(id)a3 teamID:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DPLogHandle_TaskingManager();
  if (os_signpost_enabled(v8))
  {
    *buf = 138543618;
    v22 = v6;
    v23 = 2114;
    v24 = v7;
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientRejectsConfig", "Client rejects config %{public}@ (teamID: %{public}@)", buf, 0x16u);
  }

  v9 = [(DRSTaskingManager *)self decisionMaker];
  v10 = [v9 configStore];
  v20 = 0;
  v11 = [v10 configMetadataForUUID:v6 errorOut:&v20];
  v12 = v20;

  if (v11)
  {
    if ([v11 state] == 3)
    {
      v13 = DPLogHandle_TaskingManagerError();
      if (os_signpost_enabled(v13))
      {
        *buf = 138543618;
        v22 = v7;
        v23 = 2114;
        v24 = v6;
        v14 = "Client (teamID %{public}@) attempting to reject completed config %{public}@";
LABEL_13:
        _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientRejectsConfigError", v14, buf, 0x16u);
      }
    }

    else
    {
      v15 = [v11 teamID];
      v16 = [v15 isEqualToString:v7];

      if (v16)
      {
        v17 = [(DRSTaskingManager *)self decisionMaker];
        [v17 clientRejectsConfigUUID:v6];

        v18 = [v11 state] == 2;
        v13 = [(DRSTaskingManager *)self configStateChangeBlock];
        (*(v13 + 16))(v13, v7, v6, 0, 3, 5, v18);
      }

      else
      {
        v13 = DPLogHandle_TaskingManagerError();
        if (os_signpost_enabled(v13))
        {
          *buf = 138543618;
          v22 = v7;
          v23 = 2114;
          v24 = v6;
          v14 = "Client (teamID %{public}@) attempting to reject config %{public}@ for wrong team";
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
    v13 = DPLogHandle_TaskingManagerError();
    if (os_signpost_enabled(v13))
    {
      *buf = 138543618;
      v22 = v7;
      v23 = 2114;
      v24 = v6;
      v14 = "Client (teamID %{public}@) attempting to reject non-existent config %{public}@";
      goto LABEL_13;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)clientCompletedConfigUUID:(id)a3 teamID:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DPLogHandle_TaskingManager();
  if (os_signpost_enabled(v8))
  {
    *buf = 138543618;
    v22 = v6;
    v23 = 2114;
    v24 = v7;
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientCompletedConfig", "Client completed config %{public}@ (teamID: %{public}@)", buf, 0x16u);
  }

  v9 = [(DRSTaskingManager *)self decisionMaker];
  v10 = [v9 configStore];
  v20 = 0;
  v11 = [v10 configMetadataForUUID:v6 errorOut:&v20];
  v12 = v20;

  if (v11)
  {
    if ([v11 state] == 3)
    {
      v13 = DPLogHandle_TaskingManagerError();
      if (os_signpost_enabled(v13))
      {
        *buf = 138543618;
        v22 = v7;
        v23 = 2114;
        v24 = v6;
        v14 = "Client (teamID %{public}@) attempting to complete already-completed config %{public}@";
LABEL_13:
        _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientCompletedConfigError", v14, buf, 0x16u);
      }
    }

    else
    {
      v15 = [v11 teamID];
      v16 = [v15 isEqualToString:v7];

      if (v16)
      {
        v17 = [(DRSTaskingManager *)self decisionMaker];
        [v17 clientCompletedConfigUUID:v6];

        v18 = [v11 state] == 2;
        v13 = [(DRSTaskingManager *)self configStateChangeBlock];
        (*(v13 + 16))(v13, v7, v6, 0, 3, 6, v18);
      }

      else
      {
        v13 = DPLogHandle_TaskingManagerError();
        if (os_signpost_enabled(v13))
        {
          *buf = 138543618;
          v22 = v7;
          v23 = 2114;
          v24 = v6;
          v14 = "Client (teamID %{public}@) attempting to complete config %{public}@ for wrong team";
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
    v13 = DPLogHandle_TaskingManagerError();
    if (os_signpost_enabled(v13))
    {
      *buf = 138543618;
      v22 = v7;
      v23 = 2114;
      v24 = v6;
      v14 = "Client (teamID %{public}@) attempting to complete non-existent config %{public}@";
      goto LABEL_13;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)metadataForConfigUUID:(id)a3 teamID:(id)a4 errorOut:(id *)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(teamID == %@) AND (configUUID == %@)", a4, a3];
  v8 = [(DRSTaskingManager *)self decisionMaker];
  v9 = [v8 configStore];
  v17 = 0;
  v10 = [v9 configMetadatasForPredicate:v7 sortDescriptors:0 fetchLimit:1 errorOut:&v17];
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

    if (a5)
    {
      v13 = v11;
      v14 = 0;
      *a5 = v11;
      goto LABEL_10;
    }
  }

  else if (v10 && [v10 count])
  {
    v14 = [v10 firstObject];
    goto LABEL_10;
  }

  v14 = 0;
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)clearTaskingHistoryWithErrorOut:(id *)a3
{
  v4 = [(DRSTaskingManager *)self decisionMaker];
  v5 = [v4 configStore];
  LOBYTE(a3) = [v5 clearStoreWithErrorOut:a3];

  return a3;
}

- (id)persistedCloudChannelConfig
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  v3 = [(DRSTaskingManager *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__DRSTaskingManager_persistedCloudChannelConfig__block_invoke;
  v6[3] = &unk_27899F4F0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

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

- (BOOL)updatePersistedChannelConfig:(id)a3 errorOut:(id *)a4
{
  v6 = a3;
  v7 = [(DRSTaskingManager *)self decisionMaker];
  v8 = [v7 configStore];
  LOBYTE(a4) = [v8 updateCloudChannelConfig:v6 errorOut:a4];

  return a4;
}

- (BOOL)unsubscribeFromSubscribedChannelWithErrorOut:(id *)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  *a3 = 0;
  v5 = [(DRSTaskingManager *)self taskingMessageChannel];

  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [(DRSTaskingManager *)self taskingMessageChannel];
  v7 = [v6 unsubscribe:a3];

  if (v7)
  {
    [(DRSTaskingManager *)self setTaskingMessageChannel:0];
LABEL_4:
    result = 1;
    goto LABEL_10;
  }

  if (!*a3)
  {
    v9 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"Unknown unsubscribe failure";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    *a3 = [v9 errorWithDomain:@"DiagnosticRequestCloudChannelError" code:0 userInfo:v10];
  }

  v11 = DPLogHandle_TaskingManagerError();
  if (os_signpost_enabled(v11))
  {
    v12 = [(DRSTaskingManager *)self taskingMessageChannel];
    v13 = [v12 config];
    v14 = *a3;
    v16 = 138543618;
    v17 = v13;
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
  v3 = [v2 isTaskingEnabled];

  return v3;
}

- (BOOL)subscribeToChannelWithConfig:(id)a3 errorOut:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  *a4 = 0;
  if (v6)
  {
    v7 = [DRSTaskingMessageChannel alloc];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__DRSTaskingManager_subscribeToChannelWithConfig_errorOut___block_invoke;
    v16[3] = &unk_27899FA58;
    v16[4] = self;
    v8 = [(DRSTaskingMessageChannel *)v7 initWithCloudChannelConfig:v6 payloadProcessingBlock:v16];
    LODWORD(v9) = [(DRSTaskingMessageChannel *)v8 subscribe:a4];
    if (v9)
    {
      [(DRSTaskingManager *)self setTaskingMessageChannel:v8];
    }

    else
    {
      v10 = DPLogHandle_TaskingManagerError();
      if (os_signpost_enabled(v10))
      {
        v11 = [v6 debugDescription];
        v12 = v11;
        v13 = *a4;
        if (!*a4)
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

- (BOOL)checkConfigsForInvalidation:(id *)a3
{
  v107 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(state == %u) || (state == %u)", 2, 1];
  v6 = [(DRSTaskingManager *)self decisionMaker];
  v7 = [v6 configStore];
  v8 = [v7 configMetadatasForPredicate:v5 sortDescriptors:0 fetchLimit:0 errorOut:a3];

  v9 = *a3;
  if (*a3)
  {
    v10 = DPLogHandle_TaskingManagerError();
    if (os_signpost_enabled(v10))
    {
      v11 = *a3;
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
    v80 = self;
    v78 = v5;
    v16 = [MEMORY[0x277CBEAA8] date];
    v17 = [MEMORY[0x277CBEB38] dictionary];
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
          v24 = [v23 teamID];
          v25 = [v17 objectForKeyedSubscript:v24];

          if (!v25)
          {
            v25 = [MEMORY[0x277CBEB18] array];
            v26 = [v23 teamID];
            [v17 setObject:v25 forKeyedSubscript:v26];
          }

          [v25 addObject:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v93 objects:v106 count:16];
      }

      while (v20);
    }

    v27 = [MEMORY[0x277CBEB18] array];
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __49__DRSTaskingManager_checkConfigsForInvalidation___block_invoke;
    v89[3] = &unk_27899FA30;
    v28 = v27;
    v90 = v28;
    v91 = v80;
    v82 = v16;
    v92 = v82;
    [v17 enumerateKeysAndObjectsUsingBlock:v89];
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
      v35 = [*(v32 + 2456) sharedInstance];
      v36 = [v35 build];
      v37 = [v34 config];
      v38 = [v37 build];
      v39 = [v36 isEqualToString:v38];

      if (v39)
      {
        v40 = [v34 config];
        v41 = [v40 endDate];
        v42 = [v82 compare:v41];

        if (v42 == -1)
        {
          v48 = DPLogHandle_TaskingManager();
          if (os_signpost_enabled(v48))
          {
            v72 = [v34 configUUID];
            v73 = [v34 teamID];
            *buf = 138543618;
            v98 = v72;
            v99 = 2114;
            v100 = v73;
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

        v44 = [(DRSTaskingManager *)v80 decisionMaker];
        v45 = [v44 configStore];
        v46 = [v34 configUUID];
        v83 = 0;
        v47 = [v45 completeConfigWithUUID:v46 completedDate:v82 completionType:v43 completionDescription:@"Expired" errorOut:&v83];
        v48 = v83;

        if (v47)
        {
          v49 = [(DRSTaskingManager *)v80 configStateChangeBlock];
          v50 = [v34 teamID];
          v51 = [v34 configUUID];
          (v49[2].isa)(v49, v50, v51, 0, 3, 4, [v34 state] == 2);
          goto LABEL_45;
        }

        v49 = DPLogHandle_TaskingManagerError();
        if (os_signpost_enabled(v49))
        {
          v50 = [v34 configUUID];
          v74 = [v34 teamID];
          v51 = v74;
          *buf = 138543874;
          v75 = @"Unknown";
          if (v48)
          {
            v75 = v48;
          }

          v98 = v50;
          v99 = 2114;
          v100 = v74;
          v101 = 2114;
          v102 = v75;
          _os_signpost_emit_with_name_impl(&dword_232906000, v49, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidationFailed", "Failed to invalidate expiring config %{public}@ (Team ID: %{public}@) due to error: %{public}@", buf, 0x20u);
LABEL_45:
        }

        v32 = 0x27899E000;
        goto LABEL_47;
      }

      v52 = MEMORY[0x277CCACA8];
      v53 = [v34 config];
      v54 = [v53 build];
      v55 = [*(v32 + 2456) sharedInstance];
      v56 = [v55 build];
      v48 = [v52 stringWithFormat:@"Build changed (%@ -> %@)", v54, v56];

      if ([v34 state] == 1)
      {
        v57 = 1;
      }

      else
      {
        v57 = 8193;
      }

      v58 = [(DRSTaskingManager *)v80 decisionMaker];
      v59 = [v58 configStore];
      v60 = [v34 configUUID];
      v84 = 0;
      v61 = [v59 completeConfigWithUUID:v60 completedDate:v82 completionType:v57 completionDescription:v48 errorOut:&v84];
      v49 = v84;

      if (v61)
      {
        v62 = [(DRSTaskingManager *)v80 configStateChangeBlock];
        v63 = [v34 teamID];
        v64 = [v34 configUUID];
        (*(v62 + 16))(v62, v63, v64, 0, 3, 3, [v34 state] == 2);
      }

      else
      {
        v62 = DPLogHandle_TaskingManagerError();
        if (os_signpost_enabled(v62))
        {
          v65 = [v34 configUUID];
          v66 = [v34 config];
          v67 = [v66 build];
          v68 = +[DRSSystemProfile sharedInstance];
          v69 = [v68 build];
          v70 = v69;
          *buf = 138544130;
          v71 = @"Unknown";
          if (v49)
          {
            v71 = v49;
          }

          v98 = v65;
          v99 = 2114;
          v100 = v67;
          v101 = 2114;
          v102 = v69;
          v103 = 2114;
          v104 = v71;
          _os_signpost_emit_with_name_impl(&dword_232906000, v62, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidationFailed", "Failed to invalidate config %{public}@ (%{public}@ -> %{public}@) due to error: %{public}@", buf, 0x2Au);

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