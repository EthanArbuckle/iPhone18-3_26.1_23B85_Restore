@interface PageLoadTestRunner
+ ($2825F4736939C4A6D3AD43837233062D)heapStatistics;
+ (id)worldLeaksString;
+ (void)addLeakToArray:(id)a3 count:(int)a4 name:(id)a5;
- (BOOL)checkForWorldLeaksNow;
- (BOOL)finishCheckingForWorldLeaks;
- (BOOL)loadTestSuiteFile:(id)a3;
- (BOOL)startPageAction:(id)a3;
- (PageLoadTestRunner)initWithTestName:(id)a3 browserController:(id)a4;
- (PageLoadTestRunnerDelegate)delegate;
- (id)_pageLoadForTabDocument:(id)a3;
- (void)_checkRedirect:(id)a3;
- (void)_closeLogStream;
- (void)_handleActionTimer:(id)a3;
- (void)_pageRestExpired:(id)a3;
- (void)_pageTimeoutExpired:(id)a3;
- (void)_startNextPageNow;
- (void)_updatePageLoad:(id)a3 stats:(id)a4;
- (void)addPageURL:(id)a3 withProcessSwap:(BOOL)a4;
- (void)checkForWorldLeaksSoon;
- (void)clearCacheWithURL:(id)a3;
- (void)closeBrowserWindowsAndFinishCheckingForWorldLeaks;
- (void)dealloc;
- (void)finish;
- (void)finishPage:(id)a3 stats:(id)a4 error:(id)a5;
- (void)finishedTestPage:(id)a3;
- (void)finishedTestRunner;
- (void)log:(id)a3;
- (void)removeURLsInRange:(_NSRange)a3;
- (void)setExistingProperty:(id)a3 to:(id)a4;
- (void)setTestOptions:(id)a3;
- (void)start;
- (void)startNextPage;
- (void)startingTestPage:(id)a3;
@end

@implementation PageLoadTestRunner

- (PageLoadTestRunner)initWithTestName:(id)a3 browserController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = PageLoadTestRunner;
  v8 = [(PageLoadTestRunner *)&v15 init];
  v9 = v8;
  if (v8)
  {
    [(PageLoadTestRunner *)v8 setTestName:v6];
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pageLoadArray = v9->_pageLoadArray;
    v9->_pageLoadArray = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NSMutableArray *)v9->_pageLoadArray addObject:v12];
    pagesNeedingMemoryWarningSent = v9->_pagesNeedingMemoryWarningSent;
    v9->_pagesNeedingMemoryWarningSent = 0;

    *&v9->_disableProgressBar = 65792;
    v9->_cacheClearDirective = 0;
    v9->_pageRestInterval = 3.0;
    v9->_measureTime = 1;
    objc_storeStrong(&v9->_browserController, a4);
    v9->_version = 4;
    v9->_useInjectedBundle = 1;
    v9->_allSubresourcesFinishedLoadingDelay = 1.0;
    *&v9->_currentTestIteration = 0x100000000;
    v9->_initialDelay = 0.0;
  }

  return v9;
}

- (void)dealloc
{
  [(PageLoadTestRunner *)self _closeLogStream];
  v3.receiver = self;
  v3.super_class = PageLoadTestRunner;
  [(PageLoadTestRunner *)&v3 dealloc];
}

- (void)_closeLogStream
{
  logStream = self->_logStream;
  if (logStream)
  {
    [(NSOutputStream *)logStream close];
    v4 = self->_logStream;
    self->_logStream = 0;
  }
}

- (void)setExistingProperty:(id)a3 to:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = v12;
  Property = class_getProperty(v7, [v12 UTF8String]);
  if (Property)
  {
    v10 = *(property_getAttributes(Property) + 1);
    if (v10 == 99 || v10 == 81)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v6, "intValue")}];

        v6 = v11;
      }
    }

    [(PageLoadTestRunner *)self setValue:v6 forKey:v12];
  }
}

- (void)setTestOptions:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__PageLoadTestRunner_setTestOptions___block_invoke;
  v3[3] = &unk_2781D8208;
  v3[4] = self;
  [a3 enumerateKeysAndObjectsUsingBlock:v3];
}

void __37__PageLoadTestRunner_setTestOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 isEqual:@"suiteName"])
  {
    [*(a1 + 32) loadTestSuiteFile:v6];
  }

  else if ([v5 isEqual:@"url"])
  {
    v7 = *(a1 + 32);
    v8 = MEMORY[0x277CBEBC0];
    v9 = [v6 description];
    v10 = [v8 URLWithString:v9];
    [v7 addPageURL:v10 withProcessSwap:0];
  }

  else if ([v5 isEqual:@"URLs"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = v6;
      v11 = v6;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          v15 = 0;
          do
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(a1 + 32);
            v17 = MEMORY[0x277CBEBC0];
            v18 = [*(*(&v23 + 1) + 8 * v15) description];
            v19 = [v17 URLWithString:v18];
            [v16 addPageURL:v19 withProcessSwap:0];

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v13);
      }

      v6 = v22;
    }
  }

  else
  {
    v20 = [v5 isEqual:@"outputFilename"];
    v21 = *(a1 + 32);
    if (v20)
    {
      [v21 setOutputFilename:v6];
    }

    else
    {
      [v21 setExistingProperty:v5 to:v6];
    }
  }
}

