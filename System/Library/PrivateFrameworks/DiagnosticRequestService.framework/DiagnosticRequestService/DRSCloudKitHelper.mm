@interface DRSCloudKitHelper
+ (id)helperForCKConfig:(id)config;
+ (id)prodContainerHelper;
+ (id)sandboxContainerHelper;
- (BOOL)_handleRAPIDRequests:(id)requests xpcActivity:(id)activity errorsOut:(id)out;
- (DRSCloudKitHelper)initWithContainerEnvironment:(int64_t)environment rapidEnvironment:(int64_t)rapidEnvironment;
- (id)_requestsPassingUploadSizeCap:(id)cap remainingQuota:(unint64_t)quota;
- (void)_sendDecisionServerRequests:(id)requests xpcActivity:(id)activity replyHandler:(id)handler;
- (void)_uploadRecords:(id)records containerName:(id)name xpcActivity:(id)activity completionHandler:(id)handler;
- (void)reportTerminalRequestStats:(id)stats xpcActivity:(id)activity replyHandler:(id)handler;
- (void)shouldEnableDataGathering:(id)gathering xpcActivity:(id)activity replyHandler:(id)handler;
- (void)shouldUploadRequests:(id)requests xpcActivity:(id)activity replyHandler:(id)handler;
- (void)uploadRequests:(id)requests contactDecisionServer:(BOOL)server xpcActivity:(id)activity remainingUploadQuota:(unint64_t)quota backingPersistentContainer:(id)container completionHandler:(id)handler;
@end

@implementation DRSCloudKitHelper

+ (id)helperForCKConfig:(id)config
{
  configCopy = config;
  v4 = [DRSCloudKitHelper alloc];
  ckContainerEnvironment = [configCopy ckContainerEnvironment];
  ckRapidEnvironment = [configCopy ckRapidEnvironment];

  v7 = [(DRSCloudKitHelper *)v4 initWithContainerEnvironment:ckContainerEnvironment rapidEnvironment:ckRapidEnvironment];

  return v7;
}

- (DRSCloudKitHelper)initWithContainerEnvironment:(int64_t)environment rapidEnvironment:(int64_t)rapidEnvironment
{
  v13.receiver = self;
  v13.super_class = DRSCloudKitHelper;
  v6 = [(DRSCloudKitHelper *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_environment = environment;
    v6->_rapidEnvironment = rapidEnvironment;
    if ([(DRSCloudKitHelper *)v6 environment]== 1)
    {
      DRSProductionContainer();
    }

    else
    {
      DRSSandboxContainer();
    }
    v8 = ;
    targetContainer = v7->__targetContainer;
    v7->__targetContainer = v8;

    if ([(DRSCloudKitHelper *)v7 rapidEnvironment]== 1)
    {
      +[DRSRapidCloudKitHelper prodHelper];
    }

    else
    {
      +[DRSRapidCloudKitHelper devHelper];
    }
    v10 = ;
    rapidHelper = v7->_rapidHelper;
    v7->_rapidHelper = v10;
  }

  return v7;
}

+ (id)sandboxContainerHelper
{
  if (sandboxContainerHelper_onceToken != -1)
  {
    +[DRSCloudKitHelper sandboxContainerHelper];
  }

  v3 = sandboxContainerHelper_helper;

  return v3;
}

void __43__DRSCloudKitHelper_sandboxContainerHelper__block_invoke()
{
  v0 = [[DRSCloudKitHelper alloc] initWithEnvironment:2];
  v1 = sandboxContainerHelper_helper;
  sandboxContainerHelper_helper = v0;
}

+ (id)prodContainerHelper
{
  if (prodContainerHelper_onceToken != -1)
  {
    +[DRSCloudKitHelper prodContainerHelper];
  }

  v3 = prodContainerHelper_helper;

  return v3;
}

void __40__DRSCloudKitHelper_prodContainerHelper__block_invoke()
{
  v0 = [[DRSCloudKitHelper alloc] initWithEnvironment:1];
  v1 = prodContainerHelper_helper;
  prodContainerHelper_helper = v0;
}

- (void)_uploadRecords:(id)records containerName:(id)name xpcActivity:(id)activity completionHandler:(id)handler
{
  v37 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  v12 = MEMORY[0x277CBC4A0];
  activityCopy = activity;
  recordsCopy = records;
  v15 = [[v12 alloc] initWithRecordsToSave:recordsCopy recordIDsToDelete:0];

  if ([nameCopy isEqualToString:kDRSCloudKitContainerName])
  {
    _targetContainer = [(DRSCloudKitHelper *)self _targetContainer];
  }

  else
  {
    v17 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:nameCopy environment:{-[DRSCloudKitHelper environment](self, "environment")}];
    _targetContainer = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v17];
  }

  [(DRSCloudKitHelper *)self _configureOperation:v15 container:_targetContainer xpcActivity:activityCopy];

  operationID = [v15 operationID];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __80__DRSCloudKitHelper__uploadRecords_containerName_xpcActivity_completionHandler___block_invoke;
  v30 = &unk_27899F038;
  v19 = operationID;
  v31 = v19;
  v32 = handlerCopy;
  v20 = handlerCopy;
  v21 = _Block_copy(&v27);
  [v15 setModifyRecordsCompletionBlock:{v21, v27, v28, v29, v30}];
  v22 = DPLogHandle_CKRecordUpload();
  v23 = [v19 hash];
  if ((v23 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v24 = v23;
    if (os_signpost_enabled(v22))
    {
      *buf = 138543618;
      v34 = v19;
      v35 = 2114;
      v36 = nameCopy;
      _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v24, "CKRecordUpload", "Upload operation ID: %{public}@, target container: %{public}@", buf, 0x16u);
    }
  }

  publicCloudDatabase = [_targetContainer publicCloudDatabase];
  [publicCloudDatabase addOperation:v15];

  v26 = *MEMORY[0x277D85DE8];
}

