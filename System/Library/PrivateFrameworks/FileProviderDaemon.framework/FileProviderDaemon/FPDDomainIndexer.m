@interface FPDDomainIndexer
- (BOOL)isIndexed;
- (BOOL)needsAuthentication;
- (BOOL)needsIndexing;
- (FPDDomain)domain;
- (FPDDomainIndexer)initWithExtension:(id)a3 domain:(id)a4 enabled:(BOOL)a5 supportingIndexAll:(BOOL)a6;
- (FPDDomainIndexerDelegate)delegate;
- (FPDExtension)extension;
- (id)description;
- (id)localSpotlightIndexer;
- (void)__indexOneBatchIfPossibleClearingNeedsIndexing:(BOOL)a3;
- (void)_cancelTimer;
- (void)_handleOneBatchCompletionWithError:(id)a3 hasMoreChanges:(BOOL)a4;
- (void)_indexOneBatchIfPossibleClearingNeedsIndexing:(BOOL)a3;
- (void)_signalChangesWithCompletionHandler:(id)a3;
- (void)_unregisterFromScheduler;
- (void)clearNeedsAuth;
- (void)dropIndexForReason:(unint64_t)a3 completion:(id)a4;
- (void)dumpStateTo:(id)a3 withName:(id)a4;
- (void)indexOneBatchWithCompletionHandler:(id)a3;
- (void)invalidate;
- (void)pauseIndexingWithCompletionHandler:(id)a3;
- (void)resumeIndexingWithCompletionHandler:(id)a3;
- (void)setIndexingEnabled:(BOOL)a3 completionHandler:(id)a4;
- (void)setNeedsAuth;
- (void)sharedSchedulerCanRun:(id)a3;
- (void)signalChangesWithCompletionHandler:(id)a3;
- (void)signalNeedsReindexFromScratchWithDropReason:(unint64_t)a3 completionHandler:(id)a4;
- (void)signalNeedsReindexItemsWithIdentifiers:(id)a3 indexReason:(int64_t)a4 completionHandler:(id)a5;
- (void)start;
@end

@implementation FPDDomainIndexer

- (BOOL)needsAuthentication
{
  v2 = [(FPDDomainIndexer *)self state];
  v3 = [v2 needsAuth];

  return v3;
}

- (BOOL)isIndexed
{
  v3 = [(FPDDomainIndexer *)self state];
  if (([v3 droppedIndex] & 1) != 0 || !self->_isStarted)
  {
    v5 = [(FPDDomainIndexer *)self state];
    v4 = [v5 needsIndexing];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (FPDDomain)domain
{
  WeakRetained = objc_loadWeakRetained(&self->_domain);

  return WeakRetained;
}

- (void)_unregisterFromScheduler
{
  if (self->_registeredWithScheduler)
  {
    v3 = indexingScheduler();
    [v3 removeWatcher:self];

    self->_registeredWithScheduler = 0;
  }
}

- (void)_cancelTimer
{
  timerSource = self->_timerSource;
  if (timerSource)
  {
    dispatch_source_cancel(timerSource);
    v4 = self->_timerSource;
    self->_timerSource = 0;
  }
}

- (void)clearNeedsAuth
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__FPDDomainIndexer_clearNeedsAuth__block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __34__FPDDomainIndexer_clearNeedsAuth__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  v3 = [v2 needsAuth];

  if (v3)
  {
    v4 = [*(a1 + 32) state];
    [v4 setNeedsAuth:0];

    v5 = [*(a1 + 32) delegate];
    v6 = *(a1 + 32);
    v7 = [v6 state];
    [v5 extensionIndexer:v6 didChangeNeedsAuthentification:{objc_msgSend(v7, "needsAuth")}];

    v8 = *(a1 + 32);
    if (v8[41] == 1)
    {

      [v8 _signalChangesWithCompletionHandler:&__block_literal_global_100];
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_extension);
  v6 = [WeakRetained identifier];
  v7 = [(NSString *)self->_domainIdentifier isEqualToString:*MEMORY[0x1E6967178]];
  if (v7)
  {
    v8 = @"(default)";
  }

  else
  {
    v8 = [(NSString *)self->_domainIdentifier fp_obfuscatedFilename];
  }

  v9 = [v3 stringWithFormat:@"<%@: %p %@:%@ e:%d>", v4, self, v6, v8, self->_enabled];
  if (!v7)
  {
  }

  return v9;
}

- (FPDDomainIndexer)initWithExtension:(id)a3 domain:(id)a4 enabled:(BOOL)a5 supportingIndexAll:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v34.receiver = self;
  v34.super_class = FPDDomainIndexer;
  v13 = [(FPDDomainIndexer *)&v34 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_extension, v11);
    v15 = objc_storeWeak(&v14->_domain, v12);
    v16 = [v12 nsDomain];
    v17 = [v16 spotlightDomainIdentifier];
    spotlightDomainIdentifier = v14->_spotlightDomainIdentifier;
    v14->_spotlightDomainIdentifier = v17;

    if (!v14->_spotlightDomainIdentifier)
    {
      [FPDDomainIndexer initWithExtension:a2 domain:v14 enabled:? supportingIndexAll:?];
    }

    WeakRetained = objc_loadWeakRetained(&v14->_domain);
    v20 = [WeakRetained identifier];
    domainIdentifier = v14->_domainIdentifier;
    v14->_domainIdentifier = v20;

    v22 = objc_loadWeakRetained(&v14->_domain);
    v23 = [v22 providerDomainID];
    providerDomainID = v14->_providerDomainID;
    v14->_providerDomainID = v23;

    v25 = [FPDDomainIndexerState alloc];
    v26 = [v12 supportURL];
    v27 = [(FPDDomainIndexerState *)v25 initWithSupportURL:v26];
    state = v14->_state;
    v14->_state = v27;

    v14->_enabled = a5;
    v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v30 = dispatch_queue_create("indexer", v29);
    queue = v14->_queue;
    v14->_queue = v30;

    v14->_maxRetryDelayInSec = 60;
    -[FPDDomainIndexerState setNeedsIndexing:](v14->_state, "setNeedsIndexing:", [v12 shouldIndexWhenStart]);
    v14->_supportingIndexAll = a6;
    v32 = indexingScheduler();
    [v32 ping];
  }

  return v14;
}

