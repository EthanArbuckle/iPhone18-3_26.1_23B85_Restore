@interface BPSCollect
+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state;
- (BOOL)completed;
- (BPSCollect)initWithUpstream:(id)upstream;
- (id)bookmarkableUpstreams;
- (id)nextEvent;
- (id)upstreamPublishers;
- (id)validateBookmark:(id)bookmark;
- (void)reset;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSCollect

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  upstream = [(BPSCollect *)self upstream];
  v6[0] = upstream;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)nextEvent
{
  upstream = [(BPSCollect *)self upstream];
  nextEvent = [upstream nextEvent];

  if (nextEvent)
  {
    do
    {
      results = [(BPSCollect *)self results];
      [results addObject:nextEvent];

      upstream2 = [(BPSCollect *)self upstream];
      nextEvent2 = [upstream2 nextEvent];

      nextEvent = nextEvent2;
    }

    while (nextEvent2);
  }

  upstream3 = [(BPSCollect *)self upstream];
  if ([upstream3 completed])
  {
    returned = [(BPSCollect *)self returned];

    if (!returned)
    {
      [(BPSCollect *)self setReturned:1];
      results2 = [(BPSCollect *)self results];
      goto LABEL_8;
    }
  }

  else
  {
  }

  results2 = 0;
LABEL_8:

  return results2;
}

- (BOOL)completed
{
  upstream = [(BPSCollect *)self upstream];
  if ([upstream completed])
  {
    returned = [(BPSCollect *)self returned];
  }

  else
  {
    returned = 0;
  }

  return returned;
}

- (void)reset
{
  v3 = objc_opt_new();
  [(BPSCollect *)self setResults:v3];

  [(BPSCollect *)self setReturned:0];
  v4.receiver = self;
  v4.super_class = BPSCollect;
  [(BPSPublisher *)&v4 reset];
}

- (BPSCollect)initWithUpstream:(id)upstream
{
  upstreamCopy = upstream;
  v11.receiver = self;
  v11.super_class = BPSCollect;
  v6 = [(BPSCollect *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_upstream, upstream);
    v8 = objc_opt_new();
    results = v7->_results;
    v7->_results = v8;
  }

  return v7;
}

- (void)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v5 = [_BPSCollectInner alloc];
  v7 = [(BPSReduceProducer *)v5 initWithDownstream:subscribeCopy initial:MEMORY[0x1E695E0F0] reduce:&__block_literal_global_8];

  upstream = [(BPSCollect *)self upstream];
  [upstream subscribe:v7];
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

+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state
{
  publisherCopy = publisher;
  upstreamsCopy = upstreams;
  if ([upstreamsCopy count])
  {
    v8 = [BPSCollect alloc];
    v9 = [upstreamsCopy objectAtIndexedSubscript:0];
    v10 = [(BPSCollect *)v8 initWithUpstream:v9];
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BPSCollect(BMBookmarkOperators) publisherWithPublisher:v11 upstreams:? bookmarkState:?];
    }

    v10 = publisherCopy;
  }

  return v10;
}

- (id)bookmarkableUpstreams
{
  v6[1] = *MEMORY[0x1E69E9840];
  upstream = [(BPSCollect *)self upstream];
  v6[0] = upstream;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end