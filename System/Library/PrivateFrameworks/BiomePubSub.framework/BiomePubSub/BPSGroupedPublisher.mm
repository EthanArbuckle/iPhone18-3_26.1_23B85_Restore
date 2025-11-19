@interface BPSGroupedPublisher
- (BPSGroupedPublisher)initWithUpstream:(id)a3 createSubject:(id)a4;
- (id)aggregateWithInitial:(id)a3 nextPartialResult:(id)a4;
- (id)subscribeOnKey:(id)a3;
@end

@implementation BPSGroupedPublisher

- (BPSGroupedPublisher)initWithUpstream:(id)a3 createSubject:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = BPSGroupedPublisher;
  v8 = [(BPSGroupedPublisher *)&v12 init];
  if (v8)
  {
    v9 = [[BPSMulticast alloc] initWithUpstream:v6 createSubject:v7];
    multicast = v8->_multicast;
    v8->_multicast = v9;
  }

  return v8;
}

- (id)subscribeOnKey:(id)a3
{
  v4 = a3;
  v5 = [(BPSGroupedPublisher *)self multicast];
  v6 = BPSPipelineSupportsPullBasedPublishers(v5);

  v7 = [(BPSGroupedPublisher *)self multicast];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 toPublisher];

    v8 = v9;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__BPSGroupedPublisher_GroupBy__subscribeOnKey___block_invoke;
  v14[3] = &unk_1E83210D8;
  v15 = v4;
  v10 = v4;
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

- (id)aggregateWithInitial:(id)a3 nextPartialResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BPSGroupedPublisher *)self multicast];
  v9 = BPSPipelineSupportsPullBasedPublishers(v8);

  v10 = [(BPSGroupedPublisher *)self multicast];
  v11 = v10;
  if (v9)
  {
    v12 = [v10 toPublisher];

    v11 = v12;
  }

  v13 = objc_opt_new();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71__BPSGroupedPublisher_GroupBy__aggregateWithInitial_nextPartialResult___block_invoke;
  v18[3] = &unk_1E8321100;
  v19 = v6;
  v20 = v7;
  v14 = v7;
  v15 = v6;
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