@interface FCPersonalizationData
+ (id)backingRecordIDs;
+ (id)desiredKeys;
- (FCPersonalizationData)init;
- (FCPersonalizationData)initWithAggregates:(id)aggregates;
- (FCPersonalizationData)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory;
- (NSDictionary)allAggregates;
- (id)aggregateForFeatureKey:(id)key;
- (id)aggregateStore;
- (id)aggregatesForFeatureKeys:(id)keys;
- (id)createAggregateWith:(id)with clicks:(double)clicks impressions:(double)impressions;
- (id)d_allGlobalAggregates;
- (id)generateDerivedData;
- (id)localStoreMigrator;
- (id)lookupAggregatesWith:(id)with creationBlock:(id)block;
- (id)recordsForRestoringZoneName:(id)name;
- (void)_applicationDidEnterBackground;
- (void)_reloadTreatment;
- (void)_unsafeReloadTreatment;
- (void)_updateWithRemoteRecord:(void *)record profile:;
- (void)_writeToLocalStoreWithCompletionHandler:(uint64_t)handler;
- (void)activityObservingApplicationWillTerminate;
- (void)activityObservingApplicationWindowDidBecomeBackground;
- (void)activityObservingApplicationWindowDidBecomeForeground;
- (void)clearPersonalizationData;
- (void)configurationManager:(id)manager configurationDidChange:(id)change;
- (void)d_allResults:(id)results completion:(id)completion;
- (void)enumerateAggregatesUsingBlock:(id)block;
- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names;
- (void)loadLocalCachesFromStore;
- (void)modifyLocalAggregatesForFeatureKeys:(id)keys withAction:(unint64_t)action actionCount:(unint64_t)count defaultClicks:(double)clicks defaultImpressions:(double)impressions impressionBias:(double)bias groupBias:(double)groupBias;
- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion;
- (void)prepareAggregatesForUseWithCompletionHandler:(id)handler;
- (void)setAggregates:(uint64_t)aggregates;
- (void)syncWithCompletion:(id)completion;
- (void)updateAggregatesWith:(id)with creationBlock:(id)block updateBlock:(id)updateBlock;
- (void)updateFeatures:(id)features withAction:(unint64_t)action displayRank:(int64_t)rank groupRank:(int64_t)groupRank groupType:(int64_t)type individually:(BOOL)individually configurableValues:(id)values;
@end

@implementation FCPersonalizationData

- (void)_reloadTreatment
{
  v13 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = FCPersonalizationDataAccessUnique;
    if (dispatch_get_specific(FCPersonalizationDataAccessUnique) != v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"accessing protected data from outside the queue"];
      v5 = 136315906;
      v6 = "[FCPersonalizationData _reloadTreatment]";
      v7 = 2080;
      v8 = "FCPersonalizationData.m";
      v9 = 1024;
      v10 = 627;
      v11 = 2114;
      v12 = v4;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v5, 0x26u);
    }

    [(FCPersonalizationData *)self _unsafeReloadTreatment];
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)_unsafeReloadTreatment
{
  if (self)
  {
    context = [self context];
    configurationManager = [context configurationManager];

    configuration = [configurationManager configuration];
    personalizationTreatment = [configuration personalizationTreatment];
    objc_setProperty_atomic(self, v5, personalizationTreatment, 128);
  }
}

- (id)localStoreMigrator
{
  v3 = [FCPersonalizationDataMigrator alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__FCPersonalizationData_localStoreMigrator__block_invoke;
  v6[3] = &unk_1E7C36F98;
  v6[4] = self;
  v4 = [(FCPersonalizationDataMigrator *)v3 initWithTreatmentProvider:v6];

  return v4;
}

- (void)loadLocalCachesFromStore
{
  localStore = [(FCPrivateDataController *)self localStore];
  v4 = [localStore objectForKey:@"pb-data"];
  pbData = self->_pbData;
  self->_pbData = v4;

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__FCPersonalizationData_loadLocalCachesFromStore__block_invoke;
  block[3] = &unk_1E7C36EA0;
  block[4] = self;
  dispatch_async(accessQueue, block);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__FCPersonalizationData_loadLocalCachesFromStore__block_invoke_49;
  v10[3] = &unk_1E7C36EA0;
  v10[4] = self;
  [FCTaskScheduler scheduleLowPriorityBlockForMainThread:v10];
  if (NFInternalBuild())
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v8 = [standardUserDefaults BOOLForKey:@"personalization_erase_all"];

    if (v8)
    {
      standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
      [standardUserDefaults2 setBool:0 forKey:@"personalization_erase_all"];

      [(FCPersonalizationData *)self clearPersonalizationData];
    }
  }
}

