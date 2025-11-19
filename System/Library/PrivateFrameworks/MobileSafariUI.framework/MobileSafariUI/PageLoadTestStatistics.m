@interface PageLoadTestStatistics
- (BOOL)_pageLoadEventsAreStillPending;
- (PageLoadTestStatistics)initWithInjectedBundle:(BOOL)a3 withCallback:(id)a4;
- (void)_cancelPageLoadingTimeoutTimerIfNeeded;
- (void)_cancelWaitForNewPageLoadEventsTimer;
- (void)_maybePageLoadFinishedForTests;
- (void)_pageLoadFinishedForTests;
- (void)_pageLoadTimeoutTimerFired:(id)a3;
- (void)_scheduleWaitForNewPageLoadEventsTimer;
- (void)_waitForNewPageLoadEventsTimerFired:(id)a3;
- (void)dealloc;
- (void)didGeneratePageLoadTiming:(id)a3;
- (void)failedNavigation:(id)a3 withError:(id)a4;
- (void)finishedFirstVisualLayout;
- (void)finishedLoadingResources;
- (void)finishedNavigation:(id)a3;
- (void)handledOnloadEvents;
- (void)pageLoadFinishedForTestsWK2WithLoadData:(id)a3;
- (void)setPageLoadingTimeoutInterval:(double)a3;
- (void)startedLoadingResources;
- (void)startedNavigation:(id)a3;
- (void)startedPageLoad;
@end

@implementation PageLoadTestStatistics

- (PageLoadTestStatistics)initWithInjectedBundle:(BOOL)a3 withCallback:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = PageLoadTestStatistics;
  v7 = [(PageLoadTestStatistics *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_useInjectedBundle = a3;
    if (v6)
    {
      v9 = [v6 copy];
      callbackBlock = v8->_callbackBlock;
      v8->_callbackBlock = v9;
    }
  }

  return v8;
}

- (void)dealloc
{
  [(PageLoadTestStatistics *)self _cancelWaitForNewPageLoadEventsTimer];
  [(PageLoadTestStatistics *)self _cancelPageLoadingTimeoutTimerIfNeeded];
  v3.receiver = self;
  v3.super_class = PageLoadTestStatistics;
  [(PageLoadTestStatistics *)&v3 dealloc];
}

- (void)handledOnloadEvents
{
  ++self->_onloadEventsHandled;
  v3 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  lastOnloadEventDate = self->_lastOnloadEventDate;
  self->_lastOnloadEventDate = v3;

  [(PageLoadTestStatistics *)self _maybePageLoadFinishedForTests];
}

- (void)startedPageLoad
{
  v3 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  loadStartDate = self->_loadStartDate;
  self->_loadStartDate = v3;
}

- (void)startedNavigation:(id)a3
{
  navigation = self->_navigation;
  if (navigation)
  {
    v4 = navigation == a3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    ++self->_framesToLoad;
  }
}

- (void)finishedLoadingResources
{
  self->_pendingResourceLoad = 0;
  if (!self->_lastPageLoadEventDate)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    lastResourceLoadDate = self->_lastResourceLoadDate;
    self->_lastResourceLoadDate = v4;

    [(PageLoadTestStatistics *)self _maybePageLoadFinishedForTests];
  }
}

- (void)startedLoadingResources
{
  self->_pendingResourceLoad = 1;
  if (self->_waitForNewPageLoadEventsTimer)
  {
    [(PageLoadTestStatistics *)self _cancelWaitForNewPageLoadEventsTimer];
  }
}

- (void)finishedFirstVisualLayout
{
  v3 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  firstVisualLayoutDate = self->_firstVisualLayoutDate;
  self->_firstVisualLayoutDate = v3;

  [(PageLoadTestStatistics *)self _maybePageLoadFinishedForTests];
}

- (void)failedNavigation:(id)a3 withError:(id)a4
{
  v14 = a4;
  navigation = self->_navigation;
  if (navigation)
  {
    v8 = navigation == a3;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = [MEMORY[0x277CBEAA8] date];
    [v9 timeIntervalSinceDate:self->_loadStartDate];
    v11 = v10;

    if (v11 >= 0.05)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEAA8]);
      lastPageLoadEventDate = self->_lastPageLoadEventDate;
      self->_lastPageLoadEventDate = v12;

      objc_storeStrong(&self->_loadError, a4);
      [(PageLoadTestStatistics *)self _pageLoadFinishedForTests];
    }

    else
    {
      NSLog(@"PageLoadTestStatistics ignoring error due to 'load duration < 50ms' heuristic: %@", v14);
    }
  }
}

- (void)finishedNavigation:(id)a3
{
  navigation = self->_navigation;
  if (navigation)
  {
    v5 = navigation == a3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    mainFrameLoadDate = self->_mainFrameLoadDate;
    self->_mainFrameLoadDate = v7;

    [(PageLoadTestStatistics *)self _maybePageLoadFinishedForTests];
  }
}

