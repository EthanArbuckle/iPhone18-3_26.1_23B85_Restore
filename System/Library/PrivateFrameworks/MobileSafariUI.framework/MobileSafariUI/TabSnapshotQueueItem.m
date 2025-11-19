@interface TabSnapshotQueueItem
- (TabSnapshotQueueItem)initWithRequest:(id)a3 contentProvider:(id)a4 completionHandler:(id)a5;
- (void)appendCompletionHandler:(id)a3;
@end

@implementation TabSnapshotQueueItem

- (TabSnapshotQueueItem)initWithRequest:(id)a3 contentProvider:(id)a4 completionHandler:(id)a5
{
  v20[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = TabSnapshotQueueItem;
  v12 = [(TabSnapshotQueueItem *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, a3);
    objc_storeStrong(&v13->_contentProvider, a4);
    v14 = _Block_copy(v11);
    v20[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    completionHandlers = v13->_completionHandlers;
    v13->_completionHandlers = v15;

    v17 = v13;
  }

  return v13;
}

- (void)appendCompletionHandler:(id)a3
{
  completionHandlers = self->_completionHandlers;
  v7 = _Block_copy(a3);
  v5 = [(NSArray *)completionHandlers arrayByAddingObject:v7];
  v6 = self->_completionHandlers;
  self->_completionHandlers = v5;
}

@end