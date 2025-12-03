@interface BPSFlatMap
+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state;
- (BOOL)completed;
- (BPSFlatMap)initWithUpstream:(id)upstream maxPublishers:(int64_t)publishers transform:(id)transform;
- (id)bookmark;
- (id)bookmarkableUpstreams;
- (id)nextEvent;
- (id)startWithSubscriber:(id)subscriber;
- (id)upstreamPublishers;
- (id)validateBookmark:(id)bookmark;
- (void)applyBookmark:(id)bookmark;
- (void)reset;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSFlatMap

- (BPSFlatMap)initWithUpstream:(id)upstream maxPublishers:(int64_t)publishers transform:(id)transform
{
  upstreamCopy = upstream;
  transformCopy = transform;
  v16.receiver = self;
  v16.super_class = BPSFlatMap;
  v11 = [(BPSFlatMap *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_upstream, upstream);
    v12->_maxPublishers = publishers;
    v13 = [transformCopy copy];
    transform = v12->_transform;
    v12->_transform = v13;
  }

  return v12;
}

- (void)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v5 = [_BPSFlatMapOuter alloc];
  maxPublishers = [(BPSFlatMap *)self maxPublishers];
  transform = [(BPSFlatMap *)self transform];
  v9 = [(_BPSFlatMapOuter *)v5 initWithDownstream:subscribeCopy maxPublishers:maxPublishers map:transform];

  [subscribeCopy receiveSubscription:v9];
  upstream = [(BPSFlatMap *)self upstream];
  [upstream subscribe:v9];
}

- (id)startWithSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  [(BPSFlatMap *)self setSubscriber:subscriberCopy];
  v7.receiver = self;
  v7.super_class = BPSFlatMap;
  v5 = [(BPSPublisher *)&v7 startWithSubscriber:subscriberCopy];

  return v5;
}

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  upstream = [(BPSFlatMap *)self upstream];
  v6[0] = upstream;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)nextEvent
{
  currentPublisher = [(BPSFlatMap *)self currentPublisher];
  if (!currentPublisher)
  {
    goto LABEL_16;
  }

  v4 = currentPublisher;
  currentPublisher2 = [(BPSFlatMap *)self currentPublisher];
  completed = [currentPublisher2 completed];

  if ((completed & 1) != 0 || (-[BPSFlatMap currentPublisher](self, "currentPublisher"), v7 = objc_claimAutoreleasedReturnValue(), [v7 nextEvent], nextEvent2 = objc_claimAutoreleasedReturnValue(), v7, !nextEvent2))
  {
LABEL_16:
    while (1)
    {
      currentPublisher3 = [(BPSFlatMap *)self currentPublisher];
      if (currentPublisher3)
      {
        v10 = currentPublisher3;
        currentPublisher4 = [(BPSFlatMap *)self currentPublisher];
        completed2 = [currentPublisher4 completed];

        if (!completed2)
        {
          goto LABEL_9;
        }
      }

      upstream = [(BPSFlatMap *)self upstream];
      nextEvent = [upstream nextEvent];

      if (!nextEvent)
      {
LABEL_9:
        nextEvent2 = 0;
        goto LABEL_11;
      }

      transform = [(BPSFlatMap *)self transform];
      v16 = (transform)[2](transform, nextEvent);

      subscriber = [(BPSFlatMap *)self subscriber];
      v18 = [v16 startWithSubscriber:subscriber];

      currentPublisher5 = [(BPSFlatMap *)self currentPublisher];
      [currentPublisher5 reset];

      [(BPSFlatMap *)self setCurrentPublisher:v16];
      [(BPSFlatMap *)self setCurrentEvent:nextEvent];
      currentPublisher6 = [(BPSFlatMap *)self currentPublisher];
      nextEvent2 = [currentPublisher6 nextEvent];

      if (nextEvent2)
      {
        break;
      }
    }
  }

LABEL_11:

  return nextEvent2;
}

