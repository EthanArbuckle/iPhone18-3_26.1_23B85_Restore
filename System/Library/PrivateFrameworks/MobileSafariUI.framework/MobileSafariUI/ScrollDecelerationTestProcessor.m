@interface ScrollDecelerationTestProcessor
- (BOOL)performActionForPage:(id)a3;
- (BOOL)startPageAction:(id)a3;
- (ScrollDecelerationTestProcessor)initWithTestName:(id)a3 browserController:(id)a4;
@end

@implementation ScrollDecelerationTestProcessor

- (ScrollDecelerationTestProcessor)initWithTestName:(id)a3 browserController:(id)a4
{
  v8.receiver = self;
  v8.super_class = ScrollDecelerationTestProcessor;
  v4 = [(ContentInteractionTestRunner *)&v8 initWithTestName:a3 browserController:a4];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  return v5;
}

- (BOOL)startPageAction:(id)a3
{
  v4 = a3;
  [(ScrollDecelerationTestProcessor *)self setIterationsRemaining:[(ContentInteractionTestRunner *)self iterations]];
  [(ScrollDecelerationTestProcessor *)self setState:0];
  v6.receiver = self;
  v6.super_class = ScrollDecelerationTestProcessor;
  LOBYTE(self) = [(ContentInteractionTestRunner *)&v6 startPageAction:v4];

  return self;
}

- (BOOL)performActionForPage:(id)a3
{
  v4 = [(ScrollDecelerationTestProcessor *)self state];
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        v6 = [(ContentInteractionTestRunner *)self pageWebView];
        v7 = [v6 scrollView];

        [v7 setContentOffset:0 animated:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __56__ScrollDecelerationTestProcessor_performActionForPage___block_invoke;
        v14[3] = &unk_2781D4D40;
        v14[4] = self;
        [v7 _simulateScrollWithTranslation:0 duration:0 willBeginDragging:0 didEndDragging:v14 willBeginDecelerating:0.0 didEndDecelerating:{1000.0, 0.25}];
        [(ScrollDecelerationTestProcessor *)self setState:2];
      }
    }

    else
    {
      [(ScrollDecelerationTestProcessor *)self setState:1];
      [(ContentInteractionTestRunner *)self startTrackingFrameRate];
    }
  }

  else
  {
    switch(v4)
    {
      case 3:
        v8 = [(ContentInteractionTestRunner *)self pageWebView];
        v9 = [v8 scrollView];

        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __56__ScrollDecelerationTestProcessor_performActionForPage___block_invoke_2;
        v13[3] = &unk_2781D4D40;
        v13[4] = self;
        [v9 _simulateScrollWithTranslation:0 duration:0 willBeginDragging:0 didEndDragging:v13 willBeginDecelerating:0.0 didEndDecelerating:{-1000.0, 0.25}];
        [(ScrollDecelerationTestProcessor *)self setState:2];

        break;
      case 4:
        v10 = [(ScrollDecelerationTestProcessor *)self iterationsRemaining]- 1;
        [(ScrollDecelerationTestProcessor *)self setIterationsRemaining:v10];
        if (v10)
        {
          v11 = self;
          v12 = 0;
        }

        else
        {
          [(ContentInteractionTestRunner *)self endTrackingFrameRate];
          v11 = self;
          v12 = 5;
        }

        [(ScrollDecelerationTestProcessor *)v11 setState:v12];
        break;
      case 5:
        return 0;
    }
  }

  return 1;
}

@end