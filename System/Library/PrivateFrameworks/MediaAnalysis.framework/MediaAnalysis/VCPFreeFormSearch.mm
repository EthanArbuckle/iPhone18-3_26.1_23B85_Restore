@interface VCPFreeFormSearch
+ (float)getHighSimilarityThreshold;
+ (float)getMaxSimilarityDiffFor1UP;
+ (float)getMinSimilarity;
+ (float)getMinSimilarityHighRecall;
- (VCPFreeFormSearch)init;
- (id)searchForQuery:(id)query matchingScoreOnly:(BOOL)only topK:(int)k;
- (int)loadEmbeddings:(id)embeddings;
- (void)dealloc;
- (void)reset;
@end

@implementation VCPFreeFormSearch

+ (float)getMinSimilarity
{
  if (+[VCPVideoTransformerBackbone revision]== 6)
  {
    +[VCPFreeFormSearch getMinSimilarity]::minSimilarity = 1053273620;
    return 0.39;
  }

  else if (+[VCPVideoTransformerBackbone revision]== 7)
  {
    +[VCPFreeFormSearch getMinSimilarity]::minSimilarity = 1056964608;
    return 0.5;
  }

  else
  {
    return *&+[VCPFreeFormSearch getMinSimilarity]::minSimilarity;
  }
}

+ (float)getMinSimilarityHighRecall
{
  if (+[VCPVideoTransformerBackbone revision]== 6)
  {
    +[VCPFreeFormSearch getMinSimilarityHighRecall]::minSimilarity = 1049582633;
    return 0.28;
  }

  else if (+[VCPVideoTransformerBackbone revision]== 7)
  {
    +[VCPFreeFormSearch getMinSimilarityHighRecall]::minSimilarity = 1052602532;
    return 0.37;
  }

  else
  {
    return *&+[VCPFreeFormSearch getMinSimilarityHighRecall]::minSimilarity;
  }
}

+ (float)getMaxSimilarityDiffFor1UP
{
  if (+[VCPVideoTransformerBackbone revision]!= 6)
  {
    +[VCPVideoTransformerBackbone revision];
  }

  return 0.2;
}

+ (float)getHighSimilarityThreshold
{
  if (+[VCPVideoTransformerBackbone revision]== 6)
  {
    +[VCPFreeFormSearch getHighSimilarityThreshold]::threshold = 1058642330;
    return 0.6;
  }

  else if (+[VCPVideoTransformerBackbone revision]== 7)
  {
    +[VCPFreeFormSearch getHighSimilarityThreshold]::threshold = 1060487823;
    return 0.71;
  }

  else
  {
    return *&+[VCPFreeFormSearch getHighSimilarityThreshold]::threshold;
  }
}

- (VCPFreeFormSearch)init
{
  v14.receiver = self;
  v14.super_class = VCPFreeFormSearch;
  v2 = [(VCPFreeFormSearch *)&v14 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    fileNames = v2->_fileNames;
    v2->_fileNames = array;

    array2 = [MEMORY[0x1E695DF70] array];
    timeRanges = v2->_timeRanges;
    v2->_timeRanges = array2;

    array3 = [MEMORY[0x1E695DF70] array];
    embeddings = v2->_embeddings;
    v2->_embeddings = array3;

    array4 = [MEMORY[0x1E695DF70] array];
    fileIndices = v2->_fileIndices;
    v2->_fileIndices = array4;

    v11 = +[MADTextEmbeddingThreshold createForEmbeddingVersion:](MADTextEmbeddingThreshold, "createForEmbeddingVersion:", +[VCPVideoTransformerBackbone embeddingVersion]);
    textEmbeddingThreshold = v2->_textEmbeddingThreshold;
    v2->_textEmbeddingThreshold = v11;

    v2->_embeddingDim = 512;
  }

  return v2;
}

