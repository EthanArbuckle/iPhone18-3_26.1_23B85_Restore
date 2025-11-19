@interface LPKPerformanceTestIntermediary
+ (BOOL)_startUserSwitchTestForType:(unint64_t)a3 count:(int64_t)a4 username:(id)a5 password:(id)a6 loginDelay:(int64_t)a7 logoutDelay:(int64_t)a8 isPerformanceTest:(BOOL)a9;
+ (BOOL)endUserSwitchTest;
+ (BOOL)startPerformanceTestForType:(unint64_t)a3 count:(int64_t)a4 username:(id)a5 password:(id)a6 loginDelay:(int64_t)a7 logoutDelay:(int64_t)a8;
+ (id)_generateSharedipadTraceHelperCommand;
+ (id)endPerformanceTestAndDumpResults;
+ (int64_t)_disableKtrace;
+ (int64_t)_dumpKtraceResult;
+ (int64_t)_enableKtrace;
+ (void)_removeStoredValues;
+ (void)disableRestrictionlessLoginWithCompletionHandler:(id)a3;
+ (void)enableRestrictionlessLoginWithCompletionHandler:(id)a3;
@end

@implementation LPKPerformanceTestIntermediary

+ (BOOL)startPerformanceTestForType:(unint64_t)a3 count:(int64_t)a4 username:(id)a5 password:(id)a6 loginDelay:(int64_t)a7 logoutDelay:(int64_t)a8
{
  v13 = a5;
  v14 = a6;
  if ([MEMORY[0x277D244C0] isInternalBuild] && !+[LPKPerformanceTestIntermediary _enableKtrace](LPKPerformanceTestIntermediary, "_enableKtrace"))
  {
    LOBYTE(v17) = 1;
    v15 = [LPKPerformanceTestIntermediary _startUserSwitchTestForType:a3 count:a4 username:v13 password:v14 loginDelay:a7 logoutDelay:a8 isPerformanceTest:v17];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)endPerformanceTestAndDumpResults
{
  if (![MEMORY[0x277D244C0] isInternalBuild] || +[LPKPerformanceTestIntermediary _disableKtrace](LPKPerformanceTestIntermediary, "_disableKtrace") || (objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "fileExistsAtPath:", @"/tmp/perf_test_result.json"), v4, (v5 & 1) == 0) && +[LPKPerformanceTestIntermediary _dumpKtraceResult](LPKPerformanceTestIntermediary, "_dumpKtraceResult"))
  {
    v2 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:@"/tmp/perf_test_result.json"];
    v15 = 0;
    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v15];
    v8 = v15;
    if (v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      NSLog(&cfstr_FailedToDeseri.isa, v8);
      v2 = 0;
    }

    else
    {
      NSLog(&cfstr_DeserializePer.isa);
      v9 = [MEMORY[0x277D244D0] sharedStorage];
      v10 = [v9 retrieveValueForKey:@"loginctlPerfTestType"];
      v11 = [v10 integerValue];

      v12 = [MEMORY[0x277D244D0] sharedStorage];
      v13 = [v12 retrieveValueForKey:@"loginctlPerfTestCount"];
      v14 = [v13 integerValue];

      v2 = [LPKPerfResultAnalyzer analyzePerformanceTestResult:v7 type:v11 count:v14];
      if (!+[LPKPerformanceTestIntermediary endUserSwitchTest])
      {
        NSLog(&cfstr_NoUserSwitchTe.isa);
      }
    }
  }

  return v2;
}