- (BOOL)completed
{
  currentPublisher = [(BPSFlatMap *)self currentPublisher];
  if (currentPublisher)
  {
    v4 = currentPublisher;
    currentPublisher2 = [(BPSFlatMap *)self currentPublisher];
    completed = [currentPublisher2 completed];

    if (!completed)
    {
      return 0;
    }
  }

  upstream = [(BPSFlatMap *)self upstream];
  completed2 = [upstream completed];

  return completed2;
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
  currentPublisher = [(BPSFlatMap *)self currentPublisher];
  if (currentPublisher)
  {
    v4 = currentPublisher;
    currentEvent = [(BPSFlatMap *)self currentEvent];

    if (currentEvent)
    {
      currentPublisher2 = [(BPSFlatMap *)self currentPublisher];
      v7 = [currentPublisher2 conformsToProtocol:&unk_1F4872E18];

      if (v7)
      {
        currentPublisher3 = [(BPSFlatMap *)self currentPublisher];
        if ([objc_opt_class() isPipelineBookmarkable:currentPublisher3])
        {
          bookmarkNode = [currentPublisher3 bookmarkNode];
          v14[0] = @"currentEvent";
          currentEvent2 = [(BPSFlatMap *)self currentEvent];
          v14[1] = @"currentPublisherBookmark";
          v15[0] = currentEvent2;
          v15[1] = bookmarkNode;
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

- (id)validateBookmark:(id)bookmark
{
  v24[1] = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  if (!bookmarkCopy)
  {
    v7 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bookmarkCopy = bookmarkCopy;
    v5 = [bookmarkCopy objectForKeyedSubscript:@"currentEvent"];
    if (v5)
    {
      v6 = [bookmarkCopy objectForKeyedSubscript:@"currentPublisherBookmark"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = 0;
LABEL_11:

        goto LABEL_12;
      }

      v13 = objc_alloc(MEMORY[0x1E696AEC0]);
      v14 = objc_opt_class();
      v12 = [v13 initWithFormat:@"%@ expected current publisher bookmark node of class %@, but received %@", v14, objc_opt_class(), bookmarkCopy];
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
  bookmarkCopy = [v8 initWithFormat:@"%@ expected bookmark dictionary of class %@, but received %@", v9, objc_opt_class(), bookmarkCopy];
  v10 = MEMORY[0x1E696ABC0];
  v23 = *MEMORY[0x1E696A578];
  v24[0] = bookmarkCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v7 = [v10 errorWithDomain:@"BiomePubSubError" code:2 userInfo:v5];
LABEL_12:

LABEL_13:
  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)applyBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  if (bookmarkCopy)
  {
    v13 = bookmarkCopy;
    v5 = [bookmarkCopy objectForKeyedSubscript:@"currentEvent"];
    v6 = [v13 objectForKeyedSubscript:@"currentPublisherBookmark"];
    [(BPSFlatMap *)self setCurrentEvent:v5];
    transform = [(BPSFlatMap *)self transform];
    currentEvent = [(BPSFlatMap *)self currentEvent];
    v9 = (transform)[2](transform, currentEvent);
    [(BPSFlatMap *)self setCurrentPublisher:v9];

    if (v6)
    {
      currentPublisher = [(BPSFlatMap *)self currentPublisher];
      v11 = [currentPublisher conformsToProtocol:&unk_1F4872E18];

      if (v11)
      {
        currentPublisher2 = [(BPSFlatMap *)self currentPublisher];
        [currentPublisher2 applyBookmarkNode:v6];
      }
    }

    bookmarkCopy = v13;
  }
}

+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state
{
  publisherCopy = publisher;
  upstreamsCopy = upstreams;
  v8 = [BPSFlatMap alloc];
  v9 = [upstreamsCopy objectAtIndexedSubscript:0];

  maxPublishers = [publisherCopy maxPublishers];
  transform = [publisherCopy transform];
  v12 = [(BPSFlatMap *)v8 initWithUpstream:v9 maxPublishers:maxPublishers transform:transform];

  return v12;
}

- (id)bookmarkableUpstreams
{
  v8[1] = *MEMORY[0x1E69E9840];
  upstream = [(BPSFlatMap *)self upstream];
  if (upstream)
  {
    upstream2 = [(BPSFlatMap *)self upstream];
    v8[0] = upstream2;
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