- (int)loadEmbeddings:(id)embeddings
{
  v65 = *MEMORY[0x1E69E9840];
  embeddingsCopy = embeddings;
  [(VCPFreeFormSearch *)self reset];
  if (embeddingsCopy && [embeddingsCopy count])
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = [embeddingsCopy allKeys];
    v45 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
    if (v45)
    {
      v52 = 0;
      v46 = *v59;
      *&v4 = 138412802;
      v44 = v4;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v59 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v58 + 1) + 8 * i);
          [(NSMutableArray *)self->_fileNames addObject:v5, v44];
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v48 = v5;
          v51 = [embeddingsCopy objectForKeyedSubscript:v5];
          v6 = [v51 countByEnumeratingWithState:&v54 objects:v62 count:16];
          if (v6)
          {
            v7 = *v55;
            while (2)
            {
              for (j = 0; j != v6; ++j)
              {
                if (*v55 != v7)
                {
                  objc_enumerationMutation(v51);
                }

                v9 = *(*(&v54 + 1) + 8 * j);
                memset(&v53, 0, sizeof(v53));
                CMTimeRangeMakeFromDictionary(&v53, v9);
                v10 = [(__CFDictionary *)v9 objectForKeyedSubscript:@"attributes"];
                v11 = [v10 objectForKeyedSubscript:@"embeddings"];

                v12 = [(__CFDictionary *)v9 objectForKeyedSubscript:@"attributes"];
                v13 = [v12 objectForKeyedSubscript:@"embeddingVersion"];

                if (v13)
                {
                  v14 = +[VCPVideoTransformerBackbone embeddingVersion];
                  if (v14 != [v13 intValue])
                  {
                    goto LABEL_26;
                  }
                }

                else if (+[VCPVideoTransformerBackbone embeddingVersion]!= 2)
                {
LABEL_26:
                  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                  {
                    v19 = +[VCPVideoTransformerBackbone embeddingVersion];
                    intValue = [v13 intValue];
                    LODWORD(range.start.value) = v44;
                    *(&range.start.value + 4) = v48;
                    LOWORD(range.start.flags) = 1024;
                    *(&range.start.flags + 2) = v19;
                    WORD1(range.start.epoch) = 1024;
                    HIDWORD(range.start.epoch) = intValue;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Video embedding version mismatch skip. Expect %d, Got %d", &range, 0x18u);
                  }

                  goto LABEL_30;
                }

                if (self->_embeddingDim != [v11 length] >> 1)
                {
                  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(range.start.value) = 0;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Video embedding dimension doesn't match with requirement", &range, 2u);
                  }

                  v42 = -50;
                  goto LABEL_56;
                }

                if (v11)
                {
                  fileIndices = self->_fileIndices;
                  v16 = [MEMORY[0x1E696AD98] numberWithInt:v52];
                  [(NSMutableArray *)fileIndices addObject:v16];

                  timeRanges = self->_timeRanges;
                  range = v53;
                  v18 = CMTimeRangeCopyAsDictionary(&range, 0);
                  [(NSMutableArray *)timeRanges addObject:v18];

                  [(NSMutableArray *)self->_embeddings addObject:v11];
                }

                else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(range.start.value) = 138412290;
                  *(&range.start.value + 4) = v48;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Missing embedding for %@", &range, 0xCu);
                }
              }

              v6 = [v51 countByEnumeratingWithState:&v54 objects:v62 count:16];
              if (v6)
              {
                continue;
              }

              break;
            }
          }