- (void)addPageURL:(id)a3 withProcessSwap:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  if (v9 && self->_testIterations)
  {
    v6 = 0;
    do
    {
      v7 = [[PageLoad alloc] initWithURL:v9 withProcessSwap:v4];
      v8 = [(NSMutableArray *)self->_pageLoadArray objectAtIndexedSubscript:v6];
      [v8 addObject:v7];

      ++v6;
    }

    while (v6 < self->_testIterations);
  }
}

- (void)removeURLsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(NSMutableArray *)self->_pageLoadArray objectAtIndexedSubscript:self->_currentTestIteration];
  v7 = [v6 count];

  if (v7 > location && self->_testIterations)
  {
    v8 = 0;
    if (location + length > v7)
    {
      length = v7 - location;
    }

    do
    {
      v9 = [(NSMutableArray *)self->_pageLoadArray objectAtIndexedSubscript:v8];
      [v9 removeObjectsInRange:{location, length}];

      ++v8;
    }

    while (v8 < self->_testIterations);
  }
}

- (BOOL)loadTestSuiteFile:(id)a3
{
  v4 = a3;
  syslog(4, "safari-plt-test: pathToTestSuite=%s", [v4 UTF8String]);
  if (!v4)
  {
    goto LABEL_47;
  }

  v5 = [v4 lastPathComponent];
  [(PageLoadTestRunner *)self setSuiteName:v5];

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 contentsAtPath:v4];

  if (!v7)
  {
    v60 = __error();
    v61 = strerror(*v60);
    NSLog(@"safari-plt-test: Could not load test suite '%@': %s", v4, v61);
LABEL_47:
    v59 = 0;
    goto LABEL_50;
  }

  v8 = malloc_type_malloc([v7 length] + 1, 0xB0F4AF7BuLL);
  memcpy(v8, [v7 bytes], objc_msgSend(v7, "length"));
  *(v8 + [v7 length]) = 0;
  syslog(4, "safari-plt-test: testSuite=%s", v8);
  v9 = 0x277CCA000uLL;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", v8];
  free(v8);
  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [v4 stringByAppendingString:@"files"];
  v13 = [v11 contentsAtPath:v12];

  if (v13)
  {
    v14 = malloc_type_malloc([v13 length] + 1, 0x6020B0B4uLL);
    memcpy(v14, [v13 bytes], objc_msgSend(v13, "length"));
    *(v14 + [v13 length]) = 0;
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", v14];
    free(v14);
    v16 = [v15 componentsSeparatedByString:@"\n"];
    v17 = [MEMORY[0x277CBEB18] array];
    if ([v16 count])
    {
      v18 = 0;
      do
      {
        v19 = [v16 objectAtIndexedSubscript:v18];
        if ([v19 length])
        {
          v20 = [MEMORY[0x277CBEBC0] safari_urlWithDataAsString:v19];
          [v17 addObject:v20];
        }

        ++v18;
      }

      while (v18 < [v16 count]);
    }

    v9 = 0x277CCA000uLL;
  }

  v21 = [v10 componentsSeparatedByString:@"\n"];
  if (![v21 count])
  {
    v59 = 1;
    goto LABEL_49;
  }

  v70 = v10;
  v69 = 0;
  v22 = 0;
  while (1)
  {
    v23 = [v21 objectAtIndexedSubscript:v22];
    if (![v23 length])
    {
      goto LABEL_35;
    }

    v24 = [*(v9 + 3240) stringWithUTF8String:"version="];
    v25 = [v23 hasPrefix:v24];

    if ((v25 & 1) == 0)
    {
      break;
    }

    v26 = [v21 objectAtIndexedSubscript:v22];
    v23 = [v26 substringFromIndex:8];

    self->_version = [v23 intValue];
LABEL_36:

    if (++v22 >= [v21 count])
    {
      v59 = 1;
      goto LABEL_45;
    }
  }

  v27 = [*(v9 + 3240) stringWithUTF8String:"useInjectedBundle="];
  v28 = [v23 hasPrefix:v27];

  if (v28)
  {

    v29 = [v21 objectAtIndexedSubscript:v22];
    v23 = [v29 substringFromIndex:18];

    self->_useInjectedBundle = [v23 BOOLValue];
    goto LABEL_36;
  }

  v30 = [*(v9 + 3240) stringWithUTF8String:"pageRestIntervalInSeconds="];
  v31 = [v23 hasPrefix:v30];

  if (v31)
  {

    v32 = [v21 objectAtIndexedSubscript:v22];
    v23 = [v32 substringFromIndex:26];

    [v23 doubleValue];
    self->_pageRestInterval = v33;
    goto LABEL_36;
  }

  v34 = [*(v9 + 3240) stringWithUTF8String:"allSubresourcesFinishedLoadingDelayInSeconds="];
  v35 = [v23 hasPrefix:v34];

  if (v35)
  {

    v36 = [v21 objectAtIndexedSubscript:v22];
    v23 = [v36 substringFromIndex:45];

    [v23 doubleValue];
    self->_allSubresourcesFinishedLoadingDelay = v37;
    goto LABEL_36;
  }

  v38 = [*(v9 + 3240) stringWithUTF8String:"iterations="];
  v39 = [v23 hasPrefix:v38];

  if (v39)
  {

    v40 = [v21 objectAtIndexedSubscript:v22];
    v23 = [v40 substringFromIndex:11];

    v41 = [v23 intValue];
    self->_testIterations = v41;
    if (v41 >= 2)
    {
      v42 = 1;
      do
      {
        pageLoadArray = self->_pageLoadArray;
        v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
        [(NSMutableArray *)pageLoadArray addObject:v44];

        ++v42;
      }

      while (v42 < self->_testIterations);
      v9 = 0x277CCA000;
    }

    goto LABEL_36;
  }

  v45 = [*(v9 + 3240) stringWithUTF8String:"initialDelayInSeconds="];
  v46 = [v23 hasPrefix:v45];

  if (v46)
  {

    v47 = [v21 objectAtIndexedSubscript:v22];
    v23 = [v47 substringFromIndex:22];

    [v23 doubleValue];
    self->_initialDelay = v48;
    goto LABEL_36;
  }

  v49 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v50 = [v23 stringByTrimmingCharactersInSet:v49];
  if (![v50 length])
  {

LABEL_35:
    goto LABEL_36;
  }

  if ([v50 characterAtIndex:0] == 35)
  {
    [v50 substringFromIndex:1];
    v66 = v65 = v49;
    v51 = [v66 stringByTrimmingCharactersInSet:v49];

    v67 = v51;
    if ([v51 hasPrefix:@"["])
    {
      if ([v51 hasSuffix:@"]"])
      {
        v63 = [v51 substringWithRange:{1, objc_msgSend(v51, "length") - 2}];
        v64 = [v63 stringByTrimmingCharactersInSet:v65];

        v52 = [v64 caseInsensitiveCompare:@"SwapProcess"];
        if (!v52)
        {

          v69 = 1;
          goto LABEL_36;
        }
      }
    }

    goto LABEL_35;
  }

  v23 = [v21 objectAtIndexedSubscript:v22];
  v53 = [v23 hasPrefix:@"[MemoryWarning]"];
  pagesNeedingMemoryWarningSent = self->_pagesNeedingMemoryWarningSent;
  if (pagesNeedingMemoryWarningSent)
  {
    v68 = v53;
    v55 = [MEMORY[0x277CCABB0] numberWithBool:v53];
    [(NSMutableArray *)pagesNeedingMemoryWarningSent addObject:v55];

    v53 = v68;
  }

  if (v53)
  {
    v56 = [v23 substringFromIndex:15];

    v23 = v56;
  }

  v57 = [MEMORY[0x277CBEBC0] safari_urlWithDataAsString:v23];
  if (v57)
  {
    v58 = v57;
    [(PageLoadTestRunner *)self addPageURL:v57 withProcessSwap:v69 & 1];

    v69 = 0;
    goto LABEL_36;
  }

  v59 = 0;