void __80__DRSCloudKitHelper__uploadRecords_containerName_xpcActivity_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a2;
  v8 = DPLogHandle_CKRecordUpload();
  v9 = [*(a1 + 32) hash];
  v10 = v9;
  if (v6)
  {
    if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v11 = [v6 localizedDescription];
      v14 = 138412290;
      v15 = v11;
      _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_INTERVAL_END, v10, "CKRecordUpload", "Failed due to error: %@", &v14, 0xCu);
    }
  }

  else if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(v14) = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_INTERVAL_END, v10, "CKRecordUpload", "Completed successfully", &v14, 2u);
  }

  v12 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_handleRAPIDRequests:(id)requests xpcActivity:(id)activity errorsOut:(id)out
{
  v34 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  activityCopy = activity;
  outCopy = out;
  v10 = DPLogHandle_CKCFUpload();
  if (os_signpost_enabled(v10))
  {
    *buf = 134349056;
    v33 = [requestsCopy count];
    _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsUploadSession", "Beginning upload session of %{public}llu requests", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = requestsCopy;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    obj = v11;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        if (activityCopy && xpc_activity_should_defer(activityCopy))
        {
          v20 = DPLogHandle_CKCFUpload();
          if (os_signpost_enabled(v20))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsUploadSession", "Ending upload session due to deferral request", buf, 2u);
          }

          v19 = 0;
          v11 = obj;
          v18 = obj;
          goto LABEL_18;
        }

        rapidHelper = [(DRSCloudKitHelper *)self rapidHelper];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __64__DRSCloudKitHelper__handleRAPIDRequests_xpcActivity_errorsOut___block_invoke;
        v25[3] = &unk_27899F060;
        v26 = outCopy;
        [rapidHelper submitRapidPayload:v16 replyHandler:v25];
      }

      v11 = obj;
      v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v18 = DPLogHandle_CKCFUpload();
  if (os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsUploadSession", "Successful!", buf, 2u);
  }

  v19 = 1;
LABEL_18:

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t __64__DRSCloudKitHelper__handleRAPIDRequests_xpcActivity_errorsOut___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    return [*(result + 32) addObject:a4];
  }

  return result;
}

