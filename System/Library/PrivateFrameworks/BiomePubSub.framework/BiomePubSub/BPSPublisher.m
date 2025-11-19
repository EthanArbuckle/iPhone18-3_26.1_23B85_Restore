@interface BPSPublisher
- (BOOL)completed;
- (id)bufferWithSize:(unint64_t)a3 prefetch:(unint64_t)a4 whenFull:(unint64_t)a5;
- (id)collect;
- (id)combineLatestwithOther:(id)a3;
- (id)connectableSinkWithCompletion:(id)a3 shouldContinue:(id)a4;
- (id)correlateWithCurrent:(id)a3 comparator:(id)a4 correlateHandler:(id)a5;
- (id)debounceFor:(double)a3 getTimestamp:(id)a4;
- (id)drivableSinkWithBookmark:(id)a3 completion:(id)a4 shouldContinue:(id)a5;
- (id)filterWithIsIncluded:(id)a3;
- (id)flatMapWithTransform:(id)a3;
- (id)groupByKey:(id)a3;
- (id)handleEventsReceiveOutput:(id)a3 receiveCancel:(id)a4;
- (id)handleEventsReceiveSubscription:(id)a3 receiveOutput:(id)a4 receiveCompletion:(id)a5 receiveCancel:(id)a6 receiveRequest:(id)a7;
- (id)last;
- (id)mapWithTransform:(id)a3;
- (id)mergeWithOther:(id)a3;
- (id)mergeWithOthers:(id)a3;
- (id)multicast;
- (id)multicastCreateSubject:(id)a3;
- (id)multicastSubject:(id)a3;
- (id)orderedMergeWithOther:(id)a3 comparator:(id)a4;
- (id)orderedMergeWithOthers:(id)a3 comparator:(id)a4;
- (id)reduce:(id)a3;
- (id)reduceWithInitial:(id)a3 nextPartialResult:(id)a4;
- (id)removeDuplicatesWithIsDuplicate:(id)a3;
- (id)scanWithInitial:(id)a3 nextPartialResult:(id)a4;
- (id)sequenceWithSequence:(id)a3;
- (id)sinkWithBookmark:(id)a3 completion:(id)a4 receiveInput:(id)a5;
- (id)sinkWithCompletion:(id)a3 receiveInput:(id)a4;
- (id)sinkWithCompletion:(id)a3 shouldContinue:(id)a4;
- (id)startWithSubscriber:(id)a3;
- (id)timerFor:(double)a3 getTimestamp:(id)a4;
- (id)windowByKey:(id)a3 assigner:(id)a4;
- (id)windowWithAssigner:(id)a3;
- (id)zipWithOther:(id)a3;
- (id)zipWithOthers:(id)a3;
- (void)reset;
- (void)subscribe:(id)a3;
@end

@implementation BPSPublisher

- (BOOL)completed
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(BPSPublisher *)self upstreamPublishers];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v10 + 1) + 8 * i) completed])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)reset
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(BPSPublisher *)self upstreamPublishers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) reset];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)correlateWithCurrent:(id)a3 comparator:(id)a4 correlateHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (BPSPipelineSupportsPullBasedPublishers(self))
  {
    v11 = [BPSCorrelate correlatePublisherChainWithPrior:self current:v8 comparator:v9 correlateHandler:v10];
  }

  else
  {
    v11 = [[BPSCorrelate alloc] initWithPrior:self current:v8 comparator:v9 correlateHandler:v10];
  }

  v12 = v11;

  return v12;
}

- (id)bufferWithSize:(unint64_t)a3 prefetch:(unint64_t)a4 whenFull:(unint64_t)a5
{
  v5 = [[BPSBuffer alloc] initWithUpstream:self size:a3 prefetch:a4 whenFull:a5];

  return v5;
}

- (id)startWithSubscriber:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(BPSPublisher *)self upstreamPublishers];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) startWithSubscriber:v4];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)subscribe:(id)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Override method %@ in subclass %@", v5, objc_opt_class()}];
}

- (id)sinkWithCompletion:(id)a3 receiveInput:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BPSPipelineSupportsPullBasedPublishers(self);
  v9 = [BPSSink alloc];
  v10 = v9;
  if (v8)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64__BPSPublisher_BPSSubscribers__sinkWithCompletion_receiveInput___block_invoke;
    v13[3] = &unk_1E8320D98;
    v14 = v6;
    v11 = [(BPSSink *)v10 initWithReceiveBookmarkCompletion:v13 receiveInput:v7];

    [(BPSSink *)v11 subscribeTo:self];
  }

  else
  {
    v11 = [(BPSSink *)v9 initWithReceiveCompletion:v6 receiveInput:v7];

    [(BPSPublisher *)self subscribe:v11];
  }

  return v11;
}

