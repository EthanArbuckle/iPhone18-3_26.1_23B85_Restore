@interface GEOAPServiceManager
+ (id)sharedManager;
+ (void)useProxyClass:(Class)a3;
- (BOOL)AppleInternal;
- (BOOL)evDirectionsFeedbackAllowed;
- (BOOL)evDirectionsFeedbackAuth;
- (BOOL)eventCollectionIsDisabledForCurrentProcess;
- (BOOL)platformDiagAndUsage;
- (BOOL)platformDiagAndUsageOrAppleInternal;
- (BOOL)usageCountCollectionIsDisabledForCurrentProcess;
- (GEOAPServiceManager)init;
- (void)dealloc;
- (void)logToDiagAndUsageUnderBugId:(id)a3 filePrefix:(id)a4 logData:(id)a5;
- (void)reportCuratedCollectionWasViewedWithId:(unint64_t)a3 completion:(id)a4 completionQueue:(id)a5;
- (void)reportDailySettings:(id)a3 completionQueue:(id)a4 completion:(id)a5;
- (void)reportLogMsg:(id)a3 uploadBatchId:(unint64_t)a4 completionQueue:(id)a5 completion:(id)a6;
- (void)updateSharedStateType:(int)a3 state:(id)a4 completion:(id)a5 completionQueue:(id)a6;
@end

@implementation GEOAPServiceManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_348);
  }

  v3 = _sharedManager;

  return v3;
}

- (GEOAPServiceManager)init
{
  v44.receiver = self;
  v44.super_class = GEOAPServiceManager;
  v2 = [(GEOAPServiceManager *)&v44 init];
  if (v2)
  {
    v3 = _proxyClass;
    if (!_proxyClass)
    {
      v4 = objc_opt_class();
      [v4 useProxyClass:objc_opt_class()];
      v3 = _proxyClass;
    }

    v5 = objc_alloc_init(v3);
    proxy = v2->_proxy;
    v2->_proxy = v5;

    v2->_directionsFeedbackAllowed = 1;
    v7 = *MEMORY[0x1E69A1A60];
    v8 = *(MEMORY[0x1E69A1A60] + 8);
    v2->_evDirectionsFeedbackAllowed = GEOConfigGetBOOL();
    v9 = geo_isolater_create();
    configInfoIsolator = v2->_configInfoIsolator;
    v2->_configInfoIsolator = v9;

    global_queue = geo_get_global_queue();
    v39 = MEMORY[0x1E69E9820];
    v40 = 3221225472;
    v41 = __27__GEOAPServiceManager_init__block_invoke;
    v42 = &unk_1E7959638;
    v12 = v2;
    v43 = v12;
    v13 = _GEOConfigAddBlockListenerForKey();
    evDirectionsFeedbackAllowedListener = v12->_evDirectionsFeedbackAllowedListener;
    v12->_evDirectionsFeedbackAllowedListener = v13;

    v15 = *MEMORY[0x1E69A19A0];
    v16 = *(MEMORY[0x1E69A19A0] + 8);
    v12->_evDirectionsFeedbackAuth = GEOConfigGetBOOL();
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __27__GEOAPServiceManager_init__block_invoke_3;
    v37 = &unk_1E7959638;
    v17 = v12;
    v38 = v17;
    v18 = _GEOConfigAddBlockListenerForKey();
    evDirectionsFeedbackAuthListener = v17->_evDirectionsFeedbackAuthListener;
    v17->_evDirectionsFeedbackAuthListener = v18;

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __27__GEOAPServiceManager_init__block_invoke_5;
    v32[3] = &unk_1E7959638;
    v20 = v17;
    v33 = v20;
    v21 = MEMORY[0x1AC5A12F0](v32);
    v22 = MEMORY[0x1E69A1610];
    v21[2](v21, *MEMORY[0x1E69A1610], *(MEMORY[0x1E69A1610] + 8));
    v23 = _GEOConfigAddBlockListenerForKey();
    eventCollectionIsDisabledForCurrentProcessListener = v20->_eventCollectionIsDisabledForCurrentProcessListener;
    v20->_eventCollectionIsDisabledForCurrentProcessListener = v23;

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __27__GEOAPServiceManager_init__block_invoke_7;
    v30[3] = &unk_1E7959638;
    v25 = v20;
    v31 = v25;
    v26 = MEMORY[0x1AC5A12F0](v30);
    v26[2](v26, *v22, v22[1]);
    v27 = _GEOConfigAddBlockListenerForKey();
    usageCountCollectionIsDisabledForCurrentProcessListener = v25->_usageCountCollectionIsDisabledForCurrentProcessListener;
    v25->_usageCountCollectionIsDisabledForCurrentProcessListener = v27;
  }

  return v2;
}

uint64_t __36__GEOAPServiceManager_sharedManager__block_invoke()
{
  _sharedManager = objc_alloc_init(GEOAPServiceManager);

  return MEMORY[0x1EEE66BB8]();
}

