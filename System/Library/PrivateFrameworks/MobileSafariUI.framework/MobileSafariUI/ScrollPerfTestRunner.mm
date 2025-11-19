@interface ScrollPerfTestRunner
- (BOOL)isPageTooShortToScroll;
- (BOOL)performActionForPage:(id)a3;
- (BOOL)startPageAction:(id)a3;
- (CGPoint)touchPointForMoveIndex:(unint64_t)a3;
- (ScrollPerfTestRunner)initWithTestName:(id)a3 browserController:(id)a4;
- (id)finalStatusForPage:(id)a3;
- (id)machineConfigInfo;
- (id)outputDataForPage:(id)a3;
- (id)pageScrollView;
- (id)pageWebView;
- (void)advanceGesture;
- (void)appendToFramerateHistory;
- (void)determineScrollDirection;
- (void)finishPage:(id)a3 stats:(id)a4 error:(id)a5;
- (void)finishedTestPage:(id)a3;
- (void)finishedTestRunner;
- (void)startingTestPage:(id)a3;
- (void)writeOutputData;
@end

@implementation ScrollPerfTestRunner

- (ScrollPerfTestRunner)initWithTestName:(id)a3 browserController:(id)a4
{
  v11.receiver = self;
  v11.super_class = ScrollPerfTestRunner;
  v4 = [(PurplePageLoadTestRunner *)&v11 initWithTestName:a3 browserController:a4];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.mobilesafari.EventGenerator", 0);
    eventGeneratorQueue = v4->_eventGeneratorQueue;
    v4->_eventGeneratorQueue = v5;

    v7 = [MEMORY[0x277CBEB38] dictionary];
    outputData = v4->_outputData;
    v4->_outputData = v7;

    [(PageLoadTestRunner *)v4 setFailFast:0];
    [(PageLoadTestRunner *)v4 setResetsZoomBetweenPages:0];
    v9 = v4;
  }

  return v4;
}

- (id)pageWebView
{
  v2 = [(PageLoadTestRunner *)self browserController];
  v3 = [v2 tabController];
  v4 = [v3 activeTabDocument];
  v5 = [v4 webView];

  return v5;
}

- (id)pageScrollView
{
  v2 = [(ScrollPerfTestRunner *)self pageWebView];
  v3 = [v2 scrollView];

  return v3;
}

- (void)writeOutputData
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = [(ScrollPerfTestRunner *)self pageScrollView];
  v26[0] = self->_outputData;
  v25[0] = @"runs";
  v25[1] = @"suiteName";
  v4 = [(PageLoadTestRunner *)self suiteName];
  if (v4)
  {
    v5 = [(PageLoadTestRunner *)self suiteName];
  }

  else
  {
    v5 = @"<no suite name>";
  }

  v26[1] = v5;
  v25[2] = @"frameWidth";
  v6 = MEMORY[0x277CCABB0];
  [v3 bounds];
  v8 = [v6 numberWithDouble:v7];
  v26[2] = v8;
  v25[3] = @"frameHeight";
  v9 = MEMORY[0x277CCABB0];
  [v3 bounds];
  v11 = [v9 numberWithDouble:v10];
  v26[3] = v11;
  v25[4] = @"scrollViewDecelerationRate";
  v12 = MEMORY[0x277CCABB0];
  [v3 decelerationRate];
  v13 = [v12 numberWithDouble:?];
  v26[4] = v13;
  v25[5] = @"machineConfiguration";
  v14 = [(ScrollPerfTestRunner *)self machineConfigInfo];
  v26[5] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:6];
  v27[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];

  if (v4)
  {
  }

  v17 = [(PageLoadTestRunner *)self outputFilename];

  if (v17)
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
      v21 = [(PageLoadTestRunner *)self outputFilename];
      v23 = 0;
      [v18 writeToFile:v21 options:0 error:&v23];
      v20 = v23;

      if (!v20)
      {

        goto LABEL_13;
      }

      v22 = [(PageLoadTestRunner *)self outputFilename];
      NSLog(@"Error writing output to file %@: %@", v22, v20);
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
  v3 = [(PageLoadTestRunner *)self outputFilename];
  [(PageLoadTestRunner *)self log:@"ScrollPerf Complete. Wrote data to %@", v3];
}

- (void)startingTestPage:(id)a3
{
  v4 = a3;
  v5 = [(ScrollPerfTestRunner *)self pageWebView];
  [v5 _setScrollPerformanceDataCollectionEnabled:1];

  v6.receiver = self;
  v6.super_class = ScrollPerfTestRunner;
  [(PageLoadTestRunner *)&v6 startingTestPage:v4];

  ++self->_pageIndex;
  self->_startLoadTime = CFAbsoluteTimeGetCurrent();
}

