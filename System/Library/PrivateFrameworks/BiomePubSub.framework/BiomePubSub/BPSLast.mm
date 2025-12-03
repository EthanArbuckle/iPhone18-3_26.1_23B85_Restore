@interface BPSLast
+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state;
- (BPSLast)initWithUpstream:(id)upstream;
- (id)bookmarkableUpstreams;
- (id)nextEvent;
- (id)upstreamPublishers;
- (void)reset;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSLast

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  upstream = [(BPSLast *)self upstream];
  v6[0] = upstream;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)nextEvent
{
  upstream = [(BPSLast *)self upstream];
  nextEvent = [upstream nextEvent];

  if (nextEvent)
  {
    do
    {
      [(BPSLast *)self setLastEvent:nextEvent];
      upstream2 = [(BPSLast *)self upstream];
      nextEvent2 = [upstream2 nextEvent];

      nextEvent = nextEvent2;
    }

    while (nextEvent2);
  }

  upstream3 = [(BPSLast *)self upstream];
  if ([upstream3 completed])
  {
    returned = [(BPSLast *)self returned];

    if (!returned)
    {
      [(BPSLast *)self setReturned:1];
      lastEvent = [(BPSLast *)self lastEvent];
      goto LABEL_8;
    }
  }

  else
  {
  }

  lastEvent = 0;
LABEL_8:

  return lastEvent;
}

- (void)reset
{
  [(BPSLast *)self setLastEvent:0];
  [(BPSLast *)self setReturned:0];
  v3.receiver = self;
  v3.super_class = BPSLast;
  [(BPSPublisher *)&v3 reset];
}

- (BPSLast)initWithUpstream:(id)upstream
{
  upstreamCopy = upstream;
  v10.receiver = self;
  v10.super_class = BPSLast;
  v6 = [(BPSLast *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_upstream, upstream);
    lastEvent = v7->_lastEvent;
    v7->_lastEvent = 0;

    v7->_returned = 0;
  }

  return v7;
}

- (void)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v6 = [[_BPSLastInnser alloc] initWithDownstream:subscribeCopy];

  upstream = [(BPSLast *)self upstream];
  [upstream subscribe:v6];
}

+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state
{
  upstreamsCopy = upstreams;
  v6 = [BPSLast alloc];
  v7 = [upstreamsCopy objectAtIndexedSubscript:0];

  v8 = [(BPSLast *)v6 initWithUpstream:v7];

  return v8;
}

- (id)bookmarkableUpstreams
{
  v6[1] = *MEMORY[0x1E69E9840];
  upstream = [(BPSLast *)self upstream];
  v6[0] = upstream;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end