@interface BPSOrderedMerge
+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state;
- (BOOL)isOrderedSameForEvents:(id)events second:(id)second;
- (BPSOrderedMerge)initWithA:(id)a b:(id)b comparator:(id)comparator;
- (BPSOrderedMerge)initWithPublishers:(id)publishers comparator:(id)comparator;
- (id)nextEvent;
- (id)validateBookmark:(id)bookmark;
- (void)applyBookmark:(id)bookmark;
- (void)reset;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSOrderedMerge

- (id)nextEvent
{
  v34 = *MEMORY[0x1E69E9840];
  upstreamStates = [(BPSOrderedMerge *)self upstreamStates];
  v4 = [upstreamStates count];

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x1E695DF70]);
    publishers = [(BPSOrderedMerge *)self publishers];
    v7 = [v5 initWithCapacity:{objc_msgSend(publishers, "count")}];
    [(BPSOrderedMerge *)self setUpstreamStates:v7];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    publishers2 = [(BPSOrderedMerge *)self publishers];
    v9 = [publishers2 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v9)
    {
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(publishers2);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          v13 = objc_opt_new();
          [v13 attachUpstream:v12];
          upstreamStates2 = [(BPSOrderedMerge *)self upstreamStates];
          [upstreamStates2 addObject:v13];
        }

        v9 = [publishers2 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v9);
    }
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  publishers3 = [(BPSOrderedMerge *)self publishers];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __28__BPSOrderedMerge_nextEvent__block_invoke;
  v24[3] = &unk_1E8320EB0;
  v24[4] = self;
  v24[5] = &v25;
  [publishers3 enumerateObjectsUsingBlock:v24];

  if (![(BMIndirectHeap *)self->_heap count])
  {
    goto LABEL_17;
  }

  if (*(v26 + 24) != 1)
  {
    goto LABEL_14;
  }

  mostRecentEvent = self->_mostRecentEvent;
  if (!mostRecentEvent)
  {
    goto LABEL_18;
  }

  v17 = [(NSMutableArray *)self->_upstreamStates objectAtIndexedSubscript:[(BMIndirectHeap *)self->_heap top]];
  nextEvent = [v17 nextEvent];
  v19 = [(BPSOrderedMerge *)self isOrderedSameForEvents:mostRecentEvent second:nextEvent];

  if (v19)
  {
LABEL_14:
    upstreamStates3 = [(BPSOrderedMerge *)self upstreamStates];
    v21 = [upstreamStates3 objectAtIndexedSubscript:{-[BMIndirectHeap pop](self->_heap, "pop")}];

    mostRecentEvent = [v21 nextEvent];
    if (mostRecentEvent)
    {
      objc_storeStrong(&self->_mostRecentEvent, mostRecentEvent);
      [v21 setLastReturnedEvent:mostRecentEvent];
      [v21 setNextEvent:0];
    }
  }

  else
  {
LABEL_17:
    mostRecentEvent = 0;
  }

LABEL_18:
  _Block_object_dispose(&v25, 8);
  v22 = *MEMORY[0x1E69E9840];

  return mostRecentEvent;
}

void __28__BPSOrderedMerge_nextEvent__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v7 = [*(a1 + 32) upstreamStates];
  v8 = [v7 objectAtIndexedSubscript:a3];

  v9 = [v8 nextEvent];
  if (v9)
  {
LABEL_2:

    goto LABEL_3;
  }

  v10 = [v8 upstream];
  v11 = [v10 completed];

  if ((v11 & 1) == 0)
  {
    v9 = [v14 nextEvent];
    if (v9)
    {
      [v8 setNextEvent:v9];
      [*(*(a1 + 32) + 32) add:a3];
    }

    else
    {
      v12 = [v8 upstream];
      v13 = [v12 completed];

      if ((v13 & 1) == 0)
      {
        *a4 = 1;
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }

    goto LABEL_2;
  }

LABEL_3:
}

- (void)reset
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  publishers = [(BPSOrderedMerge *)self publishers];
  v5 = [v3 initWithCapacity:{objc_msgSend(publishers, "count")}];
  [(BPSOrderedMerge *)self setUpstreamStates:v5];

  [(BMIndirectHeap *)self->_heap reset];
  v6.receiver = self;
  v6.super_class = BPSOrderedMerge;
  [(BPSPublisher *)&v6 reset];
}