- (BOOL)performActionForPage:(id)a3
{
  v4 = a3;
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

- (CGPoint)touchPointForMoveIndex:(unint64_t)a3
{
  v3 = gestureOffsets[a3];
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
      v4 = [(ScrollPerfTestRunner *)self pageScrollView];
      [v4 contentOffset];
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
    v9 = [(ScrollPerfTestRunner *)self pageScrollView];
    v10 = [v9 isDecelerating];

    if ((v10 & 1) == 0)
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
  v11 = [(ScrollPerfTestRunner *)self pageScrollView];
  [v11 contentOffset];
  v4 = v3;
  [v11 bounds];
  v6 = v5;
  [v11 contentInset];
  v8 = v6 - v7;
  [v11 contentSize];
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
  v2 = [(ScrollPerfTestRunner *)self pageScrollView];
  [v2 bounds];
  v4 = v3;
  [v2 contentSize];
  v6 = v5 / v4 < 2.5;

  return v6;
}

- (BOOL)startPageAction:(id)a3
{
  v4 = a3;
  v5 = [(ScrollPerfTestRunner *)self pageScrollView];
  [v5 contentSize];
  [v4 setContentSizeAtPageLoad:?];

  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:142];
  framerateHistory = self->_framerateHistory;
  self->_framerateHistory = v6;

  self->_lastFramerateTime = 0.0;
  if ([(ScrollPerfTestRunner *)self isPageTooShortToScroll])
  {
    [v4 setTooShortToScroll:1];
    v8 = [(ScrollPerfTestRunner *)self outputDataForPage:v4];
    outputData = self->_outputData;
    v10 = [v4 URL];
    v11 = [v10 absoluteString];
    [(NSMutableDictionary *)outputData setObject:v8 forKeyedSubscript:v11];

    v12 = 0;
  }

  else
  {
    self->_scrollGestureCount = 0;
    v14.receiver = self;
    v14.super_class = ScrollPerfTestRunner;
    v12 = [(PageLoadTestRunner *)&v14 startPageAction:v4];
  }

  return v12;
}

- (void)finishPage:(id)a3 stats:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  self->_endLoadTime = CFAbsoluteTimeGetCurrent();
  v11.receiver = self;
  v11.super_class = ScrollPerfTestRunner;
  [(PageLoadTestRunner *)&v11 finishPage:v10 stats:v9 error:v8];
}

- (void)finishedTestPage:(id)a3
{
  v4 = a3;
  v5 = [(ScrollPerfTestRunner *)self outputDataForPage:v4];
  outputData = self->_outputData;
  v7 = [v4 URL];
  v8 = [v7 absoluteString];
  [(NSMutableDictionary *)outputData setObject:v5 forKeyedSubscript:v8];

  [(ScrollPerfTestRunner *)self writeOutputData];
  v9 = [(ScrollPerfTestRunner *)self pageWebView];
  [v9 _setScrollPerformanceDataCollectionEnabled:0];

  v10.receiver = self;
  v10.super_class = ScrollPerfTestRunner;
  [(PageLoadTestRunner *)&v10 finishedTestPage:v4];
}

- (id)finalStatusForPage:(id)a3
{
  v4 = a3;
  if ([v4 isTooShortToScroll])
  {
    v5 = @"PageTooShortToScroll";
  }

  else
  {
    v6 = [v4 status];
    if (v6 < 7 && ((0x4Fu >> v6) & 1) != 0)
    {
      v5 = off_2781D89A8[v6];
    }

    else
    {
      [v4 contentSizeAtPageLoad];
      v8 = v7;
      v10 = v9;
      v11 = [(ScrollPerfTestRunner *)self pageScrollView];
      [v11 contentSize];
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

- (id)outputDataForPage:(id)a3
{
  v31[13] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26 = [(ScrollPerfTestRunner *)self pageScrollView];
  v5 = [(ScrollPerfTestRunner *)self pageWebView];
  v6 = [v5 _scrollPerformanceData];

  v30[0] = @"url";
  v29 = [v4 URL];
  v28 = [v29 absoluteString];
  v31[0] = v28;
  v30[1] = @"order";
  v27 = [MEMORY[0x277CCABB0] numberWithInt:self->_pageIndex];
  v31[1] = v27;
  v30[2] = @"contentHeight";
  v7 = MEMORY[0x277CCABB0];
  [v26 contentSize];
  v25 = [v7 numberWithDouble:v8];
  v31[2] = v25;
  v30[3] = @"visibleContentHeight";
  v9 = MEMORY[0x277CCABB0];
  [v26 bounds];
  v11 = [v9 numberWithDouble:v10];
  v31[3] = v11;
  v30[4] = @"state";
  v12 = [(ScrollPerfTestRunner *)self finalStatusForPage:v4];
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
  [v4 framesPerSecond];
  v19 = v18;

  v20 = [v17 numberWithDouble:v19];
  v31[9] = v20;
  v31[10] = MEMORY[0x277CBEC28];
  v30[10] = @"watchdogTimerFired";
  v30[11] = @"scrollingEvents";
  framerateHistory = MEMORY[0x277CBEBF8];
  v30[12] = @"framerateHistory";
  if (v6)
  {
    v22 = v6;
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