LABEL_45:
  v10 = v70;
LABEL_49:

LABEL_50:
  return v59;
}

- (void)start
{
  v53 = *MEMORY[0x277D85DE8];
  logFile = self->_logFile;
  if (logFile && !self->_logStream)
  {
    v4 = [(NSString *)logFile stringByExpandingTildeInPath];
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v5 fileExistsAtPath:v4];

    if (v6)
    {
      v7 = [MEMORY[0x277CCAA00] defaultManager];
      v51 = 0;
      v8 = [v7 attributesOfItemAtPath:v4 error:&v51];
      v9 = v51;

      if (v9)
      {
        NSLog(@"safari-plt-test: PageLoadTestRunner could not get attributes of log file: %@", v9);
      }

      else
      {
        v10 = objc_alloc(MEMORY[0x277CCAB68]);
        v11 = [v4 stringByDeletingPathExtension];
        v12 = [v10 initWithString:v11];

        v13 = objc_alloc_init(MEMORY[0x277CCA968]);
        [v13 setDateFormat:@"-yyyy-MM-dd-HH-mm-ss"];
        v14 = [v8 objectForKey:*MEMORY[0x277CCA108]];
        v15 = [v13 stringFromDate:v14];
        [v12 appendString:v15];

        v16 = [v4 pathExtension];
        v17 = [v16 length];

        if (v17)
        {
          [v12 appendString:@"."];
          v18 = [v4 pathExtension];
          [v12 appendString:v18];
        }

        v19 = [MEMORY[0x277CCAA00] defaultManager];
        v50 = 0;
        [v19 moveItemAtPath:v4 toPath:v12 error:&v50];
        v9 = v50;

        if (v9)
        {
          NSLog(@"safari-plt-test: PageLoadTestRunner could not rename log file: %@", v9);
        }
      }
    }

    v20 = [objc_alloc(MEMORY[0x277CBEB78]) initToFileAtPath:v4 append:0];
    logStream = self->_logStream;
    self->_logStream = v20;

    [(NSOutputStream *)self->_logStream open];
  }

  [(PageLoadTestRunner *)self log:@"PageLoadTest Initialized."];
  [(BrowserController *)self->_browserController setFavoritesState:0];
  v22 = [(BrowserController *)self->_browserController tabController];
  v23 = [v22 tabCollectionViewProvider];
  v24 = [v23 tabThumbnailCollectionView];

  v25 = v24;
  if ([v25 presentationState] == 1)
  {
  }

  else
  {
    v26 = [v25 presentationState];

    if (v26 != 2)
    {
      goto LABEL_17;
    }
  }

  [v25 dismissAnimated:0];
