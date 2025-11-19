@interface BPSMulticastDownstream
- (BOOL)completed;
- (BPSMulticastDownstream)initWithMulticast:(id)a3;
- (id)nextEvent;
- (id)startWithSubscriber:(id)a3;
- (id)upstreamPublishers;
- (void)reset;
@end

@implementation BPSMulticastDownstream

- (BPSMulticastDownstream)initWithMulticast:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BPSMulticastDownstream;
  v6 = [(BPSMulticastDownstream *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_multicast, a3);
  }

  return v7;
}

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(BPSMulticastDownstream *)self multicast];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)startWithSubscriber:(id)a3
{
  v4 = a3;
  [(BPSMulticastDownstream *)self setSubscriber:v4];
  v7.receiver = self;
  v7.super_class = BPSMulticastDownstream;
  v5 = [(BPSPublisher *)&v7 startWithSubscriber:v4];

  return v5;
}

- (id)nextEvent
{
  v3 = [(BPSMulticastDownstream *)self multicast];
  v4 = [v3 nextEventForMulticastDownstream:self];

  return v4;
}

- (BOOL)completed
{
  v2 = self;
  v3 = [(BPSMulticastDownstream *)self multicast];
  LOBYTE(v2) = [v3 completedForMulticastDownstream:v2];

  return v2;
}

- (void)reset
{
  [(BPSMulticastDownstream *)self setSubscriber:0];
  v3.receiver = self;
  v3.super_class = BPSMulticastDownstream;
  [(BPSPublisher *)&v3 reset];
}

@end