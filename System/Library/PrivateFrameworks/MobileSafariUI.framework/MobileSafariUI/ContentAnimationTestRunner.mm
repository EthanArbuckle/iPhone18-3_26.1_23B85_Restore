@interface ContentAnimationTestRunner
- (BOOL)performActionForPage:(id)page;
- (BOOL)startPageAction:(id)action;
- (ContentAnimationTestRunner)initWithTestName:(id)name browserController:(id)controller;
- (id)finalStatusForPage:(id)page;
- (id)outputDataForPage:(id)page;
- (void)finishedTestPage:(id)page;
- (void)finishedTestRunner;
- (void)writeOutputData;
@end

@implementation ContentAnimationTestRunner

- (ContentAnimationTestRunner)initWithTestName:(id)name browserController:(id)controller
{
  v9.receiver = self;
  v9.super_class = ContentAnimationTestRunner;
  v4 = [(PurplePageLoadTestRunner *)&v9 initWithTestName:name browserController:controller];
  if (v4)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    outputData = v4->_outputData;
    v4->_outputData = dictionary;

    [(PageLoadTestRunner *)v4 setResetsZoomBetweenPages:0];
    v7 = v4;
  }

  return v4;
}

- (BOOL)startPageAction:(id)action
{
  v4 = MEMORY[0x277CBEAA8];
  actionCopy = action;
  date = [v4 date];
  [actionCopy startRenderTime:date];

  v8.receiver = self;
  v8.super_class = ContentAnimationTestRunner;
  LOBYTE(self) = [(PageLoadTestRunner *)&v8 startPageAction:actionCopy];

  return self;
}

- (BOOL)performActionForPage:(id)page
{
  browserController = [(PageLoadTestRunner *)self browserController];
  tabController = [browserController tabController];
  activeTabDocument = [tabController activeTabDocument];

  v6 = [activeTabDocument URL];
  fragment = [v6 fragment];
  v8 = [fragment isEqualToString:@"done"];

  return v8 ^ 1;
}

- (void)finishedTestPage:(id)page
{
  pageCopy = page;
  v5 = [(ContentAnimationTestRunner *)self outputDataForPage:pageCopy];
  outputData = self->_outputData;
  v7 = [pageCopy URL];
  lastPathComponent = [v7 lastPathComponent];
  [(NSMutableDictionary *)outputData setObject:v5 forKeyedSubscript:lastPathComponent];

  v9.receiver = self;
  v9.super_class = ContentAnimationTestRunner;
  [(PageLoadTestRunner *)&v9 finishedTestPage:pageCopy];
}

- (id)finalStatusForPage:(id)page
{
  status = [page status];
  if (status > 6)
  {
    return @"Finished";
  }

  else
  {
    return off_2781D8080[status];
  }
}

- (id)outputDataForPage:(id)page
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"substitutions";
  v7[1] = @"framerate";
  v8[0] = &unk_2827FC5B0;
  v3 = MEMORY[0x277CCABB0];
  [page framesPerSecond];
  v4 = [v3 numberWithDouble:?];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (void)writeOutputData
{
  outputFilename = [(PageLoadTestRunner *)self outputFilename];

  if (!outputFilename)
  {
    NSLog(@"ContentAnimation results: %@", self->_outputData);
    return;
  }

  outputData = self->_outputData;
  v11 = 0;
  v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:outputData options:0 error:&v11];
  v6 = v11;
  if (v6)
  {
    v7 = v6;
    NSLog(@"Error while serializing Scrolling Performance Test results: %@", v6);
LABEL_7:

    goto LABEL_8;
  }

  outputFilename2 = [(PageLoadTestRunner *)self outputFilename];
  v10 = 0;
  [v5 writeToFile:outputFilename2 options:0 error:&v10];
  v7 = v10;

  if (v7)
  {
    outputFilename3 = [(PageLoadTestRunner *)self outputFilename];
    NSLog(@"Error writing output to file %@: %@", outputFilename3, v7);

    goto LABEL_7;
  }

LABEL_8:
}

- (void)finishedTestRunner
{
  [(ContentAnimationTestRunner *)self writeOutputData];
  v12.receiver = self;
  v12.super_class = ContentAnimationTestRunner;
  [(PurplePageLoadTestRunner *)&v12 finishedTestRunner];
  outputFilename = [(PageLoadTestRunner *)self outputFilename];
  [(PageLoadTestRunner *)self log:@"Animation Complete. Wrote data to %@", outputFilename];

  browserController = [(PageLoadTestRunner *)self browserController];
  tabController = [browserController tabController];
  activeTabDocument = [tabController activeTabDocument];

  v7 = MEMORY[0x277CCACE0];
  v8 = [activeTabDocument URL];
  v9 = [v7 componentsWithURL:v8 resolvingAgainstBaseURL:0];

  [v9 setFragment:@"submit"];
  v10 = [v9 URL];
  v11 = [activeTabDocument loadURL:v10 userDriven:0];
}

@end