LABEL_17:
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v27 = [v22 currentTabDocuments];
  v28 = [v27 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = 0;
    v31 = *v47;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v47 != v31)
        {
          objc_enumerationMutation(v27);
        }

        v33 = *(*(&v46 + 1) + 8 * i);
        if ([v33 isLoading])
        {
          v34 = [v33 URL];
          [(PageLoadTestRunner *)self log:@"%@ is loading %@, delaying start for 1 second", v33, v34];

          [v33 stopLoading];
          v30 = 1;
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v29);
  }

  else
  {
    v30 = 0;
  }

  initialDelay = self->_initialDelay;
  if (initialDelay != 0.0 || (v30 & 1) != 0)
  {
    if (initialDelay == 0.0)
    {
      v43 = 1;
    }

    else
    {
      v43 = llround(initialDelay);
      self->_initialDelay = 0.0;
    }

    [(PageLoadTestRunner *)self log:@"Test requested delay at start, delaying start for %lld second", v43];
    v44 = dispatch_time(0, 1000000000 * v43);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__PageLoadTestRunner_start__block_invoke;
    block[3] = &unk_2781D4D40;
    block[4] = self;
    dispatch_after(v44, MEMORY[0x277D85CD0], block);
  }

  else
  {
    v36 = [(BrowserController *)self->_browserController processPool];
    [v36 _setObject:MEMORY[0x277CBEC38] forBundleParameter:@"enablePageLoadMeasurementCollection"];

    v37 = [(BrowserController *)self->_browserController processPool];
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_version];
    [v37 _setObject:v38 forBundleParameter:@"pageLoadMeasurementVersionNumber"];

    v39 = [(BrowserController *)self->_browserController processPool];
    v40 = [MEMORY[0x277CCABB0] numberWithDouble:self->_allSubresourcesFinishedLoadingDelay];
    [v39 _setObject:v40 forBundleParameter:@"pageLoadMeasurementAllSubresourcesFinishedLoadingDelay"];

    if (self->_pageRestInterval == 0.0)
    {
      [PageLoadTestStatistics setRestInterval:?];
    }

    [(PageLoadTestRunner *)self removeURLsInRange:0, self->_skipCount];
    if (![(PageLoadTestRunner *)self checkForWorldLeaksNow])
    {
      if (self->_cacheClearDirective == 1)
      {
        [(PageLoadTestRunner *)self clearCacheWithURL:0];
      }

      [MEMORY[0x277CBABA0] defaultTimeoutInterval];
      self->_savedDefaultTimeoutInterval = v41;
      if (self->_disableProgressBar)
      {
        [MEMORY[0x277CBABA0] setDefaultTimeoutInterval:5.0];
        [(BrowserController *)self->_browserController setProgressEnabled:0];
      }

      v42 = [(BrowserController *)self->_browserController rootViewController];
      [v42 updateWebViewSizeAttributes];

      srand(1u);
      [(PageLoadTestRunner *)self startNextPage];
    }
  }
}