void __48__FCPersonalizationData__saveReadableAggregates__block_invoke(uint64_t a1)
{
  v36[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 32);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __48__FCPersonalizationData__saveReadableAggregates__block_invoke_2;
  v31[3] = &unk_1E7C46AF0;
  v4 = v2;
  v32 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v31];
  v36[0] = v4;
  v35[0] = @"aggregates";
  v35[1] = @"lastUpdated";
  v5 = MEMORY[0x1E696AEC0];
  v6 = [MEMORY[0x1E695DF00] date];
  [v6 timeIntervalSince1970];
  v8 = [v5 stringWithFormat:@"%f", v7];
  v36[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];

  v30 = 0;
  v10 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v9 options:1 error:&v30];
  v11 = v30;
  v12 = v11;
  if (v10)
  {
    v13 = MEMORY[0x1E695DFF8];
    v14 = [*(a1 + 40) localStore];
    v15 = [v14 storeDirectory];
    v16 = [v13 fileURLWithPath:v15];
    v17 = [v16 URLByAppendingPathComponent:@"personalization-aggregates"];
    v18 = [v17 URLByAppendingPathExtension:@"json"];

    if (v18)
    {
      v19 = [v18 path];
      v27 = v12;
      v20 = [v10 writeToFile:v19 options:1 error:&v27];
      v21 = v27;

      v22 = FCPersonalizationLog;
      if (v20)
      {
        if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
          v24 = [v18 path];
          *buf = 138412290;
          v34 = v24;
          _os_log_impl(&dword_1B63EF000, v23, OS_LOG_TYPE_DEFAULT, "Successfully saved readable aggregates at %@.", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v21;
        _os_log_error_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_ERROR, "Error when saving readable aggregates: %@", buf, 0xCu);
      }

      v12 = v21;
    }

    else
    {
      v25 = FCPersonalizationLog;
      if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1B63EF000, v25, OS_LOG_TYPE_ERROR, "Failed to construct file URL for saving readable aggregates", buf, 2u);
      }

      v18 = 0;
    }
  }

  else
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __48__FCPersonalizationData__saveReadableAggregates__block_invoke_3;
    v28[3] = &unk_1E7C36EA0;
    v12 = v11;
    v29 = v12;
    __48__FCPersonalizationData__saveReadableAggregates__block_invoke_3(v28);
    v18 = v29;
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __49__FCPersonalizationData_loadLocalCachesFromStore__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_INFO))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_INFO, "will load personalization data from disk", &v25, 2u);
  }

  v3 = objc_alloc(MEMORY[0x1E69B6F00]);
  v4 = [*(a1 + 32) pbData];
  v5 = [v3 initWithData:v4];

  v6 = [v5 aggregates];
  v7 = [v6 fc_dictionaryWithKeyBlock:&__block_literal_global_168];
  v8 = [v7 mutableCopy];
  [(FCPersonalizationData *)*(a1 + 32) setAggregates:v8];

  v9 = [v5 remoteRecord];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:@"data"];

    if (!v11)
    {
      v12 = FCPersonalizationLog;
      if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v25) = 0;
        _os_log_error_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_ERROR, "ignoring locally-cached PersonalizationProfile record since it lost its data when decoding", &v25, 2u);
      }

      v10 = 0;
    }
  }

  v13 = [FCModifyPersonalizationOperation personalizationProfileFromRecord:v10];
  [(FCPersonalizationData *)*(a1 + 32) _updateWithRemoteRecord:v10 profile:v13];
  v14 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    if (v15)
    {
      v15 = v15[13];
    }

    v16 = v15;
    v17 = v14;
    v18 = [v16 count];
    LODWORD(v25) = 134217984;
    *(&v25 + 4) = v18;
    _os_log_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_DEFAULT, "did load personalization data from disk with %lu aggregates", &v25, 0xCu);
  }

  v19 = *(a1 + 32);
  if (v19 && NFInternalBuild())
  {
    v20 = FCPersonalizationLog;
    if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_1B63EF000, v20, OS_LOG_TYPE_DEFAULT, "Will save readable aggregates.", &v25, 2u);
    }

    v21 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:*(v19 + 104) copyItems:1];
    v22 = FCPersistenceQueue();
    *&v25 = MEMORY[0x1E69E9820];
    *(&v25 + 1) = 3221225472;
    v26 = __48__FCPersonalizationData__saveReadableAggregates__block_invoke;
    v27 = &unk_1E7C36C58;
    v28 = v21;
    v29 = v19;
    v23 = v21;
    dispatch_async(v22, &v25);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)activityObservingApplicationWindowDidBecomeForeground
{
  if ([-[FCPersonalizationData superclass](self "superclass")])
  {
    v3.receiver = self;
    v3.super_class = FCPersonalizationData;
    [(FCPrivateDataController *)&v3 activityObservingApplicationWindowDidBecomeForeground];
  }
}

- (FCPersonalizationData)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory
{
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = FCPersonalizationData;
  v9 = [(FCPrivateDataController *)&v22 initWithContext:contextCopy pushNotificationCenter:center storeDirectory:directory];
  if (v9)
  {
    configurationManager = [contextCopy configurationManager];
    [configurationManager addObserver:v9];

    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v12 = dispatch_queue_create("FCPersonalizationData.aggregatesAccessQueue", v11);
    v13 = *(v9 + 15);
    *(v9 + 15) = v12;

    dispatch_queue_set_specific(*(v9 + 15), FCPersonalizationDataAccessUnique, FCPersonalizationDataAccessUnique, 0);
    v14 = [[FCTimedOperationThrottler alloc] initWithDelegate:v9];
    [(FCTimedOperationThrottler *)v14 setCooldownTime:30.0];
    v15 = *(v9 + 17);
    *(v9 + 17) = v14;
    v16 = v14;

    appActivityMonitor = [contextCopy appActivityMonitor];
    [appActivityMonitor addObserver:v9];

    v18 = *(v9 + 15);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__FCPersonalizationData_initWithContext_pushNotificationCenter_storeDirectory___block_invoke;
    block[3] = &unk_1E7C36EA0;
    v21 = v9;
    dispatch_async(v18, block);
  }

  return v9;
}

- (FCPersonalizationData)init
{
  v3 = objc_opt_new();
  v4 = [(FCPersonalizationData *)self initWithAggregates:v3];

  return v4;
}

- (FCPersonalizationData)initWithAggregates:(id)aggregates
{
  aggregatesCopy = aggregates;
  v15.receiver = self;
  v15.super_class = FCPersonalizationData;
  v5 = [(FCPrivateDataController *)&v15 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_BACKGROUND, 0);
    v8 = dispatch_queue_create("FCPersonalizationData.aggregatesAccessQueue", v7);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v8;

    v10 = v5->_accessQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__FCPersonalizationData_initWithAggregates___block_invoke;
    v12[3] = &unk_1E7C36C58;
    v13 = v5;
    v14 = aggregatesCopy;
    dispatch_async(v10, v12);
  }

  return v5;
}

- (void)setAggregates:(uint64_t)aggregates
{
  if (aggregates)
  {
    objc_storeStrong((aggregates + 104), a2);
  }
}

- (void)modifyLocalAggregatesForFeatureKeys:(id)keys withAction:(unint64_t)action actionCount:(unint64_t)count defaultClicks:(double)clicks defaultImpressions:(double)impressions impressionBias:(double)bias groupBias:(double)groupBias
{
  v39 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  if ([MEMORY[0x1E696AF00] isMainThread] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"This operation must not be performed on the main thread."];
    *buf = 136315906;
    v32 = "[FCPersonalizationData modifyLocalAggregatesForFeatureKeys:withAction:actionCount:defaultClicks:defaultImpressions:impressionBias:groupBias:]";
    v33 = 2080;
    v34 = "FCPersonalizationData.m";
    v35 = 1024;
    v36 = 169;
    v37 = 2114;
    v38 = v27;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v17 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v17;
    v19 = NSStringFromFCPersonalizationAction(action);
    *buf = 138412546;
    v32 = v19;
    v33 = 2112;
    v34 = keysCopy;
    _os_log_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_DEFAULT, "Processing action %@ for features %@", buf, 0x16u);
  }

  v20 = objc_alloc_init(MEMORY[0x1E69B6EF0]);
  [v20 setDefaultClicks:clicks];
  [v20 setDefaultImpressions:impressions];
  [v20 setImpressionBias:bias];
  [v20 setGroupBias:groupBias];
  date = [MEMORY[0x1E695DF00] date];
  [v20 setTimestamp:{objc_msgSend(date, "fc_millisecondTimeIntervalSince1970")}];

  [v20 addAction:action count:count];
  if (self)
  {
    accessQueue = self->_accessQueue;
  }

  else
  {
    accessQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __142__FCPersonalizationData_modifyLocalAggregatesForFeatureKeys_withAction_actionCount_defaultClicks_defaultImpressions_impressionBias_groupBias___block_invoke;
  block[3] = &unk_1E7C376A0;
  block[4] = self;
  v23 = keysCopy;
  v29 = v23;
  v24 = v20;
  v30 = v24;
  dispatch_sync(accessQueue, block);
  if (self)
  {
    saveThrottler = self->_saveThrottler;
  }

  else
  {
    saveThrottler = 0;
  }

  [(FCOperationThrottler *)saveThrottler tickle];

  v26 = *MEMORY[0x1E69E9840];
}