- (void)pageLoadFinishedForTestsWK2WithLoadData:(id)a3
{
  v4 = a3;
  if (self->_useInjectedBundle)
  {
    v5 = MEMORY[0x277CBEAA8];
    v30 = v4;
    v6 = [v4 objectForKey:@"PageLoadStartTime"];
    [v6 doubleValue];
    v7 = [v5 dateWithTimeIntervalSinceReferenceDate:?];

    v8 = MEMORY[0x277CBEAA8];
    v9 = [v30 objectForKey:@"PageLoadEndTime"];
    [v9 doubleValue];
    v10 = [v8 dateWithTimeIntervalSinceReferenceDate:?];

    v11 = MEMORY[0x277CBEAA8];
    v12 = [v30 objectForKey:@"PageLoadFirstVisuallyNonEmptyLayoutTime"];
    [v12 doubleValue];
    v13 = [v11 dateWithTimeIntervalSinceReferenceDate:?];

    self->_framesToLoad = 0;
    self->_onloadEventsHandled = 0;
    self->_pendingResourceLoad = 0;
    objc_storeStrong(&self->_firstVisualLayoutDate, v13);
    objc_storeStrong(&self->_loadStartDate, v7);
    objc_storeStrong(&self->_lastOnloadEventDate, v10);
    objc_storeStrong(&self->_mainFrameLoadDate, v10);
    objc_storeStrong(&self->_lastResourceLoadDate, v10);
    objc_storeStrong(&self->_lastPageLoadEventDate, v10);
    loadError = self->_loadError;
    self->_loadError = 0;

    v15 = [v30 objectForKey:@"PageMemoryBeforeWarning"];
    self->_memoryBeforeWarning = [v15 unsignedLongLongValue];

    v16 = [v30 objectForKey:@"PageMemoryAfterWarning"];
    self->_memoryAfterWarning = [v16 unsignedLongLongValue];

    v17 = MEMORY[0x277CBEAA8];
    v18 = [v30 objectForKey:@"PageLoadDOMContentLoadedTime"];
    [v18 doubleValue];
    v19 = [v17 dateWithTimeIntervalSinceReferenceDate:?];
    domContentLoadedDate = self->_domContentLoadedDate;
    self->_domContentLoadedDate = v19;

    v21 = MEMORY[0x277CBEAA8];
    v22 = [v30 objectForKey:@"PageLoadFirstMeaningfulPaintTime"];
    [v22 doubleValue];
    v23 = [v21 dateWithTimeIntervalSinceReferenceDate:?];
    firstMeaningfulPaintDate = self->_firstMeaningfulPaintDate;
    self->_firstMeaningfulPaintDate = v23;

    v25 = MEMORY[0x277CBEAA8];
    v26 = [v30 objectForKey:@"PageLoadAllSubresourcesLoadedTime"];
    [v26 doubleValue];
    v27 = [v25 dateWithTimeIntervalSinceReferenceDate:?];
    allSubresourcesLoadedDate = self->_allSubresourcesLoadedDate;
    self->_allSubresourcesLoadedDate = v27;

    callbackBlock = self->_callbackBlock;
    if (callbackBlock)
    {
      callbackBlock[2](callbackBlock, self);
    }

    v4 = v30;
  }
}

