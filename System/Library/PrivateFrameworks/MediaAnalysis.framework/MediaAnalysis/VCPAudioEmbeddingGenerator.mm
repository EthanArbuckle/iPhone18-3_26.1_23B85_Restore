@interface VCPAudioEmbeddingGenerator
- (VCPAudioEmbeddingGenerator)initWithTrackStart:(id *)start threshold:(float)threshold resultsKey:(id)key version:(int)version;
- (id)results;
- (void)addDetectionFromTime:(id *)time toTime:(id *)toTime embedding:(id)embedding;
- (void)request:(id)request didProduceResult:(id)result;
@end

@implementation VCPAudioEmbeddingGenerator

- (VCPAudioEmbeddingGenerator)initWithTrackStart:(id *)start threshold:(float)threshold resultsKey:(id)key version:(int)version
{
  keyCopy = key;
  if (keyCopy)
  {
    v17.receiver = self;
    v17.super_class = VCPAudioEmbeddingGenerator;
    v11 = [(VCPAudioEmbeddingGenerator *)&v17 init];
    if (v11)
    {
      array = [MEMORY[0x1E695DF70] array];
      results = v11->_results;
      v11->_results = array;

      v14 = *&start->var0;
      v11->_trackStart.epoch = start->var3;
      *&v11->_trackStart.value = v14;
      objc_storeStrong(&v11->_resultsKey, key);
      v11->_version = version;
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)addDetectionFromTime:(id *)time toTime:(id *)toTime embedding:(id)embedding
{
  v27[3] = *MEMORY[0x1E69E9840];
  embeddingCopy = embedding;
  memset(&v22, 0, sizeof(v22));
  lhs.start = self->_trackStart;
  rhs = *time;
  CMTimeAdd(&start, &lhs.start, &rhs);
  lhs.start = self->_trackStart;
  rhs = *toTime;
  CMTimeAdd(&end, &lhs.start, &rhs);
  CMTimeRangeFromTimeToTime(&v22, &start, &end);
  if ((v22.start.flags & 1) != 0 && (v22.duration.flags & 1) != 0 && !v22.duration.epoch && (v22.duration.value & 0x8000000000000000) == 0)
  {
    lhs = v22;
    v9 = CMTimeRangeCopyAsDictionary(&lhs, 0);
    lhs.start.value = 0;
    *&lhs.start.timescale = &lhs;
    lhs.start.epoch = 0x3032000000;
    lhs.duration.value = __Block_byref_object_copy__43;
    *&lhs.duration.timescale = __Block_byref_object_dispose__43;
    lhs.duration.epoch = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __68__VCPAudioEmbeddingGenerator_addDetectionFromTime_toTime_embedding___block_invoke;
    v18[3] = &unk_1E834CE50;
    v18[4] = &lhs;
    [embeddingCopy getBytesWithHandler:v18];
    if ([embeddingCopy dataType] == 65568)
    {
      v10 = MediaAnalysisConvertFloat32ToFloat16(*(*&lhs.start.timescale + 40));
      v11 = *(*&lhs.start.timescale + 40);
      *(*&lhs.start.timescale + 40) = v10;
    }

    if (*(*&lhs.start.timescale + 40))
    {
      results = self->_results;
      v26[0] = @"start";
      v13 = [(__CFDictionary *)v9 objectForKey:?];
      v27[0] = v13;
      v26[1] = @"duration";
      v14 = [(__CFDictionary *)v9 objectForKey:?];
      v27[1] = v14;
      v26[2] = @"attributes";
      v25[0] = *(*&lhs.start.timescale + 40);
      v24[0] = @"embeddings";
      v24[1] = @"embeddingVersion";
      v15 = [MEMORY[0x1E696AD98] numberWithInt:self->_version];
      v25[1] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
      v27[2] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
      [(NSMutableArray *)results addObject:v17];
    }

    _Block_object_dispose(&lhs, 8);
  }
}

void __68__VCPAudioEmbeddingGenerator_addDetectionFromTime_toTime_embedding___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:a3];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (void)request:(id)request didProduceResult:(id)result
{
  requestCopy = request;
  resultCopy = result;
  if (resultCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = resultCopy;
      memset(v13, 0, sizeof(v13));
      v12 = 0u;
      [v8 timeRange];
      *&v11.value = v12;
      v11.epoch = *&v13[0];
      memset(&v10, 0, sizeof(v10));
      *&lhs.value = v12;
      lhs.epoch = *&v13[0];
      rhs = *(v13 + 8);
      CMTimeAdd(&v10, &lhs, &rhs);
      lhs = v11;
      if (CMTimeGetSeconds(&lhs) >= 0.0)
      {
        featureVector = [v8 featureVector];
        [(VCPAudioEmbeddingGenerator *)self addDetectionFromTime:&v11 toTime:&v10 embedding:featureVector];
      }
    }
  }
}

- (id)results
{
  v6[1] = *MEMORY[0x1E69E9840];
  results = self->_results;
  resultsKey = self->_resultsKey;
  v6[0] = results;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&resultsKey count:1];

  return v3;
}

@end