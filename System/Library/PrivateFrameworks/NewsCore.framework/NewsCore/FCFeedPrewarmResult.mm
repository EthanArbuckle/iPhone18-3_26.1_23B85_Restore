@interface FCFeedPrewarmResult
- (FCFeedPrewarmResult)initWithSuccessfulRequests:(id)requests failedRequests:(id)failedRequests networkEvents:(id)events;
- (NSSet)feedIDs;
@end

@implementation FCFeedPrewarmResult

- (FCFeedPrewarmResult)initWithSuccessfulRequests:(id)requests failedRequests:(id)failedRequests networkEvents:(id)events
{
  requestsCopy = requests;
  failedRequestsCopy = failedRequests;
  eventsCopy = events;
  v19.receiver = self;
  v19.super_class = FCFeedPrewarmResult;
  v11 = [(FCFeedPrewarmResult *)&v19 init];
  if (v11)
  {
    v12 = [requestsCopy copy];
    successfulRequests = v11->_successfulRequests;
    v11->_successfulRequests = v12;

    v14 = [failedRequestsCopy copy];
    failedRequests = v11->_failedRequests;
    v11->_failedRequests = v14;

    v16 = [eventsCopy copy];
    networkEvents = v11->_networkEvents;
    v11->_networkEvents = v16;
  }

  return v11;
}

- (NSSet)feedIDs
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__FCFeedPrewarmResult_feedIDs__block_invoke;
  v4[3] = &unk_1E7C371F8;
  v4[4] = self;
  v2 = [MEMORY[0x1E695DFD8] fc_set:v4];

  return v2;
}

void __30__FCFeedPrewarmResult_feedIDs__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [*(a1 + 32) successfulRequests];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v21 + 1) + 8 * v8) feedID];
        [v3 addObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [*(a1 + 32) failedRequests];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * v14) feedID];
        [v3 addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end