void __142__FCPersonalizationData_modifyLocalAggregatesForFeatureKeys_withAction_actionCount_defaultClicks_defaultImpressions_impressionBias_groupBias___block_invoke(uint64_t a1, const char *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 128, 1);
  }

  v4 = Property;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        v11 = *(a1 + 32);
        if (v11)
        {
          v12 = *(v11 + 104);
        }

        else
        {
          v12 = 0;
        }

        v13 = [v12 objectForKeyedSubscript:{*(*(&v20 + 1) + 8 * v9), v20}];
        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x1E69B6EE8]);
          [v13 setFeatureKey:v10];
          v14 = *(a1 + 32);
          if (v14)
          {
            v15 = *(v14 + 104);
          }

          else
          {
            v15 = 0;
          }

          [v15 setObject:v13 forKeyedSubscript:v10];
        }

        if (([*(a1 + 48) applyToAggregate:v13 withTreatment:v4] & 1) == 0 && !objc_msgSend(v13, "eventCount") && (objc_msgSend(v10, "isEqualToString:", @"f0") & 1) == 0)
        {
          v16 = *(a1 + 32);
          if (v16)
          {
            v17 = *(v16 + 104);
          }

          else
          {
            v17 = 0;
          }

          [v17 removeObjectForKey:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v18 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v7 = v18;
    }

    while (v18);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)clearPersonalizationData
{
  [MEMORY[0x1E696AF00] isMainThread];
  v3 = [FCRemoveRecordsCommand alloc];
  backingRecordIDs = [objc_opt_class() backingRecordIDs];
  v5 = [(FCRemoveRecordsCommand *)v3 initWithRecordIDs:backingRecordIDs];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v5];
  if (self)
  {
    accessQueue = self->_accessQueue;
  }

  else
  {
    accessQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__FCPersonalizationData_clearPersonalizationData__block_invoke;
  block[3] = &unk_1E7C36EA0;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

void __49__FCPersonalizationData_clearPersonalizationData__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 104);
  }

  else
  {
    v3 = 0;
  }

  [v3 removeAllObjects];
  v4 = *(a1 + 32);
  if (v4)
  {

    objc_storeStrong((v4 + 112), 0);
  }
}

- (id)d_allGlobalAggregates
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__84;
  v10 = __Block_byref_object_dispose__84;
  v11 = 0;
  if (self)
  {
    self = self->_accessQueue;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__FCPersonalizationData_d_allGlobalAggregates__block_invoke;
  v5[3] = &unk_1E7C37160;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(&self->super.super, v5);
  v3 = [(FCPersonalizationData *)selfCopy aggregatesForFeatureKeys:v7[5]];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __46__FCPersonalizationData_d_allGlobalAggregates__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[13];
  }

  v6 = v2;
  v3 = [v6 allKeys];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)generateDerivedData
{
  v12 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E696AF00] isMainThread] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"This operation must not be performed on the main thread."];
    *buf = 136315906;
    *&buf[4] = "[FCPersonalizationData generateDerivedData]";
    *&buf[12] = 2080;
    *&buf[14] = "FCPersonalizationData.m";
    *&buf[22] = 1024;
    LODWORD(v10) = 243;
    WORD2(v10) = 2114;
    *(&v10 + 6) = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v10 = __Block_byref_object_copy__84;
  *(&v10 + 1) = __Block_byref_object_dispose__84;
  v11 = 0;
  if (self)
  {
    accessQueue = self->_accessQueue;
  }

  else
  {
    accessQueue = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__FCPersonalizationData_generateDerivedData__block_invoke;
  v8[3] = &unk_1E7C3A3A0;
  v8[4] = self;
  v8[5] = buf;
  dispatch_sync(accessQueue, v8);
  v4 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

void __44__FCPersonalizationData_generateDerivedData__block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 128, 1);
  }

  v4 = [Property defaultScoringConfig];
  [v4 decayFactor];
  v6 = v5;

  v7 = [FCDerivedPersonalizationData alloc];
  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = v8[13];
  }

  v12 = v8;
  v9 = [(FCDerivedPersonalizationData *)v7 initWithAggregates:v12 scoringType:2 decayRate:v6];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

- (id)aggregateStore
{
  v2 = [[FCReadonlyPersonalizationAggregateStore alloc] initWithGenerator:self];

  return v2;
}

- (void)syncWithCompletion:(id)completion
{
  completionCopy = completion;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__FCPersonalizationData_syncWithCompletion___block_invoke;
  v8[3] = &unk_1E7C46A58;
  v10 = v5;
  v9 = completionCopy;
  v7.receiver = self;
  v7.super_class = FCPersonalizationData;
  v6 = completionCopy;
  [(FCPrivateDataController *)&v7 syncWithCompletion:v8];
}

