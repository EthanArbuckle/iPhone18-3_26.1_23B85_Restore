@interface DRSRapidCloudKitHelper
+ (id)devHelper;
+ (id)prodHelper;
- (id)_initWithEnvironment:(int64_t)a3;
- (void)submitRapidPayload:(id)a3 replyHandler:(id)a4;
@end

@implementation DRSRapidCloudKitHelper

- (id)_initWithEnvironment:(int64_t)a3
{
  if (a3 == 3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [[DiagnosticPipelineRapidServiceFunctionsClientObjc alloc] initWithEnvironment:a3];
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
      v4 = self;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
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

- (void)submitRapidPayload:(id)a3 replyHandler:(id)a4
{
  v75 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DPLogHandle_CKCFUpload();
  if (os_signpost_enabled(v8))
  {
    v9 = [v6 description];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v9;
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsRequestUpload", "Upload for %{public}@", &buf, 0xCu);
  }

  if ([v6 requestState] == 1)
  {
    if (([v6 uploadStarted] & 1) == 0)
      v10 = {;
      (*(v7 + 2))(v7, 0, 0, v10);

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

  else if ([v6 requestState] != 2)
  {
    v33 = MEMORY[0x277CCACA8];
    v34 = [v6 requestStateString];
    v11 = [v33 stringWithFormat:@"Unexpected request state: %@", v34];

    v35 = DRSRapidErrorWithDescription(v11);
    (*(v7 + 2))(v7, 0, 0, v35);

    v36 = DPLogHandle_CKCFUpload();
    if (os_signpost_enabled(v36))
    {
      v37 = [v6 requestStateString];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v37;
      _os_signpost_emit_with_name_impl(&dword_232906000, v36, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsRequestUpload", "Request in unexpected state: %{public}@", &buf, 0xCu);
    }

    if (![v6 requestOutcome])
    {
      [v6 updateToState:4355 errorDescription:@"Attempted to upload while in unexpected state" errorOut:0];
    }

    goto LABEL_25;
  }

  if ([v6 hasUploadableContent])
  {
    v13 = MEMORY[0x277CBEA90];
    v14 = [v6 logs];
    v15 = [v14 firstObject];
    v16 = [v15 path];
    v11 = [v13 dataWithContentsOfFile:v16];

    if (v11)
    {
      v17 = [v6 logs];
      v18 = [v17 firstObject];
      v19 = [v18 name];

      if (v19)
      {
        v20 = +[DRSSystemProfile sharedInstance];
        v21 = [v6 requestDate];
        [v21 timeIntervalSince1970];
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
        v24 = [(DRSRapidCloudKitHelper *)self objcClient];
        v25 = [v20 buildVariant];
        v56 = [v20 deviceCategory];
        v55 = [v20 deviceModel];
        v54 = [v20 platformString];
        v53 = [v6 teamID];
        v50 = [v6 issueCategory];
        v52 = [v6 contextDictionaryData];
        v51 = [v6 build];
        v26 = [v6 logType];
        v46 = [v11 length];
        v45 = [v6 uploadAttemptCount];
        v44 = v24;
        v27 = v25;
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __58__DRSRapidCloudKitHelper_submitRapidPayload_replyHandler___block_invoke;
        v63[3] = &unk_27899EED8;
        v28 = v47;
        v64 = v28;
        p_buf = &buf;
        v69 = v70;
        v48 = v6;
        v65 = v48;
        v43 = v7;
        v67 = v43;
        v29 = v49;
        v66 = v29;
        v30 = v20;
        LODWORD(v42) = v45;
        [v44 submitRapidPayloadWithBuildVariant:v27 deviceCategory:v56 deviceModel:v55 platform:v54 teamID:v53 issueCategory:v50 contextDictionaryData:v52 requestTime:v23 build:v51 logType:v26 logSize:v46 fileName:v19 uploadAttempts:v42 payload:v11 completionHandler:v63];

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
        (*(v7 + 2))(v7, 0, 0, v40);

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
      (*(v7 + 2))(v7, 0, 0, v39);

      v19 = DPLogHandle_CKCFUpload();
      if (os_signpost_enabled(v19))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CloudFunctionsRequestUpload", "Invalid payload", &buf, 2u);
      }
    }
  }

  else
  {
    v38 = DRSRapidErrorWithDescription(@"File not available");
    (*(v7 + 2))(v7, 0, 0, v38);

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