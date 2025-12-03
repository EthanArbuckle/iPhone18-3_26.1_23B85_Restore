@interface LCFCoreMLBatchProvider
- (id)init:(id)init featureProviders:(id)providers;
@end

@implementation LCFCoreMLBatchProvider

- (id)init:(id)init featureProviders:(id)providers
{
  v37 = *MEMORY[0x277D85DE8];
  initCopy = init;
  providersCopy = providers;
  v35.receiver = self;
  v35.super_class = LCFCoreMLBatchProvider;
  v9 = [(LCFCoreMLBatchProvider *)&v35 init];
  v10 = v9;
  if (v9)
  {
    v30 = initCopy;
    objc_storeStrong(&v9->_featureStoreKey, init);
    v10->_count = [providersCopy count];
    objc_storeStrong(&v10->_featureProviders, providers);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = providersCopy;
    v11 = providersCopy;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (!v12)
    {
      timestamp = 0;
      timestamp2 = 0;
      goto LABEL_22;
    }

    v13 = v12;
    timestamp = 0;
    timestamp2 = 0;
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
        if (timestamp)
        {
          if (timestamp2)
          {
            goto LABEL_9;
          }
        }

        else
        {
          timestamp = [*(*(&v31 + 1) + 8 * v17) timestamp];
          if (timestamp2)
          {
            goto LABEL_9;
          }
        }

        timestamp2 = [v18 timestamp];
LABEL_9:
        timestamp3 = [v18 timestamp];
        v20 = [(NSDate *)timestamp compare:timestamp3];

        timestamp4 = [v18 timestamp];
        if (v20 == -1)
        {
          v22 = timestamp2;
        }

        else
        {
          v22 = timestamp;
        }

        if (v20 == -1)
        {
          timestamp2 = timestamp4;
        }

        else
        {
          timestamp = timestamp4;
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
        v10->_timeFirst = timestamp;
        v25 = timestamp;

        timeLast = v10->_timeLast;
        v10->_timeLast = timestamp2;

        providersCopy = v29;
        initCopy = v30;
        break;
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v10;
}

@end