- (id)sinkWithCompletion:(id)a3 shouldContinue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BPSPipelineSupportsPullBasedPublishers(self);
  v9 = [BPSDrivableSink alloc];
  v10 = v9;
  if (v8)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__BPSPublisher_BPSSubscribers__sinkWithCompletion_shouldContinue___block_invoke;
    v13[3] = &unk_1E8320D98;
    v14 = v6;
    v11 = [(BPSDrivableSink *)v10 initWithReceiveBookmarkCompletion:v13 shouldContinue:v7];

    [(BPSDrivableSink *)v11 subscribeTo:self];
  }

  else
  {
    v11 = [(BPSDrivableSink *)v9 initWithReceiveCompletion:v6 shouldContinue:v7];

    [(BPSPublisher *)self subscribe:v11];
  }

  return v11;
}

- (id)connectableSinkWithCompletion:(id)a3 shouldContinue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[BPSDrivableSink alloc] initWithReceiveCompletion:v6 shouldContinue:v5];

  return v7;
}

- (id)sinkWithBookmark:(id)a3 completion:(id)a4 receiveInput:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  if (BPSPipelineSupportsPullBasedPublishers(self))
  {
    if (![BMBookmarkablePublisher isPipelineBookmarkable:self])
    {
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [BPSPublisher(BMBookmarkableSink) sinkWithBookmark:completion:receiveInput:];
      }
    }

    v12 = [[BPSSink alloc] initWithReceiveBookmarkCompletion:v10 receiveInput:v9];

    if (v8 && [(BPSPublisher *)self conformsToProtocol:&unk_1F4872E18])
    {
      [(BPSPublisher *)self applyBookmarkNode:v8];
    }

    [(BPSSink *)v12 subscribeTo:self];
  }

  else
  {
    v12 = [[BPSSink alloc] initWithReceiveBookmarkedCompletion:v10 receiveInput:v9];

    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [BPSPublisher(BMBookmarkableSink) sinkWithBookmark:v8 completion:v13 receiveInput:?];
    }

    if ([(BPSPublisher *)self conformsToProtocol:&unk_1F4872E18])
    {
      v14 = [(BPSPublisher *)self withBookmark:v8];
      [v14 subscribe:v12];
    }

    else
    {
      v14 = __biome_log_for_category();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [BPSPublisher(BMBookmarkableSink) sinkWithBookmark:completion:receiveInput:];
      }
    }
  }

  return v12;
}

- (id)drivableSinkWithBookmark:(id)a3 completion:(id)a4 shouldContinue:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  if (BPSPipelineSupportsPullBasedPublishers(self))
  {
    if (![BMBookmarkablePublisher isPipelineBookmarkable:self])
    {
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [BPSPublisher(BMBookmarkableSink) sinkWithBookmark:completion:receiveInput:];
      }
    }

    v12 = [[BPSDrivableSink alloc] initWithReceiveBookmarkCompletion:v10 shouldContinue:v9];

    if (v8 && [(BPSPublisher *)self conformsToProtocol:&unk_1F4872E18])
    {
      [(BPSPublisher *)self applyBookmarkNode:v8];
    }

    [(BPSDrivableSink *)v12 subscribeTo:self];
  }

  else
  {
    v12 = [[BPSDrivableSink alloc] initWithReceiveBookmarkedCompletion:v10 shouldContinue:v9];

    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [BPSPublisher(BMBookmarkableSink) sinkWithBookmark:v8 completion:v13 receiveInput:?];
    }

    if ([(BPSPublisher *)self conformsToProtocol:&unk_1F4872E18])
    {
      v14 = [(BPSPublisher *)self withBookmark:v8];
      [v14 subscribe:v12];
    }

    else
    {
      v14 = __biome_log_for_category();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [BPSPublisher(BMBookmarkableSink) sinkWithBookmark:completion:receiveInput:];
      }
    }
  }

  return v12;
}

- (id)mergeWithOthers:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = self;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 arrayWithObjects:&v10 count:1];
  v6 = [v5 arrayByAddingObjectsFromArray:{v4, v10, v11}];

  v7 = [[BPSMergeMany alloc] initWithPublishers:v6];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)mergeWithOther:(id)a3
{
  v4 = a3;
  v5 = [[BPSMerge alloc] initWithA:self b:v4];

  return v5;
}

- (id)combineLatestwithOther:(id)a3
{
  v4 = a3;
  v5 = [[BPSCombineLatest alloc] initWithA:self b:v4];

  return v5;
}

- (id)debounceFor:(double)a3 getTimestamp:(id)a4
{
  v6 = a4;
  v7 = [[BPSDebounce alloc] initWithUpstream:self for:v6 getTimestamp:a3];

  return v7;
}

- (id)scanWithInitial:(id)a3 nextPartialResult:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[BPSScan alloc] initWithUpstream:self initialResult:v7 nextPartialResult:v6];

  return v8;
}

- (id)timerFor:(double)a3 getTimestamp:(id)a4
{
  v6 = a4;
  v7 = [[BPSTimer alloc] initWithUpstream:self interval:v6 getTimestamp:a3];

  return v7;
}

- (id)reduceWithInitial:(id)a3 nextPartialResult:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[BPSReduce alloc] initWithUpstream:self initialResult:v7 nextPartialResult:v6];

  return v8;
}