- (void)start
{
  if (self->_invalidated)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ can't resume an invalidated indexer"];
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDDomainIndexer start]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomainIndexer/FPDDomainIndexer.m", 223, [v3 UTF8String]);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__FPDDomainIndexer_start__block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  dispatch_async(queue, block);
}

void __25__FPDDomainIndexer_start__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) domain];
  v4 = [v3 log];
  v16 = fpfs_adopt_log();

  if (*(*(a1 + 32) + 43) == 1)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __25__FPDDomainIndexer_start__block_invoke_cold_2();
    }
  }

  else
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __25__FPDDomainIndexer_start__block_invoke_cold_1();
    }

    *(*(a1 + 32) + 43) = 1;
  }

  v7 = [*(a1 + 32) state];
  [v7 loadPersistedState];

  v8 = [*(a1 + 32) state];
  if ([v8 needsIndexing] && (v9 = *(a1 + 32), (*(v9 + 40) & 1) == 0))
  {
    v15 = *(v9 + 24);

    if (!v15)
    {
      [*(a1 + 32) _indexOneBatchIfPossibleClearingNeedsIndexing:1];
    }
  }

  else
  {
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v11 = [WeakRetained isHidden];
  if (v11 & 1) != 0 || (v1 = objc_loadWeakRetained((*(a1 + 32) + 128)), ([v1 isHiddenByUser]))
  {
    v12 = [*(a1 + 32) state];
    v13 = [v12 droppedIndex];

    if ((v11 & 1) == 0)
    {
    }

    if ((v13 & 1) == 0)
    {
      v14 = fp_current_or_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __25__FPDDomainIndexer_start__block_invoke_cold_3();
      }

      [*(a1 + 32) dropIndexForReason:2 completion:&__block_literal_global_94];
    }
  }

  else
  {
  }

  __fp_pop_log();
}

- (void)invalidate
{
  if (self->_invalidated)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ invalidated twice"];
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDDomainIndexer invalidate]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomainIndexer/FPDDomainIndexer.m", 262, [v3 UTF8String]);
  }

  self->_invalidated = 1;
  [(FPDDomainIndexer *)self _unregisterFromScheduler];

  [(FPDDomainIndexer *)self _cancelTimer];
}

- (void)setNeedsAuth
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__FPDDomainIndexer_setNeedsAuth__block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __32__FPDDomainIndexer_setNeedsAuth__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) state];
  v3 = [v2 needsAuth];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) state];
    [v4 setNeedsAuth:1];

    v7 = [*(a1 + 32) delegate];
    v5 = *(a1 + 32);
    v6 = [v5 state];
    [v7 extensionIndexer:v5 didChangeNeedsAuthentification:{objc_msgSend(v6, "needsAuth")}];
  }
}

