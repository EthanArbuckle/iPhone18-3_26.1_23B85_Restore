@interface CDMSSUService
+ (BOOL)isEnabled;
+ (id)acquireOrBuildMatcher:(id)a3 systemState:(id)a4 error:(id *)a5;
+ (id)assetDirectoryURLForServiceAssetBundle:(id)a3;
+ (id)buildDeviceSystemStateLocale:(id)a3;
+ (id)buildMatcherRequestQueue;
+ (id)buildSystemStateForServiceStateDirectory:(id)a3 locale:(id)a4;
+ (id)buildSystemStateForSsuSandboxDirectories:(id)a3 locale:(id)a4;
+ (id)getAssetsDirectory:(id)a3 factorName:(id)a4 error:(id *)a5;
+ (id)getCDMServiceAssetConfig;
+ (id)getMatcherWithAssetCollection:(id)a3 systemState:(id)a4;
+ (id)getSystemEventStreamQueue;
+ (id)getSystemEventTimeoutQueue;
+ (id)lookupSSUSandboxDirectories:(id)a3;
+ (id)xpcEventStreamsSupported;
+ (void)dispatchAsyncWithTransaction:(id)a3 block:(id)a4;
+ (void)fetchVoiceShortcutsWithMatcher:(id)a3 assetCollection:(id)a4 block:(id)a5;
+ (void)handleFetchVoiceShortcutsTimeout:(double)a3 transactionPtr:(id *)a4;
+ (void)handleMaintenanceMode:(id)a3;
+ (void)handlePostInstall:(id)a3;
+ (void)handleTrialAssetUpdate:(id)a3;
+ (void)handleVoiceShortcutsCompletion:(id)a3 voiceShortcuts:(id)a4 voiceShortcutsError:(id)a5 block:(id)a6;
+ (void)handleXPCActivity:(id)a3 withAssets:(id)a4 withSelfMetadata:(id)a5;
+ (void)handleXPCEvent:(id)a3 fromStream:(id)a4 withAssets:(id)a5 withSelfMetadata:(id)a6;
+ (void)handleXPCEventApplicationInner:(id)a3 assetCollection:(id)a4 block:(id)a5;
+ (void)handleXPCEventShortcutsDatabaseChanged:(id)a3;
+ (void)performFullCacheUpdate:(id)a3 assetCollection:(id)a4 systemState:(id)a5;
- (BOOL)executeMatcherRequestBlockWithTimeout:(id)a3;
- (id)abortHandleWithErrorCode:(int64_t)a3 description:(id)a4;
- (id)errorSetupWithErrorDescription:(id)a3;
- (id)failSetupWithErrorDescription:(id)a3;
- (id)handle:(id)a3;
- (id)handleRequestCommandTypeNames;
- (id)setup:(id)a3;
- (void)forceAppsRescanIfEnabled;
- (void)forceFullCacheUpdateIfEnabled;
- (void)performAppRescanForSandboxInstalledApps;
@end

@implementation CDMSSUService

+ (id)xpcEventStreamsSupported
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = [XPCStreamEventRegistration registrationWithStream:@"com.apple.distnoted.matching" eventName:@"com.apple.LaunchServices.applicationRegistered" dagServiceClass:objc_opt_class()];
  v4 = [XPCStreamEventRegistration registrationWithStream:@"com.apple.distnoted.matching" eventName:@"com.apple.LaunchServices.applicationUnregistered" dagServiceClass:objc_opt_class()];
  v5 = [XPCStreamEventRegistration registrationWithStream:@"com.apple.notifyd.matching" eventName:@"com.apple.trial.NamespaceUpdate.SIRI_UNDERSTANDING_NL" dagServiceClass:objc_opt_class()];
  v6 = [XPCStreamEventRegistration registrationWithStream:@"com.apple.notifyd.matching" eventName:@"com.apple.siri.uaf.com.apple.siri.understanding" dagServiceClass:objc_opt_class()];
  v7 = [XPCStreamEventRegistration registrationWithStream:@"com.apple.notifyd.matching" eventName:*MEMORY[0x1E69E0FC8] dagServiceClass:objc_opt_class()];
  v8 = [v2 arrayWithObjects:{v3, v4, v5, v6, v7, 0}];

  return v8;
}

+ (BOOL)isEnabled
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = +[CDMFeatureFlags isSSUEnabled];
  if (!v2)
  {
    v3 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315138;
      v7 = "+[CDMSSUService isEnabled]";
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

- (id)handleRequestCommandTypeNames
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMSSURequestCommand];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 setWithArray:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)getCDMServiceAssetConfig
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(CDMServiceAssetConfig);
  v9 = @"ssu_encoder";
  v10[0] = @"com.apple.siri.nl.ssu.encoder";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  v10[1] = @"com.apple.siri.nl.ssu.datasets";
  v11[0] = v3;
  v8 = @"ssu_datasets";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  v11[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v5 forAssetSet:0];

  [(CDMServiceAssetConfig *)v2 setIsAssetRequiredForSetup:0];
  v6 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)buildMatcherRequestQueue
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_attr_make_with_qos_class(v2, QOS_CLASS_USER_INITIATED, 0);
  v4 = dispatch_queue_create("com.apple.siri.cdm.CDMSSUService", v3);

  return v4;
}

- (void)forceFullCacheUpdateIfEnabled
{
  v19 = *MEMORY[0x1E69E9840];
  if (+[CDMFeatureFlags isSSUCacheUpdateOnEveryRequestEnabled])
  {
    v3 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v16 = "[CDMSSUService forceFullCacheUpdateIfEnabled]";
      _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s Forcing full cache update due to feature flag", buf, 0xCu);
    }

    v4 = [(SSUSystemState *)self->__systemState installedAppProvider];
    v5 = [v4 lookupAllSSUEnabledApps];

    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v12 = [v5 count];
      *buf = 136315394;
      v16 = "[CDMSSUService forceFullCacheUpdateIfEnabled]";
      v17 = 2048;
      v18 = v12;
      _os_log_debug_impl(&dword_1DC287000, v6, OS_LOG_TYPE_DEBUG, "%s Found %lu SSU-enabled apps on device", buf, 0x16u);
    }

    matcher = self->__matcher;
    v14 = 0;
    v8 = [(SNLPSSUMatcher *)matcher performFullCacheUpdate:v5 error:&v14];
    v9 = v14;
    if ((v8 & 1) == 0)
    {
      v10 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = [CDMPlatformUtils prettyPrintError:v9];
        *buf = 136315394;
        v16 = "[CDMSSUService forceFullCacheUpdateIfEnabled]";
        v17 = 2112;
        v18 = v13;
        _os_log_error_impl(&dword_1DC287000, v10, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to perform full cache update with error: %@. We will continue processing, despite this failure.", buf, 0x16u);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)performAppRescanForSandboxInstalledApps
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(SSUSystemState *)self->__systemState installedAppProvider];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v25 = "[CDMSSUService performAppRescanForSandboxInstalledApps]";
      _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Performing app rescan due to service state directory apps", buf, 0xCu);
    }

    v6 = [(SSUSystemState *)self->__systemState installedAppProvider];
    v7 = [v6 lookupAllSSUEnabledApps];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v9)
    {
      v10 = *v21;
      do
      {
        v11 = 0;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v20 + 1) + 8 * v11);
          matcher = self->__matcher;
          v19 = 0;
          v14 = [(SNLPSSUMatcher *)matcher registerApp:v12 error:&v19];
          v15 = v19;
          if ((v14 & 1) == 0)
          {
            v16 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v17 = [CDMPlatformUtils prettyPrintError:v15];
              *buf = 136315394;
              v25 = "[CDMSSUService performAppRescanForSandboxInstalledApps]";
              v26 = 2112;
              v27 = v17;
              _os_log_error_impl(&dword_1DC287000, v16, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to register app: %@. We will continue processing, despite this failure.", buf, 0x16u);
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v9);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

+ (void)dispatchAsyncWithTransaction:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 getSystemEventStreamQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__CDMSSUService_SystemEvent__dispatchAsyncWithTransaction_block___block_invoke;
  v11[3] = &unk_1E862F240;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [SSUXPCUtils dispatchAsyncWithTransaction:v8 block:v11];
}

