@interface MessageListCellsController
+ (OS_os_log)log;
- (BOOL)wasItemRecentlyVisible:(id)visible;
- (MessageListCellsController)init;
- (void)_reportBlankCellMetrics;
- (void)_reportFlickeringCellMetrics;
- (void)markItemIDsAsVisibleBeforeUpdate:(id)update;
- (void)reportCellDidLoad:(BOOL)load error:(id)error;
- (void)reportFlickeringCell:(BOOL)cell duration:(double)duration;
- (void)reportMessageListCellMetrics;
@end

@implementation MessageListCellsController

- (MessageListCellsController)init
{
  v16.receiver = self;
  v16.super_class = MessageListCellsController;
  v2 = [(MessageListCellsController *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D07168]);
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v5 = [v3 initWithObject:v4];
    visibleItemIDs = v2->_visibleItemIDs;
    v2->_visibleItemIDs = v5;

    v2->_loadAttempts = 0;
    v2->_loadFailures = 0;
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    failureCodeCount = v2->_failureCodeCount;
    v2->_failureCodeCount = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    rawFlickerDurations = v2->_rawFlickerDurations;
    v2->_rawFlickerDurations = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    bucketedFlickerDurations = v2->_bucketedFlickerDurations;
    v2->_bucketedFlickerDurations = v11;

    v13 = objc_alloc_init(MEMORY[0x277D06D68]);
    analyticsCollector = v2->_analyticsCollector;
    v2->_analyticsCollector = v13;

    v2->_analyticsLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)reportMessageListCellMetrics
{
  [(MessageListCellsController *)self _reportBlankCellMetrics];

  [(MessageListCellsController *)self _reportFlickeringCellMetrics];
}

- (void)_reportBlankCellMetrics
{
  v17 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    os_unfair_lock_lock(self + 2);
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[os_unfair_lock_s loadAttempts](self, "loadAttempts")}];
    [v2 setObject:v3 forKeyedSubscript:@"loadAttempts"];

    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[os_unfair_lock_s loadFailures](self, "loadFailures")}];
    [v2 setObject:v4 forKeyedSubscript:@"loadFailures"];

    failureCodeCount = [(os_unfair_lock_s *)self failureCodeCount];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__MessageListCellsController__reportBlankCellMetrics__block_invoke;
    v11[3] = &unk_278188D20;
    v6 = v2;
    v12 = v6;
    [failureCodeCount enumerateKeysAndObjectsUsingBlock:v11];

    [(os_unfair_lock_s *)self setLoadAttempts:0];
    [(os_unfair_lock_s *)self setLoadFailures:0];
    failureCodeCount2 = [(os_unfair_lock_s *)self failureCodeCount];
    [failureCodeCount2 removeAllObjects];

    os_unfair_lock_unlock(self + 2);
    v8 = [objc_alloc(MEMORY[0x277D06D70]) initWithEventName:@"com.apple.mail.messagelist.loadingMessage" collectionData:v6];
    analyticsCollector = [(os_unfair_lock_s *)self analyticsCollector];
    [analyticsCollector logOneTimeEvent:v8];

    v10 = +[MessageListCellsController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy = self;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_214A5E000, v10, OS_LOG_TYPE_DEFAULT, "%p: Report blank cell metrics to CoreAnalytics %{public}@", buf, 0x16u);
    }
  }
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__MessageListCellsController_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_1 != -1)
  {
    dispatch_once(&log_onceToken_1, block);
  }

  v2 = log_log_1;

  return v2;
}

void __33__MessageListCellsController_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email", [v4 UTF8String]);
  v3 = log_log_1;
  log_log_1 = v2;
}

