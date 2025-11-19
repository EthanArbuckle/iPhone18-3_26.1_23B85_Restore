@interface DRSTaskingCloudKitHelper
+ (id)prodContainerHelper;
+ (id)sandboxContainerHelper;
+ (id)taskingDeviceMetadata;
- (DRSTaskingCloudKitHelper)initWithContainer:(id)a3;
- (id)_operationWithFunctionName:(id)a3;
- (id)_taskingConfigMetadataForTeamID:(id)a3 uuidString:(id)a4;
- (void)_recordPBMessage:(id)a3 forFunction:(id)a4;
- (void)_submitOperationWithName:(id)a3 requestObject:(id)a4 completionBlock:(id)a5;
- (void)reportTaskingConfigCompletion:(id)a3 uuidString:(id)a4 completionType:(id)a5 completionDescription:(id)a6 activeDuration:(double)a7 transaction:(id)a8 completionHandler:(id)a9;
- (void)reportTaskingConfigReceipt:(id)a3 uuidString:(id)a4 receiptResult:(id)a5 transaction:(id)a6 completionHandler:(id)a7;
- (void)reportTaskingSystemMessageReceipt:(id)a3 messageType:(id)a4 channelType:(id)a5 channelEnvironment:(id)a6 dateBroadcast:(id)a7 dateReceived:(id)a8 transaction:(id)a9 completionHandler:(id)a10;
@end

@implementation DRSTaskingCloudKitHelper

- (DRSTaskingCloudKitHelper)initWithContainer:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = DRSTaskingCloudKitHelper;
  v6 = [(DRSTaskingCloudKitHelper *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__targetContainer, a3);
    v8 = dispatch_queue_create("TaskingCloudKitHelper work queue", 0);
    workQueue = v7->_workQueue;
    v7->_workQueue = v8;
  }

  return v7;
}

+ (id)sandboxContainerHelper
{
  if (sandboxContainerHelper_onceToken_0 != -1)
  {
    +[DRSTaskingCloudKitHelper sandboxContainerHelper];
  }

  v3 = sandboxContainerHelper_helper_0;

  return v3;
}

void __50__DRSTaskingCloudKitHelper_sandboxContainerHelper__block_invoke()
{
  v0 = [DRSTaskingCloudKitHelper alloc];
  v3 = DRSSandboxContainer();
  v1 = [(DRSTaskingCloudKitHelper *)v0 initWithContainer:v3];
  v2 = sandboxContainerHelper_helper_0;
  sandboxContainerHelper_helper_0 = v1;
}

+ (id)prodContainerHelper
{
  if (prodContainerHelper_onceToken_0 != -1)
  {
    +[DRSTaskingCloudKitHelper prodContainerHelper];
  }

  v3 = prodContainerHelper_helper_0;

  return v3;
}

void __47__DRSTaskingCloudKitHelper_prodContainerHelper__block_invoke()
{
  v0 = [DRSTaskingCloudKitHelper alloc];
  v3 = DRSProductionContainer();
  v1 = [(DRSTaskingCloudKitHelper *)v0 initWithContainer:v3];
  v2 = prodContainerHelper_helper_0;
  prodContainerHelper_helper_0 = v1;
}

- (id)_operationWithFunctionName:(id)a3
{
  v4 = MEMORY[0x277CBC1F8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithServiceName:kDRSCloudKitDecisionServerName functionName:v5 responseClass:objc_opt_class()];

  v8 = [(DRSTaskingCloudKitHelper *)self _targetContainer];
  DRSConfigureOperation(v7, v8, 0);

  return v7;
}

- (void)_submitOperationWithName:(id)a3 requestObject:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(DRSTaskingCloudKitHelper *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__DRSTaskingCloudKitHelper__submitOperationWithName_requestObject_completionBlock___block_invoke;
  v15[3] = &unk_27899FF60;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __83__DRSTaskingCloudKitHelper__submitOperationWithName_requestObject_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _operationWithFunctionName:*(a1 + 40)];
  [v2 setRequest:*(a1 + 48)];
  v3 = os_transaction_create();
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __83__DRSTaskingCloudKitHelper__submitOperationWithName_requestObject_completionBlock___block_invoke_2;
  v11 = &unk_27899FF38;
  v4 = *(a1 + 56);
  v12 = v3;
  v13 = v4;
  v5 = v3;
  [v2 setCodeOperationCompletionBlock:&v8];
  v6 = [*(a1 + 32) _targetContainer];
  v7 = [v6 publicCloudDatabase];
  [v7 addOperation:v2];
}

