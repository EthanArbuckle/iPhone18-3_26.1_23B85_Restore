@interface ScrollPerfTestRunner
- (BOOL)isPageTooShortToScroll;
- (BOOL)performActionForPage:(id)page;
- (BOOL)startPageAction:(id)action;
- (CGPoint)touchPointForMoveIndex:(unint64_t)index;
- (ScrollPerfTestRunner)initWithTestName:(id)name browserController:(id)controller;
- (id)finalStatusForPage:(id)page;
- (id)machineConfigInfo;
- (id)outputDataForPage:(id)page;
- (id)pageScrollView;
- (id)pageWebView;
- (void)advanceGesture;
- (void)appendToFramerateHistory;
- (void)determineScrollDirection;
- (void)finishPage:(id)page stats:(id)stats error:(id)error;
- (void)finishedTestPage:(id)page;
- (void)finishedTestRunner;
- (void)startingTestPage:(id)page;
- (void)writeOutputData;
@end

@implementation ScrollPerfTestRunner

- (ScrollPerfTestRunner)initWithTestName:(id)name browserController:(id)controller
{
  v11.receiver = self;
  v11.super_class = ScrollPerfTestRunner;
  v4 = [(PurplePageLoadTestRunner *)&v11 initWithTestName:name browserController:controller];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.mobilesafari.EventGenerator", 0);
    eventGeneratorQueue = v4->_eventGeneratorQueue;
    v4->_eventGeneratorQueue = v5;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    outputData = v4->_outputData;
    v4->_outputData = dictionary;

    [(PageLoadTestRunner *)v4 setFailFast:0];
    [(PageLoadTestRunner *)v4 setResetsZoomBetweenPages:0];
    v9 = v4;
  }

  return v4;
}

- (id)pageWebView
{
  browserController = [(PageLoadTestRunner *)self browserController];
  tabController = [browserController tabController];
  activeTabDocument = [tabController activeTabDocument];
  webView = [activeTabDocument webView];

  return webView;
}

- (id)pageScrollView
{
  pageWebView = [(ScrollPerfTestRunner *)self pageWebView];
  scrollView = [pageWebView scrollView];

  return scrollView;
}

- (void)writeOutputData
{
  v27[1] = *MEMORY[0x277D85DE8];
  pageScrollView = [(ScrollPerfTestRunner *)self pageScrollView];
  v26[0] = self->_outputData;
  v25[0] = @"runs";
  v25[1] = @"suiteName";
  suiteName = [(PageLoadTestRunner *)self suiteName];
  if (suiteName)
  {
    suiteName2 = [(PageLoadTestRunner *)self suiteName];
  }

  else
  {
    suiteName2 = @"<no suite name>";
  }

  v26[1] = suiteName2;
  v25[2] = @"frameWidth";
  v6 = MEMORY[0x277CCABB0];
  [pageScrollView bounds];
  v8 = [v6 numberWithDouble:v7];
  v26[2] = v8;
  v25[3] = @"frameHeight";
  v9 = MEMORY[0x277CCABB0];
  [pageScrollView bounds];
  v11 = [v9 numberWithDouble:v10];
  v26[3] = v11;
  v25[4] = @"scrollViewDecelerationRate";
  v12 = MEMORY[0x277CCABB0];
  [pageScrollView decelerationRate];
  v13 = [v12 numberWithDouble:?];
  v26[4] = v13;
  v25[5] = @"machineConfiguration";
  machineConfigInfo = [(ScrollPerfTestRunner *)self machineConfigInfo];
  v26[5] = machineConfigInfo;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:6];
  v27[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];

  if (suiteName)
  {
  }

  outputFilename = [(PageLoadTestRunner *)self outputFilename];

  if (outputFilename)
  {
    v24 = 0;
    v18 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v16 options:0 error:&v24];
    v19 = v24;
    if (v19)
    {
      v20 = v19;
      NSLog(@"Error while serializing Scrolling Performance Test results: %@", v19);
    }

    else
    {
      outputFilename2 = [(PageLoadTestRunner *)self outputFilename];
      v23 = 0;
      [v18 writeToFile:outputFilename2 options:0 error:&v23];
      v20 = v23;

      if (!v20)
      {

        goto LABEL_13;
      }

      outputFilename3 = [(PageLoadTestRunner *)self outputFilename];
      NSLog(@"Error writing output to file %@: %@", outputFilename3, v20);
    }
  }

  else
  {
    NSLog(@"%@", v16);
  }