- (id)_requestsPassingUploadSizeCap:(id)cap remainingQuota:(unint64_t)quota
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = [cap mutableCopy];
  [v5 sortUsingComparator:&__block_literal_global_232];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v23;
    *&v9 = 138543874;
    v21 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        totalLogSizeBytes = [v13 totalLogSizeBytes];
        if (totalLogSizeBytes)
        {
          v15 = totalLogSizeBytes;
          v16 = quota - totalLogSizeBytes;
          if (quota >= totalLogSizeBytes)
          {
            [v6 addObject:v13];
            quota = v16;
          }

          else
          {
            v17 = DPLogHandle_CKRecordUpload();
            if (os_signpost_enabled(v17))
            {
              requestID = [v13 requestID];
              *buf = v21;
              v27 = requestID;
              v28 = 2048;
              v29 = v15;
              v30 = 2048;
              quotaCopy = quota;
              _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UploadSkippedDueToSizeLimits", "Skipping upload of request %{public}@ due to upload size limits: %zu (size B) > %llu (remaining quota B)", buf, 0x20u);
            }
          }
        }

        else
        {
          [v13 makeTerminalDueToMissingLog];
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v10);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __66__DRSCloudKitHelper__requestsPassingUploadSizeCap_remainingQuota___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 requestDate];
  v6 = [v4 requestDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)uploadRequests:(id)requests contactDecisionServer:(BOOL)server xpcActivity:(id)activity remainingUploadQuota:(unint64_t)quota backingPersistentContainer:(id)container completionHandler:(id)handler
{
  serverCopy = server;
  v78 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  activityCopy = activity;
  containerCopy = container;
  handlerCopy = handler;
  v13 = +[DRSSystemProfile sharedInstance];
  isLogUploadEnabled = [v13 isLogUploadEnabled];

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v16 = requestsCopy;
  v17 = [v16 countByEnumeratingWithState:&v70 objects:v77 count:16];
  if (v17)
  {
    v18 = *v71;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v71 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v70 + 1) + 8 * i);
        if ([v20 requestState] == 1)
        {
          if ([v20 hasUploadableContent])
          {
            if (isLogUploadEnabled)
            {
              [v15 addObject:v20];
            }

            else
            {
              [v20 updateToState:4103 errorDescription:0 errorOut:0];
            }
          }

          else
          {
            [v20 makeTerminalDueToMissingLog];
          }
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v70 objects:v77 count:16];
    }

    while (v17);
  }

  v21 = [(DRSCloudKitHelper *)self _requestsPassingUploadSizeCap:v15 remainingQuota:quota];
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v23 = v21;
  v24 = [v23 countByEnumeratingWithState:&v66 objects:v76 count:16];
  if (v24)
  {
    v25 = *v67;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v67 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v66 + 1) + 8 * j);
        if ([v27 uploadStarted])
        {
          [v22 addObject:v27];
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v66 objects:v76 count:16];
    }

    while (v24);
  }

  if (containerCopy)
  {
    newBackgroundContext = [containerCopy newBackgroundContext];
    v60 = 0;
    v61 = &v60;
    v62 = 0x3032000000;
    v63 = __Block_byref_object_copy__0;
    v64 = __Block_byref_object_dispose__0;
    v65 = 0;
    v58[0] = 0;
    v58[1] = v58;
    v58[2] = 0x2020000000;
    v59 = 0;
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __136__DRSCloudKitHelper_uploadRequests_contactDecisionServer_xpcActivity_remainingUploadQuota_backingPersistentContainer_completionHandler___block_invoke;
    v53[3] = &unk_27899ED80;
    v29 = v23;
    v54 = v29;
    v30 = newBackgroundContext;
    v55 = v30;
    v56 = v58;
    v57 = &v60;
    [v30 performBlockAndWait:v53];
    if (v61[5])
    {
      v31 = DPLogHandle_CKRecordUpload();
      if (os_signpost_enabled(v31))
      {
        localizedDescription = [v61[5] localizedDescription];
        v33 = localizedDescription;
        v34 = @"Unknown";
        if (localizedDescription)
        {
          v34 = localizedDescription;
        }

        *buf = 138543362;
        v75 = v34;
        _os_signpost_emit_with_name_impl(&dword_232906000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PreDPDSAndUploadSaveFailed", "Failed to save records prior to DPDS submission due to error: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v31 = DPLogHandle_CKRecordUpload();
      if (os_signpost_enabled(v31))
      {
        v35 = [v29 count];
        *buf = 134349056;
        v75 = v35;
        _os_signpost_emit_with_name_impl(&dword_232906000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PreDPDSAndUploadSaveSuccess", "Successfully saved updated state for %{public}llu requests that will be passed along to the DPDPS", buf, 0xCu);
      }
    }

    _Block_object_dispose(v58, 8);
    _Block_object_dispose(&v60, 8);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __136__DRSCloudKitHelper_uploadRequests_contactDecisionServer_xpcActivity_remainingUploadQuota_backingPersistentContainer_completionHandler___block_invoke_233;
  aBlock[3] = &unk_27899F0F8;
  v36 = handlerCopy;
  v52 = v36;
  aBlock[4] = self;
  v37 = activityCopy;
  v51 = v37;
  v38 = _Block_copy(aBlock);
  v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (serverCopy)
  {
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __136__DRSCloudKitHelper_uploadRequests_contactDecisionServer_xpcActivity_remainingUploadQuota_backingPersistentContainer_completionHandler___block_invoke_243;
    v46[3] = &unk_27899F120;
    v47 = v22;
    v48 = v39;
    v49 = v38;
    [(DRSCloudKitHelper *)self shouldUploadRequests:v47 xpcActivity:v37 replyHandler:v46];
  }

  else
  {
    (*(v38 + 2))(v38, v22, 0);
  }

  v40 = *MEMORY[0x277D85DE8];
}

void __136__DRSCloudKitHelper_uploadRequests_contactDecisionServer_xpcActivity_remainingUploadQuota_backingPersistentContainer_completionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v12 + 1) + 8 * v6++) updateContextWithRequest_ON_MOC_QUEUE:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v7 = *(a1 + 40);
  v8 = *(*(a1 + 56) + 8);
  obj = *(v8 + 40);
  v9 = [v7 save:&obj];
  objc_storeStrong((v8 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v9;
  v10 = *MEMORY[0x277D85DE8];
}

void __136__DRSCloudKitHelper_uploadRequests_contactDecisionServer_xpcActivity_remainingUploadQuota_backingPersistentContainer_completionHandler___block_invoke_233(uint64_t a1, void *a2, uint64_t a3)
{
  v77 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!a3)
  {
    v56 = a1;
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v57 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v53 = [MEMORY[0x277CBEB18] array];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v51 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v67 objects:v76 count:16];
    v52 = v6;
    if (v8)
    {
      v9 = v8;
      v10 = *v68;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v68 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v67 + 1) + 8 * i);
          v13 = [v12 targetContainerName];

          if (v13)
          {
            v14 = [v12 recordRepresentation];
            if (v14)
            {
              v15 = [v12 targetContainerName];
              v16 = [v6 objectForKeyedSubscript:v15];

              if (!v16)
              {
                v16 = [MEMORY[0x277CBEB18] array];
                v17 = [v12 targetContainerName];
                [v6 setObject:v16 forKeyedSubscript:v17];
              }

              [v16 addObject:v14];
              v18 = [v14 recordID];
              [v57 setObject:v12 forKeyedSubscript:v18];

              v19 = DPLogHandle_CKRecord();
              if (os_signpost_enabled(v19))
              {
                v20 = [v14 recordID];
                v21 = [v20 recordName];
                v22 = [v12 debugDescription];
                *buf = 138543618;
                v73 = v21;
                v74 = 2112;
                v75 = v22;
                _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKRecordGenerated", "Generated CK record with name %{public}@ for request %@", buf, 0x16u);

                v6 = v52;
              }
            }

            else
            {
              v23 = DPLogHandle_CKRecordError();
              if (os_signpost_enabled(v23))
              {
                v24 = [v12 debugDescription];
                *buf = 138543362;
                v73 = v24;
                _os_signpost_emit_with_name_impl(&dword_232906000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CouldNotCreateCKRecord", "Failed to generate CKRecord for request %{public}@", buf, 0xCu);
              }

              [v12 updateToState:4355 errorDescription:@"Could not create CKRecord for request" errorOut:0];
            }
          }

          else
          {
            [v53 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v9);
    }

    v25 = [MEMORY[0x277CBEB18] array];
    v26 = v53;
    if ([v53 count])
    {
      v27 = v56;
      v28 = [*(v56 + 32) _handleRAPIDRequests:v53 xpcActivity:*(v56 + 40) errorsOut:v25];
      if ([v25 count])
      {
        if ((v28 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      else
      {

        v25 = 0;
        if ((v28 & 1) == 0)
        {
LABEL_48:
          (*(*(v56 + 48) + 16))();
          v48 = DPLogHandle_CKRecordUpload();
          v5 = v51;
          if (os_signpost_enabled(v48))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_232906000, v48, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKCFUploadDeferred", &unk_232980861, buf, 2u);
          }

LABEL_52:
          goto LABEL_53;
        }
      }
    }

    else
    {
      v27 = v56;
    }

    if (![v25 count])
    {

      v25 = 0;
    }

    v5 = v51;
    if ([v6 count])
    {
      v50 = v25;
      v55 = [MEMORY[0x277CBEB18] array];
      v54 = dispatch_semaphore_create(0);
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v29 = v6;
      v30 = [v29 countByEnumeratingWithState:&v63 objects:v71 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v64;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v64 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v63 + 1) + 8 * j);
            v35 = [v29 objectForKeyedSubscript:v34];
            v36 = DPLogHandle_CKRecordUpload();
            v37 = [v34 hash];
            if ((v37 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v38 = v37;
              if (os_signpost_enabled(v36))
              {
                v39 = [v35 count];
                *buf = 134218242;
                v73 = v39;
                v74 = 2114;
                v75 = v34;
                _os_signpost_emit_with_name_impl(&dword_232906000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v38, "PerContainerUploadSession", "Starting upload session for %lu requests for container %{public}@", buf, 0x16u);
              }
            }

            v40 = *(v56 + 32);
            v41 = *(v56 + 40);
            v58[0] = MEMORY[0x277D85DD0];
            v58[1] = 3221225472;
            v58[2] = __136__DRSCloudKitHelper_uploadRequests_contactDecisionServer_xpcActivity_remainingUploadQuota_backingPersistentContainer_completionHandler___block_invoke_238;
            v58[3] = &unk_27899F0D0;
            v59 = v57;
            v42 = v54;
            v60 = v42;
            v43 = v35;
            v61 = v43;
            v62 = v55;
            [v40 _uploadRecords:v43 containerName:v34 xpcActivity:v41 completionHandler:v58];
            dispatch_semaphore_wait(v42, 0xFFFFFFFFFFFFFFFFLL);
            v44 = DPLogHandle_CKRecordUpload();
            v45 = [v34 hash];
            if ((v45 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v46 = v45;
              if (os_signpost_enabled(v44))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_232906000, v44, OS_SIGNPOST_INTERVAL_END, v46, "PerContainerUploadSession", &unk_232980861, buf, 2u);
              }
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v63 objects:v71 count:16];
        }

        while (v31);
      }

      if ([v55 count])
      {
        v47 = v55;
      }

      else
      {
        v47 = 0;
      }

      v25 = v50;
      (*(*(v56 + 48) + 16))(*(v56 + 48), 0, v50, v47);

      v5 = v51;
      v6 = v52;
      v26 = v53;
    }

    else
    {
      (*(*(v27 + 48) + 16))();
    }

    goto LABEL_52;
  }

  (*(*(a1 + 48) + 16))();
