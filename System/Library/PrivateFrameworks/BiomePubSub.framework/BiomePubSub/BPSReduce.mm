@interface BPSReduce
+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state;
- (BOOL)completed;
- (BPSReduce)initWithUpstream:(id)upstream initialResult:(id)result nextPartialResult:(id)partialResult;
- (id)bookmarkableUpstreams;
- (id)nextEvent;
- (id)upstreamPublishers;
- (void)reset;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSReduce

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  upstream = [(BPSReduce *)self upstream];
  v6[0] = upstream;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)nextEvent
{
  upstream = [(BPSReduce *)self upstream];
  nextEvent = [upstream nextEvent];

  if (nextEvent)
  {
    do
    {
      nextPartialResult = [(BPSReduce *)self nextPartialResult];
      result = [(BPSReduce *)self result];
      v7 = (nextPartialResult)[2](nextPartialResult, result, nextEvent);
      [(BPSReduce *)self setResult:v7];

      upstream2 = [(BPSReduce *)self upstream];
      nextEvent2 = [upstream2 nextEvent];

      nextEvent = nextEvent2;
    }

    while (nextEvent2);
  }

  upstream3 = [(BPSReduce *)self upstream];
  if ([upstream3 completed])
  {
    returned = [(BPSReduce *)self returned];

    if (!returned)
    {
      [(BPSReduce *)self setReturned:1];
      result2 = [(BPSReduce *)self result];
      goto LABEL_8;
    }
  }

  else
  {
  }

  result2 = 0;
LABEL_8:

  return result2;
}

- (BOOL)completed
{
  upstream = [(BPSReduce *)self upstream];
  if ([upstream completed])
  {
    returned = [(BPSReduce *)self returned];
  }

  else
  {
    returned = 0;
  }

  return returned;
}

- (void)reset
{
  initialResult = [(BPSReduce *)self initialResult];
  [(BPSReduce *)self setResult:initialResult];

  [(BPSReduce *)self setReturned:0];
  v4.receiver = self;
  v4.super_class = BPSReduce;
  [(BPSPublisher *)&v4 reset];
}

- (BPSReduce)initWithUpstream:(id)upstream initialResult:(id)result nextPartialResult:(id)partialResult
{
  upstreamCopy = upstream;
  resultCopy = result;
  partialResultCopy = partialResult;
  v17.receiver = self;
  v17.super_class = BPSReduce;
  v12 = [(BPSReduce *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_upstream, upstream);
    objc_storeStrong(&v13->_initialResult, result);
    objc_storeStrong(&v13->_result, result);
    v14 = [partialResultCopy copy];
    nextPartialResult = v13->_nextPartialResult;
    v13->_nextPartialResult = v14;
  }

  return v13;
}

- (void)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v6 = [[_BPSReduceInner alloc] initWithDownstream:subscribeCopy initial:self->_initialResult reduce:self->_nextPartialResult];

  upstream = [(BPSReduce *)self upstream];
  [upstream subscribe:v6];
}

+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state
{
  publisherCopy = publisher;
  stateCopy = state;
  upstreamsCopy = upstreams;
  v10 = [BPSReduce alloc];
  v11 = [upstreamsCopy objectAtIndexedSubscript:0];

  initialResult = stateCopy;
  if (!stateCopy)
  {
    initialResult = [publisherCopy initialResult];
  }

  nextPartialResult = [publisherCopy nextPartialResult];
  v14 = [(BPSReduce *)v10 initWithUpstream:v11 initialResult:initialResult nextPartialResult:nextPartialResult];

  if (!stateCopy)
  {
  }

  return v14;
}

- (id)bookmarkableUpstreams
{
  v6[1] = *MEMORY[0x1E69E9840];
  upstream = [(BPSReduce *)self upstream];
  v6[0] = upstream;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end