@interface VCPAutoBugCapture
+ (BOOL)captureCrashWithKnownTimeoutRisk:(unint64_t)a3;
+ (BOOL)captureTimeoutCrashWithSubType:(id)a3;
+ (id)sharedCapturer;
+ (id)timeoutSubTypeForKnownTimeoutRisk:(unint64_t)a3;
- (BOOL)captureProcessingFailure:(id)a3 taskID:(unint64_t)a4 asset:(id)a5 previousAttempts:(unint64_t)a6;
- (VCPAutoBugCapture)init;
- (id)processingFailureReportTimeForTask:(unint64_t)a3;
- (void)setLastProcessingFailureReportTime:(id)a3 forTask:(unint64_t)a4;
@end

@implementation VCPAutoBugCapture

- (VCPAutoBugCapture)init
{
  v18.receiver = self;
  v18.super_class = VCPAutoBugCapture;
  v2 = [(VCPAutoBugCapture *)&v18 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [v3 persistentDomainForName:@"com.apple.mediaanalysisd"];
    v5 = [v4 objectForKey:@"SceneAnalysisFailureDate"];
    SceneProcessingFailureReportTime = v2->SceneProcessingFailureReportTime;
    v2->SceneProcessingFailureReportTime = v5;

    v7 = [v4 objectForKey:@"FaceAnalysisFailureDate"];
    FaceProcessingFailureReportTime = v2->FaceProcessingFailureReportTime;
    v2->FaceProcessingFailureReportTime = v7;

    v9 = [v4 objectForKey:@"OCRAnalysisFailureDate"];
    OCRProcessingFailureReportTime = v2->OCRProcessingFailureReportTime;
    v2->OCRProcessingFailureReportTime = v9;

    v11 = [v4 objectForKey:@"VisualSearchAnalysisFailureDate"];
    VisualSearchProcessingFailureReportTime = v2->VisualSearchProcessingFailureReportTime;
    v2->VisualSearchProcessingFailureReportTime = v11;

    v13 = [v4 objectForKey:@"FullAnalysisFailureDate"];
    FullProcessingFailureReportTime = v2->FullProcessingFailureReportTime;
    v2->FullProcessingFailureReportTime = v13;

    v15 = [v4 objectForKey:@"PECAnalysisFailureDate"];
    PECProcessingFailureReportTime = v2->PECProcessingFailureReportTime;
    v2->PECProcessingFailureReportTime = v15;
  }

  return v2;
}

+ (id)sharedCapturer
{
  if (sharedCapturer_once != -1)
  {
    +[VCPAutoBugCapture sharedCapturer];
  }

  v3 = sharedCapturer_instance;

  return v3;
}

void __35__VCPAutoBugCapture_sharedCapturer__block_invoke()
{
  v0 = objc_alloc_init(VCPAutoBugCapture);
  v1 = sharedCapturer_instance;
  sharedCapturer_instance = v0;
}

+ (id)timeoutSubTypeForKnownTimeoutRisk:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_1E83502E8 + a3 - 1);
  }
}

- (id)processingFailureReportTimeForTask:(unint64_t)a3
{
  v3 = a3;
  v8 = *MEMORY[0x1E69E9840];
  if (a3 > 9)
  {
    switch(a3)
    {
      case 0xAuLL:
        OCRProcessingFailureReportTime = self->OCRProcessingFailureReportTime;
        goto LABEL_18;
      case 0xCuLL:
        OCRProcessingFailureReportTime = self->VisualSearchProcessingFailureReportTime;
        goto LABEL_18;
      case 0x10uLL:
        OCRProcessingFailureReportTime = self->PECProcessingFailureReportTime;
        goto LABEL_18;
    }
  }

  else
  {
    switch(a3)
    {
      case 1uLL:
        OCRProcessingFailureReportTime = self->FullProcessingFailureReportTime;
        goto LABEL_18;
      case 2uLL:
        OCRProcessingFailureReportTime = self->SceneProcessingFailureReportTime;
        goto LABEL_18;
      case 3uLL:
        OCRProcessingFailureReportTime = self->FaceProcessingFailureReportTime;
LABEL_18:
        v5 = OCRProcessingFailureReportTime;
        goto LABEL_19;
    }
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to determine timestamp of last ABC failure report for task %u", v7, 8u);
  }

  v5 = 0;
LABEL_19:

  return v5;
}

