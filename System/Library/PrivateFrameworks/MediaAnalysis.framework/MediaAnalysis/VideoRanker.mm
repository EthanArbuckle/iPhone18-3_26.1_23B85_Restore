@interface VideoRanker
- (VideoRanker)initWithCorpus:(id)a3;
- (id)rankingScores;
- (int)fit;
- (int)termAndDocumentFrequencies;
@end

@implementation VideoRanker

- (VideoRanker)initWithCorpus:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 count])
  {
    v17.receiver = self;
    v17.super_class = VideoRanker;
    v7 = [(VideoRanker *)&v17 init];
    v8 = v7;
    if (v7 && (objc_storeStrong(&v7->_corpus, a3), -[NSDictionary allKeys](v8->_corpus, "allKeys"), v9 = objc_claimAutoreleasedReturnValue(), v8->_corpusSize = [v9 count], v9, v10 = objc_alloc_init(MEMORY[0x1E695DF90]), tfs = v8->_tfs, v8->_tfs = v10, tfs, v12 = objc_alloc_init(MEMORY[0x1E695DF90]), maxSegments = v8->_maxSegments, v8->_maxSegments = v12, maxSegments, *&v8->_b = 0x3FC000003F400000, v8->_topK = 20, !-[VideoRanker fit](v8, "fit")))
    {
      if ([(VideoRanker *)v8 termAndDocumentFrequencies])
      {
        v14 = 0;
      }

      else
      {
        v14 = v8;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
    v8 = self;
  }

  return v15;
}

- (int)fit
{
  v56 = *MEMORY[0x1E69E9840];
  v34 = [MEMORY[0x1E695DF70] array];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [(NSDictionary *)self->_corpus allKeys];
  v2 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (v2)
  {
    v37 = 0;
    v33 = *v45;
    while (2)
    {
      v32 = v2;
      for (i = 0; i != v32; ++i)
      {
        if (*v45 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v44 + 1) + 8 * i);
        v38 = [(NSDictionary *)self->_corpus objectForKeyedSubscript:v4];
        if (![v38 count])
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v49 = v4;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "No segments found for %@", buf, 0xCu);
          }

          v17 = -23803;
          goto LABEL_25;
        }

        v35 = [v38 count];
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v5 = v38;
        v6 = [v5 countByEnumeratingWithState:&v40 objects:v54 count:16];
        v36 = v4;
        v7 = 0;
        if (v6)
        {
          v8 = *v41;
          v9 = &unk_1F49BB298;
          do
          {
            for (j = 0; j != v6; ++j)
            {
              if (*v41 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v11 = *(*(&v40 + 1) + 8 * j);
              v12 = [v11 objectForKeyedSubscript:@"quality"];
              v13 = v12 < v9;

              if (!v13)
              {
                v14 = [v11 objectForKeyedSubscript:@"quality"];

                v15 = v11;
                v7 = v15;
                v9 = v14;
              }
            }

            v6 = [v5 countByEnumeratingWithState:&v40 objects:v54 count:16];
          }

          while (v6);
        }

        else
        {
          v9 = &unk_1F49BB298;
        }

        [v34 addObject:v9];
        [(NSMutableDictionary *)self->_maxSegments setObject:v7 forKey:v36];

        v37 += v35;
      }

      v2 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }

    v16 = v37;
  }

  else
  {
    v16 = 0.0;
  }

  self->_avgDocumentLength = v16 / self->_corpusSize;
  [v34 sortUsingComparator:&__block_literal_global_90];
  topK = self->_topK;
  v20 = [v34 count];
  if (topK >= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = topK;
  }

  self->_topK = v21;
  v22 = [v34 objectAtIndexedSubscript:v21];
  [v22 floatValue];
  self->_similarityThreshold = v23;

  v18 = v34;
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v24 = [MEMORY[0x1E696AD98] numberWithInt:self->_topK];
    *&v25 = self->_similarityThreshold;
    v26 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
    v27 = MEMORY[0x1E696AD98];
    v28 = [(NSMutableDictionary *)self->_maxSegments allKeys];
    v29 = [v27 numberWithUnsignedInteger:{objc_msgSend(v28, "count")}];
    *buf = 138412802;
    v49 = v24;
    v50 = 2112;
    v51 = v26;
    v52 = 2112;
    v53 = v29;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "BM25: fit top_k %@, with threshold %@, maxSeg count %@", buf, 0x20u);

    v17 = 0;
