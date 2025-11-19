@interface SGStructuredEventTrialClientWrapper
+ (id)sharedInstance;
- (BOOL)foundInMailNotifications;
- (SGStructuredEventTrialClientWrapper)init;
- (id)engineConfig;
- (id)notificationsAllowListOverride;
- (id)structuredEventInputMapping;
- (id)structuredEventOutputMapping;
- (id)supportedProviders;
- (void)updateFactors;
@end

@implementation SGStructuredEventTrialClientWrapper

- (id)notificationsAllowListOverride
{
  v5[1] = *MEMORY[0x277D85DE8];
  if ([(SGStructuredEventTrialClientWrapper *)self foundInMailNotifications])
  {
    v5[0] = *MEMORY[0x277D021C0];
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)foundInMailNotifications
{
  v12 = *MEMORY[0x277D85DE8];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v10 = 0x2020000000;
  v11 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__SGStructuredEventTrialClientWrapper_foundInMailNotifications__block_invoke;
  v8[3] = &unk_27894E200;
  v8[4] = &buf;
  [(_PASLock *)lock runWithLockAcquired:v8];
  v3 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  v4 = sgEventsLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = @"NO";
    if (v3)
    {
      v7 = @"YES";
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGStructuredEventTrialClientWrapper: foundInMailNotifications: %@", &buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)structuredEventOutputMapping
{
  v15 = *MEMORY[0x277D85DE8];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__15473;
  v13 = __Block_byref_object_dispose__15474;
  v14 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__SGStructuredEventTrialClientWrapper_structuredEventOutputMapping__block_invoke;
  v9[3] = &unk_27894E200;
  v9[4] = &buf;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v3 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v4 = sgEventsLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v3 count];
    v8 = @"YES";
    if (!v7)
    {
      v8 = @"NO";
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGStructuredEventTrialClientWrapper: structuredEventOutputMapping list loaded with Trial: %@", &buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)structuredEventInputMapping
{
  v15 = *MEMORY[0x277D85DE8];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__15473;
  v13 = __Block_byref_object_dispose__15474;
  v14 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__SGStructuredEventTrialClientWrapper_structuredEventInputMapping__block_invoke;
  v9[3] = &unk_27894E200;
  v9[4] = &buf;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v3 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v4 = sgEventsLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v3 count];
    v8 = @"YES";
    if (!v7)
    {
      v8 = @"NO";
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGStructuredEventTrialClientWrapper: structuredEventInputMapping list loaded with Trial: %@", &buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)engineConfig
{
  v15 = *MEMORY[0x277D85DE8];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__15473;
  v13 = __Block_byref_object_dispose__15474;
  v14 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__SGStructuredEventTrialClientWrapper_engineConfig__block_invoke;
  v9[3] = &unk_27894E200;
  v9[4] = &buf;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v3 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v4 = sgEventsLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v3 count];
    v8 = @"YES";
    if (!v7)
    {
      v8 = @"NO";
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGStructuredEventTrialClientWrapper: engineConfig list loaded with Trial: %@", &buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)supportedProviders
{
  v15 = *MEMORY[0x277D85DE8];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__15473;
  v13 = __Block_byref_object_dispose__15474;
  v14 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SGStructuredEventTrialClientWrapper_supportedProviders__block_invoke;
  v9[3] = &unk_27894E200;
  v9[4] = &buf;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v3 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v4 = sgEventsLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v3 count];
    v8 = @"YES";
    if (!v7)
    {
      v8 = @"NO";
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGStructuredEventTrialClientWrapper: supportedProviders list loaded with Trial: %@", &buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)updateFactors
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__SGStructuredEventTrialClientWrapper_updateFactors__block_invoke;
  v3[3] = &unk_27894E1D8;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

void __52__SGStructuredEventTrialClientWrapper_updateFactors__block_invoke(uint64_t a1, void *a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sgEventsLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEFAULT, "SGStructuredEventTrialClientWrapper: Updating factors", buf, 2u);
  }

  [*(a1 + 32) refreshEnrollmentInformationForNamespace:@"PRODUCTIVITY_INTELLIGENCE_STRUCTURED_EVENTS"];
  v5 = [*(*(a1 + 32) + 8) levelForFactor:@"StructuredEventModel.mlmodelc" withNamespaceName:@"PRODUCTIVITY_INTELLIGENCE_STRUCTURED_EVENTS"];
  v6 = [v5 fileValue];
  if (v6 && (v7 = v6, [v5 fileValue], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hasPath"), v8, v7, v9))
  {
    v10 = [*(a1 + 32) modelPathForCurrentEnrollment];
    if (v10)
    {
      v11 = [MEMORY[0x277CCAA00] defaultManager];
      v12 = [v11 fileExistsAtPath:v10];

      if ((v12 & 1) == 0)
      {
        v66 = *(a1 + 32);
        v26 = [v5 fileValue];
        v38 = [v26 path];
        [v66 uncompressModelAndUpdateFactors:v38 destinationPath:v10];
        goto LABEL_43;
      }
    }
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = *(v13 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__SGStructuredEventTrialClientWrapper_updateFactors__block_invoke_47;
    block[3] = &unk_278954A30;
    block[4] = v13;
    dispatch_async(v14, block);
  }

  v10 = [*(*(a1 + 32) + 8) levelForFactor:@"supportedProviders" withNamespaceName:@"PRODUCTIVITY_INTELLIGENCE_STRUCTURED_EVENTS"];
  v15 = [v10 fileValue];
  if (v15)
  {
    v16 = v15;
    v17 = [v10 fileValue];
    v18 = [v17 hasPath];

    if (v18)
    {
      v19 = MEMORY[0x277D425D8];
      v20 = [v10 fileValue];
      v21 = [v20 path];
      v79 = 0;
      v22 = [v19 dictionaryWithPath:v21 error:&v79];
      v23 = v79;

      if (v22)
      {
        v24 = v22;
        v25 = *(v3 + 1);
        *(v3 + 1) = v24;
      }

      else
      {
        v25 = sgEventsLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v67 = [v10 fileValue];
          v68 = [v67 path];
          *buf = 138412546;
          v82 = v68;
          v83 = 2112;
          v84 = v23;
          _os_log_error_impl(&dword_231E60000, v25, OS_LOG_TYPE_ERROR, "SGStructuredEventTrialClientWrapper: Unable to load plplist for %@ : %@", buf, 0x16u);
        }
      }
    }
  }

  v26 = [*(*(a1 + 32) + 8) levelForFactor:@"engineConfig" withNamespaceName:@"PRODUCTIVITY_INTELLIGENCE_STRUCTURED_EVENTS"];
  v27 = [v26 fileValue];
  if (v27)
  {
    v28 = v27;
    v29 = [v26 fileValue];
    v30 = [v29 hasPath];

    if (v30)
    {
      v31 = MEMORY[0x277D425D8];
      v32 = [v26 fileValue];
      v33 = [v32 path];
      v78 = 0;
      v34 = [v31 dictionaryWithPath:v33 error:&v78];
      v35 = v78;

      if (v34)
      {
        v36 = v34;
        v37 = *(v3 + 2);
        *(v3 + 2) = v36;
      }

      else
      {
        v37 = sgEventsLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v69 = [v26 fileValue];
          v70 = [v69 path];
          *buf = 138412546;
          v82 = v70;
          v83 = 2112;
          v84 = v35;
          _os_log_error_impl(&dword_231E60000, v37, OS_LOG_TYPE_ERROR, "SGStructuredEventTrialClientWrapper: Unable to load plplist for %@ : %@", buf, 0x16u);
        }
      }
    }
  }

  v38 = [*(*(a1 + 32) + 8) levelForFactor:@"structuredEventInputMapping" withNamespaceName:@"PRODUCTIVITY_INTELLIGENCE_STRUCTURED_EVENTS"];
  v39 = [v38 fileValue];
  if (v39)
  {
    v40 = v39;
    v41 = [v38 fileValue];
    v42 = [v41 hasPath];

    if (v42)
    {
      v43 = MEMORY[0x277D425D8];
      v44 = [v38 fileValue];
      v45 = [v44 path];
      v77 = 0;
      v46 = [v43 dictionaryWithPath:v45 error:&v77];
      v47 = v77;

      if (v46)
      {
        v48 = v46;
        v49 = *(v3 + 3);
        *(v3 + 3) = v48;
      }

      else
      {
        v49 = sgEventsLogHandle();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v75 = [v38 fileValue];
          v71 = [v75 path];
          *buf = 138412546;
          v82 = v71;
          v83 = 2112;
          v84 = v47;
          _os_log_error_impl(&dword_231E60000, v49, OS_LOG_TYPE_ERROR, "SGStructuredEventTrialClientWrapper: Unable to load plplist content for %@: %@", buf, 0x16u);
        }
      }
    }
  }

  v50 = [*(*(a1 + 32) + 8) levelForFactor:@"structuredEventOutputMapping" withNamespaceName:@"PRODUCTIVITY_INTELLIGENCE_STRUCTURED_EVENTS"];
  v51 = [v50 fileValue];
  if (v51)
  {
    v52 = v51;
    v53 = [v50 fileValue];
    v54 = [v53 hasPath];

    if (v54)
    {
      v74 = v5;
      v55 = MEMORY[0x277D425D8];
      v56 = [v50 fileValue];
      v57 = [v56 path];
      v76 = 0;
      v58 = [v55 dictionaryWithPath:v57 error:&v76];
      v59 = v76;

      if (v58)
      {
        v60 = v58;
        v61 = *(v3 + 4);
        *(v3 + 4) = v60;
      }

      else
      {
        v61 = sgRemindersLogHandle();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v73 = [v50 fileValue];
          v72 = [v73 path];
          *buf = 138412546;
          v82 = v72;
          v83 = 2112;
          v84 = v59;
          _os_log_error_impl(&dword_231E60000, v61, OS_LOG_TYPE_ERROR, "SGStructuredEventTrialClientWrapper: Unable to load plplist content for %@: %@", buf, 0x16u);
        }
      }

      v5 = v74;
    }
  }

  v62 = [*(*(a1 + 32) + 8) levelForFactor:@"foundInMailNotifications" withNamespaceName:@"PRODUCTIVITY_INTELLIGENCE_STRUCTURED_EVENTS"];
  v63 = v62;
  if (v62)
  {
    *(v3 + 40) = [v62 BOOLeanValue];
  }

  else
  {
    v64 = sgEventsLogHandle();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v64, OS_LOG_TYPE_ERROR, "SGStructuredEventTrialClientWrapper: TRILevel is nil for foundInMailNotifications", buf, 2u);
    }
  }

LABEL_43:
  v65 = *MEMORY[0x277D85DE8];
}

- (SGStructuredEventTrialClientWrapper)init
{
  v13.receiver = self;
  v13.super_class = SGStructuredEventTrialClientWrapper;
  v2 = [(SGTrialClientWrapper *)&v13 initWithClientIdentifier:106];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D425F8]);
    v4 = objc_opt_new();
    v5 = [v3 initWithGuardedData:v4];
    lock = v2->_lock;
    v2->_lock = v5;

    [(SGStructuredEventTrialClientWrapper *)v2 updateFactors];
    objc_initWeak(&location, v2);
    triClient = v2->super._triClient;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__SGStructuredEventTrialClientWrapper_init__block_invoke;
    v10[3] = &unk_27894FA80;
    objc_copyWeak(&v11, &location);
    v8 = [(TRIClient *)triClient addUpdateHandlerForNamespaceName:@"PRODUCTIVITY_INTELLIGENCE_STRUCTURED_EVENTS" usingBlock:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __43__SGStructuredEventTrialClientWrapper_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [MEMORY[0x277D73660] clientWithIdentifier:106];
    v2 = [v1 levelForFactor:@"StructuredEventModel.mlmodelc" withNamespaceName:@"PRODUCTIVITY_INTELLIGENCE_STRUCTURED_EVENTS"];
    v3 = [v2 fileValue];
    if (v3 && (v4 = v3, [v2 fileValue], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasPath"), v5, v4, v6))
    {
      v7 = [WeakRetained modelPathForTriClient:v1 andNamespace:@"PRODUCTIVITY_INTELLIGENCE_STRUCTURED_EVENTS"];
      if (v7)
      {
        v8 = [MEMORY[0x277CCAA00] defaultManager];
        v9 = [v8 fileExistsAtPath:v7];

        if ((v9 & 1) == 0)
        {
          v10 = [v2 fileValue];
          v11 = [v10 path];
          [WeakRetained uncompressModelAndUpdateFactors:v11 destinationPath:v7];
        }
      }
    }

    else
    {
      [WeakRetained[1] refresh];
      [WeakRetained updateFactors];
    }
  }
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2_15519 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_15519, &__block_literal_global_15520);
  }

  v3 = sharedInstance__pasExprOnceResult_15521;

  return v3;
}

void __53__SGStructuredEventTrialClientWrapper_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_15521;
  sharedInstance__pasExprOnceResult_15521 = v1;

  objc_autoreleasePoolPop(v0);
}

@end