@interface PurplePageLoadTestRunner
- (PurplePageLoadTestRunner)initWithTestName:(id)name browserController:(id)controller;
- (id)initRenderTestWithName:(id)name browserController:(id)controller showRenderTime:(BOOL)time showFPS:(BOOL)s;
- (void)collectPPTResults;
- (void)finishedTestRunner;
- (void)finishedTestRunnerIteration;
- (void)pptResultFor:(id)for measure:(id)measure value:(double)value units:(id)units;
- (void)startingTestRunner;
- (void)writeOutputData;
@end

@implementation PurplePageLoadTestRunner

- (PurplePageLoadTestRunner)initWithTestName:(id)name browserController:(id)controller
{
  v10.receiver = self;
  v10.super_class = PurplePageLoadTestRunner;
  v4 = [(PageLoadTestRunner *)&v10 initWithTestName:name browserController:controller];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:50];
    pptResults = v4->_pptResults;
    v4->_pptResults = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    iterationResults = v4->_iterationResults;
    v4->_iterationResults = v7;

    v4->_showLoadTime = 1;
    v4->_showFirstVisualLayoutTime = 0;
    v4->_showRenderTime = 0;
    v4->_showRenderFps = 0;
  }

  return v4;
}

- (id)initRenderTestWithName:(id)name browserController:(id)controller showRenderTime:(BOOL)time showFPS:(BOOL)s
{
  v8 = [(PurplePageLoadTestRunner *)self initWithTestName:name browserController:controller];
  v9 = v8;
  if (v8)
  {
    v8->_showLoadTime = 0;
    v8->_showRenderTime = time;
    v8->_showRenderFps = s;
    [(PageLoadTestRunner *)v8 setPageActionInterval:0.0166666667];
  }

  return v9;
}

- (void)startingTestRunner
{
  v5.receiver = self;
  v5.super_class = PurplePageLoadTestRunner;
  [(PageLoadTestRunner *)&v5 startingTestRunner];
  v3 = *MEMORY[0x277D76620];
  testName = [(PageLoadTestRunner *)self testName];
  [v3 startedTest:testName];
}

- (void)finishedTestRunnerIteration
{
  [(PurplePageLoadTestRunner *)self collectPPTResults];
  v3.receiver = self;
  v3.super_class = PurplePageLoadTestRunner;
  [(PageLoadTestRunner *)&v3 finishedTestRunnerIteration];
}

- (void)finishedTestRunner
{
  [(PurplePageLoadTestRunner *)self writeOutputData];
  v3 = *MEMORY[0x277D76620];
  testName = [(PageLoadTestRunner *)self testName];
  [v3 finishedTest:testName extraResults:self->_pptResults];

  v5.receiver = self;
  v5.super_class = PurplePageLoadTestRunner;
  [(PageLoadTestRunner *)&v5 finishedTestRunner];
}

- (void)pptResultFor:(id)for measure:(id)measure value:(double)value units:(id)units
{
  measureCopy = measure;
  unitsCopy = units;
  v11 = [for description];
  v12 = v11;
  if (measureCopy)
  {
    measureCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v11, measureCopy];

    v12 = measureCopy;
  }

  pptResults = self->_pptResults;
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:value];
  [(NSMutableDictionary *)pptResults setValue:v15 forKey:v12];

  if (unitsCopy)
  {
    v16 = self->_pptResults;
    v17 = [v12 stringByAppendingString:@"Units"];
    [(NSMutableDictionary *)v16 setValue:unitsCopy forKey:v17];
  }
}

