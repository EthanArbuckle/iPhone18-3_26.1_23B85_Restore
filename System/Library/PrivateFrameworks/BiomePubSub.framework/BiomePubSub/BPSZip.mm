@interface BPSZip
- (BOOL)completed;
- (BPSZip)initWithA:(id)a b:(id)b;
- (id)_tryConstructResultTuple;
- (id)nextEvent;
- (id)upstreamPublishers;
- (void)reset;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSZip

- (BPSZip)initWithA:(id)a b:(id)b
{
  aCopy = a;
  bCopy = b;
  v16.receiver = self;
  v16.super_class = BPSZip;
  v9 = [(BPSZip *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_a, a);
    objc_storeStrong(&v10->_b, b);
    v10->_nextIsB = 0;
    v11 = objc_opt_new();
    eventsA = v10->_eventsA;
    v10->_eventsA = v11;

    v13 = objc_opt_new();
    eventsB = v10->_eventsB;
    v10->_eventsB = v13;
  }

  return v10;
}

- (void)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v9 = [(_BPSAbstractZip *)[_BPSZip2Inner alloc] initWithDownstream:subscribeCopy upstreamCount:2];

  v5 = [(BPSZip *)self a];
  v6 = [[_BPSAbstractZipSide alloc] initWithIndex:0 zip:v9];
  [v5 subscribe:v6];

  v7 = [(BPSZip *)self b];
  v8 = [[_BPSAbstractZipSide alloc] initWithIndex:1 zip:v9];
  [v7 subscribe:v8];
}

- (id)_tryConstructResultTuple
{
  eventsA = [(BPSZip *)self eventsA];
  if (![eventsA count])
  {
    v9 = 0;
    goto LABEL_5;
  }

  eventsB = [(BPSZip *)self eventsB];
  v5 = [eventsB count];

  if (v5)
  {
    eventsA2 = [(BPSZip *)self eventsA];
    eventsA = [eventsA2 objectAtIndexedSubscript:0];

    eventsB2 = [(BPSZip *)self eventsB];
    v8 = [eventsB2 objectAtIndexedSubscript:0];

    v9 = [[BPSTuple alloc] initWithFirst:eventsA second:v8];
    eventsA3 = [(BPSZip *)self eventsA];
    [eventsA3 removeObjectAtIndex:0];

    eventsB3 = [(BPSZip *)self eventsB];
    [eventsB3 removeObjectAtIndex:0];

LABEL_5:
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (id)upstreamPublishers
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = [(BPSZip *)self a];
  v8[0] = v3;
  v4 = [(BPSZip *)self b];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)nextEvent
{
  nextIsB = [(BPSZip *)self nextIsB];
  [(BPSZip *)self setNextIsB:[(BPSZip *)self nextIsB]^ 1];
  if (nextIsB)
  {
    [(BPSZip *)self b];
  }

  else
  {
    [(BPSZip *)self a];
  }
  v4 = ;
  nextEvent = [v4 nextEvent];
  if (!nextEvent)
  {
    goto LABEL_10;
  }

  if (nextIsB)
  {
    [(BPSZip *)self eventsB];
  }

  else
  {
    [(BPSZip *)self eventsA];
  }
  v6 = ;
  [v6 addObject:nextEvent];

  _tryConstructResultTuple = [(BPSZip *)self _tryConstructResultTuple];
  if (_tryConstructResultTuple)
  {
    _tryConstructResultTuple2 = _tryConstructResultTuple;
    nextEvent2 = nextEvent;
    v10 = v4;
  }

  else
  {
LABEL_10:
    nextIsB2 = [(BPSZip *)self nextIsB];
    [(BPSZip *)self setNextIsB:[(BPSZip *)self nextIsB]^ 1];
    if (nextIsB2)
    {
      [(BPSZip *)self b];
    }

    else
    {
      [(BPSZip *)self a];
    }
    v10 = ;

    nextEvent2 = [v10 nextEvent];

    if (!nextEvent2)
    {
      _tryConstructResultTuple2 = 0;
      goto LABEL_20;
    }

    if (nextIsB2)
    {
      [(BPSZip *)self eventsB];
    }

    else
    {
      [(BPSZip *)self eventsA];
    }
    v12 = ;
    [v12 addObject:nextEvent2];

    _tryConstructResultTuple2 = [(BPSZip *)self _tryConstructResultTuple];
  }

LABEL_20:

  return _tryConstructResultTuple2;
}

- (void)reset
{
  [(BPSZip *)self setNextIsB:0];
  v3 = objc_opt_new();
  [(BPSZip *)self setEventsA:v3];

  v4 = objc_opt_new();
  [(BPSZip *)self setEventsB:v4];

  v5.receiver = self;
  v5.super_class = BPSZip;
  [(BPSPublisher *)&v5 reset];
}

- (BOOL)completed
{
  v3 = [(BPSZip *)self a];
  completed = [v3 completed];

  if (completed)
  {
    return 1;
  }

  v6 = [(BPSZip *)self b];
  completed2 = [v6 completed];

  return completed2;
}

@end