@interface EDLocalSearchInfoCollector
- (BOOL)_combinedHasQueryEmbedding;
- (EDLocalSearchInfoCollector)init;
- (id)localSearchInfoForConversationIDs:(id)a3;
- (id)localSearchInfoForMessageObjectIDs:(id)a3;
- (int)_combinedQueryStatus;
- (void)processRankingSignalsBySearchableItemID:(id)a3 forMessages:(id)a4;
@end

@implementation EDLocalSearchInfoCollector

- (EDLocalSearchInfoCollector)init
{
  v8.receiver = self;
  v8.super_class = EDLocalSearchInfoCollector;
  v2 = [(EDLocalSearchInfoCollector *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    allRankingsByObjectID = v2->_allRankingsByObjectID;
    v2->_allRankingsByObjectID = v3;

    v5 = objc_opt_new();
    rankingObjectIDsByConversation = v2->_rankingObjectIDsByConversation;
    v2->_rankingObjectIDsByConversation = v5;
  }

  return v2;
}

- (void)processRankingSignalsBySearchableItemID:(id)a3 forMessages:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__EDLocalSearchInfoCollector_processRankingSignalsBySearchableItemID_forMessages___block_invoke;
  v8[3] = &unk_1E8253160;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a4 enumerateObjectsUsingBlock:v8];
}

void __82__EDLocalSearchInfoCollector_processRankingSignalsBySearchableItemID_forMessages___block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = [v19 objectID];
  v4 = [*(a1 + 32) allRankingsByObjectID];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (!v5)
  {
    v6 = [v19 searchableMessageID];
    v7 = *(a1 + 40);
    v8 = [v6 stringValue];
    v9 = [v7 objectForKeyedSubscript:v8];

    v10 = [*(a1 + 32) allRankingsByObjectID];
    [v10 ef_setOptionalObject:v9 forKey:v3];

    if ([*(a1 + 32) hasKeywordResults])
    {
      v11 = 1;
    }

    else
    {
      v11 = [v9 isSyntacticMatch];
    }

    [*(a1 + 32) setHasKeywordResults:v11];
    if ([*(a1 + 32) hasEmbeddingResults])
    {
      v12 = 1;
    }

    else
    {
      v12 = [v9 isSemanticMatch];
    }

    [*(a1 + 32) setHasEmbeddingResults:v12];
  }

  v13 = [*(a1 + 32) rankingObjectIDsByConversation];
  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v19, "conversationID")}];
  v15 = [v13 objectForKeyedSubscript:v14];

  if (v15)
  {
    [v15 addObject:v3];
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v3, 0}];
    v17 = [*(a1 + 32) rankingObjectIDsByConversation];
    v18 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v19, "conversationID")}];
    [v17 setObject:v16 forKeyedSubscript:v18];
  }
}

- (id)localSearchInfoForMessageObjectIDs:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(EDLocalSearchInfoCollector *)self allRankingsByObjectID];
        v12 = [v11 objectForKeyedSubscript:v10];

        if (v12)
        {
          [v5 setObject:v12 forKeyedSubscript:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [objc_alloc(MEMORY[0x1E699ACF8]) initWithQueryStatus:-[EDLocalSearchInfoCollector _combinedQueryStatus](self hasQueryEmbedding:"_combinedQueryStatus") hasKeywordResults:-[EDLocalSearchInfoCollector _combinedHasQueryEmbedding](self hasEmbeddingResults:"_combinedHasQueryEmbedding") rankingSignalsByObjectID:{-[EDLocalSearchInfoCollector hasKeywordResults](self, "hasKeywordResults"), -[EDLocalSearchInfoCollector hasEmbeddingResults](self, "hasEmbeddingResults"), v5}];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)localSearchInfoForConversationIDs:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(EDLocalSearchInfoCollector *)self rankingObjectIDsByConversation];
        v12 = [v11 objectForKeyedSubscript:v10];

        if (v12)
        {
          [v5 addObjectsFromArray:v12];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [(EDLocalSearchInfoCollector *)self localSearchInfoForMessageObjectIDs:v5];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (int)_combinedQueryStatus
{
  result = [(EDLocalSearchInfoCollector *)self topHitsQueryStatus];
  if (result != 3)
  {
    result = [(EDLocalSearchInfoCollector *)self liveSearchQueryStatus];
    if (result != 3)
    {
      if ([(EDLocalSearchInfoCollector *)self topHitsQueryStatus]!= 1)
      {
        return 0;
      }

      result = [(EDLocalSearchInfoCollector *)self liveSearchQueryStatus];
      if (result != 1)
      {
        return 0;
      }
    }
  }

  return result;
}

- (BOOL)_combinedHasQueryEmbedding
{
  v3 = [(EDLocalSearchInfoCollector *)self hasTopHitsQueryEmbedding];
  if (v3)
  {

    LOBYTE(v3) = [(EDLocalSearchInfoCollector *)self hasLiveSearchQueryEmbedding];
  }

  return v3;
}

@end