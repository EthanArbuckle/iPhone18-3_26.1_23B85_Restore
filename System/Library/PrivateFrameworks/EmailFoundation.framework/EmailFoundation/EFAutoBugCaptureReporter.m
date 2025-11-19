@interface EFAutoBugCaptureReporter
+ (EFAutoBugCaptureReporter)sharedReporter;
+ (OS_os_log)log;
- (EFAutoBugCaptureReporter)init;
- (void)reportIssueType:(id)a3 description:(id)a4;
@end

@implementation EFAutoBugCaptureReporter

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__EFAutoBugCaptureReporter_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __31__EFAutoBugCaptureReporter_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log;
  log_log = v1;
}

+ (EFAutoBugCaptureReporter)sharedReporter
{
  if (sharedReporter_onceToken != -1)
  {
    +[EFAutoBugCaptureReporter sharedReporter];
  }

  v3 = sharedReporter_sDiagnosticReporter;

  return v3;
}

void __42__EFAutoBugCaptureReporter_sharedReporter__block_invoke()
{
  v0 = objc_alloc_init(EFAutoBugCaptureReporter);
  v1 = sharedReporter_sDiagnosticReporter;
  sharedReporter_sDiagnosticReporter = v0;
}

- (EFAutoBugCaptureReporter)init
{
  v6.receiver = self;
  v6.super_class = EFAutoBugCaptureReporter;
  v2 = [(EFAutoBugCaptureReporter *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69D4F80]) initWithQueue:0];
    diagnosticReporter = v2->_diagnosticReporter;
    v2->_diagnosticReporter = v3;
  }

  return v2;
}

- (void)reportIssueType:(id)a3 description:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[EFDevice currentDevice];
  if ([v8 isInternal])
  {
  }

  else
  {
    v9 = EFIsSeedBuild();

    if ((v9 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v10 = +[EFAutoBugCaptureReporter log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    [EFAutoBugCaptureReporter reportIssueType:v7 description:v10];
  }

LABEL_7:
  v11 = [(EFAutoBugCaptureReporter *)self diagnosticReporter];
  v12 = [MEMORY[0x1E696AAE8] mainBundle];
  v13 = [v12 bundleIdentifier];
  v14 = [v11 signatureWithDomain:@"MobileMail" type:v6 subType:v7 detectedProcess:v13 triggerThresholdValues:0];

  v15 = [(EFAutoBugCaptureReporter *)self diagnosticReporter];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__EFAutoBugCaptureReporter_reportIssueType_description___block_invoke;
  v17[3] = &unk_1E8248780;
  v16 = v7;
  v18 = v16;
  [v15 snapshotWithSignature:v14 duration:0 event:0 payload:v17 reply:0.0];
}

void __56__EFAutoBugCaptureReporter_reportIssueType_description___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[EFAutoBugCaptureReporter log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__EFAutoBugCaptureReporter_reportIssueType_description___block_invoke_cold_1(v3, a1, v4);
  }
}

- (void)reportIssueType:(uint64_t)a1 description:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1C6152000, a2, OS_LOG_TYPE_FAULT, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __56__EFAutoBugCaptureReporter_reportIssueType_description___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_1C6152000, log, OS_LOG_TYPE_ERROR, "SDRDiagnosticReporter response = %@, issue = %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end