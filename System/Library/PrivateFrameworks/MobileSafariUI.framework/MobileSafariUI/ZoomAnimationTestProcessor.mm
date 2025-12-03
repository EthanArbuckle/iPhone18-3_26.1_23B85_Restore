@interface ZoomAnimationTestProcessor
- (BOOL)performActionForPage:(id)page;
- (BOOL)startPageAction:(id)action;
- (ZoomAnimationTestProcessor)initWithTestName:(id)name browserController:(id)controller;
- (void)advanceTest;
- (void)dealloc;
- (void)resetZoom;
- (void)scrollViewDidEndZooming:(id)zooming;
- (void)startZoom;
@end

@implementation ZoomAnimationTestProcessor

- (ZoomAnimationTestProcessor)initWithTestName:(id)name browserController:(id)controller
{
  v10.receiver = self;
  v10.super_class = ZoomAnimationTestProcessor;
  v4 = [(ContentInteractionTestRunner *)&v10 initWithTestName:name browserController:controller];
  v5 = v4;
  if (v4)
  {
    [(ZoomAnimationTestProcessor *)v4 setTestState:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_scrollViewWillBeginZooming_ name:@"ScrollViewWillBeginZoomingNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v5 selector:sel_scrollViewDidEndZooming_ name:@"ScrollViewDidEndZoomingNotification" object:0];

    v8 = v5;
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ZoomAnimationTestProcessor;
  [(PageLoadTestRunner *)&v4 dealloc];
}

- (BOOL)startPageAction:(id)action
{
  actionCopy = action;
  [(ZoomAnimationTestProcessor *)self setTestState:1];
  [(ZoomAnimationTestProcessor *)self setTargetIndex:0];
  [(ZoomAnimationTestProcessor *)self setIterationsRemaining:[(ContentInteractionTestRunner *)self iterations]];
  pageWebView = [(ContentInteractionTestRunner *)self pageWebView];
  scrollView = [pageWebView scrollView];

  [scrollView zoomScale];
  [(ZoomAnimationTestProcessor *)self setInitialZoom:?];
  v8.receiver = self;
  v8.super_class = ZoomAnimationTestProcessor;
  LOBYTE(self) = [(ContentInteractionTestRunner *)&v8 startPageAction:actionCopy];

  return self;
}

- (void)scrollViewDidEndZooming:(id)zooming
{
  [(ContentInteractionTestRunner *)self stopSubtest:@"zooming"];
  [(ZoomAnimationTestProcessor *)self resetZoom];
  [(ZoomAnimationTestProcessor *)self setTestState:4];

  [(ZoomAnimationTestProcessor *)self advanceTest];
}

- (void)startZoom
{
  pageWebView = [(ContentInteractionTestRunner *)self pageWebView];
  scrollView = [pageWebView scrollView];

  v4 = *MEMORY[0x277CBF348];
  [scrollView contentSize];
  v6 = v5;
  v7 = (&zoomTargets + 32 * [(ZoomAnimationTestProcessor *)self targetIndex]);
  [scrollView zoomToRect:1 animated:{v4 + v6 * v7[1] - v6 * v7[2] * 0.5, *v7 - v6 * v7[2] / v7[3] * 0.5}];
}

- (void)resetZoom
{
  pageWebView = [(ContentInteractionTestRunner *)self pageWebView];
  scrollView = [pageWebView scrollView];

  [(ZoomAnimationTestProcessor *)self initialZoom];
  [scrollView setZoomScale:?];
}

- (void)advanceTest
{
  if ([(ZoomAnimationTestProcessor *)self testState]== 1)
  {
    [(ContentInteractionTestRunner *)self startTrackingFrameRate];
LABEL_3:
    [(ZoomAnimationTestProcessor *)self setTestState:2];

    [(ZoomAnimationTestProcessor *)self advanceTest];
    return;
  }

  if ([(ZoomAnimationTestProcessor *)self testState]== 2)
  {
    [(ZoomAnimationTestProcessor *)self startZoom];

    [(ZoomAnimationTestProcessor *)self setTestState:3];
  }

  else
  {
    if ([(ZoomAnimationTestProcessor *)self testState]!= 4)
    {
      return;
    }

    [(ZoomAnimationTestProcessor *)self setTargetIndex:[(ZoomAnimationTestProcessor *)self targetIndex]+ 1];
    if ([(ZoomAnimationTestProcessor *)self targetIndex]!= 3)
    {
      goto LABEL_3;
    }

    [(ZoomAnimationTestProcessor *)self setTargetIndex:0];
    v3 = [(ZoomAnimationTestProcessor *)self iterationsRemaining]- 1;
    [(ZoomAnimationTestProcessor *)self setIterationsRemaining:v3];
    if (v3)
    {
      goto LABEL_3;
    }

    [(ZoomAnimationTestProcessor *)self setTestState:5];

    [(ContentInteractionTestRunner *)self endTrackingFrameRate];
  }
}

- (BOOL)performActionForPage:(id)page
{
  if ([(ZoomAnimationTestProcessor *)self testState]== 1)
  {
    [(ZoomAnimationTestProcessor *)self advanceTest];
  }

  return [(ZoomAnimationTestProcessor *)self testState]!= 5;
}

@end