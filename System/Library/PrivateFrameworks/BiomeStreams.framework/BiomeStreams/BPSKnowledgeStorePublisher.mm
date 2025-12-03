@interface BPSKnowledgeStorePublisher
- (BOOL)completed;
- (BPSKnowledgeStorePublisher)initWithEventQuery:(id)query knowledgeStore:(id)store;
- (id)_updateCachedQueryResults;
- (id)nextEvent;
- (id)startWithSubscriber:(id)subscriber;
- (void)reset;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSKnowledgeStorePublisher

- (BPSKnowledgeStorePublisher)initWithEventQuery:(id)query knowledgeStore:(id)store
{
  queryCopy = query;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = BPSKnowledgeStorePublisher;
  v9 = [(BPSKnowledgeStorePublisher *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_query, query);
    objc_storeStrong(&v10->_store, store);
  }

  return v10;
}

- (void)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v5 = [_BPSInnerKnowledgeSubscription alloc];
  query = [(BPSKnowledgeStorePublisher *)self query];
  store = [(BPSKnowledgeStorePublisher *)self store];
  v8 = [(_BPSInnerKnowledgeSubscription *)v5 initWithQuery:query downstream:subscribeCopy store:store];

  [subscribeCopy receiveSubscription:v8];
}

- (id)startWithSubscriber:(id)subscriber
{
  query = [(BPSKnowledgeStorePublisher *)self query];
  if ([query limit])
  {
    query2 = [(BPSKnowledgeStorePublisher *)self query];
    limit = [query2 limit];

    if ((limit & 0x8000000000000000) == 0)
    {
      query3 = [(BPSKnowledgeStorePublisher *)self query];
      -[BPSKnowledgeStorePublisher setRemaining:](self, "setRemaining:", [query3 limit]);

      goto LABEL_6;
    }
  }

  else
  {
  }

  [(BPSKnowledgeStorePublisher *)self setRemaining:0x7FFFFFFFFFFFFFFFLL];
LABEL_6:

  return [(BPSKnowledgeStorePublisher *)self _updateCachedQueryResults];
}

- (id)_updateCachedQueryResults
{
  results = [(BPSKnowledgeStorePublisher *)self results];
  if ([results count])
  {

LABEL_3:
    v4 = 0;
    goto LABEL_11;
  }

  remaining = [(BPSKnowledgeStorePublisher *)self remaining];

  if (remaining < 1)
  {
    goto LABEL_3;
  }

  remaining2 = [(BPSKnowledgeStorePublisher *)self remaining];
  query = [(BPSKnowledgeStorePublisher *)self query];
  [query setLimit:remaining2];

  store = [(BPSKnowledgeStorePublisher *)self store];
  query2 = [(BPSKnowledgeStorePublisher *)self query];
  v16 = 0;
  v10 = [store executeQuery:query2 error:&v16];
  v4 = v16;

  if ([(BPSKnowledgeStorePublisher *)self remaining]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    -[BPSKnowledgeStorePublisher setRemaining:](self, "setRemaining:", -[BPSKnowledgeStorePublisher remaining](self, "remaining") - [v10 count]);
  }

  query3 = [(BPSKnowledgeStorePublisher *)self query];
  [query3 setOffset:{objc_msgSend(query3, "offset") + objc_msgSend(v10, "count")}];

  if (v4)
  {
    [(BPSKnowledgeStorePublisher *)self setRemaining:0];
    v12 = objc_opt_new();
    [(BPSKnowledgeStorePublisher *)self setResults:v12];

    v13 = v4;
  }

  else
  {
    v14 = [v10 mutableCopy];
    [(BPSKnowledgeStorePublisher *)self setResults:v14];
  }

LABEL_11:

  return v4;
}

- (id)nextEvent
{
  _updateCachedQueryResults = [(BPSKnowledgeStorePublisher *)self _updateCachedQueryResults];
  results = [(BPSKnowledgeStorePublisher *)self results];
  v5 = [results count];

  if (v5)
  {
    results2 = [(BPSKnowledgeStorePublisher *)self results];
    v7 = [results2 objectAtIndex:0];

    results3 = [(BPSKnowledgeStorePublisher *)self results];
    [results3 removeObjectAtIndex:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)completed
{
  results = [(BPSKnowledgeStorePublisher *)self results];
  v3 = [results count] == 0;

  return v3;
}

- (void)reset
{
  v3 = objc_opt_new();
  [(BPSKnowledgeStorePublisher *)self setResults:v3];

  [(BPSKnowledgeStorePublisher *)self setRemaining:0];
}

@end