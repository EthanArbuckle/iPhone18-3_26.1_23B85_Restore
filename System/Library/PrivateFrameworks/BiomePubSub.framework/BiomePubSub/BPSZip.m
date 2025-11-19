@interface BPSZip
- (BOOL)completed;
- (BPSZip)initWithA:(id)a3 b:(id)a4;
- (id)_tryConstructResultTuple;
- (id)nextEvent;
- (id)upstreamPublishers;
- (void)reset;
- (void)subscribe:(id)a3;
@end

@implementation BPSZip

- (BPSZip)initWithA:(id)a3 b:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = BPSZip;
  v9 = [(BPSZip *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_a, a3);
    objc_storeStrong(&v10->_b, a4);
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

- (void)subscribe:(id)a3
{
  v4 = a3;
  v9 = [(_BPSAbstractZip *)[_BPSZip2Inner alloc] initWithDownstream:v4 upstreamCount:2];

  v5 = [(BPSZip *)self a];
  v6 = [[_BPSAbstractZipSide alloc] initWithIndex:0 zip:v9];
  [v5 subscribe:v6];

  v7 = [(BPSZip *)self b];
  v8 = [[_BPSAbstractZipSide alloc] initWithIndex:1 zip:v9];
  [v7 subscribe:v8];
}

- (id)_tryConstructResultTuple
{
  v3 = [(BPSZip *)self eventsA];
  if (![v3 count])
  {
    v9 = 0;
    goto LABEL_5;
  }

  v4 = [(BPSZip *)self eventsB];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(BPSZip *)self eventsA];
    v3 = [v6 objectAtIndexedSubscript:0];

    v7 = [(BPSZip *)self eventsB];
    v8 = [v7 objectAtIndexedSubscript:0];

    v9 = [[BPSTuple alloc] initWithFirst:v3 second:v8];
    v10 = [(BPSZip *)self eventsA];
    [v10 removeObjectAtIndex:0];

    v11 = [(BPSZip *)self eventsB];
    [v11 removeObjectAtIndex:0];

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
  v3 = [(BPSZip *)self nextIsB];
  [(BPSZip *)self setNextIsB:[(BPSZip *)self nextIsB]^ 1];
  if (v3)
  {
    [(BPSZip *)self b];
  }

  else
  {
    [(BPSZip *)self a];
  }
  v4 = ;
  v5 = [v4 nextEvent];
  if (!v5)
  {
    goto LABEL_10;
  }

  if (v3)
  {
    [(BPSZip *)self eventsB];
  }

  else
  {
    [(BPSZip *)self eventsA];
  }
  v6 = ;
  [v6 addObject:v5];

  v7 = [(BPSZip *)self _tryConstructResultTuple];
  if (v7)
  {
    v8 = v7;
    v9 = v5;
    v10 = v4;
  }

  else
  {
LABEL_10:
    v11 = [(BPSZip *)self nextIsB];
    [(BPSZip *)self setNextIsB:[(BPSZip *)self nextIsB]^ 1];
    if (v11)
    {
      [(BPSZip *)self b];
    }

    else
    {
      [(BPSZip *)self a];
    }
    v10 = ;

    v9 = [v10 nextEvent];

    if (!v9)
    {
      v8 = 0;
      goto LABEL_20;
    }

    if (v11)
    {
      [(BPSZip *)self eventsB];
    }

    else
    {
      [(BPSZip *)self eventsA];
    }
    v12 = ;
    [v12 addObject:v9];

    v8 = [(BPSZip *)self _tryConstructResultTuple];
  }

LABEL_20:

  return v8;
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
  v4 = [v3 completed];

  if (v4)
  {
    return 1;
  }

  v6 = [(BPSZip *)self b];
  v7 = [v6 completed];

  return v7;
}

@end