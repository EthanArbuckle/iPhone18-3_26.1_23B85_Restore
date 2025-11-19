@interface _BPSSequenceInner
- (_BPSSequenceInner)initWithDownstream:(id)a3 enumerator:(id)a4;
- (void)cancel;
- (void)requestDemand:(int64_t)a3;
@end

@implementation _BPSSequenceInner

- (_BPSSequenceInner)initWithDownstream:(id)a3 enumerator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _BPSSequenceInner;
  v9 = [(_BPSSequenceInner *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_downstream, a3);
    objc_storeStrong(&v10->_enumerator, a4);
    v10->_recursion = 0;
    v11 = [(NSEnumerator *)v10->_enumerator nextObject];
    next = v10->_next;
    v10->_next = v11;

    v10->_lock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (void)requestDemand:(int64_t)a3
{
  v12 = self;
  os_unfair_lock_lock(&v12->_lock);
  v4 = [(_BPSSequenceInner *)v12 downstream];
  if (v4)
  {
    [(_BPSSequenceInner *)v12 setPendingDemand:[(_BPSSequenceInner *)v12 pendingDemand]+ a3];
    if (![(_BPSSequenceInner *)v12 recursion])
    {
      while (1)
      {
        if ([(_BPSSequenceInner *)v12 pendingDemand]< 1)
        {
          goto LABEL_3;
        }

        v5 = [(_BPSSequenceInner *)v12 next];
        if (!v5)
        {
          break;
        }

        v6 = v5;
        [(_BPSSequenceInner *)v12 setPendingDemand:[(_BPSSequenceInner *)v12 pendingDemand]- 1];
        v7 = [(_BPSSequenceInner *)v12 enumerator];
        v8 = [v7 nextObject];
        [(_BPSSequenceInner *)v12 setNext:v8];

        [(_BPSSequenceInner *)v12 setRecursion:1];
        os_unfair_lock_unlock(&v12->_lock);
        v9 = [v4 receiveInput:v6];
        os_unfair_lock_lock(&v12->_lock);
        [(_BPSSequenceInner *)v12 setPendingDemand:[(_BPSSequenceInner *)v12 pendingDemand]+ v9];
        [(_BPSSequenceInner *)v12 setRecursion:0];
        v10 = [(_BPSSequenceInner *)v12 next];

        if (!v10)
        {
          [(_BPSSequenceInner *)v12 setDownstream:0];
          os_unfair_lock_unlock(&v12->_lock);
          v11 = +[BPSCompletion success];
          [v4 receiveCompletion:v11];

          goto LABEL_13;
        }
      }

      [(_BPSSequenceInner *)v12 setDownstream:0];
      os_unfair_lock_unlock(&v12->_lock);
      v6 = +[BPSCompletion success];
      [v4 receiveCompletion:v6];
LABEL_13:

      goto LABEL_4;
    }
  }

LABEL_3:
  os_unfair_lock_unlock(&v12->_lock);
LABEL_4:
}

- (void)cancel
{
  v3 = self;
  os_unfair_lock_lock(&self->_lock);
  [(_BPSSequenceInner *)v3 setDownstream:0];
  os_unfair_lock_unlock(&self->_lock);
}

@end