- (void)_handleOneBatchCompletionWithError:(id)a3 hasMoreChanges:(BOOL)a4
{
  v4 = a4;
  v65 = *MEMORY[0x1E69E9840];
  v7 = a3;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 extensionIndexerDidIndexOneBatch:self];
  }

  section = __fp_create_section();
  v11 = fp_current_or_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v38 = [v7 fp_prettyDescription];
    v39 = v38;
    v40 = @"success";
    if (v38)
    {
      v40 = v38;
    }

    v41 = @"no";
    *buf = 134218754;
    v58 = section;
    v59 = 2112;
    v60 = self;
    v61 = 2112;
    if (v4)
    {
      v41 = @"yes";
    }

    v62 = v40;
    v63 = 2112;
    v64 = v41;
    _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %@: handling batch index completion: %@ more-changes:%@", buf, 0x2Au);
  }

  self->_isIndexing = 0;
  *&self->_batchIndexedCount = vaddq_s64(*&self->_batchIndexedCount, vdupq_n_s64(1uLL));
  if (v7)
  {
    ++self->_consecutiveBatchErrorCount;
    objc_storeStrong(&self->_lastError, a3);
    if ([v7 fp_isFileProviderError:-1000])
    {
      v4 = 0;
    }

    else
    {
      v4 = [v7 fp_isFeatureUnsupportedError] ^ 1;
    }
  }

  else
  {
    if (([(NSError *)self->_lastError fp_isSyncAnchorExpiredError]& 1) == 0)
    {
      self->_consecutiveBatchErrorCount = 0;
      lastError = self->_lastError;
      self->_lastError = 0;
    }

    [(FPDDomainIndexer *)self _cancelTimer];
  }

  if ([(FPDDomainIndexer *)self learnNeedsAuthenticationFromBatchError])
  {
    v13 = [(FPDDomainIndexer *)self state];
    v14 = [v13 needsAuth];

    if (v14)
    {
      if (v7)
      {
        goto LABEL_18;
      }

      v15 = [(FPDDomainIndexer *)self state];
      [v15 setNeedsAuth:0];
    }

    else
    {
      if (![v7 fp_isFileProviderError:-1000])
      {
        goto LABEL_18;
      }

      v15 = [(FPDDomainIndexer *)self state];
      [v15 setNeedsAuth:1];
    }
  }

LABEL_18:
  v16 = [(FPDDomainIndexer *)self state];
  v17 = [v16 droppedIndex];
  if (v7)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  if (v18)
  {
    v19 = objc_loadWeakRetained(&self->_domain);
    if ([v19 isHidden])
    {
LABEL_25:

      goto LABEL_26;
    }

    v20 = objc_loadWeakRetained(&self->_domain);
    v21 = [v20 isHiddenByUser];

    if ((v21 & 1) == 0)
    {
      v19 = [(FPDDomainIndexer *)self state];
      [v19 setDroppedIndex:0];
      goto LABEL_25;
    }
  }

LABEL_26:
  if ((v4 & 1) == 0)
  {
    v22 = [(FPDDomainIndexer *)self state];
    v23 = [v22 needsIndexing];

    if ((v23 & 1) == 0)
    {
      v28 = [(FPDDomainIndexer *)self state];
      [v28 setNeedsIndexing:0];

      lastIndexingStartDate = self->_lastIndexingStartDate;
      self->_lastIndexingStartDate = 0;

      self->_batchIndexedCountSinceLastIndexing = 0;
      [(FPDDomainIndexer *)self _unregisterFromScheduler];
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [FPDDomainIndexer _handleOneBatchCompletionWithError:hasMoreChanges:];
      }

      goto LABEL_36;
    }
  }

  v24 = [(FPDDomainIndexer *)self state];
  v25 = [v24 needsIndexing];

  if (!(v4 & 1 | ((v25 & 1) == 0)))
  {
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomainIndexer _handleOneBatchCompletionWithError:hasMoreChanges:];
    }
  }

  if (!v7)
  {
LABEL_48:
    [(FPDDomainIndexer *)self _indexOneBatchIfPossibleClearingNeedsIndexing:v4 ^ 1u];
    goto LABEL_49;
  }

  [(FPDDomainIndexer *)self _unregisterFromScheduler];
  if ([v7 fp_isFeatureUnsupportedError])
  {
    v27 = fp_current_or_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [FPDDomainIndexer _handleOneBatchCompletionWithError:hasMoreChanges:];
    }

LABEL_36:

    goto LABEL_49;
  }

  if (self->_timerSource)
  {
    v30 = fp_current_or_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [v7 fp_prettyDescription];
      [(FPDDomainIndexer *)v31 _handleOneBatchCompletionWithError:buf hasMoreChanges:v30];
    }

    goto LABEL_49;
  }

  consecutiveBatchErrorCount = self->_consecutiveBatchErrorCount;
  v33 = consecutiveBatchErrorCount > 2;
  v34 = consecutiveBatchErrorCount - 2;
  if (!v33)
  {
    v35 = fp_current_or_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [v7 fp_prettyDescription];
      [(FPDDomainIndexer *)v36 _handleOneBatchCompletionWithError:buf hasMoreChanges:v35];
    }

    goto LABEL_48;
  }

  v42 = 100000000 << v34;
  if (1000000000 * self->_maxRetryDelayInSec >= v42)
  {
    v43 = v42;
  }

  else
  {
    v43 = 1000000000 * self->_maxRetryDelayInSec;
  }

  v44 = fp_current_or_default_log();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    v52 = [v7 fp_prettyDescription];
    v53 = self->_consecutiveBatchErrorCount;
    *buf = 138412802;
    v58 = v52;
    v59 = 2048;
    v60 = v43 / 0xF4240;
    v61 = 2048;
    v62 = v53;
    _os_log_error_impl(&dword_1CEFC7000, v44, OS_LOG_TYPE_ERROR, "[ERROR] we received an error %@, retry in %llums (count:%lu)...", buf, 0x20u);
  }

  v45 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
  p_timerSource = &self->_timerSource;
  timerSource = self->_timerSource;
  self->_timerSource = v45;

  objc_initWeak(buf, self);
  v48 = self->_timerSource;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __70__FPDDomainIndexer__handleOneBatchCompletionWithError_hasMoreChanges___block_invoke;
  v54[3] = &unk_1E83BE0B8;
  objc_copyWeak(&v55, buf);
  v49 = v48;
  v50 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v54);
  dispatch_source_set_event_handler(v49, v50);

  v51 = dispatch_time(0, v43);
  dispatch_source_set_timer(*p_timerSource, v51, 0xFFFFFFFFFFFFFFFFLL, v43);
  dispatch_resume(*p_timerSource);
  objc_destroyWeak(&v55);
  objc_destroyWeak(buf);
