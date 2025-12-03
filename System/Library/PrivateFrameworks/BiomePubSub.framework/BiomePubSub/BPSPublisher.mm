@interface BPSPublisher
- (BOOL)completed;
- (id)bufferWithSize:(unint64_t)size prefetch:(unint64_t)prefetch whenFull:(unint64_t)full;
- (id)collect;
- (id)combineLatestwithOther:(id)other;
- (id)connectableSinkWithCompletion:(id)completion shouldContinue:(id)continue;
- (id)correlateWithCurrent:(id)current comparator:(id)comparator correlateHandler:(id)handler;
- (id)debounceFor:(double)for getTimestamp:(id)timestamp;
- (id)drivableSinkWithBookmark:(id)bookmark completion:(id)completion shouldContinue:(id)continue;
- (id)filterWithIsIncluded:(id)included;
- (id)flatMapWithTransform:(id)transform;
- (id)groupByKey:(id)key;
- (id)handleEventsReceiveOutput:(id)output receiveCancel:(id)cancel;
- (id)handleEventsReceiveSubscription:(id)subscription receiveOutput:(id)output receiveCompletion:(id)completion receiveCancel:(id)cancel receiveRequest:(id)request;
- (id)last;
- (id)mapWithTransform:(id)transform;
- (id)mergeWithOther:(id)other;
- (id)mergeWithOthers:(id)others;
- (id)multicast;
- (id)multicastCreateSubject:(id)subject;
- (id)multicastSubject:(id)subject;
- (id)orderedMergeWithOther:(id)other comparator:(id)comparator;
- (id)orderedMergeWithOthers:(id)others comparator:(id)comparator;
- (id)reduce:(id)reduce;
- (id)reduceWithInitial:(id)initial nextPartialResult:(id)result;
- (id)removeDuplicatesWithIsDuplicate:(id)duplicate;
- (id)scanWithInitial:(id)initial nextPartialResult:(id)result;
- (id)sequenceWithSequence:(id)sequence;
- (id)sinkWithBookmark:(id)bookmark completion:(id)completion receiveInput:(id)input;
- (id)sinkWithCompletion:(id)completion receiveInput:(id)input;
- (id)sinkWithCompletion:(id)completion shouldContinue:(id)continue;
- (id)startWithSubscriber:(id)subscriber;
- (id)timerFor:(double)for getTimestamp:(id)timestamp;
- (id)windowByKey:(id)key assigner:(id)assigner;
- (id)windowWithAssigner:(id)assigner;
- (id)zipWithOther:(id)other;
- (id)zipWithOthers:(id)others;
- (void)reset;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSPublisher

- (BOOL)completed
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  upstreamPublishers = [(BPSPublisher *)self upstreamPublishers];
  v3 = [upstreamPublishers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(upstreamPublishers);
        }

        if (![*(*(&v10 + 1) + 8 * i) completed])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [upstreamPublishers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  upstreamPublishers = [(BPSPublisher *)self upstreamPublishers];
  v3 = [upstreamPublishers countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(upstreamPublishers);
        }

        [*(*(&v8 + 1) + 8 * v6++) reset];
      }

      while (v4 != v6);
      v4 = [upstreamPublishers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)correlateWithCurrent:(id)current comparator:(id)comparator correlateHandler:(id)handler
{
  currentCopy = current;
  comparatorCopy = comparator;
  handlerCopy = handler;
  if (BPSPipelineSupportsPullBasedPublishers(self))
  {
    v11 = [BPSCorrelate correlatePublisherChainWithPrior:self current:currentCopy comparator:comparatorCopy correlateHandler:handlerCopy];
  }

  else
  {
    v11 = [[BPSCorrelate alloc] initWithPrior:self current:currentCopy comparator:comparatorCopy correlateHandler:handlerCopy];
  }

  v12 = v11;

  return v12;
}

- (id)bufferWithSize:(unint64_t)size prefetch:(unint64_t)prefetch whenFull:(unint64_t)full
{
  v5 = [[BPSBuffer alloc] initWithUpstream:self size:size prefetch:prefetch whenFull:full];

  return v5;
}