LABEL_53:

  v49 = *MEMORY[0x277D85DE8];
}

void __136__DRSCloudKitHelper_uploadRequests_contactDecisionServer_xpcActivity_remainingUploadQuota_backingPersistentContainer_completionHandler___block_invoke_238(uint64_t a1, void *a2, void *a3, void *a4)
{
  v61 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v40 = a3;
  v8 = a4;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v55;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v55 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v54 + 1) + 8 * i);
        v14 = *(a1 + 32);
        v15 = [v13 recordID];
        v16 = [v14 objectForKeyedSubscript:v15];
        v17 = [v13 recordID];
        v18 = [v17 recordName];
        [v16 uploadCompleteWithError:0 ckOperationID:v8 ckRecordID:v18];
      }

      v10 = [v7 countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v10);
  }

  v19 = v40;
  if (!v40)
  {
    goto LABEL_20;
  }

  if ([v40 code] != 2)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v22 = *(a1 + 48);
    v23 = [v22 countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v51;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v51 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(a1 + 32);
          v28 = [*(*(&v50 + 1) + 8 * j) recordID];
          v29 = [v27 objectForKeyedSubscript:v28];
          [v29 uploadCompleteWithError:v19 ckOperationID:v8 ckRecordID:0];
        }

        v24 = [v22 countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v24);
    }

    [*(a1 + 56) addObject:v19];
