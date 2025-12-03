@interface _EDMessageItemIDCollector
- (_EDMessageItemIDCollector)init;
- (id)collectItemIDsWithQuery:(id)query messagePersistence:(id)persistence hookRegistry:(id)registry remindMeNotificationController:(id)controller searchProvider:(id)provider errorString:(id *)string;
- (void)queryHelper:(id)helper didFindMessages:(id)messages searchInfo:(id)info forInitialBatch:(BOOL)batch;
- (void)queryHelperDidFindAllMessages:(id)messages localSearchInfoCollector:(id)collector;
- (void)queryHelperNeedsRestart:(id)restart;
@end

@implementation _EDMessageItemIDCollector

- (_EDMessageItemIDCollector)init
{
  v10.receiver = self;
  v10.super_class = _EDMessageItemIDCollector;
  v2 = [(_EDMessageItemIDCollector *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email._EDMessageItemIDCollector._scheduler" qualityOfService:9];
    scheduler = v2->_scheduler;
    v2->_scheduler = v3;

    v5 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    collectionLock = v2->_collectionLock;
    v2->_collectionLock = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    messageItemIDs = v2->_messageItemIDs;
    v2->_messageItemIDs = v7;
  }

  return v2;
}

- (id)collectItemIDsWithQuery:(id)query messagePersistence:(id)persistence hookRegistry:(id)registry remindMeNotificationController:(id)controller searchProvider:(id)provider errorString:(id *)string
{
  queryCopy = query;
  persistenceCopy = persistence;
  registryCopy = registry;
  controllerCopy = controller;
  providerCopy = provider;
  [(NSConditionLock *)self->_collectionLock lockWhenCondition:0];
  [(NSConditionLock *)self->_collectionLock unlockWithCondition:1];
  [(NSMutableArray *)self->_messageItemIDs removeAllObjects];
  errorString = self->_errorString;
  self->_errorString = 0;

  BYTE2(v26) = 0;
  LOWORD(v26) = 0;
  v18 = [EDMessageQueryHelper initWithQuery:"initWithQuery:initialBatchSize:maximumBatchSize:messagePersistence:hookRegistry:searchProvider:scheduler:remindMeNotificationController:delegate:shouldReconcileJournal:shouldAddMessagesSynchronously:keepMessagesInListOnBucketChange:" initialBatchSize:queryCopy maximumBatchSize:100 messagePersistence:15000 hookRegistry:persistenceCopy searchProvider:registryCopy scheduler:providerCopy remindMeNotificationController:self->_scheduler delegate:controllerCopy shouldReconcileJournal:self shouldAddMessagesSynchronously:v26 keepMessagesInListOnBucketChange:?];
  [(EDMessageQueryHelper *)v18 start];
  collectionLock = self->_collectionLock;
  v20 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:10.0];
  LODWORD(provider) = [(NSConditionLock *)collectionLock lockWhenCondition:2 beforeDate:v20];

  if (provider)
  {
    v21 = [(NSMutableArray *)self->_messageItemIDs copy];
    v22 = [(NSString *)self->_errorString copy];
    v23 = v21;
  }

  else
  {
    v22 = @"Timed out";
    v23 = 0;
    [(NSConditionLock *)self->_collectionLock lock];
  }

  [(NSConditionLock *)self->_collectionLock unlockWithCondition:0];
  if (string)
  {
    v24 = v22;
    *string = v22;
  }

  return v23;
}

- (void)queryHelper:(id)helper didFindMessages:(id)messages searchInfo:(id)info forInitialBatch:(BOOL)batch
{
  messageItemIDs = self->_messageItemIDs;
  v7 = [messages ef_compactMapSelector:sel_itemID];
  [(NSMutableArray *)messageItemIDs addObjectsFromArray:?];
}

- (void)queryHelperDidFindAllMessages:(id)messages localSearchInfoCollector:(id)collector
{
  [(NSConditionLock *)self->_collectionLock lock:messages];
  v5 = [(NSConditionLock *)self->_collectionLock condition]== 1;
  collectionLock = self->_collectionLock;

  [(NSConditionLock *)collectionLock unlockWithCondition:2 * v5];
}

- (void)queryHelperNeedsRestart:(id)restart
{
  errorString = self->_errorString;
  self->_errorString = @"Query helper requested restart";

  [(NSMutableArray *)self->_messageItemIDs removeAllObjects];
  [(NSConditionLock *)self->_collectionLock lock];
  v5 = [(NSConditionLock *)self->_collectionLock condition]== 1;
  collectionLock = self->_collectionLock;

  [(NSConditionLock *)collectionLock unlockWithCondition:2 * v5];
}

@end