@interface BPSKnowledgeStorePublisher
- (BOOL)completed;
- (BPSKnowledgeStorePublisher)initWithEventQuery:(id)a3 knowledgeStore:(id)a4;
- (id)_updateCachedQueryResults;
- (id)nextEvent;
- (id)startWithSubscriber:(id)a3;
- (void)reset;
- (void)subscribe:(id)a3;
@end

@implementation BPSKnowledgeStorePublisher

- (BPSKnowledgeStorePublisher)initWithEventQuery:(id)a3 knowledgeStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BPSKnowledgeStorePublisher;
  v9 = [(BPSKnowledgeStorePublisher *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_query, a3);
    objc_storeStrong(&v10->_store, a4);
  }

  return v10;
}

- (void)subscribe:(id)a3
{
  v4 = a3;
  v5 = [_BPSInnerKnowledgeSubscription alloc];
  v6 = [(BPSKnowledgeStorePublisher *)self query];
  v7 = [(BPSKnowledgeStorePublisher *)self store];
  v8 = [(_BPSInnerKnowledgeSubscription *)v5 initWithQuery:v6 downstream:v4 store:v7];

  [v4 receiveSubscription:v8];
}

- (id)startWithSubscriber:(id)a3
{
  v4 = [(BPSKnowledgeStorePublisher *)self query];
  if ([v4 limit])
  {
    v5 = [(BPSKnowledgeStorePublisher *)self query];
    v6 = [v5 limit];

    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = [(BPSKnowledgeStorePublisher *)self query];
      -[BPSKnowledgeStorePublisher setRemaining:](self, "setRemaining:", [v7 limit]);

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
  v3 = [(BPSKnowledgeStorePublisher *)self results];
  if ([v3 count])
  {

LABEL_3:
    v4 = 0;
    goto LABEL_11;
  }

  v5 = [(BPSKnowledgeStorePublisher *)self remaining];

  if (v5 < 1)
  {
    goto LABEL_3;
  }

  v6 = [(BPSKnowledgeStorePublisher *)self remaining];
  v7 = [(BPSKnowledgeStorePublisher *)self query];
  [v7 setLimit:v6];

  v8 = [(BPSKnowledgeStorePublisher *)self store];
  v9 = [(BPSKnowledgeStorePublisher *)self query];
  v16 = 0;
  v10 = [v8 executeQuery:v9 error:&v16];
  v4 = v16;

  if ([(BPSKnowledgeStorePublisher *)self remaining]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    -[BPSKnowledgeStorePublisher setRemaining:](self, "setRemaining:", -[BPSKnowledgeStorePublisher remaining](self, "remaining") - [v10 count]);
  }

  v11 = [(BPSKnowledgeStorePublisher *)self query];
  [v11 setOffset:{objc_msgSend(v11, "offset") + objc_msgSend(v10, "count")}];

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
  v3 = [(BPSKnowledgeStorePublisher *)self _updateCachedQueryResults];
  v4 = [(BPSKnowledgeStorePublisher *)self results];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(BPSKnowledgeStorePublisher *)self results];
    v7 = [v6 objectAtIndex:0];

    v8 = [(BPSKnowledgeStorePublisher *)self results];
    [v8 removeObjectAtIndex:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)completed
{
  v2 = [(BPSKnowledgeStorePublisher *)self results];
  v3 = [v2 count] == 0;

  return v3;
}

- (void)reset
{
  v3 = objc_opt_new();
  [(BPSKnowledgeStorePublisher *)self setResults:v3];

  [(BPSKnowledgeStorePublisher *)self setRemaining:0];
}

@end