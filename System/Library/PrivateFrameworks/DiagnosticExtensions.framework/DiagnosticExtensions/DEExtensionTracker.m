@interface DEExtensionTracker
+ (BOOL)hasInactiveLoggingSession:(id)a3;
+ (BOOL)shouldSetupWithIdentifier:(id)a3 session:(id)a4 expirationDate:(id)a5;
+ (BOOL)shouldTeardownWithIdentifier:(id)a3 session:(id)a4;
+ (id)criteria:(id)a3;
+ (id)currentLoggingExtensions;
+ (id)sharedSerialQueue;
+ (id)userDefaults;
+ (void)_updateExtensionExpirationDateWithIdentifier:(id)a3 expirationDate:(id)a4;
+ (void)_updateXPCActivityDate;
+ (void)checkIn;
+ (void)extensionTrackerCleanup;
+ (void)saveCurrentLoggingExtensionsWithDictionary:(id)a3;
+ (void)scheduleXPCActivity;
+ (void)updateExpirationDateWithIdentifier:(id)a3 expirationDate:(id)a4;
+ (void)updateRetainCountWithIdentifier:(id)a3 session:(id)a4 offsetBy:(int)a5;
@end

@implementation DEExtensionTracker

+ (void)checkIn
{
  objc_initWeak(&location, a1);
  v2 = [objc_opt_class() sharedSerialQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __29__DEExtensionTracker_checkIn__block_invoke;
  v3[3] = &unk_278F634E0;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __29__DEExtensionTracker_checkIn__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = Log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[DEExtensionTracker checkIn]_block_invoke";
    _os_log_impl(&dword_248AB3000, v2, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: %s", &v6, 0xCu);
  }

  v3 = +[DEExtensionManager sharedInstance];
  [v3 loadExtensions];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [objc_opt_class() _updateXPCActivityDate];

  v5 = *MEMORY[0x277D85DE8];
}

+ (BOOL)shouldSetupWithIdentifier:(id)a3 session:(id)a4 expirationDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  objc_initWeak(&location, a1);
  v11 = [objc_opt_class() sharedSerialQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__DEExtensionTracker_shouldSetupWithIdentifier_session_expirationDate___block_invoke;
  v16[3] = &unk_278F63508;
  v17 = v8;
  v18 = v9;
  v20 = &v23;
  v12 = v9;
  v13 = v8;
  objc_copyWeak(&v21, &location);
  v19 = v10;
  v14 = v10;
  dispatch_sync(v11, v16);

  LOBYTE(v11) = *(v24 + 24);
  objc_destroyWeak(&v21);

  objc_destroyWeak(&location);
  _Block_object_dispose(&v23, 8);
  return v11;
}

void __71__DEExtensionTracker_shouldSetupWithIdentifier_session_expirationDate___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = Log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v11 = 136315650;
    v12 = "+[DEExtensionTracker shouldSetupWithIdentifier:session:expirationDate:]_block_invoke";
    v13 = 2112;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_248AB3000, v2, OS_LOG_TYPE_INFO, "%s %@, %@", &v11, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  *(*(*(a1 + 56) + 8) + 24) = [objc_opt_class() hasInactiveLoggingSession:*(a1 + 32)];

  v6 = objc_loadWeakRetained((a1 + 64));
  [objc_opt_class() increaseRetainCountWithIdentifier:*(a1 + 32) session:*(a1 + 40)];

  v7 = objc_loadWeakRetained((a1 + 64));
  [objc_opt_class() updateExpirationDateWithIdentifier:*(a1 + 32) expirationDate:*(a1 + 48)];

  v8 = Log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(*(*(a1 + 56) + 8) + 24);
    v11 = 67109120;
    LODWORD(v12) = v9;
    _os_log_impl(&dword_248AB3000, v8, OS_LOG_TYPE_INFO, "isFirstTimeRunningExtension: %i", &v11, 8u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (BOOL)shouldTeardownWithIdentifier:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  objc_initWeak(&location, a1);
  v8 = [objc_opt_class() sharedSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__DEExtensionTracker_shouldTeardownWithIdentifier_session___block_invoke;
  block[3] = &unk_278F63530;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  objc_copyWeak(&v16, &location);
  v15 = &v18;
  dispatch_sync(v8, block);

  LOBYTE(v8) = *(v19 + 24);
  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);
  _Block_object_dispose(&v18, 8);
  return v8;
}

void __59__DEExtensionTracker_shouldTeardownWithIdentifier_session___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = Log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v16 = 136315650;
    v17 = "+[DEExtensionTracker shouldTeardownWithIdentifier:session:]_block_invoke";
    v18 = 2112;
    v19 = v3;
    v20 = 2112;
    v21 = v4;
    _os_log_impl(&dword_248AB3000, v2, OS_LOG_TYPE_INFO, "%s %@, %@", &v16, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = [objc_opt_class() hasInactiveLoggingSession:*(a1 + 32)];

  v7 = objc_loadWeakRetained((a1 + 56));
  [v7 decreaseRetainCountWithIdentifier:*(a1 + 32) session:*(a1 + 40)];

  if (v6)
  {
    v9 = *(a1 + 48);
    v8 = a1 + 48;
    *(*(v9 + 8) + 24) = 0;
  }

  else
  {
    v10 = objc_loadWeakRetained((a1 + 56));
    v11 = [objc_opt_class() hasInactiveLoggingSession:*(a1 + 32)];
    v12 = *(a1 + 48);
    v8 = a1 + 48;
    *(*(v12 + 8) + 24) = v11;
  }

  v13 = Log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = *(*(*v8 + 8) + 24);
    v16 = 67109120;
    LODWORD(v17) = v14;
    _os_log_impl(&dword_248AB3000, v13, OS_LOG_TYPE_INFO, "shouldTeardownExtension: %i", &v16, 8u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (id)currentLoggingExtensions
{
  v2 = [objc_opt_class() userDefaults];
  v3 = [v2 dictionaryForKey:@"com.apple.DiagnosticExtensions.extensionTracker"];

  return v3;
}

+ (id)userDefaults
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DiagnosticExtensions.extensionTracker"];

  return v2;
}

+ (void)saveCurrentLoggingExtensionsWithDictionary:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_opt_class() userDefaults];
  [v4 setObject:v3 forKey:@"com.apple.DiagnosticExtensions.extensionTracker"];

  [v4 synchronize];
  v5 = Log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [objc_opt_class() currentLoggingExtensions];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_248AB3000, v5, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: currentLoggingExtensions: %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (BOOL)hasInactiveLoggingSession:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() currentLoggingExtensions];
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [v5 objectForKeyedSubscript:@"Sessions"];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__DEExtensionTracker_hasInactiveLoggingSession___block_invoke;
  v10[3] = &unk_278F63558;
  v10[4] = &v11;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];
  v7 = [v4 objectForKeyedSubscript:v3];
  if (v7)
  {
    v8 = *(v12 + 6) == 0;
  }

  else
  {
    v8 = 1;
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t __48__DEExtensionTracker_hasInactiveLoggingSession___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 intValue];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

