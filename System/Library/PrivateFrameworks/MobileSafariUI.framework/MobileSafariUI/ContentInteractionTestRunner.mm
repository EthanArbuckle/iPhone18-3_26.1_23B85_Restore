@interface ContentInteractionTestRunner
- (BOOL)startPageAction:(id)action;
- (ContentInteractionTestRunner)initWithTestName:(id)name browserController:(id)controller;
- (id)pageWebView;
- (void)endTrackingFrameRate;
- (void)startSubtest:(id)subtest;
- (void)startTrackingFrameRate;
- (void)stopSubtest:(id)subtest;
@end

@implementation ContentInteractionTestRunner

- (ContentInteractionTestRunner)initWithTestName:(id)name browserController:(id)controller
{
  v7.receiver = self;
  v7.super_class = ContentInteractionTestRunner;
  v4 = [(PageLoadTestRunner *)&v7 initWithTestName:name browserController:controller];
  v5 = v4;
  if (v4)
  {
    [(PageLoadTestRunner *)v4 setPageActionInterval:0.0166666667];
  }

  return v5;
}

- (id)pageWebView
{
  browserController = [(PageLoadTestRunner *)self browserController];
  tabController = [browserController tabController];
  activeTabDocument = [tabController activeTabDocument];
  webView = [activeTabDocument webView];

  return webView;
}

- (BOOL)startPageAction:(id)action
{
  actionCopy = action;
  if (![(ContentInteractionTestRunner *)self iterations])
  {
    [(ContentInteractionTestRunner *)self setIterations:5];
  }

  v7.receiver = self;
  v7.super_class = ContentInteractionTestRunner;
  v5 = [(PageLoadTestRunner *)&v7 startPageAction:actionCopy];

  return v5;
}

- (void)startTrackingFrameRate
{
  v2 = *MEMORY[0x277D76620];
  testName = [(PageLoadTestRunner *)self testName];
  [v2 startedTest:testName];
}

- (void)endTrackingFrameRate
{
  v2 = *MEMORY[0x277D76620];
  testName = [(PageLoadTestRunner *)self testName];
  [v2 finishedTest:testName];
}

- (void)startSubtest:(id)subtest
{
  v4 = *MEMORY[0x277D76620];
  subtestCopy = subtest;
  testName = [(PageLoadTestRunner *)self testName];
  [v4 startedSubTest:subtestCopy forTest:testName];
}

- (void)stopSubtest:(id)subtest
{
  v4 = *MEMORY[0x277D76620];
  subtestCopy = subtest;
  testName = [(PageLoadTestRunner *)self testName];
  [v4 finishedSubTest:subtestCopy forTest:testName];
}

@end