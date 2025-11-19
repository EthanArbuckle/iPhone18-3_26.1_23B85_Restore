@interface SGReminderTrialClientWrapper
+ (id)sharedInstance;
- (BOOL)actionVerbOptional;
- (BOOL)confirmationOptional;
- (BOOL)triggerOptional;
- (SGReminderTrialClientWrapper)init;
- (id)messagesBannerLimit;
- (id)reminderEnrichments;
- (id)reminderInputMapping;
- (id)reminderOutputMapping;
- (id)reminderOverrides;
- (void)updateFactors;
@end

@implementation SGReminderTrialClientWrapper

- (id)reminderOutputMapping
{
  v15 = *MEMORY[0x277D85DE8];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__24277;
  v13 = __Block_byref_object_dispose__24278;
  v14 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__SGReminderTrialClientWrapper_reminderOutputMapping__block_invoke;
  v9[3] = &unk_27894FAD0;
  v9[4] = &buf;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v3 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v4 = sgRemindersLogHandle();
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
    _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGReminderTrialClientWrapper: reminderOutputMapping list loaded with Trial: %@", &buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)reminderInputMapping
{
  v15 = *MEMORY[0x277D85DE8];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__24277;
  v13 = __Block_byref_object_dispose__24278;
  v14 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__SGReminderTrialClientWrapper_reminderInputMapping__block_invoke;
  v9[3] = &unk_27894FAD0;
  v9[4] = &buf;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v3 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v4 = sgRemindersLogHandle();
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
    _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGReminderTrialClientWrapper: reminderInputMapping list loaded with Trial: %@", &buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)reminderEnrichments
{
  v15 = *MEMORY[0x277D85DE8];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__24277;
  v13 = __Block_byref_object_dispose__24278;
  v14 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__SGReminderTrialClientWrapper_reminderEnrichments__block_invoke;
  v9[3] = &unk_27894FAD0;
  v9[4] = &buf;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v3 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v4 = sgRemindersLogHandle();
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
    _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGReminderTrialClientWrapper: reminderEnrichments list loaded with Trial: %@", &buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)reminderOverrides
{
  v15 = *MEMORY[0x277D85DE8];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__24277;
  v13 = __Block_byref_object_dispose__24278;
  v14 = 0;
  lock = self->_lock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__SGReminderTrialClientWrapper_reminderOverrides__block_invoke;
  v9[3] = &unk_27894FAD0;
  v9[4] = &buf;
  [(_PASLock *)lock runWithLockAcquired:v9];
  v3 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v4 = sgRemindersLogHandle();
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
    _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGReminderTrialClientWrapper: reminderOverrides list loaded with Trial: %@", &buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)messagesBannerLimit
{
  v13 = *MEMORY[0x277D85DE8];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__24277;
  v11 = __Block_byref_object_dispose__24278;
  v12 = 0;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SGReminderTrialClientWrapper_messagesBannerLimit__block_invoke;
  v7[3] = &unk_27894FAD0;
  v7[4] = &buf;
  [(_PASLock *)lock runWithLockAcquired:v7];
  v3 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v4 = sgRemindersLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGReminderTrialClientWrapper: messagesBannerLimit: %@", &buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)actionVerbOptional
{
  v12 = *MEMORY[0x277D85DE8];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v10 = 0x2020000000;
  v11 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__SGReminderTrialClientWrapper_actionVerbOptional__block_invoke;
  v8[3] = &unk_27894FAD0;
  v8[4] = &buf;
  [(_PASLock *)lock runWithLockAcquired:v8];
  v3 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  v4 = sgRemindersLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = @"NO";
    if (v3)
    {
      v7 = @"YES";
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGReminderTrialClientWrapper: actionVerbOptional: %@", &buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)triggerOptional
{
  v12 = *MEMORY[0x277D85DE8];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v10 = 0x2020000000;
  v11 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__SGReminderTrialClientWrapper_triggerOptional__block_invoke;
  v8[3] = &unk_27894FAD0;
  v8[4] = &buf;
  [(_PASLock *)lock runWithLockAcquired:v8];
  v3 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  v4 = sgRemindersLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = @"NO";
    if (v3)
    {
      v7 = @"YES";
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGReminderTrialClientWrapper: triggerOptional: %@", &buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)confirmationOptional
{
  v12 = *MEMORY[0x277D85DE8];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v10 = 0x2020000000;
  v11 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__SGReminderTrialClientWrapper_confirmationOptional__block_invoke;
  v8[3] = &unk_27894FAD0;
  v8[4] = &buf;
  [(_PASLock *)lock runWithLockAcquired:v8];
  v3 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  v4 = sgRemindersLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = @"NO";
    if (v3)
    {
      v7 = @"YES";
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_debug_impl(&dword_231E60000, v4, OS_LOG_TYPE_DEBUG, "SGReminderTrialClientWrapper: confirmationOptional: %@", &buf, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)updateFactors
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__SGReminderTrialClientWrapper_updateFactors__block_invoke;
  v3[3] = &unk_27894FAA8;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

void __45__SGReminderTrialClientWrapper_updateFactors__block_invoke(uint64_t a1, void *a2)
{
  v103 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(v3 + 4) = 0;
  *(v3 + 10) = 0;
  v4 = *(v3 + 2);
  *(v3 + 2) = &unk_284749B30;

  v5 = sgRemindersLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEFAULT, "SGReminderTrialClientWrapper: Updating factors", buf, 2u);
  }

  [*(a1 + 32) refreshEnrollmentInformationForNamespace:@"PRODUCTIVITY_INTELLIGENCE_REMINDERS"];
  v6 = [*(*(a1 + 32) + 8) levelForFactor:@"ReminderModel.mlmodelc" withNamespaceName:@"PRODUCTIVITY_INTELLIGENCE_REMINDERS"];
  v7 = [v6 fileValue];
  if (v7 && (v8 = v7, [v6 fileValue], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "hasPath"), v9, v8, v10))
  {
    v11 = [*(a1 + 32) modelPathForCurrentEnrollment];
    if (v11)
    {
      v12 = [MEMORY[0x277CCAA00] defaultManager];
      v13 = [v12 fileExistsAtPath:v11];

      if ((v13 & 1) == 0)
      {
        v80 = *(a1 + 32);
        v77 = [v6 fileValue];
        v78 = [v77 path];
        [v80 uncompressModelAndUpdateFactors:v78 destinationPath:v11];
        goto LABEL_57;
      }
    }
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__SGReminderTrialClientWrapper_updateFactors__block_invoke_61;
    block[3] = &unk_278954A30;
    block[4] = v14;
    dispatch_async(v15, block);
  }

  v16 = [*(*(a1 + 32) + 8) levelForFactor:@"confirmationOptional" withNamespaceName:@"PRODUCTIVITY_INTELLIGENCE_REMINDERS"];
  v11 = v16;
  if (v16)
  {
    *(v3 + 8) = [v16 BOOLeanValue];
  }

  else
  {
    v17 = sgRemindersLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v17, OS_LOG_TYPE_ERROR, "SGReminderTrialClientWrapper: TRILevel is nil for confirmationOptional", buf, 2u);
    }
  }

  v18 = [*(*(a1 + 32) + 8) levelForFactor:@"triggerOptional" withNamespaceName:@"PRODUCTIVITY_INTELLIGENCE_REMINDERS"];
  v19 = v18;
  if (v18)
  {
    *(v3 + 9) = [v18 BOOLeanValue];
  }

  else
  {
    v20 = sgRemindersLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v20, OS_LOG_TYPE_ERROR, "SGReminderTrialClientWrapper: TRILevel is nil for triggerOptional", buf, 2u);
    }
  }

  v21 = [*(*(a1 + 32) + 8) levelForFactor:@"actionVerbOptional" withNamespaceName:@"PRODUCTIVITY_INTELLIGENCE_REMINDERS"];
  v22 = v21;
  if (v21)
  {
    *(v3 + 10) = [v21 BOOLeanValue];
  }

  else
  {
    v23 = sgRemindersLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v23, OS_LOG_TYPE_ERROR, "SGReminderTrialClientWrapper: TRILevel is nil for actionVerbOptional", buf, 2u);
    }
  }

  v24 = [*(*(a1 + 32) + 8) levelForFactor:@"messagesBannerLimit" withNamespaceName:@"PRODUCTIVITY_INTELLIGENCE_REMINDERS"];
  v92 = v22;
  v93 = v19;
  v91 = v24;
  if (v24)
  {
    v25 = v24;
    v26 = objc_alloc(MEMORY[0x277CCABB0]);
    [v25 doubleValue];
    v27 = [v26 initWithDouble:?];
    v28 = *(v3 + 2);
    *(v3 + 2) = v27;
  }

  else
  {
    v28 = sgRemindersLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v28, OS_LOG_TYPE_ERROR, "SGReminderTrialClientWrapper: TRILevel is nil for messagesBannerLimit", buf, 2u);
    }
  }

  v29 = [*(*(a1 + 32) + 8) levelForFactor:@"reminderOverrides" withNamespaceName:@"PRODUCTIVITY_INTELLIGENCE_REMINDERS"];
  v30 = [v29 fileValue];
  if (v30)
  {
    v31 = v30;
    v32 = [v29 fileValue];
    v33 = [v32 hasPath];

    if (v33)
    {
      v34 = MEMORY[0x277D425D8];
      v35 = [v29 fileValue];
      v36 = [v35 path];
      v97 = 0;
      v37 = [v34 dictionaryWithPath:v36 error:&v97];
      v38 = v97;

      if (v37)
      {
        v39 = v37;
        v40 = *(v3 + 3);
        *(v3 + 3) = v39;
      }

      else
      {
        v40 = sgRemindersLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v81 = [v29 fileValue];
          v82 = [v81 path];
          *buf = 138412546;
          v100 = v82;
          v101 = 2112;
          v102 = v38;
          _os_log_error_impl(&dword_231E60000, v40, OS_LOG_TYPE_ERROR, "Unable to load plplist content for %@: %@", buf, 0x16u);
        }
      }
    }
  }

  v41 = [*(*(a1 + 32) + 8) levelForFactor:@"reminderPreprocessor" withNamespaceName:@"PRODUCTIVITY_INTELLIGENCE_REMINDERS"];
  v42 = [v41 fileValue];
  if (v42)
  {
    v43 = v42;
    v44 = [v41 fileValue];
    v45 = [v44 hasPath];

    if (v45)
    {
      v46 = MEMORY[0x277D425D8];
      v47 = [v41 fileValue];
      v48 = [v47 path];
      v96 = 0;
      v49 = [v46 dictionaryWithPath:v48 error:&v96];
      v50 = v96;

      if (v49)
      {
        v51 = v49;
        v52 = *(v3 + 4);
        *(v3 + 4) = v51;
      }

      else
      {
        v52 = sgRemindersLogHandle();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v90 = [v29 fileValue];
          v83 = [v90 path];
          *buf = 138412546;
          v100 = v83;
          v101 = 2112;
          v102 = v50;
          _os_log_error_impl(&dword_231E60000, v52, OS_LOG_TYPE_ERROR, "Unable to load plplist content for %@: %@", buf, 0x16u);
        }
      }
    }
  }

  v53 = [*(*(a1 + 32) + 8) levelForFactor:@"reminderInputMapping" withNamespaceName:@"PRODUCTIVITY_INTELLIGENCE_REMINDERS"];
  v54 = [v53 fileValue];
  if (v54)
  {
    v55 = v54;
    v56 = [v53 fileValue];
    v57 = [v56 hasPath];

    if (v57)
    {
      v88 = v6;
      v58 = MEMORY[0x277D425D8];
      v59 = [v53 fileValue];
      v60 = [v59 path];
      v95 = 0;
      v61 = [v58 dictionaryWithPath:v60 error:&v95];
      v62 = v95;

      if (v61)
      {
        v63 = v61;
        v64 = *(v3 + 5);
        *(v3 + 5) = v63;
      }

      else
      {
        v64 = sgRemindersLogHandle();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          v86 = [v53 fileValue];
          v84 = [v86 path];
          *buf = 138412546;
          v100 = v84;
          v101 = 2112;
          v102 = v62;
          _os_log_error_impl(&dword_231E60000, v64, OS_LOG_TYPE_ERROR, "Unable to load plplist content for %@: %@", buf, 0x16u);
        }
      }

      v6 = v88;
    }
  }

  v65 = [*(*(a1 + 32) + 8) levelForFactor:@"reminderOutputMapping" withNamespaceName:@"PRODUCTIVITY_INTELLIGENCE_REMINDERS"];
  v66 = [v65 fileValue];
  if (v66)
  {
    v67 = v66;
    v68 = [v65 fileValue];
    v69 = [v68 hasPath];

    if (v69)
    {
      v89 = v6;
      v70 = MEMORY[0x277D425D8];
      v71 = [v65 fileValue];
      v72 = [v71 path];
      v94 = 0;
      v73 = [v70 dictionaryWithPath:v72 error:&v94];
      v74 = v94;

      if (v73)
      {
        v75 = v73;
        v76 = *(v3 + 6);
        *(v3 + 6) = v75;
      }

      else
      {
        v76 = sgRemindersLogHandle();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          v87 = [v65 fileValue];
          v85 = [v87 path];
          *buf = 138412546;
          v100 = v85;
          v101 = 2112;
          v102 = v74;
          _os_log_error_impl(&dword_231E60000, v76, OS_LOG_TYPE_ERROR, "Unable to load plplist content for %@: %@", buf, 0x16u);
        }
      }

      v6 = v89;
    }
  }

  v78 = v92;
  v77 = v93;