- (void)didGeneratePageLoadTiming:(id)a3
{
  v4 = a3;
  if (!self->_useInjectedBundle)
  {
    v24 = v4;
    if (objc_opt_respondsToSelector())
    {
      v5 = [v24 firstVisualLayout];
      v6 = [v24 firstMeaningfulPaint];
      v7 = [v5 laterDate:v6];
      v8 = [v24 documentFinishedLoading];
      v9 = [v7 laterDate:v8];
      v10 = [v24 allSubresourcesFinishedLoading];
      v11 = [v9 laterDate:v10];

      self->_framesToLoad = 0;
      self->_onloadEventsHandled = 0;
      self->_pendingResourceLoad = 0;
      v12 = [v24 firstVisualLayout];
      firstVisualLayoutDate = self->_firstVisualLayoutDate;
      self->_firstVisualLayoutDate = v12;

      v14 = [v24 navigationStart];
      loadStartDate = self->_loadStartDate;
      self->_loadStartDate = v14;

      objc_storeStrong(&self->_lastOnloadEventDate, v11);
      objc_storeStrong(&self->_mainFrameLoadDate, v11);
      objc_storeStrong(&self->_lastResourceLoadDate, v11);
      objc_storeStrong(&self->_lastPageLoadEventDate, v11);
      loadError = self->_loadError;
      self->_loadError = 0;

      self->_memoryBeforeWarning = 0;
      self->_memoryAfterWarning = 0;
      v17 = [v24 documentFinishedLoading];
      domContentLoadedDate = self->_domContentLoadedDate;
      self->_domContentLoadedDate = v17;

      v19 = [v24 firstMeaningfulPaint];
      firstMeaningfulPaintDate = self->_firstMeaningfulPaintDate;
      self->_firstMeaningfulPaintDate = v19;

      v21 = [v24 allSubresourcesFinishedLoading];
      allSubresourcesLoadedDate = self->_allSubresourcesLoadedDate;
      self->_allSubresourcesLoadedDate = v21;

      callbackBlock = self->_callbackBlock;
      if (callbackBlock)
      {
        callbackBlock[2](callbackBlock, self);
      }
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)_maybePageLoadFinishedForTests
{
  [(PageLoadTestStatistics *)self _cancelPageLoadingTimeoutTimerIfNeeded];
  if (![(PageLoadTestStatistics *)self _pageLoadEventsAreStillPending])
  {

    [(PageLoadTestStatistics *)self _scheduleWaitForNewPageLoadEventsTimer];
  }
}

- (void)_waitForNewPageLoadEventsTimerFired:(id)a3
{
  [(PageLoadTestStatistics *)self _cancelWaitForNewPageLoadEventsTimer];
  if (![(PageLoadTestStatistics *)self _pageLoadEventsAreStillPending]&& !self->_lastPageLoadEventDate)
  {

    [(PageLoadTestStatistics *)self _pageLoadFinishedForTests];
  }
}

- (void)_pageLoadFinishedForTests
{
  [(PageLoadTestStatistics *)self _cancelWaitForNewPageLoadEventsTimer];
  if (!self->_lastPageLoadEventDate)
  {
    v3 = [(NSDate *)self->_mainFrameLoadDate laterDate:self->_firstVisualLayoutDate];
    v4 = [v3 laterDate:self->_lastOnloadEventDate];
    v5 = [v4 laterDate:self->_lastResourceLoadDate];
    lastPageLoadEventDate = self->_lastPageLoadEventDate;
    self->_lastPageLoadEventDate = v5;
  }

  callbackBlock = self->_callbackBlock;
  if (callbackBlock)
  {
    v8 = *(callbackBlock + 2);

    v8();
  }
}

- (BOOL)_pageLoadEventsAreStillPending
{
  mainFrameLoadDate = self->_mainFrameLoadDate;
  if (mainFrameLoadDate && !self->_pendingResourceLoad && self->_firstVisualLayoutDate && self->_onloadEventsHandled == self->_framesToLoad)
  {
    return 0;
  }

  return *&s_pageLoadRestInterval != 0.0 || mainFrameLoadDate == 0;
}

- (void)_cancelWaitForNewPageLoadEventsTimer
{
  [(NSTimer *)self->_waitForNewPageLoadEventsTimer invalidate];
  waitForNewPageLoadEventsTimer = self->_waitForNewPageLoadEventsTimer;
  self->_waitForNewPageLoadEventsTimer = 0;
}

- (void)_scheduleWaitForNewPageLoadEventsTimer
{
  [(PageLoadTestStatistics *)self _cancelWaitForNewPageLoadEventsTimer];
  v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__waitForNewPageLoadEventsTimerFired_ selector:0 userInfo:0 repeats:*&s_pageLoadRestInterval];
  waitForNewPageLoadEventsTimer = self->_waitForNewPageLoadEventsTimer;
  self->_waitForNewPageLoadEventsTimer = v3;
}

- (void)_cancelPageLoadingTimeoutTimerIfNeeded
{
  [(NSTimer *)self->_pageLoadingTimeoutTimer invalidate];
  pageLoadingTimeoutTimer = self->_pageLoadingTimeoutTimer;
  self->_pageLoadingTimeoutTimer = 0;
}

- (void)_pageLoadTimeoutTimerFired:(id)a3
{
  navigation = self->_navigation;
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:kPageLoadStatsErrorDomain code:-1 userInfo:0];
  [(PageLoadTestStatistics *)self failedNavigation:navigation withError:?];
}

- (void)setPageLoadingTimeoutInterval:(double)a3
{
  if (self->_pageLoadingTimeoutInterval != a3)
  {
    self->_pageLoadingTimeoutInterval = a3;
    [(PageLoadTestStatistics *)self _cancelPageLoadingTimeoutTimerIfNeeded];
    if (self->_pageLoadingTimeoutInterval > 0.0)
    {
      v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__pageLoadTimeoutTimerFired_ selector:0 userInfo:0 repeats:?];
      pageLoadingTimeoutTimer = self->_pageLoadingTimeoutTimer;
      self->_pageLoadingTimeoutTimer = v4;
    }
  }
}

@end