LABEL_20:
    dispatch_semaphore_signal(*(a1 + 40));
    goto LABEL_32;
  }

  v20 = [v40 userInfo];
  v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

  if (v21)
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __136__DRSCloudKitHelper_uploadRequests_contactDecisionServer_xpcActivity_remainingUploadQuota_backingPersistentContainer_completionHandler___block_invoke_239;
    v41[3] = &unk_27899F0A8;
    v42 = *(a1 + 32);
    v43 = v8;
    v44 = *(a1 + 56);
    [v21 enumerateKeysAndObjectsUsingBlock:v41];
    dispatch_semaphore_signal(*(a1 + 40));
  }

  else
  {
    v30 = DPLogHandle_CKRecordError();
    if (os_signpost_enabled(v30))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MissingPartialErrorInfo", "Upload encountered partial error, but no partial error dict was provided", buf, 2u);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v31 = *(a1 + 48);
    v32 = [v31 countByEnumeratingWithState:&v45 objects:v58 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v46;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v46 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(a1 + 32);
          v37 = [*(*(&v45 + 1) + 8 * k) recordID];
          v38 = [v36 objectForKeyedSubscript:v37];
          [v38 uploadCompleteWithError:v40 ckOperationID:v8 ckRecordID:0];
        }

        v33 = [v31 countByEnumeratingWithState:&v45 objects:v58 count:16];
      }

      while (v33);
    }

    v19 = v40;
    [*(a1 + 56) addObject:v40];
    dispatch_semaphore_signal(*(a1 + 40));
  }

LABEL_32:
  v39 = *MEMORY[0x277D85DE8];
}

void __136__DRSCloudKitHelper_uploadRequests_contactDecisionServer_xpcActivity_remainingUploadQuota_backingPersistentContainer_completionHandler___block_invoke_239(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v7 = v6;
  if (v6)
  {
    [v6 uploadCompleteWithError:v5 ckOperationID:*(a1 + 40) ckRecordID:0];
    [*(a1 + 48) addObject:v5];
  }

  else
  {
    v8 = DPLogHandle_CKRecordError();
    if (os_signpost_enabled(v8))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MissingRequestForError", "Could not find request that was reported to have errored", v9, 2u);
    }
  }
}

void __136__DRSCloudKitHelper_uploadRequests_contactDecisionServer_xpcActivity_remainingUploadQuota_backingPersistentContainer_completionHandler___block_invoke_243(uint64_t a1, void *a2, void *a3, void *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v41 = a2;
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = DPLogHandle_CKCodeServerError();
    if (os_signpost_enabled(v8))
    {
      v9 = [v7 localizedDescription];
      v10 = v9;
      v11 = @"Unknown";
      if (v9)
      {
        v11 = v9;
      }

      *buf = 138543362;
      v48 = v11;
      _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKCodeServerDecisionServerError", "Encountered decision server error: %{public}@", buf, 0xCu);
    }
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = *(a1 + 32);
  v13 = [v12 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v43;
    do
    {
      v16 = 0;
      do
      {
        if (*v43 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v42 + 1) + 8 * v16);
        if ([v17 decisionServerDecision] == 2)
        {
          if (!v7)
          {
            [*(a1 + 40) addObject:v17];
            goto LABEL_27;
          }

          v18 = MEMORY[0x277CCACA8];
          v19 = [v7 localizedDescription];
          v20 = v19;
          v21 = @"Unknown error";
          if (v19)
          {
            v21 = v19;
          }

          v22 = [v18 stringWithFormat:@"Upload cancelled due to DPDS error: %@", v21];

          v23 = v17;
          v24 = v22;
        }

        else
        {
          v25 = [v17 requestID];
          v22 = [v41 objectForKeyedSubscript:v25];

          if (v22)
          {
            v26 = [(__CFString *)v22 acceptedNum];

            if (v26)
            {
              v27 = [(__CFString *)v22 acceptedNum];
              v28 = [v27 BOOLValue];

              if (v28)
              {
                [v17 setDecisionServerDecision:2];
                [*(a1 + 40) addObject:v17];
              }

              else
              {
                v34 = [(__CFString *)v22 rejectionReason];
                v35 = v34;
                if (v34)
                {
                  v36 = v34;
                }

                else
                {
                  v36 = @"Unknown";
                }

                [v17 uploadDeniedByDecisionServerWithReason:v36];

                [v17 setDecisionServerDecision:1];
              }
            }

            else
            {
              v31 = [(__CFString *)v22 errorString];
              v32 = v31;
              if (v31)
              {
                v33 = v31;
              }

              else
              {
                v33 = @"Unknown decision server error";
              }

              [v17 uploadFailedDueToReason:v33 ckOperationID:v6];
            }

            goto LABEL_26;
          }

          v29 = DPLogHandle_CKCodeServerError();
          if (os_signpost_enabled(v29))
          {
            v30 = [v17 debugDescription];
            *buf = 138543362;
            v48 = v30;
            _os_signpost_emit_with_name_impl(&dword_232906000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MissingReply", "Missing reply from DS for %{public}@", buf, 0xCu);
          }

          v23 = v17;
          v24 = @"Missing reply";
        }

        [v23 uploadFailedDueToReason:v24 ckOperationID:v6];
LABEL_26:

LABEL_27:
        ++v16;
      }

      while (v14 != v16);
      v37 = [v12 countByEnumeratingWithState:&v42 objects:v46 count:16];
      v14 = v37;
    }

    while (v37);
  }

  v38 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();

  v39 = *MEMORY[0x277D85DE8];
}

