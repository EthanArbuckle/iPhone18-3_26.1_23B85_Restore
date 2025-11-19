@interface MessageContentItemRepresentationTask
- (BOOL)hasBeenAccessedByInvokerWithID:(id)a3;
- (EFFuture)future;
- (MessageContentItemRepresentationTask)initWithContentItem:(id)a3 type:(id)a4 networkUsage:(int64_t)a5;
- (void)addAccessedByInvokerWithID:(id)a3;
- (void)resume;
@end

@implementation MessageContentItemRepresentationTask

- (MessageContentItemRepresentationTask)initWithContentItem:(id)a3 type:(id)a4 networkUsage:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v22.receiver = self;
  v22.super_class = MessageContentItemRepresentationTask;
  v11 = [(MessageContentItemRepresentationTask *)&v22 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_type, a4);
    objc_storeStrong(&v12->_contentItem, a3);
    v12->_networkUsage = a5;
    v13 = objc_alloc(MEMORY[0x277D07168]);
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v15 = [v13 initWithObject:v14];
    invokerIDs = v12->_invokerIDs;
    v12->_invokerIDs = v15;

    v17 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:1];
    topLevelProgress = v12->_topLevelProgress;
    v12->_topLevelProgress = v17;

    v19 = [MEMORY[0x277D071A8] promise];
    contentRequestPromise = v12->_contentRequestPromise;
    v12->_contentRequestPromise = v19;
  }

  return v12;
}

- (EFFuture)future
{
  v2 = [(MessageContentItemRepresentationTask *)self contentRequestPromise];
  v3 = [v2 future];

  return v3;
}

- (void)addAccessedByInvokerWithID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MessageContentItemRepresentationTask *)self invokerIDs];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __67__MessageContentItemRepresentationTask_addAccessedByInvokerWithID___block_invoke;
    v6[3] = &unk_278181558;
    v7 = v4;
    [v5 performWhileLocked:v6];
  }
}

- (BOOL)hasBeenAccessedByInvokerWithID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v5 = [(MessageContentItemRepresentationTask *)self invokerIDs];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71__MessageContentItemRepresentationTask_hasBeenAccessedByInvokerWithID___block_invoke;
    v8[3] = &unk_278181580;
    v10 = &v11;
    v9 = v4;
    [v5 performWhileLocked:v8];

    v6 = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void __71__MessageContentItemRepresentationTask_hasBeenAccessedByInvokerWithID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [v3 containsObject:*(a1 + 32)];
}

- (void)resume
{
  v3 = [(MessageContentItemRepresentationTask *)self contentRequestProgress];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277D06D60]);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__MessageContentItemRepresentationTask_resume__block_invoke;
    v11[3] = &unk_2781815A8;
    v11[4] = self;
    v5 = [v4 initWithBuilder:v11];
    v6 = [(MessageContentItemRepresentationTask *)self contentItem];
    v7 = [(MessageContentItemRepresentationTask *)self contentRequestPromise];
    v8 = [v7 completionHandlerAdapter];
    v9 = [v6 requestRepresentationWithOptions:v5 completionHandler:v8];

    if (v9)
    {
      [(MessageContentItemRepresentationTask *)self setContentRequestProgress:v9];
      v10 = [(MessageContentItemRepresentationTask *)self topLevelProgress];
      [v10 addChild:v9 withPendingUnitCount:1];
    }
  }
}

void __46__MessageContentItemRepresentationTask_resume__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) type];
  [v4 setRequestedRepresentation:v3];

  [v4 setNetworkUsage:{objc_msgSend(*(a1 + 32), "networkUsage")}];
  if (_os_feature_enabled_impl())
  {
    [v4 setUrlBehavior:2];
  }
}

@end