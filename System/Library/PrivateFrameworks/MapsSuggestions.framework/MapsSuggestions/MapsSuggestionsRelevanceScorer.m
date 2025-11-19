@interface MapsSuggestionsRelevanceScorer
- (MapsSuggestionsRelevanceScorer)init;
- (id)_confidenceForData:(void *)a1;
- (id)_postProcessConfidences:(id)a1;
- (id)confidenceForContacts:(id)a3 addresses:(id)a4;
- (id)confidenceForMapItems:(id)a3;
- (uint64_t)_preProcess:(uint64_t)a1;
- (void)_confidenceForData:(uint64_t)a3 scorerIndex:(void *)a4 group:;
- (void)_processScorerConfidences:(void *)a3 data:(void *)a4 error:;
- (void)preLoadAllScorers;
@end

@implementation MapsSuggestionsRelevanceScorer

- (MapsSuggestionsRelevanceScorer)init
{
  v8.receiver = self;
  v8.super_class = MapsSuggestionsRelevanceScorer;
  v2 = [(MapsSuggestionsRelevanceScorer *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    scorers = v2->_scorers;
    v2->_scorers = v3;

    v5 = [MEMORY[0x1E695DF00] distantPast];
    scorersUpdatedAt = v2->_scorersUpdatedAt;
    v2->_scorersUpdatedAt = v5;
  }

  return v2;
}

- (id)confidenceForMapItems:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 count];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v5];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v19 + 1) + 8 * i) name];
          if (v14)
          {
            [v6 addObject:v14];
          }

          else
          {
            v15 = [MEMORY[0x1E695DFB0] null];
            [v6 addObject:v15];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v11);
    }

    v16 = [_RelevanceScorerData alloc];
    v17 = [v9 mutableCopy];
    v18 = [(_RelevanceScorerData *)v16 initWithNames:v6 addresses:0 mapItems:v17];

    v7 = [(MapsSuggestionsRelevanceScorer *)self _confidenceForData:v18];
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "No mapItems to calculate score for", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)confidenceForContacts:(id)a3 addresses:(id)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v8 != [v7 count])
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v52 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRelevanceScorer.m";
      v53 = 1024;
      v54 = 105;
      v55 = 2082;
      v56 = "[MapsSuggestionsRelevanceScorer confidenceForContacts:addresses:]";
      v57 = 2082;
      v58 = "count != [addresses count]";
      v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Information mismatch!! No. of contacts is different from no. of addresses passed.";
      v11 = v9;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 38;
      goto LABEL_7;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  if (!v8)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v10 = "No contacts to calculate score for";
      v11 = v9;
      v12 = OS_LOG_TYPE_DEBUG;
      v13 = 2;
LABEL_7:
      _os_log_impl(&dword_1C5126000, v11, v12, v10, buf, v13);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v36 = self;
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
  v16 = [MEMORY[0x1E695DFB0] null];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v38 = v6;
  v17 = v6;
  v18 = [v17 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v46;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v46 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v45 + 1) + 8 * i) givenName];
        v23 = v22;
        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = v16;
        }

        [v9 addObject:v24];
      }

      v19 = [v17 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v19);
  }

  v25 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v7];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v37 = v7;
  obj = v7;
  v26 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = 0;
    v29 = *v42;
    v39 = *MEMORY[0x1E695CBD8];
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v42 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v41 + 1) + 8 * j);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || ([v31 label], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "isEqualToString:", v39), v32, v33))
        {
          [v25 setObject:v16 atIndexedSubscript:v28];
          [v9 setObject:v16 atIndexedSubscript:v28];
        }

        else
        {
          v34 = [v31 value];
          [v25 setObject:v34 atIndexedSubscript:v28];
        }

        ++v28;
      }

      v27 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v27);
  }

  v35 = [[_RelevanceScorerData alloc] initWithNames:v9 addresses:v25 mapItems:0];
  v14 = [(MapsSuggestionsRelevanceScorer *)v36 _confidenceForData:v35];

  v7 = v37;
  v6 = v38;
LABEL_9:

  return v14;
}

- (void)preLoadAllScorers
{
  v21 = *MEMORY[0x1E69E9840];
  if (MapsSuggestionsLoggingIsVerbose())
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v19 = 136315138;
      v20 = "[MapsSuggestionsRelevanceScorer preLoadAllScorers]";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_DEBUG, "%s", &v19, 0xCu);
    }
  }

  v4 = MapsSuggestionsNow();
  [v4 timeIntervalSinceDate:self->_scorersUpdatedAt];
  v6 = v5;

  GEOConfigGetDouble();
  if (v6 < v7)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      v9 = "Ignoring preLoad";
      v10 = v8;
      v11 = OS_LOG_TYPE_INFO;
