@interface LCFCoreMLBatchProvider
- (id)init:(id)a3 featureProviders:(id)a4;
@end

@implementation LCFCoreMLBatchProvider

- (id)init:(id)a3 featureProviders:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v35.receiver = self;
  v35.super_class = LCFCoreMLBatchProvider;
  v9 = [(LCFCoreMLBatchProvider *)&v35 init];
  v10 = v9;
  if (v9)
  {
    v30 = v7;
    objc_storeStrong(&v9->_featureStoreKey, a3);
    v10->_count = [v8 count];
    objc_storeStrong(&v10->_featureProviders, a4);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = v8;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (!v12)
    {
      v14 = 0;
      v15 = 0;
      goto LABEL_22;
    }

    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = *v32;
    while (1)
    {
      v17 = 0;
      do
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v31 + 1) + 8 * v17);
        if (v14)
        {
          if (v15)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v14 = [*(*(&v31 + 1) + 8 * v17) timestamp];
          if (v15)
          {
            goto LABEL_9;
          }
        }

        v15 = [v18 timestamp];
LABEL_9:
        v19 = [v18 timestamp];
        v20 = [(NSDate *)v14 compare:v19];

        v21 = [v18 timestamp];
        if (v20 == -1)
        {
          v22 = v15;
        }

        else
        {
          v22 = v14;
        }

        if (v20 == -1)
        {
          v15 = v21;
        }

        else
        {
          v14 = v21;
        }

        ++v17;
      }

      while (v13 != v17);
      v23 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
      v13 = v23;
      if (!v23)
      {
LABEL_22:

        timeFirst = v10->_timeFirst;
        v10->_timeFirst = v14;
        v25 = v14;

        timeLast = v10->_timeLast;
        v10->_timeLast = v15;

        v8 = v29;
        v7 = v30;
        break;
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v10;
}

@end