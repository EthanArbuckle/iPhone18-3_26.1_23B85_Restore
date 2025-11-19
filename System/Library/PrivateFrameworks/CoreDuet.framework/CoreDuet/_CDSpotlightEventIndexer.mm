@interface _CDSpotlightEventIndexer
- (BOOL)finishIndexing;
- (BOOL)isIndexing;
- (_CDSpotlightEventIndexer)initWithDataSource:(id)a3;
- (uint64_t)_beginIndexingFromLatestSpotlightClientState;
- (void)beginIndexingWithBatchSize:(unint64_t)a3 completion:(id)a4;
- (void)finishIndexing;
- (void)indexAdditionsAsBatch;
- (void)indexDeletionsAsBatch;
- (void)resetIndex;
@end

@implementation _CDSpotlightEventIndexer

- (BOOL)isIndexing
{
  v2 = [(_CDSpotlightEventIndexer *)self context];
  v3 = v2 != 0;

  return v3;
}

- (uint64_t)_beginIndexingFromLatestSpotlightClientState
{
  if (result)
  {
    v1 = *(result + 16);
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __72___CDSpotlightEventIndexer__beginIndexingFromLatestSpotlightClientState__block_invoke;
    v2[3] = &unk_1E736A460;
    v2[4] = result;
    return [v1 fetchLastClientStateWithCompletionHandler:v2];
  }

  return result;
}

- (void)indexDeletionsAsBatch
{
  v59 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_31;
  }

  v3 = +[_CDLogging knowledgeChannel];
  if (OUTLINED_FUNCTION_8_11(v3))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v1, OS_LOG_TYPE_INFO, "[Spotlight Indexer] Performing batch deletes in spotlight indexer", buf, 2u);
  }

  v4 = [a1 context];
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = *(a1 + 24);
  v56 = 0;
  v9 = v8;
  v10 = [v9 earliestEventCreationDateWithError:&v56];
  v11 = v56;

  v12 = v11 == 0;
  if (v11)
  {
    v13 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v58 = v11;
      OUTLINED_FUNCTION_10(&dword_191750000, v13, v14, "[Spotlight Indexer] Spotlight event indexer data source failed to fetch earliest event creation date: %@", buf);
    }

LABEL_9:

    goto LABEL_15;
  }

  v15 = [a1 context];
  v16 = v15;
  if (v15)
  {
    v17 = *(v15 + 8);
    v18 = v17;
    if (v17)
    {
      v19 = v17[1];
      goto LABEL_13;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = 0;
LABEL_13:
  v20 = [v10 compare:v19];

  if (v20 == 1)
  {
    v46 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v58 = v10;
      OUTLINED_FUNCTION_3(&dword_191750000, v46, v47, "[Spotlight Indexer] Deleting all searchable items before date: %@", buf);
    }

    [*(a1 + 16) beginIndexBatch];
    [v10 timeIntervalSinceReferenceDate];
    [*(a1 + 16) _deleteActionsBeforeTime:0 completionHandler:?];
    [(_CDEventIndexerBookmark *)v7 updatedBookmarkWithEarliestCreationDate:v10];
    v7 = v13 = v7;
    goto LABEL_9;
  }

  v12 = 0;
LABEL_15:
  v21 = objc_alloc(MEMORY[0x1E696AB80]);
  v22 = [a1 context];
  v23 = v22;
  if (v22)
  {
    v24 = *(v22 + 8);
    v25 = v24;
    if (v24)
    {
      v26 = *(v24 + 3);
      goto LABEL_18;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = 0;
LABEL_18:
  v27 = v26;
  v28 = [a1 context];
  v29 = v28;
  if (v28)
  {
    v30 = *(v28 + 40);
  }

  else
  {
    v30 = 0;
  }

  v31 = [v21 initWithStartDate:v27 endDate:{v30, v10}];

  v32 = *(a1 + 24);
  v54 = v11;
  v55 = 0;
  v33 = v32;
  v34 = [v33 searchableItemIdentifiersForTombstonedEventsInInterval:v31 latestTombstoneDate:&v55 error:&v54];
  v35 = v55;
  v36 = v54;

  if (v36)
  {
    v37 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v58 = v36;
      OUTLINED_FUNCTION_10(&dword_191750000, v37, v38, "[Spotlight Indexer] Spotlight event indexer data source failed to fetch events tombstones: %@", buf);
    }
  }

  else
  {
    if (!v35)
    {
      goto LABEL_25;
    }

    v48 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v34, "count")}];
      *buf = 138412290;
      v58 = v49;
      OUTLINED_FUNCTION_3(&dword_191750000, v48, v50, "[Spotlight Indexer] Deleting %@ searchable items from spotlight index (from user initiated deletes).", buf);
    }

    if (!v12)
    {
      [*(a1 + 16) beginIndexBatch];
    }

    [*(a1 + 16) _deleleActionsWithIdentifiers:v34 completionHandler:0];
    [(_CDEventIndexerBookmark *)v7 updatedBookmarkWithLatestTombstoneDate:v35];
    v37 = v7;
    v7 = v12 = 1;
  }

