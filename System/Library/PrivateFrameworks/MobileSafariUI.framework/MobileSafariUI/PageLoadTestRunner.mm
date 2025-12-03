@interface PageLoadTestRunner
+ ($2825F4736939C4A6D3AD43837233062D)heapStatistics;
+ (id)worldLeaksString;
+ (void)addLeakToArray:(id)array count:(int)count name:(id)name;
- (BOOL)checkForWorldLeaksNow;
- (BOOL)finishCheckingForWorldLeaks;
- (BOOL)loadTestSuiteFile:(id)file;
- (BOOL)startPageAction:(id)action;
- (PageLoadTestRunner)initWithTestName:(id)name browserController:(id)controller;
- (PageLoadTestRunnerDelegate)delegate;
- (id)_pageLoadForTabDocument:(id)document;
- (void)_checkRedirect:(id)redirect;
- (void)_closeLogStream;
- (void)_handleActionTimer:(id)timer;
- (void)_pageRestExpired:(id)expired;
- (void)_pageTimeoutExpired:(id)expired;
- (void)_startNextPageNow;
- (void)_updatePageLoad:(id)load stats:(id)stats;
- (void)addPageURL:(id)l withProcessSwap:(BOOL)swap;
- (void)checkForWorldLeaksSoon;
- (void)clearCacheWithURL:(id)l;
- (void)closeBrowserWindowsAndFinishCheckingForWorldLeaks;
- (void)dealloc;
- (void)finish;
- (void)finishPage:(id)page stats:(id)stats error:(id)error;
- (void)finishedTestPage:(id)page;
- (void)finishedTestRunner;
- (void)log:(id)log;
- (void)removeURLsInRange:(_NSRange)range;
- (void)setExistingProperty:(id)property to:(id)to;
- (void)setTestOptions:(id)options;
- (void)start;
- (void)startNextPage;
- (void)startingTestPage:(id)page;
@end

@implementation PageLoadTestRunner

- (PageLoadTestRunner)initWithTestName:(id)name browserController:(id)controller
{
  nameCopy = name;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = PageLoadTestRunner;
  v8 = [(PageLoadTestRunner *)&v15 init];
  v9 = v8;
  if (v8)
  {
    [(PageLoadTestRunner *)v8 setTestName:nameCopy];
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
    objc_storeStrong(&v9->_browserController, controller);
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

- (void)setExistingProperty:(id)property to:(id)to
{
  propertyCopy = property;
  toCopy = to;
  v7 = objc_opt_class();
  v8 = propertyCopy;
  Property = class_getProperty(v7, [propertyCopy UTF8String]);
  if (Property)
  {
    v10 = *(property_getAttributes(Property) + 1);
    if (v10 == 99 || v10 == 81)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(toCopy, "intValue")}];

        toCopy = v11;
      }
    }

    [(PageLoadTestRunner *)self setValue:toCopy forKey:propertyCopy];
  }
}

- (void)setTestOptions:(id)options
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__PageLoadTestRunner_setTestOptions___block_invoke;
  v3[3] = &unk_2781D8208;
  v3[4] = self;
  [options enumerateKeysAndObjectsUsingBlock:v3];
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

- (void)addPageURL:(id)l withProcessSwap:(BOOL)swap
{
  swapCopy = swap;
  lCopy = l;
  if (lCopy && self->_testIterations)
  {
    v6 = 0;
    do
    {
      v7 = [[PageLoad alloc] initWithURL:lCopy withProcessSwap:swapCopy];
      v8 = [(NSMutableArray *)self->_pageLoadArray objectAtIndexedSubscript:v6];
      [v8 addObject:v7];

      ++v6;
    }

    while (v6 < self->_testIterations);
  }
}

- (void)removeURLsInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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

