@interface PKAutoBugCaptureReporter
- (BOOL)shouldReportIssueOfType:(id)type;
- (void)handleResponse:(id)response;
- (void)reportIssueWithDomain:(id)domain type:(id)type subtype:(id)subtype subtypeContext:(id)context payload:(id)payload;
@end

@implementation PKAutoBugCaptureReporter

- (void)reportIssueWithDomain:(id)domain type:(id)type subtype:(id)subtype subtypeContext:(id)context payload:(id)payload
{
  v37 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  typeCopy = type;
  subtypeCopy = subtype;
  contextCopy = context;
  payloadCopy = payload;
  if (![(PKAutoBugCaptureReporter *)self isRunningUnitTests])
  {
    if ([(PKAutoBugCaptureReporter *)self shouldReportIssueOfType:typeCopy])
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      processName = [processInfo processName];
      v19 = processName;
      if (processName)
      {
        bundleIdentifier = processName;
      }

      else
      {
        mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];
      }

      sdrReporter = self->sdrReporter;
      if (!sdrReporter)
      {
        v23 = objc_alloc_init(MEMORY[0x1E69D4F80]);
        v24 = self->sdrReporter;
        self->sdrReporter = v23;

        sdrReporter = self->sdrReporter;
      }

      v25 = [(SDRDiagnosticReporter *)sdrReporter signatureWithDomain:domainCopy type:typeCopy subType:subtypeCopy subtypeContext:contextCopy detectedProcess:bundleIdentifier triggerThresholdValues:0];
      v26 = PKLogFacilityTypeGetObject(5uLL);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v30 = domainCopy;
        v31 = 2112;
        v32 = typeCopy;
        v33 = 2112;
        v34 = subtypeCopy;
        v35 = 2112;
        v36 = contextCopy;
        _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_INFO, "AutoBugCapture - Submitting snapshot request to ABC for signature: %@.%@.%@.%@", buf, 0x2Au);
      }

      v27 = self->sdrReporter;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __86__PKAutoBugCaptureReporter_reportIssueWithDomain_type_subtype_subtypeContext_payload___block_invoke;
      v28[3] = &unk_1E79D0058;
      v28[4] = self;
      [(SDRDiagnosticReporter *)v27 snapshotWithSignature:v25 duration:0 event:payloadCopy payload:v28 reply:0.0];
    }

    else
    {
      bundleIdentifier = PKLogFacilityTypeGetObject(5uLL);
      if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v30 = domainCopy;
        v31 = 2112;
        v32 = typeCopy;
        v33 = 2112;
        v34 = subtypeCopy;
        v35 = 2112;
        v36 = contextCopy;
        _os_log_impl(&dword_1AD337000, bundleIdentifier, OS_LOG_TYPE_INFO, "AutoBugCapture - Not reporting to AutoBugCapture because we are rate limited: %@.%@.%@.%@", buf, 0x2Au);
      }
    }
  }
}

- (void)handleResponse:(id)response
{
  *&v15[5] = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v5 = [responseCopy objectForKeyedSubscript:*MEMORY[0x1E69D50D0]];
  bOOLValue = [v5 BOOLValue];

  if (!bOOLValue)
  {
    v9 = [responseCopy objectForKeyedSubscript:*MEMORY[0x1E69D50A0]];
    intValue = [v9 intValue];

    v7 = [responseCopy objectForKeyedSubscript:*MEMORY[0x1E69D50B0]];
    v11 = [(PKAutoBugCaptureReporter *)self isExpectedFailureReason:intValue];
    v8 = PKLogFacilityTypeGetObject(5uLL);
    v12 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      if (!v12)
      {
        goto LABEL_8;
      }

      v14 = 67109378;
      v15[0] = intValue;
      LOWORD(v15[1]) = 2112;
      *(&v15[1] + 2) = v7;
      v13 = "AutoBugCapture - Diagnostic reporter snapshot rejected with expected reason %d (%@)";
    }

    else
    {
      if (!v12)
      {
        goto LABEL_8;
      }

      v14 = 67109378;
      v15[0] = intValue;
      LOWORD(v15[1]) = 2112;
      *(&v15[1] + 2) = v7;
      v13 = "AutoBugCapture - Diagnostic reporter snapshot rejected with unexpected reason %d (%@)";
    }

    _os_log_error_impl(&dword_1AD337000, v8, OS_LOG_TYPE_ERROR, v13, &v14, 0x12u);
    goto LABEL_8;
  }

  v7 = [responseCopy objectForKeyedSubscript:*MEMORY[0x1E69D50C0]];
  v8 = PKLogFacilityTypeGetObject(5uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    *v15 = v7;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_INFO, "AutoBugCapture - Diagnostic reporter snapshot accepted with sessionID %@", &v14, 0xCu);
  }

LABEL_8:
}

- (BOOL)shouldReportIssueOfType:(id)type
{
  typeCopy = type;
  v4 = [MEMORY[0x1E695DF00] now];
  os_unfair_lock_lock(&_MergedGlobals_213);
  v5 = qword_1ED6D19B8;
  if (!qword_1ED6D19B8)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = qword_1ED6D19B8;
    qword_1ED6D19B8 = v6;

    v5 = qword_1ED6D19B8;
  }

  v8 = [v5 objectForKeyedSubscript:typeCopy];
  if (v8 && ([v4 timeIntervalSinceDate:v8], v9 < 86400.0))
  {
    v10 = 0;
  }

  else
  {
    [qword_1ED6D19B8 setObject:v4 forKeyedSubscript:typeCopy];
    v10 = 1;
  }

  os_unfair_lock_unlock(&_MergedGlobals_213);

  return v10;
}

@end