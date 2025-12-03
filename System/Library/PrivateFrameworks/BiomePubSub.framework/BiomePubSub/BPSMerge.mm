@interface BPSMerge
+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state;
- (BPSMerge)initWithA:(id)a b:(id)b;
- (id)bookmark;
- (id)bookmarkableUpstreams;
- (id)nextEvent;
- (id)upstreamPublishers;
- (id)validateBookmark:(id)bookmark;
- (void)applyBookmark:(id)bookmark;
- (void)reset;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSMerge

- (BPSMerge)initWithA:(id)a b:(id)b
{
  aCopy = a;
  bCopy = b;
  v12.receiver = self;
  v12.super_class = BPSMerge;
  v9 = [(BPSMerge *)&v12 init];
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
  v9 = [[_BPSMerged alloc] initWithDownstream:subscribeCopy count:2];
  [subscribeCopy receiveSubscription:v9];

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
  nextEvent = [v3 nextEvent];
  if (nextEvent)
  {
    nextEvent2 = nextEvent;
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
    nextEvent2 = [v6 nextEvent];
    v3 = v6;
  }

  return nextEvent2;
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
  nextIsB = [(BPSMerge *)self nextIsB];

  return [v2 numberWithBool:nextIsB];
}

- (id)validateBookmark:(id)bookmark
{
  v13[1] = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = objc_opt_class();
    bookmarkCopy = [v5 initWithFormat:@"%@ expected bookmark of class %@, but received %@", v6, objc_opt_class(), bookmarkCopy];
    v8 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A578];
    v13[0] = bookmarkCopy;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v4 = [v8 errorWithDomain:@"BiomePubSubError" code:2 userInfo:v9];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)applyBookmark:(id)bookmark
{
  bOOLValue = [bookmark BOOLValue];

  [(BPSMerge *)self setNextIsB:bOOLValue];
}

+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state
{
  upstreamsCopy = upstreams;
  v6 = [BPSMerge alloc];
  v7 = [upstreamsCopy objectAtIndexedSubscript:0];
  v8 = [upstreamsCopy objectAtIndexedSubscript:1];

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