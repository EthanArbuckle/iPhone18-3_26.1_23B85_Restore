@interface BPSFilter
+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state;
- (BPSFilter)initWithUpstream:(id)upstream isIncluded:(id)included;
- (id)bookmarkableUpstreams;
- (id)nextEvent;
- (id)upstreamPublishers;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSFilter

- (id)nextEvent
{
  upstream = [(BPSFilter *)self upstream];
  nextEvent = [upstream nextEvent];

  if (nextEvent)
  {
    do
    {
      isIncluded = [(BPSFilter *)self isIncluded];
      v6 = (isIncluded)[2](isIncluded, nextEvent);

      if (v6)
      {
        break;
      }

      upstream2 = [(BPSFilter *)self upstream];
      nextEvent2 = [upstream2 nextEvent];

      nextEvent = nextEvent2;
    }

    while (nextEvent2);
  }

  return nextEvent;
}

- (id)upstreamPublishers
{
  v8[1] = *MEMORY[0x1E69E9840];
  upstream = [(BPSFilter *)self upstream];
  if (upstream)
  {
    upstream2 = [(BPSFilter *)self upstream];
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

- (BPSFilter)initWithUpstream:(id)upstream isIncluded:(id)included
{
  upstreamCopy = upstream;
  includedCopy = included;
  v14.receiver = self;
  v14.super_class = BPSFilter;
  v9 = [(BPSFilter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_upstream, upstream);
    v11 = [includedCopy copy];
    isIncluded = v10->_isIncluded;
    v10->_isIncluded = v11;
  }

  return v10;
}

- (void)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(BPSFilter *)self subscribe:v5];
  }

  v6 = [_BPSFilterInner alloc];
  isIncluded = [(BPSFilter *)self isIncluded];
  v8 = [(_BPSFilterInner *)v6 initWithDownstream:subscribeCopy isIncluded:isIncluded];

  upstream = [(BPSFilter *)self upstream];
  [upstream subscribe:v8];
}

+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state
{
  publisherCopy = publisher;
  upstreamsCopy = upstreams;
  v8 = [BPSFilter alloc];
  v9 = [upstreamsCopy objectAtIndexedSubscript:0];

  isIncluded = [publisherCopy isIncluded];
  v11 = [(BPSFilter *)v8 initWithUpstream:v9 isIncluded:isIncluded];

  return v11;
}

- (id)bookmarkableUpstreams
{
  v6[1] = *MEMORY[0x1E69E9840];
  upstream = [(BPSFilter *)self upstream];
  v6[0] = upstream;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)subscribe:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 138412290;
  v6 = objc_opt_class();
  v3 = v6;
  _os_log_debug_impl(&dword_1C871B000, a2, OS_LOG_TYPE_DEBUG, "%@ - subscribe", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end