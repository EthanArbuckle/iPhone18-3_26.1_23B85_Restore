@interface BPSWindower
+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5;
- (BOOL)completed;
- (BPSWindower)initWithUpstream:(id)a3 key:(id)a4 assigner:(id)a5;
- (NSArray)bookmarkableUpstreams;
- (id)firstCompletedWindowShouldRemove:(BOOL)a3;
- (id)nextEvent;
- (id)upstreamPublishers;
- (id)validateBookmark:(id)a3;
- (void)reset;
- (void)subscribe:(id)a3;
- (void)updateWindowsWithEvent:(id)a3;
@end

@implementation BPSWindower

- (BPSWindower)initWithUpstream:(id)a3 key:(id)a4 assigner:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = BPSWindower;
  v12 = [(BPSWindower *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_upstream, a3);
    v14 = [v10 copy];
    key = v13->_key;
    v13->_key = v14;

    objc_storeStrong(&v13->_assigner, a5);
    v16 = objc_opt_new();
    windows = v13->_windows;
    v13->_windows = v16;
  }

  return v13;
}

- (void)subscribe:(id)a3
{
  v4 = a3;
  v6 = [[_BPSWindowerInner alloc] initWithDownstream:v4 key:self->_key assigner:self->_assigner];

  v5 = [(BPSWindower *)self upstream];
  [v5 subscribe:v6];
}

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(BPSWindower *)self upstream];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)updateWindowsWithEvent:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = (*(self->_key + 2))();
  v6 = [v5 copyWithZone:0];

  v7 = [(BPSWindower *)self windows];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [(BPSWindower *)self windows];
    v10 = [v9 objectForKeyedSubscript:v6];
  }

  else
  {
    v9 = objc_opt_new();
    v11 = [(BPSWindower *)self windows];
    [v11 setObject:v9 forKeyedSubscript:v6];

    v10 = MEMORY[0x1E695E0F0];
  }

  v12 = [(BPSWindower *)self assigner];
  v23 = v4;
  v13 = [v12 updateAndReturnNewWindowStates:v10 input:v4];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        if (([v10 containsObject:v19] & 1) == 0)
        {
          v20 = [(BPSWindower *)self windows];
          v21 = [v20 objectForKeyedSubscript:v6];
          [v21 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)firstCompletedWindowShouldRemove:(BOOL)a3
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2;
  v24 = __Block_byref_object_dispose__2;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v5 = [(BPSWindower *)self windows];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__BPSWindower_firstCompletedWindowShouldRemove___block_invoke;
  v12[3] = &unk_1E83211B8;
  v12[4] = self;
  v12[5] = &v14;
  v12[6] = &v20;
  v13 = a3;
  [v5 enumerateKeysAndObjectsUsingBlock:v12];

  if (v15[5] && v21[5])
  {
    v6 = [BPSWindowerInput alloc];
    v7 = [v15[5] aggregate];
    v8 = v21[5];
    v9 = [v15[5] metadata];
    v10 = [(BPSWindowerInput *)v6 initWithAggregate:v7 key:v8 metadata:v9];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v10;
}

void __48__BPSWindower_firstCompletedWindowShouldRemove___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__BPSWindower_firstCompletedWindowShouldRemove___block_invoke_2;
  v11[3] = &unk_1E8321190;
  v11[4] = *(a1 + 32);
  v13 = *(a1 + 40);
  v9 = v7;
  v12 = v9;
  v14 = &v15;
  [v8 enumerateObjectsUsingBlock:v11];
  v10 = v16[5];
  if (v10)
  {
    if (*(a1 + 56) == 1)
    {
      [v8 removeObjectAtIndex:{objc_msgSend(v10, "unsignedIntegerValue")}];
    }

    *a4 = 1;
  }

  _Block_object_dispose(&v15, 8);
}

void __48__BPSWindower_firstCompletedWindowShouldRemove___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  if (([v13 completed] & 1) != 0 || (objc_msgSend(*(a1 + 32), "upstream"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "completed"), v8, v9))
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 40));
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a4 = 1;
  }
}

- (id)nextEvent
{
  v3 = [(BPSWindower *)self firstCompletedWindow];
  if (v3)
  {
    goto LABEL_2;
  }

  v6 = [(BPSWindower *)self upstream];
  v7 = [v6 nextEvent];

  if (v7)
  {
    while (1)
    {
      [(BPSWindower *)self updateWindowsWithEvent:v7];
      v8 = [(BPSWindower *)self firstCompletedWindow];
      if (v8)
      {
        break;
      }

      v9 = [(BPSWindower *)self upstream];
      v10 = [v9 nextEvent];

      v7 = v10;
      if (!v10)
      {
        goto LABEL_9;
      }
    }

    v4 = v8;
  }

  else
  {
LABEL_9:
    v11 = [(BPSWindower *)self upstream];
    v12 = [v11 completed];

    if (v12)
    {
      v3 = [(BPSWindower *)self firstCompletedWindow];
      if (v3)
      {
LABEL_2:
        v4 = v3;
        goto LABEL_3;
      }
    }

    v4 = 0;
  }

LABEL_3:

  return v4;
}

- (BOOL)completed
{
  v3 = [(BPSWindower *)self firstCompletedWindowShouldRemove:0];

  result = 0;
  if (!v3)
  {
    v5.receiver = self;
    v5.super_class = BPSWindower;
    return [(BPSPublisher *)&v5 completed];
  }

  return result;
}

- (void)reset
{
  v3 = objc_opt_new();
  [(BPSWindower *)self setWindows:v3];

  v4.receiver = self;
  v4.super_class = BPSWindower;
  [(BPSPublisher *)&v4 reset];
}

- (id)validateBookmark:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = objc_opt_class();
    v7 = [v5 initWithFormat:@"%@ expected bookmark of class %@, but received %@", v6, objc_opt_class(), v3];
    v8 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A578];
    v13[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v4 = [v8 errorWithDomain:@"BiomePubSubError" code:2 userInfo:v9];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [BPSWindower alloc];
  v9 = [v7 objectAtIndexedSubscript:0];

  v10 = [v6 key];
  v11 = [v6 assigner];
  v12 = [(BPSWindower *)v8 initWithUpstream:v9 key:v10 assigner:v11];

  return v12;
}

- (NSArray)bookmarkableUpstreams
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [(BPSWindower *)self upstream];

  if (v3)
  {
    v4 = [(BPSWindower *)self upstream];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [(BPSWindower(BMBookmarkOperators) *)v4 bookmarkableUpstreams];
    }

    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end