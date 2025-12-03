@interface BPSHandleEvents
+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state;
- (BPSHandleEvents)initWithUpstream:(id)upstream receiveSubscription:(id)subscription receiveOutput:(id)output receiveCompletion:(id)completion receiveCancel:(id)cancel receiveRequest:(id)request;
- (id)bookmarkableUpstreams;
- (id)nextEvent;
- (id)upstreamPublishers;
- (void)cancel;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSHandleEvents

- (BPSHandleEvents)initWithUpstream:(id)upstream receiveSubscription:(id)subscription receiveOutput:(id)output receiveCompletion:(id)completion receiveCancel:(id)cancel receiveRequest:(id)request
{
  upstreamCopy = upstream;
  subscriptionCopy = subscription;
  outputCopy = output;
  completionCopy = completion;
  cancelCopy = cancel;
  requestCopy = request;
  v34.receiver = self;
  v34.super_class = BPSHandleEvents;
  v21 = [(BPSHandleEvents *)&v34 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_upstream, upstream);
    v23 = [subscriptionCopy copy];
    receiveSubscription = v22->_receiveSubscription;
    v22->_receiveSubscription = v23;

    v25 = [outputCopy copy];
    receiveOutput = v22->_receiveOutput;
    v22->_receiveOutput = v25;

    v27 = [completionCopy copy];
    receiveCompletion = v22->_receiveCompletion;
    v22->_receiveCompletion = v27;

    v29 = [cancelCopy copy];
    receiveCancel = v22->_receiveCancel;
    v22->_receiveCancel = v29;

    v31 = [requestCopy copy];
    receiveRequest = v22->_receiveRequest;
    v22->_receiveRequest = v31;

    v22->_lock._os_unfair_lock_opaque = 0;
  }

  return v22;
}

- (void)subscribe:(id)subscribe
{
  upstream = self->_upstream;
  subscribeCopy = subscribe;
  v6 = [[_BPSHandleEventsInner alloc] initWithDownstream:subscribeCopy handleEvents:self];

  [(BPSPublisher *)upstream subscribe:v6];
}

+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state
{
  publisherCopy = publisher;
  upstreamsCopy = upstreams;
  v8 = [BPSHandleEvents alloc];
  firstObject = [upstreamsCopy firstObject];

  receiveSubscription = [publisherCopy receiveSubscription];
  receiveOutput = [publisherCopy receiveOutput];
  receiveCompletion = [publisherCopy receiveCompletion];
  receiveCancel = [publisherCopy receiveCancel];
  receiveRequest = [publisherCopy receiveRequest];
  v15 = [(BPSHandleEvents *)v8 initWithUpstream:firstObject receiveSubscription:receiveSubscription receiveOutput:receiveOutput receiveCompletion:receiveCompletion receiveCancel:receiveCancel receiveRequest:receiveRequest];

  return v15;
}

- (id)bookmarkableUpstreams
{
  v6[1] = *MEMORY[0x1E69E9840];
  upstream = [(BPSHandleEvents *)self upstream];
  v6[0] = upstream;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  upstream = [(BPSHandleEvents *)self upstream];
  v6[0] = upstream;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)nextEvent
{
  upstream = [(BPSHandleEvents *)self upstream];
  nextEvent = [upstream nextEvent];

  if (nextEvent)
  {
    receiveOutput = [(BPSHandleEvents *)self receiveOutput];
    (receiveOutput)[2](receiveOutput, nextEvent);
  }

  return nextEvent;
}

- (void)cancel
{
  receiveCancel = [(BPSHandleEvents *)self receiveCancel];
  receiveCancel[2]();
}

@end