LABEL_49:
  __fp_leave_section_Debug();

  v37 = *MEMORY[0x1E69E9840];
}

void __70__FPDDomainIndexer__handleOneBatchCompletionWithError_hasMoreChanges___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __70__FPDDomainIndexer__handleOneBatchCompletionWithError_hasMoreChanges___block_invoke_cold_1();
    }

    [WeakRetained _cancelTimer];
    [WeakRetained _indexOneBatchIfPossibleClearingNeedsIndexing:0];
  }
}

- (void)sharedSchedulerCanRun:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__FPDDomainIndexer_sharedSchedulerCanRun___block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __42__FPDDomainIndexer_sharedSchedulerCanRun___block_invoke(uint64_t a1)
{
  __fp_create_section();
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __42__FPDDomainIndexer_sharedSchedulerCanRun___block_invoke_cold_1(a1);
  }

  [*(a1 + 32) _unregisterFromScheduler];
  v3 = *(a1 + 32);
  if (v3[40])
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __42__FPDDomainIndexer_sharedSchedulerCanRun___block_invoke_cold_2();
    }
  }

  else
  {
    [v3 __indexOneBatchIfPossibleClearingNeedsIndexing:v3[44]];
  }

  return __fp_leave_section_Debug();
}

- (void)_indexOneBatchIfPossibleClearingNeedsIndexing:(BOOL)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_timerSource)
  {
    [FPDDomainIndexer _indexOneBatchIfPossibleClearingNeedsIndexing:];
  }

  v5 = [(FPDDomainIndexer *)self state];
  if ([v5 droppedIndex])
  {
    WeakRetained = objc_loadWeakRetained(&self->_domain);
    if ([WeakRetained isHidden])
    {

LABEL_18:
      v16 = fp_current_or_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [FPDDomainIndexer _indexOneBatchIfPossibleClearingNeedsIndexing:];
      }

      goto LABEL_21;
    }

    v14 = objc_loadWeakRetained(&self->_domain);
    v15 = [v14 isHiddenByUser];

    if (v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  self->_clearNeedsIndexing = a3;
  objc_initWeak(&location, self);
  if (!self->_registeredWithScheduler)
  {
    self->_registeredWithScheduler = 1;
    v7 = indexingScheduler();
    [v7 addWatcher:self];
  }

  v8 = MEMORY[0x1E695DF70];
  v9 = indexingScheduler();
  v20[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v11 = [v8 arrayWithArray:v10];

  if (self->_supportingIndexAll)
  {
    v12 = [FPDSharedSystemScheduler schedulerWithLabel:@"com.apple.fileproviderd.background-download"];
    if (v12)
    {
      [v11 addObject:v12];
    }
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__FPDDomainIndexer__indexOneBatchIfPossibleClearingNeedsIndexing___block_invoke;
  v18[3] = &unk_1E83C1CE0;
  v18[4] = self;
  if (![FPDSharedSystemScheduler runIfAllowedOneSchedulerOf:v11 cb:v18])
  {
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomainIndexer _indexOneBatchIfPossibleClearingNeedsIndexing:];
    }
  }

  objc_destroyWeak(&location);
LABEL_21:
  v17 = *MEMORY[0x1E69E9840];
}

