@interface WhiteTabsTestRunner
- (WhiteTabsTestRunner)init;
- (void)collectPPTResults;
- (void)finishedTestPage:(id)a3;
@end

@implementation WhiteTabsTestRunner

- (WhiteTabsTestRunner)init
{
  v5.receiver = self;
  v5.super_class = WhiteTabsTestRunner;
  v2 = [(WhiteTabsTestRunner *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PageLoadTestRunner *)v2 setFailFast:0];
  }

  return v3;
}

- (void)collectPPTResults
{
  runCount = self->_runCount;
  if (runCount)
  {
    v3 = (self->_totalLiveTabs / runCount);
  }

  else
  {
    v3 = 0.0;
  }

  [(PurplePageLoadTestRunner *)self pptResultFor:@"Summary" measure:@"Average live tabs" value:@"tabs" units:v3];
}

- (void)finishedTestPage:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PageLoadTestRunner *)self browserController];
  v6 = [v5 tabController];

  v7 = [v6 tabDocuments];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    LODWORD(v10) = 0;
    LODWORD(v11) = 0;
    v12 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = [*(*(&v17 + 1) + 8 * i) isAlive];
        v10 = (v10 + v14);
        v11 = v11 + (v14 ^ 1);
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  if ([v7 count] == 36)
  {
    ++self->_runCount;
    self->_totalHibernatedTabs += v11;
    self->_totalLiveTabs += v10;
  }

  runCount = self->_runCount;
  if (runCount)
  {
    v16 = (self->_totalLiveTabs / runCount);
  }

  else
  {
    v16 = 0.0;
  }

  -[PageLoadTestRunner log:](self, "log:", @"Total tabs = %2d livetabs = %2d hibernatedTabs = %2d Run count = %4d Avg number of live tabs = %2.2f - Finished loading page %@", [v7 count], v10, v11, self->_runCount, *&v16, v4);
}

@end