- (void)startNextPage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__PageLoadTestRunner_startNextPage__block_invoke;
  block[3] = &unk_2781D4D40;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_startNextPageNow
{
  v41 = *MEMORY[0x277D85DE8];
  if (!self->_started)
  {
    if (!self->_currentTestIteration)
    {
      [(PageLoadTestRunner *)self startingTestRunner];
    }

    self->_started = 1;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v3 = [(NSMutableArray *)self->_pageLoadArray objectAtIndexedSubscript:self->_currentTestIteration];
  v4 = [v3 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (!v4)
  {
LABEL_16:

LABEL_35:
    v28 = [(BrowserController *)self->_browserController tabController];
    v24 = [v28 activeTabDocument];
    [v28 closeTabDocument:v24 animated:1];
    [(PageLoadTestRunner *)self finish];
    goto LABEL_42;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v35;
LABEL_7:
  v8 = 0;
  v9 = v6;
  while (1)
  {
    if (*v35 != v7)
    {
      objc_enumerationMutation(v3);
    }

    v6 = *(*(&v34 + 1) + 8 * v8);

    if (self->_failFast && [v6 status] == 6)
    {
      goto LABEL_15;
    }

    if (![v6 status])
    {
      break;
    }

    ++v8;
    v9 = v6;
    if (v5 == v8)
    {
      v5 = [v3 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v5)
      {
        goto LABEL_7;
      }

LABEL_15:

      goto LABEL_16;
    }
  }

  if (!v6)
  {
    goto LABEL_35;
  }

  v10 = [v6 URL];
  v11 = [v10 absoluteString];
  syslog(4, "safari-plt-test: Loading next url=%s", [v11 UTF8String]);

  if (self->_cacheClearDirective == 2)
  {
    v12 = [v6 URL];
    [(PageLoadTestRunner *)self clearCacheWithURL:v12];
  }

  if (self->_pageTimeout > 0.0)
  {
    v13 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__pageTimeoutExpired_ selector:v6 userInfo:0 repeats:?];
    [v6 setTimer:v13];
  }

  if (self->_collectHeapStatistics)
  {
    [v6 setHeapBefore:{+[PageLoadTestRunner heapStatistics](PageLoadTestRunner, "heapStatistics")}];
  }

  if (self->_measureTime)
  {
    [v6 setUiProcessStartTime:mach_continuous_time()];
    v14 = [MEMORY[0x277CBEAA8] date];
    [v6 setUiProcessStartDate:v14];

    v15 = WBS_LOG_CHANNEL_PREFIXPLT();
    if (os_signpost_enabled(v15))
    {
      v16 = v15;
      v17 = [v6 URL];
      *buf = 138543362;
      v39 = v17;
      _os_signpost_emit_with_name_impl(&dword_215819000, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PLT_FirstMeaningfulPaint", "%{public}@", buf, 0xCu);
    }

    v18 = WBS_LOG_CHANNEL_PREFIXPLT();
    if (os_signpost_enabled(v18))
    {
      v19 = v18;
      v20 = [v6 URL];
      *buf = 138543362;
      v39 = v20;
      _os_signpost_emit_with_name_impl(&dword_215819000, v19, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PLT_DOMContentLoaded", "%{public}@", buf, 0xCu);
    }

    v21 = WBS_LOG_CHANNEL_PREFIXPLT();
    if (os_signpost_enabled(v21))
    {
      v22 = v21;
      v23 = [v6 URL];
      *buf = 138543362;
      v39 = v23;
      _os_signpost_emit_with_name_impl(&dword_215819000, v22, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PLT_AllSubresourcesLoaded", "%{public}@", buf, 0xCu);
    }
  }

  [v6 setStatus:1];
  [(PageLoadTestRunner *)self startingTestPage:v6];
  v24 = [(BrowserController *)self->_browserController tabController];
  v25 = [v24 activeTabDocument];
  v26 = v25;
  if (self->_loadURLInNewTab && ![(TabDocument *)v25 isBlank])
  {
    v27 = [[TabDocument alloc] initWithBrowserController:self->_browserController];
    [v24 insertNewTabDocument:v27 forcingOrderAfterTabDocument:v26 inBackground:0 animated:0];
  }

  else
  {
    if (![v6 swapProcess])
    {
      goto LABEL_38;
    }

    v27 = [[TabDocument alloc] initWithBrowserController:self->_browserController];
    [v24 insertNewTabDocument:v27 forcingOrderAfterTabDocument:v26 inBackground:0 animated:0];
    [v24 setActiveTabDocument:v27 animated:0];
    [v24 closeTabDocument:v26 animated:1];
  }

  v26 = v27;
LABEL_38:
  v29 = [v6 URL];
  useInjectedBundle = self->_useInjectedBundle;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __39__PageLoadTestRunner__startNextPageNow__block_invoke;
  v32[3] = &unk_2781D8230;
  v32[4] = self;
  v28 = v6;
  v33 = v28;
  [(TabDocument *)v26 loadTestURL:v29 withInjectedBundle:useInjectedBundle withCallback:v32 pagesNeedingMemoryWarningSent:self->_pagesNeedingMemoryWarningSent];

  if ([v28 status] == 1)
  {
    [v28 setStatus:2];
    if (self->_measureTime)
    {
      v31 = [MEMORY[0x277CBEAA8] date];
      [v28 setWebContentProcessStartLoadDate:v31];
    }
  }

LABEL_42:
}

void __39__PageLoadTestRunner__startNextPageNow__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v4 loadError];
  [v2 finishPage:v3 stats:v4 error:v5];
}

- (void)finish
{
  v18 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(NSMutableArray *)self->_pageLoadArray objectAtIndexedSubscript:self->_currentTestIteration];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 status] <= 4)
        {
          [v8 setStatus:6];
        }

        [v8 setTimer:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  [MEMORY[0x277CBABA0] setDefaultTimeoutInterval:self->_savedDefaultTimeoutInterval];
  [(PageLoadTestRunner *)self checkForWorldLeaksSoon];
  [(PageLoadTestRunner *)self finishedTestRunnerIteration];
  testIterations = self->_testIterations;
  v10 = self->_currentTestIteration + 1;
  self->_currentTestIteration = v10;
  if (testIterations && v10 < testIterations)
  {
    self->_started = 0;
    v11 = dispatch_time(0, 5000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__PageLoadTestRunner_finish__block_invoke;
    block[3] = &unk_2781D4D40;
    block[4] = self;
    dispatch_after(v11, MEMORY[0x277D85CD0], block);
  }

  else
  {
    [(PageLoadTestRunner *)self finishedTestRunner];
    [(PageLoadTestRunner *)self _closeLogStream];
  }
}

- (id)_pageLoadForTabDocument:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSMutableArray *)self->_pageLoadArray objectAtIndexedSubscript:self->_currentTestIteration, 0];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 status] && objc_msgSend(v7, "status") < 5)
        {
          v4 = v7;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

- (void)_pageTimeoutExpired:(id)a3
{
  v10 = a3;
  v4 = [v10 userInfo];
  v5 = [v4 endLoadDate];

  if (!v5)
  {
    v6 = [v10 fireDate];
    [v4 setEndLoadDate:v6];
  }

  v7 = MEMORY[0x277CCA9B8];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Page load timed out", *MEMORY[0x277CCA450], 0}];
  v9 = [v7 errorWithDomain:@"PageLoadErrorDomain" code:-2 userInfo:v8];

  [v4 setTimer:0];
  [(PageLoadTestRunner *)self finishPage:v4 stats:0 error:v9];
}

- (void)_pageRestExpired:(id)a3
{
  v4 = [a3 userInfo];
  if ([v4 status] == 4)
  {
    [v4 setTimer:0];
    [(PageLoadTestRunner *)self finishPage:v4 stats:0 error:0];
  }
}

- (void)_checkRedirect:(id)a3
{
  v8 = a3;
  v4 = [(BrowserController *)self->_browserController tabController];
  v5 = [v4 activeTabDocument];
  v6 = [v5 URL];

  v7 = [v8 URL];
  LOBYTE(v5) = [v7 isEqual:v6];

  if ((v5 & 1) == 0)
  {
    [v8 setRedirectURL:v6];
  }
}

- (void)_updatePageLoad:(id)a3 stats:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 loadStartDate];
    if (v9)
    {
      [v6 setWebContentProcessStartLoadDate:v9];
    }

    v10 = [v8 lastPageLoadEventDate];

    if (v10)
    {
      [v6 setEndLoadDate:v10];
    }

    v11 = [v8 firstVisualLayoutDate];

    if (v11)
    {
      [v6 setFirstVisualLayoutDate:v11];
    }

    v12 = [v8 domContentLoadedDate];

    if (v12)
    {
      [v6 setDomContentLoadedDate:v12];
      v13 = [v6 uiProcessStartDate];
      [v12 timeIntervalSinceDate:v13];
      v15 = v14;

      v16 = WBS_LOG_CHANNEL_PREFIXPLT();
      if (os_signpost_enabled(v16))
      {
        v17 = v16;
        v34 = 134217984;
        v35 = continuousTimeAddInterval([v6 uiProcessStartTime], v15);
        _os_signpost_emit_with_name_impl(&dword_215819000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PLT_DOMContentLoaded", "%{signpost.description:end_time}llu", &v34, 0xCu);
      }
    }

    v18 = [v8 firstMeaningfulPaintDate];

    if (v18)
    {
      [v6 setFirstMeaningfulPaintDate:v18];
      v19 = [v6 uiProcessStartDate];
      [v18 timeIntervalSinceDate:v19];
      v21 = v20;

      v22 = WBS_LOG_CHANNEL_PREFIXPLT();
      if (os_signpost_enabled(v22))
      {
        v23 = v22;
        v24 = continuousTimeAddInterval([v6 uiProcessStartTime], v21);
        v34 = 134217984;
        v35 = v24;
        _os_signpost_emit_with_name_impl(&dword_215819000, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PLT_FirstMeaningfulPaint", "%{signpost.description:end_time}llu", &v34, 0xCu);
      }
    }

    v25 = [v8 allSubresourcesLoadedDate];

    if (v25)
    {
      [v6 setAllSubresourcesLoadedDate:v25];
      v26 = [v6 uiProcessStartDate];
      [v25 timeIntervalSinceDate:v26];
      v28 = v27;

      v29 = WBS_LOG_CHANNEL_PREFIXPLT();
      if (os_signpost_enabled(v29))
      {
        v30 = v29;
        v31 = continuousTimeAddInterval([v6 uiProcessStartTime], v28);
        v34 = 134217984;
        v35 = v31;
        _os_signpost_emit_with_name_impl(&dword_215819000, v30, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PLT_AllSubresourcesLoaded", "%{signpost.description:end_time}llu", &v34, 0xCu);
      }
    }
  }

  v32 = [v6 endLoadDate];

  if (!v32)
  {
    v33 = [MEMORY[0x277CBEAA8] date];
    [v6 setEndLoadDate:v33];
  }

  if (self->_collectHeapStatistics)
  {
    [v6 setHeapAfter:{+[PageLoadTestRunner heapStatistics](PageLoadTestRunner, "heapStatistics")}];
  }
}

- (void)finishPage:(id)a3 stats:(id)a4 error:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  if ([v16 status] <= 4)
  {
    if (v9)
    {
      v10 = [v16 error];

      if (!v10)
      {
        [v16 setError:v9];
      }
    }

    if ([v16 status] == 2 && (-[PageLoadTestRunner _updatePageLoad:stats:](self, "_updatePageLoad:stats:", v16, v8), -[PageLoadTestRunner _checkRedirect:](self, "_checkRedirect:", v16), objc_msgSend(v16, "error"), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11) && -[PageLoadTestRunner startPageAction:](self, "startPageAction:", v16))
    {
      [v16 setStatus:3];
    }

    else if ([v16 status] > 3 || self->_pageRestInterval == 0.0)
    {
      if ([v16 status] != 4 || (objc_msgSend(v16, "timer"), v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
      {
        [v16 setTimer:0];
        v14 = [v16 error];

        if (v14)
        {
          v15 = 6;
        }

        else
        {
          v15 = 5;
        }

        [v16 setStatus:v15];
        [(PageLoadTestRunner *)self finishedTestPage:v16];
        [(PageLoadTestRunner *)self startNextPage];
      }
    }

    else
    {
      [v16 setStatus:4];
      v12 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__pageRestExpired_ selector:v16 userInfo:0 repeats:self->_pageRestInterval];
      [v16 setTimer:v12];
    }
  }
}

- (BOOL)startPageAction:(id)a3
{
  pageActionInterval = self->_pageActionInterval;
  if (pageActionInterval > 0.0)
  {
    v5 = MEMORY[0x277CBEAA8];
    v6 = a3;
    v7 = [v5 date];
    [v6 startRenderFps:v7];

    v8 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__handleActionTimer_ selector:v6 userInfo:1 repeats:self->_pageActionInterval];
    [v6 setTimer:v8];

    v9 = [MEMORY[0x277CBEB88] mainRunLoop];
    v10 = [v6 timer];

    [v9 addTimer:v10 forMode:*MEMORY[0x277D77228]];
  }

  return pageActionInterval > 0.0;
}

