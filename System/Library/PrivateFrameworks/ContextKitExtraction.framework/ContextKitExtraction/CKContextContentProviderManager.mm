@interface CKContextContentProviderManager
+ (id)sharedManager;
+ (unint64_t)optionsForControlCode:(unsigned __int8)code;
+ (void)_observeApplicationStateNotifications;
- (BOOL)_hasQueuedForReportingActivity:(id)activity;
- (BOOL)_isActivityReportingAllowedForCurrentBundleIdentifier:(id)identifier;
- (BOOL)_isDonationAllowedWithControlCode:(unsigned __int8)code;
- (CKContextContentProviderManager)init;
- (id)_formContextUserActivityFromUserActivity:(id)activity;
- (unint64_t)providerCount;
- (void)_dequeueActivityForReporting:(id)reporting;
- (void)_hasForegroundActiveContentWithReply:(id)reply;
- (void)_loadContextKitIfNecessaryWithExecutor:(id)executor;
- (void)_prepareAndDonateUserActivity:(id)activity;
- (void)_prepareAndExtractContentForUserActivity:(id)activity bundleIdentifier:(id)identifier;
- (void)_prepareDonationWithNonce:(unint64_t)nonce options:(unint64_t)options isRecentsCapture:(BOOL)capture andReply:(id)reply;
- (void)_queueActivityForReporting:(id)reporting;
- (void)addProvider:(id)provider;
- (void)removeProvider:(id)provider;
- (void)scheduleUserActivityRecordingWithUserActivity:(id)activity;
- (void)userActivityDidBecomeCurrent:(id)current current:(BOOL)a4;
- (void)userActivityWasCreated:(id)created;
- (void)userActivityWasInvalidated:(id)invalidated;
@end

@implementation CKContextContentProviderManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CKContextContentProviderManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_instance;

  return v2;
}

void __48__CKContextContentProviderManager_sharedManager__block_invoke(uint64_t a1)
{
  v2 = getprogname();
  v3 = v2;
  if (v2 && !strncmp(v2, "SafariViewService", 0x11uLL))
  {
    isSafariContentProvider = 1;
    [*(a1 + 32) _observeApplicationStateNotifications];
  }

  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 bundleIdentifier];

  if ([v5 isEqualToString:@"com.apple.mobilesafari"])
  {
    v6 = &isSafariContentProvider;
LABEL_8:
    *v6 = 1;
    goto LABEL_9;
  }

  if ([v5 isEqualToString:@"com.apple.springboard"])
  {
    v6 = &isSpringBoard;
    goto LABEL_8;
  }

LABEL_9:
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v3];
  }

  v8 = donationBundleIdentifier;
  donationBundleIdentifier = v7;

  if ([&unk_1F305C7D8 containsObject:v5])
  {
    goto LABEL_24;
  }

  v9 = [MEMORY[0x1E696AAE8] mainBundle];
  v10 = [v9 objectForInfoDictionaryKey:@"UIContentTextExtractionEnabled"];
  v11 = v10;
  if (!v10)
  {
    v10 = MEMORY[0x1E695E118];
  }

  v12 = [v10 BOOLValue];

  if ((v12 & 1) == 0)
  {
LABEL_24:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Donations not allowed from this process. Setup aborted.", buf, 2u);
    }
  }

  else
  {
    v13 = objc_alloc_init(CKContextContentProviderManager);
    v14 = sharedManager_instance;
    sharedManager_instance = v13;

    v15 = [@"com.apple.contextkit.content-request" UTF8String];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __48__CKContextContentProviderManager_sharedManager__block_invoke_13;
    handler[3] = &__block_descriptor_40_e8_v12__0i8l;
    handler[4] = *(a1 + 32);
    v16 = notify_register_dispatch(v15, &kContentTextExtractionNotificationToken, MEMORY[0x1E69E96A0], handler);
    if (v16)
    {
      v17 = v16;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __48__CKContextContentProviderManager_sharedManager__block_invoke_cold_1(v17);
      }
    }
  }
}

- (CKContextContentProviderManager)init
{
  v10.receiver = self;
  v10.super_class = CKContextContentProviderManager;
  v2 = [(CKContextContentProviderManager *)&v10 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    providers = v2->_providers;
    v2->_providers = weakObjectsHashTable;

    +[CKContextUIClasses lookupClasses];
    [NSClassFromString(&cfstr_Uauseractivity.isa) performSelector:sel_addUserActivityObserver_ withObject:v2];
    v5 = dispatch_queue_create("CKContextContentProviderManager Activity Reporting Queue", 0);
    activityReportingQueue = v2->_activityReportingQueue;
    v2->_activityReportingQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    userActivitiesQueuedForReporting = v2->_userActivitiesQueuedForReporting;
    v2->_userActivitiesQueuedForReporting = v7;
  }

  return v2;
}

