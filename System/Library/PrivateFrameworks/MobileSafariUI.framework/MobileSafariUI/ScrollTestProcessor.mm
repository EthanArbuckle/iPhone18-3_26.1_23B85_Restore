@interface ScrollTestProcessor
- (BOOL)performActionForPage:(id)a3;
- (BOOL)startPageAction:(id)a3;
- (ScrollTestProcessor)initWithTestName:(id)a3 browserController:(id)a4;
@end

@implementation ScrollTestProcessor

- (ScrollTestProcessor)initWithTestName:(id)a3 browserController:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = ScrollTestProcessor;
  v7 = [(ContentInteractionTestRunner *)&v10 initWithTestName:v6 browserController:a4];
  if (v7)
  {
    -[ScrollTestProcessor setIsNatural:](v7, "setIsNatural:", [v6 hasSuffix:@"Natural"]);
    v8 = v7;
  }

  return v7;
}

- (BOOL)startPageAction:(id)a3
{
  v4 = a3;
  [(ScrollTestProcessor *)self setStartedScrollTest:0];
  [(ScrollTestProcessor *)self setEndedScrollTest:0];
  v6.receiver = self;
  v6.super_class = ScrollTestProcessor;
  LOBYTE(self) = [(ContentInteractionTestRunner *)&v6 startPageAction:v4];

  return self;
}

- (BOOL)performActionForPage:(id)a3
{
  v4 = [(ContentInteractionTestRunner *)self pageWebView];
  v5 = [v4 scrollView];

  if (![(ScrollTestProcessor *)self startedScrollTest])
  {
    [(ContentInteractionTestRunner *)self startTrackingFrameRate];
    if ([(ScrollTestProcessor *)self isNatural])
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __44__ScrollTestProcessor_performActionForPage___block_invoke;
      v10[3] = &unk_2781D4D40;
      v10[4] = self;
      [v5 _performNaturalScrollTest:0 completionHandler:v10];
    }

    else
    {
      v6 = [(ContentInteractionTestRunner *)self iterations];
      if ([(ScrollTestProcessor *)self scrollDelta])
      {
        v7 = [(ScrollTestProcessor *)self scrollDelta];
      }

      else
      {
        v7 = 10;
      }

      [v5 _performScrollTest:0 iterations:v6 delta:v7];
    }

    [(ScrollTestProcessor *)self setStartedScrollTest:1];
  }

  if (!-[ScrollTestProcessor isNatural](self, "isNatural") && ([v5 _isAnimatingScrollTest] & 1) == 0)
  {
    [(ScrollTestProcessor *)self setEndedScrollTest:1];
  }

  v8 = [(ScrollTestProcessor *)self endedScrollTest];
  if (v8)
  {
    [(ContentInteractionTestRunner *)self endTrackingFrameRate];
  }

  return !v8;
}

@end