- (void)setLastProcessingFailureReportTime:(id)a3 forTask:(unint64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  v9 = [v8 persistentDomainForName:@"com.apple.mediaanalysisd"];
  if (a4 > 9)
  {
    switch(a4)
    {
      case 0xAuLL:
        v10 = @"OCRAnalysisFailureDate";
        v11 = 24;
        goto LABEL_17;
      case 0xCuLL:
        v10 = @"VisualSearchAnalysisFailureDate";
        v11 = 32;
        goto LABEL_17;
      case 0x10uLL:
        v10 = @"PECAnalysisFailureDate";
        v11 = 48;
        goto LABEL_17;
    }
  }

  else
  {
    switch(a4)
    {
      case 1uLL:
        v10 = @"FullAnalysisFailureDate";
        v11 = 40;
        goto LABEL_17;
      case 2uLL:
        v10 = @"SceneAnalysisFailureDate";
        v11 = 8;
        goto LABEL_17;
      case 3uLL:
        v10 = @"FaceAnalysisFailureDate";
        v11 = 16;
LABEL_17:
        objc_storeStrong((&self->super.isa + v11), a3);
        [v8 setObject:v7 forKey:v10];
        goto LABEL_18;
    }
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12[0] = 67109120;
    v12[1] = a4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPAutoBugCapture] Unable to set date of last processing failure for task %u", v12, 8u);
  }

LABEL_18:
}

+ (BOOL)captureCrashWithKnownTimeoutRisk:(unint64_t)a3
{
  v3 = a3;
  v9 = *MEMORY[0x1E69E9840];
  v5 = [a1 timeoutSubTypeForKnownTimeoutRisk:?];
  if (v5)
  {
    v6 = [a1 captureTimeoutCrashWithSubType:v5];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = v3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPAutoBugCapture] unknown bug type: %d", v8, 8u);
    }

    v6 = 0;
  }

  return v6;
}

+ (BOOL)captureTimeoutCrashWithSubType:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v4 = objc_alloc_init(getSDRDiagnosticReporterClass());
  v5 = [v4 signatureWithDomain:@"MediaAnalysis" type:@"Timeout" subType:v3 subtypeContext:0 detectedProcess:@"com.apple.mediaanalysisd" triggerThresholdValues:0];
  v6 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__VCPAutoBugCapture_captureTimeoutCrashWithSubType___block_invoke;
  v12[3] = &unk_1E8350288;
  v7 = v3;
  v13 = v7;
  v16 = &v17;
  v8 = v5;
  v14 = v8;
  v9 = v6;
  v15 = v9;
  if (([v4 snapshotWithSignature:v8 delay:0 events:0 payload:0 actions:v12 reply:0.0] & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v22 = v8;
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPAutoBugCapture] Failed to report crash %@ to reporter %@", buf, 0x16u);
  }

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v10 & 1;
}

void __52__VCPAutoBugCapture_captureTimeoutCrashWithSubType___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getkSymptomDiagnosticReplySuccess();
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    if (MediaAnalysisLogLevel() < 5 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v7 = *(a1 + 32);
    v16 = 138412290;
    v17 = v7;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "[VCPAutoBugCapture] %@ crash was reported";
LABEL_10:
    _os_log_impl(&dword_1C9B70000, v8, OS_LOG_TYPE_DEFAULT, v9, &v16, 0xCu);
LABEL_11:
    *(*(*(a1 + 56) + 8) + 24) = 1;
    goto LABEL_12;
  }

  v10 = getkSymptomDiagnosticReplyReason();
  v11 = [v3 objectForKeyedSubscript:v10];
  v12 = [v11 unsignedIntegerValue];

  if (v12 == getkSymptomDiagnosticErrorDailyLimitExceeded() || v12 == getkSymptomDiagnosticErrorRandomizedSuppression())
  {
    if (MediaAnalysisLogLevel() < 5 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v13 = *(a1 + 32);
    v16 = 138412290;
    v17 = v13;
    v8 = MEMORY[0x1E69E9C10];
    v9 = "[VCPAutoBugCapture] %@ crash report was rate-limited (Expected non-report)";
    goto LABEL_10;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = 138412802;
    v17 = v14;
    v18 = 1024;
    v19 = v12;
    v20 = 2112;
    v21 = v15;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPAutoBugCapture] Failed to report %@ crash. reason: %d, signature: %@", &v16, 0x1Cu);
  }

