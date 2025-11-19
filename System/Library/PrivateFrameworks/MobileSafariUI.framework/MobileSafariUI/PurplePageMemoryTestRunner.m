@interface PurplePageMemoryTestRunner
- (PurplePageMemoryTestRunner)initWithTestName:(id)a3 browserController:(id)a4;
- (void)_updatePageLoad:(id)a3 stats:(id)a4;
- (void)collectPPTResults;
@end

@implementation PurplePageMemoryTestRunner

- (PurplePageMemoryTestRunner)initWithTestName:(id)a3 browserController:(id)a4
{
  v8.receiver = self;
  v8.super_class = PurplePageMemoryTestRunner;
  v4 = [(PurplePageLoadTestRunner *)&v8 initWithTestName:a3 browserController:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pagesNeedingMemoryWarningSent = v4->super.super._pagesNeedingMemoryWarningSent;
    v4->super.super._pagesNeedingMemoryWarningSent = v5;

    v4->super.super._measureTime = 0;
  }

  return v4;
}

- (void)_updatePageLoad:(id)a3 stats:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 memoryBeforeWarning];
    if (v7)
    {
      [v9 setMemoryBeforeWarning:v7];
    }

    v8 = [v6 memoryAfterWarning];
    if (v8)
    {
      [v9 setMemoryAfterWarning:v8];
    }
  }
}

- (void)collectPPTResults
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [(NSMutableArray *)self->super.super._pageLoadArray objectAtIndexedSubscript:self->super.super._currentTestIteration, 0];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v22;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if ([v12 status] == 5)
        {
          if ([v12 memoryBeforeWarning] && objc_msgSend(v12, "memoryAfterWarning"))
          {
            v13 = [v12 memoryBeforeWarning];
            v14 = (([v12 memoryAfterWarning] + v13) >> 1);
            v15 = [v12 URL];
            [(PurplePageLoadTestRunner *)self pptResultFor:v15 measure:0 value:@"bytes" units:v14];

            ++v6;
            v9 = v9 + v14;
            v10 = v10 + log(v14);
          }
        }

        else
        {
          ++v7;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v9 = 0.0;
    v10 = 0.0;
  }

  [(PurplePageLoadTestRunner *)self pptResultFor:@"Total Memory" measure:0 value:@"bytes" units:v9];
  if (v6 >= 1)
  {
    [(PurplePageLoadTestRunner *)self pptResultFor:@"Mean Memory" measure:0 value:@"bytes" units:v9 / v6];
    [(PurplePageLoadTestRunner *)self pptResultFor:@"Geometric Mean Memory" measure:0 value:@"bytes" units:exp(v10 / v6)];
    [(PurplePageLoadTestRunner *)self pptResultFor:@"Square-Mean-Root Memory" measure:0 value:@"bytes" units:0.0 / v6 * (0.0 / v6)];
  }

  v16 = [(NSMutableArray *)self->super.super._pageLoadArray objectAtIndexedSubscript:self->super.super._currentTestIteration];
  v17 = [v16 count];

  if (v17)
  {
    v18 = v7;
  }

  else
  {
    v18 = v7 + 1;
  }

  if (v18 >= 1)
  {
    pptResults = self->super._pptResults;
    v20 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [(NSMutableDictionary *)pptResults setObject:v20 forKey:@"Errors"];
  }
}

@end