LABEL_25:
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __49___CDSpotlightEventIndexer_indexDeletionsAsBatch__block_invoke;
  v52[3] = &unk_1E7367670;
  v52[4] = a1;
  v39 = v7;
  v53 = v39;
  v40 = MEMORY[0x193B00C50](v52);
  v41 = v40;
  if (v12)
  {
    v42 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v58 = v39;
      OUTLINED_FUNCTION_3(&dword_191750000, v42, v43, "[Spotlight Indexer] Updating spotlight index bookmark at end of batch deletions: %@", buf);
    }

    v44 = _CDClientStateFromEventIndexerBookmark(v39);
    [*(a1 + 16) endIndexBatchWithClientState:v44 completionHandler:v41];
  }

  else
  {
    (*(v40 + 16))(v40, 0);
  }

LABEL_31:
  v45 = *MEMORY[0x1E69E9840];
}

- (_CDSpotlightEventIndexer)initWithDataSource:(id)a3
{
  v5 = a3;
  CSSearchableIndexClass = getCSSearchableIndexClass();
  if (CSSearchableIndexClass && (v7 = CSSearchableIndexClass, ([(objc_class *)CSSearchableIndexClass isIndexingAvailable]& 1) != 0))
  {
    v19.receiver = self;
    v19.super_class = _CDSpotlightEventIndexer;
    v8 = [(_CDSpotlightEventIndexer *)&v19 init];
    if (v8)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = [v5 stream];
      v11 = [v10 name];
      v12 = [v9 stringWithFormat:@"com.apple.coreduet:%@", v11];

      v13 = [v7 alloc];
      v14 = [v13 initWithName:v12 protectionClass:*MEMORY[0x1E696A388]];
      index = v8->_index;
      v8->_index = v14;

      objc_storeStrong(&v8->_dataSource, a3);
    }

    self = v8;
    v16 = self;
  }

  else
  {
    v17 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_CDSpotlightEventIndexer initWithDataSource:v17];
    }

    v16 = 0;
  }

  return v16;
}