LABEL_30:

          ++v52;
        }

        v45 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v45);
    }

    v21 = [(NSMutableArray *)self->_fileIndices count];
    self->_numVideos = v21;
    embeddingDim = self->_embeddingDim;
    if (embeddingDim * v21 < 0)
    {
      v23 = -1;
    }

    else
    {
      v23 = 4 * embeddingDim * v21;
    }

    v24 = operator new[](v23, MEMORY[0x1E69E5398]);
    self->_videoEmbedings = v24;
    if (!v24 || (embeddingDim < 0 ? (v25 = -1) : (v25 = 2 * embeddingDim), (v26 = operator new[](v25, MEMORY[0x1E69E5398])) == 0))
    {
      v42 = -108;
      goto LABEL_56;
    }

    v27 = v26;
    if (v21 >= 1)
    {
      v28 = 0;
      do
      {
        v29 = [(NSMutableArray *)self->_embeddings objectAtIndexedSubscript:v28];
        videoEmbedings = self->_videoEmbedings;
        v31 = self->_embeddingDim;
        [v29 getBytes:v27 length:2 * v31];
        v32 = self->_embeddingDim;
        if (v32 >= 1)
        {
          v33 = &videoEmbedings[v31 * v28];
          v34 = v27;
          do
          {
            v35 = *v34++;
            _H0 = v35;
            __asm { FCVT            S0, H0 }

            *v33++ = _S0;
            --v32;
          }

          while (v32);
        }

        ++v28;
      }

      while (v28 < self->_numVideos);
    }

    MEMORY[0x1CCA95C10](v27, 0x1000C80BDFB0063);
  }

  else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(range.start.value) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "No video embedding results", &range, 2u);
  }

  v42 = 0;
LABEL_56:

  return v42;
}

- (void)reset
{
  [(NSMutableArray *)self->_fileNames removeAllObjects];
  [(NSMutableArray *)self->_timeRanges removeAllObjects];
  [(NSMutableArray *)self->_embeddings removeAllObjects];
  [(NSMutableArray *)self->_fileIndices removeAllObjects];
  inputData = self->_inputData;
  if (inputData)
  {
    MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210);
    self->_inputData = 0;
  }

  videoEmbedings = self->_videoEmbedings;
  if (videoEmbedings)
  {
    MEMORY[0x1CCA95C10](videoEmbedings, 0x1000C8052888210);
    self->_videoEmbedings = 0;
  }

  self->_numVideos = 0;
}

- (void)dealloc
{
  inputData = self->_inputData;
  if (inputData)
  {
    MEMORY[0x1CCA95C10](inputData, 0x1000C8052888210);
  }

  videoEmbedings = self->_videoEmbedings;
  if (videoEmbedings)
  {
    MEMORY[0x1CCA95C10](videoEmbedings, 0x1000C8052888210);
  }

  v5.receiver = self;
  v5.super_class = VCPFreeFormSearch;
  [(VCPFreeFormSearch *)&v5 dealloc];
}

- (id)searchForQuery:(id)query matchingScoreOnly:(BOOL)only topK:(int)k
{
  v22[2] = *MEMORY[0x1E69E9840];
  queryCopy = query;
  selfCopy = self;
  if (self->_embeddingDim == [queryCopy length] >> 2)
  {
    v19 = 1065353216;
    v20[0] = 0;
    v18 = 0;
    if (self->_textEmbeddingThreshold)
    {
      v6 = MediaAnalysisConvertFloat32ToFloat16(queryCopy);
      v7 = objc_alloc(MEMORY[0x1E69AE300]);
      v8 = +[VCPVideoTransformerBackbone embeddingVersion];
      v22[0] = &unk_1F49BE4B8;
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "length") >> 1}];
      v22[1] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
      v11 = [v7 initWithVersion:v8 data:v6 type:1 shape:v10];

      v12 = [(MADTextEmbeddingThreshold *)selfCopy->_textEmbeddingThreshold processEmbedding:v11 bias:v20 scale:&v19 threshold:&v18];
      if (v12)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v12;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "MD4 Failed to get calibration bias/scale with Error %d", buf, 8u);
        }

        goto LABEL_11;
      }
    }

    +[VCPFreeFormSearch getMinSimilarity];
    [MEMORY[0x1E695DF90] dictionary];
    objc_claimAutoreleasedReturnValue();
    operator new[]();
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [queryCopy length];
    embeddingDim = self->_embeddingDim;
    *buf = 67109376;
    *&buf[4] = v13 >> 2;
    *&buf[8] = 1024;
    *&buf[10] = embeddingDim;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Query embedding dimension %d doesn't match with requirement %d", buf, 0xEu);
  }

LABEL_11:

  return 0;
}

@end