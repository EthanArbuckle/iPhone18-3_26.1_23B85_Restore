@interface MTPageEventHandler
- (NSMutableArray)trackedPageHistory;
- (id)eventType;
- (id)eventVersion:(id)a3;
- (id)knownFields;
- (id)pageHistory:(id)a3;
- (void)didCreateMetricsData:(id)a3;
- (void)updatePageHistoryWithPage:(id)a3;
@end

@implementation MTPageEventHandler

- (NSMutableArray)trackedPageHistory
{
  trackedPageHistory = self->_trackedPageHistory;
  if (!trackedPageHistory)
  {
    v4 = objc_opt_new();
    v5 = self->_trackedPageHistory;
    self->_trackedPageHistory = v4;

    trackedPageHistory = self->_trackedPageHistory;
  }

  return trackedPageHistory;
}

- (id)knownFields
{
  v11[6] = *MEMORY[0x277D85DE8];
  v3 = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MTEventDataProvider *)self delegate];
    v6 = [v5 knownFields];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MTPageEventHandler;
    v5 = [(MTEventHandler *)&v10 knownFields];
    v11[0] = @"extRefUrl";
    v11[1] = @"refApp";
    v11[2] = @"pageHistory";
    v11[3] = @"refUrl";
    v11[4] = @"searchFilters";
    v11[5] = @"searchTerm";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:6];
    v6 = [v5 arrayByAddingObjectsFromArray:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)eventType
{
  v7.receiver = self;
  v7.super_class = MTPageEventHandler;
  v2 = [(MTEventHandler *)&v7 eventType];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"page";
  }

  v5 = v4;

  return v4;
}

- (id)eventVersion:(id)a3
{
  v8.receiver = self;
  v8.super_class = MTPageEventHandler;
  v3 = [(MTEventHandler *)&v8 eventVersion:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &unk_286A4C230;
  }

  v6 = v5;

  return v5;
}

- (id)pageHistory:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [(MTPageEventHandler *)v7 pageHistory:v4];
  }

  else
  {
    v9 = [v4 objectForKeyedSubscript:@"pageHistory"];

    if (v9)
    {
      v8 = [v4 objectForKeyedSubscript:@"pageHistory"];
      goto LABEL_7;
    }

    v7 = self;
    objc_sync_enter(v7);
    v10 = [(MTPageEventHandler *)v7 trackedPageHistory];
    v8 = [v10 copy];

    objc_sync_exit(v7);
  }

LABEL_7:

  return v8;
}

- (void)updatePageHistoryWithPage:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(MTPageEventHandler *)v5 trackedPageHistory];
    v7 = [v6 count];

    if (v7 >= 5)
    {
      v8 = [(MTPageEventHandler *)v5 trackedPageHistory];
      [v8 removeObjectAtIndex:0];
    }

    v9 = [(MTPageEventHandler *)v5 trackedPageHistory];
    [v9 addObject:v10];

    objc_sync_exit(v5);
    v4 = v10;
  }
}

- (void)didCreateMetricsData:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__MTPageEventHandler_didCreateMetricsData___block_invoke;
  v5[3] = &unk_2798CD4A8;
  objc_copyWeak(&v6, &location);
  [v4 addPostProcessingBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __43__MTPageEventHandler_didCreateMetricsData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 objectForKeyedSubscript:@"page"];

  [WeakRetained updatePageHistoryWithPage:v4];
}

@end