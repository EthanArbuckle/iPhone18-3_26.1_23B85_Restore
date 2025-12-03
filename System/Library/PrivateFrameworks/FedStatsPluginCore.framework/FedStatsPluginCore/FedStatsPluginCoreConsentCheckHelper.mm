@interface FedStatsPluginCoreConsentCheckHelper
+ (BOOL)checkChinaAIEligibility;
+ (BOOL)checkDnU;
+ (BOOL)checkIDV;
+ (BOOL)checkIHA;
+ (void)checkIDV;
@end

@implementation FedStatsPluginCoreConsentCheckHelper

+ (BOOL)checkDnU
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isDiagnosticSubmissionAllowed = [mEMORY[0x277D262A0] isDiagnosticSubmissionAllowed];

  return isDiagnosticSubmissionAllowed;
}

+ (BOOL)checkIHA
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isHealthDataSubmissionAllowed = [mEMORY[0x277D262A0] isHealthDataSubmissionAllowed];

  return isHealthDataSubmissionAllowed;
}

+ (BOOL)checkIDV
{
  v2 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    +[FedStatsPluginCoreConsentCheckHelper checkIDV];
  }

  v3 = objc_alloc_init(MEMORY[0x277CFFE68]);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = __Block_byref_object_copy__0;
  v16[3] = __Block_byref_object_dispose__0;
  v17 = 0;
  v4 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__FedStatsPluginCoreConsentCheckHelper_checkIDV__block_invoke;
  v11[3] = &unk_278FF7970;
  v13 = &v15;
  v14 = &v18;
  v5 = v4;
  v12 = v5;
  [v3 fetchUserConsent:v11];
  v6 = dispatch_time(0, 15000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      +[FedStatsPluginCoreConsentCheckHelper checkIDV];
    }
  }

  else
  {
    v9 = v19[5];
    if (v9)
    {
      bOOLValue = [v9 BOOLValue];
      goto LABEL_9;
    }

    v7 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      +[(FedStatsPluginCoreConsentCheckHelper *)v16];
    }
  }

  bOOLValue = 0;
LABEL_9:

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v18, 8);

  return bOOLValue;
}

intptr_t __48__FedStatsPluginCoreConsentCheckHelper_checkIDV__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = [a3 copy];
    v5 = 40;
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:a2 == 0];
    v5 = 48;
  }

  v6 = *(*(a1 + v5) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  v8 = *(a1 + 32);

  return dispatch_semaphore_signal(v8);
}

+ (BOOL)checkChinaAIEligibility
{
  v2 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    +[FedStatsPluginCoreConsentCheckHelper checkChinaAIEligibility];
  }

  return 0;
}

+ (void)checkIDV
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(*self + 40);
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end