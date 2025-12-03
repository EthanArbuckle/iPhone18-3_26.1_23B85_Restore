@interface VCPSoundClassifier
- (VCPSoundClassifier)initWithTrackStart:(id *)start threshold:(float)threshold resultsKey:(id)key;
- (id)results;
- (int)finalizeAnalysisAtTime:(id *)time;
- (void)addDetectionFromTime:(id *)time toTime:(id *)toTime confidence:(float)confidence;
- (void)request:(id)request didProduceResult:(id)result;
@end

@implementation VCPSoundClassifier

- (VCPSoundClassifier)initWithTrackStart:(id *)start threshold:(float)threshold resultsKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v20.receiver = self;
    v20.super_class = VCPSoundClassifier;
    v10 = [(VCPSoundClassifier *)&v20 init];
    if (v10)
    {
      array = [MEMORY[0x1E695DF70] array];
      v12 = *(v10 + 1);
      *(v10 + 1) = array;

      v13 = MEMORY[0x1E6960C70];
      v14 = *(MEMORY[0x1E6960C70] + 16);
      v15 = *MEMORY[0x1E6960C70];
      *(v10 + 1) = *MEMORY[0x1E6960C70];
      *(v10 + 4) = v14;
      *(v10 + 40) = v15;
      *(v10 + 7) = *(v13 + 16);
      *(v10 + 16) = 0;
      v16 = *&start->var0;
      *(v10 + 11) = start->var3;
      *(v10 + 72) = v16;
      *(v10 + 24) = 0;
      *(v10 + 25) = threshold;
      v17 = *(v10 + 14);
      *(v10 + 14) = @"aggregated";

      objc_storeStrong(v10 + 15, key);
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)addDetectionFromTime:(id *)time toTime:(id *)toTime confidence:(float)confidence
{
  v21[3] = *MEMORY[0x1E69E9840];
  memset(&v18, 0, sizeof(v18));
  v15.start = self->_trackStart;
  rhs = *time;
  CMTimeAdd(&start, &v15.start, &rhs);
  v15.start = self->_trackStart;
  rhs = *toTime;
  CMTimeAdd(&end, &v15.start, &rhs);
  CMTimeRangeFromTimeToTime(&v18, &start, &end);
  if ((v18.start.flags & 1) != 0 && (v18.duration.flags & 1) != 0 && !v18.duration.epoch && (v18.duration.value & 0x8000000000000000) == 0)
  {
    v15 = v18;
    v8 = CMTimeRangeCopyAsDictionary(&v15, 0);
    results = self->_results;
    v20[0] = @"start";
    v10 = [(__CFDictionary *)v8 objectForKey:?];
    v21[0] = v10;
    v20[1] = @"duration";
    v11 = [(__CFDictionary *)v8 objectForKey:?];
    v21[1] = v11;
    v20[2] = @"quality";
    *&v12 = confidence;
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
    v21[2] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
    [(NSMutableArray *)results addObject:v14];
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
      memset(v18, 0, sizeof(v18));
      v17 = 0u;
      [v8 timeRange];
      *&v16.value = v17;
      v16.epoch = *&v18[0];
      memset(&v15, 0, sizeof(v15));
      *&lhs.value = v17;
      lhs.epoch = *&v18[0];
      rhs = *(v18 + 8);
      CMTimeAdd(&v15, &lhs, &rhs);
      lhs = v16;
      if (CMTimeGetSeconds(&lhs) < 0.0)
      {
        goto LABEL_13;
      }

      v9 = [v8 classificationForIdentifier:self->_audioQualityAggregated];

      if (!v9)
      {
        goto LABEL_13;
      }

      v10 = [v8 classificationForIdentifier:self->_audioQualityAggregated];
      [v10 confidence];
      v12 = 1.0 - v11;

      if (self->_activeStart.flags)
      {
        *&Seconds = self->_activeScore;
        if (vabds_f32(*&Seconds, v12) < 0.001)
        {
          lhs = v16;
          rhs = self->_activeEnd;
          CMTimeSubtract(&v14, &lhs, &rhs);
          Seconds = CMTimeGetSeconds(&v14);
          if (Seconds < 0.5)
          {
            self->_activeEnd = v15;
LABEL_13:

            goto LABEL_14;
          }

          *&Seconds = self->_activeScore;
        }

        [(VCPSoundClassifier *)self addDetectionFromTime:&self->_activeStart toTime:&self->_activeEnd confidence:Seconds];
        self->_activeStart = v16;
        self->_activeEnd = v15;
      }

      else
      {
        self->_activeStart = v16;
        self->_activeEnd = v15;
      }

      self->_activeScore = v12;
      goto LABEL_13;
    }
  }

LABEL_14:
}

- (int)finalizeAnalysisAtTime:(id *)time
{
  if (self->_activeStart.flags)
  {
    *&v3 = self->_activeScore;
    [(VCPSoundClassifier *)self addDetectionFromTime:&self->_activeStart toTime:&self->_activeEnd confidence:v3];
    v5 = MEMORY[0x1E6960C70];
    v6 = *(MEMORY[0x1E6960C70] + 16);
    v7 = *MEMORY[0x1E6960C70];
    *&self->_activeStart.value = *MEMORY[0x1E6960C70];
    self->_activeStart.epoch = v6;
    *&self->_activeEnd.value = v7;
    self->_activeEnd.epoch = *(v5 + 16);
  }

  return 0;
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