+ (BOOL)_startUserSwitchTestForType:(unint64_t)a3 count:(int64_t)a4 username:(id)a5 password:(id)a6 loginDelay:(int64_t)a7 logoutDelay:(int64_t)a8 isPerformanceTest:(BOOL)a9
{
  v45[4] = *MEMORY[0x277D85DE8];
  v15 = a5;
  v16 = a6;
  v17 = [MEMORY[0x277D244D0] sharedStorage];
  v18 = [v17 retrieveValueForKey:@"LPKIsLocalUserSwitchTestOngoing"];

  if (v18)
  {
    NSLog(&cfstr_ThereSALocalTe.isa);
    v19 = 0;
  }

  else
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 1;
    [a1 _removeStoredValues];
    NSLog(&cfstr_StoringTestSta.isa);
    v29 = dispatch_semaphore_create(0);
    v30 = [MEMORY[0x277D244D0] sharedStorage];
    v44[0] = @"loginctlPerfTestType";
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v45[0] = v20;
    v44[1] = @"loginctlPerfTestCount";
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v45[1] = v21;
    v44[2] = @"LPKLocalUserSwitchTestIsPerformanceTest";
    v22 = [MEMORY[0x277CCABB0] numberWithBool:a9];
    v23 = v22;
    v44[3] = @"LPKLocalUserSwitchTestRetryCount";
    v24 = &unk_28683E070;
    if (a9)
    {
      v24 = &unk_28683E058;
    }

    v45[2] = v22;
    v45[3] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:4];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __127__LPKPerformanceTestIntermediary__startUserSwitchTestForType_count_username_password_loginDelay_logoutDelay_isPerformanceTest___block_invoke;
    v31[3] = &unk_279827D68;
    v32 = v15;
    v36 = a3;
    v37 = a4;
    v38 = a7;
    v39 = a8;
    v33 = v16;
    v35 = &v40;
    v26 = v29;
    v34 = v26;
    [v30 saveKeyValuePairs:v25 completionHandler:v31];

    dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
    if (v41[3])
    {
      v19 = 1;
    }

    else
    {
      +[LPKPerformanceTestIntermediary _removeStoredValues];
      v19 = *(v41 + 24);
    }

    _Block_object_dispose(&v40, 8);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

void __127__LPKPerformanceTestIntermediary__startUserSwitchTestForType_count_username_password_loginDelay_logoutDelay_isPerformanceTest___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    NSLog(&cfstr_TestStatesStor.isa, *(a1 + 32));
    v4 = [MEMORY[0x277D244B0] sharedController];
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 80);
    v10 = *(a1 + 88);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __127__LPKPerformanceTestIntermediary__startUserSwitchTestForType_count_username_password_loginDelay_logoutDelay_isPerformanceTest___block_invoke_2;
    v14[3] = &unk_279827D40;
    v13 = *(a1 + 48);
    v11 = v13;
    v15 = v13;
    [v4 triggerLocalUserSwitchTestForType:v5 count:v6 username:v7 password:v8 loginDelay:v9 logoutDelay:v10 completionHandler:v14];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    NSLog(&cfstr_FailedToStartT.isa, a3);
    v12 = *(a1 + 48);

    dispatch_semaphore_signal(v12);
  }
}

intptr_t __127__LPKPerformanceTestIntermediary__startUserSwitchTestForType_count_username_password_loginDelay_logoutDelay_isPerformanceTest___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    NSLog(&cfstr_FailedToTrigge.isa, a2);
  }

  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

+ (BOOL)endUserSwitchTest
{
  v3 = [MEMORY[0x277D244D0] sharedStorage];
  v4 = [v3 retrieveValueForKey:@"LPKLocalUserSwitchTestHasFinishedSuccessfully"];
  v5 = [v4 BOOLValue];

  [a1 _removeStoredValues];
  v6 = [MEMORY[0x277D244B0] sharedController];
  [v6 interruptLocalUserSwitchTest];

  return v5;
}

