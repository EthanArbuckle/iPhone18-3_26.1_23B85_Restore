@interface ContentInteractionTestRunner
- (BOOL)startPageAction:(id)a3;
- (ContentInteractionTestRunner)initWithTestName:(id)a3 browserController:(id)a4;
- (id)pageWebView;
- (void)endTrackingFrameRate;
- (void)startSubtest:(id)a3;
- (void)startTrackingFrameRate;
- (void)stopSubtest:(id)a3;
@end

@implementation ContentInteractionTestRunner

- (ContentInteractionTestRunner)initWithTestName:(id)a3 browserController:(id)a4
{
  v7.receiver = self;
  v7.super_class = ContentInteractionTestRunner;
  v4 = [(PageLoadTestRunner *)&v7 initWithTestName:a3 browserController:a4];
  v5 = v4;
  if (v4)
  {
    [(PageLoadTestRunner *)v4 setPageActionInterval:0.0166666667];
  }

  return v5;
}

- (id)pageWebView
{
  v2 = [(PageLoadTestRunner *)self browserController];
  v3 = [v2 tabController];
  v4 = [v3 activeTabDocument];
  v5 = [v4 webView];

  return v5;
}

- (BOOL)startPageAction:(id)a3
{
  v4 = a3;
  if (![(ContentInteractionTestRunner *)self iterations])
  {
    [(ContentInteractionTestRunner *)self setIterations:5];
  }

  v7.receiver = self;
  v7.super_class = ContentInteractionTestRunner;
  v5 = [(PageLoadTestRunner *)&v7 startPageAction:v4];

  return v5;
}

- (void)startTrackingFrameRate
{
  v2 = *MEMORY[0x277D76620];
  v3 = [(PageLoadTestRunner *)self testName];
  [v2 startedTest:v3];
}

- (void)endTrackingFrameRate
{
  v2 = *MEMORY[0x277D76620];
  v3 = [(PageLoadTestRunner *)self testName];
  [v2 finishedTest:v3];
}

- (void)startSubtest:(id)a3
{
  v4 = *MEMORY[0x277D76620];
  v5 = a3;
  v6 = [(PageLoadTestRunner *)self testName];
  [v4 startedSubTest:v5 forTest:v6];
}

- (void)stopSubtest:(id)a3
{
  v4 = *MEMORY[0x277D76620];
  v5 = a3;
  v6 = [(PageLoadTestRunner *)self testName];
  [v4 finishedSubTest:v5 forTest:v6];
}

@end