LABEL_57:

  v79 = *MEMORY[0x277D85DE8];
}

- (SGReminderTrialClientWrapper)init
{
  v13.receiver = self;
  v13.super_class = SGReminderTrialClientWrapper;
  v2 = [(SGTrialClientWrapper *)&v13 initWithClientIdentifier:106];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D425F8]);
    v4 = objc_opt_new();
    v5 = [v3 initWithGuardedData:v4];
    lock = v2->_lock;
    v2->_lock = v5;

    [(SGReminderTrialClientWrapper *)v2 updateFactors];
    objc_initWeak(&location, v2);
    triClient = v2->super._triClient;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __36__SGReminderTrialClientWrapper_init__block_invoke;
    v10[3] = &unk_27894FA80;
    objc_copyWeak(&v11, &location);
    v8 = [(TRIClient *)triClient addUpdateHandlerForNamespaceName:@"PRODUCTIVITY_INTELLIGENCE_REMINDERS" usingBlock:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __36__SGReminderTrialClientWrapper_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [MEMORY[0x277D73660] clientWithIdentifier:106];
    v2 = [v1 levelForFactor:@"ReminderModel.mlmodelc" withNamespaceName:@"PRODUCTIVITY_INTELLIGENCE_REMINDERS"];
    v3 = [v2 fileValue];
    if (v3 && (v4 = v3, [v2 fileValue], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasPath"), v5, v4, v6))
    {
      v7 = [WeakRetained modelPathForTriClient:v1 andNamespace:@"PRODUCTIVITY_INTELLIGENCE_REMINDERS"];
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
  if (sharedInstance__pasOnceToken2_24351 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_24351, &__block_literal_global_24352);
  }

  v3 = sharedInstance__pasExprOnceResult_24353;

  return v3;
}

void __46__SGReminderTrialClientWrapper_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_24353;
  sharedInstance__pasExprOnceResult_24353 = v1;

  objc_autoreleasePoolPop(v0);
}

@end