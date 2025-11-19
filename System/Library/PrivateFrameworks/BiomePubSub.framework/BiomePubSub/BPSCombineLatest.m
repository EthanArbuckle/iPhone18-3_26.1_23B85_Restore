@interface BPSCombineLatest
- (BOOL)completed;
- (BPSCombineLatest)initWithA:(id)a3 b:(id)a4;
- (id)nextEvent;
- (id)upstreamPublishers;
- (void)reset;
- (void)subscribe:(id)a3;
@end

@implementation BPSCombineLatest

- (BPSCombineLatest)initWithA:(id)a3 b:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BPSCombineLatest;
  v9 = [(BPSCombineLatest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_a, a3);
    objc_storeStrong(&v10->_b, a4);
    v10->_nextIsB = 0;
  }

  return v10;
}

- (void)subscribe:(id)a3
{
  v4 = a3;
  v9 = [(_BPSAbstractCombineLatest *)[_BPSCombineLatest2Inner alloc] initWithDownstream:v4 upstreamCount:2];
  v5 = [[_BPSAbstractCombineLatestSide alloc] initWithIndex:0 combiner:v9];
  v6 = [[_BPSAbstractCombineLatestSide alloc] initWithIndex:1 combiner:v9];
  v7 = [(BPSCombineLatest *)self a];
  [v7 subscribe:v5];

  v8 = [(BPSCombineLatest *)self b];
  [v8 subscribe:v6];

  [v4 receiveSubscription:v9];
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
  v3 = [(BPSCombineLatest *)self nextIsB];
  [(BPSCombineLatest *)self setNextIsB:[(BPSCombineLatest *)self nextIsB]^ 1];
  if (v3)
  {
    [(BPSCombineLatest *)self b];
  }

  else
  {
    [(BPSCombineLatest *)self a];
  }
  v4 = ;
  v5 = [v4 nextEvent];
  if (v5)
  {
    if (v3)
    {
      [(BPSCombineLatest *)self setLatestB:v5];
    }

    else
    {
      [(BPSCombineLatest *)self setLatestA:v5];
    }

    v6 = [(BPSCombineLatest *)self latestA];
    if (v6)
    {
      v7 = v6;
      v8 = [(BPSCombineLatest *)self latestB];

      if (v8)
      {
        v9 = v4;
        v10 = v5;
LABEL_20:
        v15 = [BPSTuple alloc];
        v16 = [(BPSCombineLatest *)self latestA];
        v17 = [(BPSCombineLatest *)self latestB];
        v18 = [(BPSTuple *)v15 initWithFirst:v16 second:v17];

        goto LABEL_22;
      }
    }
  }

  v11 = [(BPSCombineLatest *)self nextIsB];
  [(BPSCombineLatest *)self setNextIsB:[(BPSCombineLatest *)self nextIsB]^ 1];
  if (v11)
  {
    [(BPSCombineLatest *)self b];
  }

  else
  {
    [(BPSCombineLatest *)self a];
  }
  v9 = ;

  v10 = [v9 nextEvent];

  if (v10)
  {
    if (v11)
    {
      [(BPSCombineLatest *)self setLatestB:v10];
    }

    else
    {
      [(BPSCombineLatest *)self setLatestA:v10];
    }

    v12 = [(BPSCombineLatest *)self latestA];
    if (v12)
    {
      v13 = v12;
      v14 = [(BPSCombineLatest *)self latestB];

      if (v14)
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
      v8 = [v2 completed];

      if (!v8)
      {
        return 0;
      }
    }

    v9 = [(BPSCombineLatest *)self a];
    v10 = [v9 completed];
    if (v10 && ([(BPSCombineLatest *)self latestA], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v6 = 1;
    }

    else
    {
      v11 = [(BPSCombineLatest *)self b];
      if ([v11 completed])
      {
        v12 = [(BPSCombineLatest *)self latestB];
        v6 = v12 == 0;
      }

      else
      {
        v6 = 0;
      }

      if (!v10)
      {
        goto LABEL_18;
      }
    }

LABEL_18:
    return v6;
  }

  v2 = [(BPSCombineLatest *)self b];
  v5 = [v2 completed];

  if ((v5 & 1) == 0)
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