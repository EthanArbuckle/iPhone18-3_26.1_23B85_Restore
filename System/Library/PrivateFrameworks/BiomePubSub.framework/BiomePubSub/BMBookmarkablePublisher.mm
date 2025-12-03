@interface BMBookmarkablePublisher
+ (BOOL)isPipelineBookmarkable:(id)bookmarkable;
+ (id)bookmarkablePublishersFromPublishers:(id)publishers;
+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state;
- (NSArray)bookmarkableUpstreams;
- (id)bookmarkNode;
- (id)bufferWithSize:(unint64_t)size prefetch:(unint64_t)prefetch whenFull:(unint64_t)full;
- (id)collect;
- (id)correlateWithCurrent:(id)current comparator:(id)comparator correlateHandler:(id)handler;
- (id)filterWithIsIncluded:(id)included;
- (id)flatMapWithTransform:(id)transform;
- (id)groupByKey:(id)key;
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
- (id)scanWithInitial:(id)initial nextPartialResult:(id)result;
- (id)validateBookmarkNode:(id)node;
- (id)withBookmark:(id)bookmark;
- (void)applyBookmarkNode:(id)node;
- (void)subscribe:(id)subscribe;
@end

@implementation BMBookmarkablePublisher

- (id)bookmarkNode
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = objc_opt_class();
  upstreamPublishers = [(BPSPublisher *)self upstreamPublishers];
  v6 = [v4 bookmarkablePublishersFromPublishers:upstreamPublishers];

  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        bookmarkNode = [*(*(&v19 + 1) + 8 * i) bookmarkNode];
        [v3 addObject:bookmarkNode];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v12 = [BMBookmarkNode alloc];
  bookmark = [(BMBookmarkablePublisher *)self bookmark];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [(BMBookmarkNode *)v12 initWithValue:bookmark upstreams:v3 name:v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)collect
{
  v2 = [[BPSCollect alloc] initWithUpstream:self];

  return v2;
}

- (id)last
{
  v2 = [[BPSLast alloc] initWithUpstream:self];

  return v2;
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

- (id)scanWithInitial:(id)initial nextPartialResult:(id)result
{
  resultCopy = result;
  initialCopy = initial;
  v8 = [[BPSScan alloc] initWithUpstream:self initialResult:initialCopy nextPartialResult:resultCopy];

  return v8;
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

- (id)mapWithTransform:(id)transform
{
  transformCopy = transform;
  v5 = [[BPSMap alloc] initWithUpstream:self transform:transformCopy];

  return v5;
}

- (id)filterWithIsIncluded:(id)included
{
  includedCopy = included;
  v5 = [[BPSFilter alloc] initWithUpstream:self isIncluded:includedCopy];

  return v5;
}

- (id)flatMapWithTransform:(id)transform
{
  transformCopy = transform;
  v5 = [[BPSFlatMap alloc] initWithUpstream:self maxPublishers:1 transform:transformCopy];

  return v5;
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
  v8[2] = __58__BMBookmarkablePublisher_BPSOperators__multicastSubject___block_invoke;
  v8[3] = &unk_1E8320C30;
  v9 = subjectCopy;
  v5 = subjectCopy;
  v6 = [(BMBookmarkablePublisher *)self multicastCreateSubject:v8];

  return v6;
}

- (id)multicastCreateSubject:(id)subject
{
  subjectCopy = subject;
  v5 = [[BPSMulticast alloc] initWithUpstream:self createSubject:subjectCopy];

  return v5;
}

- (id)bufferWithSize:(unint64_t)size prefetch:(unint64_t)prefetch whenFull:(unint64_t)full
{
  v5 = [[BPSBuffer alloc] initWithUpstream:self size:size prefetch:prefetch whenFull:full];

  return v5;
}

- (void)subscribe:(id)subscribe
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Override method %@ in subclass %@", v5, objc_opt_class()}];
}

+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state
{
  publisherCopy = publisher;
  if ([upstreams count])
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D930];
    v10 = NSStringFromSelector(a2);
    [v8 raise:v9 format:{@"Override method %@ in subclass %@", v10, objc_opt_class()}];
  }

  return publisherCopy;
}

