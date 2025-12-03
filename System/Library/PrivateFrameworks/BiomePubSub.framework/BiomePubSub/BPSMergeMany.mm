@interface BPSMergeMany
+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state;
- (BPSMergeMany)initWithPublishers:(id)publishers;
- (id)bookmark;
- (id)nextEvent;
- (id)validateBookmark:(id)bookmark;
- (void)applyBookmark:(id)bookmark;
- (void)reset;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSMergeMany

- (id)nextEvent
{
  publishers = [(BPSMergeMany *)self publishers];
  v4 = [publishers count];

  if (v4)
  {
    v5 = 0;
    while (1)
    {
      publishers2 = [(BPSMergeMany *)self publishers];
      v7 = [publishers2 objectAtIndexedSubscript:{-[BPSMergeMany currentPublisher](self, "currentPublisher")}];

      v8 = [(BPSMergeMany *)self currentPublisher]+ 1;
      publishers3 = [(BPSMergeMany *)self publishers];
      -[BPSMergeMany setCurrentPublisher:](self, "setCurrentPublisher:", v8 % [publishers3 count]);

      if (([v7 completed] & 1) == 0)
      {
        nextEvent = [v7 nextEvent];
        if (nextEvent)
        {
          break;
        }
      }

      ++v5;
      publishers4 = [(BPSMergeMany *)self publishers];
      v12 = [publishers4 count];

      if (v5 >= v12)
      {
        v4 = 0;
        goto LABEL_8;
      }
    }

    v4 = nextEvent;
  }

LABEL_8:

  return v4;
}

- (id)bookmark
{
  v2 = MEMORY[0x1E696AD98];
  currentPublisher = [(BPSMergeMany *)self currentPublisher];

  return [v2 numberWithUnsignedInteger:currentPublisher];
}

- (void)reset
{
  [(BPSMergeMany *)self setCurrentPublisher:0];
  v3.receiver = self;
  v3.super_class = BPSMergeMany;
  [(BPSPublisher *)&v3 reset];
}

- (BPSMergeMany)initWithPublishers:(id)publishers
{
  publishersCopy = publishers;
  v9.receiver = self;
  v9.super_class = BPSMergeMany;
  v6 = [(BPSMergeMany *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_publishers, publishers);
  }

  return v7;
}

- (void)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v4 = [_BPSMerged alloc];
  publishers = [(BPSMergeMany *)self publishers];
  v6 = -[_BPSMerged initWithDownstream:count:](v4, "initWithDownstream:count:", subscribeCopy, [publishers count]);

  [subscribeCopy receiveSubscription:v6];
  publishers2 = [(BPSMergeMany *)self publishers];
  v8 = [publishers2 count];

  if (v8)
  {
    v9 = 0;
    do
    {
      v10 = [[_BPSMergedSide alloc] initWithIndex:v9 merger:v6];
      publishers3 = [(BPSMergeMany *)self publishers];
      v12 = [publishers3 objectAtIndexedSubscript:v9];

      [v12 subscribe:v10];
      ++v9;
      publishers4 = [(BPSMergeMany *)self publishers];
      v14 = [publishers4 count];
    }

    while (v9 < v14);
  }
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
  unsignedIntegerValue = [bookmark unsignedIntegerValue];

  [(BPSMergeMany *)self setCurrentPublisher:unsignedIntegerValue];
}

+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state
{
  upstreamsCopy = upstreams;
  v6 = [[BPSMergeMany alloc] initWithPublishers:upstreamsCopy];

  return v6;
}

@end