+ (id)sharedSerialQueue
{
  if (sharedSerialQueue_onceToken != -1)
  {
    +[DEExtensionTracker sharedSerialQueue];
  }

  v3 = sharedSerialQueue_sharedDispatchQueue;

  return v3;
}

uint64_t __39__DEExtensionTracker_sharedSerialQueue__block_invoke()
{
  sharedSerialQueue_sharedDispatchQueue = dispatch_queue_create([@"com.apple.DiagnosticExtensions.extensionTracker" UTF8String], 0);

  return MEMORY[0x2821F96F8]();
}

+ (void)updateExpirationDateWithIdentifier:(id)a3 expirationDate:(id)a4
{
  [a1 _updateExtensionExpirationDateWithIdentifier:a3 expirationDate:a4];

  [a1 _updateXPCActivityDate];
}

+ (void)_updateExtensionExpirationDateWithIdentifier:(id)a3 expirationDate:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() currentLoggingExtensions];
  v8 = v7;
  v9 = MEMORY[0x277CBEC10];
  if (!v7)
  {
    v7 = MEMORY[0x277CBEC10];
  }

  v10 = [v7 mutableCopy];

  v11 = [v10 objectForKeyedSubscript:v5];
  v12 = v11;
  if (!v11)
  {
    v11 = v9;
  }

  v13 = [v11 mutableCopy];

  v14 = [v13 objectForKeyedSubscript:@"ExpirationDate"];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v6;
  }

  v17 = v16;

  v18 = [v17 laterDate:v6];

  [v13 setObject:v18 forKeyedSubscript:@"ExpirationDate"];
  [v10 setObject:v13 forKeyedSubscript:v5];
  v19 = Log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412546;
    v24 = v5;
    v25 = 2112;
    v26 = v18;
    _os_log_impl(&dword_248AB3000, v19, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: Updating %@ expiration date to %@", &v23, 0x16u);
  }

  v20 = objc_opt_class();
  v21 = [v10 copy];
  [v20 saveCurrentLoggingExtensionsWithDictionary:v21];

  v22 = *MEMORY[0x277D85DE8];
}