- (void)_handleActionTimer:(id)a3
{
  v6 = [a3 userInfo];
  if (![(PageLoadTestRunner *)self performActionForPage:?])
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    [v6 finishRenderFps:v4];

    if ([(PageLoadTestRunner *)self resetsZoomBetweenPages])
    {
      LODWORD(v5) = 1.0;
      [(BrowserController *)self->_browserController setZoomScale:v5];
    }

    [(PageLoadTestRunner *)self finishPage:v6 stats:0 error:0];
  }
}

- (void)finishedTestRunner
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pageLoadTestRunnerFinished:self];

  [(PageLoadTestRunner *)self log:@"PageLoadTest Finished."];
}

- (void)startingTestPage:(id)a3
{
  v4 = [(PageLoadTestRunner *)self browserController];
  v5 = [v4 tabController];
  v6 = [v5 activeTabDocument];
  [v6 setStoreBannersAreDisabled:1];

  v7 = [(PageLoadTestRunner *)self browserController];
  [v7 setFavoritesState:0 animated:0];
}

- (void)finishedTestPage:(id)a3
{
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXPLT();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_215819000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "UIProcessPageLoad", "", buf, 2u);
  }

  [(PageLoadTestRunner *)self log:@"%@", v4];
}

- (void)log:(id)a3
{
  v4 = MEMORY[0x277CCAB68];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  [v6 insertString:@"safari-plt-test Page Load: " atIndex:0];
  NSLog(@"%@", v6);
  if (self->_logStream)
  {
    [v6 appendString:@"\n"];
    -[NSOutputStream write:maxLength:](self->_logStream, "write:maxLength:", [v6 UTF8String], objc_msgSend(v6, "lengthOfBytesUsingEncoding:", 4));
  }
}