+ (id)getMatcherWithAssetCollection:(id)a3 systemState:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v4 = [a1 acquireOrBuildMatcher:a3 systemState:a4 error:&v10];
  v5 = v10;
  if (!v4)
  {
    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = [CDMPlatformUtils prettyPrintError:v5];
      *buf = 136315394;
      v12 = "+[CDMSSUService(SystemEvent) getMatcherWithAssetCollection:systemState:]";
      v13 = 2112;
      v14 = v9;
      _os_log_error_impl(&dword_1DC287000, v6, OS_LOG_TYPE_ERROR, "%s [ERR]: Could not acquire/build SNLPSSUMatcher instance: %@.", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (void)handleXPCEventApplicationInner:(id)a3 assetCollection:(id)a4 block:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([SSUXPCUtils isPlaceholder:v8])
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v28 = "+[CDMSSUService(SystemEvent) handleXPCEventApplicationInner:assetCollection:block:]";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Received placeholder application XPC event. We only want to action non-placeholder ones. Aborting XPC event handling.", buf, 0xCu);
    }
  }

  else
  {
    v11 = [SSUXPCUtils extractSingleBundleId:v8];
    if (v11)
    {
      v12 = os_signpost_id_generate(CDMLogContext);
      v13 = CDMLogContext;
      v14 = v13;
      if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1DC287000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "CDMSSUService+SystemEvent enqueue for handling", "", buf, 2u);
      }

      v15 = [v9 languageCode];
      v16 = [a1 buildSystemStateForSystemEventWithLocale:v15];

      v17 = [a1 getMatcherWithAssetCollection:v9 systemState:v16];
      if (v17)
      {
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __83__CDMSSUService_SystemEvent__handleXPCEventApplicationInner_assetCollection_block___block_invoke;
        v22[3] = &unk_1E862EBA0;
        v26 = v10;
        v23 = v16;
        v24 = v17;
        v25 = v11;
        [a1 dispatchAsyncWithTransaction:v9 block:v22];
        v18 = CDMLogContext;
        v19 = v18;
        if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1DC287000, v19, OS_SIGNPOST_INTERVAL_END, v12, "CDMSSUService+SystemEvent enqueue for handling", "", buf, 2u);
        }

        v20 = v26;
      }

      else
      {
        v20 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v28 = "+[CDMSSUService(SystemEvent) handleXPCEventApplicationInner:assetCollection:block:]";
          _os_log_error_impl(&dword_1DC287000, v20, OS_LOG_TYPE_ERROR, "%s [ERR]: Could not get matcher. Aborting XPC event handling.", buf, 0xCu);
        }
      }
    }

    else
    {
      v16 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v28 = "+[CDMSSUService(SystemEvent) handleXPCEventApplicationInner:assetCollection:block:]";
        _os_log_error_impl(&dword_1DC287000, v16, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to extract app bundle ID from XPC event. Aborting XPC event handling.", buf, 0xCu);
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __83__CDMSSUService_SystemEvent__handleXPCEventApplicationInner_assetCollection_block___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) installedAppProvider];
  (*(v2 + 16))(v2, v3, *(a1 + 40), *(a1 + 48));
}

+ (void)performFullCacheUpdate:(id)a3 assetCollection:(id)a4 systemState:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v21 = "+[CDMSSUService(SystemEvent) performFullCacheUpdate:assetCollection:systemState:]";
    _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Performing full cache update", buf, 0xCu);
  }

  v12 = [v8 installedAppProvider];

  v13 = [v12 lookupAllSSUEnabledApps];

  v14 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v13 count];
    *buf = 136315394;
    v21 = "+[CDMSSUService(SystemEvent) performFullCacheUpdate:assetCollection:systemState:]";
    v22 = 2048;
    v23 = v17;
    _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s Found %lu SSU-enabled apps on device", buf, 0x16u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__CDMSSUService_SystemEvent__performFullCacheUpdate_assetCollection_systemState___block_invoke;
  v18[3] = &unk_1E862EB78;
  v19 = v13;
  v15 = v13;
  [a1 fetchVoiceShortcutsWithMatcher:v10 assetCollection:v9 block:v18];

  v16 = *MEMORY[0x1E69E9840];
}

void __81__CDMSSUService_SystemEvent__performFullCacheUpdate_assetCollection_systemState___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v9 = 0;
  v4 = [a2 performFullCacheUpdateWithUserShortcuts:a3 applicationInfos:v3 error:&v9];
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [CDMPlatformUtils prettyPrintError:v5];
      *buf = 136315394;
      v11 = "+[CDMSSUService(SystemEvent) performFullCacheUpdate:assetCollection:systemState:]_block_invoke";
      v12 = 2112;
      v13 = v8;
      _os_log_error_impl(&dword_1DC287000, v6, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to perform full cache update with error: %@.", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)handleVoiceShortcutsCompletion:(id)a3 voiceShortcuts:(id)a4 voiceShortcutsError:(id)a5 block:(id)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = os_signpost_id_generate(CDMLogContext);
  v14 = CDMLogContext;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CDMSSUService+SystemEvent handle user shortcuts completion", "", buf, 2u);
  }

  v16 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v43 = "+[CDMSSUService(SystemEvent) handleVoiceShortcutsCompletion:voiceShortcuts:voiceShortcutsError:block:]";
    _os_log_debug_impl(&dword_1DC287000, v16, OS_LOG_TYPE_DEBUG, "%s Fetch voice shortcuts completion handler called", buf, 0xCu);
  }

  v17 = CDMOSLoggerForCategory(0);
  v18 = v17;
  if (v10)
  {
    spid = v13;
    v34 = v13 - 1;
    v35 = v11;
    v36 = v9;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v32 = [v10 count];
      *buf = 136315394;
      v43 = "+[CDMSSUService(SystemEvent) handleVoiceShortcutsCompletion:voiceShortcuts:voiceShortcutsError:block:]";
      v44 = 2048;
      v45 = v32;
      _os_log_debug_impl(&dword_1DC287000, v18, OS_LOG_TYPE_DEBUG, "%s Received %lu voice shortcuts. Extracting identifiers/phrases from these.", buf, 0x16u);
    }

    v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v19 = v10;
    v20 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v38;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v37 + 1) + 8 * i);
          v25 = objc_alloc(MEMORY[0x1E69D1498]);
          v26 = [v24 identifier];
          v27 = [v24 phrase];
          v28 = [v25 initWithIdentifier:v26 phrase:v27];

          [v18 addObject:v28];
        }

        v21 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v21);
    }

    v9 = v36;
    (v12)[2](v12, v36, v18);
    v29 = CDMLogContext;
    v30 = v29;
    if (v34 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v30, OS_SIGNPOST_INTERVAL_END, spid, "CDMSSUService+SystemEvent handle user shortcuts completion", "", buf, 2u);
    }

    v11 = v35;
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v43 = "+[CDMSSUService(SystemEvent) handleVoiceShortcutsCompletion:voiceShortcuts:voiceShortcutsError:block:]";
    v44 = 2112;
    v45 = v11;
    _os_log_error_impl(&dword_1DC287000, v18, OS_LOG_TYPE_ERROR, "%s [ERR]: Hit error fetching voice shortcuts: %@. Aborting handling.", buf, 0x16u);
  }

  v31 = *MEMORY[0x1E69E9840];
}

