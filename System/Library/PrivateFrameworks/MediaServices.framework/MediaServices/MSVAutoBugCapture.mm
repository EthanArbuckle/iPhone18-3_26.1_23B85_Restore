@interface MSVAutoBugCapture
+ (void)snapshotWithDomain:(id)a3 type:(id)a4 subType:(id)a5 context:(id)a6 triggerThresholdValues:(id)a7 events:(id)a8 completion:(id)a9;
@end

@implementation MSVAutoBugCapture

+ (void)snapshotWithDomain:(id)a3 type:(id)a4 subType:(id)a5 context:(id)a6 triggerThresholdValues:(id)a7 events:(id)a8 completion:(id)a9
{
  v39[2] = *MEMORY[0x1E69E9840];
  v29 = a3;
  v30 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  if ([a1 _isReporterEnabled])
  {
    v20 = os_log_create("com.apple.amp.MediaServices", "Analytics");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      *&buf[4] = v30;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      *&buf[22] = 2112;
      v38 = v16;
      LOWORD(v39[0]) = 2112;
      *(v39 + 2) = v17;
      _os_log_impl(&dword_1AC81F000, v20, OS_LOG_TYPE_DEFAULT, "SymptomDiagnosticReporter starting to report a snapshot with type:%@ subType:%@ context:%@ thresholdValues:%@", buf, 0x2Au);
    }

    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v21 = getSDRDiagnosticReporterClass_softClass;
    v36 = getSDRDiagnosticReporterClass_softClass;
    if (!getSDRDiagnosticReporterClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getSDRDiagnosticReporterClass_block_invoke;
      v38 = &unk_1E79828C0;
      v39[0] = &v33;
      __getSDRDiagnosticReporterClass_block_invoke(buf);
      v21 = v34[3];
    }

    v22 = v21;
    _Block_object_dispose(&v33, 8);
    v23 = objc_alloc_init(v21);
    v24 = [MEMORY[0x1E696AE30] processInfo];
    v25 = [v24 processName];

    v26 = [v23 signatureWithDomain:v29 type:v30 subType:v15 subtypeContext:v16 detectedProcess:v25 triggerThresholdValues:v17];
    v27 = _MSVTransformStateValue(v18);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __102__MSVAutoBugCapture_snapshotWithDomain_type_subType_context_triggerThresholdValues_events_completion___block_invoke;
    v31[3] = &unk_1E7982590;
    v32 = v19;
    [v23 snapshotWithSignature:v26 delay:v27 events:0 payload:MEMORY[0x1E695E0F8] actions:v31 reply:0.0];
  }

  else if (v19)
  {
    v19[2](v19);
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __102__MSVAutoBugCapture_snapshotWithDomain_type_subType_context_triggerThresholdValues_events_completion___block_invoke(uint64_t a1, void *a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v4 = getkSymptomDiagnosticReplySuccessSymbolLoc_ptr;
  v61 = getkSymptomDiagnosticReplySuccessSymbolLoc_ptr;
  if (!getkSymptomDiagnosticReplySuccessSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getkSymptomDiagnosticReplySuccessSymbolLoc_block_invoke;
    v63 = &unk_1E79828C0;
    v64 = &v58;
    v5 = SymptomDiagnosticReporterLibrary();
    v6 = dlsym(v5, "kSymptomDiagnosticReplySuccess");
    *(v64[1] + 24) = v6;
    getkSymptomDiagnosticReplySuccessSymbolLoc_ptr = *(v64[1] + 24);
    v4 = v59[3];
  }

  _Block_object_dispose(&v58, 8);
  if (!v4)
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSymptomDiagnosticReplySuccess(void)"];
    [v42 handleFailureInFunction:v43 file:@"MSVAutoBugCapture.m" lineNumber:33 description:{@"%s", dlerror()}];

    goto LABEL_49;
  }

  v7 = [v3 objectForKeyedSubscript:*v4];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v9 = getkSymptomDiagnosticReplySessionIDSymbolLoc_ptr;
    v61 = getkSymptomDiagnosticReplySessionIDSymbolLoc_ptr;
    if (!getkSymptomDiagnosticReplySessionIDSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getkSymptomDiagnosticReplySessionIDSymbolLoc_block_invoke;
      v63 = &unk_1E79828C0;
      v64 = &v58;
      v10 = SymptomDiagnosticReporterLibrary();
      v11 = dlsym(v10, "kSymptomDiagnosticReplySessionID");
      *(v64[1] + 24) = v11;
      getkSymptomDiagnosticReplySessionIDSymbolLoc_ptr = *(v64[1] + 24);
      v9 = v59[3];
    }

    _Block_object_dispose(&v58, 8);
    if (v9)
    {
      v12 = *v9;
      v13 = [v3 objectForKeyedSubscript:v12];

      v14 = os_log_create("com.apple.amp.MediaServices", "Analytics");
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      *buf = 138412290;
      *&buf[4] = v13;
      v15 = "SymptomDiagnosticReporter snapshot accepted with sessionID %@";
      v16 = v14;
      v17 = OS_LOG_TYPE_DEFAULT;
      v18 = 12;
      goto LABEL_35;
    }

    v44 = [MEMORY[0x1E696AAA8] currentHandler];
    v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSymptomDiagnosticReplySessionID(void)"];
    [v44 handleFailureInFunction:v45 file:@"MSVAutoBugCapture.m" lineNumber:34 description:{@"%s", dlerror()}];

LABEL_49:
    __break(1u);
  }

  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v19 = getkSymptomDiagnosticReplyReasonSymbolLoc_ptr;
  v61 = getkSymptomDiagnosticReplyReasonSymbolLoc_ptr;
  if (!getkSymptomDiagnosticReplyReasonSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getkSymptomDiagnosticReplyReasonSymbolLoc_block_invoke;
    v63 = &unk_1E79828C0;
    v64 = &v58;
    v20 = SymptomDiagnosticReporterLibrary();
    v21 = dlsym(v20, "kSymptomDiagnosticReplyReason");
    *(v64[1] + 24) = v21;
    getkSymptomDiagnosticReplyReasonSymbolLoc_ptr = *(v64[1] + 24);
    v19 = v59[3];
  }

  _Block_object_dispose(&v58, 8);
  if (!v19)
  {
    v46 = [MEMORY[0x1E696AAA8] currentHandler];
    v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSymptomDiagnosticReplyReason(void)"];
    [v46 handleFailureInFunction:v47 file:@"MSVAutoBugCapture.m" lineNumber:35 description:{@"%s", dlerror()}];

    goto LABEL_49;
  }

  v22 = [v3 objectForKeyedSubscript:*v19];
  v23 = [v22 intValue];

  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v24 = getkSymptomDiagnosticReplyReasonStringSymbolLoc_ptr;
  v61 = getkSymptomDiagnosticReplyReasonStringSymbolLoc_ptr;
  if (!getkSymptomDiagnosticReplyReasonStringSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getkSymptomDiagnosticReplyReasonStringSymbolLoc_block_invoke;
    v63 = &unk_1E79828C0;
    v64 = &v58;
    v25 = SymptomDiagnosticReporterLibrary();
    v26 = dlsym(v25, "kSymptomDiagnosticReplyReasonString");
    *(v64[1] + 24) = v26;
    getkSymptomDiagnosticReplyReasonStringSymbolLoc_ptr = *(v64[1] + 24);
    v24 = v59[3];
  }

  _Block_object_dispose(&v58, 8);
  if (!v24)
  {
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSymptomDiagnosticReplyReasonString(void)"];
    [v48 handleFailureInFunction:v49 file:@"MSVAutoBugCapture.m" lineNumber:36 description:{@"%s", dlerror()}];

    goto LABEL_49;
  }

  v27 = *v24;
  v13 = [v3 objectForKeyedSubscript:v27];

  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v28 = getkSymptomDiagnosticErrorDisabledSymbolLoc_ptr;
  v61 = getkSymptomDiagnosticErrorDisabledSymbolLoc_ptr;
  if (!getkSymptomDiagnosticErrorDisabledSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getkSymptomDiagnosticErrorDisabledSymbolLoc_block_invoke;
    v63 = &unk_1E79828C0;
    v64 = &v58;
    v29 = SymptomDiagnosticReporterLibrary();
    v30 = dlsym(v29, "kSymptomDiagnosticErrorDisabled");
    *(v64[1] + 24) = v30;
    getkSymptomDiagnosticErrorDisabledSymbolLoc_ptr = *(v64[1] + 24);
    v28 = v59[3];
  }

  _Block_object_dispose(&v58, 8);
  if (!v28)
  {
    v50 = [MEMORY[0x1E696AAA8] currentHandler];
    v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int getkSymptomDiagnosticErrorDisabled(void)"];
    [v50 handleFailureInFunction:v51 file:@"MSVAutoBugCapture.m" lineNumber:38 description:{@"%s", dlerror()}];

    goto LABEL_49;
  }

  if (*v28 == v23)
  {
    goto LABEL_32;
  }

  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v31 = getkSymptomDiagnosticErrorHourlyLimitExceededSymbolLoc_ptr;
  v61 = getkSymptomDiagnosticErrorHourlyLimitExceededSymbolLoc_ptr;
  if (!getkSymptomDiagnosticErrorHourlyLimitExceededSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getkSymptomDiagnosticErrorHourlyLimitExceededSymbolLoc_block_invoke;
    v63 = &unk_1E79828C0;
    v64 = &v58;
    v32 = SymptomDiagnosticReporterLibrary();
    v33 = dlsym(v32, "kSymptomDiagnosticErrorHourlyLimitExceeded");
    *(v64[1] + 24) = v33;
    getkSymptomDiagnosticErrorHourlyLimitExceededSymbolLoc_ptr = *(v64[1] + 24);
    v31 = v59[3];
  }

  _Block_object_dispose(&v58, 8);
  if (!v31)
  {
    v52 = [MEMORY[0x1E696AAA8] currentHandler];
    v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int getkSymptomDiagnosticErrorHourlyLimitExceeded(void)"];
    [v52 handleFailureInFunction:v53 file:@"MSVAutoBugCapture.m" lineNumber:39 description:{@"%s", dlerror()}];

    goto LABEL_49;
  }

  if (*v31 == v23)
  {
    goto LABEL_32;
  }

  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v34 = getkSymptomDiagnosticErrorDailyLimitExceededSymbolLoc_ptr;
  v61 = getkSymptomDiagnosticErrorDailyLimitExceededSymbolLoc_ptr;
  if (!getkSymptomDiagnosticErrorDailyLimitExceededSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getkSymptomDiagnosticErrorDailyLimitExceededSymbolLoc_block_invoke;
    v63 = &unk_1E79828C0;
    v64 = &v58;
    v35 = SymptomDiagnosticReporterLibrary();
    v36 = dlsym(v35, "kSymptomDiagnosticErrorDailyLimitExceeded");
    *(v64[1] + 24) = v36;
    getkSymptomDiagnosticErrorDailyLimitExceededSymbolLoc_ptr = *(v64[1] + 24);
    v34 = v59[3];
  }

  _Block_object_dispose(&v58, 8);
  if (!v34)
  {
    v54 = [MEMORY[0x1E696AAA8] currentHandler];
    v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int getkSymptomDiagnosticErrorDailyLimitExceeded(void)"];
    [v54 handleFailureInFunction:v55 file:@"MSVAutoBugCapture.m" lineNumber:40 description:{@"%s", dlerror()}];

    goto LABEL_49;
  }

  if (*v34 == v23)
  {
    goto LABEL_32;
  }

  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v37 = getkSymptomDiagnosticErrorRandomizedSuppressionSymbolLoc_ptr;
  v61 = getkSymptomDiagnosticErrorRandomizedSuppressionSymbolLoc_ptr;
  if (!getkSymptomDiagnosticErrorRandomizedSuppressionSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getkSymptomDiagnosticErrorRandomizedSuppressionSymbolLoc_block_invoke;
    v63 = &unk_1E79828C0;
    v64 = &v58;
    v38 = SymptomDiagnosticReporterLibrary();
    v39 = dlsym(v38, "kSymptomDiagnosticErrorRandomizedSuppression");
    *(v64[1] + 24) = v39;
    getkSymptomDiagnosticErrorRandomizedSuppressionSymbolLoc_ptr = *(v64[1] + 24);
    v37 = v59[3];
  }

  _Block_object_dispose(&v58, 8);
  if (!v37)
  {
    v56 = [MEMORY[0x1E696AAA8] currentHandler];
    v57 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int getkSymptomDiagnosticErrorRandomizedSuppression(void)"];
    [v56 handleFailureInFunction:v57 file:@"MSVAutoBugCapture.m" lineNumber:41 description:{@"%s", dlerror()}];

    goto LABEL_49;
  }

  if (*v37 == v23)
  {
LABEL_32:
    v14 = os_log_create("com.apple.amp.MediaServices", "Analytics");
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    *buf = 67109378;
    *&buf[4] = v23;
    *&buf[8] = 2112;
    *&buf[10] = v13;
    v15 = "SymptomDiagnosticReporter snapshot rejected with expected reason %d (%@)";
    v16 = v14;
    v17 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_34;
  }

  v14 = os_log_create("com.apple.amp.MediaServices", "Analytics");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109378;
    *&buf[4] = v23;
    *&buf[8] = 2112;
    *&buf[10] = v13;
    v15 = "SymptomDiagnosticReporter snapshot rejected with unexpected reason %d (%@)";
    v16 = v14;
    v17 = OS_LOG_TYPE_ERROR;
LABEL_34:
    v18 = 18;
LABEL_35:
    _os_log_impl(&dword_1AC81F000, v16, v17, v15, buf, v18);
  }

LABEL_36:

  v40 = *(a1 + 32);
  if (v40)
  {
    (*(v40 + 16))();
  }

  v41 = *MEMORY[0x1E69E9840];
}

@end