LABEL_14:
      _os_log_impl(&dword_1C5126000, v10, v11, v9, &v19, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v12 = [(NSMutableArray *)self->_scorers count];
  if (!v12)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v19) = 0;
      v9 = "No scorers to fetch data from";
      v10 = v8;
      v11 = OS_LOG_TYPE_DEBUG;
      goto LABEL_14;
    }

LABEL_15:

    return;
  }

  v13 = v12;
  v14 = MapsSuggestionsNow();
  scorersUpdatedAt = self->_scorersUpdatedAt;
  self->_scorersUpdatedAt = v14;

  v16 = 0;
  do
  {
    v17 = v16 + 1;
    v18 = [(NSMutableArray *)self->_scorers objectAtIndexedSubscript:?];
    [v18 preLoad];

    v16 = v17;
  }

  while (v13 != v17);
}

- (uint64_t)_preProcess:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4 && [v4 count])
    {
      v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v6 = [MEMORY[0x1E695DFB0] null];
      if ([v3 inputCount])
      {
        v7 = 0;
        do
        {
          v8 = [v3 finalRelevanceScores];
          objc_sync_enter(v8);
          v9 = [v3 finalRelevanceScores];
          [v9 addObject:v6];

          objc_sync_exit(v8);
          v10 = [v3 names];
          v11 = [v10 objectAtIndexedSubscript:v7];
          v12 = [v11 isEqual:v6];

          if (v12 && (([v3 addresses], (v13 = objc_claimAutoreleasedReturnValue()) == 0) || (v14 = v13, objc_msgSend(v3, "addresses"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "objectAtIndexedSubscript:", v7), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqual:", v6), v16, v15, v14, v17)) && ((objc_msgSend(v3, "mapItems"), (v18 = objc_claimAutoreleasedReturnValue()) == 0) || (v19 = v18, objc_msgSend(v3, "mapItems"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "objectAtIndexedSubscript:", v7), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqual:", v6), v21, v20, v19, v22)))
          {
            [v5 addIndex:v7];
          }

          else
          {
            v23 = [v3 indexMapping];
            v24 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:v7];
            [v23 addObject:v24];
          }

          ++v7;
        }

        while (v7 < [v3 inputCount]);
      }

      [(MapsSuggestionsRelevanceScorer *)v3 _preProcess:v5, v6, &v26];
      a1 = v26;
    }

    else
    {
      [MapsSuggestionsRelevanceScorer _preProcess:];
      a1 = 0;
    }
  }

  return a1;
}

- (id)_postProcessConfidences:(id)a1
{
  v35 = *MEMORY[0x1E69E9840];
  v25 = a2;
  if (a1)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
    v23 = [[MapsSuggestionsRelevanceScore alloc] initWithConfidence:MapsSuggestionsConfidenceDontKnow()];
    obj = [v25 finalRelevanceScores];
    objc_sync_enter(obj);
    for (i = 0; i < [v25 inputCount]; ++i)
    {
      v4 = [v25 finalRelevanceScores];
      v5 = [v4 objectAtIndexedSubscript:i];

      if (v24 == v5)
      {
        v6 = [v25 finalRelevanceScores];
        [v6 setObject:v23 atIndexedSubscript:i];
      }
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = [v25 finalRelevanceScores];
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v8)
    {
      v9 = *v27;
      do
      {
        for (j = 0; j != v8; ++j)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v26 + 1) + 8 * j);
          if (MapsSuggestionsLoggingIsVerbose())
          {
            v12 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              [v11 confidence];
              v14 = v13;
              v15 = [v11 lastInteractionTime];
              *buf = 134218242;
              *&buf[4] = v14;
              v32 = 2112;
              v33 = v15;
              _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_DEBUG, "finalConfidence: %f, Time: %@", buf, 0x16u);
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v8);
    }

    v16 = [v25 finalRelevanceScores];
    v17 = [v16 count];
    v18 = v17 == [v25 inputCount];

    if (v18)
    {
      v19 = [v25 finalRelevanceScores];
      a1 = [v19 copy];
    }

    else
    {
      v20 = GEOFindOrCreateLog();
      [(MapsSuggestionsRelevanceScorer *)v20 _postProcessConfidences:buf];
      v19 = v30;
      a1 = *buf;
    }

    objc_sync_exit(obj);
  }

  return a1;
}

