@interface VCPVideoEmbeddings
- (VCPVideoEmbeddings)initWithEmbeddingType:(int64_t)a3 version:(id)a4;
- (id)convertToFloat16:(id)a3;
- (id)getEmbeddingsForRange:(id *)a3 useFP16:(BOOL)a4;
- (id)videoEmbeddingsFp16;
- (int)addEmbeddings:(id)a3 startTime:(id *)a4 duration:(id *)a5;
- (void)dealloc;
@end

@implementation VCPVideoEmbeddings

- (VCPVideoEmbeddings)initWithEmbeddingType:(int64_t)a3 version:(id)a4
{
  v7 = a4;
  v16.receiver = self;
  v16.super_class = VCPVideoEmbeddings;
  v8 = [(VCPVideoEmbeddings *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_embeddingType = a3;
    v8->_embeddingSize = 0;
    v10 = [MEMORY[0x1E695DF70] array];
    videoEmbeddings = v9->_videoEmbeddings;
    v9->_videoEmbeddings = v10;

    v12 = [MEMORY[0x1E695DF70] array];
    summarizedEmbeddingIds = v9->_summarizedEmbeddingIds;
    v9->_summarizedEmbeddingIds = v12;

    v9->_averageEmbedding = 0;
    v9->_currentEmbedding = 0;
    objc_storeStrong(&v9->_version, a4);
    v14 = v9;
  }

  return v9;
}

- (int)addEmbeddings:(id)a3 startTime:(id *)a4 duration:(id *)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = v8;
  embeddingSize = self->_embeddingSize;
  if (!embeddingSize || embeddingSize == [v8 length] >> 2)
  {
    v11 = [v9 length];
    v12 = v11;
    self->_embeddingSize = v11 >> 2;
    if (self->_embeddingType == 2 && v11 >> 2 >= 0x7D1)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = self->_embeddingSize;
        LODWORD(buf.var0) = 67109376;
        HIDWORD(buf.var0) = v13;
        LOWORD(buf.var1) = 1024;
        *(&buf.var1 + 2) = 2000;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Embedding size %d exceeds max %d", &buf, 0xEu);
      }

      v14 = -50;
      goto LABEL_22;
    }

    if (self->_averageEmbedding)
    {
      p_currentEmbedding = &self->_currentEmbedding;
      if (self->_currentEmbedding)
      {
        goto LABEL_21;
      }

      v16 = 0;
    }

    else
    {
      v17 = operator new[](v11 & 0xFFFFFFFFFFFFFFFCLL, MEMORY[0x1E69E5398]);
      p_currentEmbedding = &self->_currentEmbedding;
      currentEmbedding = self->_currentEmbedding;
      self->_averageEmbedding = v17;
      v16 = v17 == 0;
      if (currentEmbedding)
      {
        if (!v17)
        {
          v14 = -108;
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    v19 = operator new[](v12 & 0xFFFFFFFFFFFFFFFCLL, MEMORY[0x1E69E5398]);
    *p_currentEmbedding = v19;
    v14 = -108;
    if (v16 || !v19)
    {
      goto LABEL_22;
    }

LABEL_21:
    videoEmbeddings = self->_videoEmbeddings;
    v28[0] = @"start";
    buf = *a4;
    v21 = CMTimeCopyAsDictionary(&buf, 0);
    v29[0] = v21;
    v28[1] = @"duration";
    buf = *a5;
    v22 = CMTimeCopyAsDictionary(&buf, 0);
    v29[1] = v22;
    v28[2] = @"attributes";
    v26 = @"embeddings";
    v27 = v9;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v29[2] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];
    [(NSMutableArray *)videoEmbeddings addObject:v24];

    v14 = 0;
    goto LABEL_22;
  }

  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.var0) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Embedding sizes don't match, skip calculating embeddings for scene results.", &buf, 2u);
  }

  [(NSMutableArray *)self->_videoEmbeddings removeAllObjects];
  [(NSMutableArray *)self->_summarizedEmbeddingIds removeAllObjects];
  v14 = -18;
LABEL_22:

  return v14;
}

- (id)videoEmbeddingsFp16
{
  v20[3] = *MEMORY[0x1E69E9840];
  v17 = [(NSMutableArray *)self->_videoEmbeddings mutableCopy];
  v2 = 0;
  v15 = @"embeddingVersion";
  while (1)
  {
    if (v2 >= [v17 count])
    {
      v12 = v17;
      v13 = v17;
      goto LABEL_12;
    }

    v3 = [v17 objectAtIndexedSubscript:v2];
    v4 = [v3 objectForKeyedSubscript:@"attributes"];
    v5 = [v4 objectForKeyedSubscript:@"embeddings"];
    v6 = [(VCPVideoEmbeddings *)self convertToFloat16:v5];

    if (!v6)
    {
      break;
    }

    v7 = [MEMORY[0x1E695DF90] dictionary];
    [v7 setObject:v6 forKeyedSubscript:@"embeddings"];
    version = self->_version;
    if (version)
    {
      [v7 setObject:version forKeyedSubscript:v15];
    }

    v19[0] = @"start";
    v9 = [v3 objectForKeyedSubscript:@"start"];
    v20[0] = v9;
    v19[1] = @"duration";
    v10 = [v3 objectForKeyedSubscript:@"duration"];
    v19[2] = @"attributes";
    v20[1] = v10;
    v20[2] = v7;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
    [v17 setObject:v11 atIndexedSubscript:v2];

    ++v2;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to convert fp32 embedding to fp16", buf, 2u);
  }

  v13 = 0;
  v12 = v17;
LABEL_12:

  return v13;
}

