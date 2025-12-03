@interface BPSCorrelateOrderedMerge
+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state;
- (BPSCorrelateOrderedMerge)initWithA:(id)a b:(id)b comparator:(id)comparator;
- (BPSCorrelateOrderedMerge)initWithPublishers:(id)publishers comparator:(id)comparator;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSCorrelateOrderedMerge

- (BPSCorrelateOrderedMerge)initWithA:(id)a b:(id)b comparator:(id)comparator
{
  v16[2] = *MEMORY[0x1E69E9840];
  v16[0] = a;
  v16[1] = b;
  v8 = MEMORY[0x1E695DEC8];
  comparatorCopy = comparator;
  bCopy = b;
  aCopy = a;
  v12 = [v8 arrayWithObjects:v16 count:2];

  v13 = [(BPSCorrelateOrderedMerge *)self initWithPublishers:v12 comparator:comparatorCopy];
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BPSCorrelateOrderedMerge)initWithPublishers:(id)publishers comparator:(id)comparator
{
  publishersCopy = publishers;
  comparatorCopy = comparator;
  v14.receiver = self;
  v14.super_class = BPSCorrelateOrderedMerge;
  v9 = [(BPSCorrelateOrderedMerge *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_publishers, publishers);
    v11 = _Block_copy(comparatorCopy);
    comparator = v10->_comparator;
    v10->_comparator = v11;
  }

  return v10;
}

- (void)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(BPSFilter *)self subscribe:v5];
  }

  v6 = [_BPSCorrelateOrderedMergeManyInner alloc];
  publishers = [(BPSCorrelateOrderedMerge *)self publishers];
  v8 = [publishers count];
  comparator = [(BPSCorrelateOrderedMerge *)self comparator];
  v10 = [(_BPSCorrelateOrderedMergeManyInner *)v6 initWithDownstream:subscribeCopy upstreamCount:v8 comparator:comparator];

  [subscribeCopy receiveSubscription:v10];
  publishers2 = [(BPSCorrelateOrderedMerge *)self publishers];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __38__BPSCorrelateOrderedMerge_subscribe___block_invoke;
  v13[3] = &unk_1E8320E88;
  v14 = v10;
  v12 = v10;
  [publishers2 enumerateObjectsUsingBlock:v13];
}

void __38__BPSCorrelateOrderedMerge_subscribe___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [[_BPSAbstractCorrelateOrderedMergeSide alloc] initWithIndex:a3 combiner:*(a1 + 32)];
  [v5 subscribe:v6];
}

+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state
{
  publisherCopy = publisher;
  upstreamsCopy = upstreams;
  v8 = [BPSCorrelateOrderedMerge alloc];
  comparator = [publisherCopy comparator];
  v10 = [(BPSCorrelateOrderedMerge *)v8 initWithPublishers:upstreamsCopy comparator:comparator];

  return v10;
}

@end