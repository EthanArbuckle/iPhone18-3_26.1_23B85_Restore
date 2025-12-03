@interface BPSMulticastDownstream
- (BOOL)completed;
- (BPSMulticastDownstream)initWithMulticast:(id)multicast;
- (id)nextEvent;
- (id)startWithSubscriber:(id)subscriber;
- (id)upstreamPublishers;
- (void)reset;
@end

@implementation BPSMulticastDownstream

- (BPSMulticastDownstream)initWithMulticast:(id)multicast
{
  multicastCopy = multicast;
  v9.receiver = self;
  v9.super_class = BPSMulticastDownstream;
  v6 = [(BPSMulticastDownstream *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_multicast, multicast);
  }

  return v7;
}

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  multicast = [(BPSMulticastDownstream *)self multicast];
  v6[0] = multicast;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)startWithSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  [(BPSMulticastDownstream *)self setSubscriber:subscriberCopy];
  v7.receiver = self;
  v7.super_class = BPSMulticastDownstream;
  v5 = [(BPSPublisher *)&v7 startWithSubscriber:subscriberCopy];

  return v5;
}

- (id)nextEvent
{
  multicast = [(BPSMulticastDownstream *)self multicast];
  v4 = [multicast nextEventForMulticastDownstream:self];

  return v4;
}

- (BOOL)completed
{
  selfCopy = self;
  multicast = [(BPSMulticastDownstream *)self multicast];
  LOBYTE(selfCopy) = [multicast completedForMulticastDownstream:selfCopy];

  return selfCopy;
}

- (void)reset
{
  [(BPSMulticastDownstream *)self setSubscriber:0];
  v3.receiver = self;
  v3.super_class = BPSMulticastDownstream;
  [(BPSPublisher *)&v3 reset];
}

@end