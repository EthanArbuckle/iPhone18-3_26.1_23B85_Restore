@interface BMBookmarkablePublisher
+ (BOOL)isPipelineBookmarkable:(id)a3;
+ (id)bookmarkablePublishersFromPublishers:(id)a3;
+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5;
- (NSArray)bookmarkableUpstreams;
- (id)bookmarkNode;
- (id)bufferWithSize:(unint64_t)a3 prefetch:(unint64_t)a4 whenFull:(unint64_t)a5;
- (id)collect;
- (id)correlateWithCurrent:(id)a3 comparator:(id)a4 correlateHandler:(id)a5;
- (id)filterWithIsIncluded:(id)a3;
- (id)flatMapWithTransform:(id)a3;
- (id)groupByKey:(id)a3;
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
- (id)scanWithInitial:(id)a3 nextPartialResult:(id)a4;
- (id)validateBookmarkNode:(id)a3;
- (id)withBookmark:(id)a3;
- (void)applyBookmarkNode:(id)a3;
- (void)subscribe:(id)a3;
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
  v5 = [(BPSPublisher *)self upstreamPublishers];
  v6 = [v4 bookmarkablePublishersFromPublishers:v5];

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

        v11 = [*(*(&v19 + 1) + 8 * i) bookmarkNode];
        [v3 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v12 = [BMBookmarkNode alloc];
  v13 = [(BMBookmarkablePublisher *)self bookmark];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [(BMBookmarkNode *)v12 initWithValue:v13 upstreams:v3 name:v15];

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

- (id)scanWithInitial:(id)a3 nextPartialResult:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[BPSScan alloc] initWithUpstream:self initialResult:v7 nextPartialResult:v6];

  return v8;
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

- (id)mapWithTransform:(id)a3
{
  v4 = a3;
  v5 = [[BPSMap alloc] initWithUpstream:self transform:v4];

  return v5;
}

- (id)filterWithIsIncluded:(id)a3
{
  v4 = a3;
  v5 = [[BPSFilter alloc] initWithUpstream:self isIncluded:v4];

  return v5;
}

- (id)flatMapWithTransform:(id)a3
{
  v4 = a3;
  v5 = [[BPSFlatMap alloc] initWithUpstream:self maxPublishers:1 transform:v4];

  return v5;
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
  v8[2] = __58__BMBookmarkablePublisher_BPSOperators__multicastSubject___block_invoke;
  v8[3] = &unk_1E8320C30;
  v9 = v4;
  v5 = v4;
  v6 = [(BMBookmarkablePublisher *)self multicastCreateSubject:v8];

  return v6;
}

- (id)multicastCreateSubject:(id)a3
{
  v4 = a3;
  v5 = [[BPSMulticast alloc] initWithUpstream:self createSubject:v4];

  return v5;
}

- (id)bufferWithSize:(unint64_t)a3 prefetch:(unint64_t)a4 whenFull:(unint64_t)a5
{
  v5 = [[BPSBuffer alloc] initWithUpstream:self size:a3 prefetch:a4 whenFull:a5];

  return v5;
}

- (void)subscribe:(id)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"Override method %@ in subclass %@", v5, objc_opt_class()}];
}

+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5
{
  v7 = a3;
  if ([a4 count])
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D930];
    v10 = NSStringFromSelector(a2);
    [v8 raise:v9 format:{@"Override method %@ in subclass %@", v10, objc_opt_class()}];
  }

  return v7;
}

- (id)withBookmark:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMBookmarkablePublisher *)v4 withBookmark:v6];
    }

    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v38 = [MEMORY[0x1E695E0F0] mutableCopy];
  v7 = [(BMBookmarkablePublisher *)self bookmarkableUpstreams];
  if ([v7 count])
  {
    v9 = 0;
    *&v8 = 138412546;
    v37 = v8;
    while (1)
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      v11 = [(BMBookmarkablePublisher *)self canStoreInternalStateInBookmark];
      if (!v5 || !v11)
      {
        break;
      }

      v12 = [v5 upstreams];

      if (!v12)
      {
        v15 = __biome_log_for_category();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(BMBookmarkablePublisher *)&v43 withBookmark:v44];
        }

        goto LABEL_21;
      }

      v13 = [v5 upstreams];
      v14 = [v13 count];

      if (v14 <= v9)
      {
        v18 = __biome_log_for_category();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          [(BMBookmarkablePublisher *)&v41 withBookmark:v42];
        }

        v17 = [MEMORY[0x1E695DFB0] null];
        goto LABEL_20;
      }

      v15 = [v5 upstreams];
      v16 = [v15 objectAtIndexedSubscript:v9];

      v10 = v16;