LABEL_25:
    v18 = v34;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (int)termAndDocumentFrequencies
{
  v43 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [(NSDictionary *)self->_corpus allKeys];
  v3 = [obj countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v3)
  {
    v25 = *v32;
    while (2)
    {
      v4 = 0;
      v24 = v3;
      do
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v31 + 1) + 8 * v4);
        v6 = [(NSDictionary *)self->_corpus objectForKeyedSubscript:v5];
        if (![v6 count])
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v36 = v5;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "No segments found for %@", buf, 0xCu);
          }

          return -23803;
        }

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v27 objects:v41 count:16];
        v26 = v5;
        v9 = 0;
        if (v8)
        {
          v10 = *v28;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v28 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = [*(*(&v27 + 1) + 8 * i) objectForKeyedSubscript:@"quality"];
              [v12 floatValue];
              v14 = v13 > self->_similarityThreshold;

              v9 += v14;
            }

            v8 = [v7 countByEnumeratingWithState:&v27 objects:v41 count:16];
          }

          while (v8);
        }

        tfs = self->_tfs;
        v16 = MEMORY[0x1E696AD98];
        *&v17 = v9 / [v7 count];
        v18 = [v16 numberWithFloat:v17];
        [(NSMutableDictionary *)tfs setObject:v18 forKey:v26];

        self->_df += v9;
        ++v4;
      }

      while (v4 != v24);
      v3 = [obj countByEnumeratingWithState:&v31 objects:v42 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  self->_idf = log(((self->_corpusSize - self->_df) + 0.5) / (self->_df + 0.5) + 1.0);
  if (MediaAnalysisLogLevel() >= 7)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    v20 = [MEMORY[0x1E696AD98] numberWithInt:self->_idf];
    v21 = [MEMORY[0x1E696AD98] numberWithInt:self->_df];
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableDictionary count](self->_tfs, "count")}];
    *buf = 138412802;
    v36 = v20;
    v37 = 2112;
    v38 = v21;
    v39 = 2112;
    v40 = v22;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "BM25: term And DocumentFrequencies _idf %@, _df %@, _tfs count %@", buf, 0x20u);
  }

  return 0;
}

- (id)rankingScores
{
  v32 = *MEMORY[0x1E69E9840];
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(NSDictionary *)self->_corpus allKeys];
  v3 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v3)
  {
    v23 = *v26;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v25 + 1) + 8 * i);
        v6 = [(NSDictionary *)self->_corpus objectForKeyedSubscript:v5];
        v7 = [v6 count];

        v8 = [(NSMutableDictionary *)self->_tfs objectForKeyedSubscript:v5];
        [v8 floatValue];
        v10 = v9;

        idf = self->_idf;
        b = self->_b;
        k1 = self->_k1;
        avgDocumentLength = self->_avgDocumentLength;
        v15 = [(NSMutableDictionary *)self->_maxSegments objectForKeyedSubscript:v5];
        LOBYTE(v8) = v15 == 0;

        if (v8)
        {
          v18 = &unk_1F49BB778;
        }

        else
        {
          v17 = [(NSMutableDictionary *)self->_maxSegments objectForKeyedSubscript:v5];
          v18 = [v17 objectForKeyedSubscript:@"quality"];
        }

        *&v16 = ((k1 + 1.0) * (idf * v10)) / (v10 + (k1 * ((1.0 - b) + ((b * v7) / avgDocumentLength))));
        v29[0] = @"BM25Rank";
        v19 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
        v29[1] = @"SimilarityScore";
        v30[0] = v19;
        v30[1] = v18;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];

        [v24 setObject:v20 forKey:v5];
      }

      v3 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v3);
  }

  return v24;
}

@end