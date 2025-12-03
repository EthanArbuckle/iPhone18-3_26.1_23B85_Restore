@interface BRQueryStitch
- (BRQueryStitch)initWithURL:(id)l objid:(id)objid kind:(char)kind;
- (id)description;
- (void)_creationDone;
- (void)_deletionDone;
- (void)_enableUpdatesFromIPCAfterStitchingOnAllQueries;
- (void)_renameDone;
- (void)dealloc;
- (void)done;
- (void)setQueries:(id)queries;
@end

@implementation BRQueryStitch

- (BRQueryStitch)initWithURL:(id)l objid:(id)objid kind:(char)kind
{
  lCopy = l;
  objidCopy = objid;
  v14.receiver = self;
  v14.super_class = BRQueryStitch;
  v11 = [(BRQueryStitch *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_url, l);
    objc_storeStrong(&v12->_objid, objid);
    v12->_kind = kind;
  }

  return v12;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:64];
  [v3 appendFormat:@"<BRQueryStitch %p for ", self];
  kind = self->_kind;
  if (kind <= 2)
  {
    [v3 appendString:off_1E7A16AA8[kind]];
  }

  path = [(NSURL *)self->_url path];
  [v3 appendFormat:@"%@ possibly interesting %ld queries>", path, -[NSArray count](self->_contexts, "count")];

  return v3;
}

- (void)setQueries:(id)queries
{
  v21 = *MEMORY[0x1E69E9840];
  queriesCopy = queries;
  if (self->_contexts)
  {
    [BRQueryStitch setQueries:];
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(queriesCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = queriesCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = [BRQueryStitchingContext alloc];
        v13 = [(BRQueryStitchingContext *)v12 initWithQuery:v11, v16];
        [(NSArray *)v5 addObject:v13];
        [(BRQueryStitchingContext *)v13 performAsyncOnReceiver:&__block_literal_global_28];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  contexts = self->_contexts;
  self->_contexts = v5;

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_enableUpdatesFromIPCAfterStitchingOnAllQueries
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_contexts;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

        [*(*(&v8 + 1) + 8 * v6++) performAsyncOnReceiver:{&__block_literal_global_30_0, v8}];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_creationDone
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] could not get notification, not stitching anything%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __30__BRQueryStitch__creationDone__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) copy];
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v4, 0}];
  v6 = brc_bread_crumbs("[BRQueryStitch _creationDone]_block_invoke", 212);
  v7 = brc_default_log(1, 0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    *buf = 138412802;
    v11 = v3;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v6;
    _os_log_debug_impl(&dword_1AE2A9000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] sending update to %@: %@%@", buf, 0x20u);
  }

  [v3 receiveStitchingUpdates:v5];
  [v3 enableUpdatesFromIPCAfterStitching];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_renameDone
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] destination URL is outside of clouddocs, pretend it's a deletion%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __28__BRQueryStitch__renameDone__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [*(a1 + 32) copy];
  if (v8)
  {
    [v7 addObject:v8];
  }

  if ([*(*(a1 + 40) + 16) isFolderOrAliasID])
  {
    v23 = v8;
    v25 = v5;
    v9 = [*(*(a1 + 40) + 40) path];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = v6;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          v16 = [v15 url];
          v17 = [v16 path];
          v18 = [v17 hasPrefix:v9];

          if (v18)
          {
            v19 = [v15 copy];
            [v7 addObject:v19];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v26 objects:v36 count:16];
      }

      while (v12);
    }

    v6 = v24;
    v5 = v25;
    v8 = v23;
  }

  v20 = brc_bread_crumbs("[BRQueryStitch _renameDone]_block_invoke", 267);
  v21 = brc_default_log(1, 0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v31 = v5;
    v32 = 2112;
    v33 = v7;
    v34 = 2112;
    v35 = v20;
    _os_log_debug_impl(&dword_1AE2A9000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] sending updates to %@: %@%@", buf, 0x20u);
  }

  [v5 receiveStitchingUpdates:v7];
  [v5 enableUpdatesFromIPCAfterStitching];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_deletionDone
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_1AE2A9000, v0, v1, "[DEBUG] the URL is still reachable, not stitching anything%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __30__BRQueryStitch__deletionDone__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([*(*(a1 + 32) + 16) isFolderOrAliasID])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v25 = v9;
      v26 = v8;
      v14 = 0;
      v15 = *v28;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v27 + 1) + 8 * i);

          v18 = [v17 url];
          v19 = [v18 checkPromisedItemIsReachableAndReturnError:0];

          if (v19)
          {
            v14 = v17;
          }

          else
          {
            v14 = [v17 copy];

            [v14 markDead];
            [v10 addObject:v14];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
      }

      while (v13);

      v9 = v25;
      v8 = v26;
    }
  }

  v20 = [v9 objectForKey:{*(*(a1 + 32) + 16), v25, v26, v27}];
  v21 = [v20 copy];

  if (v21)
  {
    [v21 markDead];
    [v10 addObject:v21];
  }

  v22 = brc_bread_crumbs("[BRQueryStitch _deletionDone]_block_invoke", 311);
  v23 = brc_default_log(1, 0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v32 = v7;
    v33 = 2112;
    v34 = v10;
    v35 = 2112;
    v36 = v22;
    _os_log_debug_impl(&dword_1AE2A9000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] sending update to %@: %@%@", buf, 0x20u);
  }

  [v7 receiveStitchingUpdates:v10];
  [v7 enableUpdatesFromIPCAfterStitching];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)done
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_1AE2A9000, v0, v1, "[CRIT] UNREACHABLE: unknown stitching handler%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  if (self->_contexts)
  {
    [(BRQueryStitch *)self done];
  }

  v3.receiver = self;
  v3.super_class = BRQueryStitch;
  [(BRQueryStitch *)&v3 dealloc];
}

- (void)setQueries:.cold.1()
{
  v13 = *MEMORY[0x1E69E9840];
  brc_bread_crumbs("[BRQueryStitch setQueries:]", 165);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6_0();
  v4 = brc_default_log(v2, v3);
  if (OUTLINED_FUNCTION_5_0(v4))
  {
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v6, v7, "[CRIT] Assertion failed: _contexts == nil%@", v8, v9, v10, v11, v12);
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end