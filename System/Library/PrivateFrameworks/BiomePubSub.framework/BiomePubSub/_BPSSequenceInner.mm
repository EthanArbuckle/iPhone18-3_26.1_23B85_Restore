@interface _BPSSequenceInner
- (_BPSSequenceInner)initWithDownstream:(id)downstream enumerator:(id)enumerator;
- (void)cancel;
- (void)requestDemand:(int64_t)demand;
@end

@implementation _BPSSequenceInner

- (_BPSSequenceInner)initWithDownstream:(id)downstream enumerator:(id)enumerator
{
  downstreamCopy = downstream;
  enumeratorCopy = enumerator;
  v14.receiver = self;
  v14.super_class = _BPSSequenceInner;
  v9 = [(_BPSSequenceInner *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_downstream, downstream);
    objc_storeStrong(&v10->_enumerator, enumerator);
    v10->_recursion = 0;
    nextObject = [(NSEnumerator *)v10->_enumerator nextObject];
    next = v10->_next;
    v10->_next = nextObject;

    v10->_lock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (void)requestDemand:(int64_t)demand
{
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  downstream = [(_BPSSequenceInner *)selfCopy downstream];
  if (downstream)
  {
    [(_BPSSequenceInner *)selfCopy setPendingDemand:[(_BPSSequenceInner *)selfCopy pendingDemand]+ demand];
    if (![(_BPSSequenceInner *)selfCopy recursion])
    {
      while (1)
      {
        if ([(_BPSSequenceInner *)selfCopy pendingDemand]< 1)
        {
          goto LABEL_3;
        }

        next = [(_BPSSequenceInner *)selfCopy next];
        if (!next)
        {
          break;
        }

        v6 = next;
        [(_BPSSequenceInner *)selfCopy setPendingDemand:[(_BPSSequenceInner *)selfCopy pendingDemand]- 1];
        enumerator = [(_BPSSequenceInner *)selfCopy enumerator];
        nextObject = [enumerator nextObject];
        [(_BPSSequenceInner *)selfCopy setNext:nextObject];

        [(_BPSSequenceInner *)selfCopy setRecursion:1];
        os_unfair_lock_unlock(&selfCopy->_lock);
        v9 = [downstream receiveInput:v6];
        os_unfair_lock_lock(&selfCopy->_lock);
        [(_BPSSequenceInner *)selfCopy setPendingDemand:[(_BPSSequenceInner *)selfCopy pendingDemand]+ v9];
        [(_BPSSequenceInner *)selfCopy setRecursion:0];
        next2 = [(_BPSSequenceInner *)selfCopy next];

        if (!next2)
        {
          [(_BPSSequenceInner *)selfCopy setDownstream:0];
          os_unfair_lock_unlock(&selfCopy->_lock);
          v11 = +[BPSCompletion success];
          [downstream receiveCompletion:v11];

          goto LABEL_13;
        }
      }

      [(_BPSSequenceInner *)selfCopy setDownstream:0];
      os_unfair_lock_unlock(&selfCopy->_lock);
      v6 = +[BPSCompletion success];
      [downstream receiveCompletion:v6];
LABEL_13:

      goto LABEL_4;
    }
  }

LABEL_3:
  os_unfair_lock_unlock(&selfCopy->_lock);
LABEL_4:
}

- (void)cancel
{
  selfCopy = self;
  os_unfair_lock_lock(&self->_lock);
  [(_BPSSequenceInner *)selfCopy setDownstream:0];
  os_unfair_lock_unlock(&self->_lock);
}

@end