- (void)__indexOneBatchIfPossibleClearingNeedsIndexing:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_timerSource)
  {
    [FPDDomainIndexer __indexOneBatchIfPossibleClearingNeedsIndexing:];
  }

  section = __fp_create_section();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FPDDomainIndexer __indexOneBatchIfPossibleClearingNeedsIndexing:?];
  }

  if (self->_invalidated)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomainIndexer __indexOneBatchIfPossibleClearingNeedsIndexing:];
    }
  }

  else
  {
    if (self->_isIndexing)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ we are already indexing"];
      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        +[FPDVolume prettyNameForDomain:];
      }

      __assert_rtn("-[FPDDomainIndexer __indexOneBatchIfPossibleClearingNeedsIndexing:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomainIndexer/FPDDomainIndexer.m", 495, [v10 UTF8String]);
    }

    if (!self->_isStarted)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ we try to index before starting"];
      v13 = fp_current_or_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        +[FPDVolume prettyNameForDomain:];
      }

      __assert_rtn("-[FPDDomainIndexer __indexOneBatchIfPossibleClearingNeedsIndexing:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomainIndexer/FPDDomainIndexer.m", 496, [v12 UTF8String]);
    }

    self->_isIndexing = 1;
    if (v3)
    {
      v7 = [(FPDDomainIndexer *)self state];
      [v7 setNeedsIndexing:0];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__FPDDomainIndexer___indexOneBatchIfPossibleClearingNeedsIndexing___block_invoke;
    aBlock[3] = &unk_1E83BDFC8;
    aBlock[4] = self;
    v8 = _Block_copy(aBlock);
    if (self->_enabled)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __67__FPDDomainIndexer___indexOneBatchIfPossibleClearingNeedsIndexing___block_invoke_127;
      v14[3] = &unk_1E83C1D08;
      v14[4] = self;
      [(FPDDomainIndexer *)self indexOneBatchWithCompletionHandler:v14];
    }

    else
    {
      v9 = fp_current_or_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [FPDDomainIndexer __indexOneBatchIfPossibleClearingNeedsIndexing:];
      }

      [(FPDDomainIndexer *)self dropIndexForReason:3 completion:v8];
    }
  }

  __fp_leave_section_Debug();
}

void __67__FPDDomainIndexer___indexOneBatchIfPossibleClearingNeedsIndexing___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 120);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__FPDDomainIndexer___indexOneBatchIfPossibleClearingNeedsIndexing___block_invoke_2;
  v7[3] = &unk_1E83BE158;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __67__FPDDomainIndexer___indexOneBatchIfPossibleClearingNeedsIndexing___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) domain];
  v3 = [v2 log];
  v5 = fpfs_adopt_log();

  v4 = *(a1 + 40) != 0;
  [*(a1 + 32) _handleOneBatchCompletionWithError:? hasMoreChanges:?];
  __fp_pop_log();
}

void __67__FPDDomainIndexer___indexOneBatchIfPossibleClearingNeedsIndexing___block_invoke_127(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 120);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__FPDDomainIndexer___indexOneBatchIfPossibleClearingNeedsIndexing___block_invoke_2_128;
  block[3] = &unk_1E83BFB10;
  block[4] = v6;
  v10 = v5;
  v11 = a2;
  v8 = v5;
  dispatch_async(v7, block);
}

void __67__FPDDomainIndexer___indexOneBatchIfPossibleClearingNeedsIndexing___block_invoke_2_128(uint64_t a1)
{
  v2 = [*(a1 + 32) domain];
  v3 = [v2 log];
  v4 = fpfs_adopt_log();

  [*(a1 + 32) _handleOneBatchCompletionWithError:*(a1 + 40) hasMoreChanges:*(a1 + 48)];
  __fp_pop_log();
}

- (void)indexOneBatchWithCompletionHandler:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing implementation of %s in %@", "-[FPDDomainIndexer indexOneBatchWithCompletionHandler:]", self];
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    *buf = 138543362;
    v8 = v5;
    _os_log_fault_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", buf, 0xCu);
  }

  __assert_rtn("-[FPDDomainIndexer indexOneBatchWithCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomainIndexer/FPDDomainIndexer.m", 527, [v5 UTF8String]);
}

- (void)signalNeedsReindexFromScratchWithDropReason:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  v8 = [WeakRetained session];
  v9 = [v8 newFileProviderProxyWithTimeout:0 pid:180.0];

  domainIdentifier = self->_domainIdentifier;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__FPDDomainIndexer_signalNeedsReindexFromScratchWithDropReason_completionHandler___block_invoke;
  v12[3] = &unk_1E83BE1A8;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [v9 dropIndexForDomain:domainIdentifier dropReason:a3 completionHandler:v12];
}

void __82__FPDDomainIndexer_signalNeedsReindexFromScratchWithDropReason_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__FPDDomainIndexer_signalNeedsReindexFromScratchWithDropReason_completionHandler___block_invoke_2;
  v7[3] = &unk_1E83C1D30;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 signalChangesWithCompletionHandler:v7];
}

- (void)signalNeedsReindexItemsWithIdentifiers:(id)a3 indexReason:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = [a3 fp_map:&__block_literal_global_135];
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  v11 = [WeakRetained session];
  v12 = [v11 newFileProviderProxyWithTimeout:0 pid:180.0];

  domainIdentifier = self->_domainIdentifier;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__FPDDomainIndexer_signalNeedsReindexItemsWithIdentifiers_indexReason_completionHandler___block_invoke_2;
  v15[3] = &unk_1E83BE1A8;
  v15[4] = self;
  v16 = v8;
  v14 = v8;
  [v12 signalNeedsReindexItemsWithIdentifiers:v9 domainIdentifier:domainIdentifier indexReason:a4 completionHandler:v15];
}

id __89__FPDDomainIndexer_signalNeedsReindexItemsWithIdentifiers_indexReason_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  [MEMORY[0x1E69673A0] getDomainIdentifier:0 andIdentifier:&v4 fromCoreSpotlightIdentifier:a2];
  v2 = v4;

  return v2;
}