- (void)clearCacheWithURL:(id)a3
{
  v3 = [MEMORY[0x277CBAB70] sharedURLCache];
  [v3 removeAllCachedResponses];

  v4 = MEMORY[0x277D7B7E8];

  [v4 emptyCache];
}

+ (void)addLeakToArray:(id)a3 count:(int)a4 name:(id)a5
{
  if (a4)
  {
    v6 = *&a4;
    v7 = MEMORY[0x277CCACA8];
    if (a4 == 1)
    {
      v8 = "";
    }

    else
    {
      v8 = "s";
    }

    v9 = a3;
    v10 = [v7 stringWithFormat:@"%d %@%s", v6, a5, v8];
    [v9 addObject:v10];
  }
}

+ (id)worldLeaksString
{
  v3 = [MEMORY[0x277CBEB18] array];
  [a1 addLeakToArray:v3 count:objc_msgSend(MEMORY[0x277D7B800] name:{"webViewCount"), @"WebView object"}];
  [a1 addLeakToArray:v3 count:objc_msgSend(MEMORY[0x277D7B800] name:{"frameCount"), @"WebFrame object"}];
  [a1 addLeakToArray:v3 count:objc_msgSend(MEMORY[0x277D7B800] name:{"dataSourceCount"), @"WebDataSource object"}];
  [a1 addLeakToArray:v3 count:objc_msgSend(MEMORY[0x277D7B800] name:{"viewCount"), @"WebFrameView object"}];
  [a1 addLeakToArray:v3 count:objc_msgSend(MEMORY[0x277D7B800] name:{"HTMLRepresentationCount"), @"WebHTMLRepresentation object"}];
  [a1 addLeakToArray:v3 count:objc_msgSend(MEMORY[0x277D7B800] name:{"bridgeCount"), @"WebBridge object"}];
  [a1 addLeakToArray:v3 count:objc_msgSend(MEMORY[0x277D7B7E8] name:{"javaScriptInterpretersCount"), @"JavaScript interpreter"}];
  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)finishCheckingForWorldLeaks
{
  v2 = [objc_opt_class() worldLeaksString];
  v3 = v2 != 0;

  return v3;
}