void __48__CKContextContentProviderManager_sharedManager__block_invoke_13(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  state64 = 0;
  state = notify_get_state(kContentTextExtractionNotificationToken, &state64);
  if (state)
  {
    v3 = state;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __48__CKContextContentProviderManager_sharedManager__block_invoke_13_cold_1(v3);
    }
  }

  if (state64 && (v4 = time(0) - (state64 & 0xFFFFFFFFFFLL), v4 >= 3))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v18 = v4;
      _os_log_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Ignoring outdated notification; delta=%llu seconds", buf, 0xCu);
    }
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF00]);
    v6 = *(a1 + 32);
    v7 = [objc_opt_class() controlCodeForNonce:state64];
    v8 = *(a1 + 32);
    v9 = [objc_opt_class() optionsForControlCode:v7];
    v10 = sharedManager_instance;
    v11 = state64;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__CKContextContentProviderManager_sharedManager__block_invoke_15;
    v14[3] = &unk_1E7CEE2A0;
    v15 = v5;
    v12 = v5;
    [v10 _prepareDonationWithNonce:v11 options:v9 isRecentsCapture:0 andReply:v14];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __48__CKContextContentProviderManager_sharedManager__block_invoke_15(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    [*(a1 + 32) timeIntervalSinceNow];
    v6[0] = 67109120;
    v6[1] = (v4 * -1000.0);
    _os_log_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Donating to ContextService after %i ms.", v6, 8u);
  }

  [v3 donate];

  v5 = *MEMORY[0x1E69E9840];
}

+ (unint64_t)optionsForControlCode:(unsigned __int8)code
{
  if ((code - 2) > 4)
  {
    return 0;
  }

  else
  {
    return qword_1B843EF10[(code - 2)];
  }
}

- (unint64_t)providerCount
{
  v3 = self->_providers;
  objc_sync_enter(v3);
  v4 = [(NSHashTable *)self->_providers count];
  objc_sync_exit(v3);

  return v4;
}

- (void)addProvider:(id)provider
{
  providerCopy = provider;
  v4 = self->_providers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_providers addObject:providerCopy];
  objc_sync_exit(v4);
}

- (void)removeProvider:(id)provider
{
  providerCopy = provider;
  v4 = self->_providers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_providers removeObject:providerCopy];
  objc_sync_exit(v4);
}

- (void)_loadContextKitIfNecessaryWithExecutor:(id)executor
{
  executorCopy = executor;
  if (!objc_lookUpClass("CKContextGlobals"))
  {
    [executorCopy markIncomplete];
    v4 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__CKContextContentProviderManager__loadContextKitIfNecessaryWithExecutor___block_invoke;
    block[3] = &unk_1E7CEE308;
    v6 = executorCopy;
    dispatch_async(v4, block);
  }
}