- (id)startWithSubscriber:(id)subscriber
{
  v19 = *MEMORY[0x1E69E9840];
  subscriberCopy = subscriber;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  upstreamPublishers = [(BPSPublisher *)self upstreamPublishers];
  v6 = [upstreamPublishers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(upstreamPublishers);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) startWithSubscriber:subscriberCopy];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [upstreamPublishers countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)subscribe:(id)subscribe
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Override method %@ in subclass %@", v5, objc_opt_class()}];
}

- (id)sinkWithCompletion:(id)completion receiveInput:(id)input
{
  completionCopy = completion;
  inputCopy = input;
  v8 = BPSPipelineSupportsPullBasedPublishers(self);
  v9 = [BPSSink alloc];
  v10 = v9;
  if (v8)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64__BPSPublisher_BPSSubscribers__sinkWithCompletion_receiveInput___block_invoke;
    v13[3] = &unk_1E8320D98;
    v14 = completionCopy;
    v11 = [(BPSSink *)v10 initWithReceiveBookmarkCompletion:v13 receiveInput:inputCopy];

    [(BPSSink *)v11 subscribeTo:self];
  }

  else
  {
    v11 = [(BPSSink *)v9 initWithReceiveCompletion:completionCopy receiveInput:inputCopy];

    [(BPSPublisher *)self subscribe:v11];
  }

  return v11;
}

- (id)sinkWithCompletion:(id)completion shouldContinue:(id)continue
{
  completionCopy = completion;
  continueCopy = continue;
  v8 = BPSPipelineSupportsPullBasedPublishers(self);
  v9 = [BPSDrivableSink alloc];
  v10 = v9;
  if (v8)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__BPSPublisher_BPSSubscribers__sinkWithCompletion_shouldContinue___block_invoke;
    v13[3] = &unk_1E8320D98;
    v14 = completionCopy;
    v11 = [(BPSDrivableSink *)v10 initWithReceiveBookmarkCompletion:v13 shouldContinue:continueCopy];

    [(BPSDrivableSink *)v11 subscribeTo:self];
  }

  else
  {
    v11 = [(BPSDrivableSink *)v9 initWithReceiveCompletion:completionCopy shouldContinue:continueCopy];

    [(BPSPublisher *)self subscribe:v11];
  }

  return v11;
}

- (id)connectableSinkWithCompletion:(id)completion shouldContinue:(id)continue
{
  continueCopy = continue;
  completionCopy = completion;
  v7 = [[BPSDrivableSink alloc] initWithReceiveCompletion:completionCopy shouldContinue:continueCopy];

  return v7;
}

