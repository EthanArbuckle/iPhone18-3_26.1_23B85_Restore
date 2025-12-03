@interface ScrollTestProcessor
- (BOOL)performActionForPage:(id)page;
- (BOOL)startPageAction:(id)action;
- (ScrollTestProcessor)initWithTestName:(id)name browserController:(id)controller;
@end

@implementation ScrollTestProcessor

- (ScrollTestProcessor)initWithTestName:(id)name browserController:(id)controller
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = ScrollTestProcessor;
  v7 = [(ContentInteractionTestRunner *)&v10 initWithTestName:nameCopy browserController:controller];
  if (v7)
  {
    -[ScrollTestProcessor setIsNatural:](v7, "setIsNatural:", [nameCopy hasSuffix:@"Natural"]);
    v8 = v7;
  }

  return v7;
}

- (BOOL)startPageAction:(id)action
{
  actionCopy = action;
  [(ScrollTestProcessor *)self setStartedScrollTest:0];
  [(ScrollTestProcessor *)self setEndedScrollTest:0];
  v6.receiver = self;
  v6.super_class = ScrollTestProcessor;
  LOBYTE(self) = [(ContentInteractionTestRunner *)&v6 startPageAction:actionCopy];

  return self;
}

- (BOOL)performActionForPage:(id)page
{
  pageWebView = [(ContentInteractionTestRunner *)self pageWebView];
  scrollView = [pageWebView scrollView];

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
      [scrollView _performNaturalScrollTest:0 completionHandler:v10];
    }

    else
    {
      iterations = [(ContentInteractionTestRunner *)self iterations];
      if ([(ScrollTestProcessor *)self scrollDelta])
      {
        scrollDelta = [(ScrollTestProcessor *)self scrollDelta];
      }

      else
      {
        scrollDelta = 10;
      }

      [scrollView _performScrollTest:0 iterations:iterations delta:scrollDelta];
    }

    [(ScrollTestProcessor *)self setStartedScrollTest:1];
  }

  if (!-[ScrollTestProcessor isNatural](self, "isNatural") && ([scrollView _isAnimatingScrollTest] & 1) == 0)
  {
    [(ScrollTestProcessor *)self setEndedScrollTest:1];
  }

  endedScrollTest = [(ScrollTestProcessor *)self endedScrollTest];
  if (endedScrollTest)
  {
    [(ContentInteractionTestRunner *)self endTrackingFrameRate];
  }

  return !endedScrollTest;
}

@end