void __89__FPDDomainIndexer_signalNeedsReindexItemsWithIdentifiers_indexReason_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__FPDDomainIndexer_signalNeedsReindexItemsWithIdentifiers_indexReason_completionHandler___block_invoke_3;
  v7[3] = &unk_1E83C1D30;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 signalChangesWithCompletionHandler:v7];
}

- (id)localSpotlightIndexer
{
  v3 = MEMORY[0x1E696AEC0];
  WeakRetained = objc_loadWeakRetained(&self->_extension);
  v5 = [WeakRetained identifier];
  v6 = [v3 stringWithFormat:@"com.apple.FileProvider/%@", v5];

  v7 = [v6 stringByAppendingPathComponent:self->_spotlightDomainIdentifier];

  v8 = objc_alloc(MEMORY[0x1E6964E78]);
  v9 = objc_loadWeakRetained(&self->_extension);
  v10 = [v9 descriptor];
  v11 = [v10 topLevelBundleIdentifier];
  v12 = [v8 _initWithName:v7 protectionClass:0 bundleIdentifier:v11 options:0];

  return v12;
}

- (void)dropIndexForReason:(unint64_t)a3 completion:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(FPDDomainIndexer *)self state];
  v8 = [v7 droppedIndex];

  if (v8)
  {
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomainIndexer dropIndexForReason:completion:];
    }

    v6[2](v6, 0);
  }

  else
  {
    v10 = [(FPDDomainIndexer *)self state];
    [v10 recordIndexDropReason:a3];

    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomainIndexer dropIndexForReason:completion:];
    }

    v12 = [(FPDDomainIndexer *)self localSpotlightIndexer];
    v13 = self->_domainIdentifier;
    v23[0] = self->_spotlightDomainIdentifier;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __50__FPDDomainIndexer_dropIndexForReason_completion___block_invoke;
    v18[3] = &unk_1E83C1DA8;
    v18[4] = self;
    v19 = v12;
    v20 = v13;
    v21 = v6;
    v22 = a3;
    v15 = v13;
    v16 = v12;
    [v16 deleteSearchableItemsWithDomainIdentifiers:v14 reason:0 completionHandler:v18];
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __50__FPDDomainIndexer_dropIndexForReason_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) domain];
  v5 = [v4 log];
  v18 = fpfs_adopt_log();

  if (v3)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __50__FPDDomainIndexer_dropIndexForReason_completion___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [*(a1 + 40) beginIndexBatch];
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E695DEF0] data];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__FPDDomainIndexer_dropIndexForReason_completion___block_invoke_2;
    v15[3] = &unk_1E83C1D80;
    v14 = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    *&v11 = *(a1 + 40);
    *(&v11 + 1) = v10;
    *&v12 = v14;
    *(&v12 + 1) = v9;
    v16 = v12;
    v17 = v11;
    [v7 endIndexBatchWithClientState:v8 completionHandler:v15];

    if (*(a1 + 64) != 1)
    {
      v13 = [*(a1 + 32) state];
      [v13 setDroppedIndex:1];
    }
  }

  __fp_pop_log();
}

void __50__FPDDomainIndexer_dropIndexForReason_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) domain];
  v5 = [v4 log];
  v12 = fpfs_adopt_log();

  if (v3)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __50__FPDDomainIndexer_dropIndexForReason_completion___block_invoke_2_cold_1(a1);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__FPDDomainIndexer_dropIndexForReason_completion___block_invoke_142;
    v9[3] = &unk_1E83C1D58;
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9[4] = *(a1 + 32);
    v10 = v7;
    v11 = *(a1 + 56);
    [v8 fetchLastClientStateWithCompletionHandler:v9];
  }

  __fp_pop_log();
}

void __50__FPDDomainIndexer_dropIndexForReason_completion___block_invoke_142(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) domain];
  v8 = [v7 log];
  v16 = fpfs_adopt_log();

  if (v6)
  {
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __50__FPDDomainIndexer_dropIndexForReason_completion___block_invoke_142_cold_1(a1);
    }

LABEL_7:

    goto LABEL_8;
  }

  if ([v5 length])
  {
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __50__FPDDomainIndexer_dropIndexForReason_completion___block_invoke_142_cold_2(a1, v9, v10, v11, v12, v13, v14, v15);
    }

    goto LABEL_7;
  }

LABEL_8:
  (*(*(a1 + 48) + 16))();
  __fp_pop_log();
}

- (void)_signalChangesWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_timerSource)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomainIndexer _signalChangesWithCompletionHandler:?];
    }

    [(FPDDomainIndexer *)self _cancelTimer];
  }

  v6 = [(FPDDomainIndexer *)self state];
  [v6 setNeedsIndexing:1];

  if (self->_isIndexing)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomainIndexer _signalChangesWithCompletionHandler:?];
    }

LABEL_12:

    isIndexing = self->_isIndexing;
    goto LABEL_13;
  }

  if (!self->_isStarted)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomainIndexer _signalChangesWithCompletionHandler:];
    }

    goto LABEL_12;
  }

  [(FPDDomainIndexer *)self _indexOneBatchIfPossibleClearingNeedsIndexing:1];
  isIndexing = 0;