- (id)withBookmark:(id)bookmark
{
  v49 = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  if (bookmarkCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMBookmarkablePublisher *)bookmarkCopy withBookmark:v6];
    }

    v5 = 0;
  }

  else
  {
    v5 = bookmarkCopy;
  }

  v38 = [MEMORY[0x1E695E0F0] mutableCopy];
  bookmarkableUpstreams = [(BMBookmarkablePublisher *)self bookmarkableUpstreams];
  if ([bookmarkableUpstreams count])
  {
    v9 = 0;
    *&v8 = 138412546;
    v37 = v8;
    while (1)
    {
      null = [MEMORY[0x1E695DFB0] null];
      canStoreInternalStateInBookmark = [(BMBookmarkablePublisher *)self canStoreInternalStateInBookmark];
      if (!v5 || !canStoreInternalStateInBookmark)
      {
        break;
      }

      upstreams = [v5 upstreams];

      if (!upstreams)
      {
        upstreams3 = __biome_log_for_category();
        if (os_log_type_enabled(upstreams3, OS_LOG_TYPE_ERROR))
        {
          [(BMBookmarkablePublisher *)&v43 withBookmark:v44];
        }

        goto LABEL_21;
      }

      upstreams2 = [v5 upstreams];
      v14 = [upstreams2 count];

      if (v14 <= v9)
      {
        v18 = __biome_log_for_category();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          [(BMBookmarkablePublisher *)&v41 withBookmark:v42];
        }

        null2 = [MEMORY[0x1E695DFB0] null];
        goto LABEL_20;
      }

      upstreams3 = [v5 upstreams];
      v16 = [upstreams3 objectAtIndexedSubscript:v9];

      null = v16;
LABEL_21:

      null3 = [MEMORY[0x1E695DFB0] null];
      v20 = [null isEqual:null3];

      if (v20)
      {
        v21 = __biome_log_for_category();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = v37;
          v46 = bookmarkCopy;
          v47 = 2112;
          selfCopy = self;
          _os_log_debug_impl(&dword_1C871B000, v21, OS_LOG_TYPE_DEBUG, "Null bookmark:\n%@ for publisher:%@", buf, 0x16u);
        }
      }

      null4 = [MEMORY[0x1E695DFB0] null];
      if ([null isEqual:null4])
      {
        v23 = 0;
      }

      else
      {
        v23 = null;
      }

      v24 = v23;

      v25 = [bookmarkableUpstreams objectAtIndexedSubscript:v9];
      v26 = [v25 conformsToProtocol:&unk_1F4872E18];

      if (v26)
      {
        v27 = [bookmarkableUpstreams objectAtIndexedSubscript:v9];
        v28 = [v27 withBookmark:v24];
        [v38 addObject:v28];
      }

      else
      {
        v27 = __biome_log_for_category();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [(BMBookmarkablePublisher *)&v39 withBookmark:v40];
        }
      }

      if (++v9 >= [bookmarkableUpstreams count])
      {
        goto LABEL_33;
      }
    }

    null2 = v5;
LABEL_20:
    upstreams3 = null;
    null = null2;
    goto LABEL_21;
  }

LABEL_33:
  v29 = objc_opt_class();
  value = [v5 value];
  v31 = [v29 publisherWithPublisher:self upstreams:v38 bookmarkState:value];

  if ([(BMBookmarkablePublisher *)self canStorePassThroughValueInBookmark])
  {
    v32 = [BMBookmarkWrapper alloc];
    value2 = [v5 value];
    v34 = [(BMBookmarkWrapper *)v32 initWithUpstream:v31 initialState:value2];
  }

  else
  {
    v34 = v31;
  }

  v35 = *MEMORY[0x1E69E9840];

  return v34;
}

- (NSArray)bookmarkableUpstreams
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"Override method %@ in subclass %@", v4, objc_opt_class()}];

  return 0;
}