void __27__GEOAPServiceManager_init__block_invoke_5(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = GEOConfigGetArray();
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v4)
    {
      v5 = *v15;
LABEL_4:
      v6 = 0;
      while (1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = GEOApplicationIdentifierOrProcessName();
          v9 = [v8 caseInsensitiveCompare:v7] == 0;
          *(v19 + 24) = v9;

          if (v19[3])
          {
            break;
          }
        }

        if (v4 == ++v6)
        {
          v4 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
          if (v4)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v10 = *(a1 + 32);
  v11 = v10[2];
  v13 = v10;
  geo_isolate_sync_data();

  _Block_object_dispose(&v18, 8);
  v12 = *MEMORY[0x1E69E9840];
}

void __27__GEOAPServiceManager_init__block_invoke_7(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = GEOConfigGetArray();
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v4)
    {
      v5 = *v15;
LABEL_4:
      v6 = 0;
      while (1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = GEOApplicationIdentifierOrProcessName();
          v9 = [v8 caseInsensitiveCompare:v7] == 0;
          *(v19 + 24) = v9;

          if (v19[3])
          {
            break;
          }
        }

        if (v4 == ++v6)
        {
          v4 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
          if (v4)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v10 = *(a1 + 32);
  v11 = v10[2];
  v13 = v10;
  geo_isolate_sync_data();

  _Block_object_dispose(&v18, 8);
  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)usageCountCollectionIsDisabledForCurrentProcess
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  configInfoIsolator = self->_configInfoIsolator;
  geo_isolate_sync_data();
  v3 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (BOOL)eventCollectionIsDisabledForCurrentProcess
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  configInfoIsolator = self->_configInfoIsolator;
  geo_isolate_sync_data();
  v3 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (BOOL)platformDiagAndUsage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getDiagnosticLogSubmissionEnabledSymbolLoc_ptr;
  v9 = getDiagnosticLogSubmissionEnabledSymbolLoc_ptr;
  if (!getDiagnosticLogSubmissionEnabledSymbolLoc_ptr)
  {
    v3 = CrashReporterSupportLibrary();
    v7[3] = dlsym(v3, "DiagnosticLogSubmissionEnabled");
    getDiagnosticLogSubmissionEnabledSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    dlerror();
    v5 = abort_report_np();
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2();
}

uint64_t __56__GEOAPServiceManager_toggleEVDirectionsFeedbackAllowed__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) ^= 1u;
  v1 = *(*(a1 + 32) + 8);
  v2 = *MEMORY[0x1E69A1A60];
  v3 = *(MEMORY[0x1E69A1A60] + 8);
  return GEOConfigSetBOOL();
}

uint64_t __54__GEOAPServiceManager_setEvDirectionsFeedbackAllowed___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = *(a1 + 40);
  v1 = *(*(a1 + 32) + 8);
  v2 = *MEMORY[0x1E69A1A60];
  v3 = *(MEMORY[0x1E69A1A60] + 8);
  return GEOConfigSetBOOL();
}

- (BOOL)evDirectionsFeedbackAllowed
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  configInfoIsolator = self->_configInfoIsolator;
  geo_isolate_sync();
  v3 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v3;
}

uint64_t __50__GEOAPServiceManager_evDirectionsFeedbackAllowed__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 10) == 1)
  {
    *(*(*(result + 40) + 8) + 24) = *(v1 + 8);
  }

  return result;
}

- (BOOL)evDirectionsFeedbackAuth
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  configInfoIsolator = self->_configInfoIsolator;
  geo_isolate_sync();
  v3 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (void)logToDiagAndUsageUnderBugId:(id)a3 filePrefix:(id)a4 logData:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70__GEOAPServiceManager_logToDiagAndUsageUnderBugId_filePrefix_logData___block_invoke;
  v18[3] = &unk_1E79539C0;
  v10 = v9;
  v19 = v10;
  v11 = v7;
  v12 = v8;
  v13 = v18;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v14 = getOSAWriteLogForSubmissionSymbolLoc_ptr;
  v28 = getOSAWriteLogForSubmissionSymbolLoc_ptr;
  if (!getOSAWriteLogForSubmissionSymbolLoc_ptr)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __getOSAWriteLogForSubmissionSymbolLoc_block_invoke;
    v23 = &unk_1E79595B8;
    v24 = &v25;
    v15 = CrashReporterSupportLibrary();
    v16 = dlsym(v15, "OSAWriteLogForSubmission");
    *(v24[1] + 24) = v16;
    getOSAWriteLogForSubmissionSymbolLoc_ptr = *(v24[1] + 24);
    v14 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v14)
  {
    dlerror();
    v17 = abort_report_np();
    _Block_object_dispose(&v25, 8);
    _Unwind_Resume(v17);
  }

  (v14)(v11, v12, 0, 0, v13);
}

- (BOOL)platformDiagAndUsageOrAppleInternal
{
  if ([(GEOAPServiceManager *)self platformDiagAndUsage])
  {
    return 1;
  }

  return [(GEOAPServiceManager *)self AppleInternal];
}

- (BOOL)AppleInternal
{
  v2 = [MEMORY[0x1E69A2398] sharedPlatform];
  v3 = [v2 isInternalInstall];

  return v3;
}

