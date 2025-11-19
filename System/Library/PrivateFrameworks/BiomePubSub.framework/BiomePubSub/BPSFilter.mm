@interface BPSFilter
+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5;
- (BPSFilter)initWithUpstream:(id)a3 isIncluded:(id)a4;
- (id)bookmarkableUpstreams;
- (id)nextEvent;
- (id)upstreamPublishers;
- (void)subscribe:(id)a3;
@end

@implementation BPSFilter

- (id)nextEvent
{
  v3 = [(BPSFilter *)self upstream];
  v4 = [v3 nextEvent];

  if (v4)
  {
    do
    {
      v5 = [(BPSFilter *)self isIncluded];
      v6 = (v5)[2](v5, v4);

      if (v6)
      {
        break;
      }

      v7 = [(BPSFilter *)self upstream];
      v8 = [v7 nextEvent];

      v4 = v8;
    }

    while (v8);
  }

  return v4;
}

- (id)upstreamPublishers
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [(BPSFilter *)self upstream];
  if (v3)
  {
    v4 = [(BPSFilter *)self upstream];
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

- (BPSFilter)initWithUpstream:(id)a3 isIncluded:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BPSFilter;
  v9 = [(BPSFilter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_upstream, a3);
    v11 = [v8 copy];
    isIncluded = v10->_isIncluded;
    v10->_isIncluded = v11;
  }

  return v10;
}

- (void)subscribe:(id)a3
{
  v4 = a3;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(BPSFilter *)self subscribe:v5];
  }

  v6 = [_BPSFilterInner alloc];
  v7 = [(BPSFilter *)self isIncluded];
  v8 = [(_BPSFilterInner *)v6 initWithDownstream:v4 isIncluded:v7];

  v9 = [(BPSFilter *)self upstream];
  [v9 subscribe:v8];
}

+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [BPSFilter alloc];
  v9 = [v7 objectAtIndexedSubscript:0];

  v10 = [v6 isIncluded];
  v11 = [(BPSFilter *)v8 initWithUpstream:v9 isIncluded:v10];

  return v11;
}

- (id)bookmarkableUpstreams
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(BPSFilter *)self upstream];
  v6[0] = v2;
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