+ (void)fetchVoiceShortcutsWithMatcher:(id)a3 assetCollection:(id)a4 block:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[CDMSSUService(SystemEvent) fetchVoiceShortcutsWithMatcher:assetCollection:block:]";
    _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Fetching voice shortcuts", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__1098;
  v35 = __Block_byref_object_dispose__1099;
  v36 = os_transaction_create();
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  [a1 getCompletionBlockTimeoutSeconds];
  v13 = v12;
  v14 = [MEMORY[0x1E69E0938] standardClient];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __83__CDMSSUService_SystemEvent__fetchVoiceShortcutsWithMatcher_assetCollection_block___block_invoke;
  v22[3] = &unk_1E862EB50;
  v26 = v30;
  p_buf = &buf;
  v28 = v13;
  v15 = v9;
  v23 = v15;
  v29 = a1;
  v16 = v8;
  v24 = v16;
  v17 = v10;
  v25 = v17;
  [v14 getVoiceShortcutsWithCompletion:v22];

  v18 = dispatch_time(0, (v13 * 1000000000.0));
  v19 = [a1 getSystemEventTimeoutQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__CDMSSUService_SystemEvent__fetchVoiceShortcutsWithMatcher_assetCollection_block___block_invoke_409;
  block[3] = &unk_1E862EED0;
  *&block[7] = v13;
  block[4] = v30;
  block[5] = &buf;
  block[6] = a1;
  dispatch_after(v18, v19, block);

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(&buf, 8);

  v20 = *MEMORY[0x1E69E9840];
}

void __83__CDMSSUService_SystemEvent__fetchVoiceShortcutsWithMatcher_assetCollection_block___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 56) + 8) + 24) = 1;
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v6 = *(a1 + 80);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v13 = *(a1 + 32);
    [v6 handleVoiceShortcutsCompletion:v7 voiceShortcuts:a2 voiceShortcutsError:a3 block:v8];
    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 72);
      *buf = 136315394;
      v15 = "+[CDMSSUService(SystemEvent) fetchVoiceShortcutsWithMatcher:assetCollection:block:]_block_invoke";
      v16 = 2048;
      v17 = v11;
    }

    v12 = *MEMORY[0x1E69E9840];
  }
}

void __83__CDMSSUService_SystemEvent__fetchVoiceShortcutsWithMatcher_assetCollection_block___block_invoke_409(double *a1)
{
  if ((*(*(*(a1 + 4) + 8) + 24) & 1) == 0)
  {
    v1 = a1[7];
    v2 = *(a1 + 6);
    v3 = *(*(a1 + 5) + 8);
    obj = *(v3 + 40);
    [v2 handleFetchVoiceShortcutsTimeout:&obj transactionPtr:v1];
    objc_storeStrong((v3 + 40), obj);
  }
}

