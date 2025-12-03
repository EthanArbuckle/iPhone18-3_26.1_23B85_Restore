@interface TabSnapshotQueueItem
- (TabSnapshotQueueItem)initWithRequest:(id)request contentProvider:(id)provider completionHandler:(id)handler;
- (void)appendCompletionHandler:(id)handler;
@end

@implementation TabSnapshotQueueItem

- (TabSnapshotQueueItem)initWithRequest:(id)request contentProvider:(id)provider completionHandler:(id)handler
{
  v20[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  providerCopy = provider;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = TabSnapshotQueueItem;
  v12 = [(TabSnapshotQueueItem *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_contentProvider, provider);
    v14 = _Block_copy(handlerCopy);
    v20[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    completionHandlers = v13->_completionHandlers;
    v13->_completionHandlers = v15;

    v17 = v13;
  }

  return v13;
}

- (void)appendCompletionHandler:(id)handler
{
  completionHandlers = self->_completionHandlers;
  v7 = _Block_copy(handler);
  v5 = [(NSArray *)completionHandlers arrayByAddingObject:v7];
  v6 = self->_completionHandlers;
  self->_completionHandlers = v5;
}

@end