LABEL_21:

      v19 = [MEMORY[0x1E695DFB0] null];
      v20 = [v10 isEqual:v19];

      if (v20)
      {
        v21 = __biome_log_for_category();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = v37;
          v46 = v4;
          v47 = 2112;
          v48 = self;
          _os_log_debug_impl(&dword_1C871B000, v21, OS_LOG_TYPE_DEBUG, "Null bookmark:\n%@ for publisher:%@", buf, 0x16u);
        }
      }

      v22 = [MEMORY[0x1E695DFB0] null];
      if ([v10 isEqual:v22])
      {
        v23 = 0;
      }

      else
      {
        v23 = v10;
      }

      v24 = v23;

      v25 = [v7 objectAtIndexedSubscript:v9];
      v26 = [v25 conformsToProtocol:&unk_1F4872E18];

      if (v26)
      {
        v27 = [v7 objectAtIndexedSubscript:v9];
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

      if (++v9 >= [v7 count])
      {
        goto LABEL_33;
      }
    }

    v17 = v5;
LABEL_20:
    v15 = v10;
    v10 = v17;
    goto LABEL_21;
  }

LABEL_33:
  v29 = objc_opt_class();
  v30 = [v5 value];
  v31 = [v29 publisherWithPublisher:self upstreams:v38 bookmarkState:v30];

  if ([(BMBookmarkablePublisher *)self canStorePassThroughValueInBookmark])
  {
    v32 = [BMBookmarkWrapper alloc];
    v33 = [v5 value];
    v34 = [(BMBookmarkWrapper *)v32 initWithUpstream:v31 initialState:v33];
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

+ (id)bookmarkablePublishersFromPublishers:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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

+ (BOOL)isPipelineBookmarkable:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v6 = [a1 bookmarkablePublishersFromPublishers:v5];
  v7 = [v6 count];

  if (v7)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v4 upstreamPublishers];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v8);
          }

          v12 &= [a1 isPipelineBookmarkable:*(*(&v16 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)validateBookmarkNode:(id)a3
{
  v49[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v5 = [v4 name];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    v22 = objc_alloc(MEMORY[0x1E696AEC0]);
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [v4 name];
    v11 = [v22 initWithFormat:@"%@ expected publisher with name %@, but received %@", v23, v24, v25];

    v26 = MEMORY[0x1E696ABC0];
    v46 = *MEMORY[0x1E696A578];
    v47 = v11;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v17 = [v26 errorWithDomain:@"BiomePubSubError" code:2 userInfo:v16];
    goto LABEL_8;
  }

  v9 = objc_opt_class();
  v10 = [(BPSPublisher *)self upstreamPublishers];
  v11 = [v9 bookmarkablePublishersFromPublishers:v10];

  v12 = [v4 upstreams];
  v13 = [v12 count];
  v14 = [v11 count];

  if (v13 == v14)
  {
    v15 = [v4 value];
    v16 = [(BMBookmarkablePublisher *)self validateBookmark:v15];

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
    v36 = v4;
    v37 = &v38;
    [v11 enumerateObjectsUsingBlock:v35];
    v27 = v39[5];

    _Block_object_dispose(&v38, 8);
  }

  else
  {
    v30 = objc_alloc(MEMORY[0x1E696AEC0]);
    v31 = objc_opt_class();
    v32 = [v4 upstreams];
    v16 = [v30 initWithFormat:@"%@ expected publisher upstream count %lu, but received %lu", v31, objc_msgSend(v32, "count"), objc_msgSend(v11, "count")];

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

- (void)applyBookmarkNode:(id)a3
{
  v4 = a3;
  v5 = [(BMBookmarkablePublisher *)self validateBookmarkNode:v4];

  if (!v5)
  {
    v6 = [v4 value];
    [(BMBookmarkablePublisher *)self applyBookmark:v6];

    v7 = objc_opt_class();
    v8 = [(BPSPublisher *)self upstreamPublishers];
    v9 = [v7 bookmarkablePublishersFromPublishers:v8];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__BMBookmarkablePublisher_applyBookmarkNode___block_invoke;
    v10[3] = &unk_1E8320C58;
    v11 = v4;
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

- (id)groupByKey:(id)a3
{
  v4 = a3;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __47__BMBookmarkablePublisher_GroupBy__groupByKey___block_invoke;
  v16[3] = &unk_1E83210B0;
  v5 = v4;
  v17 = v5;
  v6 = [(BMBookmarkablePublisher *)self mapWithTransform:v16];
  v7 = [(BMBookmarkablePublisher *)self multicast];
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