+ (void)handleFetchVoiceShortcutsTimeout:(double)a3 transactionPtr:(id *)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "+[CDMSSUService(SystemEvent) handleFetchVoiceShortcutsTimeout:transactionPtr:]";
    v10 = 2048;
    v11 = a3;
  }

  *a4 = 0;
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)handlePostInstall:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v23 = "+[CDMSSUService(SystemEvent) handlePostInstall:]";
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Handling post install event by adding a block to the event queue", buf, 0xCu);
  }

  v6 = [v4 languageCode];
  v7 = [a1 buildSystemStateForSystemEventWithLocale:v6];

  v8 = [a1 getMatcherWithAssetCollection:v4 systemState:v7];
  v9 = v8;
  if (v8)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __48__CDMSSUService_SystemEvent__handlePostInstall___block_invoke;
    v17 = &unk_1E862EB28;
    v21 = a1;
    v18 = v8;
    v10 = v4;
    v19 = v10;
    v20 = v7;
    v11 = _Block_copy(&v14);
    [a1 dispatchAsyncWithTransaction:v10 block:{v11, v14, v15, v16, v17}];

    v12 = v18;
  }

  else
  {
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "+[CDMSSUService(SystemEvent) handlePostInstall:]";
      _os_log_error_impl(&dword_1DC287000, v12, OS_LOG_TYPE_ERROR, "%s [ERR]: Could not get matcher. Aborting post install handling.", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __48__CDMSSUService_SystemEvent__handlePostInstall___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315138;
    v10 = "+[CDMSSUService(SystemEvent) handlePostInstall:]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Handling post install event (inner block)", &v9, 0xCu);
  }

  v3 = os_signpost_id_generate(CDMLogContext);
  v4 = CDMLogContext;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "[CDMSSUService+SystemEvent handlePostInstall]", "", &v9, 2u);
  }

  [*(a1 + 56) performFullCacheUpdate:*(a1 + 32) assetCollection:*(a1 + 40) systemState:*(a1 + 48)];
  v6 = CDMLogContext;
  v7 = v6;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v7, OS_SIGNPOST_INTERVAL_END, v3, "[CDMSSUService+SystemEvent handlePostInstall]", "", &v9, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)handleMaintenanceMode:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v23 = "+[CDMSSUService(SystemEvent) handleMaintenanceMode:]";
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Handling maintenance mode event by adding a block to the event queue", buf, 0xCu);
  }

  v6 = [v4 languageCode];
  v7 = [a1 buildSystemStateForSystemEventWithLocale:v6];

  v8 = [a1 getMatcherWithAssetCollection:v4 systemState:v7];
  v9 = v8;
  if (v8)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __52__CDMSSUService_SystemEvent__handleMaintenanceMode___block_invoke;
    v17 = &unk_1E862EB28;
    v21 = a1;
    v18 = v8;
    v10 = v4;
    v19 = v10;
    v20 = v7;
    v11 = _Block_copy(&v14);
    [a1 dispatchAsyncWithTransaction:v10 block:{v11, v14, v15, v16, v17}];

    v12 = v18;
  }

  else
  {
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "+[CDMSSUService(SystemEvent) handleMaintenanceMode:]";
      _os_log_error_impl(&dword_1DC287000, v12, OS_LOG_TYPE_ERROR, "%s [ERR]: Could not get matcher. Aborting maintanence mode handling.", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __52__CDMSSUService_SystemEvent__handleMaintenanceMode___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315138;
    v10 = "+[CDMSSUService(SystemEvent) handleMaintenanceMode:]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Handling maintenance mode event (inner block)", &v9, 0xCu);
  }

  v3 = os_signpost_id_generate(CDMLogContext);
  v4 = CDMLogContext;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "[CDMSSUService+SystemEvent handleMaintenanceMode]", "", &v9, 2u);
  }

  [*(a1 + 56) performFullCacheUpdate:*(a1 + 32) assetCollection:*(a1 + 40) systemState:*(a1 + 48)];
  v6 = CDMLogContext;
  v7 = v6;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v7, OS_SIGNPOST_INTERVAL_END, v3, "[CDMSSUService+SystemEvent handleMaintenanceMode]", "", &v9, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)handleTrialAssetUpdate:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v23 = "+[CDMSSUService(SystemEvent) handleTrialAssetUpdate:]";
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Handling Trial asset update event by adding a block to the event queue", buf, 0xCu);
  }

  v6 = [v4 languageCode];
  v7 = [a1 buildSystemStateForSystemEventWithLocale:v6];

  v8 = [a1 getMatcherWithAssetCollection:v4 systemState:v7];
  v9 = v8;
  if (v8)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __53__CDMSSUService_SystemEvent__handleTrialAssetUpdate___block_invoke;
    v17 = &unk_1E862EB28;
    v21 = a1;
    v18 = v8;
    v10 = v4;
    v19 = v10;
    v20 = v7;
    v11 = _Block_copy(&v14);
    [a1 dispatchAsyncWithTransaction:v10 block:{v11, v14, v15, v16, v17}];

    v12 = v18;
  }

  else
  {
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "+[CDMSSUService(SystemEvent) handleTrialAssetUpdate:]";
      _os_log_error_impl(&dword_1DC287000, v12, OS_LOG_TYPE_ERROR, "%s [ERR]: Could not get matcher. Aborting Trial asset update handling.", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __53__CDMSSUService_SystemEvent__handleTrialAssetUpdate___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315138;
    v10 = "+[CDMSSUService(SystemEvent) handleTrialAssetUpdate:]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Handling Trial asset update event (inner block)", &v9, 0xCu);
  }

  v3 = os_signpost_id_generate(CDMLogContext);
  v4 = CDMLogContext;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CDMSSUService+SystemEvent handle Trial asset update", "", &v9, 2u);
  }

  [*(a1 + 56) performFullCacheUpdate:*(a1 + 32) assetCollection:*(a1 + 40) systemState:*(a1 + 48)];
  v6 = CDMLogContext;
  v7 = v6;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v9) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v7, OS_SIGNPOST_INTERVAL_END, v3, "CDMSSUService+SystemEvent handle Trial asset update", "", &v9, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)handleXPCActivity:(id)a3 withAssets:(id)a4 withSelfMetadata:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (+[CDMFeatureFlags isSSUEnableIndexingEnabled])
  {
    if (v7 == @"com.apple.siri.cdm.xpc_activity.maintenance")
    {
      [a1 handleMaintenanceMode:v8];
      goto LABEL_10;
    }

    if (v7 == @"com.apple.siri.cdm.xpc_activity.post_install")
    {
      [a1 handlePostInstall:v8];
      goto LABEL_10;
    }

    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "+[CDMSSUService(SystemEvent) handleXPCActivity:withAssets:withSelfMetadata:]";
      v14 = 2112;
      v15 = v7;
      v10 = "%s [ERR]: Unhandled activity type: %@";
LABEL_12:
      _os_log_error_impl(&dword_1DC287000, v9, OS_LOG_TYPE_ERROR, v10, &v12, 0x16u);
    }
  }

  else
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "+[CDMSSUService(SystemEvent) handleXPCActivity:withAssets:withSelfMetadata:]";
      v14 = 2048;
      v15 = v7;
      v10 = "%s [ERR]: handleXPCActivity:withAssets: called for activity type %ld with SSU indexing FF disabled";
      goto LABEL_12;
    }
  }

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];
}

