@interface BPSMergeMany
+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5;
- (BPSMergeMany)initWithPublishers:(id)a3;
- (id)bookmark;
- (id)nextEvent;
- (id)validateBookmark:(id)a3;
- (void)applyBookmark:(id)a3;
- (void)reset;
- (void)subscribe:(id)a3;
@end

@implementation BPSMergeMany

- (id)nextEvent
{
  v3 = [(BPSMergeMany *)self publishers];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = [(BPSMergeMany *)self publishers];
      v7 = [v6 objectAtIndexedSubscript:{-[BPSMergeMany currentPublisher](self, "currentPublisher")}];

      v8 = [(BPSMergeMany *)self currentPublisher]+ 1;
      v9 = [(BPSMergeMany *)self publishers];
      -[BPSMergeMany setCurrentPublisher:](self, "setCurrentPublisher:", v8 % [v9 count]);

      if (([v7 completed] & 1) == 0)
      {
        v10 = [v7 nextEvent];
        if (v10)
        {
          break;
        }
      }

      ++v5;
      v11 = [(BPSMergeMany *)self publishers];
      v12 = [v11 count];

      if (v5 >= v12)
      {
        v4 = 0;
        goto LABEL_8;
      }
    }

    v4 = v10;
  }

LABEL_8:

  return v4;
}

- (id)bookmark
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(BPSMergeMany *)self currentPublisher];

  return [v2 numberWithUnsignedInteger:v3];
}

- (void)reset
{
  [(BPSMergeMany *)self setCurrentPublisher:0];
  v3.receiver = self;
  v3.super_class = BPSMergeMany;
  [(BPSPublisher *)&v3 reset];
}

- (BPSMergeMany)initWithPublishers:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BPSMergeMany;
  v6 = [(BPSMergeMany *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_publishers, a3);
  }

  return v7;
}

- (void)subscribe:(id)a3
{
  v15 = a3;
  v4 = [_BPSMerged alloc];
  v5 = [(BPSMergeMany *)self publishers];
  v6 = -[_BPSMerged initWithDownstream:count:](v4, "initWithDownstream:count:", v15, [v5 count]);

  [v15 receiveSubscription:v6];
  v7 = [(BPSMergeMany *)self publishers];
  v8 = [v7 count];

  if (v8)
  {
    v9 = 0;
    do
    {
      v10 = [[_BPSMergedSide alloc] initWithIndex:v9 merger:v6];
      v11 = [(BPSMergeMany *)self publishers];
      v12 = [v11 objectAtIndexedSubscript:v9];

      [v12 subscribe:v10];
      ++v9;
      v13 = [(BPSMergeMany *)self publishers];
      v14 = [v13 count];
    }

    while (v9 < v14);
  }
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
  v4 = [a3 unsignedIntegerValue];

  [(BPSMergeMany *)self setCurrentPublisher:v4];
}

+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5
{
  v5 = a4;
  v6 = [[BPSMergeMany alloc] initWithPublishers:v5];

  return v6;
}

@end