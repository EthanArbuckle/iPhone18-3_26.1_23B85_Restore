@interface MSNTTR
+ (id)sharedInstance;
- (BOOL)TTRInProgress;
- (uint64_t)continueTTR;
- (void)beginTTRWithTitle:(id)a3;
- (void)beginTTRWithTitle:(id)a3 date:(id)a4;
- (void)completeTTR:(id)a3;
- (void)continueTTR;
- (void)handleCallback:(unint64_t)a3;
@end

@implementation MSNTTR

+ (id)sharedInstance
{
  if (os_variant_allows_internal_security_policies())
  {
    if (sharedInstance_onceToken != -1)
    {
      +[MSNTTR sharedInstance];
    }

    v2 = sharedInstance_ttr;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __24__MSNTTR_sharedInstance__block_invoke()
{
  sharedInstance_ttr = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)beginTTRWithTitle:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 date];
  [(MSNTTR *)self beginTTRWithTitle:v5 date:v6];
}

- (void)beginTTRWithTitle:(id)a3 date:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ((os_variant_allows_internal_security_policies() & 1) == 0)
  {
    qword_27F958928 = "TTR instance should not exist on customer build.";
    v30 = MSNLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [MSNTTR beginTTRWithTitle:date:];
    }

LABEL_21:

    abort();
  }

  v8 = +[MSNTTR sharedInstance];

  if (v8 != self)
  {
    qword_27F958928 = "MSNTTR is a singleton.";
    v30 = MSNLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [MSNTTR beginTTRWithTitle:date:];
    }

    goto LABEL_21;
  }

  v9 = [(MSNTTR *)self TTRInProgress];
  v10 = MSNLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_258731000, v10, OS_LOG_TYPE_INFO, "Suppressing TTR due to TTR already in progress.", buf, 2u);
    }
  }

  else
  {
    v31 = self;
    v33 = v7;
    if (v11)
    {
      *buf = 138412290;
      v35 = v6;
      _os_log_impl(&dword_258731000, v10, OS_LOG_TYPE_INFO, "Attemting TTR: %@", buf, 0xCu);
    }

    v10 = objc_alloc_init(MEMORY[0x277CCAB50]);
    v12 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
    [v10 formUnionWithCharacterSet:v12];

    [v10 removeCharactersInString:@"&"];
    v13 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v13 setDateFormat:@"HH:mm:ss"];
    v14 = [MEMORY[0x277CBEBB0] systemTimeZone];
    [v13 setTimeZone:v14];

    v15 = MEMORY[0x277CCACA8];
    [v6 stringByAddingPercentEncodingWithAllowedCharacters:v10];
    v17 = v16 = v6;
    v18 = [@"MediaSafetyNet" stringByAddingPercentEncodingWithAllowedCharacters:v10];
    v19 = [@"all" stringByAddingPercentEncodingWithAllowedCharacters:v10];
    v20 = [@"1066524" stringByAddingPercentEncodingWithAllowedCharacters:v10];
    v21 = MEMORY[0x277CCACA8];
    v22 = [v13 stringFromDate:v7];
    v32 = v16;
    v23 = [v21 stringWithFormat:@"The mic or camera was unexpectedly used on the home/lock screen. Describe what you were doing, especially whether you were intentionally recording. Say what apps you were using and whether you noticed any indicators (such as double-height status bar or pill). The recorded device state was:\n\n%@\n\nThe event occurred at: %@", v16, v22];
    v24 = [v23 stringByAddingPercentEncodingWithAllowedCharacters:v10];
    v25 = [v15 stringWithFormat:@"tap-to-radar://new?Title=%@&ComponentName=%@&ComponentVersion=%@&Reproducibility=Not%%20Applicable&ComponentID=%@&Classification=Crash/Hang/Data%%20Loss&Description=%@", v17, v18, v19, v20, v24];

    v26 = [MEMORY[0x277CBEBC0] URLWithString:v25];
    [(MSNTTR *)v31 setUrl:v26];

    v27 = MSNLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v35 = v25;
      _os_log_impl(&dword_258731000, v27, OS_LOG_TYPE_INFO, "TTR: %@", buf, 0xCu);
    }

    if (g_uiState == 1)
    {
      v28 = MSNLog();
      v7 = v33;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_258731000, v28, OS_LOG_TYPE_INFO, "Delaying TTR due to lockscreen.", buf, 2u);
      }

      [(MSNTTR *)v31 setPendedTTR:1];
    }

    else
    {
      [(MSNTTR *)v31 continueTTR];
      v7 = v33;
    }

    v6 = v32;
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (BOOL)TTRInProgress
{
  v2 = [(MSNTTR *)self url];
  v3 = v2 != 0;

  return v3;
}

- (void)continueTTR
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleCallback:(unint64_t)a3
{
  v5 = [(MSNTTR *)self url];
  [(MSNTTR *)self setUrl:0];
  CFPreferencesSetAppValue(@"MediaSafetyNetWaitingTTR", 0, @"com.apple.mediaserverd");
  CFPreferencesAppSynchronize(@"com.apple.mediaserverd");
  if (a3 == 1)
  {
    v8 = MSNLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_258731000, v8, OS_LOG_TYPE_INFO, "User cancelled TTR.", buf, 2u);
    }
  }

  else if (a3 == 2)
  {
    v6 = MSNLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_258731000, v6, OS_LOG_TYPE_INFO, "User cancelled TTR and suppressed forever.", buf, 2u);
    }

    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:31536000.0];
    CFPreferencesSetAppValue(@"MediaSafetyNetLastTTR", v7, @"com.apple.mediaserverd");

    CFPreferencesAppSynchronize(@"com.apple.mediaserverd");
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __25__MSNTTR_handleCallback___block_invoke;
    v9[3] = &unk_2798A3D18;
    v9[4] = self;
    v10 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }
}

- (void)completeTTR:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MSNLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_258731000, v4, OS_LOG_TYPE_INFO, "Completing TTR: %@.", &buf, 0xCu);
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v5 = getLSApplicationWorkspaceClass_softClass;
  v12 = getLSApplicationWorkspaceClass_softClass;
  if (!getLSApplicationWorkspaceClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v14 = __getLSApplicationWorkspaceClass_block_invoke;
    v15 = &unk_2798A3E08;
    v16 = &v9;
    __getLSApplicationWorkspaceClass_block_invoke(&buf);
    v5 = v10[3];
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);
  v7 = [v5 defaultWorkspace];
  [v7 openURL:v3 configuration:0 completionHandler:&__block_literal_global_57];

  v8 = *MEMORY[0x277D85DE8];
}

void __22__MSNTTR_completeTTR___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = MSNLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __22__MSNTTR_completeTTR___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_258731000, v7, OS_LOG_TYPE_INFO, "TTR done: %@.", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)beginTTRWithTitle:date:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)beginTTRWithTitle:date:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (uint64_t)continueTTR
{
  dlerror();
  v0 = abort_report_np();
  return [(MSNTTR *)v0 continueTTR];
}

void __22__MSNTTR_completeTTR___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end