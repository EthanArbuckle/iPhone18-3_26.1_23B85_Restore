@interface ContentAnimationTestRunner
- (BOOL)performActionForPage:(id)a3;
- (BOOL)startPageAction:(id)a3;
- (ContentAnimationTestRunner)initWithTestName:(id)a3 browserController:(id)a4;
- (id)finalStatusForPage:(id)a3;
- (id)outputDataForPage:(id)a3;
- (void)finishedTestPage:(id)a3;
- (void)finishedTestRunner;
- (void)writeOutputData;
@end

@implementation ContentAnimationTestRunner

- (ContentAnimationTestRunner)initWithTestName:(id)a3 browserController:(id)a4
{
  v9.receiver = self;
  v9.super_class = ContentAnimationTestRunner;
  v4 = [(PurplePageLoadTestRunner *)&v9 initWithTestName:a3 browserController:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    outputData = v4->_outputData;
    v4->_outputData = v5;

    [(PageLoadTestRunner *)v4 setResetsZoomBetweenPages:0];
    v7 = v4;
  }

  return v4;
}

- (BOOL)startPageAction:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 date];
  [v5 startRenderTime:v6];

  v8.receiver = self;
  v8.super_class = ContentAnimationTestRunner;
  LOBYTE(self) = [(PageLoadTestRunner *)&v8 startPageAction:v5];

  return self;
}

- (BOOL)performActionForPage:(id)a3
{
  v3 = [(PageLoadTestRunner *)self browserController];
  v4 = [v3 tabController];
  v5 = [v4 activeTabDocument];

  v6 = [v5 URL];
  v7 = [v6 fragment];
  v8 = [v7 isEqualToString:@"done"];

  return v8 ^ 1;
}

- (void)finishedTestPage:(id)a3
{
  v4 = a3;
  v5 = [(ContentAnimationTestRunner *)self outputDataForPage:v4];
  outputData = self->_outputData;
  v7 = [v4 URL];
  v8 = [v7 lastPathComponent];
  [(NSMutableDictionary *)outputData setObject:v5 forKeyedSubscript:v8];

  v9.receiver = self;
  v9.super_class = ContentAnimationTestRunner;
  [(PageLoadTestRunner *)&v9 finishedTestPage:v4];
}

- (id)finalStatusForPage:(id)a3
{
  v3 = [a3 status];
  if (v3 > 6)
  {
    return @"Finished";
  }

  else
  {
    return off_2781D8080[v3];
  }
}

- (id)outputDataForPage:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"substitutions";
  v7[1] = @"framerate";
  v8[0] = &unk_2827FC5B0;
  v3 = MEMORY[0x277CCABB0];
  [a3 framesPerSecond];
  v4 = [v3 numberWithDouble:?];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (void)writeOutputData
{
  v3 = [(PageLoadTestRunner *)self outputFilename];

  if (!v3)
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

  v8 = [(PageLoadTestRunner *)self outputFilename];
  v10 = 0;
  [v5 writeToFile:v8 options:0 error:&v10];
  v7 = v10;

  if (v7)
  {
    v9 = [(PageLoadTestRunner *)self outputFilename];
    NSLog(@"Error writing output to file %@: %@", v9, v7);

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
  v3 = [(PageLoadTestRunner *)self outputFilename];
  [(PageLoadTestRunner *)self log:@"Animation Complete. Wrote data to %@", v3];

  v4 = [(PageLoadTestRunner *)self browserController];
  v5 = [v4 tabController];
  v6 = [v5 activeTabDocument];

  v7 = MEMORY[0x277CCACE0];
  v8 = [v6 URL];
  v9 = [v7 componentsWithURL:v8 resolvingAgainstBaseURL:0];

  [v9 setFragment:@"submit"];
  v10 = [v9 URL];
  v11 = [v6 loadURL:v10 userDriven:0];
}

@end