void __44__FCPersonalizationData_syncWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    v11 = v7 - *(a1 + 40);
    v12 = 134217984;
    v13 = v11;
    _os_log_debug_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEBUG, "took %.3fs to sync personalization data", &v12, 0xCu);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)backingRecordIDs
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"SharedPersonalizationProfile"];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)desiredKeys
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"data";
  v5[1] = @"version";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)_updateWithRemoteRecord:(void *)record profile:
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a2;
  recordCopy = record;
  if (self)
  {
    v8 = FCPersonalizationDataAccessUnique;
    if (dispatch_get_specific(FCPersonalizationDataAccessUnique) != v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"accessing protected data from outside the queue"];
      v26 = 136315906;
      v27 = "[FCPersonalizationData _updateWithRemoteRecord:profile:]";
      v28 = 2080;
      v29 = "FCPersonalizationData.m";
      v30 = 1024;
      v31 = 466;
      v32 = 2114;
      v33 = v25;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v26, 0x26u);
    }

    if (!v6)
    {
      goto LABEL_8;
    }

    v9 = self[14];
    if (!v9)
    {
      goto LABEL_8;
    }

    v10 = v9;
    modificationDate = [v10 modificationDate];
    modificationDate2 = [v6 modificationDate];

    v13 = [modificationDate fc_isEarlierThan:modificationDate2];
    if (v13)
    {
LABEL_8:
      v14 = FCPersonalizationLog;
      if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_INFO))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_INFO, "will update personalization data from a new remote record", &v26, 2u);
      }

      v15 = self[13];
      [objc_getProperty(self v16];
      [FCModifyPersonalizationOperation applyAggregates:v15 toProfile:recordCopy maxRatio:?];

      aggregatesByFeatureKey = [recordCopy aggregatesByFeatureKey];
      v18 = [aggregatesByFeatureKey mutableCopy];
      dictionary = v18;
      if (!v18)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
      }

      objc_storeStrong(self + 13, dictionary);
      if (!v18)
      {
      }

      objc_storeStrong(self + 14, a2);
      v20 = FCPersonalizationLog;
      if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
      {
        v21 = self[13];
        v22 = v20;
        v23 = [v21 count];
        v26 = 134217984;
        v27 = v23;
        _os_log_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_DEFAULT, "did update personalization data from a new remote record with %lu aggregates", &v26, 0xCu);
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __49__FCPersonalizationData_loadLocalCachesFromStore__block_invoke_49(uint64_t a1)
{
  v2 = [*(a1 + 32) localStore];
  v6 = [v2 objectForKeyedSubscript:@"last-successful-download-date"];

  if (!v6 || ([MEMORY[0x1E695DF00] date], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "timeIntervalSinceDate:", v6), v5 = v4, v3, v5 > 86400.0))
  {
    [*(a1 + 32) markAsDirty];
  }
}

- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names
{
  v39 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  namesCopy = names;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = recordsCopy;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        recordID = [v12 recordID];
        recordName = [recordID recordName];
        v15 = [recordName isEqualToString:@"SharedPersonalizationProfile"];

        if (v15)
        {
          if (self)
          {
            accessQueue = self->_accessQueue;
          }

          else
          {
            accessQueue = 0;
          }

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __73__FCPersonalizationData_handleSyncWithChangedRecords_deletedRecordNames___block_invoke;
          block[3] = &unk_1E7C36C58;
          block[4] = v12;
          block[5] = self;
          dispatch_async(accessQueue, block);
          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = namesCopy;
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    while (2)
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        if ([*(*(&v28 + 1) + 8 * j) isEqualToString:{@"SharedPersonalizationProfile", namesCopy}])
        {
          if (self)
          {
            v22 = self->_accessQueue;
          }

          else
          {
            v22 = 0;
          }

          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __73__FCPersonalizationData_handleSyncWithChangedRecords_deletedRecordNames___block_invoke_2;
          v27[3] = &unk_1E7C36EA0;
          v27[4] = self;
          dispatch_async(v22, v27);
          goto LABEL_25;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  date = [MEMORY[0x1E695DF00] date];
  localStore = [(FCPrivateDataController *)self localStore];
  [localStore setObject:date forKeyedSubscript:@"last-successful-download-date"];

  v25 = *MEMORY[0x1E69E9840];
}

void __73__FCPersonalizationData_handleSyncWithChangedRecords_deletedRecordNames___block_invoke(uint64_t a1)
{
  v2 = [FCModifyPersonalizationOperation personalizationProfileFromRecord:*(a1 + 32)];
  [(FCPersonalizationData *)*(a1 + 40) _updateWithRemoteRecord:v2 profile:?];
}

void __73__FCPersonalizationData_handleSyncWithChangedRecords_deletedRecordNames___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && *(v1 + 112))
  {
    v3 = [FCModifyPersonalizationOperation personalizationProfileFromRecord:0];
    [(FCPersonalizationData *)*(a1 + 32) _updateWithRemoteRecord:v3 profile:?];
  }
}

id __43__FCPersonalizationData_localStoreMigrator__block_invoke(uint64_t a1, const char *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (!v3)
  {
    goto LABEL_13;
  }

  if (!v3[15])
  {
    goto LABEL_16;
  }

  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_16;
  }

  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"expected nil value for '%s'", "self.accessQueue"];
  *buf = 136315906;
  v11 = "[FCPersonalizationData localStoreMigrator]_block_invoke";
  v12 = 2080;
  v13 = "FCPersonalizationData.m";
  v14 = 1024;
  v15 = 427;
  v16 = 2114;
  v17 = v9;
  _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v3 = *(a1 + 32);
  if (v3)
  {
LABEL_16:
    if (objc_getProperty(v3, a2, 128, 1))
    {
      goto LABEL_7;
    }

    v5 = *(a1 + 32);
  }

  else
  {
LABEL_13:
    v5 = 0;
  }

  [(FCPersonalizationData *)v5 _unsafeReloadTreatment];
LABEL_7:
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v4, 128, 1);
  }

  v7 = *MEMORY[0x1E69E9840];

  return Property;
}

- (id)recordsForRestoringZoneName:(id)name
{
  v16[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__84;
  v14 = __Block_byref_object_dispose__84;
  v15 = 0;
  if (self)
  {
    accessQueue = self->_accessQueue;
  }

  else
  {
    accessQueue = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__FCPersonalizationData_recordsForRestoringZoneName___block_invoke;
  v9[3] = &unk_1E7C37160;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(accessQueue, v9);
  if (v11[5])
  {
    v16[0] = v11[5];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  _Block_object_dispose(&v10, 8);

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

void __53__FCPersonalizationData_recordsForRestoringZoneName___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 112);
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (void)_writeToLocalStoreWithCompletionHandler:(uint64_t)handler
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (handler)
  {
    v4 = FCPersonalizationDataAccessUnique;
    if (dispatch_get_specific(FCPersonalizationDataAccessUnique) != v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"accessing protected data from outside the queue"];
      *buf = 136315906;
      v22 = "[FCPersonalizationData _writeToLocalStoreWithCompletionHandler:]";
      v23 = 2080;
      v24 = "FCPersonalizationData.m";
      v25 = 1024;
      v26 = 489;
      v27 = 2114;
      v28 = v17;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v5 = FCPersonalizationLog;
    if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "will generate personalization data for disk", buf, 2u);
    }

    v6 = objc_alloc_init(MEMORY[0x1E69B6F00]);
    allValues = [*(handler + 104) allValues];
    v8 = [allValues mutableCopy];
    [v6 setAggregates:v8];

    [v6 setRemoteRecord:*(handler + 112)];
    v9 = FCDeviceIdentifierForVendor();
    [v6 setCurrentInstanceIdentifier:v9];

    data = [v6 data];
    v11 = FCPersonalizationLog;
    if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(handler + 104);
      v13 = v11;
      v14 = [v12 count];
      *buf = 134217984;
      v22 = v14;
      _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "did generate personalization data for disk with %lu aggregates", buf, 0xCu);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __65__FCPersonalizationData__writeToLocalStoreWithCompletionHandler___block_invoke;
    v18[3] = &unk_1E7C38FF0;
    v18[4] = handler;
    v19 = data;
    v20 = v3;
    v15 = data;
    FCPerformBlockOnMainThread(v18);
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __65__FCPersonalizationData__writeToLocalStoreWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) localStore];
  [v3 setObject:v2 forKeyedSubscript:@"pb-data"];

  v4 = *(*(a1 + 48) + 16);

  return v4();
}

