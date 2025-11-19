@interface BMMiningTask
+ (id)supergreenMiningTask;
- (BMMiningTask)init;
- (BMMiningTask)initWithDomain:(id)a3 types:(id)a4 targetTypes:(id)a5 samplingInterval:(double)a6 absoluteSupport:(unint64_t)a7 confidence:(double)a8 rulePersistBatchSize:(unint64_t)a9 miningInterval:(double)a10;
- (BMMiningTask)initWithStorageURL:(id)a3 types:(id)a4 targetTypes:(id)a5 samplingInterval:(double)a6 absoluteSupport:(unint64_t)a7 confidence:(double)a8 rulePersistBatchSize:(unint64_t)a9 miningInterval:(double)a10;
- (BMMiningTaskDelegate)delegate;
- (void)finishWithCompletionStatus:(int64_t)a3;
- (void)finishWithError:(id)a3;
- (void)mine;
- (void)terminateEarly;
@end

@implementation BMMiningTask

- (BMMiningTask)initWithDomain:(id)a3 types:(id)a4 targetTypes:(id)a5 samplingInterval:(double)a6 absoluteSupport:(unint64_t)a7 confidence:(double)a8 rulePersistBatchSize:(unint64_t)a9 miningInterval:(double)a10
{
  v18 = a3;
  v19 = a5;
  v20 = a4;
  v21 = BMStorageURLForDomain(v18);
  v22 = [(BMMiningTask *)self initWithStorageURL:v21 types:v20 targetTypes:v19 samplingInterval:a7 absoluteSupport:a9 confidence:a6 rulePersistBatchSize:a8 miningInterval:a10];

  if (v22)
  {
    v23 = [v18 copy];
    domain = v22->_domain;
    v22->_domain = v23;
  }

  return v22;
}

- (BMMiningTask)initWithStorageURL:(id)a3 types:(id)a4 targetTypes:(id)a5 samplingInterval:(double)a6 absoluteSupport:(unint64_t)a7 confidence:(double)a8 rulePersistBatchSize:(unint64_t)a9 miningInterval:(double)a10
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v30.receiver = self;
  v30.super_class = BMMiningTask;
  v21 = [(BMMiningTask *)&v30 init];
  v22 = v21;
  if (v21)
  {
    v21->_miningInterval = a10;
    v21->_completionStatus = -2;
    v23 = [v18 copy];
    storageURL = v22->_storageURL;
    v22->_storageURL = v23;

    objc_storeStrong(&v22->_types, a4);
    objc_storeStrong(&v22->_targetTypes, a5);
    v22->_samplingInterval = a6;
    v22->_absoluteSupport = a7;
    v22->_confidence = a8;
    v22->_rulePersistBatchSize = a9;
    v22->_maxItemsetSize = 0;
    v25 = objc_alloc_init(BMMiningTaskConfig);
    bmMiningTaskConfig = v22->_bmMiningTaskConfig;
    v22->_bmMiningTaskConfig = v25;

    v27 = [MEMORY[0x277CBEB38] dictionary];
    coreAnalyticsDict = v22->_coreAnalyticsDict;
    v22->_coreAnalyticsDict = v27;
  }

  return v22;
}

- (BMMiningTask)init
{
  v19 = MEMORY[0x277CBEB98];
  v18 = +[BMItemType locationIdentifier];
  v23 = +[BMItemType interactionPhotoScene];
  v22 = +[BMItemType interactionPhotoContact];
  v2 = +[BMItemType interactionRecipients];
  v3 = +[BMItemType interactionContentURL];
  v4 = +[BMItemType interactionUTIType];
  v5 = +[BMItemType interactionSharingSourceBundleID];
  v6 = +[BMItemType interactionTargetBundleID];
  v7 = +[BMItemType interactionExtractedTopicFromAttachment];
  v8 = +[BMItemType bundleIdOfShareExtensionOpened];
  v9 = +[BMItemType bundleIdOfHostOpenedShareExtension];
  v20 = [v19 setWithObjects:{v18, v23, v22, v2, v3, v4, v5, v6, v7, v8, v9, 0}];

  v10 = MEMORY[0x277CBEB98];
  v11 = +[BMItemType interactionRecipients];
  v12 = +[BMItemType bundleIdOfShareExtensionOpened];
  v13 = +[BMItemType interactionTargetBundleID];
  v14 = [v10 setWithObjects:{v11, v12, v13, 0}];

  v15 = +[BMBehaviorStorage defaultURL];
  v16 = [(BMMiningTask *)self initWithStorageURL:v15 types:v20 targetTypes:v14 samplingInterval:2 absoluteSupport:0.0 confidence:0.1];

  return v16;
}