+ (id)taskingDeviceMetadata
{
  if (taskingDeviceMetadata_onceToken[0] != -1)
  {
    +[DRSTaskingCloudKitHelper taskingDeviceMetadata];
  }

  v3 = taskingDeviceMetadata_taskingDeviceMetadata;

  return v3;
}

void __49__DRSTaskingCloudKitHelper_taskingDeviceMetadata__block_invoke()
{
  v0 = objc_alloc_init(DRSProtoTaskingDeviceMetadata);
  v1 = taskingDeviceMetadata_taskingDeviceMetadata;
  taskingDeviceMetadata_taskingDeviceMetadata = v0;

  v2 = DRSDeviceMetadata();
  [taskingDeviceMetadata_taskingDeviceMetadata setDeviceMetadata:v2];

  v4 = +[DRSSystemProfile sharedInstance];
  v3 = [v4 build];
  [taskingDeviceMetadata_taskingDeviceMetadata setBuild:v3];
}

- (void)_recordPBMessage:(id)a3 forFunction:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MEMORY[0x277CCAAA0];
  v7 = [a3 dictionaryRepresentation];
  v13 = 0;
  v8 = [v6 dataWithJSONObject:v7 options:1 error:&v13];
  v9 = v13;

  if (v9)
  {
    v10 = DPLogHandle_TaskingDSTelemetry();
    if (os_signpost_enabled(v10))
    {
      *buf = 138543362;
      v15 = v9;
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ProtoBuffMessageJSONFailed", "%{public}@", buf, 0xCu);
    }
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
    v11 = DPLogHandle_TaskingDSTelemetry();
    if (os_signpost_enabled(v11))
    {
      *buf = 138543618;
      v15 = v5;
      v16 = 2114;
      v17 = v10;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ProtoBuffMessage", "%{public}@:\n%{public}@", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)reportTaskingSystemMessageReceipt:(id)a3 messageType:(id)a4 channelType:(id)a5 channelEnvironment:(id)a6 dateBroadcast:(id)a7 dateReceived:(id)a8 transaction:(id)a9 completionHandler:(id)a10
{
  v54 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v39 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v35 = a9;
  v36 = a10;
  v38 = v19;
  if (v20)
  {
    v21 = MEMORY[0x277CCABB0];
    [v20 timeIntervalSinceDate:v19];
    v22 = [v21 numberWithDouble:?];
  }

  else
  {
    v22 = &unk_2847FF840;
  }

  v37 = v20;
  if (v16)
  {
    v23 = v16;
  }

  else
  {
    v23 = @"Unknown";
  }

  if (v17)
  {
    v24 = v17;
  }

  else
  {
    v24 = @"Unknown";
  }

  v25 = DPLogHandle_TaskingDSTelemetry();
  v26 = os_signpost_id_generate(v25);

  v27 = DPLogHandle_TaskingDSTelemetry();
  v28 = v27;
  if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 138544386;
    v45 = v23;
    v46 = 2114;
    v47 = v24;
    v48 = 2114;
    v49 = v39;
    v50 = 2114;
    v51 = v18;
    v52 = 2114;
    v53 = v22;
    _os_signpost_emit_with_name_impl(&dword_232906000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v26, "TaskingSystemMessageReceipt", "\tUUID: %{public}@\n\tmessageType: %{public}@\n\tchannelType: %{public}@\n\tchannelEnvironment: %{public}@\n\tlatency: %{public}@", buf, 0x34u);
  }

  v29 = objc_alloc_init(DRSProtoTaskingSystemMessageReceipt);
  [objc_opt_class() taskingDeviceMetadata];
  v31 = v30 = v18;
  [(DRSProtoTaskingSystemMessageReceipt *)v29 setTaskingDeviceMetadata:v31];

  [(DRSProtoTaskingSystemMessageReceipt *)v29 setUuid:v23];
  [(DRSProtoTaskingSystemMessageReceipt *)v29 setMessageType:v24];
  [(DRSProtoTaskingSystemMessageReceipt *)v29 setChannelType:v39];
  [(DRSProtoTaskingSystemMessageReceipt *)v29 setChannelEnvironment:v30];
  [v22 floatValue];
  [(DRSProtoTaskingSystemMessageReceipt *)v29 setReceiptDelay:?];
  [(DRSTaskingCloudKitHelper *)self _recordPBMessage:v29 forFunction:@"reportTaskingSystemMessageReceipt"];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __162__DRSTaskingCloudKitHelper_reportTaskingSystemMessageReceipt_messageType_channelType_channelEnvironment_dateBroadcast_dateReceived_transaction_completionHandler___block_invoke;
  v40[3] = &unk_27899FF88;
  v42 = v36;
  v43 = v26;
  v41 = v35;
  v32 = v35;
  v33 = v36;
  [(DRSTaskingCloudKitHelper *)self _submitOperationWithName:@"reportTaskingSystemMessageReceipt" requestObject:v29 completionBlock:v40];

  v34 = *MEMORY[0x277D85DE8];
}

void __162__DRSTaskingCloudKitHelper_reportTaskingSystemMessageReceipt_messageType_channelType_channelEnvironment_dateBroadcast_dateReceived_transaction_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DPLogHandle_TaskingDSTelemetry();
  v6 = v5;
  v7 = *(a1 + 48);
  if (v4)
  {
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v13 = 138543362;
      v14 = v4;
      v8 = "Failed with error: %{public}@";
      v9 = v6;
      v10 = v7;
      v11 = 12;
LABEL_8:
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_INTERVAL_END, v10, "TaskingSystemMessageReceipt", v8, &v13, v11);
    }
  }

  else if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v13) = 0;
    v8 = "Succeeded";
    v9 = v6;
    v10 = v7;
    v11 = 2;
    goto LABEL_8;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v4);
  v12 = *MEMORY[0x277D85DE8];
}