+ (void)handleXPCEvent:(id)a3 fromStream:(id)a4 withAssets:(id)a5 withSelfMetadata:(id)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (+[CDMFeatureFlags isSSUEnableIndexingEnabled])
  {
    v12 = [XPCStreamEventUtils getXPCEventName:v9];
    if (v12)
    {
      v13 = v12;
      if ([@"com.apple.notifyd.matching" isEqualToString:v10] && ((objc_msgSend(@"com.apple.trial.NamespaceUpdate.SIRI_UNDERSTANDING_NL", "isEqualToString:", v13) & 1) != 0 || objc_msgSend(@"com.apple.siri.uaf.com.apple.siri.understanding", "isEqualToString:", v13)))
      {
        [a1 handleTrialAssetUpdate:v11];
      }

      else if ([@"com.apple.distnoted.matching" isEqualToString:v10] && objc_msgSend(@"com.apple.LaunchServices.applicationRegistered", "isEqualToString:", v13))
      {
        [a1 handleXPCEventApplicationRegistered:v9 assetCollection:v11];
      }

      else if ([@"com.apple.distnoted.matching" isEqualToString:v10] && objc_msgSend(@"com.apple.LaunchServices.applicationUnregistered", "isEqualToString:", v13))
      {
        [a1 handleXPCEventApplicationUnregistered:v9 assetCollection:v11];
      }

      else if ([@"com.apple.notifyd.matching" isEqualToString:v10] && objc_msgSend(*MEMORY[0x1E69E0FC8], "isEqualToString:", v13))
      {
        [a1 handleXPCEventShortcutsDatabaseChanged:v11];
      }

      else
      {
        v15 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v17 = 136315650;
          v18 = "+[CDMSSUService(SystemEvent) handleXPCEvent:fromStream:withAssets:withSelfMetadata:]";
          v19 = 2112;
          v20 = v10;
          v21 = 2112;
          v22 = v13;
          _os_log_error_impl(&dword_1DC287000, v15, OS_LOG_TYPE_ERROR, "%s [ERR]: Unhandled XPC event with streamName=%@, eventName=%@", &v17, 0x20u);
        }
      }
    }

    else
    {
      v14 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = 136315394;
        v18 = "+[CDMSSUService(SystemEvent) handleXPCEvent:fromStream:withAssets:withSelfMetadata:]";
        v19 = 2048;
        v20 = v9;
        _os_log_error_impl(&dword_1DC287000, v14, OS_LOG_TYPE_ERROR, "%s [ERR]: Could not extract XPC event name for event %p", &v17, 0x16u);
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v17 = 136315138;
      v18 = "+[CDMSSUService(SystemEvent) handleXPCEvent:fromStream:withAssets:withSelfMetadata:]";
      _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s handleXPCEvent:fromStream:withAssets: called with SSU indexing FF disabled", &v17, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

+ (void)handleXPCEventShortcutsDatabaseChanged:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315138;
    v12 = "+[CDMSSUService(SystemEvent) handleXPCEventShortcutsDatabaseChanged:]";
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Handling shortcuts database changed notification", &v11, 0xCu);
  }

  v6 = [v4 languageCode];
  v7 = [a1 buildSystemStateForSystemEventWithLocale:v6];

  v8 = [a1 getMatcherWithAssetCollection:v4 systemState:v7];
  if (v8)
  {
    [a1 fetchVoiceShortcutsWithMatcher:v8 assetCollection:v4 block:&__block_literal_global_400];
  }

  else
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "+[CDMSSUService(SystemEvent) handleXPCEventShortcutsDatabaseChanged:]";
      _os_log_error_impl(&dword_1DC287000, v9, OS_LOG_TYPE_ERROR, "%s [ERR]: Could not get matcher. Aborting Trial asset update handling.", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __69__CDMSSUService_SystemEvent__handleXPCEventShortcutsDatabaseChanged___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = [a2 handleUserShortcutsDatabaseChanged:a3 error:&v8];
  v4 = v8;
  if ((v3 & 1) == 0)
  {
    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [CDMPlatformUtils prettyPrintError:v4];
      *buf = 136315394;
      v10 = "+[CDMSSUService(SystemEvent) handleXPCEventShortcutsDatabaseChanged:]_block_invoke";
      v11 = 2112;
      v12 = v7;
      _os_log_error_impl(&dword_1DC287000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: Error handling shortcuts database changed notification: %@.", buf, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __84__CDMSSUService_SystemEvent__handleXPCEventApplicationUnregistered_assetCollection___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = CDMLogContext;
  v7 = a3;
  v8 = os_signpost_id_generate(v6);
  v9 = CDMLogContext;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "[CDMSSUService+SystemEvent handleXPCEventApplicationUnregistered]", "", buf, 2u);
  }

  v11 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v24 = "+[CDMSSUService(SystemEvent) handleXPCEventApplicationUnregistered:assetCollection:]_block_invoke";
    v25 = 2112;
    v26 = v5;
    _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Handling SSUXPCStreamEventTypeApplicationUnregistered for bundleId: %@", buf, 0x16u);
  }

  v22 = 0;
  v12 = [v7 deregisterApp:v5 error:&v22];

  v13 = v22;
  v14 = v13;
  if ((v12 & 1) == 0)
  {
    v15 = [v13 code];
    v16 = CDMOSLoggerForCategory(0);
    v17 = v16;
    if (v15 == 3)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v24 = "+[CDMSSUService(SystemEvent) handleXPCEventApplicationUnregistered:assetCollection:]_block_invoke";
        v25 = 2112;
        v26 = v5;
        _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s App %@ is not registered. Doing nothing.", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = [CDMPlatformUtils prettyPrintError:v14];
      *buf = 136315650;
      v24 = "+[CDMSSUService(SystemEvent) handleXPCEventApplicationUnregistered:assetCollection:]_block_invoke";
      v25 = 2112;
      v26 = v5;
      v27 = 2112;
      v28 = v21;
      _os_log_error_impl(&dword_1DC287000, v17, OS_LOG_TYPE_ERROR, "%s [ERR]: Error deregistering app %@: Error: %@.", buf, 0x20u);
    }
  }

  v18 = CDMLogContext;
  v19 = v18;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v19, OS_SIGNPOST_INTERVAL_END, v8, "[CDMSSUService+SystemEvent handleXPCEventApplicationUnregistered]", "", buf, 2u);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __82__CDMSSUService_SystemEvent__handleXPCEventApplicationRegistered_assetCollection___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CDMLogContext;
  v9 = a2;
  v10 = os_signpost_id_generate(v8);
  v11 = CDMLogContext;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "[CDMSSUService+SystemEvent handleXPCEventApplicationRegistered]", "", buf, 2u);
  }

  v13 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v24 = "+[CDMSSUService(SystemEvent) handleXPCEventApplicationRegistered:assetCollection:]_block_invoke";
    v25 = 2112;
    v26 = v7;
    _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s Handling SSUXPCStreamEventTypeApplicationRegistered for bundleId: %@", buf, 0x16u);
  }

  v14 = [v9 lookupSSUEnabledAppByBundleId:v7];

  if (v14)
  {
    v22 = 0;
    v15 = [v6 registerApp:v14 error:&v22];
    v16 = v22;
    if ((v15 & 1) == 0)
    {
      v17 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v21 = [CDMPlatformUtils prettyPrintError:v16];
        *buf = 136315650;
        v24 = "+[CDMSSUService(SystemEvent) handleXPCEventApplicationRegistered:assetCollection:]_block_invoke";
        v25 = 2112;
        v26 = v7;
        v27 = 2112;
        v28 = v21;
        _os_log_error_impl(&dword_1DC287000, v17, OS_LOG_TYPE_ERROR, "%s [ERR]: Error registering app %@: Error: %@.", buf, 0x20u);
      }
    }

    v18 = CDMLogContext;
    v19 = v18;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v19, OS_SIGNPOST_INTERVAL_END, v10, "[CDMSSUService+SystemEvent handleXPCEventApplicationRegistered]", "", buf, 2u);
    }
  }

  else
  {
    v16 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v24 = "+[CDMSSUService(SystemEvent) handleXPCEventApplicationRegistered:assetCollection:]_block_invoke";
      v25 = 2112;
      v26 = v7;
      _os_log_debug_impl(&dword_1DC287000, v16, OS_LOG_TYPE_DEBUG, "%s Could not lookup SSU app info for the bundle ID: %@. This is likely because the app is not SSU-enabled. Aborting.", buf, 0x16u);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

+ (id)getSystemEventTimeoutQueue
{
  if (getSystemEventTimeoutQueue_once != -1)
  {
    dispatch_once(&getSystemEventTimeoutQueue_once, &__block_literal_global_391);
  }

  v3 = SSUSystemEventTimeoutQueue;

  return v3;
}

void __56__CDMSSUService_SystemEvent__getSystemEventTimeoutQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);

  v1 = dispatch_queue_create("com.apple.siri.cdm.CDMSSUServiceTimeout", attr);
  v2 = SSUSystemEventTimeoutQueue;
  SSUSystemEventTimeoutQueue = v1;
}

+ (id)getSystemEventStreamQueue
{
  if (getSystemEventStreamQueue_once != -1)
  {
    dispatch_once(&getSystemEventStreamQueue_once, &__block_literal_global_1166);
  }

  v3 = SSUSystemEventStreamQueue;

  return v3;
}

void __55__CDMSSUService_SystemEvent__getSystemEventStreamQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);

  v1 = dispatch_queue_create("com.apple.siri.cdm.CDMSSUService", attr);
  v2 = SSUSystemEventStreamQueue;
  SSUSystemEventStreamQueue = v1;
}