- (id)sinkWithBookmark:(id)bookmark completion:(id)completion receiveInput:(id)input
{
  bookmarkCopy = bookmark;
  inputCopy = input;
  completionCopy = completion;
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

    v12 = [[BPSSink alloc] initWithReceiveBookmarkCompletion:completionCopy receiveInput:inputCopy];

    if (bookmarkCopy && [(BPSPublisher *)self conformsToProtocol:&unk_1F4872E18])
    {
      [(BPSPublisher *)self applyBookmarkNode:bookmarkCopy];
    }

    [(BPSSink *)v12 subscribeTo:self];
  }

  else
  {
    v12 = [[BPSSink alloc] initWithReceiveBookmarkedCompletion:completionCopy receiveInput:inputCopy];

    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [BPSPublisher(BMBookmarkableSink) sinkWithBookmark:bookmarkCopy completion:v13 receiveInput:?];
    }

    if ([(BPSPublisher *)self conformsToProtocol:&unk_1F4872E18])
    {
      v14 = [(BPSPublisher *)self withBookmark:bookmarkCopy];
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

- (id)drivableSinkWithBookmark:(id)bookmark completion:(id)completion shouldContinue:(id)continue
{
  bookmarkCopy = bookmark;
  continueCopy = continue;
  completionCopy = completion;
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

    v12 = [[BPSDrivableSink alloc] initWithReceiveBookmarkCompletion:completionCopy shouldContinue:continueCopy];

    if (bookmarkCopy && [(BPSPublisher *)self conformsToProtocol:&unk_1F4872E18])
    {
      [(BPSPublisher *)self applyBookmarkNode:bookmarkCopy];
    }

    [(BPSDrivableSink *)v12 subscribeTo:self];
  }

  else
  {
    v12 = [[BPSDrivableSink alloc] initWithReceiveBookmarkedCompletion:completionCopy shouldContinue:continueCopy];

    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [BPSPublisher(BMBookmarkableSink) sinkWithBookmark:bookmarkCopy completion:v13 receiveInput:?];
    }

    if ([(BPSPublisher *)self conformsToProtocol:&unk_1F4872E18])
    {
      v14 = [(BPSPublisher *)self withBookmark:bookmarkCopy];
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

- (id)mergeWithOthers:(id)others
{
  v11 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v3 = MEMORY[0x1E695DEC8];
  othersCopy = others;
  v5 = [v3 arrayWithObjects:&selfCopy count:1];
  v6 = [v5 arrayByAddingObjectsFromArray:{othersCopy, selfCopy, v11}];

  v7 = [[BPSMergeMany alloc] initWithPublishers:v6];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)mergeWithOther:(id)other
{
  otherCopy = other;
  v5 = [[BPSMerge alloc] initWithA:self b:otherCopy];

  return v5;
}

- (id)combineLatestwithOther:(id)other
{
  otherCopy = other;
  v5 = [[BPSCombineLatest alloc] initWithA:self b:otherCopy];

  return v5;
}

- (id)debounceFor:(double)for getTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v7 = [[BPSDebounce alloc] initWithUpstream:self for:timestampCopy getTimestamp:for];

  return v7;
}

- (id)scanWithInitial:(id)initial nextPartialResult:(id)result
{
  resultCopy = result;
  initialCopy = initial;
  v8 = [[BPSScan alloc] initWithUpstream:self initialResult:initialCopy nextPartialResult:resultCopy];

  return v8;
}

- (id)timerFor:(double)for getTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v7 = [[BPSTimer alloc] initWithUpstream:self interval:timestampCopy getTimestamp:for];

  return v7;
}

- (id)reduceWithInitial:(id)initial nextPartialResult:(id)result
{
  resultCopy = result;
  initialCopy = initial;
  v8 = [[BPSReduce alloc] initWithUpstream:self initialResult:initialCopy nextPartialResult:resultCopy];

  return v8;
}

- (id)reduce:(id)reduce
{
  reduceCopy = reduce;
  v5 = [BPSReduce alloc];
  accumulator = [reduceCopy accumulator];
  closure = [reduceCopy closure];

  v8 = [(BPSReduce *)v5 initWithUpstream:self initialResult:accumulator nextPartialResult:closure];

  return v8;
}

- (id)sequenceWithSequence:(id)sequence
{
  sequenceCopy = sequence;
  v4 = [[BPSSequence alloc] initWithSequence:sequenceCopy];

  return v4;
}

- (id)mapWithTransform:(id)transform
{
  transformCopy = transform;
  v5 = [[BPSMap alloc] initWithUpstream:self transform:transformCopy];

  return v5;
}

- (id)last
{
  v2 = [[BPSLast alloc] initWithUpstream:self];

  return v2;
}

- (id)filterWithIsIncluded:(id)included
{
  includedCopy = included;
  v5 = [[BPSFilter alloc] initWithUpstream:self isIncluded:includedCopy];

  return v5;
}

- (id)collect
{
  v2 = [[BPSCollect alloc] initWithUpstream:self];

  return v2;
}

- (id)flatMapWithTransform:(id)transform
{
  transformCopy = transform;
  v5 = [[BPSFlatMap alloc] initWithUpstream:self maxPublishers:1 transform:transformCopy];

  return v5;
}

- (id)zipWithOther:(id)other
{
  otherCopy = other;
  v5 = [[BPSZip alloc] initWithA:self b:otherCopy];

  return v5;
}