- (void)_applicationDidEnterBackground
{
  if (self)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    localStore = [self localStore];
    v3 = [localStore objectForKeyedSubscript:@"last-successful-download-date"];

    context = [self context];
    networkReachability = [context networkReachability];
    if ([networkReachability isNetworkReachable] && objc_msgSend(self, "isSyncingEnabled") && v3)
    {
      v6 = *(self + 88);

      if (v6)
      {
        goto LABEL_15;
      }

      localStore2 = [self localStore];
      context = [localStore2 objectForKeyedSubscript:@"last-successful-upload-date"];

      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v9 = [standardUserDefaults BOOLForKey:@"upload_personalization_data_often"];

      if (!context || (!v9 ? (v10 = 3600.0) : (v10 = 0.0), [MEMORY[0x1E695DF00] date], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "timeIntervalSinceDate:", context), v13 = v12, v11, v13 >= v10))
      {
        localStore3 = [self localStore];
        v15 = [localStore3 objectForKeyedSubscript:@"below-minimum-version"];
        bOOLValue = [v15 BOOLValue];

        if ((bOOLValue & 1) == 0)
        {
          v17 = 1;
          *(self + 88) = 1;
LABEL_16:
          context2 = [self context];
          backgroundTaskable = [context2 backgroundTaskable];

          v37 = 0;
          v38 = &v37;
          v39 = 0x2020000000;
          v40 = 0;
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = __55__FCPersonalizationData__applicationDidEnterBackground__block_invoke;
          v34[3] = &unk_1E7C3A3A0;
          v20 = backgroundTaskable;
          v35 = v20;
          v36 = &v37;
          v21 = [v20 fc_beginBackgroundTaskWithName:@"Personalization Upload" expirationHandler:v34];
          v38[3] = v21;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __55__FCPersonalizationData__applicationDidEnterBackground__block_invoke_2;
          aBlock[3] = &unk_1E7C46AA0;
          selfCopy = self;
          v32 = &v37;
          v33 = v17;
          v30 = v20;
          v22 = v20;
          v23 = _Block_copy(aBlock);
          v24 = *(self + 120);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __55__FCPersonalizationData__applicationDidEnterBackground__block_invoke_4;
          block[3] = &unk_1E7C3AA30;
          v28 = v17;
          block[4] = self;
          v27 = v23;
          v25 = v23;
          dispatch_async(v24, block);

          _Block_object_dispose(&v37, 8);
          return;
        }

LABEL_15:
        v17 = 0;
        goto LABEL_16;
      }
    }

    else
    {
    }

    goto LABEL_15;
  }
}

void __55__FCPersonalizationData__applicationDidEnterBackground__block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __55__FCPersonalizationData__applicationDidEnterBackground__block_invoke_3;
  v2[3] = &unk_1E7C46AA0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 56);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __55__FCPersonalizationData__applicationDidEnterBackground__block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) fc_endBackgroundTask:*(*(*(a1 + 48) + 8) + 24)];
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      *(v3 + 88) = 0;
    }
  }

  return result;
}

void __55__FCPersonalizationData__applicationDidEnterBackground__block_invoke_4(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 128, 1);
  }

  v4 = Property;
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__FCPersonalizationData__applicationDidEnterBackground__block_invoke_5;
  v7[3] = &unk_1E7C43648;
  v10 = *(a1 + 48);
  v7[4] = v5;
  v8 = v4;
  v9 = *(a1 + 40);
  v6 = v4;
  [(FCPersonalizationData *)v5 _writeToLocalStoreWithCompletionHandler:v7];
}

void __55__FCPersonalizationData__applicationDidEnterBackground__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) localStore];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__FCPersonalizationData__applicationDidEnterBackground__block_invoke_6;
  v4[3] = &unk_1E7C43648;
  v7 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 saveWithCompletionHandler:v4];
}

void __55__FCPersonalizationData__applicationDidEnterBackground__block_invoke_6(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = *(v2 + 120);
    }

    else
    {
      v3 = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__FCPersonalizationData__applicationDidEnterBackground__block_invoke_7;
    block[3] = &unk_1E7C38FF0;
    block[4] = v2;
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    dispatch_async(v3, block);
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

void __55__FCPersonalizationData__applicationDidEnterBackground__block_invoke_7(uint64_t a1)
{
  v2 = objc_alloc_init(FCModifyPersonalizationOperation);
  v3 = [*(a1 + 32) context];
  v4 = [v3 internalPrivateDataContext];
  v5 = [v4 privateDatabase];
  [(FCModifyPersonalizationOperation *)v2 setDatabase:v5];

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 104);
  }

  else
  {
    v7 = 0;
  }

  [(FCModifyPersonalizationOperation *)v2 setAggregates:v7];
  [(FCModifyPersonalizationOperation *)v2 setTreatment:*(a1 + 40)];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 112);
  }

  else
  {
    v9 = 0;
  }

  [(FCModifyPersonalizationOperation *)v2 setRemoteRecord:v9];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __55__FCPersonalizationData__applicationDidEnterBackground__block_invoke_8;
  v14 = &unk_1E7C46AC8;
  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  [(FCModifyPersonalizationOperation *)v2 setSaveCompletionHandler:&v11];
  v10 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
  [v10 addOperation:v2];
}