- (void)_reportFlickeringCellMetrics
{
  v20 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    os_unfair_lock_lock((self + 8));
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "numberOfVisibleCells")}];
    [v2 setObject:v3 forKeyedSubscript:@"numberOfVisibleCells"];

    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "numberOfFlickeringCells")}];
    [v2 setObject:v4 forKeyedSubscript:@"numberOfFlickeringCells"];

    v5 = *(self + 80);
    v6 = [v5 copy];
    [v2 setObject:v6 forKeyedSubscript:@"duration"];

    v7 = *(self + 88);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__MessageListCellsController__reportFlickeringCellMetrics__block_invoke;
    v14[3] = &unk_278188D20;
    v8 = v2;
    v15 = v8;
    [v7 enumerateKeysAndObjectsUsingBlock:v14];

    [self setNumberOfVisibleCells:0];
    [self setNumberOfFlickeringCells:0];
    v9 = *(self + 80);
    [v9 removeAllObjects];

    v10 = *(self + 88);
    [v10 removeAllObjects];

    os_unfair_lock_unlock((self + 8));
    v11 = [objc_alloc(MEMORY[0x277D06D70]) initWithEventName:@"com.apple.mail.messagelist.flicker" collectionData:v8];
    analyticsCollector = [self analyticsCollector];
    [analyticsCollector logOneTimeEvent:v11];

    v13 = +[MessageListCellsController log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy = self;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&dword_214A5E000, v13, OS_LOG_TYPE_DEFAULT, "%p: Report flickering cell metrics to CoreAnalytics %{public}@", buf, 0x16u);
    }
  }
}

- (void)markItemIDsAsVisibleBeforeUpdate:(id)update
{
  v24 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = +[MessageListCellsController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy = self;
    v20 = 2048;
    v21 = [updateCopy count];
    v22 = 2114;
    v23 = updateCopy;
    _os_log_impl(&dword_214A5E000, v5, OS_LOG_TYPE_DEFAULT, "%p: Mark item %lu ids as visible before update: %{public}@", buf, 0x20u);
  }

  currentUpdateToken = [(MessageListCellsController *)self currentUpdateToken];
  [currentUpdateToken cancel];

  visibleItemIDs = [(MessageListCellsController *)self visibleItemIDs];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__MessageListCellsController_markItemIDsAsVisibleBeforeUpdate___block_invoke;
  v16[3] = &unk_278188CA8;
  v8 = updateCopy;
  v17 = v8;
  [visibleItemIDs performWhileLocked:v16];

  objc_initWeak(buf, self);
  mainThreadScheduler = [MEMORY[0x277D071B8] mainThreadScheduler];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __63__MessageListCellsController_markItemIDsAsVisibleBeforeUpdate___block_invoke_2;
  v14 = &unk_278188CD0;
  objc_copyWeak(&v15, buf);
  v10 = [mainThreadScheduler afterDelay:&v11 performBlock:2.0];
  [(MessageListCellsController *)self setCurrentUpdateToken:v10, v11, v12, v13, v14];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

void __63__MessageListCellsController_markItemIDsAsVisibleBeforeUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 removeAllObjects];
  [v3 addObjectsFromArray:*(a1 + 32)];
}

void __63__MessageListCellsController_markItemIDsAsVisibleBeforeUpdate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained visibleItemIDs];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __63__MessageListCellsController_markItemIDsAsVisibleBeforeUpdate___block_invoke_3;
    v4[3] = &unk_278188CA8;
    v4[4] = v2;
    [v3 performWhileLocked:v4];
  }
}

void __63__MessageListCellsController_markItemIDsAsVisibleBeforeUpdate___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  os_unfair_lock_lock(v3 + 2);
  [*(a1 + 32) setNumberOfVisibleCells:{objc_msgSend(*(a1 + 32), "numberOfVisibleCells") + objc_msgSend(v4, "count")}];
  os_unfair_lock_unlock(v3 + 2);
  [v4 removeAllObjects];
}

- (BOOL)wasItemRecentlyVisible:(id)visible
{
  visibleCopy = visible;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  visibleItemIDs = [(MessageListCellsController *)self visibleItemIDs];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__MessageListCellsController_wasItemRecentlyVisible___block_invoke;
  v8[3] = &unk_278188CF8;
  v10 = &v11;
  v6 = visibleCopy;
  v9 = v6;
  [visibleItemIDs performWhileLocked:v8];

  LOBYTE(visibleItemIDs) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return visibleItemIDs;
}

void __53__MessageListCellsController_wasItemRecentlyVisible___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [v3 containsObject:*(a1 + 32)];
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [v3 removeObject:*(a1 + 32)];
  }
}

