@interface BPSMap
+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state;
- (BPSMap)initWithUpstream:(id)upstream transform:(id)transform;
- (id)bookmarkableUpstreams;
- (id)nextEvent;
- (id)upstreamPublishers;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSMap

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  upstream = [(BPSMap *)self upstream];
  v6[0] = upstream;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)nextEvent
{
  upstream = [(BPSMap *)self upstream];
  nextEvent = [upstream nextEvent];

  if (nextEvent)
  {
    while (1)
    {
      transform = [(BPSMap *)self transform];
      v6 = (transform)[2](transform, nextEvent);

      if (v6)
      {
        break;
      }

      upstream2 = [(BPSMap *)self upstream];
      nextEvent2 = [upstream2 nextEvent];

      nextEvent = nextEvent2;
      if (!nextEvent2)
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

- (BPSMap)initWithUpstream:(id)upstream transform:(id)transform
{
  upstreamCopy = upstream;
  transformCopy = transform;
  v14.receiver = self;
  v14.super_class = BPSMap;
  v9 = [(BPSMap *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_upstream, upstream);
    v11 = [transformCopy copy];
    transform = v10->_transform;
    v10->_transform = v11;
  }

  return v10;
}

- (void)subscribe:(id)subscribe
{
  v14 = *MEMORY[0x1E69E9840];
  subscribeCopy = subscribe;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1C871B000, v5, OS_LOG_TYPE_INFO, "%@ - subscribe", &v12, 0xCu);
  }

  v7 = [_BPSMapInner alloc];
  transform = [(BPSMap *)self transform];
  v9 = [(_BPSMapInner *)v7 initWithDownstream:subscribeCopy transform:transform];

  upstream = [(BPSMap *)self upstream];
  [upstream subscribe:v9];

  v11 = *MEMORY[0x1E69E9840];
}

+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state
{
  publisherCopy = publisher;
  upstreamsCopy = upstreams;
  v8 = [BPSMap alloc];
  v9 = [upstreamsCopy objectAtIndexedSubscript:0];

  transform = [publisherCopy transform];
  v11 = [(BPSMap *)v8 initWithUpstream:v9 transform:transform];

  return v11;
}

- (id)bookmarkableUpstreams
{
  v6[1] = *MEMORY[0x1E69E9840];
  upstream = [(BPSMap *)self upstream];
  v6[0] = upstream;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end