- (void)shouldUploadRequests:(id)requests xpcActivity:(id)activity replyHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  activityCopy = activity;
  handlerCopy = handler;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = requestsCopy;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * i);
        if (![v17 decisionServerDecision])
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  [(DRSCloudKitHelper *)self _sendDecisionServerRequests:v11 xpcActivity:activityCopy replyHandler:handlerCopy];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)shouldEnableDataGathering:(id)gathering xpcActivity:(id)activity replyHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  gatheringCopy = gathering;
  activityCopy = activity;
  handlerCopy = handler;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = gatheringCopy;
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        if ([v18 submitQuery])
        {
          v19 = v12;
        }

        else
        {
          v19 = v11;
        }

        [v19 addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v15);
  }

  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __72__DRSCloudKitHelper_shouldEnableDataGathering_xpcActivity_replyHandler___block_invoke;
  v27 = &unk_27899F148;
  v28 = v11;
  v29 = handlerCopy;
  v20 = handlerCopy;
  v21 = v11;
  v22 = _Block_copy(&v24);
  [(DRSCloudKitHelper *)self _sendDecisionServerRequests:v12 xpcActivity:activityCopy replyHandler:v22, v24, v25, v26, v27];

  v23 = *MEMORY[0x277D85DE8];
}

void __72__DRSCloudKitHelper_shouldEnableDataGathering_xpcActivity_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v26 = a3;
  v8 = a4;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = [v7 allValues];
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        v15 = [v14 request];
        [v15 queryFinishedWithDecision:v14 error:v8];
      }

      v11 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v11);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = a1;
  v16 = *(a1 + 32);
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v27 + 1) + 8 * j);
        v22 = [[DRSDecisionServerRequestReply alloc] initWithOriginalRequest:v21 requestAccepted:0 rejectionReason:@"Invalid query state"];
        v23 = [v21 queryID];
        [v7 setObject:v22 forKeyedSubscript:v23];
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v18);
  }

  (*(*(v25 + 40) + 16))();
  v24 = *MEMORY[0x277D85DE8];
}

