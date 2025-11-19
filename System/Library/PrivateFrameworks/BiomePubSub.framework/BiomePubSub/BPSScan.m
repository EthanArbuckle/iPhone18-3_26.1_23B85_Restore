@interface BPSScan
+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5;
- (BPSScan)initWithUpstream:(id)a3 initialResult:(id)a4 nextPartialResult:(id)a5;
- (id)bookmarkableUpstreams;
- (id)nextEvent;
- (id)upstreamPublishers;
- (void)reset;
- (void)subscribe:(id)a3;
@end

@implementation BPSScan

- (BPSScan)initWithUpstream:(id)a3 initialResult:(id)a4 nextPartialResult:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = BPSScan;
  v12 = [(BPSScan *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_upstream, a3);
    objc_storeStrong(&v13->_initialResult, a4);
    objc_storeStrong(&v13->_result, a4);
    v14 = [v11 copy];
    nextPartialResult = v13->_nextPartialResult;
    v13->_nextPartialResult = v14;
  }

  return v13;
}

- (void)subscribe:(id)a3
{
  v4 = a3;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BPSScan subscribe:];
  }

  v6 = [_BPSScanInner alloc];
  v7 = [(BPSScan *)self nextPartialResult];
  v8 = [(BPSScan *)self initialResult];
  v9 = [(_BPSScanInner *)v6 initWithDownstream:v4 nextPartialResult:v7 initialResult:v8];

  v10 = [(BPSScan *)self upstream];
  [v10 subscribe:v9];
}

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(BPSScan *)self upstream];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)nextEvent
{
  v3 = [(BPSScan *)self upstream];
  v4 = [v3 nextEvent];

  if (v4)
  {
    v5 = [(BPSScan *)self nextPartialResult];
    v6 = [(BPSScan *)self result];
    v7 = (v5)[2](v5, v6, v4);
    [(BPSScan *)self setResult:v7];

    v8 = [(BPSScan *)self result];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)reset
{
  v3 = [(BPSScan *)self initialResult];
  [(BPSScan *)self setResult:v3];

  v4.receiver = self;
  v4.super_class = BPSScan;
  [(BPSPublisher *)&v4 reset];
}

+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [BPSScan alloc];
  v11 = [v9 objectAtIndexedSubscript:0];

  v12 = v8;
  if (!v8)
  {
    v12 = [v7 initialResult];
  }

  v13 = [v7 nextPartialResult];
  v14 = [(BPSScan *)v10 initWithUpstream:v11 initialResult:v12 nextPartialResult:v13];

  if (!v8)
  {
  }

  return v14;
}

- (id)bookmarkableUpstreams
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(BPSScan *)self upstream];
  v6[0] = v2;
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