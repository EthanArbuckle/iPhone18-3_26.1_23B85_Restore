@interface _CDIntentSpotlightIndex
- (_CDIntentSpotlightIndex)initWithKnowledgeStorage:(id)a3;
- (void)dealloc;
- (void)knowledgeStorage:(id)a3 didInsertLocalEventsWithStreamNameCounts:(id)a4;
- (void)knowledgeStorage:(id)a3 didTombstoneEventsWithStreamNameCounts:(id)a4;
- (void)triggerIndexIncludingAdditions:(BOOL)a3 completion:(id)a4;
@end

@implementation _CDIntentSpotlightIndex

- (_CDIntentSpotlightIndex)initWithKnowledgeStorage:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v6->_storage, a3);
    v11 = [[_CDSpotlightIntentIndexerDataSource alloc] initWithKnowledgeStore:v5];
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

- (void)knowledgeStorage:(id)a3 didInsertLocalEventsWithStreamNameCounts:(id)a4
{
  v5 = a4;
  v6 = +[_DKSystemEventStreams appIntentsStream];
  v7 = [v6 name];
  v8 = [v5 countForObject:v7];

  if (v8)
  {

    [(_CDIntentSpotlightIndex *)self triggerIndexIncludingAdditions:1 completion:0];
  }
}

- (void)knowledgeStorage:(id)a3 didTombstoneEventsWithStreamNameCounts:(id)a4
{
  v5 = a4;
  v6 = +[_DKSystemEventStreams appIntentsStream];
  v7 = [v6 name];
  v8 = [v5 countForObject:v7];

  if (v8)
  {

    [(_CDIntentSpotlightIndex *)self triggerIndexIncludingAdditions:0 completion:0];
  }
}

- (void)triggerIndexIncludingAdditions:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  [(_CDIntentSpotlightIndex *)v7 setIncludeAdditions:[(_CDIntentSpotlightIndex *)v7 includeAdditions]| v4];
  if (v6)
  {
    [(_CDIntentSpotlightIndex *)v7 setCompletion:v6];
  }

  objc_sync_exit(v7);

  v8 = +[_DKThrottledActivity standardInstance];
  [(_CDIntentSpotlightIndex *)v7 delay];
  v10 = v9;
  v11 = [(_CDIntentSpotlightIndex *)v7 activityQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69___CDIntentSpotlightIndex_triggerIndexIncludingAdditions_completion___block_invoke;
  v13[3] = &unk_1E7368F58;
  v15 = v4;
  v13[4] = v7;
  v14 = v6;
  v12 = v6;
  [v8 performWithDelayInSecondsOf:@"com.apple.coreduet.intent-spotlight-index" name:v11 queue:v13 activityBlock:v10];
}

@end