- (void)_confidenceForData:(uint64_t)a3 scorerIndex:(void *)a4 group:
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    if ([a1[1] count] != a3)
    {
      v9 = [v7 names];
      v10 = [v9 count];

      if (v10)
      {
        v11 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = [a1[1] objectAtIndexedSubscript:a3];
          *buf = 138412290;
          v30 = v12;
          _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_DEBUG, "Processing scorer %@", buf, 0xCu);
        }

        dispatch_group_enter(v8);
        objc_initWeak(buf, a1);
        v24 = [a1[1] objectAtIndexedSubscript:a3];
        v13 = [v7 names];
        v23 = [v13 copy];
        v14 = [v7 addresses];
        v15 = [v14 copy];
        v16 = [v7 mapItems];
        v17 = [v16 copy];
        v22 = v13;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __71__MapsSuggestionsRelevanceScorer__confidenceForData_scorerIndex_group___block_invoke;
        v25[3] = &unk_1E81F84D0;
        objc_copyWeak(v28, buf);
        v18 = v7;
        v26 = v18;
        v21 = a3 + 1;
        v28[1] = (a3 + 1);
        v19 = v8;
        v27 = v19;
        v20 = [v24 relevanceScoreForNames:v23 addresses:v15 mapItems:v17 completion:v25];

        if ((v20 & 1) == 0)
        {
          [(MapsSuggestionsRelevanceScorer *)a1 _confidenceForData:v18 scorerIndex:v21 group:v19];
          dispatch_group_leave(v19);
        }

        objc_destroyWeak(v28);
        objc_destroyWeak(buf);
      }
    }
  }
}

void __71__MapsSuggestionsRelevanceScorer__confidenceForData_scorerIndex_group___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [(MapsSuggestionsRelevanceScorer *)WeakRetained _processScorerConfidences:v5 data:*(a1 + 32) error:v6];
    [(MapsSuggestionsRelevanceScorer *)v8 _confidenceForData:*(a1 + 56) scorerIndex:*(a1 + 40) group:?];
    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446722;
      v11 = "MapsSuggestionsRelevanceScorer.m";
      v12 = 1026;
      v13 = 208;
      v14 = 2082;
      v15 = "[MapsSuggestionsRelevanceScorer _confidenceForData:scorerIndex:group:]_block_invoke";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v10, 0x1Cu);
    }
  }
}

- (void)_processScorerConfidences:(void *)a3 data:(void *)a4 error:
{
  v74 = *MEMORY[0x1E69E9840];
  v61 = a2;
  v63 = a3;
  v7 = a4;
  if (a1)
  {
    v60 = v7;
    if (v7)
    {
      [MapsSuggestionsRelevanceScorer _processScorerConfidences:v7 data:buf error:?];
      v8 = *buf;
LABEL_44:

      v7 = v60;
      goto LABEL_45;
    }

    if (MapsSuggestionsLoggingIsVerbose())
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = @"Scorer confidence is: ";
        _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = v61;
    v10 = [obj countByEnumeratingWithState:&v66 objects:v73 count:16];
    if (v10)
    {
      v11 = *v67;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v67 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v66 + 1) + 8 * i);
          if (MapsSuggestionsLoggingIsVerbose())
          {
            v14 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              [v13 confidence];
              v16 = v15;
              v17 = [v13 lastInteractionTime];
              *buf = 134218242;
              *&buf[4] = v16;
              v71 = 2112;
              v72 = v17;
              _os_log_impl(&dword_1C5126000, v14, OS_LOG_TYPE_DEBUG, "Confidence: %f, Time: %@", buf, 0x16u);
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v66 objects:v73 count:16];
      }

      while (v10);
    }

    v7 = 0;
    if (obj)
    {
      v64 = [obj count];
      v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v64];
      v59 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v64];
      v58 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v64];
      v62 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v64];
      if (v64)
      {
        v19 = 0;
        *&v18 = 134217984;
        v57 = v18;
        do
        {
          v20 = [obj objectAtIndexedSubscript:{v19, v57}];
          [v20 confidence];
          if (v21 == MapsSuggestionsConfidenceDefinitelyTrue())
          {
            v39 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              *buf = v57;
              *&buf[4] = v19;
              _os_log_impl(&dword_1C5126000, v39, OS_LOG_TYPE_DEBUG, "Scorer returned high confidence for %lu", buf, 0xCu);
            }

            v37 = [v63 finalRelevanceScores];
            objc_sync_enter(v37);
            v40 = [v63 finalRelevanceScores];
            v41 = [v63 indexMapping];
            v42 = [v41 objectAtIndexedSubscript:v19];
            v43 = [v42 unsignedIntegerValue];
            v44 = [obj objectAtIndexedSubscript:v19];
            [v40 replaceObjectAtIndex:v43 withObject:v44];

            objc_sync_exit(v37);
          }

          else
          {
            v22 = [v63 names];
            if (v22)
            {
              v23 = [v63 names];
              v24 = [v23 count] == 0;

              if (!v24)
              {
                v25 = [v63 names];
                v26 = [v25 objectAtIndexedSubscript:v19];
                [v8 addObject:v26];
              }
            }

            v27 = [v63 addresses];
            if (v27)
            {
              v28 = [v63 addresses];
              v29 = [v28 count] == 0;

              if (!v29)
              {
                v30 = [v63 addresses];
                v31 = [v30 objectAtIndexedSubscript:v19];
                [v59 addObject:v31];
              }
            }

            v32 = [v63 mapItems];
            if (v32)
            {
              v33 = [v63 mapItems];
              v34 = [v33 count] == 0;

              if (!v34)
              {
                v35 = [v63 mapItems];
                v36 = [v35 objectAtIndexedSubscript:v19];
                [v58 addObject:v36];
              }
            }

            v37 = [v63 indexMapping];
            v38 = [v37 objectAtIndexedSubscript:v19];
            [v62 addObject:v38];
          }

          ++v19;
        }

        while (v64 != v19);
      }

      v45 = [v63 names];
      v46 = v45 == 0;

      if (!v46)
      {
        v47 = [v63 names];
        [v47 removeAllObjects];

        v48 = [v63 names];
        [v48 addObjectsFromArray:v8];
      }

      v49 = [v63 addresses];
      v50 = v49 == 0;

      if (!v50)
      {
        v51 = [v63 addresses];
        [v51 removeAllObjects];

        v52 = [v63 addresses];
        [v52 addObjectsFromArray:v59];
      }

      v53 = [v63 mapItems];
      v54 = v53 == 0;

      if (!v54)
      {
        v55 = [v63 mapItems];
        [v55 removeAllObjects];

        v56 = [v63 mapItems];
        [v56 addObjectsFromArray:v58];
      }

      [v63 setIndexMapping:v62];

      goto LABEL_44;
    }
  }

