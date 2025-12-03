@interface CRKFeatureDataStoreHeuristics_MCX
+ (id)overrideFeaturesByFeature;
+ (id)overrideIsForcedByFeature;
- (BOOL)applyIsForcedHeuristicsToFeature:(id)feature isForced:(BOOL)forced;
- (CRKFeatureDataStoreHeuristics_MCX)initWithDataStore:(id)store;
- (CRKFeatureDataStoreProtocol)dataStore;
- (unint64_t)applyHeuristicsToFeature:(id)feature BOOLType:(unint64_t)type;
@end

@implementation CRKFeatureDataStoreHeuristics_MCX

- (CRKFeatureDataStoreHeuristics_MCX)initWithDataStore:(id)store
{
  storeCopy = store;
  v8.receiver = self;
  v8.super_class = CRKFeatureDataStoreHeuristics_MCX;
  v5 = [(CRKFeatureDataStoreHeuristics_MCX *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataStore, storeCopy);
  }

  return v6;
}

- (BOOL)applyIsForcedHeuristicsToFeature:(id)feature isForced:(BOOL)forced
{
  v28 = *MEMORY[0x277D85DE8];
  featureCopy = feature;
  if (forced)
  {
    v7 = 1;
  }

  else
  {
    dataStore = [(CRKFeatureDataStoreHeuristics_MCX *)self dataStore];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) != 0 && ([objc_opt_class() overrideIsForcedByFeature], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "allKeys"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsObject:", featureCopy), v11, v10, v12))
    {
      overrideIsForcedByFeature = [objc_opt_class() overrideIsForcedByFeature];
      v14 = [overrideIsForcedByFeature objectForKeyedSubscript:featureCopy];

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
            dataStore2 = [(CRKFeatureDataStoreHeuristics_MCX *)self dataStore];
            LOBYTE(v20) = [dataStore2 isFeatureForced:v20];

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

- (unint64_t)applyHeuristicsToFeature:(id)feature BOOLType:(unint64_t)type
{
  v26 = *MEMORY[0x277D85DE8];
  featureCopy = feature;
  overrideFeaturesByFeature = [objc_opt_class() overrideFeaturesByFeature];
  allKeys = [overrideFeaturesByFeature allKeys];
  v9 = [allKeys containsObject:featureCopy];

  if (v9)
  {
    overrideFeaturesByFeature2 = [objc_opt_class() overrideFeaturesByFeature];
    v11 = [overrideFeaturesByFeature2 objectForKeyedSubscript:featureCopy];

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
          dataStore = [(CRKFeatureDataStoreHeuristics_MCX *)self dataStore];
          v19 = [dataStore BOOLRestrictionForFeature:v17];

          if (v19 == 2)
          {
            type = 2;
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

  return type;
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