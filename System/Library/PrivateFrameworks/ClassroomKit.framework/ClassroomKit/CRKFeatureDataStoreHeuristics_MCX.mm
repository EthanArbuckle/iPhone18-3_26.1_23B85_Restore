@interface CRKFeatureDataStoreHeuristics_MCX
+ (id)overrideFeaturesByFeature;
+ (id)overrideIsForcedByFeature;
- (BOOL)applyIsForcedHeuristicsToFeature:(id)a3 isForced:(BOOL)a4;
- (CRKFeatureDataStoreHeuristics_MCX)initWithDataStore:(id)a3;
- (CRKFeatureDataStoreProtocol)dataStore;
- (unint64_t)applyHeuristicsToFeature:(id)a3 BOOLType:(unint64_t)a4;
@end

@implementation CRKFeatureDataStoreHeuristics_MCX

- (CRKFeatureDataStoreHeuristics_MCX)initWithDataStore:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRKFeatureDataStoreHeuristics_MCX;
  v5 = [(CRKFeatureDataStoreHeuristics_MCX *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataStore, v4);
  }

  return v6;
}

- (BOOL)applyIsForcedHeuristicsToFeature:(id)a3 isForced:(BOOL)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(CRKFeatureDataStoreHeuristics_MCX *)self dataStore];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) != 0 && ([objc_opt_class() overrideIsForcedByFeature], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "allKeys"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsObject:", v6), v11, v10, v12))
    {
      v13 = [objc_opt_class() overrideIsForcedByFeature];
      v14 = [v13 objectForKeyedSubscript:v6];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v24;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v23 + 1) + 8 * i);
            v21 = [(CRKFeatureDataStoreHeuristics_MCX *)self dataStore];
            LOBYTE(v20) = [v21 isFeatureForced:v20];

            if (v20)
            {
              v7 = 1;
              goto LABEL_16;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v7 = 0;
LABEL_16:
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)applyHeuristicsToFeature:(id)a3 BOOLType:(unint64_t)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [objc_opt_class() overrideFeaturesByFeature];
  v8 = [v7 allKeys];
  v9 = [v8 containsObject:v6];

  if (v9)
  {
    v10 = [objc_opt_class() overrideFeaturesByFeature];
    v11 = [v10 objectForKeyedSubscript:v6];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          v18 = [(CRKFeatureDataStoreHeuristics_MCX *)self dataStore];
          v19 = [v18 BOOLRestrictionForFeature:v17];

          if (v19 == 2)
          {
            a4 = 2;
            goto LABEL_12;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return a4;
}

+ (id)overrideIsForcedByFeature
{
  if (overrideIsForcedByFeature_onceToken != -1)
  {
    +[CRKFeatureDataStoreHeuristics_MCX overrideIsForcedByFeature];
  }

  v3 = overrideIsForcedByFeature_overrideIsForcedByFeature;

  return v3;
}

+ (id)overrideFeaturesByFeature
{
  if (overrideFeaturesByFeature_onceToken != -1)
  {
    +[CRKFeatureDataStoreHeuristics_MCX overrideFeaturesByFeature];
  }

  v3 = overrideFeaturesByFeature_overrideFeaturesByFeature;

  return v3;
}

- (CRKFeatureDataStoreProtocol)dataStore
{
  WeakRetained = objc_loadWeakRetained(&self->_dataStore);

  return WeakRetained;
}

@end