+ (void)_updateXPCActivityDate
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_class() currentLoggingExtensions];
  v4 = v3;
  if (!v3)
  {
    v3 = MEMORY[0x277CBEC10];
  }

  v5 = [v3 mutableCopy];

  v6 = [v5 allKeys];
  if ([v6 count] == 1)
  {
    v7 = [v5 objectForKeyedSubscript:@"XPCActivity"];

    if (v7)
    {
      [v5 setObject:0 forKeyedSubscript:@"XPCActivity"];
      v8 = objc_opt_class();
      v9 = [v5 copy];
      [v8 saveCurrentLoggingExtensionsWithDictionary:v9];

      goto LABEL_16;
    }
  }

  else
  {
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = [MEMORY[0x277CBEAA8] distantFuture];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __44__DEExtensionTracker__updateXPCActivityDate__block_invoke;
  v23[3] = &unk_278F635A0;
  v23[4] = &v24;
  [v5 enumerateKeysAndObjectsUsingBlock:v23];
  v10 = [MEMORY[0x277CBEAA8] date];
  if ([v25[5] compare:v10] == -1)
  {
    v11 = Log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v25[5];
      *buf = 138412546;
      v33 = v12;
      v34 = 2112;
      v35 = v10;
      _os_log_impl(&dword_248AB3000, v11, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: extensionEarliestDate is aged out (%@), assign to %@ instead", buf, 0x16u);
    }

    objc_storeStrong(v25 + 5, v10);
  }

  v13 = v25[5];
  [objc_opt_class() xpcActivityTimeInterval];
  v14 = [v13 dateByAddingTimeInterval:?];
  v15 = v25[5];
  v30[0] = @"EarliestExpirationDate";
  v30[1] = @"XPCActivityScheduledDate";
  v31[0] = v15;
  v31[1] = v14;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  [v5 setObject:v16 forKeyedSubscript:@"XPCActivity"];

  v17 = Log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = v25[5];
    *buf = 138412546;
    v33 = @"XPCActivity";
    v34 = 2112;
    v35 = v18;
    _os_log_impl(&dword_248AB3000, v17, OS_LOG_TYPE_INFO, "DEExtensionTracker: Updating %@ to %@", buf, 0x16u);
  }

  v19 = Log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v33 = @"XPCActivityScheduledDate";
    v34 = 2112;
    v35 = v14;
    _os_log_impl(&dword_248AB3000, v19, OS_LOG_TYPE_INFO, "DEExtensionTracker: Updating %@ to %@", buf, 0x16u);
  }

  v20 = objc_opt_class();
  v21 = [v5 copy];
  [v20 saveCurrentLoggingExtensionsWithDictionary:v21];

  [a1 scheduleXPCActivity];
  _Block_object_dispose(&v24, 8);

LABEL_16:
  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __44__DEExtensionTracker__updateXPCActivityDate__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:@"ExpirationDate"];
  if (v4)
  {
    obj = v4;
    if ([v4 compare:*(*(*(a1 + 32) + 8) + 40)] == -1)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
    }
  }

  return MEMORY[0x2821F96F8]();
}

