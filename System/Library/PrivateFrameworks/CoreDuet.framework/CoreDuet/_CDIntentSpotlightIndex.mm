@interface _CDIntentSpotlightIndex
- (_CDIntentSpotlightIndex)initWithKnowledgeStorage:(id)storage;
- (void)dealloc;
- (void)knowledgeStorage:(id)storage didInsertLocalEventsWithStreamNameCounts:(id)counts;
- (void)knowledgeStorage:(id)storage didTombstoneEventsWithStreamNameCounts:(id)counts;
- (void)triggerIndexIncludingAdditions:(BOOL)additions completion:(id)completion;
@end

@implementation _CDIntentSpotlightIndex

- (_CDIntentSpotlightIndex)initWithKnowledgeStorage:(id)storage
{
  storageCopy = storage;
  v15.receiver = self;
  v15.super_class = _CDIntentSpotlightIndex;
  v6 = [(_CDIntentSpotlightIndex *)&v15 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UTILITY, 0);

    v9 = dispatch_queue_create("com.apple.coreduet.intent-spotlight-index.activity-queue", v8);
    activityQueue = v6->_activityQueue;
    v6->_activityQueue = v9;

    objc_storeStrong(&v6->_storage, storage);
    v11 = [[_CDSpotlightIntentIndexerDataSource alloc] initWithKnowledgeStore:storageCopy];
    v12 = [[_CDSpotlightEventIndexer alloc] initWithDataSource:v11];
    indexer = v6->_indexer;
    v6->_indexer = v12;

    v6->_delay = 2.0;
    v6->_batchSize = 200;
    [(_DKKnowledgeStorage *)v6->_storage addKnowledgeStorageEventNotificationDelegate:v6];
  }

  return v6;
}

- (void)dealloc
{
  [(_DKKnowledgeStorage *)self->_storage removeKnowledgeStorageEventNotificationDelegate:self];
  v3.receiver = self;
  v3.super_class = _CDIntentSpotlightIndex;
  [(_CDIntentSpotlightIndex *)&v3 dealloc];
}

- (void)knowledgeStorage:(id)storage didInsertLocalEventsWithStreamNameCounts:(id)counts
{
  countsCopy = counts;
  v6 = +[_DKSystemEventStreams appIntentsStream];
  name = [v6 name];
  v8 = [countsCopy countForObject:name];

  if (v8)
  {

    [(_CDIntentSpotlightIndex *)self triggerIndexIncludingAdditions:1 completion:0];
  }
}

- (void)knowledgeStorage:(id)storage didTombstoneEventsWithStreamNameCounts:(id)counts
{
  countsCopy = counts;
  v6 = +[_DKSystemEventStreams appIntentsStream];
  name = [v6 name];
  v8 = [countsCopy countForObject:name];

  if (v8)
  {

    [(_CDIntentSpotlightIndex *)self triggerIndexIncludingAdditions:0 completion:0];
  }
}

- (void)triggerIndexIncludingAdditions:(BOOL)additions completion:(id)completion
{
  additionsCopy = additions;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(_CDIntentSpotlightIndex *)selfCopy setIncludeAdditions:[(_CDIntentSpotlightIndex *)selfCopy includeAdditions]| additionsCopy];
  if (completionCopy)
  {
    [(_CDIntentSpotlightIndex *)selfCopy setCompletion:completionCopy];
  }

  objc_sync_exit(selfCopy);

  v8 = +[_DKThrottledActivity standardInstance];
  [(_CDIntentSpotlightIndex *)selfCopy delay];
  v10 = v9;
  activityQueue = [(_CDIntentSpotlightIndex *)selfCopy activityQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69___CDIntentSpotlightIndex_triggerIndexIncludingAdditions_completion___block_invoke;
  v13[3] = &unk_1E7368F58;
  v15 = additionsCopy;
  v13[4] = selfCopy;
  v14 = completionCopy;
  v12 = completionCopy;
  [v8 performWithDelayInSecondsOf:@"com.apple.coreduet.intent-spotlight-index" name:activityQueue queue:v13 activityBlock:v10];
}

@end