- (id)reduce:(id)a3
{
  v4 = a3;
  v5 = [BPSReduce alloc];
  v6 = [v4 accumulator];
  v7 = [v4 closure];

  v8 = [(BPSReduce *)v5 initWithUpstream:self initialResult:v6 nextPartialResult:v7];

  return v8;
}

- (id)sequenceWithSequence:(id)a3
{
  v3 = a3;
  v4 = [[BPSSequence alloc] initWithSequence:v3];

  return v4;
}

- (id)mapWithTransform:(id)a3
{
  v4 = a3;
  v5 = [[BPSMap alloc] initWithUpstream:self transform:v4];

  return v5;
}

- (id)last
{
  v2 = [[BPSLast alloc] initWithUpstream:self];

  return v2;
}

- (id)filterWithIsIncluded:(id)a3
{
  v4 = a3;
  v5 = [[BPSFilter alloc] initWithUpstream:self isIncluded:v4];

  return v5;
}

- (id)collect
{
  v2 = [[BPSCollect alloc] initWithUpstream:self];

  return v2;
}

- (id)flatMapWithTransform:(id)a3
{
  v4 = a3;
  v5 = [[BPSFlatMap alloc] initWithUpstream:self maxPublishers:1 transform:v4];

  return v5;
}

- (id)zipWithOther:(id)a3
{
  v4 = a3;
  v5 = [[BPSZip alloc] initWithA:self b:v4];

  return v5;
}

- (id)zipWithOthers:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = self;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 arrayWithObjects:&v10 count:1];
  v6 = [v5 arrayByAddingObjectsFromArray:{v4, v10, v11}];

  v7 = [[BPSZipMany alloc] initWithPublishers:v6];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)orderedMergeWithOther:(id)a3 comparator:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[BPSOrderedMerge alloc] initWithA:self b:v7 comparator:v6];

  return v8;
}

- (id)orderedMergeWithOthers:(id)a3 comparator:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = self;
  v5 = MEMORY[0x1E695DEC8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 arrayWithObjects:&v13 count:1];
  v9 = [v8 arrayByAddingObjectsFromArray:{v7, v13, v14}];

  v10 = [[BPSOrderedMerge alloc] initWithPublishers:v9 comparator:v6];
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)removeDuplicatesWithIsDuplicate:(id)a3
{
  v4 = a3;
  v5 = [[BPSRemoveDuplicates alloc] initWithUpstream:self isDuplicate:v4];

  return v5;
}

- (id)windowByKey:(id)a3 assigner:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[BPSWindower alloc] initWithUpstream:self key:v7 assigner:v6];

  return v8;
}

- (id)windowWithAssigner:(id)a3
{
  v4 = a3;
  v5 = [[BPSWindower alloc] initWithUpstream:self key:&__block_literal_global_5 assigner:v4];

  return v5;
}

- (id)multicast
{
  v2 = [[BPSMulticast alloc] initWithUpstream:self createSubject:0];

  return v2;
}

- (id)multicastSubject:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__BPSPublisher_BPSOperators__multicastSubject___block_invoke;
  v8[3] = &unk_1E8320C30;
  v9 = v4;
  v5 = v4;
  v6 = [(BPSPublisher *)self multicastCreateSubject:v8];

  return v6;
}

- (id)multicastCreateSubject:(id)a3
{
  v4 = a3;
  v5 = [[BPSMulticast alloc] initWithUpstream:self createSubject:v4];

  return v5;
}

- (id)handleEventsReceiveOutput:(id)a3 receiveCancel:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[BPSHandleEvents alloc] initWithUpstream:self receiveOutput:v7 receiveCancel:v6];

  return v8;
}

- (id)handleEventsReceiveSubscription:(id)a3 receiveOutput:(id)a4 receiveCompletion:(id)a5 receiveCancel:(id)a6 receiveRequest:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[BPSHandleEvents alloc] initWithUpstream:self receiveSubscription:v16 receiveOutput:v15 receiveCompletion:v14 receiveCancel:v13 receiveRequest:v12];

  return v17;
}

- (id)groupByKey:(id)a3
{
  v4 = a3;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __36__BPSPublisher_GroupBy__groupByKey___block_invoke;
  v16[3] = &unk_1E83210B0;
  v5 = v4;
  v17 = v5;
  v6 = [(BPSPublisher *)self mapWithTransform:v16];
  v7 = [(BPSPublisher *)self multicast];
  v8 = BPSPipelineSupportsPullBasedPublishers(v7);

  if (v8)
  {
    v9 = [[BPSGroupedPublisher alloc] initWithUpstream:v6 createSubject:0];
  }

  else
  {
    v10 = objc_opt_new();
    v11 = [BPSGroupedPublisher alloc];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __36__BPSPublisher_GroupBy__groupByKey___block_invoke_2;
    v14[3] = &unk_1E8320C30;
    v15 = v10;
    v12 = v10;
    v9 = [(BPSGroupedPublisher *)v11 initWithUpstream:v6 createSubject:v14];
  }

  return v9;
}

BPSTuple *__36__BPSPublisher_GroupBy__groupByKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v5 = v3(v2, v4);
  v6 = [[BPSTuple alloc] initWithFirst:v5 second:v4];

  return v6;
}

@end