@interface BPSLast
+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5;
- (BPSLast)initWithUpstream:(id)a3;
- (id)bookmarkableUpstreams;
- (id)nextEvent;
- (id)upstreamPublishers;
- (void)reset;
- (void)subscribe:(id)a3;
@end

@implementation BPSLast

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(BPSLast *)self upstream];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)nextEvent
{
  v3 = [(BPSLast *)self upstream];
  v4 = [v3 nextEvent];

  if (v4)
  {
    do
    {
      [(BPSLast *)self setLastEvent:v4];
      v5 = [(BPSLast *)self upstream];
      v6 = [v5 nextEvent];

      v4 = v6;
    }

    while (v6);
  }

  v7 = [(BPSLast *)self upstream];
  if ([v7 completed])
  {
    v8 = [(BPSLast *)self returned];

    if (!v8)
    {
      [(BPSLast *)self setReturned:1];
      v9 = [(BPSLast *)self lastEvent];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (void)reset
{
  [(BPSLast *)self setLastEvent:0];
  [(BPSLast *)self setReturned:0];
  v3.receiver = self;
  v3.super_class = BPSLast;
  [(BPSPublisher *)&v3 reset];
}

- (BPSLast)initWithUpstream:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = BPSLast;
  v6 = [(BPSLast *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_upstream, a3);
    lastEvent = v7->_lastEvent;
    v7->_lastEvent = 0;

    v7->_returned = 0;
  }

  return v7;
}

- (void)subscribe:(id)a3
{
  v4 = a3;
  v6 = [[_BPSLastInnser alloc] initWithDownstream:v4];

  v5 = [(BPSLast *)self upstream];
  [v5 subscribe:v6];
}

+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5
{
  v5 = a4;
  v6 = [BPSLast alloc];
  v7 = [v5 objectAtIndexedSubscript:0];

  v8 = [(BPSLast *)v6 initWithUpstream:v7];

  return v8;
}

- (id)bookmarkableUpstreams
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(BPSLast *)self upstream];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end