uint64_t __74__CKContextContentProviderManager__loadContextKitIfNecessaryWithExecutor___block_invoke(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getCKContextGlobalsClass_softClass;
  v9 = getCKContextGlobalsClass_softClass;
  if (!getCKContextGlobalsClass_softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getCKContextGlobalsClass_block_invoke;
    v5[3] = &unk_1E7CEE4D8;
    v5[4] = &v6;
    __getCKContextGlobalsClass_block_invoke(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  return [*(a1 + 32) markReady];
}

void __114__CKContextContentProviderManager__prepareDonationWithNonce_options_isRecentsCapture_requiringMainQueue_andReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _prepareDonationWithNonce:*(a1 + 48) options:*(a1 + 56) isRecentsCapture:*(a1 + 64) andReply:*(a1 + 32)];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_prepareDonationWithNonce:(unint64_t)nonce options:(unint64_t)options isRecentsCapture:(BOOL)capture andReply:(id)reply
{
  v50 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [CKContextContentProviderManager _prepareDonationWithNonce:options:isRecentsCapture:andReply:];
  }

  v11 = objc_alloc(MEMORY[0x1E6997200]);
  v12 = v11;
  if (donationBundleIdentifier)
  {
    v13 = [v11 initWithDonorBundleIdentifier:?];
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v13 = [v12 initWithDonorBundleIdentifier:bundleIdentifier];
  }

  [v13 setNonce:nonce];
  v16 = [objc_opt_class() controlCodeForNonce:nonce];
  if (capture || [(CKContextContentProviderManager *)self _isDonationAllowedWithControlCode:v16])
  {
    v17 = self->_providers;
    objc_sync_enter(v17);
    if ([(NSHashTable *)self->_providers count])
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      allObjects = [(NSHashTable *)self->_providers allObjects];
      v19 = [allObjects countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v19)
      {
        v20 = *v45;
        v21 = 0.75;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v45 != v20)
            {
              objc_enumerationMutation(allObjects);
            }

            [*(*(&v44 + 1) + 8 * i) timeout];
            if (v23 > v21)
            {
              v21 = v23;
            }
          }

          v19 = [allObjects countByEnumeratingWithState:&v44 objects:v49 count:16];
        }

        while (v19);
      }

      else
      {
        v21 = 0.75;
      }

      objc_sync_exit(v17);
      if (v21 > 60.0)
      {
        v21 = 60.0;
      }

      v24 = [CKContextExecutor alloc];
      v25 = dispatch_get_global_queue(25, 0);
      v26 = dispatch_time(0, (v21 * 1000000000.0));
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __95__CKContextContentProviderManager__prepareDonationWithNonce_options_isRecentsCapture_andReply___block_invoke;
      v41[3] = &unk_1E7CEE358;
      v42 = v13;
      v43 = replyCopy;
      v27 = [(CKContextExecutor *)v24 initWithContext:v42 workItemQueue:MEMORY[0x1E69E96A0] completionQueue:v25 timeoutAfter:v26 completionHandler:v41];

      if (objc_opt_respondsToSelector())
      {
        v28 = MEMORY[0x1E69DD2F0];
        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        v30 = [v28 _unassociatedWindowSceneForScreen:mainScreen create:0];

        if (v30)
        {
          [CKContextContentProviderUIScene extractFromScene:v30 usingExecutor:v27 withOptions:options];
        }
      }

      v31 = self->_providers;
      objc_sync_enter(v31);
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      allObjects2 = [(NSHashTable *)self->_providers allObjects];
      v33 = [allObjects2 countByEnumeratingWithState:&v37 objects:v48 count:16];
      if (v33)
      {
        v34 = *v38;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v38 != v34)
            {
              objc_enumerationMutation(allObjects2);
            }

            [*(*(&v37 + 1) + 8 * j) extractUsingExecutor:v27 withOptions:options];
          }

          v33 = [allObjects2 countByEnumeratingWithState:&v37 objects:v48 count:16];
        }

        while (v33);
      }

      objc_sync_exit(v31);
      [(CKContextContentProviderManager *)self _loadContextKitIfNecessaryWithExecutor:v27];
      [(CKContextExecutor *)v27 markReady];
    }

    else
    {
      (*(replyCopy + 2))(replyCopy, 0);
      objc_sync_exit(v17);
    }
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0);
  }

  v36 = *MEMORY[0x1E69E9840];
}

void __95__CKContextContentProviderManager__prepareDonationWithNonce_options_isRecentsCapture_andReply___block_invoke(uint64_t a1, void *a2, int a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) items];
    v9 = 134217984;
    v10 = [v6 count];
    _os_log_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Extraction timed out; donations so far: %lu", &v9, 0xCu);
  }

  v7 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isDonationAllowedWithControlCode:(unsigned __int8)code
{
  codeCopy = code;
  v4 = *MEMORY[0x1E69DDA98];
  if (forceIneligible)
  {
LABEL_2:
    v5 = 0;
    goto LABEL_11;
  }

  if (codeCopy == 1 && (isSafariContentProvider & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      [CKContextContentProviderManager _isDonationAllowedWithControlCode:];
    }

    goto LABEL_2;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v5 = v4 == 0;
    goto LABEL_11;
  }

  if (![v4 performSelector:sel__shouldAllowContentTextContextExtraction])
  {
    goto LABEL_2;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [CKContextContentProviderManager _isDonationAllowedWithControlCode:];
  }

  v5 = 1;
LABEL_11:

  return v5;
}

+ (void)_observeApplicationStateNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = [defaultCenter addObserverForName:*MEMORY[0x1E69DDAC8] object:0 queue:0 usingBlock:&__block_literal_global_0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = [defaultCenter2 addObserverForName:*MEMORY[0x1E69DDBC0] object:0 queue:0 usingBlock:&__block_literal_global_43];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = [defaultCenter3 addObserverForName:*MEMORY[0x1E69DDAB0] object:0 queue:0 usingBlock:&__block_literal_global_45];
}

- (void)userActivityDidBecomeCurrent:(id)current current:(BOOL)a4
{
  if (current)
  {
    currentCopy = current;
    v5 = +[CKContextContentProviderManager sharedManager];
    [v5 scheduleUserActivityRecordingWithUserActivity:currentCopy];
  }
}

