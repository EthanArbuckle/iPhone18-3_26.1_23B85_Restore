@interface _BPSInnerKnowledgeSubscription
- (_BPSInnerKnowledgeSubscription)initWithQuery:(id)a3 downstream:(id)a4 store:(id)a5;
- (void)cancel;
- (void)requestDemand:(int64_t)a3;
@end

@implementation _BPSInnerKnowledgeSubscription

- (_BPSInnerKnowledgeSubscription)initWithQuery:(id)a3 downstream:(id)a4 store:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = _BPSInnerKnowledgeSubscription;
  v12 = [(_BPSInnerKnowledgeSubscription *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_downstream, a4);
    objc_storeStrong(&v13->_knowledgeStore, a5);
    objc_storeStrong(&v13->_query, a3);
    if (![(_DKEventQuery *)v13->_query limit]|| [(_DKEventQuery *)v13->_query limit]< 0)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = [(_DKEventQuery *)v13->_query limit];
    }

    v13->_remaining = v14;
    v13->_pendingDemand = 0;
    v13->_lock._os_unfair_lock_opaque = 0;
  }

  return v13;
}

- (void)requestDemand:(int64_t)a3
{
  v4 = self;
  os_unfair_lock_lock(&v4->_lock);
  v5 = [(_BPSInnerKnowledgeSubscription *)v4 downstream];
  if (v5)
  {
    [(_BPSInnerKnowledgeSubscription *)v4 setPendingDemand:[(_BPSInnerKnowledgeSubscription *)v4 pendingDemand]+ a3];
    if (![(_BPSInnerKnowledgeSubscription *)v4 recursion])
    {
      if ([(_BPSInnerKnowledgeSubscription *)v4 remaining]< 1)
      {
        v11 = MEMORY[0x1E695E0F0];
      }

      else
      {
        v6 = [(_BPSInnerKnowledgeSubscription *)v4 pendingDemand];
        v7 = [(_BPSInnerKnowledgeSubscription *)v4 remaining];
        if (v6 >= v7)
        {
          v6 = v7;
        }

        v8 = [(_BPSInnerKnowledgeSubscription *)v4 query];
        [v8 setLimit:v6];

        v9 = [(_BPSInnerKnowledgeSubscription *)v4 knowledgeStore];
        v10 = [(_BPSInnerKnowledgeSubscription *)v4 query];
        v22 = 0;
        v11 = [v9 executeQuery:v10 error:&v22];
        v12 = v22;

        if ([(_BPSInnerKnowledgeSubscription *)v4 remaining]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          -[_BPSInnerKnowledgeSubscription setRemaining:](v4, "setRemaining:", -[_BPSInnerKnowledgeSubscription remaining](v4, "remaining") - [v11 count]);
        }

        v13 = [(_BPSInnerKnowledgeSubscription *)v4 query];
        [v13 setOffset:{objc_msgSend(v13, "offset") + objc_msgSend(v11, "count")}];

        if (v12)
        {
          os_unfair_lock_unlock(&v4->_lock);
          v14 = [(_BPSInnerKnowledgeSubscription *)v4 downstream];
          v15 = [MEMORY[0x1E698F0C0] failureWithError:v12];
          v16 = v14;
LABEL_22:
          [v16 receiveCompletion:v15];
LABEL_23:

LABEL_24:
          goto LABEL_25;
        }
      }

      v11 = v11;
      v12 = [v11 objectEnumerator];
      v17 = [v12 nextObject];
      [(_BPSInnerKnowledgeSubscription *)v4 setNext:v17];

      if ([(_BPSInnerKnowledgeSubscription *)v4 pendingDemand]< 1)
      {
LABEL_19:
        os_unfair_lock_unlock(&v4->_lock);
      }

      else
      {
        if (v11)
        {
          while (1)
          {
            v14 = [(_BPSInnerKnowledgeSubscription *)v4 next];
            if (!v14)
            {

              [(_BPSInnerKnowledgeSubscription *)v4 setDownstream:0];
              os_unfair_lock_unlock(&v4->_lock);
              v15 = [MEMORY[0x1E698F0C0] success];
              v16 = v5;
              goto LABEL_22;
            }

            [(_BPSInnerKnowledgeSubscription *)v4 setPendingDemand:[(_BPSInnerKnowledgeSubscription *)v4 pendingDemand]- 1];
            v18 = [v12 nextObject];
            [(_BPSInnerKnowledgeSubscription *)v4 setNext:v18];

            [(_BPSInnerKnowledgeSubscription *)v4 setRecursion:1];
            os_unfair_lock_unlock(&v4->_lock);
            v19 = [v5 receiveInput:v14];
            os_unfair_lock_lock(&v4->_lock);
            [(_BPSInnerKnowledgeSubscription *)v4 setPendingDemand:[(_BPSInnerKnowledgeSubscription *)v4 pendingDemand]+ v19];
            [(_BPSInnerKnowledgeSubscription *)v4 setRecursion:0];
            v20 = [(_BPSInnerKnowledgeSubscription *)v4 next];
            if (v20)
            {
            }

            else if (![(_BPSInnerKnowledgeSubscription *)v4 pendingDemand])
            {
              [(_BPSInnerKnowledgeSubscription *)v4 setDownstream:0];
              os_unfair_lock_unlock(&v4->_lock);
              v21 = [MEMORY[0x1E698F0C0] success];
              [v5 receiveCompletion:v21];

              v15 = v11;
              goto LABEL_23;
            }

            if ([(_BPSInnerKnowledgeSubscription *)v4 pendingDemand]<= 0)
            {
              goto LABEL_19;
            }
          }
        }

        os_unfair_lock_unlock(&v4->_lock);
      }

      goto LABEL_24;
    }
  }

  os_unfair_lock_unlock(&v4->_lock);
LABEL_25:
}

- (void)cancel
{
  v3 = self;
  os_unfair_lock_lock(&self->_lock);
  [(_BPSInnerKnowledgeSubscription *)v3 setDownstream:0];
  os_unfair_lock_unlock(&self->_lock);
}

@end