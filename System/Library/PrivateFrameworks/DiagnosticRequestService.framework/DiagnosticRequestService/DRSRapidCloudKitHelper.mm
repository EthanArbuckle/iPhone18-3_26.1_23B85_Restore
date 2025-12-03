@interface DRSRapidCloudKitHelper
+ (id)devHelper;
+ (id)prodHelper;
- (id)_initWithEnvironment:(int64_t)environment;
- (void)submitRapidPayload:(id)payload replyHandler:(id)handler;
@end

@implementation DRSRapidCloudKitHelper

- (id)_initWithEnvironment:(int64_t)environment
{
  if (environment == 3)
  {
    selfCopy = 0;
  }

  else
  {
    v5 = [[DiagnosticPipelineRapidServiceFunctionsClientObjc alloc] initWithEnvironment:environment];
    if (v5)
    {
      v9.receiver = self;
      v9.super_class = DRSRapidCloudKitHelper;
      v6 = [(DRSRapidCloudKitHelper *)&v9 init];
      v7 = v6;
      if (v6)
      {
        objc_storeStrong(&v6->_objcClient, v5);
      }

      self = v7;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

+ (id)devHelper
{
  if (devHelper_onceToken != -1)
  {
    +[DRSRapidCloudKitHelper devHelper];
  }

  v3 = devHelper_devHelper;

  return v3;
}

void __35__DRSRapidCloudKitHelper_devHelper__block_invoke()
{
  v0 = [[DRSRapidCloudKitHelper alloc] _initWithEnvironment:1];
  v1 = devHelper_devHelper;
  devHelper_devHelper = v0;
}

+ (id)prodHelper
{
  if (prodHelper_onceToken != -1)
  {
    +[DRSRapidCloudKitHelper prodHelper];
  }

  v3 = prodHelper_prodHelper;

  return v3;
}

void __36__DRSRapidCloudKitHelper_prodHelper__block_invoke()
{
  v0 = [[DRSRapidCloudKitHelper alloc] _initWithEnvironment:2];
  v1 = prodHelper_prodHelper;
  prodHelper_prodHelper = v0;
}

- (void)submitRapidPayload:(id)payload replyHandler:(id)handler
{
  v75 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  handlerCopy = handler;
  v8 = DPLogHandle_CKCFUpload();
  if (os_signpost_enabled(v8))
  {
    v9 = [payloadCopy description];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v9;
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsRequestUpload", "Upload for %{public}@", &buf, 0xCu);
  }

  if ([payloadCopy requestState] == 1)
  {
    if (([payloadCopy uploadStarted] & 1) == 0)
      v10 = {;
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v10);

      v11 = DPLogHandle_CKCFUpload();
      if (os_signpost_enabled(v11))
      {
        LOWORD(buf) = 0;
LABEL_18:
        _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsRequestUpload", v12, &buf, 2u);
        goto LABEL_25;
      }

      goto LABEL_25;
    }
  }

  else if ([payloadCopy requestState] != 2)
  {
    v33 = MEMORY[0x277CCACA8];
    requestStateString = [payloadCopy requestStateString];
    v11 = [v33 stringWithFormat:@"Unexpected request state: %@", requestStateString];

    v35 = DRSRapidErrorWithDescription(v11);
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v35);

    v36 = DPLogHandle_CKCFUpload();
    if (os_signpost_enabled(v36))
    {
      requestStateString2 = [payloadCopy requestStateString];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = requestStateString2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v36, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsRequestUpload", "Request in unexpected state: %{public}@", &buf, 0xCu);
    }

    if (![payloadCopy requestOutcome])
    {
      [payloadCopy updateToState:4355 errorDescription:@"Attempted to upload while in unexpected state" errorOut:0];
    }

    goto LABEL_25;
  }

  if ([payloadCopy hasUploadableContent])
  {
    v13 = MEMORY[0x277CBEA90];
    logs = [payloadCopy logs];
    firstObject = [logs firstObject];
    path = [firstObject path];
    v11 = [v13 dataWithContentsOfFile:path];

    if (v11)
    {
      logs2 = [payloadCopy logs];
      firstObject2 = [logs2 firstObject];
      name = [firstObject2 name];

      if (name)
      {
        v20 = +[DRSSystemProfile sharedInstance];
        requestDate = [payloadCopy requestDate];
        [requestDate timeIntervalSince1970];
        v23 = v22;

        v47 = dispatch_queue_create("DRSRapidCloudKitHelper sync queue", 0);
        v49 = dispatch_semaphore_create(0);
        *&buf = 0;
        *(&buf + 1) = &buf;
        v73 = 0x2020000000;
        v74 = 0;
        v70[0] = 0;
        v70[1] = v70;
        v70[2] = 0x2020000000;
        v71 = 0;
        objcClient = [(DRSRapidCloudKitHelper *)self objcClient];
        buildVariant = [v20 buildVariant];
        deviceCategory = [v20 deviceCategory];
        deviceModel = [v20 deviceModel];
        platformString = [v20 platformString];
        teamID = [payloadCopy teamID];
        issueCategory = [payloadCopy issueCategory];
        contextDictionaryData = [payloadCopy contextDictionaryData];
        build = [payloadCopy build];
        logType = [payloadCopy logType];
        v46 = [v11 length];
        uploadAttemptCount = [payloadCopy uploadAttemptCount];
        v44 = objcClient;
        v27 = buildVariant;
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __58__DRSRapidCloudKitHelper_submitRapidPayload_replyHandler___block_invoke;
        v63[3] = &unk_27899EED8;
        v28 = v47;
        v64 = v28;
        p_buf = &buf;
        v69 = v70;
        v48 = payloadCopy;
        v65 = v48;
        v43 = handlerCopy;
        v67 = v43;
        v29 = v49;
        v66 = v29;
        v30 = v20;
        LODWORD(v42) = uploadAttemptCount;
        [v44 submitRapidPayloadWithBuildVariant:v27 deviceCategory:deviceCategory deviceModel:deviceModel platform:platformString teamID:teamID issueCategory:issueCategory contextDictionaryData:contextDictionaryData requestTime:v23 build:build logType:logType logSize:v46 fileName:name uploadAttempts:v42 payload:v11 completionHandler:v63];

        v31 = dispatch_time(0, 120000000000);
        v32 = dispatch_semaphore_wait(v29, v31);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __58__DRSRapidCloudKitHelper_submitRapidPayload_replyHandler___block_invoke_51;
        block[3] = &unk_27899EF00;
        v60 = v70;
        v62 = v32;
        v58 = v48;
        v59 = v43;
        v61 = &buf;
        dispatch_sync(v28, block);

        _Block_object_dispose(v70, 8);
        _Block_object_dispose(&buf, 8);
      }

      else
      {
        v40 = DRSRapidErrorWithDescription(@"Could not determine file name");
        (*(handlerCopy + 2))(handlerCopy, 0, 0, v40);

        v30 = DPLogHandle_CKCFUpload();
        if (os_signpost_enabled(v30))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_232906000, v30, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsRequestUpload", "Could not determine file name", &buf, 2u);
        }
      }
    }

    else
    {
      v39 = DRSRapidErrorWithDescription(@"Invalid payload");
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v39);

      name = DPLogHandle_CKCFUpload();
      if (os_signpost_enabled(name))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, name, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsRequestUpload", "Invalid payload", &buf, 2u);
      }
    }
  }

  else
  {
    v38 = DRSRapidErrorWithDescription(@"File not available");
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v38);

    v11 = DPLogHandle_CKCFUpload();
    if (os_signpost_enabled(v11))
    {
      LOWORD(buf) = 0;
      v12 = "Failed due to missing payload file.";
      goto LABEL_18;
    }
  }