+ (id)bookmarkablePublishersFromPublishers:(id)publishers
{
  v19 = *MEMORY[0x1E69E9840];
  publishersCopy = publishers;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = publishersCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 conformsToProtocol:{&unk_1F4872E18, v14}])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (BOOL)isPipelineBookmarkable:(id)bookmarkable
{
  v21[1] = *MEMORY[0x1E69E9840];
  bookmarkableCopy = bookmarkable;
  v21[0] = bookmarkableCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v6 = [self bookmarkablePublishersFromPublishers:v5];
  v7 = [v6 count];

  if (v7)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    upstreamPublishers = [bookmarkableCopy upstreamPublishers];
    v9 = [upstreamPublishers countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      v12 = 1;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(upstreamPublishers);
          }

          v12 &= [self isPipelineBookmarkable:*(*(&v16 + 1) + 8 * i)];
        }

        v10 = [upstreamPublishers countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    else
    {
      LOBYTE(v12) = 1;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)validateBookmarkNode:(id)node
{
  v49[1] = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = objc_alloc(MEMORY[0x1E696AEC0]);
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v11 = [v18 initWithFormat:@"%@ expected publisher with class %@, but received %@", v19, v20, objc_opt_class()];
    v21 = MEMORY[0x1E696ABC0];
    v48 = *MEMORY[0x1E696A578];
    v49[0] = v11;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    v17 = [v21 errorWithDomain:@"BiomePubSubError" code:2 userInfo:v16];
    goto LABEL_8;
  }

  name = [nodeCopy name];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [name isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    v22 = objc_alloc(MEMORY[0x1E696AEC0]);
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    name2 = [nodeCopy name];
    v11 = [v22 initWithFormat:@"%@ expected publisher with name %@, but received %@", v23, v24, name2];

    v26 = MEMORY[0x1E696ABC0];
    v46 = *MEMORY[0x1E696A578];
    v47 = v11;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v17 = [v26 errorWithDomain:@"BiomePubSubError" code:2 userInfo:v16];
    goto LABEL_8;
  }

  v9 = objc_opt_class();
  upstreamPublishers = [(BPSPublisher *)self upstreamPublishers];
  v11 = [v9 bookmarkablePublishersFromPublishers:upstreamPublishers];

  upstreams = [nodeCopy upstreams];
  v13 = [upstreams count];
  v14 = [v11 count];

  if (v13 == v14)
  {
    value = [nodeCopy value];
    v16 = [(BMBookmarkablePublisher *)self validateBookmark:value];

    if (v16)
    {
      v17 = v16;
      v16 = v17;
LABEL_8:
      v27 = v17;
      goto LABEL_9;
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__0;
    v42 = __Block_byref_object_dispose__0;
    v43 = 0;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __48__BMBookmarkablePublisher_validateBookmarkNode___block_invoke;
    v35[3] = &unk_1E8320F48;
    v36 = nodeCopy;
    v37 = &v38;
    [v11 enumerateObjectsUsingBlock:v35];
    v27 = v39[5];

    _Block_object_dispose(&v38, 8);
  }

  else
  {
    v30 = objc_alloc(MEMORY[0x1E696AEC0]);
    v31 = objc_opt_class();
    upstreams2 = [nodeCopy upstreams];
    v16 = [v30 initWithFormat:@"%@ expected publisher upstream count %lu, but received %lu", v31, objc_msgSend(upstreams2, "count"), objc_msgSend(v11, "count")];

    v33 = MEMORY[0x1E696ABC0];
    v44 = *MEMORY[0x1E696A578];
    v45 = v16;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v27 = [v33 errorWithDomain:@"BiomePubSubError" code:2 userInfo:v34];
  }

LABEL_9:

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

void __48__BMBookmarkablePublisher_validateBookmarkNode___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 upstreams];
  v10 = [v9 objectAtIndexedSubscript:a3];
  obj = [v8 validateBookmarkNode:v10];

  v11 = obj;
  if (obj)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
    v11 = obj;
    *a4 = 1;
  }
}

- (void)applyBookmarkNode:(id)node
{
  nodeCopy = node;
  v5 = [(BMBookmarkablePublisher *)self validateBookmarkNode:nodeCopy];

  if (!v5)
  {
    value = [nodeCopy value];
    [(BMBookmarkablePublisher *)self applyBookmark:value];

    v7 = objc_opt_class();
    upstreamPublishers = [(BPSPublisher *)self upstreamPublishers];
    v9 = [v7 bookmarkablePublishersFromPublishers:upstreamPublishers];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__BMBookmarkablePublisher_applyBookmarkNode___block_invoke;
    v10[3] = &unk_1E8320C58;
    v11 = nodeCopy;
    [v9 enumerateObjectsUsingBlock:v10];
  }
}

void __45__BMBookmarkablePublisher_applyBookmarkNode___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [v4 upstreams];
  v6 = [v7 objectAtIndexedSubscript:a3];
  [v5 applyBookmarkNode:v6];
}

- (id)groupByKey:(id)key
{
  keyCopy = key;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __47__BMBookmarkablePublisher_GroupBy__groupByKey___block_invoke;
  v16[3] = &unk_1E83210B0;
  v5 = keyCopy;
  v17 = v5;
  v6 = [(BMBookmarkablePublisher *)self mapWithTransform:v16];
  multicast = [(BMBookmarkablePublisher *)self multicast];
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
    v14[2] = __47__BMBookmarkablePublisher_GroupBy__groupByKey___block_invoke_2;
    v14[3] = &unk_1E8320C30;
    v15 = v10;
    v12 = v10;
    v9 = [(BPSGroupedPublisher *)v11 initWithUpstream:v6 createSubject:v14];
  }

  return v9;
}

BPSTuple *__47__BMBookmarkablePublisher_GroupBy__groupByKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v5 = v3(v2, v4);
  v6 = [[BPSTuple alloc] initWithFirst:v5 second:v4];

  return v6;
}

- (void)withBookmark:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C871B000, a2, OS_LOG_TYPE_ERROR, "Bookmark should be BMBookmarkNode, instead got %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end