- (BOOL)loadTestSuiteFile:(id)file
{
  fileCopy = file;
  syslog(4, "safari-plt-test: pathToTestSuite=%s", [fileCopy UTF8String]);
  if (!fileCopy)
  {
    goto LABEL_47;
  }

  lastPathComponent = [fileCopy lastPathComponent];
  [(PageLoadTestRunner *)self setSuiteName:lastPathComponent];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager contentsAtPath:fileCopy];

  if (!v7)
  {
    v60 = __error();
    v61 = strerror(*v60);
    NSLog(@"safari-plt-test: Could not load test suite '%@': %s", fileCopy, v61);
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
  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [fileCopy stringByAppendingString:@"files"];
  v13 = [defaultManager2 contentsAtPath:v12];

  if (v13)
  {
    v14 = malloc_type_malloc([v13 length] + 1, 0x6020B0B4uLL);
    memcpy(v14, [v13 bytes], objc_msgSend(v13, "length"));
    *(v14 + [v13 length]) = 0;
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", v14];
    free(v14);
    v16 = [v15 componentsSeparatedByString:@"\n"];
    array = [MEMORY[0x277CBEB18] array];
    if ([v16 count])
    {
      v18 = 0;
      do
      {
        v19 = [v16 objectAtIndexedSubscript:v18];
        if ([v19 length])
        {
          v20 = [MEMORY[0x277CBEBC0] safari_urlWithDataAsString:v19];
          [array addObject:v20];
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

    intValue = [v23 intValue];
    self->_testIterations = intValue;
    if (intValue >= 2)
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

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v50 = [v23 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  if (![v50 length])
  {

LABEL_35:
    goto LABEL_36;
  }

  if ([v50 characterAtIndex:0] == 35)
  {
    [v50 substringFromIndex:1];
    v66 = v65 = whitespaceAndNewlineCharacterSet;
    v51 = [v66 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

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
    stringByExpandingTildeInPath = [(NSString *)logFile stringByExpandingTildeInPath];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [defaultManager fileExistsAtPath:stringByExpandingTildeInPath];

    if (v6)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v51 = 0;
      v8 = [defaultManager2 attributesOfItemAtPath:stringByExpandingTildeInPath error:&v51];
      v9 = v51;

      if (v9)
      {
        NSLog(@"safari-plt-test: PageLoadTestRunner could not get attributes of log file: %@", v9);
      }

      else
      {
        v10 = objc_alloc(MEMORY[0x277CCAB68]);
        stringByDeletingPathExtension = [stringByExpandingTildeInPath stringByDeletingPathExtension];
        v12 = [v10 initWithString:stringByDeletingPathExtension];

        v13 = objc_alloc_init(MEMORY[0x277CCA968]);
        [v13 setDateFormat:@"-yyyy-MM-dd-HH-mm-ss"];
        v14 = [v8 objectForKey:*MEMORY[0x277CCA108]];
        v15 = [v13 stringFromDate:v14];
        [v12 appendString:v15];

        pathExtension = [stringByExpandingTildeInPath pathExtension];
        v17 = [pathExtension length];

        if (v17)
        {
          [v12 appendString:@"."];
          pathExtension2 = [stringByExpandingTildeInPath pathExtension];
          [v12 appendString:pathExtension2];
        }

        defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
        v50 = 0;
        [defaultManager3 moveItemAtPath:stringByExpandingTildeInPath toPath:v12 error:&v50];
        v9 = v50;

        if (v9)
        {
          NSLog(@"safari-plt-test: PageLoadTestRunner could not rename log file: %@", v9);
        }
      }
    }

    v20 = [objc_alloc(MEMORY[0x277CBEB78]) initToFileAtPath:stringByExpandingTildeInPath append:0];
    logStream = self->_logStream;
    self->_logStream = v20;

    [(NSOutputStream *)self->_logStream open];
  }

  [(PageLoadTestRunner *)self log:@"PageLoadTest Initialized."];
  [(BrowserController *)self->_browserController setFavoritesState:0];
  tabController = [(BrowserController *)self->_browserController tabController];
  tabCollectionViewProvider = [tabController tabCollectionViewProvider];
  tabThumbnailCollectionView = [tabCollectionViewProvider tabThumbnailCollectionView];

  v25 = tabThumbnailCollectionView;
  if ([v25 presentationState] == 1)
  {
  }

  else
  {
    presentationState = [v25 presentationState];

    if (presentationState != 2)
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
  currentTabDocuments = [tabController currentTabDocuments];
  v28 = [currentTabDocuments countByEnumeratingWithState:&v46 objects:v52 count:16];
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
          objc_enumerationMutation(currentTabDocuments);
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

      v29 = [currentTabDocuments countByEnumeratingWithState:&v46 objects:v52 count:16];
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
    processPool = [(BrowserController *)self->_browserController processPool];
    [processPool _setObject:MEMORY[0x277CBEC38] forBundleParameter:@"enablePageLoadMeasurementCollection"];

    processPool2 = [(BrowserController *)self->_browserController processPool];
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_version];
    [processPool2 _setObject:v38 forBundleParameter:@"pageLoadMeasurementVersionNumber"];

    processPool3 = [(BrowserController *)self->_browserController processPool];
    v40 = [MEMORY[0x277CCABB0] numberWithDouble:self->_allSubresourcesFinishedLoadingDelay];
    [processPool3 _setObject:v40 forBundleParameter:@"pageLoadMeasurementAllSubresourcesFinishedLoadingDelay"];

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

      rootViewController = [(BrowserController *)self->_browserController rootViewController];
      [rootViewController updateWebViewSizeAttributes];

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
    tabController = [(BrowserController *)self->_browserController tabController];
    activeTabDocument = [tabController activeTabDocument];
    [tabController closeTabDocument:activeTabDocument animated:1];
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
  absoluteString = [v10 absoluteString];
  syslog(4, "safari-plt-test: Loading next url=%s", [absoluteString UTF8String]);

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
    date = [MEMORY[0x277CBEAA8] date];
    [v6 setUiProcessStartDate:date];

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
  activeTabDocument = [(BrowserController *)self->_browserController tabController];
  v24ActiveTabDocument = [activeTabDocument activeTabDocument];
  v26 = v24ActiveTabDocument;
  if (self->_loadURLInNewTab && ![(TabDocument *)v24ActiveTabDocument isBlank])
  {
    v27 = [[TabDocument alloc] initWithBrowserController:self->_browserController];
    [activeTabDocument insertNewTabDocument:v27 forcingOrderAfterTabDocument:v26 inBackground:0 animated:0];
  }

  else
  {
    if (![v6 swapProcess])
    {
      goto LABEL_38;
    }

    v27 = [[TabDocument alloc] initWithBrowserController:self->_browserController];
    [activeTabDocument insertNewTabDocument:v27 forcingOrderAfterTabDocument:v26 inBackground:0 animated:0];
    [activeTabDocument setActiveTabDocument:v27 animated:0];
    [activeTabDocument closeTabDocument:v26 animated:1];
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
  tabController = v6;
  v33 = tabController;
  [(TabDocument *)v26 loadTestURL:v29 withInjectedBundle:useInjectedBundle withCallback:v32 pagesNeedingMemoryWarningSent:self->_pagesNeedingMemoryWarningSent];

  if ([tabController status] == 1)
  {
    [tabController setStatus:2];
    if (self->_measureTime)
    {
      date2 = [MEMORY[0x277CBEAA8] date];
      [tabController setWebContentProcessStartLoadDate:date2];
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

- (id)_pageLoadForTabDocument:(id)document
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

- (void)_pageTimeoutExpired:(id)expired
{
  expiredCopy = expired;
  userInfo = [expiredCopy userInfo];
  endLoadDate = [userInfo endLoadDate];

  if (!endLoadDate)
  {
    fireDate = [expiredCopy fireDate];
    [userInfo setEndLoadDate:fireDate];
  }

  v7 = MEMORY[0x277CCA9B8];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Page load timed out", *MEMORY[0x277CCA450], 0}];
  v9 = [v7 errorWithDomain:@"PageLoadErrorDomain" code:-2 userInfo:v8];

  [userInfo setTimer:0];
  [(PageLoadTestRunner *)self finishPage:userInfo stats:0 error:v9];
}

- (void)_pageRestExpired:(id)expired
{
  userInfo = [expired userInfo];
  if ([userInfo status] == 4)
  {
    [userInfo setTimer:0];
    [(PageLoadTestRunner *)self finishPage:userInfo stats:0 error:0];
  }
}

- (void)_checkRedirect:(id)redirect
{
  redirectCopy = redirect;
  tabController = [(BrowserController *)self->_browserController tabController];
  activeTabDocument = [tabController activeTabDocument];
  v6 = [activeTabDocument URL];

  v7 = [redirectCopy URL];
  LOBYTE(activeTabDocument) = [v7 isEqual:v6];

  if ((activeTabDocument & 1) == 0)
  {
    [redirectCopy setRedirectURL:v6];
  }
}

- (void)_updatePageLoad:(id)load stats:(id)stats
{
  v36 = *MEMORY[0x277D85DE8];
  loadCopy = load;
  statsCopy = stats;
  v8 = statsCopy;
  if (statsCopy)
  {
    loadStartDate = [statsCopy loadStartDate];
    if (loadStartDate)
    {
      [loadCopy setWebContentProcessStartLoadDate:loadStartDate];
    }

    lastPageLoadEventDate = [v8 lastPageLoadEventDate];

    if (lastPageLoadEventDate)
    {
      [loadCopy setEndLoadDate:lastPageLoadEventDate];
    }

    firstVisualLayoutDate = [v8 firstVisualLayoutDate];

    if (firstVisualLayoutDate)
    {
      [loadCopy setFirstVisualLayoutDate:firstVisualLayoutDate];
    }

    domContentLoadedDate = [v8 domContentLoadedDate];

    if (domContentLoadedDate)
    {
      [loadCopy setDomContentLoadedDate:domContentLoadedDate];
      uiProcessStartDate = [loadCopy uiProcessStartDate];
      [domContentLoadedDate timeIntervalSinceDate:uiProcessStartDate];
      v15 = v14;

      v16 = WBS_LOG_CHANNEL_PREFIXPLT();
      if (os_signpost_enabled(v16))
      {
        v17 = v16;
        v34 = 134217984;
        v35 = continuousTimeAddInterval([loadCopy uiProcessStartTime], v15);
        _os_signpost_emit_with_name_impl(&dword_215819000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PLT_DOMContentLoaded", "%{signpost.description:end_time}llu", &v34, 0xCu);
      }
    }

    firstMeaningfulPaintDate = [v8 firstMeaningfulPaintDate];

    if (firstMeaningfulPaintDate)
    {
      [loadCopy setFirstMeaningfulPaintDate:firstMeaningfulPaintDate];
      uiProcessStartDate2 = [loadCopy uiProcessStartDate];
      [firstMeaningfulPaintDate timeIntervalSinceDate:uiProcessStartDate2];
      v21 = v20;

      v22 = WBS_LOG_CHANNEL_PREFIXPLT();
      if (os_signpost_enabled(v22))
      {
        v23 = v22;
        v24 = continuousTimeAddInterval([loadCopy uiProcessStartTime], v21);
        v34 = 134217984;
        v35 = v24;
        _os_signpost_emit_with_name_impl(&dword_215819000, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PLT_FirstMeaningfulPaint", "%{signpost.description:end_time}llu", &v34, 0xCu);
      }
    }

    allSubresourcesLoadedDate = [v8 allSubresourcesLoadedDate];

    if (allSubresourcesLoadedDate)
    {
      [loadCopy setAllSubresourcesLoadedDate:allSubresourcesLoadedDate];
      uiProcessStartDate3 = [loadCopy uiProcessStartDate];
      [allSubresourcesLoadedDate timeIntervalSinceDate:uiProcessStartDate3];
      v28 = v27;

      v29 = WBS_LOG_CHANNEL_PREFIXPLT();
      if (os_signpost_enabled(v29))
      {
        v30 = v29;
        v31 = continuousTimeAddInterval([loadCopy uiProcessStartTime], v28);
        v34 = 134217984;
        v35 = v31;
        _os_signpost_emit_with_name_impl(&dword_215819000, v30, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PLT_AllSubresourcesLoaded", "%{signpost.description:end_time}llu", &v34, 0xCu);
      }
    }
  }

  endLoadDate = [loadCopy endLoadDate];

  if (!endLoadDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [loadCopy setEndLoadDate:date];
  }

  if (self->_collectHeapStatistics)
  {
    [loadCopy setHeapAfter:{+[PageLoadTestRunner heapStatistics](PageLoadTestRunner, "heapStatistics")}];
  }
}

- (void)finishPage:(id)page stats:(id)stats error:(id)error
{
  pageCopy = page;
  statsCopy = stats;
  errorCopy = error;
  if ([pageCopy status] <= 4)
  {
    if (errorCopy)
    {
      error = [pageCopy error];

      if (!error)
      {
        [pageCopy setError:errorCopy];
      }
    }

    if ([pageCopy status] == 2 && (-[PageLoadTestRunner _updatePageLoad:stats:](self, "_updatePageLoad:stats:", pageCopy, statsCopy), -[PageLoadTestRunner _checkRedirect:](self, "_checkRedirect:", pageCopy), objc_msgSend(pageCopy, "error"), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11) && -[PageLoadTestRunner startPageAction:](self, "startPageAction:", pageCopy))
    {
      [pageCopy setStatus:3];
    }

    else if ([pageCopy status] > 3 || self->_pageRestInterval == 0.0)
    {
      if ([pageCopy status] != 4 || (objc_msgSend(pageCopy, "timer"), v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
      {
        [pageCopy setTimer:0];
        error2 = [pageCopy error];

        if (error2)
        {
          v15 = 6;
        }

        else
        {
          v15 = 5;
        }

        [pageCopy setStatus:v15];
        [(PageLoadTestRunner *)self finishedTestPage:pageCopy];
        [(PageLoadTestRunner *)self startNextPage];
      }
    }

    else
    {
      [pageCopy setStatus:4];
      v12 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__pageRestExpired_ selector:pageCopy userInfo:0 repeats:self->_pageRestInterval];
      [pageCopy setTimer:v12];
    }
  }
}

- (BOOL)startPageAction:(id)action
{
  pageActionInterval = self->_pageActionInterval;
  if (pageActionInterval > 0.0)
  {
    v5 = MEMORY[0x277CBEAA8];
    actionCopy = action;
    date = [v5 date];
    [actionCopy startRenderFps:date];

    v8 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__handleActionTimer_ selector:actionCopy userInfo:1 repeats:self->_pageActionInterval];
    [actionCopy setTimer:v8];

    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    timer = [actionCopy timer];

    [mainRunLoop addTimer:timer forMode:*MEMORY[0x277D77228]];
  }

  return pageActionInterval > 0.0;
}

- (void)_handleActionTimer:(id)timer
{
  userInfo = [timer userInfo];
  if (![(PageLoadTestRunner *)self performActionForPage:?])
  {
    date = [MEMORY[0x277CBEAA8] date];
    [userInfo finishRenderFps:date];

    if ([(PageLoadTestRunner *)self resetsZoomBetweenPages])
    {
      LODWORD(v5) = 1.0;
      [(BrowserController *)self->_browserController setZoomScale:v5];
    }

    [(PageLoadTestRunner *)self finishPage:userInfo stats:0 error:0];
  }
}

- (void)finishedTestRunner
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pageLoadTestRunnerFinished:self];

  [(PageLoadTestRunner *)self log:@"PageLoadTest Finished."];
}

- (void)startingTestPage:(id)page
{
  browserController = [(PageLoadTestRunner *)self browserController];
  tabController = [browserController tabController];
  activeTabDocument = [tabController activeTabDocument];
  [activeTabDocument setStoreBannersAreDisabled:1];

  browserController2 = [(PageLoadTestRunner *)self browserController];
  [browserController2 setFavoritesState:0 animated:0];
}

- (void)finishedTestPage:(id)page
{
  pageCopy = page;
  v5 = WBS_LOG_CHANNEL_PREFIXPLT();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_215819000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "UIProcessPageLoad", "", buf, 2u);
  }

  [(PageLoadTestRunner *)self log:@"%@", pageCopy];
}

- (void)log:(id)log
{
  v4 = MEMORY[0x277CCAB68];
  logCopy = log;
  v6 = [[v4 alloc] initWithFormat:logCopy arguments:&v7];

  [v6 insertString:@"safari-plt-test Page Load: " atIndex:0];
  NSLog(@"%@", v6);
  if (self->_logStream)
  {
    [v6 appendString:@"\n"];
    -[NSOutputStream write:maxLength:](self->_logStream, "write:maxLength:", [v6 UTF8String], objc_msgSend(v6, "lengthOfBytesUsingEncoding:", 4));
  }
}

- (void)clearCacheWithURL:(id)l
{
  mEMORY[0x277CBAB70] = [MEMORY[0x277CBAB70] sharedURLCache];
  [mEMORY[0x277CBAB70] removeAllCachedResponses];

  v4 = MEMORY[0x277D7B7E8];

  [v4 emptyCache];
}

+ (void)addLeakToArray:(id)array count:(int)count name:(id)name
{
  if (count)
  {
    v6 = *&count;
    v7 = MEMORY[0x277CCACA8];
    if (count == 1)
    {
      v8 = "";
    }

    else
    {
      v8 = "s";
    }

    arrayCopy = array;
    v10 = [v7 stringWithFormat:@"%d %@%s", v6, name, v8];
    [arrayCopy addObject:v10];
  }
}

+ (id)worldLeaksString
{
  array = [MEMORY[0x277CBEB18] array];
  [self addLeakToArray:array count:objc_msgSend(MEMORY[0x277D7B800] name:{"webViewCount"), @"WebView object"}];
  [self addLeakToArray:array count:objc_msgSend(MEMORY[0x277D7B800] name:{"frameCount"), @"WebFrame object"}];
  [self addLeakToArray:array count:objc_msgSend(MEMORY[0x277D7B800] name:{"dataSourceCount"), @"WebDataSource object"}];
  [self addLeakToArray:array count:objc_msgSend(MEMORY[0x277D7B800] name:{"viewCount"), @"WebFrameView object"}];
  [self addLeakToArray:array count:objc_msgSend(MEMORY[0x277D7B800] name:{"HTMLRepresentationCount"), @"WebHTMLRepresentation object"}];
  [self addLeakToArray:array count:objc_msgSend(MEMORY[0x277D7B800] name:{"bridgeCount"), @"WebBridge object"}];
  [self addLeakToArray:array count:objc_msgSend(MEMORY[0x277D7B7E8] name:{"javaScriptInterpretersCount"), @"JavaScript interpreter"}];
  if ([array count])
  {
    v4 = [array componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)finishCheckingForWorldLeaks
{
  worldLeaksString = [objc_opt_class() worldLeaksString];
  v3 = worldLeaksString != 0;

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