+ (void)enableRestrictionlessLoginWithCompletionHandler:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D244D0];
  v4 = a3;
  v5 = [v3 sharedStorage];
  v8 = @"isRestrictionlessLoginEnabled";
  v9[0] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v5 saveKeyValuePairs:v6 completionHandler:v4];

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)disableRestrictionlessLoginWithCompletionHandler:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D244D0];
  v4 = a3;
  v5 = [v3 sharedStorage];
  v8[0] = @"isRestrictionlessLoginEnabled";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v5 clearKeys:v6 completionHandler:v4];

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)_removeStoredValues
{
  v9[11] = *MEMORY[0x277D85DE8];
  v2 = dispatch_semaphore_create(0);
  v3 = [MEMORY[0x277D244D0] sharedStorage];
  v9[0] = @"LPKIsLocalUserSwitchTestOngoing";
  v9[1] = @"LPKLocalUserSwitchTestType";
  v9[2] = @"LPKLocalUserSwitchTestRemainCycleCount";
  v9[3] = @"LPKLocalUserSwitchTestUsername";
  v9[4] = @"LPKLocalUserSwitchTestPassword";
  v9[5] = @"LPKLocalUserSwitchTestHasFinishedSuccessfully";
  v9[6] = @"LPKLocalUserSwitchTestRetryCount";
  v9[7] = @"LPKLocalUserSwitchTestIsPerformanceTest";
  v9[8] = @"TestHasBeenPrewarmed";
  v9[9] = @"LPKLocalUserSwitchTestLoginDelay";
  v9[10] = @"LPKLocalUserSwitchTestLogoutDelay";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:11];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__LPKPerformanceTestIntermediary__removeStoredValues__block_invoke;
  v7[3] = &unk_279827D90;
  v8 = v2;
  v5 = v2;
  [v3 clearKeys:v4 completionHandler:v7];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = *MEMORY[0x277D85DE8];
}

+ (int64_t)_enableKtrace
{
  v2 = system("rm /tmp/perf_test_result.trace");
  NSLog(&cfstr_RemoveOldResul.isa, v2);
  v3 = system("rm /tmp/perf_test_result.json");
  NSLog(&cfstr_RemoveOldResul_0.isa, v3);
  v4 = system("/usr/bin/ktrace remove");
  v5 = v4;
  NSLog(&cfstr_RemoveOldKtrac.isa, v4);
  if (!v5)
  {
    v6 = system("/usr/bin/ktrace init -b 200");
    v5 = v6;
    NSLog(&cfstr_InitializeKtra.isa, v6);
    if (!v5)
    {
      v7 = system("/usr/bin/ktrace setopt -w -f S0x2B84,S0x2BAB,S0x2BAD,S0x2BB1,S0x2B85,S0x2B8A,S0x2B52,S0x2B71,S0x2B6D,S0x2B6E,S0x3410");
      v5 = v7;
      NSLog(&cfstr_SetupKtraceOut.isa, v7);
      if (!v5)
      {
        v8 = system("/usr/bin/ktrace enable");
        v5 = v8;
        NSLog(&cfstr_EnableKtraceD.isa, v8);
      }
    }
  }

  return v5;
}

+ (int64_t)_disableKtrace
{
  v2 = system("/usr/bin/ktrace disable");
  v3 = v2;
  NSLog(&cfstr_DisableKtraceD.isa, v2);
  return v3;
}

+ (int64_t)_dumpKtraceResult
{
  v3 = system("/usr/bin/ktrace dump -E /tmp/perf_test_result.trace");
  v4 = v3;
  NSLog(&cfstr_DumpPerfResult.isa, v3);
  if (!v4)
  {
    v5 = [a1 _generateSharedipadTraceHelperCommand];
    v6 = system([v5 UTF8String]);

    NSLog(&cfstr_GenerateSignpo.isa, v6);
    if (!v6)
    {
      v6 = system("ktrace trace -R /tmp/perf_test_result.trace -C /tmp/signposts.codes -fS0x2B84,S0x2BAB,S0x2BAD,S0x2BB1,S0x2B85,S0x2B8A,S0x2B71,S0x2B6D,S0x2B6E --json > /tmp/perf_test_result.json");
      NSLog(&cfstr_GeneratePerfRe.isa, v6);
    }

    return v6;
  }

  return v4;
}

+ (id)_generateSharedipadTraceHelperCommand
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB68] stringWithFormat:@"/usr/local/bin/sharedipadtracehelper make -codes %@ -plists ", @"/tmp/signposts.codes"];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [&unk_28683E088 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(&unk_28683E088);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (!access([v7 UTF8String], 4))
        {
          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@ ", v7];
          [v2 appendString:v8];
        }
      }

      v4 = [&unk_28683E088 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

@end