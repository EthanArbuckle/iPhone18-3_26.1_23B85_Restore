@interface HDMCDiagnosticsServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
+ (id)requiredEntitlements;
- (HDMCDiagnosticsServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 profileExtension:(id)a7;
- (void)remote_triggerAnalysisForDiagnosticsWithCompletion:(id)a3;
@end

@implementation HDMCDiagnosticsServer

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v13 profile];
  v16 = [v15 profileExtensionWithIdentifier:*MEMORY[0x277D11920]];

  if (v16)
  {
    v17 = [objc_alloc(objc_opt_class()) initWithUUID:v11 configuration:v12 client:v13 delegate:v14 profileExtension:v16];
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"No profile extension found for %@", objc_opt_class()}];
    if (v18)
    {
      if (a7)
      {
        v19 = v18;
        *a7 = v18;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v17 = 0;
  }

  return v17;
}

- (HDMCDiagnosticsServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 profileExtension:(id)a7
{
  v13 = a5;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = HDMCDiagnosticsServer;
  v15 = [(HDStandardTaskServer *)&v18 initWithUUID:a3 configuration:a4 client:v13 delegate:a6];
  if (v15)
  {
    v16 = [v13 profile];
    objc_storeWeak(&v15->_profile, v16);

    objc_storeStrong(&v15->_profileExtension, a7);
    objc_storeStrong(&v15->_client, a5);
  }

  return v15;
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC420];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)remote_triggerAnalysisForDiagnosticsWithCompletion:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 138543362;
    v14 = objc_opt_class();
    v7 = v14;
    _os_log_impl(&dword_2293D1000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Trigger analysis for diagnostics", buf, 0xCu);
  }

  v8 = dispatch_get_global_queue(25, 0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__HDMCDiagnosticsServer_remote_triggerAnalysisForDiagnosticsWithCompletion___block_invoke;
  v11[3] = &unk_27865AEF0;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  dispatch_async(v8, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __76__HDMCDiagnosticsServer_remote_triggerAnalysisForDiagnosticsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) analysisManager];
  v5 = 0;
  v3 = [v2 _analyzeWithForceIncludeCycles:1 forceAnalyzeCompleteHistory:1 error:&v5];
  v4 = v5;

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3 != 0, v4);
}

@end