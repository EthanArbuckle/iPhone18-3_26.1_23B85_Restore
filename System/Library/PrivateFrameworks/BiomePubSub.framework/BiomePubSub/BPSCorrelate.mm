@interface BPSCorrelate
+ (id)correlatePublisherChainWithPrior:(id)prior current:(id)current comparator:(id)comparator correlateHandler:(id)handler;
+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state;
+ (int64_t)correlateSourceForIndex:(int64_t)index;
- (BPSCorrelate)initWithPrior:(id)prior current:(id)current comparator:(id)comparator updatedInitialContext:(id)context correlateHandler:(id)handler;
- (id)bookmarkableUpstreams;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSCorrelate

+ (int64_t)correlateSourceForIndex:(int64_t)index
{
  if (index)
  {
    return 2 * (index == 1);
  }

  else
  {
    return 1;
  }
}

- (BPSCorrelate)initWithPrior:(id)prior current:(id)current comparator:(id)comparator updatedInitialContext:(id)context correlateHandler:(id)handler
{
  priorCopy = prior;
  currentCopy = current;
  comparatorCopy = comparator;
  contextCopy = context;
  handlerCopy = handler;
  v23.receiver = self;
  v23.super_class = BPSCorrelate;
  v18 = [(BPSCorrelate *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_prior, prior);
    objc_storeStrong(&v19->_current, current);
    objc_storeStrong(&v19->_correlateHandler, handler);
    if (contextCopy)
    {
      [(BPSCorrelateHandler *)v19->_correlateHandler updateContext:contextCopy];
    }

    v20 = [[BPSCorrelateOrderedMerge alloc] initWithA:v19->_prior b:v19->_current comparator:comparatorCopy];
    merger = v19->_merger;
    v19->_merger = v20;
  }

  return v19;
}

- (void)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v5 = [[_BPSCorrelateInner alloc] initWithDownstream:subscribeCopy correlateHandler:self->_correlateHandler];

  [(BPSCorrelateOrderedMerge *)self->_merger subscribe:v5];
}

- (id)bookmarkableUpstreams
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = self->_merger;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state
{
  publisherCopy = publisher;
  upstreamsCopy = upstreams;
  stateCopy = state;
  if ([upstreamsCopy count] != 1)
  {
    [BPSCorrelate publisherWithPublisher:upstreamsCopy upstreams:a2 bookmarkState:self];
  }

  v11 = publisherCopy;
  v12 = [upstreamsCopy objectAtIndexedSubscript:0];
  v13 = [BPSCorrelate alloc];
  publishers = [v12 publishers];
  v14 = [publishers objectAtIndexedSubscript:0];
  publishers2 = [v12 publishers];
  v16 = [publishers2 objectAtIndexedSubscript:1];
  comparator = [v11[1] comparator];
  correlateHandler = [v11 correlateHandler];

  v19 = [(BPSCorrelate *)v13 initWithPrior:v14 current:v16 comparator:comparator updatedInitialContext:stateCopy correlateHandler:correlateHandler];

  return v19;
}

+ (id)correlatePublisherChainWithPrior:(id)prior current:(id)current comparator:(id)comparator correlateHandler:(id)handler
{
  comparatorCopy = comparator;
  handlerCopy = handler;
  currentCopy = current;
  v12 = [prior mapWithTransform:&__block_literal_global];
  v13 = [currentCopy mapWithTransform:&__block_literal_global_74];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__BPSCorrelate_correlatePublisherChainWithPrior_current_comparator_correlateHandler___block_invoke_3;
  aBlock[3] = &unk_1E8320BA0;
  v29 = comparatorCopy;
  v14 = comparatorCopy;
  v15 = _Block_copy(aBlock);
  v16 = [v12 orderedMergeWithOther:v13 comparator:v15];
  v17 = [[BPSTuple alloc] initWithFirst:0 second:0];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __85__BPSCorrelate_correlatePublisherChainWithPrior_current_comparator_correlateHandler___block_invoke_4;
  v26 = &unk_1E8320BC8;
  v27 = handlerCopy;
  v18 = handlerCopy;
  v19 = [v16 scanWithInitial:v17 nextPartialResult:&v23];

  v20 = [v19 filterWithIsIncluded:{&__block_literal_global_82, v23, v24, v25, v26}];
  v21 = [v20 mapWithTransform:&__block_literal_global_85];

  return v21;
}

BPSTuple *__85__BPSCorrelate_correlatePublisherChainWithPrior_current_comparator_correlateHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[BPSTuple alloc] initWithFirst:v2 second:@"prior"];

  return v3;
}

BPSTuple *__85__BPSCorrelate_correlatePublisherChainWithPrior_current_comparator_correlateHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[BPSTuple alloc] initWithFirst:v2 second:@"current"];

  return v3;
}

uint64_t __85__BPSCorrelate_correlatePublisherChainWithPrior_current_comparator_correlateHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 first];
  v7 = [v5 first];

  v8 = (*(v4 + 16))(v4, v6, v7);
  return v8;
}

BPSTuple *__85__BPSCorrelate_correlatePublisherChainWithPrior_current_comparator_correlateHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 first];
  if (v6)
  {
    [*(a1 + 32) updateContext:v6];
  }

  v7 = [v5 first];
  v8 = [v5 second];

  if ([v8 isEqualToString:@"prior"])
  {
    [*(a1 + 32) receivePriorEvent:v7];
  }

  else if ([v8 isEqualToString:@"current"])
  {
    [*(a1 + 32) receiveCurrentEvent:v7];
    v9 = [*(a1 + 32) correlateWithCurrentEvent:v7];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:
  v10 = [BPSTuple alloc];
  v11 = [*(a1 + 32) context];
  v12 = [(BPSTuple *)v10 initWithFirst:v11 second:v9];

  return v12;
}

BOOL __85__BPSCorrelate_correlatePublisherChainWithPrior_current_comparator_correlateHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 second];
  v3 = v2 != 0;

  return v3;
}

+ (void)publisherWithPublisher:(void *)a1 upstreams:(uint64_t)a2 bookmarkState:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:a3 file:@"BPSCorrelate.m" lineNumber:237 description:{@"BPSCorrelate should have an upstream while we have %lu", objc_msgSend(a1, "count")}];
}

@end