LABEL_25:

  v41 = *MEMORY[0x277D85DE8];
}

void __58__DRSRapidCloudKitHelper_submitRapidPayload_replyHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__DRSRapidCloudKitHelper_submitRapidPayload_replyHandler___block_invoke_2;
  v14[3] = &unk_27899EEB0;
  v21 = *(a1 + 64);
  v15 = v9;
  v10 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = v8;
  v18 = v7;
  v20 = *(a1 + 56);
  v19 = *(a1 + 48);
  v11 = v7;
  v12 = v8;
  v13 = v9;
  dispatch_sync(v10, v14);
}

void *__58__DRSRapidCloudKitHelper_submitRapidPayload_replyHandler___block_invoke_2(void *result)
{
  v17 = *MEMORY[0x277D85DE8];
  if ((*(*(result[10] + 8) + 24) & 1) == 0)
  {
    v1 = result;
    *(*(result[11] + 8) + 24) = 1;
    v2 = result[4];
    v3 = DPLogHandle_CKCFUpload();
    v4 = os_signpost_enabled(v3);
    if (v2)
    {
      if (v4)
      {
        v5 = [v1[4] localizedDescription];
        v6 = v5;
        v7 = @"Unknown";
        if (v5)
        {
          v7 = v5;
        }

        v15 = 138543362;
        v16 = v7;
        _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsRequestUpload", "Failed to upload due to CK layer error: %{public}@", &v15, 0xCu);
      }

      [v1[5] uploadCompleteWithError:v1[4] ckOperationID:0 ckRecordID:0];
    }

    else
    {
      if (v4)
      {
        v12 = v1[6];
        if (!v12)
        {
          v12 = @"<None>";
        }

        v15 = 138543362;
        v16 = v12;
        _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsRequestUpload", "Reached CF endpoint successfully! Failure reason: %{public, name=failureReason}@", &v15, 0xCu);
      }

      [v1[5] uploadCompleteWithError:0 ckOperationID:0 ckRecordID:0];
      if (v1[6])
      {
        v13 = MEMORY[0x277CBEC28];
      }

      else
      {
        v13 = MEMORY[0x277CBEC38];
      }

      [v1[5] setCfDidSucceed:v13];
      [v1[5] setCfFailureReason:v1[6]];
      v14 = v1[7];
      if (v14 && [v14 length])
      {
        [v1[5] setCfReplyPayload:v1[7]];
      }
    }

    v9 = v1[6];
    v8 = v1[7];
    v10 = v1[4];
    (*(v1[9] + 16))();
    result = dispatch_semaphore_signal(v1[8]);
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void __58__DRSRapidCloudKitHelper_submitRapidPayload_replyHandler___block_invoke_51(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && *(a1 + 64))
  {
    v2 = DRSRapidErrorWithDescription(@"Timed out waiting for CF response");
    [*(a1 + 32) uploadCompleteWithError:v2 ckOperationID:0 ckRecordID:0];
    v3 = DPLogHandle_CKCFUpload();
    if (os_signpost_enabled(v3))
    {
      v5 = 134217984;
      v6 = 120000000000;
      _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsRequestUpload", "Request to CKCF hit %llu second timeout", &v5, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end