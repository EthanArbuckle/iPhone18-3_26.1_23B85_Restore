@interface MTPageEventHandler
- (NSMutableArray)trackedPageHistory;
- (id)eventType;
- (id)eventVersion:(id)version;
- (id)knownFields;
- (id)pageHistory:(id)history;
- (void)didCreateMetricsData:(id)data;
- (void)updatePageHistoryWithPage:(id)page;
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
  delegate = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    knownFields = [delegate2 knownFields];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MTPageEventHandler;
    delegate2 = [(MTEventHandler *)&v10 knownFields];
    v11[0] = @"extRefUrl";
    v11[1] = @"refApp";
    v11[2] = @"pageHistory";
    v11[3] = @"refUrl";
    v11[4] = @"searchFilters";
    v11[5] = @"searchTerm";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:6];
    knownFields = [delegate2 arrayByAddingObjectsFromArray:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return knownFields;
}

- (id)eventType
{
  v7.receiver = self;
  v7.super_class = MTPageEventHandler;
  eventType = [(MTEventHandler *)&v7 eventType];
  v3 = eventType;
  if (eventType)
  {
    v4 = eventType;
  }

  else
  {
    v4 = @"page";
  }

  v5 = v4;

  return v4;
}

- (id)eventVersion:(id)version
{
  v8.receiver = self;
  v8.super_class = MTPageEventHandler;
  v3 = [(MTEventHandler *)&v8 eventVersion:version];
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

- (id)pageHistory:(id)history
{
  historyCopy = history;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    selfCopy = [(MTEventDataProvider *)self delegate];
    v8 = [(MTPageEventHandler *)selfCopy pageHistory:historyCopy];
  }

  else
  {
    v9 = [historyCopy objectForKeyedSubscript:@"pageHistory"];

    if (v9)
    {
      v8 = [historyCopy objectForKeyedSubscript:@"pageHistory"];
      goto LABEL_7;
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    trackedPageHistory = [(MTPageEventHandler *)selfCopy trackedPageHistory];
    v8 = [trackedPageHistory copy];

    objc_sync_exit(selfCopy);
  }

LABEL_7:

  return v8;
}

- (void)updatePageHistoryWithPage:(id)page
{
  pageCopy = page;
  if (pageCopy)
  {
    v10 = pageCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    trackedPageHistory = [(MTPageEventHandler *)selfCopy trackedPageHistory];
    v7 = [trackedPageHistory count];

    if (v7 >= 5)
    {
      trackedPageHistory2 = [(MTPageEventHandler *)selfCopy trackedPageHistory];
      [trackedPageHistory2 removeObjectAtIndex:0];
    }

    trackedPageHistory3 = [(MTPageEventHandler *)selfCopy trackedPageHistory];
    [trackedPageHistory3 addObject:v10];

    objc_sync_exit(selfCopy);
    pageCopy = v10;
  }
}

- (void)didCreateMetricsData:(id)data
{
  dataCopy = data;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__MTPageEventHandler_didCreateMetricsData___block_invoke;
  v5[3] = &unk_2798CD4A8;
  objc_copyWeak(&v6, &location);
  [dataCopy addPostProcessingBlock:v5];
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