- (void)beginIndexingWithBatchSize:(unint64_t)a3 completion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  if ([(_CDSpotlightEventIndexer *)v7 isIndexing])
  {
    v8 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_191750000, v8, OS_LOG_TYPE_INFO, "[Spotlight Indexer] Spotlight event indexer is already in the process of indexing", &v16, 2u);
    }

    objc_sync_exit(v7);
  }

  else
  {
    v9 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      if (v7)
      {
        dataSource = v7->_dataSource;
      }

      else
      {
        dataSource = 0;
      }

      v11 = dataSource;
      v12 = [(_CDSpotlightEventIndexerDataSource *)v11 stream];
      v13 = [v12 name];
      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_INFO, "[Spotlight Indexer] Begin indexing %@ events with spotlight", &v16, 0xCu);
    }

    v14 = objc_alloc_init(_CDEventIndexerContext);
    [(_CDSpotlightEventIndexer *)v7 setContext:v14];
    [(_CDSpotlightEventIndexer *)v14 beginIndexingWithBatchSize:v7 completion:a3, v6];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)finishIndexing
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = v1[3];
      v4 = [v3 stream];
      v5 = [v4 name];
      v6 = [v1 context];
      v7 = v6;
      if (v6)
      {
        v8 = *(v6 + 8);
      }

      else
      {
        v8 = 0;
      }

      if (!v8)
      {
        v8 = @"<never fetched>";
      }

      v15 = 138412546;
      v16 = v5;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_191750000, v2, OS_LOG_TYPE_INFO, "[Spotlight Indexer] Finished indexing %@ events with spotlight, final bookmark: %@", &v15, 0x16u);
    }

    v9 = [v1 context];
    if (![(_CDSpotlightEventIndexer *)v9 finishIndexing])
    {
      v10 = [v1 context];
      v11 = v10;
      if (v10)
      {
        v12 = *(v10 + 32);
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v13[2]();
    }

    [v1 setContext:0];
    objc_sync_exit(v1);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)resetIndex
{
  if (a1)
  {
    [*(a1 + 16) beginIndexBatch];
    v2 = [MEMORY[0x1E695DF00] distantFuture];
    [v2 timeIntervalSinceReferenceDate];
    v4 = v3;

    [*(a1 + 16) _deleteActionsBeforeTime:0 completionHandler:v4];
    v5 = *(a1 + 24);
    v6 = [objc_opt_class() currentVersion];
    v7 = [_CDEventIndexerBookmark baseBookmarkWithVersion:v6];
    v8 = _CDClientStateFromEventIndexerBookmark(v7);
    v9 = *(a1 + 16);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __38___CDSpotlightEventIndexer_resetIndex__block_invoke;
    v11[3] = &unk_1E7367670;
    v11[4] = a1;
    v12 = v7;
    v10 = v7;
    [v9 endIndexBatchWithClientState:v8 completionHandler:v11];
  }
}

