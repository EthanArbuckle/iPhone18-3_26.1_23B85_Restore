@interface ZoomTestProcessor
- (BOOL)performActionForPage:(id)a3;
- (BOOL)startPageAction:(id)a3;
- (BOOL)updateWithNewScale;
- (ZoomTestProcessor)initWithTestName:(id)a3 browserController:(id)a4;
- (void)startZoomingTest;
- (void)zoomTestStep;
@end

@implementation ZoomTestProcessor

- (ZoomTestProcessor)initWithTestName:(id)a3 browserController:(id)a4
{
  v8.receiver = self;
  v8.super_class = ZoomTestProcessor;
  v4 = [(ContentInteractionTestRunner *)&v8 initWithTestName:a3 browserController:a4];
  v5 = v4;
  if (v4)
  {
    [(ZoomTestProcessor *)v4 setTestState:0];
    v6 = v5;
  }

  return v5;
}

- (BOOL)startPageAction:(id)a3
{
  v4 = a3;
  if (![(ZoomTestProcessor *)self stepsPerZoom])
  {
    [(ZoomTestProcessor *)self setStepsPerZoom:50];
  }

  [(ZoomTestProcessor *)self setTestState:1];
  v7.receiver = self;
  v7.super_class = ZoomTestProcessor;
  v5 = [(ContentInteractionTestRunner *)&v7 startPageAction:v4];

  return v5;
}

- (BOOL)updateWithNewScale
{
  v3 = [(ContentInteractionTestRunner *)self pageWebView];
  v4 = [v3 scrollView];

  [v4 minimumZoomScale];
  v6 = v5;
  [v4 maximumZoomScale];
  v8 = v7;
  [v4 zoomScale];
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

  [v4 setZoomScale:v12];
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

  v3 = [(ZoomTestProcessor *)self iterationsRemaining];
  v4 = [(ZoomTestProcessor *)self displayLink];
  v5 = v4;
  if (v3)
  {

    if (!v5)
    {

      [(ZoomTestProcessor *)self performSelector:sel_zoomTestStep withObject:0 afterDelay:0.0];
    }
  }

  else
  {
    [v4 invalidate];

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

    v5 = [(ZoomTestProcessor *)self displayLink];
    v6 = [MEMORY[0x277CBEB88] mainRunLoop];
    [v5 addToRunLoop:v6 forMode:*MEMORY[0x277CBE738]];
  }

  v7 = [(ZoomTestProcessor *)self displayLink];

  if (!v7)
  {

    [(ZoomTestProcessor *)self performSelector:sel_zoomTestStep withObject:0 afterDelay:0.0];
  }
}

- (BOOL)performActionForPage:(id)a3
{
  if ([(ZoomTestProcessor *)self testState]== 1)
  {
    [(ZoomTestProcessor *)self startZoomingTest];
    [(ZoomTestProcessor *)self setTestState:2];
  }

  return [(ZoomTestProcessor *)self testState]!= 3;
}

@end