- (void)forceAppsRescanIfEnabled
{
  v27 = *MEMORY[0x1E69E9840];
  if (+[CDMFeatureFlags isSSUCacheUpdateOnEveryRequestEnabled])
  {
    v3 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v23 = "[CDMSSUService forceAppsRescanIfEnabled]";
      _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s Forcing app rescan due to feature flag", buf, 0xCu);
    }

    v4 = [(SSUSystemState *)self->__systemState installedAppProvider];
    v5 = [v4 lookupAllSSUEnabledApps];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v7)
    {
      v8 = *v19;
      do
      {
        v9 = 0;
        do
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v18 + 1) + 8 * v9);
          matcher = self->__matcher;
          v17 = 0;
          v12 = [(SNLPSSUMatcher *)matcher registerApp:v10 error:&v17];
          v13 = v17;
          if ((v12 & 1) == 0)
          {
            v14 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v15 = [CDMPlatformUtils prettyPrintError:v13];
              *buf = 136315394;
              v23 = "[CDMSSUService forceAppsRescanIfEnabled]";
              v24 = 2112;
              v25 = v15;
              _os_log_error_impl(&dword_1DC287000, v14, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to register app: %@. We will continue processing, despite this failure.", buf, 0x16u);
            }
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v7);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)failSetupWithErrorDescription:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->super.super._serviceState = 4;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315394;
    v11 = "[CDMSSUService failSetupWithErrorDescription:]";
    v12 = 2112;
    v13 = v4;
    _os_log_error_impl(&dword_1DC287000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: Aborting [CDMSSUService setup:] due to error: %@", &v10, 0x16u);
  }

  v6 = [(CDMBaseService *)self createSetupResponseCommand];
  v7 = [(CDMBaseService *)self createErrorWithCode:4 description:v4];
  [v6 setCmdError:v7];

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)errorSetupWithErrorDescription:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->super.super._serviceState = 3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315394;
    v11 = "[CDMSSUService errorSetupWithErrorDescription:]";
    v12 = 2112;
    v13 = v4;
    _os_log_error_impl(&dword_1DC287000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: Error [CDMSSUService setup:] due to error: %@", &v10, 0x16u);
  }

  v6 = [(CDMBaseService *)self createSetupResponseCommand];
  v7 = [(CDMBaseService *)self createErrorWithCode:4 description:v4];
  [v6 setCmdError:v7];

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)abortHandleWithErrorCode:(int64_t)a3 description:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315394;
    v13 = "[CDMSSUService abortHandleWithErrorCode:description:]";
    v14 = 2112;
    v15 = v6;
    _os_log_error_impl(&dword_1DC287000, v7, OS_LOG_TYPE_ERROR, "%s [ERR]: Aborting [CDMSSUService handle:] due to error: %@", &v12, 0x16u);
  }

  v8 = [(CDMBaseService *)self createErrorWithCode:a3 description:v6];
  v9 = [[CDMSSUResponseCommand alloc] initWithCmdError:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)executeMatcherRequestBlockWithTimeout:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__CDMSSUService_executeMatcherRequestBlockWithTimeout___block_invoke;
  v9[3] = &unk_1E862F240;
  v9[4] = self;
  v10 = v4;
  v5 = v4;
  v6 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, v9);
  dispatch_async(self->__matcherRequestQueue, v6);
  v7 = dispatch_time(0, (self->__matcherRequestTimeoutSec * 1000000000.0));
  LOBYTE(self) = dispatch_block_wait(v6, v7) != 0;

  return self;
}

uint64_t __55__CDMSSUService_executeMatcherRequestBlockWithTimeout___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _matcherRequestQueue];
  dispatch_assert_queue_V2(v2);

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (id)setup:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v42 = "[CDMSSUService setup:]";
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Running [CDMSSUService setup:]", buf, 0xCu);
  }

  v6 = [v4 dynamicConfig];
  v7 = [v6 getAssetForFactorName:@"com.apple.siri.nl.ssu.encoder"];
  nlAssetModel = self->__nlAssetModel;
  self->__nlAssetModel = v7;

  v9 = [v4 dynamicConfig];
  v10 = [v9 getAssetForFactorName:@"com.apple.siri.nl.ssu.datasets"];
  nlAssetDataset = self->__nlAssetDataset;
  self->__nlAssetDataset = v10;

  v12 = [v4 dynamicConfig];
  v13 = [v12 graphName];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [v13 isEqualToString:v15];

  if (v16)
  {
    v17 = [v4 dynamicConfig];
    v18 = [v17 languageCode];
    [CDMUAFAssetsManager subscribeToSsuAssetsForLocale:v18];
  }

  self->__matcherRequestTimeoutSec = 0.5;
  v19 = [objc_opt_class() buildMatcherRequestQueue];
  matcherRequestQueue = self->__matcherRequestQueue;
  self->__matcherRequestQueue = v19;

  v21 = objc_opt_class();
  v22 = [v4 dynamicConfig];
  v23 = [v22 serviceStateDirectory];
  v24 = [v4 dynamicConfig];
  v25 = [v24 languageCode];
  v26 = [v21 buildSystemStateForServiceStateDirectory:v23 locale:v25];
  systemState = self->__systemState;
  self->__systemState = v26;

  v28 = objc_opt_class();
  v29 = [v4 dynamicConfig];
  v30 = [v29 assetCollection];
  v31 = self->__systemState;
  v40 = 0;
  v32 = [v28 acquireOrBuildMatcher:v30 systemState:v31 error:&v40];
  v33 = v40;

  if (v32)
  {
    objc_storeStrong(&self->__matcher, v32);
    [(CDMSSUService *)self forceFullCacheUpdateIfEnabled];
    [(CDMSSUService *)self performAppRescanForSandboxInstalledApps];
    self->super.super._serviceState = 2;
    v34 = [(CDMBaseService *)self createSetupResponseCommand];
  }

  else
  {
    v35 = MEMORY[0x1E696AEC0];
    v36 = [CDMPlatformUtils prettyPrintError:v33];
    v37 = [v35 stringWithFormat:@"Could not acquire/build SNLPSSUMatcher instance: %@", v36];

    if (v16)
    {
      [(CDMSSUService *)self errorSetupWithErrorDescription:v37];
    }

    else
    {
      [(CDMSSUService *)self failSetupWithErrorDescription:v37];
    }
    v34 = ;
  }

  v38 = *MEMORY[0x1E69E9840];

  return v34;
}