- (void)_sendDecisionServerRequests:(id)requests xpcActivity:(id)activity replyHandler:(id)handler
{
  v111 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  activityCopy = activity;
  handlerCopy = handler;
  if (requestsCopy && [requestsCopy count])
  {
    v74 = handlerCopy;
    v75 = activityCopy;
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = +[DRSSystemProfile sharedInstance];
    isLogUploadEnabled = [v12 isLogUploadEnabled];

    if (isLogUploadEnabled)
    {
      selfCopy = self;
      v77 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v73 = requestsCopy;
      v15 = requestsCopy;
      v16 = [v15 countByEnumeratingWithState:&v88 objects:v109 count:16];
      v76 = v14;
      if (v16)
      {
        v17 = v16;
        v18 = *v89;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v89 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v88 + 1) + 8 * i);
            pbRequest = [v20 pbRequest];
            if (pbRequest)
            {
              [v77 addObject:pbRequest];
              [v14 addObject:v20];
            }

            else
            {
              v22 = [[DRSDecisionServerRequestReply alloc] initWithOriginalRequest:v20 requestAccepted:0 rejectionReason:@"Invalid upload request"];
              uniqueID = [v20 uniqueID];
              [v11 setObject:v22 forKeyedSubscript:uniqueID];

              v14 = v76;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v88 objects:v109 count:16];
        }

        while (v17);
      }

      v24 = [v11 count];
      if (v24 == [v15 count])
      {
        v25 = MEMORY[0x277CCA9B8];
        v107 = *MEMORY[0x277CCA450];
        v108 = @"Could not create any valid upload requests";
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
        v27 = [v25 errorWithDomain:@"CKCodeServerError" code:0 userInfo:v26];

        handlerCopy = v74;
        (v74)[2](v74, v11, 0, v27);
        activityCopy = v75;
      }

      else
      {
        v37 = objc_alloc(MEMORY[0x277CBC1F8]);
        v38 = kDRSCloudKitDecisionServerName;
        firstObject = [v76 firstObject];
        functionName = [firstObject functionName];
        firstObject2 = [v76 firstObject];
        v27 = [v37 initWithServiceName:v38 functionName:functionName responseClass:{objc_msgSend(firstObject2, "pbBatchResponseClass")}];

        if (v27)
        {
          v42 = DPLogHandle_CKCodeServer();
          if (os_signpost_enabled(v42))
          {
            v43 = kDRSCloudKitDecisionServerName;
            firstObject3 = [v76 firstObject];
            functionName2 = [firstObject3 functionName];
            operationID = [v27 operationID];
            *buf = 138543874;
            v97 = v43;
            v98 = 2114;
            v99 = functionName2;
            v100 = 2114;
            v101 = operationID;
            _os_signpost_emit_with_name_impl(&dword_232906000, v42, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKCodeOperationCreation", "Server: %{public}@, function: %{public}@, CKOperationID: %{public}@", buf, 0x20u);
          }

          _targetContainer = [(DRSCloudKitHelper *)selfCopy _targetContainer];
          activityCopy = v75;
          [(DRSCloudKitHelper *)selfCopy _configureOperation:v27 container:_targetContainer xpcActivity:v75];

          firstObject4 = [v76 firstObject];
          pbBatchInstance = [firstObject4 pbBatchInstance];

          v50 = DRSDeviceMetadata();
          [pbBatchInstance setClientMetadata:v50];

          [pbBatchInstance setRequests:v77];
          [v27 setRequest:pbBatchInstance];
          operationID2 = [v27 operationID];
          v78[0] = MEMORY[0x277D85DD0];
          v78[1] = 3221225472;
          v78[2] = __74__DRSCloudKitHelper__sendDecisionServerRequests_xpcActivity_replyHandler___block_invoke;
          v78[3] = &unk_27899F170;
          v79 = v76;
          v80 = v11;
          v81 = v15;
          handlerCopy = v74;
          v82 = operationID2;
          v83 = v74;
          v52 = operationID2;
          [v27 setCodeOperationCompletionBlock:v78];
          _targetContainer2 = [(DRSCloudKitHelper *)selfCopy _targetContainer];
          publicCloudDatabase = [_targetContainer2 publicCloudDatabase];
          [publicCloudDatabase addOperation:v27];
        }

        else
        {
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v55 = v76;
          v56 = [v55 countByEnumeratingWithState:&v84 objects:v106 count:16];
          if (v56)
          {
            v57 = v56;
            v58 = *v85;
            do
            {
              for (j = 0; j != v57; ++j)
              {
                if (*v85 != v58)
                {
                  objc_enumerationMutation(v55);
                }

                v60 = *(*(&v84 + 1) + 8 * j);
                v61 = [[DRSDecisionServerRequestReply alloc] initWithOriginalRequest:v60 requestAccepted:0 rejectionReason:@"Could not create upload request operation"];
                uniqueID2 = [v60 uniqueID];
                [v11 setObject:v61 forKeyedSubscript:uniqueID2];
              }

              v57 = [v55 countByEnumeratingWithState:&v84 objects:v106 count:16];
            }

            while (v57);
          }

          v63 = [v11 count];
          v64 = [v15 count];
          v65 = MEMORY[0x277CCA9B8];
          v66 = *MEMORY[0x277CCA450];
          if (v63 == v64)
          {
            v102 = *MEMORY[0x277CCA450];
            v103 = @"Failed to create CKCodeOperation instance to query DS";
            v67 = MEMORY[0x277CBEAC0];
            v68 = &v103;
            v69 = &v102;
          }

          else
          {
            v104 = *MEMORY[0x277CCA450];
            v105 = @"Didn't have a error reply for every request after failing to create upload request operation";
            v67 = MEMORY[0x277CBEAC0];
            v68 = &v105;
            v69 = &v104;
          }

          v70 = [v67 dictionaryWithObjects:v68 forKeys:v69 count:1];
          handlerCopy = v74;
          activityCopy = v75;
          v27 = 0;
          pbBatchInstance = [v65 errorWithDomain:@"CKCodeServerError" code:0 userInfo:v70];

          (*(handlerCopy + 2))(handlerCopy, v11, 0, pbBatchInstance);
        }
      }

      requestsCopy = v73;
    }

    else
    {
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v29 = requestsCopy;
      v30 = [v29 countByEnumeratingWithState:&v92 objects:v110 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v93;
        do
        {
          for (k = 0; k != v31; ++k)
          {
            if (*v93 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v92 + 1) + 8 * k);
            v35 = [[DRSDecisionServerRequestReply alloc] initWithOriginalRequest:v34 requestAccepted:0 rejectionReason:@"Log upload is disabled"];
            uniqueID3 = [v34 uniqueID];
            [v11 setObject:v35 forKeyedSubscript:uniqueID3];
          }

          v31 = [v29 countByEnumeratingWithState:&v92 objects:v110 count:16];
        }

        while (v31);
      }

      handlerCopy = v74;
      (v74)[2](v74, v11, 0, 0);
    }
  }

  else
  {
    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    (*(handlerCopy + 2))(handlerCopy, v28, 0, 0);
  }

  v71 = *MEMORY[0x277D85DE8];
}