- (void)indexAdditionsAsBatch
{
  v73 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = +[_CDLogging knowledgeChannel];
    if (OUTLINED_FUNCTION_8_11(v3))
    {
      v4 = MEMORY[0x1E696AD98];
      v5 = [a1 context];
      v6 = v5;
      if (v5)
      {
        v7 = *(v5 + 24);
      }

      else
      {
        v7 = 0;
      }

      v8 = [v4 numberWithUnsignedInteger:v7];
      *buf = 138412290;
      v69 = v8;
      OUTLINED_FUNCTION_3(&dword_191750000, v1, v9, "[Spotlight Indexer] Performing batch additions (%@ batch size) in spotlight indexer", buf);
    }

    v10 = objc_alloc(MEMORY[0x1E696AB80]);
    v11 = [OUTLINED_FUNCTION_7_10() context];
    v12 = v11;
    v57 = a1;
    if (v11)
    {
      v13 = *(v11 + 8);
      v14 = v13;
      if (v13)
      {
        v15 = *(v13 + 2);
        goto LABEL_9;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = 0;
LABEL_9:
    v16 = v15;
    v17 = [a1 context];
    v18 = v17;
    if (v17)
    {
      v19 = *(v17 + 40);
    }

    else
    {
      v19 = 0;
    }

    v20 = [v1 initWithStartDate:v16 endDate:v19];

    v67 = 0;
    v21 = a1;
    v22 = a1[3];
    v23 = [a1 context];
    v24 = v23;
    if (v23)
    {
      v25 = *(v23 + 24);
    }

    else
    {
      v25 = 0;
    }

    v65 = 0;
    v66 = 0;
    v26 = [v22 bundleIDToSearchableItemsDictionaryWithCreationDateInInterval:v20 limit:v25 nextBatch:&v67 latestCreationDate:&v66 error:&v65];
    v27 = v66;
    v28 = v65;

    if (v28)
    {
      v29 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = v57[3];
        v31 = [v30 stream];
        v32 = [v31 name];
        *buf = 138412546;
        v69 = v32;
        v70 = 2112;
        v71 = v28;
        _os_log_error_impl(&dword_191750000, v29, OS_LOG_TYPE_ERROR, "[Spotlight Indexer] Spotlight event indexer data source failed to fetch %@ events: %@", buf, 0x16u);
      }
    }

    else
    {
      if (v27)
      {
        v55 = v27;
        v56 = v20;
        [v57[2] beginIndexBatch];
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v54 = v26;
        v34 = v26;
        v35 = [v34 countByEnumeratingWithState:&v61 objects:v72 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v62;
          v38 = *MEMORY[0x1E696A388];
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v62 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v40 = *(*(&v61 + 1) + 8 * i);
              v41 = [v34 objectForKeyedSubscript:v40];
              v42 = +[_CDLogging knowledgeChannel];
              if (OUTLINED_FUNCTION_8_11(v42))
              {
                v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v41, "count")}];
                *buf = 138412546;
                v69 = v43;
                v70 = 2112;
                v71 = v40;
                _os_log_impl(&dword_191750000, v1, OS_LOG_TYPE_INFO, "[Spotlight Indexer] Adding %@ searchable items with bundleID %@ to spotlight index", buf, 0x16u);

                v21 = v57;
              }

              [v21[2] indexSearchableItems:v41 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:v38 forBundleID:v40 options:4 completionHandler:0];
            }

            v36 = [v34 countByEnumeratingWithState:&v61 objects:v72 count:16];
          }

          while (v36);
        }

        v44 = [v21 context];
        v45 = v44;
        if (v44)
        {
          v46 = *(v44 + 8);
        }

        else
        {
          v46 = 0;
        }

        v27 = v55;
        v20 = v56;
        v28 = 0;
        v47 = v46;
        v48 = [(_CDEventIndexerBookmark *)v47 updatedBookmarkWithLatestCreationDate:v55];

        v49 = +[_CDLogging knowledgeChannel];
        if (OUTLINED_FUNCTION_8_11(v49))
        {
          *buf = 138412290;
          v69 = v48;
          OUTLINED_FUNCTION_3(&dword_191750000, v45, v50, "[Spotlight Indexer] Updating spotlight index bookmark at end of batch additions: %@", buf);
        }

        v51 = _CDClientStateFromEventIndexerBookmark(v48);
        v52 = v21[2];
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __49___CDSpotlightEventIndexer_indexAdditionsAsBatch__block_invoke;
        v58[3] = &unk_1E736A488;
        v58[4] = v21;
        v59 = v48;
        v60 = v67;
        v53 = v48;
        [v52 endIndexBatchWithClientState:v51 completionHandler:v58];

        v26 = v54;
        goto LABEL_20;
      }

      v29 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_191750000, v29, OS_LOG_TYPE_DEBUG, "[Spotlight Indexer] No new searchable items to index", buf, 2u);
      }
    }

    [(_CDSpotlightEventIndexer *)v57 finishIndexing];
LABEL_20:
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (uint64_t)beginIndexingWithBatchSize:(uint64_t)a3 completion:(void *)a4 .cold.1(void *a1, void *a2, uint64_t a3, void *a4)
{
  objc_sync_exit(a2);

  v7 = [a2 context];
  if (v7)
  {
    v7[3] = a3;
  }

  v8 = [a2 context];
  v10 = v8;
  if (v8)
  {
    objc_setProperty_nonatomic_copy(v8, v9, a4, 32);
  }

  return [(_CDSpotlightEventIndexer *)a2 _beginIndexingFromLatestSpotlightClientState];
}

- (BOOL)finishIndexing
{
  if (a1)
  {
    v1 = a1[4];
  }

  else
  {
    v1 = 0;
  }

  return v1 == 0;
}

@end