@interface BPSFlatMap
+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5;
- (BOOL)completed;
- (BPSFlatMap)initWithUpstream:(id)a3 maxPublishers:(int64_t)a4 transform:(id)a5;
- (id)bookmark;
- (id)bookmarkableUpstreams;
- (id)nextEvent;
- (id)startWithSubscriber:(id)a3;
- (id)upstreamPublishers;
- (id)validateBookmark:(id)a3;
- (void)applyBookmark:(id)a3;
- (void)reset;
- (void)subscribe:(id)a3;
@end

@implementation BPSFlatMap

- (BPSFlatMap)initWithUpstream:(id)a3 maxPublishers:(int64_t)a4 transform:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = BPSFlatMap;
  v11 = [(BPSFlatMap *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_upstream, a3);
    v12->_maxPublishers = a4;
    v13 = [v10 copy];
    transform = v12->_transform;
    v12->_transform = v13;
  }

  return v12;
}

- (void)subscribe:(id)a3
{
  v4 = a3;
  v5 = [_BPSFlatMapOuter alloc];
  v6 = [(BPSFlatMap *)self maxPublishers];
  v7 = [(BPSFlatMap *)self transform];
  v9 = [(_BPSFlatMapOuter *)v5 initWithDownstream:v4 maxPublishers:v6 map:v7];

  [v4 receiveSubscription:v9];
  v8 = [(BPSFlatMap *)self upstream];
  [v8 subscribe:v9];
}

