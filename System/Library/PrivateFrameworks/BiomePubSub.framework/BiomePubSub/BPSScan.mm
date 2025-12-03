@interface BPSScan
+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state;
- (BPSScan)initWithUpstream:(id)upstream initialResult:(id)result nextPartialResult:(id)partialResult;
- (id)bookmarkableUpstreams;
- (id)nextEvent;
- (id)upstreamPublishers;
- (void)reset;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSScan

- (BPSScan)initWithUpstream:(id)upstream initialResult:(id)result nextPartialResult:(id)partialResult
{
  upstreamCopy = upstream;
  resultCopy = result;
  partialResultCopy = partialResult;
  v17.receiver = self;
  v17.super_class = BPSScan;
  v12 = [(BPSScan *)&v17 init];
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
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BPSScan subscribe:];
  }

  v6 = [_BPSScanInner alloc];
  nextPartialResult = [(BPSScan *)self nextPartialResult];
  initialResult = [(BPSScan *)self initialResult];
  v9 = [(_BPSScanInner *)v6 initWithDownstream:subscribeCopy nextPartialResult:nextPartialResult initialResult:initialResult];

  upstream = [(BPSScan *)self upstream];
  [upstream subscribe:v9];
}

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  upstream = [(BPSScan *)self upstream];
  v6[0] = upstream;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)nextEvent
{
  upstream = [(BPSScan *)self upstream];
  nextEvent = [upstream nextEvent];

  if (nextEvent)
  {
    nextPartialResult = [(BPSScan *)self nextPartialResult];
    result = [(BPSScan *)self result];
    v7 = (nextPartialResult)[2](nextPartialResult, result, nextEvent);
    [(BPSScan *)self setResult:v7];

    result2 = [(BPSScan *)self result];
  }

  else
  {
    result2 = 0;
  }

  return result2;
}

- (void)reset
{
  initialResult = [(BPSScan *)self initialResult];
  [(BPSScan *)self setResult:initialResult];

  v4.receiver = self;
  v4.super_class = BPSScan;
  [(BPSPublisher *)&v4 reset];
}

+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state
{
  publisherCopy = publisher;
  stateCopy = state;
  upstreamsCopy = upstreams;
  v10 = [BPSScan alloc];
  v11 = [upstreamsCopy objectAtIndexedSubscript:0];

  initialResult = stateCopy;
  if (!stateCopy)
  {
    initialResult = [publisherCopy initialResult];
  }

  nextPartialResult = [publisherCopy nextPartialResult];
  v14 = [(BPSScan *)v10 initWithUpstream:v11 initialResult:initialResult nextPartialResult:nextPartialResult];

  if (!stateCopy)
  {
  }

  return v14;
}

- (id)bookmarkableUpstreams
{
  v6[1] = *MEMORY[0x1E69E9840];
  upstream = [(BPSScan *)self upstream];
  v6[0] = upstream;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)subscribe:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_0_6(&dword_1C871B000, v1, v2, "%@ - subscribe", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x1E69E9840];
}

@end