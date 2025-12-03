@interface BPSCombineLatest
- (BOOL)completed;
- (BPSCombineLatest)initWithA:(id)a b:(id)b;
- (id)nextEvent;
- (id)upstreamPublishers;
- (void)reset;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSCombineLatest

- (BPSCombineLatest)initWithA:(id)a b:(id)b
{
  aCopy = a;
  bCopy = b;
  v12.receiver = self;
  v12.super_class = BPSCombineLatest;
  v9 = [(BPSCombineLatest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_a, a);
    objc_storeStrong(&v10->_b, b);
    v10->_nextIsB = 0;
  }

  return v10;
}

- (void)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v9 = [(_BPSAbstractCombineLatest *)[_BPSCombineLatest2Inner alloc] initWithDownstream:subscribeCopy upstreamCount:2];
  v5 = [[_BPSAbstractCombineLatestSide alloc] initWithIndex:0 combiner:v9];
  v6 = [[_BPSAbstractCombineLatestSide alloc] initWithIndex:1 combiner:v9];
  v7 = [(BPSCombineLatest *)self a];
  [v7 subscribe:v5];

  v8 = [(BPSCombineLatest *)self b];
  [v8 subscribe:v6];

  [subscribeCopy receiveSubscription:v9];
}

- (id)upstreamPublishers
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = [(BPSCombineLatest *)self a];
  v8[0] = v3;
  v4 = [(BPSCombineLatest *)self b];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)nextEvent
{
  nextIsB = [(BPSCombineLatest *)self nextIsB];
  [(BPSCombineLatest *)self setNextIsB:[(BPSCombineLatest *)self nextIsB]^ 1];
  if (nextIsB)
  {
    [(BPSCombineLatest *)self b];
  }

  else
  {
    [(BPSCombineLatest *)self a];
  }
  v4 = ;
  nextEvent = [v4 nextEvent];
  if (nextEvent)
  {
    if (nextIsB)
    {
      [(BPSCombineLatest *)self setLatestB:nextEvent];
    }

    else
    {
      [(BPSCombineLatest *)self setLatestA:nextEvent];
    }

    latestA = [(BPSCombineLatest *)self latestA];
    if (latestA)
    {
      v7 = latestA;
      latestB = [(BPSCombineLatest *)self latestB];

      if (latestB)
      {
        v9 = v4;
        nextEvent2 = nextEvent;
LABEL_20:
        v15 = [BPSTuple alloc];
        latestA2 = [(BPSCombineLatest *)self latestA];
        latestB2 = [(BPSCombineLatest *)self latestB];
        v18 = [(BPSTuple *)v15 initWithFirst:latestA2 second:latestB2];

        goto LABEL_22;
      }
    }
  }

  nextIsB2 = [(BPSCombineLatest *)self nextIsB];
  [(BPSCombineLatest *)self setNextIsB:[(BPSCombineLatest *)self nextIsB]^ 1];
  if (nextIsB2)
  {
    [(BPSCombineLatest *)self b];
  }

  else
  {
    [(BPSCombineLatest *)self a];
  }
  v9 = ;

  nextEvent2 = [v9 nextEvent];

  if (nextEvent2)
  {
    if (nextIsB2)
    {
      [(BPSCombineLatest *)self setLatestB:nextEvent2];
    }

    else
    {
      [(BPSCombineLatest *)self setLatestA:nextEvent2];
    }

    latestA3 = [(BPSCombineLatest *)self latestA];
    if (latestA3)
    {
      v13 = latestA3;
      latestB3 = [(BPSCombineLatest *)self latestB];

      if (latestB3)
      {
        goto LABEL_20;
      }
    }
  }

  v18 = 0;
LABEL_22:

  return v18;
}

- (BOOL)completed
{
  v4 = [(BPSCombineLatest *)self a];
  if (([v4 completed] & 1) == 0)
  {

LABEL_5:
    v7 = [(BPSCombineLatest *)self a];
    if ([v7 completed])
    {
    }

    else
    {
      v2 = [(BPSCombineLatest *)self b];
      completed = [v2 completed];

      if (!completed)
      {
        return 0;
      }
    }

    v9 = [(BPSCombineLatest *)self a];
    completed2 = [v9 completed];
    if (completed2 && ([(BPSCombineLatest *)self latestA], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v6 = 1;
    }

    else
    {
      v11 = [(BPSCombineLatest *)self b];
      if ([v11 completed])
      {
        latestB = [(BPSCombineLatest *)self latestB];
        v6 = latestB == 0;
      }

      else
      {
        v6 = 0;
      }

      if (!completed2)
      {
        goto LABEL_18;
      }
    }

LABEL_18:
    return v6;
  }

  v2 = [(BPSCombineLatest *)self b];
  completed3 = [v2 completed];

  if ((completed3 & 1) == 0)
  {
    goto LABEL_5;
  }

  return 1;
}

- (void)reset
{
  [(BPSCombineLatest *)self setLatestA:0];
  [(BPSCombineLatest *)self setLatestB:0];
  [(BPSCombineLatest *)self setNextIsB:0];
  v3.receiver = self;
  v3.super_class = BPSCombineLatest;
  [(BPSPublisher *)&v3 reset];
}

@end