+ (id)supergreenMiningTask
{
  v2 = MEMORY[0x277CBEB98];
  v3 = +[BMItemType relevanceIntentHash];
  v4 = +[BMItemType relevanceCoarseIntentHash];
  v5 = +[BMItemType relevanceAppActivityHash];
  v6 = +[BMItemType relevanceCoarseAppActivityHash];
  v7 = +[BMItemType locationIdentifier];
  v8 = [v2 setWithObjects:{v3, v4, v5, v6, v7, 0}];

  v9 = [BMMiningTask alloc];
  v10 = +[BMBehaviorStorage defaultURL];
  v11 = [(BMMiningTask *)v9 initWithStorageURL:v10 types:v8 targetTypes:v8 samplingInterval:2 absoluteSupport:600.0 confidence:0.1];

  return v11;
}

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = BMLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [BMMiningTask finishWithError:];
  }

  v7 = [(BMMiningTask *)v5 delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(BMMiningTask *)v5 delegate];
    [v9 miningTask:v5 didError:v4];
  }

  [(BMMiningTask *)v5 finishWithCompletionStatus:2];
  objc_sync_exit(v5);
}

- (void)finishWithCompletionStatus:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  if (![(BMMiningTask *)v4 isFinished])
  {
    v5 = [(BMMiningTask *)v4 start];
    [v5 timeIntervalSinceNow];
    v7 = v6;

    v8 = BMLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      v14 = 134218242;
      v15 = -v7;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_241ACA000, v8, OS_LOG_TYPE_DEFAULT, "Finished behavioral mining with elapsed time %.2f seconds, completion status: %@.", &v14, 0x16u);
    }

    [(BMMiningTask *)v4 setCompletionStatus:a3];
    v10 = [(BMMiningTask *)v4 delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(BMMiningTask *)v4 delegate];
      [v12 miningTaskDidFinish:v4];
    }
  }

  objc_sync_exit(v4);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)mine
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCABB0];
  v2 = [a1 bmMiningTaskConfig];
  v3 = [v1 numberWithBool:{objc_msgSend(v2, "interactionExtractedTopicFromAttachmentFactorInUse")}];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_241ACA000, v4, v5, "Passing bmMiningTaskConfig to BMEventExtractor with interactionExtractedTopicFromAttachmentFactorInUse as %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

BOOL __20__BMMiningTask_mine__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  v6 = v3;
  if (v5)
  {
    v7 = [*(a1 + 32) delegate];
    v6 = [v7 miningTask:*(a1 + 32) filteredRulesForExtractedRules:v3];
  }

  v8 = [*(a1 + 32) delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [*(a1 + 32) delegate];
    [v10 miningTask:*(a1 + 32) didExtractRules:v6];
  }

  v11 = *(a1 + 32);
  objc_sync_enter(v11);
  v12 = *(a1 + 40);
  v15 = 0;
  [v12 saveRules:v6 error:&v15];
  v13 = v15;
  if (v13)
  {
    [*(a1 + 32) finishWithError:v13];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) += [v3 count];
    *(*(*(a1 + 56) + 8) + 24) += [v6 count];
  }

  objc_sync_exit(v11);
  return v13 != 0;
}

- (void)terminateEarly
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = BMLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_241ACA000, v3, OS_LOG_TYPE_DEFAULT, "Stopping mining task with early termination completion status.", v12, 2u);
  }

  v4 = [(BMMiningTask *)v2 eventExtractor];

  if (v4)
  {
    v5 = [(BMMiningTask *)v2 eventExtractor];
    [v5 terminateEarly];
  }

  v6 = [(BMMiningTask *)v2 basketExtractor];

  if (v6)
  {
    v7 = [(BMMiningTask *)v2 basketExtractor];
    [v7 terminateEarly];
  }

  v8 = [(BMMiningTask *)v2 patternMiner];

  if (v8)
  {
    v9 = [(BMMiningTask *)v2 patternMiner];
    [v9 terminateEarly];
  }

  v10 = [(BMMiningTask *)v2 ruleExtractor];

  if (v10)
  {
    v11 = [(BMMiningTask *)v2 ruleExtractor];
    [v11 terminateEarly];
  }

  [(BMMiningTask *)v2 finishWithCompletionStatus:1];
  objc_sync_exit(v2);
}

- (BMMiningTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)finishWithError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_241ACA000, v0, OS_LOG_TYPE_ERROR, "Finished with error: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end