- (id)_taskingConfigMetadataForTeamID:(id)a3 uuidString:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(DRSProtoTaskingConfigMetadata);
  v8 = [objc_opt_class() taskingDeviceMetadata];
  [(DRSProtoTaskingConfigMetadata *)v7 setTaskingDeviceMetadata:v8];

  [(DRSProtoTaskingConfigMetadata *)v7 setTeamId:v6];
  [(DRSProtoTaskingConfigMetadata *)v7 setUuid:v5];

  return v7;
}

- (void)reportTaskingConfigReceipt:(id)a3 uuidString:(id)a4 receiptResult:(id)a5 transaction:(id)a6 completionHandler:(id)a7
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = DPLogHandle_TaskingDSTelemetry();
  v18 = os_signpost_id_generate(v17);

  v19 = DPLogHandle_TaskingDSTelemetry();
  v20 = v19;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 138543874;
    v31 = v13;
    v32 = 2114;
    v33 = v12;
    v34 = 2114;
    v35 = v14;
    _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "TaskingConfigReceipt", "\tUUID: %{public}@\n\tteamID: %{public}@\n\treceiptResult: %{public}@\n", buf, 0x20u);
  }

  v21 = objc_alloc_init(DRSProtoTaskingConfigReceipt);
  v22 = [(DRSTaskingCloudKitHelper *)self _taskingConfigMetadataForTeamID:v12 uuidString:v13];
  [(DRSProtoTaskingConfigReceipt *)v21 setTaskingConfigMetadata:v22];

  [(DRSProtoTaskingConfigReceipt *)v21 setReceiptResult:v14];
  [(DRSTaskingCloudKitHelper *)self _recordPBMessage:v21 forFunction:@"reportTaskingConfigReceipt"];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __110__DRSTaskingCloudKitHelper_reportTaskingConfigReceipt_uuidString_receiptResult_transaction_completionHandler___block_invoke;
  v26[3] = &unk_27899FF88;
  v28 = v16;
  v29 = v18;
  v27 = v15;
  v23 = v15;
  v24 = v16;
  [(DRSTaskingCloudKitHelper *)self _submitOperationWithName:@"reportTaskingConfigReceipt" requestObject:v21 completionBlock:v26];

  v25 = *MEMORY[0x277D85DE8];
}

