@interface LCFProactivePredictionRanker
- (LCFProactivePredictionRanker)init;
- (id)proactiveRanking:(id)a3 predictions:(id)a4;
@end

@implementation LCFProactivePredictionRanker

- (LCFProactivePredictionRanker)init
{
  v4.receiver = self;
  v4.super_class = LCFProactivePredictionRanker;
  v2 = [(LCFProactivePredictionRanker *)&v4 init];
  if (v2)
  {
    LCFModelMonitoringLoggingUtilsInit();
  }

  return v2;
}

- (id)proactiveRanking:(id)a3 predictions:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  v39 = v6;
  if (v7 == [v6 count])
  {
    v8 = objc_opt_new();
    if ([v5 count])
    {
      v9 = 0;
      do
      {
        v10 = [v5 objectAtIndexedSubscript:v9];
        v11 = [v39 featuresAtIndex:v9];
        v12 = [[LCFProactivePredictionRankerHolder alloc] init:v10 prediction:v11];
        v13 = [v10 featureValues];
        v14 = [v13 objectForKeyedSubscript:@"_sharingEventUID"];
        v15 = [v14 stringValue];

        v16 = [v8 objectForKey:v15];

        if (!v16)
        {
          v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v8 setObject:v17 forKey:v15];
        }

        v18 = [v8 objectForKeyedSubscript:v15];
        [v18 addObject:v12];

        ++v9;
      }

      while (v9 < [v5 count]);
    }

    v38 = v5;
    v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v19 = v8;
    v43 = [v19 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v43)
    {
      v42 = *v45;
      v41 = v19;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v45 != v42)
          {
            objc_enumerationMutation(v19);
          }

          v21 = *(*(&v44 + 1) + 8 * i);
          v22 = [v19 objectForKeyedSubscript:v21];
          if ([v22 count])
          {
            v23 = [v22 sortedArrayUsingFunction:predictionSort context:0];
            if ([v23 count])
            {
              if ([v23 count])
              {
                v24 = 1;
                while (1)
                {
                  v25 = [v23 objectAtIndexedSubscript:v24 - 1];
                  v26 = [v25 featureSet];
                  v27 = [v26 featureValues];
                  v28 = [v27 objectForKeyedSubscript:@"_isPositiveLabeled"];
                  v29 = [v28 BOOLValue];
                  v30 = [v29 BOOLValue];

                  if (v30)
                  {
                    break;
                  }

                  if (v24++ >= [v23 count])
                  {
                    goto LABEL_25;
                  }
                }

                v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
                [v40 addObject:v34];
              }
            }

            else
            {
              v33 = LCFMMLogProactivePredictionRanker;
              if (os_log_type_enabled(LCFMMLogProactivePredictionRanker, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v49 = v21;
                _os_log_error_impl(&dword_255F3F000, v33, OS_LOG_TYPE_ERROR, "empty sortedByPrediction for %@", buf, 0xCu);
              }
            }

LABEL_25:

            v19 = v41;
          }

          else
          {
            v32 = LCFMMLogProactivePredictionRanker;
            if (os_log_type_enabled(LCFMMLogProactivePredictionRanker, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v49 = v21;
              _os_log_error_impl(&dword_255F3F000, v32, OS_LOG_TYPE_ERROR, "empty holder for %@", buf, 0xCu);
            }
          }
        }

        v43 = [v19 countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v43);
    }

    v5 = v38;
  }

  else
  {
    v35 = LCFMMLogProactivePredictionRanker;
    if (os_log_type_enabled(LCFMMLogProactivePredictionRanker, OS_LOG_TYPE_ERROR))
    {
      [(LCFProactivePredictionRanker *)v35 proactiveRanking:v5 predictions:v6];
    }

    v40 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];

  return v40;
}

- (void)proactiveRanking:(void *)a3 predictions:.cold.1(void *a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v7 = 134218240;
  v8 = [a2 count];
  v9 = 2048;
  v10 = [a3 count];
  _os_log_error_impl(&dword_255F3F000, v5, OS_LOG_TYPE_ERROR, "count of features and precistions don't match. feature count %ld predictions count %ld", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end