- (id)startWithSubscriber:(id)a3
{
  v4 = a3;
  [(BPSFlatMap *)self setSubscriber:v4];
  v7.receiver = self;
  v7.super_class = BPSFlatMap;
  v5 = [(BPSPublisher *)&v7 startWithSubscriber:v4];

  return v5;
}

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(BPSFlatMap *)self upstream];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)nextEvent
{
  v3 = [(BPSFlatMap *)self currentPublisher];
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = v3;
  v5 = [(BPSFlatMap *)self currentPublisher];
  v6 = [v5 completed];

  if ((v6 & 1) != 0 || (-[BPSFlatMap currentPublisher](self, "currentPublisher"), v7 = objc_claimAutoreleasedReturnValue(), [v7 nextEvent], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
LABEL_16:
    while (1)
    {
      v9 = [(BPSFlatMap *)self currentPublisher];
      if (v9)
      {
        v10 = v9;
        v11 = [(BPSFlatMap *)self currentPublisher];
        v12 = [v11 completed];

        if (!v12)
        {
          goto LABEL_9;
        }
      }

      v13 = [(BPSFlatMap *)self upstream];
      v14 = [v13 nextEvent];

      if (!v14)
      {
LABEL_9:
        v8 = 0;
        goto LABEL_11;
      }

      v15 = [(BPSFlatMap *)self transform];
      v16 = (v15)[2](v15, v14);

      v17 = [(BPSFlatMap *)self subscriber];
      v18 = [v16 startWithSubscriber:v17];

      v19 = [(BPSFlatMap *)self currentPublisher];
      [v19 reset];

      [(BPSFlatMap *)self setCurrentPublisher:v16];
      [(BPSFlatMap *)self setCurrentEvent:v14];
      v20 = [(BPSFlatMap *)self currentPublisher];
      v8 = [v20 nextEvent];

      if (v8)
      {
        break;
      }
    }
  }

LABEL_11:

  return v8;
}

- (BOOL)completed
{
  v3 = [(BPSFlatMap *)self currentPublisher];
  if (v3)
  {
    v4 = v3;
    v5 = [(BPSFlatMap *)self currentPublisher];
    v6 = [v5 completed];

    if (!v6)
    {
      return 0;
    }
  }

  v7 = [(BPSFlatMap *)self upstream];
  v8 = [v7 completed];

  return v8;
}

- (void)reset
{
  [(BPSFlatMap *)self setCurrentPublisher:0];
  [(BPSFlatMap *)self setCurrentEvent:0];
  [(BPSFlatMap *)self setSubscriber:0];
  v3.receiver = self;
  v3.super_class = BPSFlatMap;
  [(BPSPublisher *)&v3 reset];
}

- (id)bookmark
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = [(BPSFlatMap *)self currentPublisher];
  if (v3)
  {
    v4 = v3;
    v5 = [(BPSFlatMap *)self currentEvent];

    if (v5)
    {
      v6 = [(BPSFlatMap *)self currentPublisher];
      v7 = [v6 conformsToProtocol:&unk_1F4872E18];

      if (v7)
      {
        v8 = [(BPSFlatMap *)self currentPublisher];
        if ([objc_opt_class() isPipelineBookmarkable:v8])
        {
          v9 = [v8 bookmarkNode];
          v14[0] = @"currentEvent";
          v10 = [(BPSFlatMap *)self currentEvent];
          v14[1] = @"currentPublisherBookmark";
          v15[0] = v10;
          v15[1] = v9;
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

          goto LABEL_8;
        }
      }
    }
  }

  v11 = 0;
LABEL_8:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)validateBookmark:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v7 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 objectForKeyedSubscript:@"currentEvent"];
    if (v5)
    {
      v6 = [v4 objectForKeyedSubscript:@"currentPublisherBookmark"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = 0;
LABEL_11:

        goto LABEL_12;
      }

      v13 = objc_alloc(MEMORY[0x1E696AEC0]);
      v14 = objc_opt_class();
      v12 = [v13 initWithFormat:@"%@ expected current publisher bookmark node of class %@, but received %@", v14, objc_opt_class(), v4];
      v15 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A578];
      v20 = v12;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v7 = [v15 errorWithDomain:@"BiomePubSubError" code:2 userInfo:v16];
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ expected current event, but received nil", objc_opt_class()];
      v11 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A578];
      v22 = v6;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v7 = [v11 errorWithDomain:@"BiomePubSubError" code:2 userInfo:v12];
    }

    goto LABEL_11;
  }

  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = objc_opt_class();
  v4 = [v8 initWithFormat:@"%@ expected bookmark dictionary of class %@, but received %@", v9, objc_opt_class(), v3];
  v10 = MEMORY[0x1E696ABC0];
  v23 = *MEMORY[0x1E696A578];
  v24[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v7 = [v10 errorWithDomain:@"BiomePubSubError" code:2 userInfo:v5];
LABEL_12:

LABEL_13:
  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)applyBookmark:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = v4;
    v5 = [v4 objectForKeyedSubscript:@"currentEvent"];
    v6 = [v13 objectForKeyedSubscript:@"currentPublisherBookmark"];
    [(BPSFlatMap *)self setCurrentEvent:v5];
    v7 = [(BPSFlatMap *)self transform];
    v8 = [(BPSFlatMap *)self currentEvent];
    v9 = (v7)[2](v7, v8);
    [(BPSFlatMap *)self setCurrentPublisher:v9];

    if (v6)
    {
      v10 = [(BPSFlatMap *)self currentPublisher];
      v11 = [v10 conformsToProtocol:&unk_1F4872E18];

      if (v11)
      {
        v12 = [(BPSFlatMap *)self currentPublisher];
        [v12 applyBookmarkNode:v6];
      }
    }

    v4 = v13;
  }
}

+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [BPSFlatMap alloc];
  v9 = [v7 objectAtIndexedSubscript:0];

  v10 = [v6 maxPublishers];
  v11 = [v6 transform];
  v12 = [(BPSFlatMap *)v8 initWithUpstream:v9 maxPublishers:v10 transform:v11];

  return v12;
}

- (id)bookmarkableUpstreams
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [(BPSFlatMap *)self upstream];
  if (v3)
  {
    v4 = [(BPSFlatMap *)self upstream];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end