- (id)zipWithOthers:(id)others
{
  v11 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v3 = MEMORY[0x1E695DEC8];
  othersCopy = others;
  v5 = [v3 arrayWithObjects:&selfCopy count:1];
  v6 = [v5 arrayByAddingObjectsFromArray:{othersCopy, selfCopy, v11}];

  v7 = [[BPSZipMany alloc] initWithPublishers:v6];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)orderedMergeWithOther:(id)other comparator:(id)comparator
{
  comparatorCopy = comparator;
  otherCopy = other;
  v8 = [[BPSOrderedMerge alloc] initWithA:self b:otherCopy comparator:comparatorCopy];

  return v8;
}

- (id)orderedMergeWithOthers:(id)others comparator:(id)comparator
{
  v14 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v5 = MEMORY[0x1E695DEC8];
  comparatorCopy = comparator;
  othersCopy = others;
  v8 = [v5 arrayWithObjects:&selfCopy count:1];
  v9 = [v8 arrayByAddingObjectsFromArray:{othersCopy, selfCopy, v14}];

  v10 = [[BPSOrderedMerge alloc] initWithPublishers:v9 comparator:comparatorCopy];
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)removeDuplicatesWithIsDuplicate:(id)duplicate
{
  duplicateCopy = duplicate;
  v5 = [[BPSRemoveDuplicates alloc] initWithUpstream:self isDuplicate:duplicateCopy];

  return v5;
}

- (id)windowByKey:(id)key assigner:(id)assigner
{
  assignerCopy = assigner;
  keyCopy = key;
  v8 = [[BPSWindower alloc] initWithUpstream:self key:keyCopy assigner:assignerCopy];

  return v8;
}

- (id)windowWithAssigner:(id)assigner
{
  assignerCopy = assigner;
  v5 = [[BPSWindower alloc] initWithUpstream:self key:&__block_literal_global_5 assigner:assignerCopy];

  return v5;
}

- (id)multicast
{
  v2 = [[BPSMulticast alloc] initWithUpstream:self createSubject:0];

  return v2;
}

- (id)multicastSubject:(id)subject
{
  subjectCopy = subject;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__BPSPublisher_BPSOperators__multicastSubject___block_invoke;
  v8[3] = &unk_1E8320C30;
  v9 = subjectCopy;
  v5 = subjectCopy;
  v6 = [(BPSPublisher *)self multicastCreateSubject:v8];

  return v6;
}

- (id)multicastCreateSubject:(id)subject
{
  subjectCopy = subject;
  v5 = [[BPSMulticast alloc] initWithUpstream:self createSubject:subjectCopy];

  return v5;
}

- (id)handleEventsReceiveOutput:(id)output receiveCancel:(id)cancel
{
  cancelCopy = cancel;
  outputCopy = output;
  v8 = [[BPSHandleEvents alloc] initWithUpstream:self receiveOutput:outputCopy receiveCancel:cancelCopy];

  return v8;
}

- (id)handleEventsReceiveSubscription:(id)subscription receiveOutput:(id)output receiveCompletion:(id)completion receiveCancel:(id)cancel receiveRequest:(id)request
{
  requestCopy = request;
  cancelCopy = cancel;
  completionCopy = completion;
  outputCopy = output;
  subscriptionCopy = subscription;
  v17 = [[BPSHandleEvents alloc] initWithUpstream:self receiveSubscription:subscriptionCopy receiveOutput:outputCopy receiveCompletion:completionCopy receiveCancel:cancelCopy receiveRequest:requestCopy];

  return v17;
}

- (id)groupByKey:(id)key
{
  keyCopy = key;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __36__BPSPublisher_GroupBy__groupByKey___block_invoke;
  v16[3] = &unk_1E83210B0;
  v5 = keyCopy;
  v17 = v5;
  v6 = [(BPSPublisher *)self mapWithTransform:v16];
  multicast = [(BPSPublisher *)self multicast];
  v8 = BPSPipelineSupportsPullBasedPublishers(multicast);

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