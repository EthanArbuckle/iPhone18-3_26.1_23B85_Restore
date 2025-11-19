@interface ZoomAnimationTestProcessor
- (BOOL)performActionForPage:(id)a3;
- (BOOL)startPageAction:(id)a3;
- (ZoomAnimationTestProcessor)initWithTestName:(id)a3 browserController:(id)a4;
- (void)advanceTest;
- (void)dealloc;
- (void)resetZoom;
- (void)scrollViewDidEndZooming:(id)a3;
- (void)startZoom;
@end

@implementation ZoomAnimationTestProcessor

- (ZoomAnimationTestProcessor)initWithTestName:(id)a3 browserController:(id)a4
{
  v10.receiver = self;
  v10.super_class = ZoomAnimationTestProcessor;
  v4 = [(ContentInteractionTestRunner *)&v10 initWithTestName:a3 browserController:a4];
  v5 = v4;
  if (v4)
  {
    [(ZoomAnimationTestProcessor *)v4 setTestState:0];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v5 selector:sel_scrollViewWillBeginZooming_ name:@"ScrollViewWillBeginZoomingNotification" object:0];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v5 selector:sel_scrollViewDidEndZooming_ name:@"ScrollViewDidEndZoomingNotification" object:0];

    v8 = v5;
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ZoomAnimationTestProcessor;
  [(PageLoadTestRunner *)&v4 dealloc];
}

- (BOOL)startPageAction:(id)a3
{
  v4 = a3;
  [(ZoomAnimationTestProcessor *)self setTestState:1];
  [(ZoomAnimationTestProcessor *)self setTargetIndex:0];
  [(ZoomAnimationTestProcessor *)self setIterationsRemaining:[(ContentInteractionTestRunner *)self iterations]];
  v5 = [(ContentInteractionTestRunner *)self pageWebView];
  v6 = [v5 scrollView];

  [v6 zoomScale];
  [(ZoomAnimationTestProcessor *)self setInitialZoom:?];
  v8.receiver = self;
  v8.super_class = ZoomAnimationTestProcessor;
  LOBYTE(self) = [(ContentInteractionTestRunner *)&v8 startPageAction:v4];

  return self;
}

- (void)scrollViewDidEndZooming:(id)a3
{
  [(ContentInteractionTestRunner *)self stopSubtest:@"zooming"];
  [(ZoomAnimationTestProcessor *)self resetZoom];
  [(ZoomAnimationTestProcessor *)self setTestState:4];

  [(ZoomAnimationTestProcessor *)self advanceTest];
}

- (void)startZoom
{
  v3 = [(ContentInteractionTestRunner *)self pageWebView];
  v8 = [v3 scrollView];

  v4 = *MEMORY[0x277CBF348];
  [v8 contentSize];
  v6 = v5;
  v7 = (&zoomTargets + 32 * [(ZoomAnimationTestProcessor *)self targetIndex]);
  [v8 zoomToRect:1 animated:{v4 + v6 * v7[1] - v6 * v7[2] * 0.5, *v7 - v6 * v7[2] / v7[3] * 0.5}];
}

- (void)resetZoom
{
  v3 = [(ContentInteractionTestRunner *)self pageWebView];
  v4 = [v3 scrollView];

  [(ZoomAnimationTestProcessor *)self initialZoom];
  [v4 setZoomScale:?];
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

- (BOOL)performActionForPage:(id)a3
{
  if ([(ZoomAnimationTestProcessor *)self testState]== 1)
  {
    [(ZoomAnimationTestProcessor *)self advanceTest];
  }

  return [(ZoomAnimationTestProcessor *)self testState]!= 5;
}

@end