+ (id)criteria:(id)a3
{
  v3 = a3;
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86360], 0);
  [v3 timeIntervalSinceNow];
  v6 = v5;

  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86250], v6);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86270], 30);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);

  return v4;
}

+ (void)scheduleXPCActivity
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = Log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "+[DEExtensionTracker scheduleXPCActivity]";
    _os_log_impl(&dword_248AB3000, v3, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: %s", buf, 0xCu);
  }

  v4 = [objc_opt_class() currentLoggingExtensions];
  v5 = v4;
  if (!v4)
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v6 = [v4 mutableCopy];

  v7 = [v6 objectForKeyedSubscript:@"XPCActivity"];
  v8 = [v7 objectForKeyedSubscript:@"XPCActivityScheduledDate"];

  v9 = Log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&dword_248AB3000, v9, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: scheduleXPCActivityToDate %@", buf, 0xCu);
    }

    v11 = [@"com.apple.DiagnosticExtensions.extensionTracker" UTF8String];
    v12 = *MEMORY[0x277D86238];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __41__DEExtensionTracker_scheduleXPCActivity__block_invoke;
    v14[3] = &unk_278F635C8;
    v16 = a1;
    v15 = v8;
    xpc_activity_register(v11, v12, v14);
    v9 = v15;
  }

  else if (v10)
  {
    *buf = 0;
    _os_log_impl(&dword_248AB3000, v9, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: tracker dict is empty. There's nothing to schedule.", buf, 2u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __41__DEExtensionTracker_scheduleXPCActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v7 = Log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_248AB3000, v7, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: XPC_ACTIVITY_STATE_RUN", v9, 2u);
    }

    v8 = *(a1 + 40);
    [objc_opt_class() extensionTrackerCleanup];
  }

  else if (!state)
  {
    v5 = Log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248AB3000, v5, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: XPC_ACTIVITY_STATE_CHECK_IN", buf, 2u);
    }

    v6 = [*(a1 + 40) criteria:*(a1 + 32)];
    xpc_activity_set_criteria(v3, v6);
  }
}