- (void)reportCellDidLoad:(BOOL)load error:(id)error
{
  loadCopy = load;
  errorCopy = error;
  os_unfair_lock_lock(&self->_analyticsLock);
  [(MessageListCellsController *)self setLoadAttempts:[(MessageListCellsController *)self loadAttempts]+ 1];
  [(MessageListCellsController *)self setLoadFailures:[(MessageListCellsController *)self loadFailures]+ !loadCopy];
  if (errorCopy)
  {
    failureCodeCount = [(MessageListCellsController *)self failureCodeCount];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    stringValue = [v7 stringValue];
    v9 = [failureCodeCount objectForKeyedSubscript:stringValue];

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = &unk_2827059E0;
    }

    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "integerValue") + 1}];
    failureCodeCount2 = [(MessageListCellsController *)self failureCodeCount];
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    stringValue2 = [v13 stringValue];
    [failureCodeCount2 setObject:v11 forKeyedSubscript:stringValue2];
  }

  os_unfair_lock_unlock(&self->_analyticsLock);
}

- (void)reportFlickeringCell:(BOOL)cell duration:(double)duration
{
  cellCopy = cell;
  os_unfair_lock_lock(&self->_analyticsLock);
  [(MessageListCellsController *)self setNumberOfVisibleCells:[(MessageListCellsController *)self numberOfVisibleCells]+ 1];
  if (cellCopy)
  {
    [(MessageListCellsController *)self setNumberOfFlickeringCells:[(MessageListCellsController *)self numberOfFlickeringCells]+ 1];
    if (self)
    {
      rawFlickerDurations = self->_rawFlickerDurations;
    }

    else
    {
      rawFlickerDurations = 0;
    }

    v8 = rawFlickerDurations;
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
    [(NSMutableArray *)v8 addObject:v9];

    if (self)
    {
      bucketedFlickerDurations = self->_bucketedFlickerDurations;
    }

    else
    {
      bucketedFlickerDurations = 0;
    }

    v11 = bucketedFlickerDurations;
    v12 = v11;
    if (duration >= 0.01)
    {
      if (duration >= 0.02)
      {
        if (duration >= 0.03)
        {
          if (duration >= 0.04)
          {
            if (duration >= 0.05)
            {
              if (duration >= 0.1)
              {
                if (duration >= 0.5)
                {
                  if (duration >= 1.0)
                  {
                    if (duration >= 1.5)
                    {
                      v13 = @"duration_1_5_to_2_0";
                    }

                    else
                    {
                      v13 = @"duration_1_0_to_1_5";
                    }
                  }

                  else
                  {
                    v13 = @"duration_0_5_to_1_0";
                  }
                }

                else
                {
                  v13 = @"duration_0_1_to_0_5";
                }
              }

              else
              {
                v13 = @"duration_0_05_to_0_1";
              }
            }

            else
            {
              v13 = @"duration_0_04_to_0_05";
            }
          }

          else
          {
            v13 = @"duration_0_03_to_0_04";
          }
        }

        else
        {
          v13 = @"duration_0_02_to_0_03";
        }
      }

      else
      {
        v13 = @"duration_0_01_to_0_02";
      }
    }

    else
    {
      v13 = @"duration_0_005_to_0_01";
    }

    v14 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v13];
    v15 = v14;
    v16 = &unk_2827059E0;
    if (v14)
    {
      v16 = v14;
    }

    v17 = v16;

    v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v17, "integerValue") + 1}];
    if (duration >= 0.01)
    {
      if (duration >= 0.02)
      {
        if (duration >= 0.03)
        {
          if (duration >= 0.04)
          {
            if (duration >= 0.05)
            {
              if (duration >= 0.1)
              {
                if (duration >= 0.5)
                {
                  if (duration >= 1.0)
                  {
                    if (duration >= 1.5)
                    {
                      v19 = @"duration_1_5_to_2_0";
                    }

                    else
                    {
                      v19 = @"duration_1_0_to_1_5";
                    }
                  }

                  else
                  {
                    v19 = @"duration_0_5_to_1_0";
                  }
                }

                else
                {
                  v19 = @"duration_0_1_to_0_5";
                }
              }

              else
              {
                v19 = @"duration_0_05_to_0_1";
              }
            }

            else
            {
              v19 = @"duration_0_04_to_0_05";
            }
          }

          else
          {
            v19 = @"duration_0_03_to_0_04";
          }
        }

        else
        {
          v19 = @"duration_0_02_to_0_03";
        }
      }

      else
      {
        v19 = @"duration_0_01_to_0_02";
      }
    }

    else
    {
      v19 = @"duration_0_005_to_0_01";
    }

    [(NSMutableDictionary *)v12 setObject:v18 forKeyedSubscript:v19];
  }

  os_unfair_lock_unlock(&self->_analyticsLock);
}

@end