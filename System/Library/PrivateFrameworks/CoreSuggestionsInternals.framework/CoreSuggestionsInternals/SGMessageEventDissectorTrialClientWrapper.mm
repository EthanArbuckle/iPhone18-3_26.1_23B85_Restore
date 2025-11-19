@interface SGMessageEventDissectorTrialClientWrapper
+ (id)sharedInstance;
- (SGMessageEventDissectorTrialClientWrapper)init;
- (id)eventClassifierModelPath;
- (id)eventClassifierThreshold;
- (id)eventExtractionAssetsPath;
- (id)messageProcessingLimit;
- (id)rateLimitInterval;
- (void)updateFactors;
@end

@implementation SGMessageEventDissectorTrialClientWrapper

- (id)rateLimitInterval
{
  v13 = *MEMORY[0x277D85DE8];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2108;
  v11 = __Block_byref_object_dispose__2109;
  v12 = 0;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__SGMessageEventDissectorTrialClientWrapper_rateLimitInterval__block_invoke;
  v7[3] = &unk_27894B3D0;
  v7[4] = &buf;
  [(_PASLock *)lock runWithLockAcquired:v7];
  v3 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v4 = sgEventsLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGMessageEventDissectorTrialClientWrapper: rateLimitInterval: %@", &buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)messageProcessingLimit
{
  v13 = *MEMORY[0x277D85DE8];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2108;
  v11 = __Block_byref_object_dispose__2109;
  v12 = 0;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__SGMessageEventDissectorTrialClientWrapper_messageProcessingLimit__block_invoke;
  v7[3] = &unk_27894B3D0;
  v7[4] = &buf;
  [(_PASLock *)lock runWithLockAcquired:v7];
  v3 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v4 = sgEventsLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGMessageEventDissectorTrialClientWrapper: messageProcessingLimit: %@", &buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)eventClassifierThreshold
{
  v13 = *MEMORY[0x277D85DE8];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2108;
  v11 = __Block_byref_object_dispose__2109;
  v12 = 0;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__SGMessageEventDissectorTrialClientWrapper_eventClassifierThreshold__block_invoke;
  v7[3] = &unk_27894B3D0;
  v7[4] = &buf;
  [(_PASLock *)lock runWithLockAcquired:v7];
  v3 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v4 = sgEventsLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGMessageEventDissectorTrialClientWrapper: eventClassifierThreshold: %@", &buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)eventClassifierModelPath
{
  v17 = *MEMORY[0x277D85DE8];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v14 = __Block_byref_object_copy__2108;
  v15 = __Block_byref_object_dispose__2109;
  v16 = 0;
  lock = self->_lock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__SGMessageEventDissectorTrialClientWrapper_eventClassifierModelPath__block_invoke;
  v12[3] = &unk_27894B3D0;
  v12[4] = buf;
  [(_PASLock *)lock runWithLockAcquired:v12];
  v3 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  if (!v3)
  {
    v4 = sgEventsLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v4, OS_LOG_TYPE_ERROR, "SGMessageEventDissectorTrialClientWrapper: trialEventClassifierModelPath is nil, bailing", buf, 2u);
    }

    goto LABEL_11;
  }

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  if (![v4 fileExistsAtPath:v3 isDirectory:&v11]|| v11 != 1)
  {
    v7 = sgEventsLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = @"NO";
      if (v11)
      {
        v10 = @"YES";
      }

      *buf = 138478083;
      *&buf[4] = v3;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, "SGMessageEventDissectorTrialClientWrapper: No assets found at trialEventClassifierModelPath: %{private}@ isDirectory: %@", buf, 0x16u);
    }

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  v5 = sgEventsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    *&buf[4] = v3;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "SGMessageEventDissectorTrialClientWrapper: EventClassifierModelPath loaded with Trial %{private}@", buf, 0xCu);
  }

  v6 = v3;
LABEL_12:

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)eventExtractionAssetsPath
{
  v17 = *MEMORY[0x277D85DE8];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v14 = __Block_byref_object_copy__2108;
  v15 = __Block_byref_object_dispose__2109;
  v16 = 0;
  lock = self->_lock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__SGMessageEventDissectorTrialClientWrapper_eventExtractionAssetsPath__block_invoke;
  v12[3] = &unk_27894B3D0;
  v12[4] = buf;
  [(_PASLock *)lock runWithLockAcquired:v12];
  v3 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  if (!v3)
  {
    v4 = sgEventsLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v4, OS_LOG_TYPE_ERROR, "SGMessageEventDissectorTrialClientWrapper: trialEventExtractionAssetsPath is nil, bailing", buf, 2u);
    }

    goto LABEL_11;
  }

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  if (![v4 fileExistsAtPath:v3 isDirectory:&v11]|| v11 != 1)
  {
    v7 = sgEventsLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = @"NO";
      if (v11)
      {
        v10 = @"YES";
      }

      *buf = 138478083;
      *&buf[4] = v3;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, "SGMessageEventDissectorTrialClientWrapper: No assets found at trialEventExtractionAssetsPath: %{private}@ isDirectory: %@", buf, 0x16u);
    }

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  v5 = sgEventsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    *&buf[4] = v3;
    _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "SGMessageEventDissectorTrialClientWrapper: EventExtractionAssetsPath loaded with Trial %{private}@", buf, 0xCu);
  }

  v6 = v3;