- (BPSOrderedMerge)initWithA:(id)a b:(id)b comparator:(id)comparator
{
  v16[2] = *MEMORY[0x1E69E9840];
  v16[0] = a;
  v16[1] = b;
  v8 = MEMORY[0x1E695DEC8];
  comparatorCopy = comparator;
  bCopy = b;
  aCopy = a;
  v12 = [v8 arrayWithObjects:v16 count:2];

  v13 = [(BPSOrderedMerge *)self initWithPublishers:v12 comparator:comparatorCopy];
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BPSOrderedMerge)initWithPublishers:(id)publishers comparator:(id)comparator
{
  publishersCopy = publishers;
  comparatorCopy = comparator;
  v22.receiver = self;
  v22.super_class = BPSOrderedMerge;
  v9 = [(BPSOrderedMerge *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_publishers, publishers);
    v11 = _Block_copy(comparatorCopy);
    comparator = v10->_comparator;
    v10->_comparator = v11;

    mostRecentEvent = v10->_mostRecentEvent;
    v10->_mostRecentEvent = 0;

    objc_initWeak(&location, v10);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__BPSOrderedMerge_initWithPublishers_comparator___block_invoke;
    aBlock[3] = &unk_1E8320E60;
    objc_copyWeak(&v20, &location);
    v19 = comparatorCopy;
    v14 = _Block_copy(aBlock);
    v15 = [objc_alloc(MEMORY[0x1E698E9C0]) initWithHeapSize:objc_msgSend(publishersCopy isAscending:{"count"), v14}];
    heap = v10->_heap;
    v10->_heap = v15;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v10;
}

BOOL __49__BPSOrderedMerge_initWithPublishers_comparator___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained upstreamStates];
  v8 = [v7 objectAtIndexedSubscript:a2];
  v9 = [v8 nextEvent];

  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 upstreamStates];
  v12 = [v11 objectAtIndexedSubscript:a3];
  v13 = [v12 nextEvent];

  v14 = (*(*(a1 + 32) + 16))() == -1;
  return v14;
}

- (void)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(BPSFilter *)self subscribe:v5];
  }

  v6 = [_BPSOrderedMergeManyInner alloc];
  publishers = [(BPSOrderedMerge *)self publishers];
  v8 = [publishers count];
  comparator = [(BPSOrderedMerge *)self comparator];
  v10 = [(_BPSOrderedMergeManyInner *)v6 initWithDownstream:subscribeCopy upstreamCount:v8 comparator:comparator];

  [subscribeCopy receiveSubscription:v10];
  publishers2 = [(BPSOrderedMerge *)self publishers];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __29__BPSOrderedMerge_subscribe___block_invoke;
  v13[3] = &unk_1E8320E88;
  v14 = v10;
  v12 = v10;
  [publishers2 enumerateObjectsUsingBlock:v13];
}

void __29__BPSOrderedMerge_subscribe___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [[_BPSAbstractOrderedMergeSide alloc] initWithIndex:a3 combiner:*(a1 + 32)];
  [v5 subscribe:v6];
}

- (BOOL)isOrderedSameForEvents:(id)events second:(id)second
{
  secondCopy = second;
  eventsCopy = events;
  comparator = [(BPSOrderedMerge *)self comparator];
  v9 = (comparator)[2](comparator, eventsCopy, secondCopy);

  return v9 == 0;
}

- (id)validateBookmark:(id)bookmark
{
  v24[1] = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bookmarkCopy = bookmarkCopy;
    v6 = [bookmarkCopy count];
    upstreamPublishers = [(BPSOrderedMerge *)self upstreamPublishers];
    v8 = [upstreamPublishers count];

    if (v6 == v8)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = objc_opt_class();
    upstreamPublishers2 = [(BPSOrderedMerge *)self upstreamPublishers];
    v13 = [v14 initWithFormat:@"%@ expected upstreamStates of count %lu, but received %lu", v15, objc_msgSend(upstreamPublishers2, "count"), objc_msgSend(bookmarkCopy, "count")];

    v17 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v22 = v13;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v9 = [v17 errorWithDomain:@"BiomePubSubError" code:2 userInfo:v18];
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = objc_opt_class();
    bookmarkCopy = [v10 initWithFormat:@"%@ expected bookmark of class %@, but received %@", v11, objc_opt_class(), bookmarkCopy];
    v12 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24[0] = bookmarkCopy;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v9 = [v12 errorWithDomain:@"BiomePubSubError" code:2 userInfo:v13];
  }

LABEL_7:
  v19 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)applyBookmark:(id)bookmark
{
  [(BPSOrderedMerge *)self setUpstreamStates:bookmark];
  [(BMIndirectHeap *)self->_heap reset];
  mostRecentEvent = self->_mostRecentEvent;
  self->_mostRecentEvent = 0;

  upstreamStates = [(BPSOrderedMerge *)self upstreamStates];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__BPSOrderedMerge_applyBookmark___block_invoke;
  v6[3] = &unk_1E8320ED8;
  v6[4] = self;
  [upstreamStates enumerateObjectsUsingBlock:v6];
}

void __33__BPSOrderedMerge_applyBookmark___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v5 = [*(a1 + 32) upstreamPublishers];
  v6 = [v5 objectAtIndexedSubscript:a3];

  [v17 attachUpstream:v6];
  v7 = [v17 nextEvent];

  if (v7)
  {
    [*(*(a1 + 32) + 32) add:a3];
  }

  v8 = [v17 lastReturnedEvent];

  if (v8)
  {
    v9 = *(a1 + 32);
    if (!v9[5])
    {
      goto LABEL_6;
    }

    v10 = [v9 comparator];
    v11 = *(*(a1 + 32) + 40);
    v12 = [v17 lastReturnedEvent];
    v13 = (v10)[2](v10, v11, v12);

    if (v13 == -1)
    {
LABEL_6:
      v14 = [v17 lastReturnedEvent];
      v15 = *(a1 + 32);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }
  }
}

+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state
{
  publisherCopy = publisher;
  upstreamsCopy = upstreams;
  v8 = [BPSOrderedMerge alloc];
  comparator = [publisherCopy comparator];
  v10 = [(BPSOrderedMerge *)v8 initWithPublishers:upstreamsCopy comparator:comparator];

  return v10;
}

@end