- (void)reportDailySettings:(id)a3 completionQueue:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  proxy = self->_proxy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__GEOAPServiceManager_reportDailySettings_completionQueue_completion___block_invoke;
  v13[3] = &unk_1E7953998;
  v14 = v8;
  v15 = v9;
  v11 = v8;
  v12 = v9;
  [(GEOAPServiceProxy *)proxy reportDailySettings:a3 completion:v13];
}

void __70__GEOAPServiceManager_reportDailySettings_completionQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v6 = v3;
    v5 = *(a1 + 32);
    if (v5)
    {
      dispatch_async(v5, v4);
    }

    else
    {
      v4[2](v4);
    }

    v3 = v6;
  }
}

void __94__GEOAPServiceManager_reportDailyUsageCountType_usageString_usageBool_appId_queue_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __94__GEOAPServiceManager_reportDailyUsageCountType_usageString_usageBool_appId_queue_completion___block_invoke_3;
      block[3] = &unk_1E7959360;
      v7 = v4;
      dispatch_async(v5, block);
    }

    else
    {
      v4[2]();
    }
  }
}

- (void)reportLogMsg:(id)a3 uploadBatchId:(unint64_t)a4 completionQueue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (!v11)
  {
    v11 = dispatch_get_global_queue(21, 0);
  }

  if (GEOConfigGetBOOL())
  {
    if (v12)
    {
      dispatch_async(v11, v12);
    }
  }

  else
  {
    proxy = self->_proxy;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __77__GEOAPServiceManager_reportLogMsg_uploadBatchId_completionQueue_completion___block_invoke;
    v14[3] = &unk_1E7959478;
    v16 = v12;
    v15 = v11;
    [(GEOAPServiceProxy *)proxy reportLogMsg:v10 uploadBatchId:a4 completion:v14];
  }
}

void __77__GEOAPServiceManager_reportLogMsg_uploadBatchId_completionQueue_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_async(*(a1 + 32), v1);
  }
}

- (void)dealloc
{
  evDirectionsFeedbackAllowedListener = self->_evDirectionsFeedbackAllowedListener;
  GEOConfigRemoveBlockListener();
  evDirectionsFeedbackAuthListener = self->_evDirectionsFeedbackAuthListener;
  GEOConfigRemoveBlockListener();
  eventCollectionIsDisabledForCurrentProcessListener = self->_eventCollectionIsDisabledForCurrentProcessListener;
  GEOConfigRemoveBlockListener();
  usageCountCollectionIsDisabledForCurrentProcessListener = self->_usageCountCollectionIsDisabledForCurrentProcessListener;
  GEOConfigRemoveBlockListener();
  v7.receiver = self;
  v7.super_class = GEOAPServiceManager;
  [(GEOAPServiceManager *)&v7 dealloc];
}

void __27__GEOAPServiceManager_init__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[2];
  v3 = v1;
  geo_isolate_sync();
}

void __27__GEOAPServiceManager_init__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[2];
  v3 = v1;
  geo_isolate_sync();
}

uint64_t __27__GEOAPServiceManager_init__block_invoke_4(uint64_t a1)
{
  v2 = *MEMORY[0x1E69A19A0];
  v3 = *(MEMORY[0x1E69A19A0] + 8);
  result = GEOConfigGetBOOL();
  *(*(a1 + 32) + 10) = result;
  return result;
}

uint64_t __27__GEOAPServiceManager_init__block_invoke_2(uint64_t a1)
{
  v2 = *MEMORY[0x1E69A1A60];
  v3 = *(MEMORY[0x1E69A1A60] + 8);
  result = GEOConfigGetBOOL();
  *(*(a1 + 32) + 8) = result;
  return result;
}

+ (void)useProxyClass:(Class)a3
{
  v4 = &unk_1F2057D08;
  if (_sharedManager)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v10 = 0;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "Assertion failed: !_sharedManager";
      v7 = &v10;
LABEL_10:
      _os_log_fault_impl(&dword_1AB634000, v5, OS_LOG_TYPE_FAULT, v6, v7, 2u);
    }

LABEL_11:
    __break(1u);
    return;
  }

  v8 = v4;
  if (([(objc_class *)a3 conformsToProtocol:v4]& 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "Assertion failed: [proxyClass conformsToProtocol:protocol]";
      v7 = buf;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  _proxyClass = a3;
}

- (void)reportCuratedCollectionWasViewedWithId:(unint64_t)a3 completion:(id)a4 completionQueue:(id)a5
{
  block = a4;
  v6 = a5;
  v7 = block;
  v8 = v6;
  if (block)
  {
    if (!v6)
    {
      global_queue = geo_get_global_queue();
      v7 = block;
      v8 = global_queue;
    }

    dispatch_async(v8, v7);
  }
}

- (void)updateSharedStateType:(int)a3 state:(id)a4 completion:(id)a5 completionQueue:(id)a6
{
  v11 = a4;
  v8 = a5;
  v9 = a6;
  global_queue = v9;
  if (v8)
  {
    if (!v9)
    {
      global_queue = geo_get_global_queue();
    }

    dispatch_async(global_queue, v8);
  }
}

@end