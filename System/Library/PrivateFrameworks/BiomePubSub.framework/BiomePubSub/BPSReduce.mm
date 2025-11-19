@interface BPSReduce
+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5;
- (BOOL)completed;
- (BPSReduce)initWithUpstream:(id)a3 initialResult:(id)a4 nextPartialResult:(id)a5;
- (id)bookmarkableUpstreams;
- (id)nextEvent;
- (id)upstreamPublishers;
- (void)reset;
- (void)subscribe:(id)a3;
@end

@implementation BPSReduce

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(BPSReduce *)self upstream];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)nextEvent
{
  v3 = [(BPSReduce *)self upstream];
  v4 = [v3 nextEvent];

  if (v4)
  {
    do
    {
      v5 = [(BPSReduce *)self nextPartialResult];
      v6 = [(BPSReduce *)self result];
      v7 = (v5)[2](v5, v6, v4);
      [(BPSReduce *)self setResult:v7];

      v8 = [(BPSReduce *)self upstream];
      v9 = [v8 nextEvent];

      v4 = v9;
    }

    while (v9);
  }

  v10 = [(BPSReduce *)self upstream];
  if ([v10 completed])
  {
    v11 = [(BPSReduce *)self returned];

    if (!v11)
    {
      [(BPSReduce *)self setReturned:1];
      v12 = [(BPSReduce *)self result];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (BOOL)completed
{
  v3 = [(BPSReduce *)self upstream];
  if ([v3 completed])
  {
    v4 = [(BPSReduce *)self returned];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)reset
{
  v3 = [(BPSReduce *)self initialResult];
  [(BPSReduce *)self setResult:v3];

  [(BPSReduce *)self setReturned:0];
  v4.receiver = self;
  v4.super_class = BPSReduce;
  [(BPSPublisher *)&v4 reset];
}

- (BPSReduce)initWithUpstream:(id)a3 initialResult:(id)a4 nextPartialResult:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = BPSReduce;
  v12 = [(BPSReduce *)&v17 init];
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
  v6 = [[_BPSReduceInner alloc] initWithDownstream:v4 initial:self->_initialResult reduce:self->_nextPartialResult];

  v5 = [(BPSReduce *)self upstream];
  [v5 subscribe:v6];
}

+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [BPSReduce alloc];
  v11 = [v9 objectAtIndexedSubscript:0];

  v12 = v8;
  if (!v8)
  {
    v12 = [v7 initialResult];
  }

  v13 = [v7 nextPartialResult];
  v14 = [(BPSReduce *)v10 initWithUpstream:v11 initialResult:v12 nextPartialResult:v13];

  if (!v8)
  {
  }

  return v14;
}

- (id)bookmarkableUpstreams
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(BPSReduce *)self upstream];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end