void __55__FCPersonalizationData__applicationDidEnterBackground__block_invoke_8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || !v8)
  {
    v11 = [v9 domain];
    if ([v11 isEqualToString:@"FCErrorDomain"])
    {
      v12 = [v10 code];

      if (v12 == 6)
      {
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __55__FCPersonalizationData__applicationDidEnterBackground__block_invoke_12;
        v13[3] = &unk_1E7C36EA0;
        v13[4] = *(a1 + 32);
        FCPerformBlockOnMainThread(v13);
        goto LABEL_9;
      }
    }

    else
    {
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_9;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__FCPersonalizationData__applicationDidEnterBackground__block_invoke_9;
  v14[3] = &unk_1E7C43498;
  v14[4] = *(a1 + 32);
  v15 = v8;
  v16 = v7;
  v17 = *(a1 + 40);
  FCPerformBlockOnMainThread(v14);

LABEL_9:
}

void __55__FCPersonalizationData__applicationDidEnterBackground__block_invoke_9(id *a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [a1[4] localStore];
  [v3 setObject:v2 forKeyedSubscript:@"last-successful-download-date"];

  v4 = [a1[4] localStore];
  [v4 setObject:v2 forKeyedSubscript:@"last-successful-upload-date"];

  v5 = a1[4];
  if (v5)
  {
    v6 = *(v5 + 15);
  }

  else
  {
    v6 = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__FCPersonalizationData__applicationDidEnterBackground__block_invoke_10;
  v7[3] = &unk_1E7C43498;
  v7[4] = v5;
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  dispatch_async(v6, v7);
}

void __55__FCPersonalizationData__applicationDidEnterBackground__block_invoke_10(uint64_t a1)
{
  [(FCPersonalizationData *)*(a1 + 32) _updateWithRemoteRecord:*(a1 + 48) profile:?];
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__FCPersonalizationData__applicationDidEnterBackground__block_invoke_11;
  v3[3] = &unk_1E7C37BC0;
  v3[4] = v2;
  v4 = *(a1 + 56);
  [(FCPersonalizationData *)v2 _writeToLocalStoreWithCompletionHandler:v3];
}

void __55__FCPersonalizationData__applicationDidEnterBackground__block_invoke_11(uint64_t a1)
{
  v2 = [*(a1 + 32) localStore];
  [v2 saveWithCompletionHandler:*(a1 + 40)];
}

void __55__FCPersonalizationData__applicationDidEnterBackground__block_invoke_12(uint64_t a1)
{
  v1 = [*(a1 + 32) localStore];
  [v1 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"below-minimum-version"];
}

void __48__FCPersonalizationData__saveReadableAggregates__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 dictionaryRepresentation];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void __48__FCPersonalizationData__saveReadableAggregates__block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Error when saving readable aggregates: %@", &v5, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)activityObservingApplicationWindowDidBecomeBackground
{
  [(FCPersonalizationData *)self _applicationDidEnterBackground];
  if ([-[FCPersonalizationData superclass](self "superclass")])
  {
    v3.receiver = self;
    v3.super_class = FCPersonalizationData;
    [(FCPersonalizationData *)&v3 activityObservingApplicationWindowDidBecomeBackground];
  }
}

- (void)activityObservingApplicationWillTerminate
{
  [(FCPersonalizationData *)self _applicationDidEnterBackground];
  if ([-[FCPersonalizationData superclass](self "superclass")])
  {
    v3.receiver = self;
    v3.super_class = FCPersonalizationData;
    [(FCPersonalizationData *)&v3 activityObservingApplicationWillTerminate];
  }
}

- (id)aggregatesForFeatureKeys:(id)keys
{
  keysCopy = keys;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__84;
  v16 = __Block_byref_object_dispose__84;
  v17 = 0;
  if (self)
  {
    accessQueue = self->_accessQueue;
  }

  else
  {
    accessQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__FCPersonalizationData_aggregatesForFeatureKeys___block_invoke;
  block[3] = &unk_1E7C37138;
  v10 = keysCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keysCopy;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __50__FCPersonalizationData_aggregatesForFeatureKeys___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[13];
  }

  v3 = a1[5];
  v7 = v2;
  v4 = [v7 fc_subdictionaryWithCopiesForKeys:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)enumerateAggregatesUsingBlock:(id)block
{
  v16 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if ([MEMORY[0x1E696AF00] isMainThread] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"This operation must not be performed on the main thread."];
    *buf = 136315906;
    *&buf[4] = "[FCPersonalizationData enumerateAggregatesUsingBlock:]";
    *&buf[12] = 2080;
    *&buf[14] = "FCPersonalizationData.m";
    *&buf[22] = 1024;
    LODWORD(v14) = 728;
    WORD2(v14) = 2114;
    *(&v14 + 6) = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v14 = __Block_byref_object_copy__84;
  *(&v14 + 1) = __Block_byref_object_dispose__84;
  v15 = 0;
  if (self)
  {
    accessQueue = self->_accessQueue;
  }

  else
  {
    accessQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__FCPersonalizationData_enumerateAggregatesUsingBlock___block_invoke;
  block[3] = &unk_1E7C37160;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(accessQueue, block);
  v6 = *(*&buf[8] + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__FCPersonalizationData_enumerateAggregatesUsingBlock___block_invoke_2;
  v10[3] = &unk_1E7C46B18;
  v7 = blockCopy;
  v11 = v7;
  [v6 enumerateObjectsUsingBlock:v10];

  _Block_object_dispose(buf, 8);
  v8 = *MEMORY[0x1E69E9840];
}

void __55__FCPersonalizationData_enumerateAggregatesUsingBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[13];
  }

  v3 = v2;
  v7 = [v3 allValues];
  v4 = [v7 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)aggregateForFeatureKey:(id)key
{
  v13 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v4 = MEMORY[0x1E695DEC8];
  keyCopy2 = key;
  v6 = [v4 arrayWithObjects:&keyCopy count:1];

  v7 = [(FCPersonalizationData *)self aggregatesForFeatureKeys:v6, keyCopy, v13];
  allValues = [v7 allValues];
  firstObject = [allValues firstObject];

  v10 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (void)configurationManager:(id)manager configurationDidChange:(id)change
{
  if (self)
  {
    accessQueue = self->_accessQueue;
  }

  else
  {
    accessQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__FCPersonalizationData_configurationManager_configurationDidChange___block_invoke;
  block[3] = &unk_1E7C36EA0;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if ([MEMORY[0x1E696AF00] isMainThread] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"This operation must not be performed on the main thread."];
    *buf = 136315906;
    v13 = "[FCPersonalizationData operationThrottler:performAsyncOperationWithCompletion:]";
    v14 = 2080;
    v15 = "FCPersonalizationData.m";
    v16 = 1024;
    v17 = 761;
    v18 = 2114;
    v19 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (self)
    {
      goto LABEL_4;
    }

LABEL_7:
    accessQueue = 0;
    goto LABEL_5;
  }

  if (!self)
  {
    goto LABEL_7;
  }

LABEL_4:
  accessQueue = self->_accessQueue;
LABEL_5:
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__FCPersonalizationData_operationThrottler_performAsyncOperationWithCompletion___block_invoke;
  v10[3] = &unk_1E7C37BC0;
  v10[4] = self;
  v11 = completionCopy;
  v7 = completionCopy;
  dispatch_sync(accessQueue, v10);

  v8 = *MEMORY[0x1E69E9840];
}

id __63__FCPersonalizationData_configureKeyValueStoreForJSONHandling___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 isEqualToString:@"pb-data"];

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69B6F00]) initWithData:v5];
    if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "localPersonalizationData"];
      *buf = 136315906;
      v20 = "+[FCPersonalizationData configureKeyValueStoreForJSONHandling:]_block_invoke";
      v21 = 2080;
      v22 = "FCPersonalizationData.m";
      v23 = 1024;
      v24 = 780;
      v25 = 2114;
      v26 = v18;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v10 = [v9 dictionaryRepresentation];
    goto LABEL_18;
  }

  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v4;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = [v12 isEqualToString:@"remote_record_data"];

  if (v13)
  {
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:0];
    v14 = [v9 objectForKeyedSubscript:@"data"];
    v15 = [objc_alloc(MEMORY[0x1E69B6F10]) initWithData:v14];
    v10 = [v15 dictionaryRepresentation];