+ (void)extensionTrackerCleanup
{
  objc_initWeak(&location, a1);
  v3 = [objc_opt_class() sharedSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__DEExtensionTracker_extensionTrackerCleanup__block_invoke;
  block[3] = &unk_278F63618;
  objc_copyWeak(v5, &location);
  v5[1] = a1;
  dispatch_async(v3, block);

  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

void __45__DEExtensionTracker_extensionTrackerCleanup__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = Log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[DEExtensionTracker extensionTrackerCleanup]_block_invoke";
    _os_log_impl(&dword_248AB3000, v2, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: %s", &buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [objc_opt_class() currentLoggingExtensions];

  if ([v4 count])
  {
    v5 = [v4 objectForKeyedSubscript:@"XPCActivity"];
    v6 = [v5 objectForKeyedSubscript:@"XPCActivityScheduledDate"];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = [v4 mutableCopy];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __45__DEExtensionTracker_extensionTrackerCleanup__block_invoke_32;
    v13[3] = &unk_278F635F0;
    v7 = v6;
    v14 = v7;
    p_buf = &buf;
    v16 = *(a1 + 40);
    [v4 enumerateKeysAndObjectsUsingBlock:v13];
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = objc_opt_class();
    v10 = [*(*(&buf + 1) + 40) copy];
    [v9 saveCurrentLoggingExtensionsWithDictionary:v10];

    v11 = objc_loadWeakRetained((a1 + 32));
    [objc_opt_class() _updateXPCActivityDate];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v7 = Log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_248AB3000, v7, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: Exit early. Nothing to clean up.", &buf, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __45__DEExtensionTracker_extensionTrackerCleanup__block_invoke_32(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"ExpirationDate"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 compare:a1[4]];
    v10 = Log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9 == 1)
    {
      if (v11)
      {
        v12 = a1[4];
        *buf = 138412802;
        *&buf[4] = v5;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        *&buf[22] = 2112;
        v30 = v12;
        _os_log_impl(&dword_248AB3000, v10, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: %@ (%@) is NOT due (%@). Start cleaning up '0' retain count.", buf, 0x20u);
      }

      v13 = [v6 objectForKeyedSubscript:@"Sessions"];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v30 = __Block_byref_object_copy_;
      v31 = __Block_byref_object_dispose_;
      v32 = [v13 mutableCopy];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __45__DEExtensionTracker_extensionTrackerCleanup__block_invoke_33;
      v28[3] = &unk_278F63558;
      v28[4] = buf;
      [v13 enumerateKeysAndObjectsUsingBlock:v28];
      v14 = [v6 mutableCopy];
      v15 = [*(*&buf[8] + 40) copy];
      [v14 setObject:v15 forKeyedSubscript:@"Sessions"];

      v16 = [v14 copy];
      [*(*(a1[5] + 8) + 40) setObject:v16 forKeyedSubscript:v5];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (v11)
      {
        v17 = a1[4];
        *buf = 138412802;
        *&buf[4] = v5;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        *&buf[22] = 2112;
        v30 = v17;
        _os_log_impl(&dword_248AB3000, v10, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: %@ (%@) is due (%@). Calling checkAndTeardownWithHandler:", buf, 0x20u);
      }

      v18 = +[DEExtensionManager sharedInstance];
      v13 = [v18 extensionForIdentifier:v5];

      v19 = [v13 checkAndTeardown];
      v20 = Log();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        if (v21)
        {
          *buf = 138412290;
          *&buf[4] = v5;
          _os_log_impl(&dword_248AB3000, v20, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: %@ is done cleaning up.", buf, 0xCu);
        }

        [*(*(a1[5] + 8) + 40) setObject:0 forKeyedSubscript:v5];
      }

      else
      {
        if (v21)
        {
          *buf = 0;
          _os_log_impl(&dword_248AB3000, v20, OS_LOG_TYPE_DEFAULT, "DEExtensionTracker: extension failed to turn off. Reschedule to (now + 2 hours).", buf, 2u);
        }

        v22 = [MEMORY[0x277CBEAA8] date];
        v23 = a1[6];
        [objc_opt_class() xpcActivityTimeInterval];
        v24 = [v22 dateByAddingTimeInterval:?];

        v25 = [v6 mutableCopy];
        [v25 setObject:v24 forKeyedSubscript:@"ExpirationDate"];
        v26 = [v25 copy];
        [*(*(a1[5] + 8) + 40) setObject:v26 forKeyedSubscript:v5];
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __45__DEExtensionTracker_extensionTrackerCleanup__block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (![a3 intValue])
  {
    [*(*(*(a1 + 32) + 8) + 40) setObject:0 forKeyedSubscript:v5];
    v6 = Log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_248AB3000, v6, OS_LOG_TYPE_INFO, "DEExtensionTracker: %@ retain count is 0. Removing it.", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)updateRetainCountWithIdentifier:(id)a3 session:(id)a4 offsetBy:(int)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [objc_opt_class() currentLoggingExtensions];
  v10 = v9;
  v11 = MEMORY[0x277CBEC10];
  if (!v9)
  {
    v9 = MEMORY[0x277CBEC10];
  }

  v26 = [v9 mutableCopy];

  v12 = [v26 objectForKeyedSubscript:v8];
  v13 = v12;
  if (!v12)
  {
    v12 = v11;
  }

  v14 = [v12 mutableCopy];

  v15 = [v14 objectForKeyedSubscript:@"Sessions"];
  v16 = v15;
  if (!v15)
  {
    v15 = v11;
  }

  v17 = [v15 mutableCopy];

  v18 = [v17 objectForKeyedSubscript:v7];
  v19 = v18;
  v20 = &unk_285B70FF8;
  if (v18)
  {
    v20 = v18;
  }

  v21 = v20;

  v22 = [v21 integerValue];
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:(v22 + a5) & ~((v22 + a5) >> 63)];
  [v17 setObject:v23 forKeyedSubscript:v7];

  [v14 setObject:v17 forKeyedSubscript:@"Sessions"];
  [v26 setObject:v14 forKeyedSubscript:v8];

  v24 = objc_opt_class();
  v25 = [v26 copy];
  [v24 saveCurrentLoggingExtensionsWithDictionary:v25];
}

@end