LABEL_12:
  dispatch_semaphore_signal(*(a1 + 48));
}

- (BOOL)captureProcessingFailure:(id)a3 taskID:(unint64_t)a4 asset:(id)a5 previousAttempts:(unint64_t)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v12 = [MEMORY[0x1E695DF00] now];
  v13 = [(VCPAutoBugCapture *)self processingFailureReportTimeForTask:a4];
  if (!v13)
  {
    v13 = [MEMORY[0x1E695DF00] distantPast];
  }

  [v12 timeIntervalSinceDate:v13];
  if (v14 >= 86400.0)
  {
    v16 = objc_alloc_init(getSDRDiagnosticReporterClass());
    v23 = VCPTaskIDDescription(a4);
    v17 = MEMORY[0x1E696AEC0];
    v18 = [v11 uuid];
    v19 = [v17 stringWithFormat:@"%@/%lld", v18, a6];
    v20 = [v16 signatureWithDomain:@"MediaAnalysis" type:@"ProcessingFailure" subType:v23 subtypeContext:v10 detectedProcess:@"com.apple.mediaanalysisd" triggerThresholdValues:v19];

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v36 = v11;
      *&v36[8] = 2112;
      *&v36[10] = v20;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VCPAutoBugCapture] Asset failed processing. Asset: %@, signature: %@", buf, 0x16u);
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __76__VCPAutoBugCapture_captureProcessingFailure_taskID_asset_previousAttempts___block_invoke;
    v24[3] = &unk_1E83502B0;
    v29 = &v31;
    v25 = v10;
    v26 = self;
    v27 = v12;
    v30 = a4;
    v21 = v20;
    v28 = v21;
    if (([v16 snapshotWithSignature:v21 delay:0 events:0 payload:0 actions:v24 reply:0.0] & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v36 = v21;
      *&v36[8] = 2112;
      *&v36[10] = v16;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPAutoBugCapture] Failed to report crash %@ to reporter %@", buf, 0x16u);
    }

    v15 = *(v32 + 24);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v36 = a4;
      *&v36[4] = 2112;
      *&v36[6] = v13;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VCPAutoBugCapture] Last report for task %u was %@", buf, 0x12u);
    }

    v15 = 0;
  }

  _Block_object_dispose(&v31, 8);
  return v15 & 1;
}

void __76__VCPAutoBugCapture_captureProcessingFailure_taskID_asset_previousAttempts___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getkSymptomDiagnosticReplySuccess();
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v5 BOOLValue];

  if (!v6)
  {
    v8 = getkSymptomDiagnosticReplyReason();
    v9 = [v3 objectForKeyedSubscript:v8];
    v10 = [v9 unsignedIntegerValue];

    if (v10 == getkSymptomDiagnosticErrorDailyLimitExceeded() || v10 == getkSymptomDiagnosticErrorRandomizedSuppression())
    {
      if (MediaAnalysisLogLevel() < 5 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v11 = *(a1 + 32);
      v18 = 138412290;
      v19 = v11;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "[VCPAutoBugCapture] %@ processing failure report was rate-limited (Expected non-report)";
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 12;
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v16 = *(a1 + 32);
      v17 = *(a1 + 56);
      v18 = 138412802;
      v19 = v16;
      v20 = 1024;
      v21 = v10;
      v22 = 2112;
      v23 = v17;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "[VCPAutoBugCapture] Failed to report %@ processing failure. reason: %d, signature: %@";
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 28;
    }

    _os_log_impl(&dword_1C9B70000, v12, v14, v13, &v18, v15);
    goto LABEL_15;
  }

  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v18 = 138412290;
    v19 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VCPAutoBugCapture] %@ processing failure was reported", &v18, 0xCu);
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
  [*(a1 + 40) setLastProcessingFailureReportTime:*(a1 + 48) forTask:*(a1 + 72)];
LABEL_15:
}

@end