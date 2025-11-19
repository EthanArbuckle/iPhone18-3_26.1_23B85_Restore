@interface CDSpotlightEventIndexer
@end

@implementation CDSpotlightEventIndexer

void __72___CDSpotlightEventIndexer__beginIndexingFromLatestSpotlightClientState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __72___CDSpotlightEventIndexer__beginIndexingFromLatestSpotlightClientState__block_invoke_cold_1();
    }

    v8 = *(a1 + 32);
LABEL_5:
    [(_CDSpotlightEventIndexer *)v8 finishIndexing];
    goto LABEL_6;
  }

  v12 = *(a1 + 32);
  v11 = (a1 + 32);
  v10 = v12;
  if (v12)
  {
    v13 = *(v10 + 24);
  }

  v14 = [objc_opt_class() currentVersion];
  v15 = [*v11 context];
  if (v15)
  {
    v15[2] = v14;
  }

  v16 = v5;
  v17 = v16;
  if (!v16 || ![v16 length])
  {
    goto LABEL_18;
  }

  *v34 = 0;
  v18 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v17 error:v34];
  v19 = *v34;
  if (v19)
  {
    v20 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __72___CDSpotlightEventIndexer__beginIndexingFromLatestSpotlightClientState__block_invoke_cold_2();
    }
  }

  if (!v18)
  {
LABEL_18:
    v18 = [_CDEventIndexerBookmark baseBookmarkWithVersion:v14];
  }

  v21 = [*v11 context];
  [(_DKPredictionTimeline *)v21 setStartDate:v18];

  v22 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = &stru_1F05B9908;
    if (v17 && [v17 length])
    {
      v23 = @"non-";
    }

    v24 = [*v11 context];
    v25 = v24;
    if (v24)
    {
      v26 = *(v24 + 8);
    }

    else
    {
      v26 = 0;
    }

    *v34 = 138412546;
    *&v34[4] = v23;
    v35 = 2112;
    v36 = v26;
    _os_log_impl(&dword_191750000, v22, OS_LOG_TYPE_INFO, "[Spotlight Indexer] Success fetching %@nil client state from spotlight, resulting bookmark: %@", v34, 0x16u);
  }

  v27 = [*v11 context];
  v28 = [(_CDEventIndexerContext *)v27 isBookmarkValid];

  if (v28)
  {
    [(_CDSpotlightEventIndexer *)*v11 indexDeletionsAsBatch];
    goto LABEL_6;
  }

  v29 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    __72___CDSpotlightEventIndexer__beginIndexingFromLatestSpotlightClientState__block_invoke_cold_3(v11, v29);
  }

  v30 = [*v11 context];
  v31 = [(_CDEventIndexerContext *)v30 isBookmarkValidInRecoverableThreshold];

  v32 = +[_CDLogging knowledgeChannel];
  v33 = v32;
  if (v31)
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      __72___CDSpotlightEventIndexer__beginIndexingFromLatestSpotlightClientState__block_invoke_cold_5(v33);
    }

    v8 = *v11;
    goto LABEL_5;
  }

  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    __72___CDSpotlightEventIndexer__beginIndexingFromLatestSpotlightClientState__block_invoke_cold_4(v33);
  }

  [(_CDSpotlightEventIndexer *)*v11 resetIndex];
LABEL_6:

  v9 = *MEMORY[0x1E69E9840];
}

void __49___CDSpotlightEventIndexer_indexDeletionsAsBatch__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49___CDSpotlightEventIndexer_indexDeletionsAsBatch__block_invoke_cold_1();
    }
  }

  else if ((__49___CDSpotlightEventIndexer_indexDeletionsAsBatch__block_invoke_cold_2(a1) & 1) == 0)
  {
    goto LABEL_6;
  }

  [(_CDSpotlightEventIndexer *)*(a1 + 32) finishIndexing];
LABEL_6:
}

void __49___CDSpotlightEventIndexer_indexAdditionsAsBatch__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49___CDSpotlightEventIndexer_indexAdditionsAsBatch__block_invoke_cold_1();
    }
  }

  else if ((__49___CDSpotlightEventIndexer_indexAdditionsAsBatch__block_invoke_cold_2(a1) & 1) == 0)
  {
    goto LABEL_6;
  }

  [(_CDSpotlightEventIndexer *)*(a1 + 32) finishIndexing];
LABEL_6:
}

void __38___CDSpotlightEventIndexer_resetIndex__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v6 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v3;
      OUTLINED_FUNCTION_10(&dword_191750000, v6, v7, "[Spotlight Indexer] Spotlight event indexer failed to reset index: %@", &v12);
    }
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) context];
    [(_DKPredictionTimeline *)v5 setStartDate:v4];
  }

  v8 = [*(a1 + 32) context];
  v9 = [(_CDEventIndexerContext *)v8 isBookmarkValid];

  v10 = *(a1 + 32);
  if (v9)
  {
    [(_CDSpotlightEventIndexer *)v10 indexDeletionsAsBatch];
  }

  else
  {
    [(_CDSpotlightEventIndexer *)v10 finishIndexing];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __72___CDSpotlightEventIndexer__beginIndexingFromLatestSpotlightClientState__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "[Spotlight Indexer] Error fetching client state from spotlight: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __72___CDSpotlightEventIndexer__beginIndexingFromLatestSpotlightClientState__block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "[Spotlight Indexer] Error unarchiving event indexer bookmark: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __72___CDSpotlightEventIndexer__beginIndexingFromLatestSpotlightClientState__block_invoke_cold_3(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [*a1 context];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10(&dword_191750000, a2, v4, "[Spotlight Indexer] Bookmark is invalid: %@", v6);

  v5 = *MEMORY[0x1E69E9840];
}

void __49___CDSpotlightEventIndexer_indexDeletionsAsBatch__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "[Spotlight Indexer] Spotlight event indexer failed to index batch deletions: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __49___CDSpotlightEventIndexer_indexDeletionsAsBatch__block_invoke_cold_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) context];
  [(_DKPredictionTimeline *)v3 setStartDate:v2];

  v4 = [*(a1 + 32) context];
  if (!v4)
  {
    return 1;
  }

  v5 = v4[3];

  if (!v5)
  {
    return 1;
  }

  [(_CDSpotlightEventIndexer *)*(a1 + 32) indexAdditionsAsBatch];
  return 0;
}

void __49___CDSpotlightEventIndexer_indexAdditionsAsBatch__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "[Spotlight Indexer] Spotlight event indexer failed to index batch additions: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __49___CDSpotlightEventIndexer_indexAdditionsAsBatch__block_invoke_cold_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) context];
  [(_DKPredictionTimeline *)v3 setStartDate:v2];

  if (!*(a1 + 48))
  {
    return 1;
  }

  [(_CDSpotlightEventIndexer *)*(a1 + 32) indexAdditionsAsBatch];
  return 0;
}

@end