void __74__DRSCloudKitHelper__sendDecisionServerRequests_xpcActivity_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  if (!v6)
  {
    v25 = [v7 decisionResults];
    v26 = [v25 count];
    v27 = [*(a1 + 32) count];

    if (v26 == v27)
    {
      if ([*(a1 + 32) count])
      {
        v28 = 0;
        do
        {
          v29 = [DRSDecisionServerRequestReply alloc];
          v30 = [*(a1 + 32) objectAtIndexedSubscript:v28];
          v31 = [v8 decisionResults];
          v32 = [v31 objectAtIndexedSubscript:v28];
          v33 = [(DRSDecisionServerRequestReply *)v29 initWithOriginalRequest:v30 reply:v32];

          v34 = *(a1 + 40);
          v35 = [(DRSDecisionServerRequestReply *)v33 request];
          v36 = [v35 uniqueID];
          [v34 setObject:v33 forKeyedSubscript:v36];

          ++v28;
        }

        while (v28 < [*(a1 + 32) count]);
      }

      v37 = [*(a1 + 40) count];
      if (v37 == [*(a1 + 48) count])
      {
        goto LABEL_33;
      }

      v38 = DPLogHandle_CKCodeServerError();
      if (!os_signpost_enabled(v38))
      {
LABEL_32:

LABEL_33:
        v50 = *(a1 + 40);
        v51 = *(a1 + 56);
        (*(*(a1 + 64) + 16))();
        goto LABEL_34;
      }

      *buf = 0;
      v39 = "Didn't have reply for every request on successful reply";
    }

    else
    {
      v54 = v8;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v40 = *(a1 + 32);
      v41 = [v40 countByEnumeratingWithState:&v55 objects:v64 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v56;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v56 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v55 + 1) + 8 * i);
            v46 = [[DRSDecisionServerRequestReply alloc] initWithOriginalRequest:v45 errorString:@"Reply from decision server did not properly map to request array"];
            v47 = *(a1 + 40);
            v48 = [v45 uniqueID];
            [v47 setObject:v46 forKeyedSubscript:v48];
          }

          v42 = [v40 countByEnumeratingWithState:&v55 objects:v64 count:16];
        }

        while (v42);
      }

      v49 = [*(a1 + 40) count];
      v8 = v54;
      if (v49 == [*(a1 + 48) count])
      {
        goto LABEL_33;
      }

      v38 = DPLogHandle_CKCodeServerError();
      if (!os_signpost_enabled(v38))
      {
        goto LABEL_32;
      }

      *buf = 0;
      v39 = "Didn't have reply for every request when confusing answer from DS received";
    }

    _os_signpost_emit_with_name_impl(&dword_232906000, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InconsistentReplyCount", v39, buf, 2u);
    goto LABEL_32;
  }

  v53 = v7;
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = [v6 localizedDescription];
  v11 = [v9 initWithFormat:@"CKOperationError: %@", v10];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v12 = *(a1 + 32);
  v13 = [v12 countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v61;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v61 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v60 + 1) + 8 * j);
        v18 = [[DRSDecisionServerRequestReply alloc] initWithOriginalRequest:v17 errorString:v11];
        v19 = *(a1 + 40);
        v20 = [v17 uniqueID];
        [v19 setObject:v18 forKeyedSubscript:v20];
      }

      v14 = [v12 countByEnumeratingWithState:&v60 objects:v65 count:16];
    }

    while (v14);
  }

  v21 = [*(a1 + 40) count];
  v8 = v53;
  if (v21 != [*(a1 + 48) count])
  {
    v22 = DPLogHandle_CKCodeServerError();
    if (os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InconsistentReplyCount", "Didn't have reply for every request when CKOperation error encountered", buf, 2u);
    }
  }

  v23 = *(a1 + 40);
  v24 = *(a1 + 56);
  (*(*(a1 + 64) + 16))();

LABEL_34:
  v52 = *MEMORY[0x277D85DE8];
}

- (void)reportTerminalRequestStats:(id)stats xpcActivity:(id)activity replyHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  activityCopy = activity;
  handlerCopy = handler;
  if ([statsCopy count])
  {
    v11 = [DRSRequestAllStats statsForRequests:statsCopy];
    v12 = [v11 generateCoreAnalyticsEvents:1];
    v13 = DPLogHandle_Telemetry();
    if (os_signpost_enabled(v13))
    {
      *buf = 134349056;
      v31 = v12;
      _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestStatsBatchCoreAnalyticsEvents", "Reported %{public}llu CA events", buf, 0xCu);
    }

    v14 = +[DRSSystemProfile sharedInstance];
    isInternal = [v14 isInternal];

    if (isInternal)
    {
      terminalRequestProtobufRepresentation = [v11 terminalRequestProtobufRepresentation];
      if (terminalRequestProtobufRepresentation)
      {
        v17 = objc_alloc(MEMORY[0x277CBC1F8]);
        v18 = [v17 initWithServiceName:kDRSCloudKitDecisionServerName functionName:@"reportDiagnosticRequestStatsBatch" responseClass:objc_opt_class()];
        _targetContainer = [(DRSCloudKitHelper *)self _targetContainer];
        [(DRSCloudKitHelper *)self _configureOperation:v18 container:_targetContainer xpcActivity:activityCopy];

        [v18 setRequest:terminalRequestProtobufRepresentation];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __73__DRSCloudKitHelper_reportTerminalRequestStats_xpcActivity_replyHandler___block_invoke;
        v26[3] = &unk_27899F198;
        v27 = handlerCopy;
        [v18 setCodeOperationCompletionBlock:v26];
        _targetContainer2 = [(DRSCloudKitHelper *)self _targetContainer];
        publicCloudDatabase = [_targetContainer2 publicCloudDatabase];
        [publicCloudDatabase addOperation:v18];
      }

      else
      {
        v22 = DPLogHandle_CKCodeServerError();
        if (os_signpost_enabled(v22))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestStatsBatchProtobufError", "Could not create stats batch protobuf object", buf, 2u);
        }

        v23 = MEMORY[0x277CCA9B8];
        v28 = *MEMORY[0x277CCA450];
        v29 = @"Failed to create protobuf object to report stats to DecisionServer";
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v18 = [v23 errorWithDomain:@"DiagnosticPipelineRequestStatsBatchError" code:0 userInfo:v24];

        (*(handlerCopy + 2))(handlerCopy, v18);
      }
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __73__DRSCloudKitHelper_reportTerminalRequestStats_xpcActivity_replyHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = DPLogHandle_CKCodeServerError();
    if (os_signpost_enabled(v5))
    {
      v7 = 138543362;
      v8 = v4;
      _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestStatsBatchError", "CKCS error for 'reportDiagnosticRequestStatsBatch': %{public}@", &v7, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

@end