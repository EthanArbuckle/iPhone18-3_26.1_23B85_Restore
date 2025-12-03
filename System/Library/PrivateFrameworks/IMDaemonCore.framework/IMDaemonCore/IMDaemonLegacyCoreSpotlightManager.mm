@interface IMDaemonLegacyCoreSpotlightManager
- (BOOL)_deviceConditionsAllowsSpotlightIndexingForActivity:(id)activity;
- (id)_newSpotlightBatchIndexingXPCCriteria;
- (int64_t)_indexReason;
- (void)_indexNextBatchIfNecessaryForActivity:(id)activity;
- (void)_reindexPaused;
- (void)_reindexResumed;
- (void)_setReindexReason;
- (void)registerForCoreSpotlightIndexing;
- (void)registerForCoreSpotlightMigration;
@end

@implementation IMDaemonLegacyCoreSpotlightManager

- (void)_reindexResumed
{
  mEMORY[0x277D18F10] = [MEMORY[0x277D18F10] sharedNotifier];

  if (mEMORY[0x277D18F10])
  {
    v4 = +[IMDaemonCoreSpotlightUtilities currentClientState];
    mEMORY[0x277D18F10]2 = [MEMORY[0x277D18F10] sharedNotifier];
    [MEMORY[0x277D1A978] reindexReason];
    [mEMORY[0x277D18F10]2 reindexResumedWithState:v4 reason:IMCoreSpotlightIndexReasonFromReindexReason()];
  }
}

- (void)_reindexPaused
{
  mEMORY[0x277D18F10] = [MEMORY[0x277D18F10] sharedNotifier];

  if (mEMORY[0x277D18F10])
  {
    v4 = +[IMDaemonCoreSpotlightUtilities currentClientState];
    mEMORY[0x277D18F10]2 = [MEMORY[0x277D18F10] sharedNotifier];
    [MEMORY[0x277D1A978] reindexReason];
    [mEMORY[0x277D18F10]2 reindexPausedWithState:v4 reason:IMCoreSpotlightIndexReasonFromReindexReason()];
  }
}

- (int64_t)_indexReason
{
  if (![MEMORY[0x277D1A978] reindexReason])
  {
    return 2;
  }

  return IMCoreSpotlightIndexReasonFromReindexReason();
}

- (void)_setReindexReason
{
  +[IMDaemonCoreSpotlightUtilities needsDeferredIndexing];

  IMSetDomainIntForKey();
}

- (void)registerForCoreSpotlightIndexing
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Setting up xpc activity handler for Core Spotlight indexing or donation", buf, 2u);
    }
  }

  v4 = *MEMORY[0x277D86238];
  IMRegisterSADAwareXPCActivity();
  v5 = objc_alloc_init(IMDSpotlightDaemonClient);
  [(IMDaemonLegacyCoreSpotlightManager *)self setIndexingDelegate:v5];

  indexingDelegate = [(IMDaemonLegacyCoreSpotlightManager *)self indexingDelegate];
  SpotlightDaemonClientRegister();

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Initialized Spotlight daemon client", buf, 2u);
    }
  }
}

- (void)registerForCoreSpotlightMigration
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86328], 1);
  IMRegisterSADAwareXPCActivity();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Registered migration spotlight activity", v4, 2u);
    }
  }
}

- (id)_newSpotlightBatchIndexingXPCCriteria
{
  v2 = +[IMDaemonCoreSpotlightUtilities batchIndexingIntervalBagValue];
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_int64(v3, *MEMORY[0x277D86288], v2);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86230], 0);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86398], 0);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D863A0], 1);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86380], 1);
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isIntensiveSpotlightCPUEnabled = [mEMORY[0x277D1A9B8] isIntensiveSpotlightCPUEnabled];

  if (isIntensiveSpotlightCPUEnabled)
  {
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86248], 1);
  }

  mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isIntensiveSpotlightMemoryEnabled = [mEMORY[0x277D1A9B8]2 isIntensiveSpotlightMemoryEnabled];

  if (isIntensiveSpotlightMemoryEnabled)
  {
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D862E0], 1);
  }

  mEMORY[0x277D1A9B8]3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isIntensiveSpotlightDiskEnabled = [mEMORY[0x277D1A9B8]3 isIntensiveSpotlightDiskEnabled];

  if (isIntensiveSpotlightDiskEnabled)
  {
    xpc_dictionary_set_BOOL(v3, *MEMORY[0x277D86258], 1);
  }

  return v3;
}

- (void)_indexNextBatchIfNecessaryForActivity:(id)activity
{
  v20 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Index next batch request received", buf, 2u);
    }
  }

  if ([MEMORY[0x277D1A978] skipIndexing])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        skipIndexing = [MEMORY[0x277D1A978] skipIndexing];
        v8 = @"NO";
        if (skipIndexing)
        {
          v8 = @"YES";
        }

        *buf = 138412290;
        v19 = v8;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Skipping indexing next batch since skipIndexing is set to %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = dispatch_group_create();
    dispatch_group_enter(v9);
    v10 = +[IMDaemonCoreSpotlightUtilities spotlightIndexQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B535BEC;
    block[3] = &unk_278702FF0;
    v17 = v9;
    v11 = v9;
    dispatch_async(v10, block);

    v12 = +[IMDaemonCoreSpotlightUtilities spotlightIndexQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22B535EA4;
    v14[3] = &unk_278702FA0;
    v14[4] = self;
    v15 = activityCopy;
    dispatch_group_notify(v11, v12, v14);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_deviceConditionsAllowsSpotlightIndexingForActivity:(id)activity
{
  v20 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  if (!activityCopy)
  {
    goto LABEL_9;
  }

  v5 = [(IMDaemonLegacyCoreSpotlightManager *)self _shouldDeferXPCActivity:activityCopy];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (v5)
      {
        v7 = @"YES";
      }

      v16 = 136315394;
      v17 = "[IMDaemonLegacyCoreSpotlightManager _deviceConditionsAllowsSpotlightIndexingForActivity:]";
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "%s xpc_activity_should_defer should defer %@", &v16, 0x16u);
    }
  }

  if (v5)
  {
    goto LABEL_9;
  }

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  if (isLowPowerModeEnabled)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = 136315138;
        v17 = "[IMDaemonLegacyCoreSpotlightManager _deviceConditionsAllowsSpotlightIndexingForActivity:]";
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "%s deferring activity due to LPM", &v16, 0xCu);
      }

LABEL_24:
    }
  }

  else
  {
    if (![MEMORY[0x277D18F08] isThrottled])
    {
      v10 = 1;
      goto LABEL_19;
    }

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = 136315138;
        v17 = "[IMDaemonLegacyCoreSpotlightManager _deviceConditionsAllowsSpotlightIndexingForActivity:]";
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "%s deferring activity due to throttling", &v16, 0xCu);
      }

      goto LABEL_24;
    }
  }

LABEL_9:
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Setting xpc_activity_t to XPC_ACTIVITY_STATE_DEFER because conditions are no longer met", &v16, 2u);
    }
  }

  if (![(IMDaemonLegacyCoreSpotlightManager *)self _deferXPCActivity:activityCopy]&& IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Error forcing xpc_activity_t to XPC_ACTIVITY_STATE_DEFER", &v16, 2u);
    }
  }

  v10 = 0;
LABEL_19:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

@end