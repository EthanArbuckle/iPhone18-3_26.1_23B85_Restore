@interface VCPSoundClassifier300
- (VCPSoundClassifier300)initWithTrackStart:(id *)start resultsKey:(id)key resultHandler:(id)handler;
- (id)results;
- (void)addDetectionFromTime:(id *)time toTime:(id *)toTime classification:(id)classification;
- (void)request:(id)request didProduceResult:(id)result;
@end

@implementation VCPSoundClassifier300

- (VCPSoundClassifier300)initWithTrackStart:(id *)start resultsKey:(id)key resultHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  if (keyCopy)
  {
    v19.receiver = self;
    v19.super_class = VCPSoundClassifier300;
    v11 = [(VCPSoundClassifier300 *)&v19 init];
    if (v11)
    {
      array = [MEMORY[0x1E695DF70] array];
      results = v11->_results;
      v11->_results = array;

      v14 = *&start->var0;
      v11->_trackStart.epoch = start->var3;
      *&v11->_trackStart.value = v14;
      objc_storeStrong(&v11->_resultsKey, key);
      v15 = _Block_copy(handlerCopy);
      resultHander = v11->_resultHander;
      v11->_resultHander = v15;
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

- (void)addDetectionFromTime:(id *)time toTime:(id *)toTime classification:(id)classification
{
  v20[3] = *MEMORY[0x1E69E9840];
  classificationCopy = classification;
  memset(&v17, 0, sizeof(v17));
  v14.start = self->_trackStart;
  rhs = *time;
  CMTimeAdd(&start, &v14.start, &rhs);
  v14.start = self->_trackStart;
  rhs = *toTime;
  CMTimeAdd(&end, &v14.start, &rhs);
  CMTimeRangeFromTimeToTime(&v17, &start, &end);
  if ((v17.start.flags & 1) != 0 && (v17.duration.flags & 1) != 0 && !v17.duration.epoch && (v17.duration.value & 0x8000000000000000) == 0)
  {
    v14 = v17;
    v9 = CMTimeRangeCopyAsDictionary(&v14, 0);
    results = self->_results;
    v19[0] = @"start";
    v11 = [(__CFDictionary *)v9 objectForKey:?];
    v20[0] = v11;
    v19[1] = @"duration";
    v12 = [(__CFDictionary *)v9 objectForKey:?];
    v19[2] = @"attributes";
    v20[1] = v12;
    v20[2] = classificationCopy;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
    [(NSMutableArray *)results addObject:v13];
  }
}

- (void)request:(id)request didProduceResult:(id)result
{
  v53 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  resultCopy = result;
  if (resultCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy = self;
      v33 = resultCopy;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      classifications = [v33 classifications];
      v9 = [classifications subarrayWithRange:{0, 10}];

      v10 = [v9 countByEnumeratingWithState:&v43 objects:v52 count:16];
      if (v10)
      {
        v11 = *v44;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v44 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v43 + 1) + 8 * i);
            v14 = MEMORY[0x1E696AD98];
            [v13 confidence];
            v15 = [v14 numberWithDouble:?];
            identifier = [v13 identifier];
            [dictionary setObject:v15 forKey:identifier];
          }

          v10 = [v9 countByEnumeratingWithState:&v43 objects:v52 count:16];
        }

        while (v10);
      }

      memset(v42, 0, sizeof(v42));
      v41 = 0u;
      [v33 timeRange];
      *&v40.value = v41;
      v40.epoch = *&v42[0];
      memset(&v39, 0, sizeof(v39));
      *&lhs.value = v41;
      lhs.epoch = *&v42[0];
      rhs = *(v42 + 8);
      CMTimeAdd(&v39, &lhs, &rhs);
      lhs = v40;
      if (CMTimeGetSeconds(&lhs) >= 0.0)
      {
        [(VCPSoundClassifier300 *)selfCopy addDetectionFromTime:&v40 toTime:&v39 classification:dictionary];
        if (selfCopy->_resultHander)
        {
          dictionary2 = [MEMORY[0x1E695DF90] dictionary];
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          classifications2 = [v33 classifications];
          v19 = [classifications2 countByEnumeratingWithState:&v35 objects:v51 count:16];
          if (v19)
          {
            v20 = *v36;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v36 != v20)
                {
                  objc_enumerationMutation(classifications2);
                }

                v22 = *(*(&v35 + 1) + 8 * j);
                identifier2 = [v22 identifier];
                v24 = identifier2 == 0;

                if (!v24)
                {
                  v25 = MEMORY[0x1E696AD98];
                  [v22 confidence];
                  v26 = [v25 numberWithDouble:?];
                  identifier3 = [v22 identifier];
                  [dictionary2 setObject:v26 forKeyedSubscript:identifier3];
                }
              }

              v19 = [classifications2 countByEnumeratingWithState:&v35 objects:v51 count:16];
            }

            while (v19);
          }

          resultHander = selfCopy->_resultHander;
          v50[0] = dictionary2;
          v49[0] = @"attributes";
          v49[1] = @"start";
          *&lhs.value = v41;
          lhs.epoch = *&v42[0];
          v29 = CMTimeCopyAsDictionary(&lhs, 0);
          v50[1] = v29;
          v49[2] = @"duration";
          lhs = *(v42 + 8);
          v30 = CMTimeCopyAsDictionary(&lhs, 0);
          v50[2] = v30;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:3];
          resultHander[2](resultHander, v31);
        }
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