LABEL_18:
    goto LABEL_20;
  }

  v10 = v5;
LABEL_20:

  v16 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)updateAggregatesWith:(id)with creationBlock:(id)block updateBlock:(id)updateBlock
{
  withCopy = with;
  blockCopy = block;
  updateBlockCopy = updateBlock;
  if (self)
  {
    accessQueue = self->_accessQueue;
  }

  else
  {
    accessQueue = 0;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__FCPersonalizationData_updateAggregatesWith_creationBlock_updateBlock___block_invoke;
  v15[3] = &unk_1E7C46B68;
  v16 = withCopy;
  selfCopy = self;
  v18 = blockCopy;
  v19 = updateBlockCopy;
  v12 = updateBlockCopy;
  v13 = blockCopy;
  v14 = withCopy;
  dispatch_sync(accessQueue, v15);
}

void __72__FCPersonalizationData_updateAggregatesWith_creationBlock_updateBlock___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__FCPersonalizationData_updateAggregatesWith_creationBlock_updateBlock___block_invoke_2;
  v4[3] = &unk_1E7C46B40;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  v5 = v3;
  v6 = *(a1 + 56);
  [v2 enumerateObjectsUsingBlock:v4];
}

void __72__FCPersonalizationData_updateAggregatesWith_creationBlock_updateBlock___block_invoke_2(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[4];
  if (v4)
  {
    v4 = v4[13];
  }

  v5 = v4;
  v6 = [v5 objectForKeyedSubscript:v3];
  if (v6 || (v8 = a1[5]) == 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = (*(v8 + 16))(v8, v3);
  }

  v9 = v7;

  if (v9)
  {
    v10 = v9;
    v11 = FCPersonalizationLog;
    if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v19 = v10;
      _os_log_debug_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEBUG, "Updating aggregate %@", buf, 0xCu);
    }

    (*(a1[6] + 16))();
    v12 = FCPersonalizationLog;
    if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v19 = v10;
      _os_log_debug_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEBUG, "Updated aggregate %@", buf, 0xCu);
    }

    v13 = a1[4];
    if (v13)
    {
      v14 = *(v13 + 104);
    }

    else
    {
      v14 = 0;
    }

    [v14 setObject:v10 forKeyedSubscript:v3];
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__FCPersonalizationData_updateAggregatesWith_creationBlock_updateBlock___block_invoke_3;
    v16[3] = &unk_1E7C36EA0;
    v17 = v3;
    __72__FCPersonalizationData_updateAggregatesWith_creationBlock_updateBlock___block_invoke_3(v16);
    v10 = v17;
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __72__FCPersonalizationData_updateAggregatesWith_creationBlock_updateBlock___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Ignoring update for aggregate %@ because it doesn't exist already and this update didn't specify the option to create the aggregate", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)lookupAggregatesWith:(id)with creationBlock:(id)block
{
  withCopy = with;
  blockCopy = block;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__84;
  v22 = __Block_byref_object_dispose__84;
  v23 = 0;
  if (self)
  {
    accessQueue = self->_accessQueue;
  }

  else
  {
    accessQueue = 0;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__FCPersonalizationData_lookupAggregatesWith_creationBlock___block_invoke;
  v13[3] = &unk_1E7C46BB8;
  v14 = withCopy;
  selfCopy = self;
  v16 = blockCopy;
  v17 = &v18;
  v9 = blockCopy;
  v10 = withCopy;
  dispatch_sync(accessQueue, v13);
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

void __60__FCPersonalizationData_lookupAggregatesWith_creationBlock___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695DF20];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__FCPersonalizationData_lookupAggregatesWith_creationBlock___block_invoke_2;
  v9[3] = &unk_1E7C44768;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v6 = [v2 fc_dictionary:v9];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __60__FCPersonalizationData_lookupAggregatesWith_creationBlock___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__FCPersonalizationData_lookupAggregatesWith_creationBlock___block_invoke_3;
  v8[3] = &unk_1E7C46B90;
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v9 = v3;
  v10 = v4;
  v11 = v6;
  v7 = v3;
  [v5 enumerateObjectsUsingBlock:v8];
}

void __60__FCPersonalizationData_lookupAggregatesWith_creationBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v9 = v3;
  if (v4)
  {
    v4 = v4[13];
  }

  v5 = v4;
  v6 = [v5 objectForKeyedSubscript:v9];
  if (v6 || (v7 = *(a1 + 48)) == 0)
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v9];
  }

  else
  {
    v8 = (*(v7 + 16))(v7, v9);
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
  }
}

- (id)createAggregateWith:(id)with clicks:(double)clicks impressions:(double)impressions
{
  v15 = *MEMORY[0x1E69E9840];
  withCopy = with;
  v8 = objc_opt_new();
  [v8 setFeatureKey:withCopy];

  [v8 setClicks:clicks];
  [v8 setImpressions:impressions];
  date = [MEMORY[0x1E695DF00] date];
  [v8 setTimestamp:{objc_msgSend(date, "fc_millisecondTimeIntervalSince1970")}];

  v10 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = v8;
    _os_log_debug_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEBUG, "Created personalization aggregate %@", &v13, 0xCu);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