LABEL_13:
}

- (void)finishedTestRunner
{
  v4.receiver = self;
  v4.super_class = ScrollPerfTestRunner;
  [(PurplePageLoadTestRunner *)&v4 finishedTestRunner];
  outputFilename = [(PageLoadTestRunner *)self outputFilename];
  [(PageLoadTestRunner *)self log:@"ScrollPerf Complete. Wrote data to %@", outputFilename];
}

- (void)startingTestPage:(id)page
{
  pageCopy = page;
  pageWebView = [(ScrollPerfTestRunner *)self pageWebView];
  [pageWebView _setScrollPerformanceDataCollectionEnabled:1];

  v6.receiver = self;
  v6.super_class = ScrollPerfTestRunner;
  [(PageLoadTestRunner *)&v6 startingTestPage:pageCopy];

  ++self->_pageIndex;
  self->_startLoadTime = CFAbsoluteTimeGetCurrent();
}

- (BOOL)performActionForPage:(id)page
{
  pageCopy = page;
  scrollGestureCount = self->_scrollGestureCount;
  if (!scrollGestureCount)
  {
    if (!self->_gestureState)
    {
      self->_startScrollingTime = CFAbsoluteTimeGetCurrent();
    }

    goto LABEL_7;
  }

  if (scrollGestureCount != 20 || self->_gestureState)
  {
LABEL_7:
    [(ScrollPerfTestRunner *)self appendToFramerateHistory];
    [(ScrollPerfTestRunner *)self advanceGesture];
    v6 = 1;
    goto LABEL_8;
  }

  v6 = 0;
  self->_endScrollingTime = CFAbsoluteTimeGetCurrent();
LABEL_8:

  return v6;
}

- (void)appendToFramerateHistory
{
  v11[2] = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  lastFramerateTime = self->_lastFramerateTime;
  if (lastFramerateTime == 0.0)
  {
    self->_lastFramerateTime = Current;
    self->_lastFrameCounter = CARenderServerGetFrameCounter();
  }

  else if (Current - lastFramerateTime >= 0.0666666667)
  {
    FrameCounter = CARenderServerGetFrameCounter();
    v6 = (FrameCounter - self->_lastFrameCounter) / (Current - self->_lastFramerateTime);
    framerateHistory = self->_framerateHistory;
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:Current];
    v11[0] = v8;
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
    v11[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    [(NSMutableArray *)framerateHistory addObject:v10];

    self->_lastFrameCounter = FrameCounter;
    self->_lastFramerateTime = Current;
  }
}

- (CGPoint)touchPointForMoveIndex:(unint64_t)index
{
  v3 = gestureOffsets[index];
  scrollDirection = self->_scrollDirection;
  if (scrollDirection == 1)
  {
    v5 = v3 + 80.0;
  }

  else
  {
    v5 = 0.0;
    if (!scrollDirection)
    {
      v5 = 500.0 - v3;
    }
  }

  v6 = 100.0;
  result.y = v5;
  result.x = v6;
  return result;
}