void __110__DRSTaskingCloudKitHelper_reportTaskingConfigReceipt_uuidString_receiptResult_transaction_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DPLogHandle_TaskingDSTelemetry();
  v6 = v5;
  v7 = *(a1 + 48);
  if (v4)
  {
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v13 = 138543362;
      v14 = v4;
      v8 = "Failed with error: %{public}@";
      v9 = v6;
      v10 = v7;
      v11 = 12;
LABEL_8:
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_INTERVAL_END, v10, "TaskingConfigReceipt", v8, &v13, v11);
    }
  }

  else if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v13) = 0;
    v8 = "Succeeded";
    v9 = v6;
    v10 = v7;
    v11 = 2;
    goto LABEL_8;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v4);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)reportTaskingConfigCompletion:(id)a3 uuidString:(id)a4 completionType:(id)a5 completionDescription:(id)a6 activeDuration:(double)a7 transaction:(id)a8 completionHandler:(id)a9
{
  v46 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  v22 = DPLogHandle_TaskingDSTelemetry();
  v23 = os_signpost_id_generate(v22);

  v24 = DPLogHandle_TaskingDSTelemetry();
  v25 = v24;
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 138544386;
    v37 = v17;
    v38 = 2114;
    v39 = v16;
    v40 = 2114;
    v41 = v18;
    v42 = 2114;
    v43 = v19;
    v44 = 2050;
    v45 = a7;
    _os_signpost_emit_with_name_impl(&dword_232906000, v25, OS_SIGNPOST_EVENT, v23, "TaskingConfigCompletion", "\tUUID: %{public}@\n\tteamID: %{public}@\n\tcompletionType: %{public}@\n\tcompletionDescription: %{public}@\n\tactiveDuration: %{public}f\n", buf, 0x34u);
  }

  v26 = objc_alloc_init(DRSProtoTaskingConfigCompletion);
  v27 = [(DRSTaskingCloudKitHelper *)self _taskingConfigMetadataForTeamID:v16 uuidString:v17];
  [(DRSProtoTaskingConfigCompletion *)v26 setTaskingConfigMetadata:v27];

  [(DRSProtoTaskingConfigCompletion *)v26 setCompletionType:v18];
  [(DRSProtoTaskingConfigCompletion *)v26 setCompletionDescription:v19];
  *&v28 = a7;
  [(DRSProtoTaskingConfigCompletion *)v26 setActiveDuration:v28];
  [(DRSTaskingCloudKitHelper *)self _recordPBMessage:v26 forFunction:@"reportTaskingConfigCompletion"];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __151__DRSTaskingCloudKitHelper_reportTaskingConfigCompletion_uuidString_completionType_completionDescription_activeDuration_transaction_completionHandler___block_invoke;
  v32[3] = &unk_27899FF88;
  v34 = v21;
  v35 = v23;
  v33 = v20;
  v29 = v20;
  v30 = v21;
  [(DRSTaskingCloudKitHelper *)self _submitOperationWithName:@"reportTaskingConfigCompletion" requestObject:v26 completionBlock:v32];

  v31 = *MEMORY[0x277D85DE8];
}

void __151__DRSTaskingCloudKitHelper_reportTaskingConfigCompletion_uuidString_completionType_completionDescription_activeDuration_transaction_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DPLogHandle_TaskingDSTelemetry();
  v6 = v5;
  v7 = *(a1 + 48);
  if (v4)
  {
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v13 = 138543362;
      v14 = v4;
      v8 = "Failed with error: %{public}@";
      v9 = v6;
      v10 = v7;
      v11 = 12;
LABEL_8:
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_INTERVAL_END, v10, "TaskingConfigCompletion", v8, &v13, v11);
    }
  }

  else if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v13) = 0;
    v8 = "Succeeded";
    v9 = v6;
    v10 = v7;
    v11 = 2;
    goto LABEL_8;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v4);
  v12 = *MEMORY[0x277D85DE8];
}

@end