- (void)closeBrowserWindowsAndFinishCheckingForWorldLeaks
{
  if (self->_checkForWorldLeaks)
  {
    [(PageLoadTestRunner *)self closeBrowserWindows];

    [(PageLoadTestRunner *)self performSelector:sel_finishCheckingForWorldLeaks withObject:0 afterDelay:2.5];
  }
}

- (void)checkForWorldLeaksSoon
{
  if (self->_checkForWorldLeaks)
  {
    [(PageLoadTestRunner *)self performSelector:sel_closeBrowserWindowsAndFinishCheckingForWorldLeaks withObject:0 afterDelay:0.0];
  }
}

- (BOOL)checkForWorldLeaksNow
{
  if (!self->_checkForWorldLeaks)
  {
    return 0;
  }

  [(PageLoadTestRunner *)self closeBrowserWindows];

  return [(PageLoadTestRunner *)self finishCheckingForWorldLeaks];
}

+ ($2825F4736939C4A6D3AD43837233062D)heapStatistics
{
  v2 = MEMORY[0x277D86150];
  v3 = *MEMORY[0x277D86150];
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = MEMORY[0x277D86158];
    v8 = *MEMORY[0x277D86158];
    do
    {
      if (*(*(v8 + 8 * v4) + 24))
      {
        v9 = *(*(v8 + 8 * v4) + 24);
      }

      else
      {
        v9 = 0;
      }

      if (v9 == *(*v8 + 24))
      {
        scalable_zone_info();
        v5 += v11;
        v6 = (v12 + v6);
        v8 = *v7;
        v3 = *v2;
      }

      ++v4;
    }

    while (v4 < v3);
    return (v5 | (v6 << 32));
  }

  else
  {
    return 0;
  }
}

- (PageLoadTestRunnerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end