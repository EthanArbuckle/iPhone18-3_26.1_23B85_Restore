@interface BPSMerge
+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5;
- (BPSMerge)initWithA:(id)a3 b:(id)a4;
- (id)bookmark;
- (id)bookmarkableUpstreams;
- (id)nextEvent;
- (id)upstreamPublishers;
- (id)validateBookmark:(id)a3;
- (void)applyBookmark:(id)a3;
- (void)reset;
- (void)subscribe:(id)a3;
@end

@implementation BPSMerge

- (BPSMerge)initWithA:(id)a3 b:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BPSMerge;
  v9 = [(BPSMerge *)&v12 init];
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
  v9 = [[_BPSMerged alloc] initWithDownstream:v4 count:2];
  [v4 receiveSubscription:v9];

  v5 = [(BPSMerge *)self a];
  v6 = [[_BPSMergedSide alloc] initWithIndex:0 merger:v9];
  [v5 subscribe:v6];

  v7 = [(BPSMerge *)self b];
  v8 = [[_BPSMergedSide alloc] initWithIndex:1 merger:v9];
  [v7 subscribe:v8];
}

- (id)upstreamPublishers
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = [(BPSMerge *)self a];
  v8[0] = v3;
  v4 = [(BPSMerge *)self b];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)nextEvent
{
  if ([(BPSMerge *)self nextIsB])
  {
    [(BPSMerge *)self b];
  }

  else
  {
    [(BPSMerge *)self a];
  }
  v3 = ;
  [(BPSMerge *)self setNextIsB:[(BPSMerge *)self nextIsB]^ 1];
  v4 = [v3 nextEvent];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    if ([(BPSMerge *)self nextIsB])
    {
      [(BPSMerge *)self b];
    }

    else
    {
      [(BPSMerge *)self a];
    }
    v6 = ;

    [(BPSMerge *)self setNextIsB:[(BPSMerge *)self nextIsB]^ 1];
    v5 = [v6 nextEvent];
    v3 = v6;
  }

  return v5;
}

- (void)reset
{
  [(BPSMerge *)self setNextIsB:0];
  v3.receiver = self;
  v3.super_class = BPSMerge;
  [(BPSPublisher *)&v3 reset];
}

- (id)bookmark
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(BPSMerge *)self nextIsB];

  return [v2 numberWithBool:v3];
}

- (id)validateBookmark:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = objc_opt_class();
    v7 = [v5 initWithFormat:@"%@ expected bookmark of class %@, but received %@", v6, objc_opt_class(), v3];
    v8 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A578];
    v13[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v4 = [v8 errorWithDomain:@"BiomePubSubError" code:2 userInfo:v9];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)applyBookmark:(id)a3
{
  v4 = [a3 BOOLValue];

  [(BPSMerge *)self setNextIsB:v4];
}

+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5
{
  v5 = a4;
  v6 = [BPSMerge alloc];
  v7 = [v5 objectAtIndexedSubscript:0];
  v8 = [v5 objectAtIndexedSubscript:1];

  v9 = [(BPSMerge *)v6 initWithA:v7 b:v8];

  return v9;
}

- (id)bookmarkableUpstreams
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = [(BPSMerge *)self a];
  v8[0] = v3;
  v4 = [(BPSMerge *)self b];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end