- (NSDictionary)allAggregates
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__84;
  v10 = __Block_byref_object_dispose__84;
  v11 = 0;
  if (self)
  {
    accessQueue = self->_accessQueue;
  }

  else
  {
    accessQueue = 0;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__FCPersonalizationData_allAggregates__block_invoke;
  v5[3] = &unk_1E7C37160;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __38__FCPersonalizationData_allAggregates__block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__FCPersonalizationData_allAggregates__block_invoke_2;
  v5[3] = &unk_1E7C36EC8;
  v5[4] = *(a1 + 32);
  v2 = [MEMORY[0x1E695DF20] fc_dictionary:v5];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __38__FCPersonalizationData_allAggregates__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 104);
  }

  else
  {
    v5 = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__FCPersonalizationData_allAggregates__block_invoke_3;
  v7[3] = &unk_1E7C37950;
  v8 = v3;
  v6 = v3;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

void __38__FCPersonalizationData_allAggregates__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 copy];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (void)updateFeatures:(id)features withAction:(unint64_t)action displayRank:(int64_t)rank groupRank:(int64_t)groupRank groupType:(int64_t)type individually:(BOOL)individually configurableValues:(id)values
{
  individuallyCopy = individually;
  v62 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  valuesCopy = values;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v12 = featuresCopy;
  v13 = [v12 countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = MEMORY[0x1E69E9C10];
    v16 = *v49;
    do
    {
      v17 = 0;
      do
      {
        if (*v49 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v48 + 1) + 8 * v17);
        personalizationIdentifier = [v18 personalizationIdentifier];

        if (personalizationIdentifier)
        {
          [array addObject:v18];
          personalizationIdentifier2 = [v18 personalizationIdentifier];
          [array2 addObject:personalizationIdentifier2];
LABEL_8:

          goto LABEL_10;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          personalizationIdentifier2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Found a personalization feature without a personalization identifier"];
          *buf = 136315906;
          v54 = "[FCPersonalizationData(FCPersonalizationAggregate) updateFeatures:withAction:displayRank:groupRank:groupType:individually:configurableValues:]";
          v55 = 2080;
          v56 = "FCPersonalizationAggregate.m";
          v57 = 1024;
          v58 = 347;
          v59 = 2114;
          v60 = personalizationIdentifier2;
          _os_log_error_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          goto LABEL_8;
        }

LABEL_10:
        ++v17;
      }

      while (v14 != v17);
      v21 = [v12 countByEnumeratingWithState:&v48 objects:v61 count:16];
      v14 = v21;
    }

    while (v21);
  }

  v22 = +[FCBaselineFeature baselineFeature];
  personalizationIdentifier3 = [v22 personalizationIdentifier];
  v24 = [(FCPersonalizationData *)self aggregateForFeatureKey:personalizationIdentifier3];

  if (!v24)
  {
    v24 = FCPersonalizationAggregateDefaultBaselineAggregateWithConfigurableValues(valuesCopy);
  }

  v25 = FCPersonalizationAggregateImpressionBiasForAction(action, rank, groupRank, valuesCopy);
  v26 = FCPersonalizationAggregateGroupBiasForGroupType(type, valuesCopy);
  [valuesCopy featureImpressionPrior];
  v28 = v27;
  defaultScoringConfig = [valuesCopy defaultScoringConfig];
  [defaultScoringConfig decayFactor];
  [v24 personalizationValueWithBaseline:0 decayRate:?];
  v31 = v28 * v30;
  [valuesCopy featureImpressionPrior];
  v32 = 1;
  [(FCPersonalizationData *)self modifyLocalAggregatesForFeatureKeys:array2 withAction:action actionCount:1 defaultClicks:v31 defaultImpressions:v33 impressionBias:v25 groupBias:v26];

  v34 = +[FCBaselineFeature baselineFeature];
  personalizationIdentifier4 = [v34 personalizationIdentifier];
  v52 = personalizationIdentifier4;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
  if (individuallyCopy)
  {
    v32 = [array2 count];
  }

  [v24 clicks];
  v38 = v37;
  [v24 impressions];
  [(FCPersonalizationData *)self modifyLocalAggregatesForFeatureKeys:v36 withAction:action actionCount:v32 defaultClicks:v38 defaultImpressions:v39 impressionBias:v25 groupBias:v26];

  v40 = *MEMORY[0x1E69E9840];
}

- (void)prepareAggregatesForUseWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __98__FCPersonalizationData_FCPersonalizationAggregate__prepareAggregatesForUseWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7C3BB90;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(FCPrivateDataController *)self performFirstSyncWithCallbackQueue:MEMORY[0x1E69E96A0] completion:v6];
}

- (void)d_allResults:(id)results completion:(id)completion
{
  resultsCopy = results;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__FCPersonalizationData_FCPersonalizationAggregate__d_allResults_completion___block_invoke;
  v10[3] = &unk_1E7C472E0;
  v10[4] = self;
  v11 = resultsCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = resultsCopy;
  [(FCPrivateDataController *)self forceSyncWithCompletion:v10];
}

void __77__FCPersonalizationData_FCPersonalizationAggregate__d_allResults_completion___block_invoke(uint64_t a1)
{
  v2 = dispatch_get_global_queue(9, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__FCPersonalizationData_FCPersonalizationAggregate__d_allResults_completion___block_invoke_2;
  block[3] = &unk_1E7C3A968;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

void __77__FCPersonalizationData_FCPersonalizationAggregate__d_allResults_completion___block_invoke_2(id *a1)
{
  v2 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__FCPersonalizationData_FCPersonalizationAggregate__d_allResults_completion___block_invoke_3;
  aBlock[3] = &unk_1E7C47290;
  v3 = v2;
  v14 = v3;
  v16 = 10;
  v15 = a1[5];
  v4 = _Block_copy(aBlock);
  v5 = [a1[4] d_allGlobalAggregates];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__FCPersonalizationData_FCPersonalizationAggregate__d_allResults_completion___block_invoke_5;
  v10[3] = &unk_1E7C472B8;
  v11 = v3;
  v12 = v4;
  v6 = v4;
  v7 = v3;
  [v5 enumerateKeysAndObjectsUsingBlock:v10];

  v6[2](v6);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__FCPersonalizationData_FCPersonalizationAggregate__d_allResults_completion___block_invoke_6;
  v8[3] = &unk_1E7C379C8;
  v9 = a1[6];
  FCPerformBlockOnMainThread(v8);
}

void __77__FCPersonalizationData_FCPersonalizationAggregate__d_allResults_completion___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) count] >= *(a1 + 48))
  {
    v2 = [*(a1 + 32) copy];
    [*(a1 + 32) removeAllObjects];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __77__FCPersonalizationData_FCPersonalizationAggregate__d_allResults_completion___block_invoke_4;
    v5[3] = &unk_1E7C37778;
    v3 = *(a1 + 40);
    v6 = v2;
    v7 = v3;
    v4 = v2;
    FCPerformBlockOnMainThread(v5);
  }
}

void __77__FCPersonalizationData_FCPersonalizationAggregate__d_allResults_completion___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [FCPersonalizationFeature featureForIdentifier:a2];
  if (v5)
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __77__FCPersonalizationData_FCPersonalizationAggregate__d_allResults_completion___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end