- (id)handle:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[CDMSSUService handle:]";
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Running [CDMSSUService handle:]", &buf, 0xCu);
  }

  if (self->super.super._serviceState != 2)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot handle request since CDMSSUService is in non-READY state: %tu", self->super.super._serviceState];
    v11 = [(CDMSSUService *)self abortHandleWithErrorCode:1 description:v8];
    goto LABEL_22;
  }

  v6 = [v4 parserRequest];
  if (+[CDMFeatureFlags isLogNluEnabled])
  {
    v34 = 0;
    v7 = [CDMNluLogUtil writeSSURequestToDisk:v6 error:&v34];
  }

  [(CDMSSUService *)self forceAppsRescanIfEnabled];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__2742;
  v42 = __Block_byref_object_dispose__2743;
  v43 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__2742;
  v32 = __Block_byref_object_dispose__2743;
  v33 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __24__CDMSSUService_handle___block_invoke;
  aBlock[3] = &unk_1E862ED10;
  p_buf = &buf;
  aBlock[4] = self;
  v8 = v6;
  v25 = v8;
  v27 = &v28;
  v9 = _Block_copy(aBlock);
  if (+[CDMUserDefaultsUtils isSSURequestTimeoutDisabled])
  {
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *v35 = 136315138;
      v36 = "[CDMSSUService handle:]";
      _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s Executing [CDMSSUService handle] without a timeout because user defaults flag is enabled.", v35, 0xCu);
    }

    v9[2](v9);
  }

  else if ([(CDMSSUService *)self executeMatcherRequestBlockWithTimeout:v9])
  {
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      matcherRequestTimeoutSec = self->__matcherRequestTimeoutSec;
      *v35 = 136315394;
      v36 = "[CDMSSUService handle:]";
      v37 = 2048;
      v38 = matcherRequestTimeoutSec;
      _os_log_error_impl(&dword_1DC287000, v12, OS_LOG_TYPE_ERROR, "%s [ERR]: The call to [SNLPSSUMatcher responseForRequest:error:] timed out after %f seconds. Returning empty parse list.", v35, 0x16u);
    }

    v13 = objc_alloc_init(MEMORY[0x1E69D13B0]);
    v14 = [[CDMSSUResponseCommand alloc] initWithSSUResponse:v13];
    goto LABEL_20;
  }

  if (*(*(&buf + 1) + 40))
  {
    if (+[CDMFeatureFlags isLogNluEnabled])
    {
      v15 = *(*(&buf + 1) + 40);
      v23 = 0;
      v16 = [CDMNluLogUtil writeSSUResponseToDisk:v15 error:&v23];
    }

    v17 = [CDMSSUResponseCommand alloc];
    v11 = [(CDMSSUResponseCommand *)v17 initWithSSUResponse:*(*(&buf + 1) + 40)];
    goto LABEL_21;
  }

  v18 = MEMORY[0x1E696AEC0];
  v19 = [CDMPlatformUtils prettyPrintError:v29[5]];
  v13 = [v18 stringWithFormat:@"Cannot handle request since the underlying SNLPSSUMatcher instance encountered an error: %@", v19];

  v14 = [(CDMSSUService *)self abortHandleWithErrorCode:4 description:v13];
LABEL_20:
  v11 = v14;

LABEL_21:
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&buf, 8);
LABEL_22:

  v20 = *MEMORY[0x1E69E9840];

  return v11;
}

void __24__CDMSSUService_handle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _matcher];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 responseForRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

+ (id)buildDeviceSystemStateLocale:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SSUCacheDirectoryProviderDevice);
  v5 = [[SSUInstalledAppProviderDevice alloc] initWithLocale:v3];

  v6 = [[SSUSystemState alloc] initWithCacheDirectoryProviderDevice:v4 installedAppProviderDevice:v5];

  return v6;
}

+ (id)buildSystemStateForSsuSandboxDirectories:(id)a3 locale:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [SSUInstalledAppProviderSandbox alloc];
  v8 = [v5 installedAppsDirectoryURL];
  v9 = [(SSUInstalledAppProviderSandbox *)v7 initWithDirectory:v8 locale:v6];

  v10 = [v5 cacheDirectoryURL];

  v11 = CDMOSLoggerForCategory(0);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    if (v12)
    {
      v20 = 136315138;
      v21 = "+[CDMSSUService(SystemState) buildSystemStateForSsuSandboxDirectories:locale:]";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Using SSU service state directory cache subdirectory via SSUCacheDirectoryProviderSandbox", &v20, 0xCu);
    }

    v13 = [SSUCacheDirectoryProviderSandbox alloc];
    v14 = [v5 cacheDirectoryURL];
    v15 = [(SSUCacheDirectoryProviderSandbox *)v13 initWithDirectory:v14];

    v16 = [[SSUSystemState alloc] initWithCacheDirectoryProviderSandbox:v15 installedAppProviderSandbox:v9];
  }

  else
  {
    if (v12)
    {
      v20 = 136315138;
      v21 = "+[CDMSSUService(SystemState) buildSystemStateForSsuSandboxDirectories:locale:]";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Using temporary cache directory", &v20, 0xCu);
    }

    v15 = objc_alloc_init(SSUCacheDirectoryProviderTemporary);
    v16 = [[SSUSystemState alloc] initWithCacheDirectoryProviderTemporary:v15 installedAppProviderSandbox:v9];
  }

  v17 = v16;

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)lookupSSUSandboxDirectories:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v27 = 0;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 fileExistsAtPath:v3 isDirectory:&v27];

  if (v5 && (v27 & 1) != 0)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(__CFString *)v3 stringByAppendingPathComponent:v7];
    v26 = 0;
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v9 fileExistsAtPath:v8 isDirectory:&v26];

    if (v10)
    {
      if (v26)
      {
        v11 = [v8 stringByAppendingPathComponent:@"installed_apps"];
        v25 = 0;
        v12 = [MEMORY[0x1E696AC08] defaultManager];
        v13 = [v12 fileExistsAtPath:v11 isDirectory:&v25];

        if (!v13 || (v25 & 1) == 0)
        {
          v14 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v29 = "+[CDMSSUService(SystemState) lookupSSUSandboxDirectories:]";
            v30 = 2112;
            v31 = v8;
            v32 = 2112;
            v33 = @"installed_apps";
            _os_log_error_impl(&dword_1DC287000, v14, OS_LOG_TYPE_ERROR, "%s [ERR]: The given service state directory %@ folder does not have a %@ subdirectory. Ignoring service state directory and falling back on device state.", buf, 0x20u);
          }

          v18 = 0;
          goto LABEL_29;
        }

        v14 = [v8 stringByAppendingPathComponent:@"cache"];
        v24 = 0;
        v15 = [MEMORY[0x1E696AC08] defaultManager];
        v16 = [v15 fileExistsAtPath:v14 isDirectory:&v24];

        if (v16)
        {
          if (v24 == 1)
          {
            v17 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14];
LABEL_28:
            v18 = objc_alloc_init(SSUSandboxDirectories);
            v21 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11];
            [(SSUSandboxDirectories *)v18 setInstalledAppsDirectoryURL:v21];

            [(SSUSandboxDirectories *)v18 setCacheDirectoryURL:v17];
LABEL_29:

            goto LABEL_30;
          }

          v20 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v29 = "+[CDMSSUService(SystemState) lookupSSUSandboxDirectories:]";
            v30 = 2112;
            v31 = v8;
            v32 = 2112;
            v33 = @"cache";
            _os_log_error_impl(&dword_1DC287000, v20, OS_LOG_TYPE_ERROR, "%s [ERR]: The given service state directory %@ folder has a non-folder cache subdirectory %@. Ignoring it.", buf, 0x20u);
          }
        }

        else
        {
          v19 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v29 = "+[CDMSSUService(SystemState) lookupSSUSandboxDirectories:]";
            _os_log_debug_impl(&dword_1DC287000, v19, OS_LOG_TYPE_DEBUG, "%s Optional SSU cache subdirectory does not exist in the service state directory", buf, 0xCu);
          }
        }

        v17 = 0;
        goto LABEL_28;
      }

      v11 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "+[CDMSSUService(SystemState) lookupSSUSandboxDirectories:]";
        v30 = 2112;
        v31 = v8;
        _os_log_error_impl(&dword_1DC287000, v11, OS_LOG_TYPE_ERROR, "%s [ERR]: The given service state directory has a non-directory file: %@. Ignoring service state directory and falling back on device state.", buf, 0x16u);
      }
    }

    else
    {
      v11 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v29 = "+[CDMSSUService(SystemState) lookupSSUSandboxDirectories:]";
        v30 = 2112;
        v31 = v7;
        v32 = 2112;
        v33 = v3;
        _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s The given service state directory does not contain a %@ subdirectory: %@. Ignoring service state directory and falling back on device state.", buf, 0x20u);
      }
    }

    v18 = 0;
