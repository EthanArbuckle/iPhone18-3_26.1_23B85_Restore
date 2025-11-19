@interface BPSCollect
+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5;
- (BOOL)completed;
- (BPSCollect)initWithUpstream:(id)a3;
- (id)bookmarkableUpstreams;
- (id)nextEvent;
- (id)upstreamPublishers;
- (id)validateBookmark:(id)a3;
- (void)reset;
- (void)subscribe:(id)a3;
@end

@implementation BPSCollect

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(BPSCollect *)self upstream];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)nextEvent
{
  v3 = [(BPSCollect *)self upstream];
  v4 = [v3 nextEvent];

  if (v4)
  {
    do
    {
      v5 = [(BPSCollect *)self results];
      [v5 addObject:v4];

      v6 = [(BPSCollect *)self upstream];
      v7 = [v6 nextEvent];

      v4 = v7;
    }

    while (v7);
  }

  v8 = [(BPSCollect *)self upstream];
  if ([v8 completed])
  {
    v9 = [(BPSCollect *)self returned];

    if (!v9)
    {
      [(BPSCollect *)self setReturned:1];
      v10 = [(BPSCollect *)self results];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (BOOL)completed
{
  v3 = [(BPSCollect *)self upstream];
  if ([v3 completed])
  {
    v4 = [(BPSCollect *)self returned];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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

- (BPSCollect)initWithUpstream:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = BPSCollect;
  v6 = [(BPSCollect *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_upstream, a3);
    v8 = objc_opt_new();
    results = v7->_results;
    v7->_results = v8;
  }

  return v7;
}

- (void)subscribe:(id)a3
{
  v4 = a3;
  v5 = [_BPSCollectInner alloc];
  v7 = [(BPSReduceProducer *)v5 initWithDownstream:v4 initial:MEMORY[0x1E695E0F0] reduce:&__block_literal_global_8];

  v6 = [(BPSCollect *)self upstream];
  [v6 subscribe:v7];
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

+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5
{
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = [BPSCollect alloc];
    v9 = [v7 objectAtIndexedSubscript:0];
    v10 = [(BPSCollect *)v8 initWithUpstream:v9];
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BPSCollect(BMBookmarkOperators) publisherWithPublisher:v11 upstreams:? bookmarkState:?];
    }

    v10 = v6;
  }

  return v10;
}

- (id)bookmarkableUpstreams
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(BPSCollect *)self upstream];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end