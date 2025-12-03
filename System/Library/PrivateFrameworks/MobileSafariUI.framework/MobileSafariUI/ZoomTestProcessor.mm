@interface ZoomTestProcessor
- (BOOL)performActionForPage:(id)page;
- (BOOL)startPageAction:(id)action;
- (BOOL)updateWithNewScale;
- (ZoomTestProcessor)initWithTestName:(id)name browserController:(id)controller;
- (void)startZoomingTest;
- (void)zoomTestStep;
@end

@implementation ZoomTestProcessor

- (ZoomTestProcessor)initWithTestName:(id)name browserController:(id)controller
{
  v8.receiver = self;
  v8.super_class = ZoomTestProcessor;
  v4 = [(ContentInteractionTestRunner *)&v8 initWithTestName:name browserController:controller];
  v5 = v4;
  if (v4)
  {
    [(ZoomTestProcessor *)v4 setTestState:0];
    v6 = v5;
  }

  return v5;
}

- (BOOL)startPageAction:(id)action
{
  actionCopy = action;
  if (![(ZoomTestProcessor *)self stepsPerZoom])
  {
    [(ZoomTestProcessor *)self setStepsPerZoom:50];
  }

  [(ZoomTestProcessor *)self setTestState:1];
  v7.receiver = self;
  v7.super_class = ZoomTestProcessor;
  v5 = [(ContentInteractionTestRunner *)&v7 startPageAction:actionCopy];

  return v5;
}

- (BOOL)updateWithNewScale
{
  pageWebView = [(ContentInteractionTestRunner *)self pageWebView];
  scrollView = [pageWebView scrollView];

  [scrollView minimumZoomScale];
  v6 = v5;
  [scrollView maximumZoomScale];
  v8 = v7;
  [scrollView zoomScale];
  v10 = v9;
  v11 = (v8 - v6) / [(ZoomTestProcessor *)self stepsPerZoom];
  if ([(ZoomTestProcessor *)self zoomingIn])
  {
    v12 = v10 + v11;
    if (v10 + v11 > v8)
    {
      [(ZoomTestProcessor *)self setZoomingIn:0, v12];
LABEL_7:
      v13 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v12 = v10 - v11;
    if (v10 - v11 < v6)
    {
      [(ZoomTestProcessor *)self setZoomingIn:1, v12];
      [(ZoomTestProcessor *)self setIterationsRemaining:[(ZoomTestProcessor *)self iterationsRemaining]- 1];
      goto LABEL_7;
    }
  }

  [scrollView setZoomScale:v12];
  v13 = 1;
LABEL_8:

  return v13;
}

- (void)zoomTestStep
{
  if (![(ZoomTestProcessor *)self didFirstZoomStep])
  {
    [(ContentInteractionTestRunner *)self startTrackingFrameRate];
    [(ZoomTestProcessor *)self setDidFirstZoomStep:1];
  }

    ;
  }

  iterationsRemaining = [(ZoomTestProcessor *)self iterationsRemaining];
  displayLink = [(ZoomTestProcessor *)self displayLink];
  v5 = displayLink;
  if (iterationsRemaining)
  {

    if (!v5)
    {

      [(ZoomTestProcessor *)self performSelector:sel_zoomTestStep withObject:0 afterDelay:0.0];
    }
  }

  else
  {
    [displayLink invalidate];

    [(ZoomTestProcessor *)self setTestState:3];

    [(ContentInteractionTestRunner *)self endTrackingFrameRate];
  }
}

- (void)startZoomingTest
{
  [(ZoomTestProcessor *)self setIterationsRemaining:[(ContentInteractionTestRunner *)self iterations]];
  [(ZoomTestProcessor *)self setZoomingIn:1];
  v3 = getenv("CA_BENCHMARK");
  if (!v3 || *v3 != 49 || v3[1])
  {
    v4 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel_zoomTestStep];
    [(ZoomTestProcessor *)self setDisplayLink:v4];

    displayLink = [(ZoomTestProcessor *)self displayLink];
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [displayLink addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];
  }

  displayLink2 = [(ZoomTestProcessor *)self displayLink];

  if (!displayLink2)
  {

    [(ZoomTestProcessor *)self performSelector:sel_zoomTestStep withObject:0 afterDelay:0.0];
  }
}

- (BOOL)performActionForPage:(id)page
{
  if ([(ZoomTestProcessor *)self testState]== 1)
  {
    [(ZoomTestProcessor *)self startZoomingTest];
    [(ZoomTestProcessor *)self setTestState:2];
  }

  return [(ZoomTestProcessor *)self testState]!= 3;
}

@end