LABEL_12:

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)updateFactors
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__SGMessageEventDissectorTrialClientWrapper_updateFactors__block_invoke;
  v3[3] = &unk_27894B3A8;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

void __58__SGMessageEventDissectorTrialClientWrapper_updateFactors__block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3[4];
  v3[4] = &unk_284749218;

  v5 = v3[5];
  v3[5] = &unk_284749230;

  v6 = v3[3];
  v3[3] = &unk_28474A388;

  v7 = sgEventsLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v49) = 0;
    _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEFAULT, "SGMessageEventDissectorTrialClientWrapper: Updating factors", &v49, 2u);
  }

  if ([*(a1 + 32) refreshEnrollmentInformationForNamespace:@"SMS_FILTER_INEN_CLASSIFICATION"] & 1) != 0 || (objc_msgSend(*(a1 + 32), "refreshRolloutIdentifiersForNamespace:", @"SMS_FILTER_INEN_CLASSIFICATION"))
  {
    v8 = [*(*(a1 + 32) + 8) levelForFactor:@"trialEventExtractionAssets" withNamespaceName:@"SMS_FILTER_INEN_CLASSIFICATION"];
    v9 = [v8 directoryValue];
    if (v9 && (v10 = v9, -[NSObject directoryValue](v8, "directoryValue"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 hasPath], v11, v10, v12))
    {
      v13 = sgEventsLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v8 directoryValue];
        v15 = [v14 path];
        v49 = 138477827;
        v50 = v15;
        _os_log_impl(&dword_231E60000, v13, OS_LOG_TYPE_DEFAULT, "SGMessageEventDissectorTrialClientWrapper: Updating trialEventExtractionAssetsPath from trial: %{private}@", &v49, 0xCu);
      }

      v16 = [v8 directoryValue];
      v17 = [v16 path];
      v18 = v3[1];
      v3[1] = v17;
    }

    else
    {
      v16 = sgEventsLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v49) = 0;
        _os_log_error_impl(&dword_231E60000, v16, OS_LOG_TYPE_ERROR, "SGMessageEventDissectorTrialClientWrapper: TRILevel is nil for trialEventExtractionAssetsPath", &v49, 2u);
      }
    }

    v19 = [*(*(a1 + 32) + 8) levelForFactor:@"trialEventClassifierModel" withNamespaceName:@"SMS_FILTER_INEN_CLASSIFICATION"];
    v20 = [v19 directoryValue];
    if (v20 && (v21 = v20, [v19 directoryValue], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "hasPath"), v22, v21, v23))
    {
      v24 = sgEventsLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v19 directoryValue];
        v26 = [v25 path];
        v49 = 138477827;
        v50 = v26;
        _os_log_impl(&dword_231E60000, v24, OS_LOG_TYPE_DEFAULT, "SGMessageEventDissectorTrialClientWrapper: Updating trialEventClassifierModelPath from trial: %{private}@", &v49, 0xCu);
      }

      v27 = [v19 directoryValue];
      v28 = [v27 path];
      v29 = v3[2];
      v3[2] = v28;
    }

    else
    {
      v27 = sgEventsLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v49) = 0;
        _os_log_error_impl(&dword_231E60000, v27, OS_LOG_TYPE_ERROR, "SGMessageEventDissectorTrialClientWrapper: TRILevel is nil for trialEventClassifierModelPath", &v49, 2u);
      }
    }

    v30 = [*(*(a1 + 32) + 8) levelForFactor:@"trialEventClassifierThreshold" withNamespaceName:@"SMS_FILTER_INEN_CLASSIFICATION"];
    v31 = sgEventsLogHandle();
    v32 = v31;
    if (v30)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        [v30 doubleValue];
        v49 = 134217984;
        v50 = v33;
        _os_log_impl(&dword_231E60000, v32, OS_LOG_TYPE_DEFAULT, "SGMessageEventDissectorTrialClientWrapper: Updating trialEventClassifierThreshold from trial: %.02f", &v49, 0xCu);
      }

      v34 = MEMORY[0x277CCABB0];
      [v30 doubleValue];
      v35 = [v34 numberWithDouble:?];
      v32 = v3[3];
      v3[3] = v35;
    }

    else if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v49) = 0;
      _os_log_error_impl(&dword_231E60000, v32, OS_LOG_TYPE_ERROR, "SGMessageEventDissectorTrialClientWrapper: TRILevel is nil for trialEventClassifierThreshold", &v49, 2u);
    }

    v36 = [*(*(a1 + 32) + 8) levelForFactor:@"trialEventExtractionMessageProcessingLimit" withNamespaceName:@"SMS_FILTER_INEN_CLASSIFICATION"];
    v37 = sgEventsLogHandle();
    v38 = v37;
    if (v36)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        [v36 doubleValue];
        v49 = 134217984;
        v50 = v39;
        _os_log_impl(&dword_231E60000, v38, OS_LOG_TYPE_DEFAULT, "SGMessageEventDissectorTrialClientWrapper: Updating trialMessageProcessingLimit from trial: %.02f", &v49, 0xCu);
      }

      v40 = MEMORY[0x277CCABB0];
      [v36 doubleValue];
      v41 = [v40 numberWithDouble:?];
      v38 = v3[4];
      v3[4] = v41;
    }

    else if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v49) = 0;
      _os_log_error_impl(&dword_231E60000, v38, OS_LOG_TYPE_ERROR, "SGMessageEventDissectorTrialClientWrapper: TRILevel is nil for trialMessageProcessingLimit", &v49, 2u);
    }

    v42 = [*(*(a1 + 32) + 8) levelForFactor:@"trialEventExtractionRateLimitInterval" withNamespaceName:@"SMS_FILTER_INEN_CLASSIFICATION"];
    v43 = sgEventsLogHandle();
    v44 = v43;
    if (v42)
    {
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        [v42 doubleValue];
        v49 = 134217984;
        v50 = v45;
        _os_log_impl(&dword_231E60000, v44, OS_LOG_TYPE_DEFAULT, "SGMessageEventDissectorTrialClientWrapper: Updating trialRateLimitInterval from trial: %.02f", &v49, 0xCu);
      }

      v46 = MEMORY[0x277CCABB0];
      [v42 doubleValue];
      v47 = [v46 numberWithDouble:?];
      v44 = v3[5];
      v3[5] = v47;
    }

    else if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v49) = 0;
      _os_log_error_impl(&dword_231E60000, v44, OS_LOG_TYPE_ERROR, "SGMessageEventDissectorTrialClientWrapper: TRILevel is nil for trialRateLimitInterval", &v49, 2u);
    }
  }

  else
  {
    v8 = sgEventsLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v49) = 0;
      _os_log_error_impl(&dword_231E60000, v8, OS_LOG_TYPE_ERROR, "SGMessageEventDissectorTrialClientWrapper: No active Trial deployment found", &v49, 2u);
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (SGMessageEventDissectorTrialClientWrapper)init
{
  v13.receiver = self;
  v13.super_class = SGMessageEventDissectorTrialClientWrapper;
  v2 = [(SGTrialClientWrapper *)&v13 initWithClientIdentifier:245];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D425F8]);
    v4 = objc_opt_new();
    v5 = [v3 initWithGuardedData:v4];
    lock = v2->_lock;
    v2->_lock = v5;

    [(SGMessageEventDissectorTrialClientWrapper *)v2 updateFactors];
    objc_initWeak(&location, v2);
    triClient = v2->super._triClient;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__SGMessageEventDissectorTrialClientWrapper_init__block_invoke;
    v10[3] = &unk_27894FA80;
    objc_copyWeak(&v11, &location);
    v8 = [(TRIClient *)triClient addUpdateHandlerForNamespaceName:@"SMS_FILTER_INEN_CLASSIFICATION" usingBlock:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __49__SGMessageEventDissectorTrialClientWrapper_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v2 = [MEMORY[0x277D73660] clientWithIdentifier:245];
    v3 = [v2 levelForFactor:@"trialEventExtractionAssets" withNamespaceName:@"SMS_FILTER_INEN_CLASSIFICATION"];
    v4 = [v3 directoryValue];
    if (v4)
    {
      v5 = v4;
      v6 = [v3 directoryValue];
      v7 = [v6 hasPath];

      if (v7)
      {
        [v8[1] refresh];
        [v8 updateFactors];
      }
    }

    WeakRetained = v8;
  }
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2, &__block_literal_global_2165);
  }

  v3 = sharedInstance__pasExprOnceResult_2166;

  return v3;
}

void __59__SGMessageEventDissectorTrialClientWrapper_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_2166;
  sharedInstance__pasExprOnceResult_2166 = v1;

  objc_autoreleasePoolPop(v0);
}

@end