LABEL_45:
}

- (id)_confidenceForData:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 names];
    [v4 setInputCount:{objc_msgSend(v5, "count")}];

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v4 setFinalRelevanceScores:v6];

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v4 setIndexMapping:v7];

    v8 = OUTLINED_FUNCTION_0_10();
    if (([(MapsSuggestionsRelevanceScorer *)v8 _preProcess:v9]& 1) != 0)
    {
      v10 = dispatch_group_create();
      v11 = OUTLINED_FUNCTION_0_10();
      [(MapsSuggestionsRelevanceScorer *)v11 _confidenceForData:v12 scorerIndex:0 group:v10];
      dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
      v13 = OUTLINED_FUNCTION_0_10();
      a1 = [(MapsSuggestionsRelevanceScorer *)v13 _postProcessConfidences:v14];
    }

    else
    {
      v15 = OUTLINED_FUNCTION_0_10();
      a1 = [(MapsSuggestionsRelevanceScorer *)v15 _postProcessConfidences:v16];
    }
  }

  return a1;
}

- (void)_preProcess:(void *)a3 .cold.1(void *a1, void *a2, void *a3, BOOL *a4)
{
  v9 = [a1 names];
  [v9 removeObjectsAtIndexes:a2];

  v10 = [a1 addresses];
  [v10 removeObjectsAtIndexes:a2];

  v11 = [a1 mapItems];
  [v11 removeObjectsAtIndexes:a2];

  v12 = [a1 names];
  if (!v12 || ([a1 names], v4 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v4, "count")))
  {
    v14 = [a1 addresses];
    if (v14 && ([a1 addresses], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "count")))
    {
      v13 = 0;
    }

    else
    {
      v15 = [a1 mapItems];
      if (v15)
      {
        v16 = v15;
        v17 = [a1 mapItems];
        v13 = [v17 count] == 0;

        if (!v14)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v13 = 1;
        if (!v14)
        {
LABEL_10:
          if (!v12)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }
      }
    }

    goto LABEL_10;
  }

  v13 = 0;
LABEL_11:

LABEL_12:
  *a4 = !v13;
}

- (void)_preProcess:.cold.2()
{
  v0 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C5126000, v0, OS_LOG_TYPE_ERROR, "No _scorers added.", v1, 2u);
  }
}

- (void)_postProcessConfidences:(void *)a3 .cold.1(NSObject *a1, NSObject **a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v6 = 136446978;
    v7 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRelevanceScorer.m";
    v8 = 1024;
    v9 = 356;
    v10 = 2082;
    v11 = "[MapsSuggestionsRelevanceScorer _postProcessConfidences:]";
    v12 = 2082;
    v13 = "[data.finalRelevanceScores count] != data.inputCount";
    _os_log_impl(&dword_1C5126000, a1, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. ERROR! Mismatch in input and finalRelevanceScores count. Returning nil", &v6, 0x26u);
  }

  *a3 = 0;
  *a2 = a1;
}

- (void)_processScorerConfidences:(uint64_t)a1 data:(NSObject *)a2 error:.cold.1(uint64_t a1, NSObject **a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = a1;
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "Scorer returned error %@", &v5, 0xCu);
  }

  *a2 = v4;
}

@end