LABEL_13:
  (v4)[2](v4, isIndexing);
}

- (void)signalChangesWithCompletionHandler:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__FPDDomainIndexer_signalChangesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E83BE310;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __55__FPDDomainIndexer_signalChangesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) domain];
  v4 = [v3 log];
  v8 = fpfs_adopt_log();

  section = __fp_create_section();
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __55__FPDDomainIndexer_signalChangesWithCompletionHandler___block_invoke_cold_1(v2);
  }

  if (*(*v2 + 41))
  {
    [*v2 _signalChangesWithCompletionHandler:{*(a1 + 40), section, v8}];
  }

  else
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __55__FPDDomainIndexer_signalChangesWithCompletionHandler___block_invoke_cold_2();
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), 0);
  }

  __fp_leave_section_Debug();
  __fp_pop_log();
}

- (void)setIndexingEnabled:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__FPDDomainIndexer_setIndexingEnabled_completionHandler___block_invoke;
  block[3] = &unk_1E83BE248;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

void __57__FPDDomainIndexer_setIndexingEnabled_completionHandler___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) domain];
  v3 = [v2 log];
  v18 = fpfs_adopt_log();

  section = __fp_create_section();
  v17 = section;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 32);
    if (*(a1 + 48))
    {
      v14 = @"user-enabled";
    }

    else
    {
      v14 = @"user-disabled";
    }

    *buf = 134218498;
    v20 = section;
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v14;
    _os_log_debug_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %@: setting indexing to %@", buf, 0x20u);
  }

  v6 = *(a1 + 32);
  if (*(a1 + 48) == *(v6 + 41))
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    *(v6 + 48) = 0;
    *(*(a1 + 32) + 56) = 0;
    v7 = *(a1 + 32);
    v8 = *(v7 + 72);
    *(v7 + 72) = 0;

    v9 = *(a1 + 48);
    *(*(a1 + 32) + 41) = v9;
    v10 = *(a1 + 32);
    if (v9 == 1)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __57__FPDDomainIndexer_setIndexingEnabled_completionHandler___block_invoke_150;
      v15[3] = &unk_1E83BE990;
      v16 = *(a1 + 40);
      [v10 _signalChangesWithCompletionHandler:v15];
      v11 = v16;
    }

    else
    {
      [v10 dropIndexForReason:3 completion:*(a1 + 40)];
      v11 = [*(a1 + 32) state];
      [v11 setNeedsIndexing:0];
    }
  }

  __fp_leave_section_Debug();
  __fp_pop_log();

  v12 = *MEMORY[0x1E69E9840];
}

- (void)pauseIndexingWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainIndexer pauseIndexingWithCompletionHandler:];
  }

  v5 = FPNotSupportedError();
  v3[2](v3, v5);
}

- (void)resumeIndexingWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [FPDDomainIndexer resumeIndexingWithCompletionHandler:];
  }

  v5 = FPNotSupportedError();
  v3[2](v3, v5);
}

- (void)dumpStateTo:(id)a3 withName:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    WeakRetained = objc_loadWeakRetained(&self->_domain);
    v9 = [WeakRetained nsDomain];
    v10 = [v9 displayName];
    v11 = [v10 fp_obfuscatedFilename];

    if ([v11 length])
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", v11];

      v11 = v12;
    }

    [v6 write:{@"domain: %@ %@\n", v7, v11}];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__FPDDomainIndexer_dumpStateTo_withName___block_invoke;
  block[3] = &unk_1E83BE158;
  v14 = v6;
  v26 = v14;
  v27 = self;
  dispatch_sync(queue, block);
  v15 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:objc_msgSend(v14 closeOnDealloc:{"fd"), 0}];
  v16 = [(FPDDomainIndexer *)self extension];
  v17 = [v16 domainForIdentifier:self->_domainIdentifier reason:0];
  v18 = [v17 session];
  v19 = [v18 existingFileProviderProxyWithTimeout:0 onlyAlreadyLifetimeExtended:0 pid:-1.0];
  v20 = [v19 synchronousRemoteObjectProxy];
  domainIdentifier = self->_domainIdentifier;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __41__FPDDomainIndexer_dumpStateTo_withName___block_invoke_2;
  v23[3] = &unk_1E83BDFC8;
  v24 = v14;
  v22 = v14;
  [v20 dumpIndexStateForDomain:domainIdentifier toFileHandler:v15 completionHandler:v23];
}