- (void)userActivityWasInvalidated:(id)invalidated
{
  if (invalidated)
  {
    [(CKContextContentProviderManager *)self _dequeueActivityForReporting:?];
  }
}

- (void)userActivityWasCreated:(id)created
{
  createdCopy = created;
  if (createdCopy)
  {
    v7 = createdCopy;
    if ([createdCopy isEligibleForPrediction])
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];

      if ([&unk_1F305C7F0 containsObject:bundleIdentifier])
      {
        v6 = +[CKContextContentProviderManager sharedManager];
        [v6 scheduleUserActivityRecordingWithUserActivity:v7];
      }
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)scheduleUserActivityRecordingWithUserActivity:(id)activity
{
  activityCopy = activity;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if ([(CKContextContentProviderManager *)selfCopy _isActivityReportingAllowedForCurrentBundleIdentifier:bundleIdentifier]&& ([(NSMutableArray *)selfCopy->_userActivitiesQueuedForReporting containsObject:activityCopy]& 1) == 0)
  {
    objc_initWeak(&location, selfCopy);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __81__CKContextContentProviderManager_scheduleUserActivityRecordingWithUserActivity___block_invoke;
    v16 = &unk_1E7CEE3A0;
    objc_copyWeak(&v19, &location);
    v8 = activityCopy;
    v17 = v8;
    v18 = bundleIdentifier;
    v9 = dispatch_block_create(0, &v13);
    [(CKContextContentProviderManager *)selfCopy _loadContextKitIfNecessaryWithExecutor:0, v13, v14, v15, v16];
    [(CKContextContentProviderManager *)selfCopy _queueActivityForReporting:v8];
    LODWORD(v8) = isSafariContentProvider;
    v10 = [(NSMutableArray *)selfCopy->_userActivitiesQueuedForReporting count];
    v11 = 3.0;
    if (v8)
    {
      v11 = 5.0;
    }

    v12 = dispatch_time(0, (v11 * v10 * 1000000000.0));
    dispatch_after(v12, MEMORY[0x1E69E96A0], v9);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
}

uint64_t __81__CKContextContentProviderManager_scheduleUserActivityRecordingWithUserActivity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if ([WeakRetained _hasQueuedForReportingActivity:*(a1 + 32)])
    {
      [v4 _prepareAndExtractContentForUserActivity:*(a1 + 32) bundleIdentifier:*(a1 + 40)];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)_prepareAndExtractContentForUserActivity:(id)activity bundleIdentifier:(id)identifier
{
  activityCopy = activity;
  identifierCopy = identifier;
  if ([(NSHashTable *)self->_providers count])
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __93__CKContextContentProviderManager__prepareAndExtractContentForUserActivity_bundleIdentifier___block_invoke;
    v8[3] = &unk_1E7CEE418;
    objc_copyWeak(&v12, &location);
    v9 = identifierCopy;
    selfCopy = self;
    v11 = activityCopy;
    [(CKContextContentProviderManager *)self _hasForegroundActiveContentWithReply:v8];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __93__CKContextContentProviderManager__prepareAndExtractContentForUserActivity_bundleIdentifier___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && a2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __93__CKContextContentProviderManager__prepareAndExtractContentForUserActivity_bundleIdentifier___block_invoke_cold_1(a1);
    }

    objc_initWeak(&location, WeakRetained);
    v5 = *(*(a1 + 40) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__CKContextContentProviderManager__prepareAndExtractContentForUserActivity_bundleIdentifier___block_invoke_46;
    block[3] = &unk_1E7CEE3F0;
    objc_copyWeak(&v8, &location);
    v7 = *(a1 + 48);
    dispatch_async(v5, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __93__CKContextContentProviderManager__prepareAndExtractContentForUserActivity_bundleIdentifier___block_invoke_46(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _formContextUserActivityFromUserActivity:*(a1 + 32)];
    if (v4)
    {
      v6 = MEMORY[0x1E69E9820];
      v7 = 3221225472;
      v8 = __93__CKContextContentProviderManager__prepareAndExtractContentForUserActivity_bundleIdentifier___block_invoke_2;
      v9 = &unk_1E7CEE3C8;
      v5 = v3;
      v10 = v5;
      v11 = v4;
      [v11 prepareForDonationWithCompletionHandler:&v6];
      [v5 _dequeueActivityForReporting:{*(a1 + 32), v6, v7, v8, v9}];
    }
  }
}

void __93__CKContextContentProviderManager__prepareAndExtractContentForUserActivity_bundleIdentifier___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __93__CKContextContentProviderManager__prepareAndExtractContentForUserActivity_bundleIdentifier___block_invoke_3;
    v3[3] = &unk_1E7CEE2A0;
    v2 = *(a1 + 32);
    v4 = *(a1 + 40);
    [v2 _prepareDonationWithNonce:0 options:0 isRecentsCapture:1 requiringMainQueue:1 andReply:v3];
  }
}