- (void)advanceGesture
{
  gestureState = self->_gestureState;
  if (gestureState <= 2)
  {
    if (gestureState)
    {
      if (gestureState != 1)
      {
        return;
      }

      [(ScrollPerfTestRunner *)self determineScrollDirection];
      pageScrollView = [(ScrollPerfTestRunner *)self pageScrollView];
      [pageScrollView contentOffset];
      self->_scrollOffsetAtGestureStart.x = v5;
      self->_scrollOffsetAtGestureStart.y = v6;

      self->_gestureStartTime = CFAbsoluteTimeGetCurrent();
      eventGeneratorQueue = self->_eventGeneratorQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__ScrollPerfTestRunner_advanceGesture__block_invoke;
      block[3] = &unk_2781D4D40;
      block[4] = self;
      dispatch_async(eventGeneratorQueue, block);
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    goto LABEL_10;
  }

  if (gestureState == 3)
  {
    Current = CFAbsoluteTimeGetCurrent();
    gestureStartTime = self->_gestureStartTime;
    IsPad = _SFDeviceIsPad();
    v14 = 0.95;
    if (!IsPad)
    {
      v14 = 0.5;
    }

    if (Current > gestureStartTime + v14)
    {
      self->_gestureState = 0;
      v15 = self->_scrollGestureCount + 1;
      self->_scrollGestureCount = v15;
      if (v15 == 20)
      {
        v8 = 4;
LABEL_10:
        self->_gestureState = v8;
      }
    }
  }

  else if (gestureState == 4)
  {
    pageScrollView2 = [(ScrollPerfTestRunner *)self pageScrollView];
    isDecelerating = [pageScrollView2 isDecelerating];

    if ((isDecelerating & 1) == 0)
    {
      self->_gestureState = 0;
    }
  }
}

void __38__ScrollPerfTestRunner_advanceGesture__block_invoke(uint64_t a1)
{
  [*(a1 + 32) touchPointForMoveIndex:0];
  v3 = v2;
  v5 = v4;
  v17 = v2;
  v18 = v4;
  v6 = +[TouchEventGenerator sharedTouchEventGenerator];
  [v6 touchDown:{v3, v5}];

  for (i = 1; i != 7; ++i)
  {
    [*(a1 + 32) touchPointForMoveIndex:i];
    v17 = v8;
    v18 = v9;
    v10 = +[TouchEventGenerator sharedTouchEventGenerator];
    v11 = v10;
    if (i == 1)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 0.017;
    }

    [v10 moveToPoints:&v17 touchCount:1 duration:v12];
  }

  [*(a1 + 32) touchPointForMoveIndex:6];
  v17 = v13;
  v18 = v14;
  v15 = +[TouchEventGenerator sharedTouchEventGenerator];
  [v15 liftUp:{v17, v18}];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ScrollPerfTestRunner_advanceGesture__block_invoke_2;
  block[3] = &unk_2781D4D40;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)determineScrollDirection
{
  pageScrollView = [(ScrollPerfTestRunner *)self pageScrollView];
  [pageScrollView contentOffset];
  v4 = v3;
  [pageScrollView bounds];
  v6 = v5;
  [pageScrollView contentInset];
  v8 = v6 - v7;
  [pageScrollView contentSize];
  if (v4 >= v8)
  {
    if (v4 <= v9 + v6 * -2.0)
    {
      goto LABEL_6;
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  self->_scrollDirection = v10;
LABEL_6:
}

- (BOOL)isPageTooShortToScroll
{
  pageScrollView = [(ScrollPerfTestRunner *)self pageScrollView];
  [pageScrollView bounds];
  v4 = v3;
  [pageScrollView contentSize];
  v6 = v5 / v4 < 2.5;

  return v6;
}

- (BOOL)startPageAction:(id)action
{
  actionCopy = action;
  pageScrollView = [(ScrollPerfTestRunner *)self pageScrollView];
  [pageScrollView contentSize];
  [actionCopy setContentSizeAtPageLoad:?];

  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:142];
  framerateHistory = self->_framerateHistory;
  self->_framerateHistory = v6;

  self->_lastFramerateTime = 0.0;
  if ([(ScrollPerfTestRunner *)self isPageTooShortToScroll])
  {
    [actionCopy setTooShortToScroll:1];
    v8 = [(ScrollPerfTestRunner *)self outputDataForPage:actionCopy];
    outputData = self->_outputData;
    v10 = [actionCopy URL];
    absoluteString = [v10 absoluteString];
    [(NSMutableDictionary *)outputData setObject:v8 forKeyedSubscript:absoluteString];

    v12 = 0;
  }

  else
  {
    self->_scrollGestureCount = 0;
    v14.receiver = self;
    v14.super_class = ScrollPerfTestRunner;
    v12 = [(PageLoadTestRunner *)&v14 startPageAction:actionCopy];
  }

  return v12;
}

- (void)finishPage:(id)page stats:(id)stats error:(id)error
{
  errorCopy = error;
  statsCopy = stats;
  pageCopy = page;
  self->_endLoadTime = CFAbsoluteTimeGetCurrent();
  v11.receiver = self;
  v11.super_class = ScrollPerfTestRunner;
  [(PageLoadTestRunner *)&v11 finishPage:pageCopy stats:statsCopy error:errorCopy];
}

- (void)finishedTestPage:(id)page
{
  pageCopy = page;
  v5 = [(ScrollPerfTestRunner *)self outputDataForPage:pageCopy];
  outputData = self->_outputData;
  v7 = [pageCopy URL];
  absoluteString = [v7 absoluteString];
  [(NSMutableDictionary *)outputData setObject:v5 forKeyedSubscript:absoluteString];

  [(ScrollPerfTestRunner *)self writeOutputData];
  pageWebView = [(ScrollPerfTestRunner *)self pageWebView];
  [pageWebView _setScrollPerformanceDataCollectionEnabled:0];

  v10.receiver = self;
  v10.super_class = ScrollPerfTestRunner;
  [(PageLoadTestRunner *)&v10 finishedTestPage:pageCopy];
}

- (id)finalStatusForPage:(id)page
{
  pageCopy = page;
  if ([pageCopy isTooShortToScroll])
  {
    v5 = @"PageTooShortToScroll";
  }

  else
  {
    status = [pageCopy status];
    if (status < 7 && ((0x4Fu >> status) & 1) != 0)
    {
      v5 = off_2781D89A8[status];
    }

    else
    {
      [pageCopy contentSizeAtPageLoad];
      v8 = v7;
      v10 = v9;
      pageScrollView = [(ScrollPerfTestRunner *)self pageScrollView];
      [pageScrollView contentSize];
      v13 = v12;
      v15 = v14;

      if (v15 < v10 || v13 < v8)
      {
        v5 = @"PageChangedSizeDuringScroll";
      }

      else
      {
        v5 = @"FinishedScrolling";
      }
    }
  }

  return v5;
}

- (id)machineConfigInfo
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"model";
  v2 = mobileGestaltStringForQuery();
  v8[0] = v2;
  v7[1] = @"device";
  v3 = mobileGestaltStringForQuery();
  v8[1] = v3;
  v7[2] = @"operatingSystem";
  v4 = mobileGestaltStringForQuery();
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

- (id)outputDataForPage:(id)page
{
  v31[13] = *MEMORY[0x277D85DE8];
  pageCopy = page;
  pageScrollView = [(ScrollPerfTestRunner *)self pageScrollView];
  pageWebView = [(ScrollPerfTestRunner *)self pageWebView];
  _scrollPerformanceData = [pageWebView _scrollPerformanceData];

  v30[0] = @"url";
  v29 = [pageCopy URL];
  absoluteString = [v29 absoluteString];
  v31[0] = absoluteString;
  v30[1] = @"order";
  v27 = [MEMORY[0x277CCABB0] numberWithInt:self->_pageIndex];
  v31[1] = v27;
  v30[2] = @"contentHeight";
  v7 = MEMORY[0x277CCABB0];
  [pageScrollView contentSize];
  v25 = [v7 numberWithDouble:v8];
  v31[2] = v25;
  v30[3] = @"visibleContentHeight";
  v9 = MEMORY[0x277CCABB0];
  [pageScrollView bounds];
  v11 = [v9 numberWithDouble:v10];
  v31[3] = v11;
  v30[4] = @"state";
  v12 = [(ScrollPerfTestRunner *)self finalStatusForPage:pageCopy];
  v31[4] = v12;
  v30[5] = @"startLoadTime";
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_startLoadTime];
  v31[5] = v13;
  v30[6] = @"endLoadTime";
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_endLoadTime];
  v31[6] = v14;
  v30[7] = @"startScrollingTime";
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_startScrollingTime];
  v31[7] = v15;
  v30[8] = @"endScrollingTime";
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_endScrollingTime];
  v31[8] = v16;
  v30[9] = @"framerate";
  v17 = MEMORY[0x277CCABB0];
  [pageCopy framesPerSecond];
  v19 = v18;

  v20 = [v17 numberWithDouble:v19];
  v31[9] = v20;
  v31[10] = MEMORY[0x277CBEC28];
  v30[10] = @"watchdogTimerFired";
  v30[11] = @"scrollingEvents";
  framerateHistory = MEMORY[0x277CBEBF8];
  v30[12] = @"framerateHistory";
  if (_scrollPerformanceData)
  {
    v22 = _scrollPerformanceData;
  }

  else
  {
    v22 = MEMORY[0x277CBEBF8];
  }

  if (self->_framerateHistory)
  {
    framerateHistory = self->_framerateHistory;
  }

  v31[11] = v22;
  v31[12] = framerateHistory;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:13];

  return v23;
}

@end