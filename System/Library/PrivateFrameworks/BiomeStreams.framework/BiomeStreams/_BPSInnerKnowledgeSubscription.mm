@interface _BPSInnerKnowledgeSubscription
- (_BPSInnerKnowledgeSubscription)initWithQuery:(id)query downstream:(id)downstream store:(id)store;
- (void)cancel;
- (void)requestDemand:(int64_t)demand;
@end

@implementation _BPSInnerKnowledgeSubscription

- (_BPSInnerKnowledgeSubscription)initWithQuery:(id)query downstream:(id)downstream store:(id)store
{
  queryCopy = query;
  downstreamCopy = downstream;
  storeCopy = store;
  v16.receiver = self;
  v16.super_class = _BPSInnerKnowledgeSubscription;
  v12 = [(_BPSInnerKnowledgeSubscription *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_downstream, downstream);
    objc_storeStrong(&v13->_knowledgeStore, store);
    objc_storeStrong(&v13->_query, query);
    if (![(_DKEventQuery *)v13->_query limit]|| [(_DKEventQuery *)v13->_query limit]< 0)
    {
      limit = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      limit = [(_DKEventQuery *)v13->_query limit];
    }

    v13->_remaining = limit;
    v13->_pendingDemand = 0;
    v13->_lock._os_unfair_lock_opaque = 0;
  }

  return v13;
}

- (void)requestDemand:(int64_t)demand
{
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  downstream = [(_BPSInnerKnowledgeSubscription *)selfCopy downstream];
  if (downstream)
  {
    [(_BPSInnerKnowledgeSubscription *)selfCopy setPendingDemand:[(_BPSInnerKnowledgeSubscription *)selfCopy pendingDemand]+ demand];
    if (![(_BPSInnerKnowledgeSubscription *)selfCopy recursion])
    {
      if ([(_BPSInnerKnowledgeSubscription *)selfCopy remaining]< 1)
      {
        v11 = MEMORY[0x1E695E0F0];
      }

      else
      {
        pendingDemand = [(_BPSInnerKnowledgeSubscription *)selfCopy pendingDemand];
        remaining = [(_BPSInnerKnowledgeSubscription *)selfCopy remaining];
        if (pendingDemand >= remaining)
        {
          pendingDemand = remaining;
        }

        query = [(_BPSInnerKnowledgeSubscription *)selfCopy query];
        [query setLimit:pendingDemand];

        knowledgeStore = [(_BPSInnerKnowledgeSubscription *)selfCopy knowledgeStore];
        query2 = [(_BPSInnerKnowledgeSubscription *)selfCopy query];
        v22 = 0;
        v11 = [knowledgeStore executeQuery:query2 error:&v22];
        objectEnumerator = v22;

        if ([(_BPSInnerKnowledgeSubscription *)selfCopy remaining]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          -[_BPSInnerKnowledgeSubscription setRemaining:](selfCopy, "setRemaining:", -[_BPSInnerKnowledgeSubscription remaining](selfCopy, "remaining") - [v11 count]);
        }

        query3 = [(_BPSInnerKnowledgeSubscription *)selfCopy query];
        [query3 setOffset:{objc_msgSend(query3, "offset") + objc_msgSend(v11, "count")}];

        if (objectEnumerator)
        {
          os_unfair_lock_unlock(&selfCopy->_lock);
          downstream2 = [(_BPSInnerKnowledgeSubscription *)selfCopy downstream];
          success = [MEMORY[0x1E698F0C0] failureWithError:objectEnumerator];
          v16 = downstream2;
LABEL_22:
          [v16 receiveCompletion:success];
LABEL_23:

LABEL_24:
          goto LABEL_25;
        }
      }

      v11 = v11;
      objectEnumerator = [v11 objectEnumerator];
      nextObject = [objectEnumerator nextObject];
      [(_BPSInnerKnowledgeSubscription *)selfCopy setNext:nextObject];

      if ([(_BPSInnerKnowledgeSubscription *)selfCopy pendingDemand]< 1)
      {
LABEL_19:
        os_unfair_lock_unlock(&selfCopy->_lock);
      }

      else
      {
        if (v11)
        {
          while (1)
          {
            downstream2 = [(_BPSInnerKnowledgeSubscription *)selfCopy next];
            if (!downstream2)
            {

              [(_BPSInnerKnowledgeSubscription *)selfCopy setDownstream:0];
              os_unfair_lock_unlock(&selfCopy->_lock);
              success = [MEMORY[0x1E698F0C0] success];
              v16 = downstream;
              goto LABEL_22;
            }

            [(_BPSInnerKnowledgeSubscription *)selfCopy setPendingDemand:[(_BPSInnerKnowledgeSubscription *)selfCopy pendingDemand]- 1];
            nextObject2 = [objectEnumerator nextObject];
            [(_BPSInnerKnowledgeSubscription *)selfCopy setNext:nextObject2];

            [(_BPSInnerKnowledgeSubscription *)selfCopy setRecursion:1];
            os_unfair_lock_unlock(&selfCopy->_lock);
            v19 = [downstream receiveInput:downstream2];
            os_unfair_lock_lock(&selfCopy->_lock);
            [(_BPSInnerKnowledgeSubscription *)selfCopy setPendingDemand:[(_BPSInnerKnowledgeSubscription *)selfCopy pendingDemand]+ v19];
            [(_BPSInnerKnowledgeSubscription *)selfCopy setRecursion:0];
            next = [(_BPSInnerKnowledgeSubscription *)selfCopy next];
            if (next)
            {
            }

            else if (![(_BPSInnerKnowledgeSubscription *)selfCopy pendingDemand])
            {
              [(_BPSInnerKnowledgeSubscription *)selfCopy setDownstream:0];
              os_unfair_lock_unlock(&selfCopy->_lock);
              success2 = [MEMORY[0x1E698F0C0] success];
              [downstream receiveCompletion:success2];

              success = v11;
              goto LABEL_23;
            }

            if ([(_BPSInnerKnowledgeSubscription *)selfCopy pendingDemand]<= 0)
            {
              goto LABEL_19;
            }
          }
        }

        os_unfair_lock_unlock(&selfCopy->_lock);
      }

      goto LABEL_24;
    }
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
LABEL_25:
}

- (void)cancel
{
  selfCopy = self;
  os_unfair_lock_lock(&self->_lock);
  [(_BPSInnerKnowledgeSubscription *)selfCopy setDownstream:0];
  os_unfair_lock_unlock(&self->_lock);
}

@end