- (void)collectPPTResults
{
  v80 = *MEMORY[0x277D85DE8];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v3 = [(NSMutableArray *)self->super._pageLoadArray objectAtIndexedSubscript:self->super._currentTestIteration];
  v4 = &OBJC_IVAR___SFHistoryViewDataSource__filteringQueue;
  v5 = &OBJC_IVAR___SFHistoryViewDataSource__filteringQueue;
  v74 = [v3 countByEnumeratingWithState:&v75 objects:v79 count:16];
  v6 = 0;
  if (v74)
  {
    v70 = 0;
    v71 = 0;
    v7 = 0;
    v73 = *v76;
    v8 = 1.0;
    v9 = 0.0;
    v10 = 0.0;
    v69 = 0.0;
    v11 = 0.0;
    while (1)
    {
      for (i = 0; i != v74; ++i)
      {
        if (*v76 != v73)
        {
          objc_enumerationMutation(v3);
        }

        v13 = *(*(&v75 + 1) + 8 * i);
        if ([v13 status] != 5)
        {
          goto LABEL_26;
        }

        if (self->_showLoadTime)
        {
          endLoadDate = [v13 endLoadDate];
          if (!endLoadDate)
          {
            goto LABEL_26;
          }

          v15 = endLoadDate;
          webContentProcessStartLoadDate = [v13 webContentProcessStartLoadDate];

          if (!webContentProcessStartLoadDate)
          {
            goto LABEL_26;
          }

          endLoadDate2 = [v13 endLoadDate];
          webContentProcessStartLoadDate2 = [v13 webContentProcessStartLoadDate];
          [endLoadDate2 timeIntervalSinceDate:webContentProcessStartLoadDate2];
          v20 = v19;

          ++v6;
          v11 = v11 + v20;
          v9 = v9 + sqrt(v20 * 1000.0);
          v8 = v8 * (v20 * 1000.0);
          v21 = [v13 URL];
          [(PurplePageLoadTestRunner *)self pptResultFor:v21 measure:0 time:v20];
        }

        if (self->super._measureTime)
        {
          endLoadDate3 = [v13 endLoadDate];
          if (!endLoadDate3)
          {
            goto LABEL_26;
          }

          v23 = endLoadDate3;
          uiProcessStartDate = [v13 uiProcessStartDate];

          if (!uiProcessStartDate)
          {
            goto LABEL_26;
          }

          endLoadDate4 = [v13 endLoadDate];
          uiProcessStartDate2 = [v13 uiProcessStartDate];
          [endLoadDate4 timeIntervalSinceDate:uiProcessStartDate2];
          v28 = v27;

          v29 = [v13 URL];
          [(PurplePageLoadTestRunner *)self pptResultFor:v29 measure:@"loadTimeFromUI" time:v28];

          if (self->super._version >= 5)
          {
            domContentLoadedDate = [v13 domContentLoadedDate];
            uiProcessStartDate3 = [v13 uiProcessStartDate];
            [domContentLoadedDate timeIntervalSinceDate:uiProcessStartDate3];
            v33 = v32;

            firstMeaningfulPaintDate = [v13 firstMeaningfulPaintDate];
            uiProcessStartDate4 = [v13 uiProcessStartDate];
            [firstMeaningfulPaintDate timeIntervalSinceDate:uiProcessStartDate4];
            v37 = v36;

            allSubresourcesLoadedDate = [v13 allSubresourcesLoadedDate];
            uiProcessStartDate5 = [v13 uiProcessStartDate];
            [allSubresourcesLoadedDate timeIntervalSinceDate:uiProcessStartDate5];
            v41 = v40;

            v42 = [v13 URL];
            [(PurplePageLoadTestRunner *)self pptResultFor:v42 measure:@"domContentLoaded" time:v33];

            v43 = [v13 URL];
            [(PurplePageLoadTestRunner *)self pptResultFor:v43 measure:@"firstMeaningfulPaint" time:v37];

            v44 = [v13 URL];
            [(PurplePageLoadTestRunner *)self pptResultFor:v44 measure:@"allSubresources" time:v41];
          }
        }

        if (self->_showFirstVisualLayoutTime)
        {
          firstVisualLayoutDate = [v13 firstVisualLayoutDate];
          if (!firstVisualLayoutDate)
          {
            goto LABEL_26;
          }

          v46 = firstVisualLayoutDate;
          webContentProcessStartLoadDate3 = [v13 webContentProcessStartLoadDate];

          if (!webContentProcessStartLoadDate3)
          {
            goto LABEL_26;
          }

          v48 = [v13 URL];
          firstVisualLayoutDate2 = [v13 firstVisualLayoutDate];
          [v13 webContentProcessStartLoadDate];
          v72 = v6;
          v50 = v3;
          v51 = v4;
          v53 = v52 = v5;
          [firstVisualLayoutDate2 timeIntervalSinceDate:v53];
          [(PurplePageLoadTestRunner *)self pptResultFor:v48 measure:@"firstVisualLayout" time:?];

          v5 = v52;
          v4 = v51;
          v3 = v50;
          v6 = v72;
        }

        if (*(&self->super.super.isa + v4[433]) == 1)
        {
          [v13 framesPerSecond];
          if (v54 <= 0.0)
          {
            goto LABEL_26;
          }

          v55 = v54;
          ++v71;
          v10 = v10 + v54;
          v56 = [v13 URL];
          [(PurplePageLoadTestRunner *)self pptResultFor:v56 measure:@"fps" value:@"fps" units:v55];
        }

        if (*(&self->super.super.isa + v5[432]) != 1)
        {
          continue;
        }

        [v13 renderDuration];
        if (v57 > 0.0)
        {
          v58 = v57;
          ++v70;
          v69 = v69 + v57;
          v59 = [v13 URL];
          [(PurplePageLoadTestRunner *)self pptResultFor:v59 measure:@"render" time:v58];

          continue;
        }

LABEL_26:
        ++v7;
      }

      v74 = [v3 countByEnumeratingWithState:&v75 objects:v79 count:16];
      if (!v74)
      {
        goto LABEL_31;
      }
    }
  }

  v70 = 0;
  v71 = 0;
  v7 = 0;
  v8 = 1.0;
  v9 = 0.0;
  v10 = 0.0;
  v69 = 0.0;
  v11 = 0.0;
LABEL_31:

  if (self->_showLoadTime)
  {
    [(PurplePageLoadTestRunner *)self pptResultFor:@"Total Time" measure:0 time:v11];
    if (v6 >= 1)
    {
      [(PurplePageLoadTestRunner *)self pptResultFor:@"Mean Time" measure:0 time:v11 / v6];
      [(PurplePageLoadTestRunner *)self pptResultFor:@"Geometric Mean Time" measure:0 value:@"ms" units:pow(v8, 1.0 / v6)];
      [(PurplePageLoadTestRunner *)self pptResultFor:@"Square-Mean-Root Time" measure:0 value:@"ms" units:v9 / v6 * (v9 / v6)];
    }
  }

  if (*(&self->super.super.isa + v4[433]) == 1 && v71 >= 1)
  {
    [(PurplePageLoadTestRunner *)self pptResultFor:@"Mean Render FPS" measure:0 value:@"fps" units:v10 / v71];
  }

  if (*(&self->super.super.isa + v5[432]) == 1)
  {
    [(PurplePageLoadTestRunner *)self pptResultFor:@"Total Render Time" measure:0 time:v69];
    if (v70 >= 1)
    {
      [(PurplePageLoadTestRunner *)self pptResultFor:@"Mean Render Time" measure:0 time:v69 / v70];
    }
  }

  v61 = [(NSMutableArray *)self->super._pageLoadArray objectAtIndexedSubscript:self->super._currentTestIteration];
  v62 = [v61 count];

  if (v62)
  {
    v63 = v7;
  }

  else
  {
    v63 = v7 + 1;
  }

  if (v63 >= 1)
  {
    pptResults = self->_pptResults;
    v65 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [(NSMutableDictionary *)pptResults setObject:v65 forKey:@"Errors"];
  }

  iterationResults = self->_iterationResults;
  v67 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:self->_pptResults copyItems:1];
  v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", self->super._currentTestIteration];
  [(NSMutableDictionary *)iterationResults setObject:v67 forKey:v68];
}

- (void)writeOutputData
{
  outputFilename = [(PageLoadTestRunner *)self outputFilename];

  if (outputFilename)
  {
    iterationResults = self->_iterationResults;
    v11 = 0;
    v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:iterationResults options:0 error:&v11];
    v6 = v11;
    if (v6)
    {
      outputFilename4 = v6;
      NSLog(@"safari-plt-test Error while serializing Page Load Performance Test results: %@", v6);
LABEL_8:

      goto LABEL_9;
    }

    outputFilename2 = [(PageLoadTestRunner *)self outputFilename];
    v10 = 0;
    [v5 writeToFile:outputFilename2 options:0 error:&v10];
    outputFilename4 = v10;

    if (outputFilename4)
    {
      outputFilename3 = [(PageLoadTestRunner *)self outputFilename];
      NSLog(@"safari-plt-test Error writing output to file %@: %@", outputFilename3, outputFilename4);

      goto LABEL_8;
    }
  }

  else
  {
    NSLog(@"safari-plt-test %@", self->_iterationResults);
  }

  outputFilename4 = [(PageLoadTestRunner *)self outputFilename];
  [(PageLoadTestRunner *)self log:@"PageLoadTest Complete. Wrote data to %@", outputFilename4];
LABEL_9:
}

@end