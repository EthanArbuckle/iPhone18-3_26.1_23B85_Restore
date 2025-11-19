@interface VCPSoundClassifier300
- (VCPSoundClassifier300)initWithTrackStart:(id *)a3 resultsKey:(id)a4 resultHandler:(id)a5;
- (id)results;
- (void)addDetectionFromTime:(id *)a3 toTime:(id *)a4 classification:(id)a5;
- (void)request:(id)a3 didProduceResult:(id)a4;
@end

@implementation VCPSoundClassifier300

- (VCPSoundClassifier300)initWithTrackStart:(id *)a3 resultsKey:(id)a4 resultHandler:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v19.receiver = self;
    v19.super_class = VCPSoundClassifier300;
    v11 = [(VCPSoundClassifier300 *)&v19 init];
    if (v11)
    {
      v12 = [MEMORY[0x1E695DF70] array];
      results = v11->_results;
      v11->_results = v12;

      v14 = *&a3->var0;
      v11->_trackStart.epoch = a3->var3;
      *&v11->_trackStart.value = v14;
      objc_storeStrong(&v11->_resultsKey, a4);
      v15 = _Block_copy(v10);
      resultHander = v11->_resultHander;
      v11->_resultHander = v15;
    }

    self = v11;
    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)addDetectionFromTime:(id *)a3 toTime:(id *)a4 classification:(id)a5
{
  v20[3] = *MEMORY[0x1E69E9840];
  v8 = a5;
  memset(&v17, 0, sizeof(v17));
  v14.start = self->_trackStart;
  rhs = *a3;
  CMTimeAdd(&start, &v14.start, &rhs);
  v14.start = self->_trackStart;
  rhs = *a4;
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
    v20[2] = v8;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
    [(NSMutableArray *)results addObject:v13];
  }
}

- (void)request:(id)a3 didProduceResult:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v34 = a3;
  v6 = a4;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = self;
      v33 = v6;
      v7 = [MEMORY[0x1E695DF90] dictionary];
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v8 = [v33 classifications];
      v9 = [v8 subarrayWithRange:{0, 10}];

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
            v16 = [v13 identifier];
            [v7 setObject:v15 forKey:v16];
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
        [(VCPSoundClassifier300 *)v32 addDetectionFromTime:&v40 toTime:&v39 classification:v7];
        if (v32->_resultHander)
        {
          v17 = [MEMORY[0x1E695DF90] dictionary];
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v18 = [v33 classifications];
          v19 = [v18 countByEnumeratingWithState:&v35 objects:v51 count:16];
          if (v19)
          {
            v20 = *v36;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v36 != v20)
                {
                  objc_enumerationMutation(v18);
                }

                v22 = *(*(&v35 + 1) + 8 * j);
                v23 = [v22 identifier];
                v24 = v23 == 0;

                if (!v24)
                {
                  v25 = MEMORY[0x1E696AD98];
                  [v22 confidence];
                  v26 = [v25 numberWithDouble:?];
                  v27 = [v22 identifier];
                  [v17 setObject:v26 forKeyedSubscript:v27];
                }
              }

              v19 = [v18 countByEnumeratingWithState:&v35 objects:v51 count:16];
            }

            while (v19);
          }

          resultHander = v32->_resultHander;
          v50[0] = v17;
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