LABEL_30:

    goto LABEL_31;
  }

  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v29 = "+[CDMSSUService(SystemState) lookupSSUSandboxDirectories:]";
    v30 = 2112;
    v31 = v3;
    _os_log_error_impl(&dword_1DC287000, v7, OS_LOG_TYPE_ERROR, "%s [ERR]: The given service state directory does not exist or is not a directory: %@. Ignoring service state directory and falling back on device state.", buf, 0x16u);
  }

  v18 = 0;
LABEL_31:

  v22 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)buildSystemStateForServiceStateDirectory:(id)a3 locale:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v16 = 136315138;
    v17 = "+[CDMSSUService(SystemState) buildSystemStateForServiceStateDirectory:locale:]";
    _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s Service state directory supplied: looking for CDMSSUService subdirectory", &v16, 0xCu);
  }

  v9 = [a1 lookupSSUSandboxDirectories:v6];
  if (v9)
  {
    v10 = v9;
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136315138;
      v17 = "+[CDMSSUService(SystemState) buildSystemStateForServiceStateDirectory:locale:]";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Building SSU system state from sandbox directories", &v16, 0xCu);
    }

    v12 = [a1 buildSystemStateForSsuSandboxDirectories:v10 locale:v7];
  }

  else
  {
LABEL_8:
    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136315138;
      v17 = "+[CDMSSUService(SystemState) buildSystemStateForServiceStateDirectory:locale:]";
      _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s Building device SSU system state", &v16, 0xCu);
    }

    v12 = [a1 buildDeviceSystemStateLocale:v7];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)getAssetsDirectory:(id)a3 factorName:(id)a4 error:(id *)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [a3 getAssetBundlePathForFactorName:v8];
  if (v9)
  {
    v10 = [a1 assetDirectoryURLForServiceAssetBundle:v9];
    if (v10)
    {
      v11 = v10;
      v12 = v11;
    }

    else
    {
      v16 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "+[CDMSSUService(Matcher) getAssetsDirectory:factorName:error:]";
        v27 = 2112;
        v28 = v8;
        _os_log_error_impl(&dword_1DC287000, v16, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to get asset directory URL for factor: %@", buf, 0x16u);
      }

      if (a5)
      {
        v17 = *MEMORY[0x1E696A588];
        v21[0] = *MEMORY[0x1E696A578];
        v21[1] = v17;
        v22[0] = @"Could not acquire/build SNLPSSUMatcher instance.";
        v22[1] = @"Could not find SSU assets directory inside asset bundle";
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
        *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CDMSSUServiceMatcherErrorDomain" code:1 userInfo:v18];
      }

      v11 = 0;
      v12 = 0;
    }

    goto LABEL_13;
  }

  v13 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v26 = "+[CDMSSUService(Matcher) getAssetsDirectory:factorName:error:]";
    v27 = 2112;
    v28 = v8;
    _os_log_error_impl(&dword_1DC287000, v13, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to get asset bundle for factor: %@", buf, 0x16u);
  }

  if (a5)
  {
    v14 = *MEMORY[0x1E696A588];
    v23[0] = *MEMORY[0x1E696A578];
    v23[1] = v14;
    v24[0] = @"Could not acquire/build SNLPSSUMatcher instance.";
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not find SSU service asset bundle for factor %@", v8];
    v24[1] = v15;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];

    [MEMORY[0x1E696ABC0] errorWithDomain:@"CDMSSUServiceMatcherErrorDomain" code:1 userInfo:v11];
    *a5 = v12 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v12 = 0;
LABEL_14:

  v19 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)assetDirectoryURLForServiceAssetBundle:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 resourcePath];
  v11 = 0;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 fileExistsAtPath:v4 isDirectory:&v11];

  if (v6 && (v11 & 1) != 0)
  {
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4 isDirectory:1];
  }

  else
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "+[CDMSSUService(Matcher) assetDirectoryURLForServiceAssetBundle:]";
      v14 = 2112;
      v15 = v4;
      _os_log_error_impl(&dword_1DC287000, v8, OS_LOG_TYPE_ERROR, "%s [ERR]: SSU assets path does not exist or is not a directory: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)acquireOrBuildMatcher:(id)a3 systemState:(id)a4 error:(id *)a5
{
  v28[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [a1 getAssetsDirectory:v8 factorName:@"com.apple.siri.nl.ssu.encoder" error:a5];
  v11 = [a1 getAssetsDirectory:v8 factorName:@"com.apple.siri.nl.ssu.datasets" error:a5];
  v12 = v11;
  v13 = 0;
  if (v10 && v11)
  {
    v14 = [v9 cacheDirectoryProvider];
    v26 = 0;
    v15 = [v14 lookupOrCreateCacheDirectory:&v26];
    v16 = v26;

    if (v15)
    {
      v17 = +[SSUMatcherBuilder sharedBuilder];
      v18 = [[SSUMatcherBuildParams alloc] initWithModelAssetsDirectoryURL:v10 datasetAssetsDirectoryURL:v12 cacheDirectoryURL:v15];
      v13 = [v17 getMatcherForBuildParams:v18 error:a5];
    }

    else
    {
      if (!a5)
      {
        v13 = 0;
        goto LABEL_8;
      }

      v19 = *MEMORY[0x1E696A578];
      v28[0] = @"Could not acquire/build SNLPSSUMatcher instance.";
      v20 = *MEMORY[0x1E696A588];
      v27[0] = v19;
      v27[1] = v20;
      v21 = MEMORY[0x1E696AEC0];
      v22 = [CDMPlatformUtils prettyPrintError:v16];
      v23 = [v21 stringWithFormat:@"Could not lookup/create SSU cache directory: %@", v22];
      v28[1] = v23;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];

      [MEMORY[0x1E696ABC0] errorWithDomain:@"CDMSSUServiceMatcherErrorDomain" code:1 userInfo:v17];
      *a5 = v13 = 0;
    }

LABEL_8:
  }

  v24 = *MEMORY[0x1E69E9840];

  return v13;
}

@end