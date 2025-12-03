@interface VCPSoundDetector
- (VCPSoundDetector)initWithTrackStart:(id *)start threshold:(float)threshold resultsKey:(id)key;
- (id)results;
- (int)finalizeAnalysisAtTime:(id *)time;
- (void)addDetectionFromTime:(id *)time toTime:(id *)toTime confidence:(float)confidence;
- (void)request:(id)request didProduceResult:(id)result;
@end

@implementation VCPSoundDetector

- (VCPSoundDetector)initWithTrackStart:(id *)start threshold:(float)threshold resultsKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v19.receiver = self;
    v19.super_class = VCPSoundDetector;
    v10 = [(VCPSoundDetector *)&v19 init];
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
      *(v10 + 26) = 2;
      objc_storeStrong(v10 + 14, key);
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
  if ((v18.start.flags & 1) != 0 && (v18.duration.flags & 1) != 0 && !v18.duration.epoch && (v18.duration.value & 0x8000000000000000) == 0 && self->_length >= self->_minDetections)
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
      [v8 confidence];
      v10 = v9;
      memset(v19, 0, sizeof(v19));
      v18 = 0u;
      [v8 timeRange];
      *&v17.value = v18;
      v17.epoch = *&v19[0];
      memset(&v16, 0, sizeof(v16));
      *&lhs.value = v18;
      lhs.epoch = *&v19[0];
      rhs = *(v19 + 8);
      CMTimeAdd(&v16, &lhs, &rhs);
      lhs = v17;
      Seconds = CMTimeGetSeconds(&lhs);
      if (Seconds <= 0.0 || (activeConfidence = v10, self->_threshold >= activeConfidence))
      {
        if (self->_activeStart.flags)
        {
          *&Seconds = self->_activeConfidence;
          [(VCPSoundDetector *)self addDetectionFromTime:&self->_activeStart toTime:&self->_activeEnd confidence:Seconds];
        }

        v13 = MEMORY[0x1E6960C70];
        v14 = *(MEMORY[0x1E6960C70] + 16);
        v15 = *MEMORY[0x1E6960C70];
        *&self->_activeStart.value = *MEMORY[0x1E6960C70];
        self->_activeStart.epoch = v14;
        *&self->_activeEnd.value = v15;
        self->_activeEnd.epoch = *(v13 + 16);
        self->_length = 0;
        self->_activeConfidence = 0.0;
      }

      else
      {
        if (self->_activeStart.flags)
        {
          self->_activeEnd = v16;
          if (self->_activeConfidence >= activeConfidence)
          {
            activeConfidence = self->_activeConfidence;
          }
        }

        else
        {
          self->_activeStart = v17;
          self->_activeEnd = v16;
        }

        self->_activeConfidence = activeConfidence;
        ++self->_length;
      }
    }
  }
}

- (int)finalizeAnalysisAtTime:(id *)time
{
  if (self->_activeStart.flags)
  {
    *&v3 = self->_activeConfidence;
    [(VCPSoundDetector *)self addDetectionFromTime:&self->_activeStart toTime:&self->_activeEnd confidence:v3];
    v5 = MEMORY[0x1E6960C70];
    v6 = *(MEMORY[0x1E6960C70] + 16);
    v7 = *MEMORY[0x1E6960C70];
    *&self->_activeStart.value = *MEMORY[0x1E6960C70];
    self->_activeStart.epoch = v6;
    *&self->_activeEnd.value = v7;
    self->_activeEnd.epoch = *(v5 + 16);
    self->_activeConfidence = 0.0;
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