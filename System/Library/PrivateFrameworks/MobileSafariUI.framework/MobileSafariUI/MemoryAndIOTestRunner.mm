@interface MemoryAndIOTestRunner
- (MemoryAndIOTestRunner)initWithTestName:(id)a3 browserController:(id)a4 type:(unint64_t)a5;
- (NSURL)testPageURL;
- (unint64_t)_collectCurrentLiveTabs;
- (void)_collectIOUsageInfo:(id)a3;
- (void)_collectMemoryUsageInfo:(id)a3;
- (void)_collectTestResults;
- (void)_openNewTabAndLoadTestURL;
- (void)runTestWithCompletion:(id)a3;
@end

@implementation MemoryAndIOTestRunner

- (MemoryAndIOTestRunner)initWithTestName:(id)a3 browserController:(id)a4 type:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v30.receiver = self;
  v30.super_class = MemoryAndIOTestRunner;
  v11 = [(MemoryAndIOTestRunner *)&v30 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_browserController, v10);
    objc_storeStrong(&v12->_testName, a3);
    v12->_type = a5;
    if (a5)
    {
      if (a5 != 1)
      {
LABEL_7:
        v24 = 0;
        v25 = &v24;
        v26 = 0x3032000000;
        v27 = __Block_byref_object_copy__6;
        v28 = __Block_byref_object_dispose__6;
        v29 = 0;
        v14 = [MEMORY[0x277CCAB98] defaultCenter];
        v15 = [MEMORY[0x277CCABD8] mainQueue];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __65__MemoryAndIOTestRunner_initWithTestName_browserController_type___block_invoke;
        v21[3] = &unk_2781D81B0;
        v23 = &v24;
        v16 = v12;
        v22 = v16;
        v17 = [v14 addObserverForName:@"WebProcessDidCrashNotification" object:0 queue:v15 usingBlock:v21];
        v18 = v25[5];
        v25[5] = v17;

        v19 = v16;
        _Block_object_dispose(&v24, 8);

        goto LABEL_8;
      }

      v12->writesAtStart = totalWrites();
      v13 = 10;
    }

    else
    {
      v13 = 59;
    }

    v12->_totalTabsToLoad = v13;
    goto LABEL_7;
  }

LABEL_8:

  return v12;
}

uint64_t __65__MemoryAndIOTestRunner_initWithTestName_browserController_type___block_invoke(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    v1 = result;
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 removeObserver:*(*(*(v1 + 40) + 8) + 40)];

    v3 = *(*(v1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;

    v5 = *(v1 + 32);

    return [v5 _collectTestResults];
  }

  return result;
}

- (void)runTestWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v4;

  [(MemoryAndIOTestRunner *)self _openNewTabAndLoadTestURL];
}

- (void)_openNewTabAndLoadTestURL
{
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained tabController];

  [v4 openNewTabWithOptions:0 completionHandler:0];
  v5 = [v4 tabDocuments];
  v6 = [v5 lastObject];

  v7 = [(MemoryAndIOTestRunner *)self testPageURL];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__MemoryAndIOTestRunner__openNewTabAndLoadTestURL__block_invoke;
  v9[3] = &unk_2781D81D8;
  v9[4] = self;
  [v6 loadTestURL:v7 withInjectedBundle:1 withCallback:v9];

  v8 = [v6 pageLoadStatistics];
  [v8 setPageLoadingTimeoutInterval:5.0];
}

void __50__MemoryAndIOTestRunner__openNewTabAndLoadTestURL__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _collectCurrentLiveTabs];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v4 + 1;
  v5 = *(a1 + 32);
  if (v4 <= v5[8] && (v5[6] || v5[5] <= v2))
  {
    v7 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__MemoryAndIOTestRunner__openNewTabAndLoadTestURL__block_invoke_2;
    block[3] = &unk_2781D4D40;
    block[4] = *(a1 + 32);
    dispatch_after(v7, MEMORY[0x277D85CD0], block);
  }

  else
  {
    v6 = *(a1 + 32);

    [v6 _collectTestResults];
  }
}

- (NSURL)testPageURL
{
  v2 = testPageURL_testURL;
  if (!testPageURL_testURL)
  {
    v3 = _SFSafariTestContentDirectoryPath();
    v4 = [v3 stringByAppendingPathComponent:@"Apple.webarchive"];

    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:0];
    v6 = testPageURL_testURL;
    testPageURL_testURL = v5;

    v2 = testPageURL_testURL;
  }

  return v2;
}

- (void)_collectMemoryUsageInfo:(id)a3
{
  v3 = a3;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *task_info_out = 0u;
  v10 = 0u;
  task_info_outCnt = 93;
  if (!task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v10 + 1) >> 20];
    [v3 setObject:v4 forKeyedSubscript:@"residentPeak"];

    [v3 setObject:@"MB" forKeyedSubscript:@"residentPeakUnits"];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10 >> 20];
    [v3 setObject:v5 forKeyedSubscript:@"residentMemory"];

    [v3 setObject:@"MB" forKeyedSubscript:@"residentMemoryUnits"];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18 >> 20];
    [v3 setObject:v6 forKeyedSubscript:@"physicMemory"];

    [v3 setObject:@"MB" forKeyedSubscript:@"physicMemoryUnits"];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v12 + 1) >> 20];
    [v3 setObject:v7 forKeyedSubscript:@"internalPeak"];

    [v3 setObject:@"MB" forKeyedSubscript:@"internalPeakUnits"];
  }
}

- (void)_collectIOUsageInfo:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v10 = a3;
  v5 = totalWrites();
  writesAtStart = self->writesAtStart;
  v7 = __OFSUB__(v5, writesAtStart);
  v8 = v5 - writesAtStart;
  if (v8 < 0 != v7)
  {
    v8 += 1023;
  }

  v9 = [v4 numberWithInt:(v8 >> 10)];
  [v10 setObject:v9 forKeyedSubscript:@"logicalWrites"];

  [v10 setObject:@"KB" forKeyedSubscript:@"logicalWritesUnits"];
}

- (unint64_t)_collectCurrentLiveTabs
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v4 = [WeakRetained tabController];
  v5 = [v4 tabDocuments];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (([v11 isHibernated] & 1) == 0)
        {
          v8 += [v11 isBlank] ^ 1;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  liveTabs = self->_liveTabs;
  if (liveTabs <= v8)
  {
    liveTabs = v8;
  }

  self->_liveTabs = liveTabs;
  return v8;
}

- (void)_collectTestResults
{
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_liveTabs];
  [v10 setObject:v3 forKeyedSubscript:@"liveTabs"];

  [v10 setObject:@"Tabs" forKeyedSubscript:@"liveTabsUnits"];
  v4 = MEMORY[0x277CCABB0];
  WeakRetained = objc_loadWeakRetained(&self->_browserController);
  v6 = [WeakRetained tabController];
  v7 = [v6 tabDocuments];
  v8 = [v4 numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
  [v10 setObject:v8 forKeyedSubscript:@"allTabs"];

  [v10 setObject:@"Tabs" forKeyedSubscript:@"allTabsUnits"];
  type = self->_type;
  if (type == 1)
  {
    [(MemoryAndIOTestRunner *)self _collectIOUsageInfo:v10];
  }

  else if (!type)
  {
    [(MemoryAndIOTestRunner *)self _collectMemoryUsageInfo:v10];
  }

  (*(self->_completionHandler + 2))();
}

@end