- (void)dealloc
{
  averageEmbedding = self->_averageEmbedding;
  if (averageEmbedding)
  {
    MEMORY[0x1CCA95C10](averageEmbedding, 0x1000C8052888210);
  }

  currentEmbedding = self->_currentEmbedding;
  if (currentEmbedding)
  {
    MEMORY[0x1CCA95C10](currentEmbedding, 0x1000C8052888210);
  }

  v5.receiver = self;
  v5.super_class = VCPVideoEmbeddings;
  [(VCPVideoEmbeddings *)&v5 dealloc];
}

- (id)getEmbeddingsForRange:(id *)a3 useFP16:(BOOL)a4
{
  v26 = a4;
  v38 = *MEMORY[0x1E69E9840];
  bzero(self->_averageEmbedding, 4 * self->_embeddingSize);
  bzero(self->_currentEmbedding, 4 * self->_embeddingSize);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = self->_videoEmbeddings;
  v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v6)
  {

LABEL_23:
    obja = 0;
    goto LABEL_24;
  }

  v7 = *v34;
  v8 = 0.0;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v34 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v33 + 1) + 8 * i);
      memset(&v32, 0, sizeof(v32));
      CMTimeRangeMakeFromDictionary(&v32, v10);
      v11 = *&a3->var0.var3;
      *&range.start.value = *&a3->var0.var0;
      *&range.start.epoch = v11;
      *&range.duration.timescale = *&a3->var1.var1;
      memset(&v31, 0, sizeof(v31));
      otherRange = v32;
      CMTimeRangeGetIntersection(&v31, &range, &otherRange);
      if ((v31.start.flags & 1) != 0 && (v31.duration.flags & 1) != 0 && !v31.duration.epoch && (v31.duration.value & 0x8000000000000000) == 0)
      {
        range.start = v31.duration;
        *&otherRange.start.value = *MEMORY[0x1E6960CC0];
        otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
        if (!CMTimeCompare(&range.start, &otherRange.start))
        {
          continue;
        }
      }

      v12 = [(__CFDictionary *)v10 objectForKeyedSubscript:@"attributes"];
      v13 = [v12 objectForKeyedSubscript:@"embeddings"];

      [v13 getBytes:self->_currentEmbedding length:4 * self->_embeddingSize];
      range.start = v31.duration;
      Seconds = CMTimeGetSeconds(&range.start);
      embeddingSize = self->_embeddingSize;
      if (embeddingSize)
      {
        averageEmbedding = self->_averageEmbedding;
        currentEmbedding = self->_currentEmbedding;
        do
        {
          v18 = *currentEmbedding++;
          *averageEmbedding = *averageEmbedding + (v18 * Seconds);
          ++averageEmbedding;
          --embeddingSize;
        }

        while (embeddingSize);
      }

      v8 = v8 + Seconds;
    }

    v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  }

  while (v6);

  if (v8 <= 0.0)
  {
    goto LABEL_23;
  }

  obja = [MEMORY[0x1E695DF88] dataWithCapacity:0];
  v19 = self->_embeddingSize;
  v20 = self->_averageEmbedding;
  if (v19)
  {
    v21 = self->_embeddingSize;
    v22 = self->_averageEmbedding;
    do
    {
      *v22 = *v22 / v8;
      ++v22;
      --v21;
    }

    while (v21);
  }

  [obja appendBytes:v20 length:4 * v19];
LABEL_24:
  if (v26)
  {
    v23 = [(VCPVideoEmbeddings *)self convertToFloat16:obja];
    v24 = obja;
  }

  else
  {
    v24 = obja;
    v23 = obja;
  }

  return v23;
}

- (id)convertToFloat16:(id)a3
{
  v4 = a3;
  embeddingSize = self->_embeddingSize;
  if (embeddingSize >> 62)
  {
    v6 = -1;
  }

  else
  {
    v6 = 4 * embeddingSize;
  }

  v7 = MEMORY[0x1E69E5398];
  v8 = operator new[](v6, MEMORY[0x1E69E5398]);
  if (embeddingSize < 0)
  {
    v9 = -1;
  }

  else
  {
    v9 = 2 * embeddingSize;
  }

  v10 = operator new[](v9, v7);
  if (v8)
  {
    _ZF = v10 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23[0] = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Embedding conversion error - out of memory", v23, 2u);
    }

    v12 = 0;
  }

  else
  {
    v13 = v10;
    [v4 getBytes:v8 length:4 * embeddingSize];
    v14 = self->_embeddingSize;
    if (v14)
    {
      v15 = v8;
      v16 = v13;
      do
      {
        v17 = *v15++;
        _S0 = v17;
        __asm { FCVT            H0, S0 }

        *v16++ = _S0;
        --v14;
      }

      while (v14);
    }

    v12 = [MEMORY[0x1E695DF88] dataWithCapacity:0];
    [v12 appendBytes:v13 length:2 * self->_embeddingSize];
    MEMORY[0x1CCA95C10](v13, 0x1000C80BDFB0063);
    MEMORY[0x1CCA95C10](v8, 0x1000C8052888210);
  }

  return v12;
}

@end