void __41__FPDDomainIndexer_dumpStateTo_withName___block_invoke(uint64_t a1)
{
  [*(a1 + 32) write:{@"      spDomainID:     %@\n", *(*(a1 + 40) + 88)}];
  v2 = *(a1 + 32);
  v3 = indexingScheduler();
  [v2 write:{@"      scheduler:      %@\n", v3}];

  if (*(*(a1 + 40) + 41))
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  [*(a1 + 32) write:{@"      enabled:        %s\n", v4}];
  if (*(*(a1 + 40) + 40))
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  [*(a1 + 32) write:{@"      indexing:       %s\n", v5}];
  v6 = [*(a1 + 40) state];
  [v6 dumpStateTo:*(a1 + 32)];

  [*(a1 + 32) write:{@"      errors:         %ld\n", *(*(a1 + 40) + 64)}];
  [*(a1 + 32) write:{@"      batch-indexed (since last startup): %lu\n", *(*(a1 + 40) + 48)}];
  v7 = *(a1 + 40);
  if (*(v7 + 72))
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x1E695DF00] date];
    [v9 timeIntervalSinceDate:*(*(a1 + 40) + 72)];
    [v8 write:{@"      on-going index started:     %.3fs ago\n", v10}];

    [*(a1 + 32) write:{@"      on-going index batch count: %lu\n", *(*(a1 + 40) + 56)}];
    v7 = *(a1 + 40);
  }

  v11 = *(v7 + 80);
  if (v11)
  {
    v12 = *(a1 + 32);
    v14 = [v11 description];
    v13 = v14;
    [v12 write:{@"      last error: %s\n", objc_msgSend(v14, "UTF8String")}];
  }
}

void __41__FPDDomainIndexer_dumpStateTo_withName___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v7 = v3;
    v4 = [v3 fp_isCocoaErrorCode:3072];
    v5 = *(a1 + 32);
    if (v4)
    {
      [v5 write:@"      not dumping extension: not running\n"];
    }

    else
    {
      v6 = [v7 description];
      [v5 write:{@"      can't dump the extension: %@\n", v6}];
    }

    v3 = v7;
  }
}

- (BOOL)needsIndexing
{
  v2 = [(FPDDomainIndexer *)self state];
  v3 = [v2 needsIndexing];

  return v3;
}

- (FPDDomainIndexerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (FPDExtension)extension
{
  WeakRetained = objc_loadWeakRetained(&self->_extension);

  return WeakRetained;
}

- (void)initWithExtension:(uint64_t)a3 domain:enabled:supportingIndexAll:.cold.1(id *a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  WeakRetained = objc_loadWeakRetained(a1);
  [v6 handleFailureInMethod:a2 object:a3 file:@"FPDDomainIndexer.m" lineNumber:198 description:{@"Domain %@ has no spotlight domain identifier", WeakRetained}];
}

- (void)_handleOneBatchCompletionWithError:(uint8_t *)buf hasMoreChanges:(os_log_t)log .cold.3(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v5 = *(a2 + 64);
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = v5;
  _os_log_error_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_ERROR, "[ERROR] we received an error %@, retry is already scheduled (count:%u)...", buf, 0x12u);
}

- (void)_handleOneBatchCompletionWithError:(uint8_t *)buf hasMoreChanges:(os_log_t)log .cold.4(void *a1, uint64_t *a2, uint8_t *buf, os_log_t log)
{
  v5 = *a2;
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = v5;
  _os_log_error_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_ERROR, "[ERROR] we received an error %@, trying again (count:%lu)...", buf, 0x16u);
}

void __42__FPDDomainIndexer_sharedSchedulerCanRun___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_1_4(&dword_1CEFC7000, v2, v3, "[DEBUG] ┏%llx %@: DAS granted us some CPU time");
  v4 = *MEMORY[0x1E69E9840];
}

- (void)__indexOneBatchIfPossibleClearingNeedsIndexing:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_4(&dword_1CEFC7000, v2, v3, "[DEBUG] ┏%llx %@: indexing one batch");
  v4 = *MEMORY[0x1E69E9840];
}

- (void)dropIndexForReason:completion:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)dropIndexForReason:completion:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __50__FPDDomainIndexer_dropIndexForReason_completion___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_2_5();
  _os_log_error_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_ERROR, "[ERROR] Failed to drop index for domain %@; %@", v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __50__FPDDomainIndexer_dropIndexForReason_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_9_2(&dword_1CEFC7000, v2, v3, "[CRIT] Failed to erase client state %@; %@");
  v4 = *MEMORY[0x1E69E9840];
}

void __50__FPDDomainIndexer_dropIndexForReason_completion___block_invoke_142_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_9_2(&dword_1CEFC7000, v2, v3, "[CRIT] Failed verify client state %@; %@");
  v4 = *MEMORY[0x1E69E9840];
}

void __50__FPDDomainIndexer_dropIndexForReason_completion___block_invoke_142_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 40));
  OUTLINED_FUNCTION_1_6(&dword_1CEFC7000, a2, a3, "[CRIT] Failed to erase client state %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_signalChangesWithCompletionHandler:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 8);
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_signalChangesWithCompletionHandler:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 8);
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __55__FPDDomainIndexer_signalChangesWithCompletionHandler___block_invoke_cold_1(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_1_4(&dword_1CEFC7000, v2, v3, "[DEBUG] ┏%llx %@: a change was signaled");
  v4 = *MEMORY[0x1E69E9840];
}

@end