void __93__CKContextContentProviderManager__prepareAndExtractContentForUserActivity_bundleIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setAssociatedUserActivity:v2];
  [v3 donate];
}

- (void)_prepareAndDonateUserActivity:(id)activity
{
  activityCopy = activity;
  if (activityCopy)
  {
    v5 = [(CKContextContentProviderManager *)self _formContextUserActivityFromUserActivity:activityCopy];
    if (v5)
    {
      objc_initWeak(&location, self);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __65__CKContextContentProviderManager__prepareAndDonateUserActivity___block_invoke;
      v6[3] = &unk_1E7CEE460;
      objc_copyWeak(&v8, &location);
      v7 = activityCopy;
      [v5 prepareForDonationWithCompletionHandler:v6];

      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

void __65__CKContextContentProviderManager__prepareAndDonateUserActivity___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if (a2)
    {
      [WeakRetained _prepareDonationWithNonce:0 options:0 isRecentsCapture:1 andReply:&__block_literal_global_49];
    }

    [v5 _dequeueActivityForReporting:*(a1 + 32)];
    WeakRetained = v5;
  }
}

- (id)_formContextUserActivityFromUserActivity:(id)activity
{
  activityCopy = activity;
  if (activityCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    if ([bundleIdentifier length])
    {
      v8 = [objc_alloc(MEMORY[0x1E6997210]) initWithUserActivity:activityCopy];
      [v8 setBundleIdentifier:bundleIdentifier];
    }

    else
    {
      v8 = 0;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_queueActivityForReporting:(id)reporting
{
  reportingCopy = reporting;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (isSafariContentProvider == 1)
  {
    [(NSMutableArray *)selfCopy->_userActivitiesQueuedForReporting removeAllObjects];
  }

  [(NSMutableArray *)selfCopy->_userActivitiesQueuedForReporting addObject:reportingCopy];
  objc_sync_exit(selfCopy);
}

- (BOOL)_hasQueuedForReportingActivity:(id)activity
{
  activityCopy = activity;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableArray *)selfCopy->_userActivitiesQueuedForReporting containsObject:activityCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)_dequeueActivityForReporting:(id)reporting
{
  reportingCopy = reporting;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_userActivitiesQueuedForReporting removeObject:reportingCopy];
  objc_sync_exit(selfCopy);
}

- (BOOL)_isActivityReportingAllowedForCurrentBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v4 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F305C808];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__CKContextContentProviderManager__isActivityReportingAllowedForCurrentBundleIdentifier___block_invoke;
  v7[3] = &unk_1E7CEE488;
  v5 = identifierCopy;
  v8 = v5;
  v9 = &v10;
  [v4 enumerateObjectsUsingBlock:v7];

  LOBYTE(v4) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v4;
}

uint64_t __89__CKContextContentProviderManager__isActivityReportingAllowedForCurrentBundleIdentifier___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) hasPrefix:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

- (void)_hasForegroundActiveContentWithReply:(id)reply
{
  replyCopy = reply;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__CKContextContentProviderManager__hasForegroundActiveContentWithReply___block_invoke;
  block[3] = &unk_1E7CEE4B0;
  objc_copyWeak(&v8, &location);
  v7 = replyCopy;
  v5 = replyCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __72__CKContextContentProviderManager__hasForegroundActiveContentWithReply___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = WeakRetained[1];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * v8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
            v11 = [v10 _scene];
            v12 = [v11 activationState];

            if (!v12)
            {
              (*(*(a1 + 32) + 16))();

              goto LABEL_15;
            }
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  (*(*(a1 + 32) + 16))();
LABEL_15:

  v13 = *MEMORY[0x1E69E9840];
}

void __48__CKContextContentProviderManager_sharedManager__block_invoke_cold_1(int a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not register for extraction; error:%u", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void __48__CKContextContentProviderManager_sharedManager__block_invoke_13_cold_1(int a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1B842F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not get notification state; error:%u", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_isDonationAllowedWithControlCode:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v7 = [v0 bundleIdentifier];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void __93__CKContextContentProviderManager__prepareAndExtractContentForUserActivity_bundleIdentifier___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

@end