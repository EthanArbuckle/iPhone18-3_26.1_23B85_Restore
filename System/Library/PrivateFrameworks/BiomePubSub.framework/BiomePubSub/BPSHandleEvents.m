@interface BPSHandleEvents
+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5;
- (BPSHandleEvents)initWithUpstream:(id)a3 receiveSubscription:(id)a4 receiveOutput:(id)a5 receiveCompletion:(id)a6 receiveCancel:(id)a7 receiveRequest:(id)a8;
- (id)bookmarkableUpstreams;
- (id)nextEvent;
- (id)upstreamPublishers;
- (void)cancel;
- (void)subscribe:(id)a3;
@end

@implementation BPSHandleEvents

- (BPSHandleEvents)initWithUpstream:(id)a3 receiveSubscription:(id)a4 receiveOutput:(id)a5 receiveCompletion:(id)a6 receiveCancel:(id)a7 receiveRequest:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v34.receiver = self;
  v34.super_class = BPSHandleEvents;
  v21 = [(BPSHandleEvents *)&v34 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_upstream, a3);
    v23 = [v16 copy];
    receiveSubscription = v22->_receiveSubscription;
    v22->_receiveSubscription = v23;

    v25 = [v17 copy];
    receiveOutput = v22->_receiveOutput;
    v22->_receiveOutput = v25;

    v27 = [v18 copy];
    receiveCompletion = v22->_receiveCompletion;
    v22->_receiveCompletion = v27;

    v29 = [v19 copy];
    receiveCancel = v22->_receiveCancel;
    v22->_receiveCancel = v29;

    v31 = [v20 copy];
    receiveRequest = v22->_receiveRequest;
    v22->_receiveRequest = v31;

    v22->_lock._os_unfair_lock_opaque = 0;
  }

  return v22;
}

- (void)subscribe:(id)a3
{
  upstream = self->_upstream;
  v5 = a3;
  v6 = [[_BPSHandleEventsInner alloc] initWithDownstream:v5 handleEvents:self];

  [(BPSPublisher *)upstream subscribe:v6];
}

+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [BPSHandleEvents alloc];
  v9 = [v7 firstObject];

  v10 = [v6 receiveSubscription];
  v11 = [v6 receiveOutput];
  v12 = [v6 receiveCompletion];
  v13 = [v6 receiveCancel];
  v14 = [v6 receiveRequest];
  v15 = [(BPSHandleEvents *)v8 initWithUpstream:v9 receiveSubscription:v10 receiveOutput:v11 receiveCompletion:v12 receiveCancel:v13 receiveRequest:v14];

  return v15;
}

- (id)bookmarkableUpstreams
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(BPSHandleEvents *)self upstream];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(BPSHandleEvents *)self upstream];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)nextEvent
{
  v3 = [(BPSHandleEvents *)self upstream];
  v4 = [v3 nextEvent];

  if (v4)
  {
    v5 = [(BPSHandleEvents *)self receiveOutput];
    (v5)[2](v5, v4);
  }

  return v4;
}

- (void)cancel
{
  v2 = [(BPSHandleEvents *)self receiveCancel];
  v2[2]();
}

@end