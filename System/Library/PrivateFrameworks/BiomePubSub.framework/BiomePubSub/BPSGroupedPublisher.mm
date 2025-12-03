@interface BPSGroupedPublisher
- (BPSGroupedPublisher)initWithUpstream:(id)upstream createSubject:(id)subject;
- (id)aggregateWithInitial:(id)initial nextPartialResult:(id)result;
- (id)subscribeOnKey:(id)key;
@end

@implementation BPSGroupedPublisher

- (BPSGroupedPublisher)initWithUpstream:(id)upstream createSubject:(id)subject
{
  upstreamCopy = upstream;
  subjectCopy = subject;
  v12.receiver = self;
  v12.super_class = BPSGroupedPublisher;
  v8 = [(BPSGroupedPublisher *)&v12 init];
  if (v8)
  {
    v9 = [[BPSMulticast alloc] initWithUpstream:upstreamCopy createSubject:subjectCopy];
    multicast = v8->_multicast;
    v8->_multicast = v9;
  }

  return v8;
}

- (id)subscribeOnKey:(id)key
{
  keyCopy = key;
  multicast = [(BPSGroupedPublisher *)self multicast];
  v6 = BPSPipelineSupportsPullBasedPublishers(multicast);

  multicast2 = [(BPSGroupedPublisher *)self multicast];
  v8 = multicast2;
  if (v6)
  {
    toPublisher = [multicast2 toPublisher];

    v8 = toPublisher;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__BPSGroupedPublisher_GroupBy__subscribeOnKey___block_invoke;
  v14[3] = &unk_1E83210D8;
  v15 = keyCopy;
  v10 = keyCopy;
  v11 = [v8 filterWithIsIncluded:v14];
  v12 = [v11 mapWithTransform:&__block_literal_global_7];

  return v12;
}

uint64_t __47__BPSGroupedPublisher_GroupBy__subscribeOnKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 first];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (id)aggregateWithInitial:(id)initial nextPartialResult:(id)result
{
  initialCopy = initial;
  resultCopy = result;
  multicast = [(BPSGroupedPublisher *)self multicast];
  v9 = BPSPipelineSupportsPullBasedPublishers(multicast);

  multicast2 = [(BPSGroupedPublisher *)self multicast];
  v11 = multicast2;
  if (v9)
  {
    toPublisher = [multicast2 toPublisher];

    v11 = toPublisher;
  }

  v13 = objc_opt_new();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71__BPSGroupedPublisher_GroupBy__aggregateWithInitial_nextPartialResult___block_invoke;
  v18[3] = &unk_1E8321100;
  v19 = initialCopy;
  v20 = resultCopy;
  v14 = resultCopy;
  v15 = initialCopy;
  v16 = [v11 reduceWithInitial:v13 nextPartialResult:v18];

  return v16;
}

id __71__BPSGroupedPublisher_GroupBy__aggregateWithInitial_nextPartialResult___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 first];
  v8 = [v5 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v9 = *(a1 + 32);
    v10 = [v6 first];
    [v5 setObject:v9 forKeyedSubscript:v10];
  }

  v11 = *(a1 + 40);
  v12 = [v6 first];
  v13 = [v5 objectForKeyedSubscript:v12];
  v14 = [v6 second];
  v15 = (*(v11 + 16))(v11, v13, v14);
  v16 = [v6 first];
  [v5 setObject:v15 forKeyedSubscript:v16];

  return v5;
}

@end