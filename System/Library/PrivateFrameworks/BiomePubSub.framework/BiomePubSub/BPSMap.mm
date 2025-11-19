@interface BPSMap
+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5;
- (BPSMap)initWithUpstream:(id)a3 transform:(id)a4;
- (id)bookmarkableUpstreams;
- (id)nextEvent;
- (id)upstreamPublishers;
- (void)subscribe:(id)a3;
@end

@implementation BPSMap

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(BPSMap *)self upstream];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)nextEvent
{
  v3 = [(BPSMap *)self upstream];
  v4 = [v3 nextEvent];

  if (v4)
  {
    while (1)
    {
      v5 = [(BPSMap *)self transform];
      v6 = (v5)[2](v5, v4);

      if (v6)
      {
        break;
      }

      v7 = [(BPSMap *)self upstream];
      v8 = [v7 nextEvent];

      v4 = v8;
      if (!v8)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v6 = 0;
  }

  return v6;
}

- (BPSMap)initWithUpstream:(id)a3 transform:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BPSMap;
  v9 = [(BPSMap *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_upstream, a3);
    v11 = [v8 copy];
    transform = v10->_transform;
    v10->_transform = v11;
  }

  return v10;
}

- (void)subscribe:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1C871B000, v5, OS_LOG_TYPE_INFO, "%@ - subscribe", &v12, 0xCu);
  }

  v7 = [_BPSMapInner alloc];
  v8 = [(BPSMap *)self transform];
  v9 = [(_BPSMapInner *)v7 initWithDownstream:v4 transform:v8];

  v10 = [(BPSMap *)self upstream];
  [v10 subscribe:v9];

  v11 = *MEMORY[0x1E69E9840];
}

+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [BPSMap alloc];
  v9 = [v7 objectAtIndexedSubscript:0];

  v10 = [v6 transform];
  v11 = [(BPSMap *)v8 initWithUpstream:v9 transform:v10];

  return v11;
}

- (id)bookmarkableUpstreams
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(BPSMap *)self upstream];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end