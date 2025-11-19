@interface BPSCorrelateOrderedMerge
+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5;
- (BPSCorrelateOrderedMerge)initWithA:(id)a3 b:(id)a4 comparator:(id)a5;
- (BPSCorrelateOrderedMerge)initWithPublishers:(id)a3 comparator:(id)a4;
- (void)subscribe:(id)a3;
@end

@implementation BPSCorrelateOrderedMerge

- (BPSCorrelateOrderedMerge)initWithA:(id)a3 b:(id)a4 comparator:(id)a5
{
  v16[2] = *MEMORY[0x1E69E9840];
  v16[0] = a3;
  v16[1] = a4;
  v8 = MEMORY[0x1E695DEC8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:v16 count:2];

  v13 = [(BPSCorrelateOrderedMerge *)self initWithPublishers:v12 comparator:v9];
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BPSCorrelateOrderedMerge)initWithPublishers:(id)a3 comparator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BPSCorrelateOrderedMerge;
  v9 = [(BPSCorrelateOrderedMerge *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_publishers, a3);
    v11 = _Block_copy(v8);
    comparator = v10->_comparator;
    v10->_comparator = v11;
  }

  return v10;
}

- (void)subscribe:(id)a3
{
  v4 = a3;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(BPSFilter *)self subscribe:v5];
  }

  v6 = [_BPSCorrelateOrderedMergeManyInner alloc];
  v7 = [(BPSCorrelateOrderedMerge *)self publishers];
  v8 = [v7 count];
  v9 = [(BPSCorrelateOrderedMerge *)self comparator];
  v10 = [(_BPSCorrelateOrderedMergeManyInner *)v6 initWithDownstream:v4 upstreamCount:v8 comparator:v9];

  [v4 receiveSubscription:v10];
  v11 = [(BPSCorrelateOrderedMerge *)self publishers];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __38__BPSCorrelateOrderedMerge_subscribe___block_invoke;
  v13[3] = &unk_1E8320E88;
  v14 = v10;
  v12 = v10;
  [v11 enumerateObjectsUsingBlock:v13];
}

void __38__BPSCorrelateOrderedMerge_subscribe___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [[_BPSAbstractCorrelateOrderedMergeSide alloc] initWithIndex:a3 combiner:*(a1 + 32)];
  [v5 subscribe:v6];
}

+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [BPSCorrelateOrderedMerge alloc];
  v9 = [v6 comparator];
  v10 = [(BPSCorrelateOrderedMerge *)v8 initWithPublishers:v7 comparator:v9];

  return v10;
}

@end