@interface CLSInvestigationHelper
- (CLSInvestigationHelper)initWithServiceManager:(id)a3 locationCache:(id)a4 aoiCache:(id)a5 poiCache:(id)a6 roiCache:(id)a7 natureCache:(id)a8;
- (id)parentNodesOfTaxonomyNode:(id)a3;
- (id)taxonomyNodeForSceneIdentifier:(unint64_t)a3 sceneModel:(id)a4;
- (unint64_t)_maxLevelWithTaxonomyNode:(id)a3;
- (void)enumerateTaxonomyNodesLevelsAndWeightsStartingWithNode:(id)a3 usingBlock:(id)a4;
@end

@implementation CLSInvestigationHelper

- (unint64_t)_maxLevelWithTaxonomyNode:(id)a3
{
  v4 = a3;
  v5 = [v4 taxonomy];
  v6 = [v5 digest];

  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "extendedSceneClassId")}];
    v8 = [(NSMutableDictionary *)self->_maxTaxonomyNodeLevelBySceneIdentifierBySceneModelIdentifier objectForKeyedSubscript:v6];
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(NSMutableDictionary *)self->_maxTaxonomyNodeLevelBySceneIdentifierBySceneModelIdentifier setObject:v8 forKeyedSubscript:v6];
    }

    v9 = [v8 objectForKeyedSubscript:v7];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 unsignedIntegerValue];
    }

    else
    {
      v11 = _maxTaxonomyNodeLevel(v4);
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
      [v8 setObject:v12 forKeyedSubscript:v7];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)enumerateTaxonomyNodesLevelsAndWeightsStartingWithNode:(id)a3 usingBlock:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 taxonomy];
  v9 = [v8 digest];

  if (v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v6, "extendedSceneClassId")}];
    os_unfair_lock_lock(&self->_taxonomyNodesLevelsAndWeightsLock);
    v11 = [(NSMutableDictionary *)self->_taxonomyNodesLevelsAndWeightsBySceneIdentifierBySceneModelIdentifier objectForKeyedSubscript:v9];
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(NSMutableDictionary *)self->_taxonomyNodesLevelsAndWeightsBySceneIdentifierBySceneModelIdentifier setObject:v11 forKeyedSubscript:v9];
    }

    v12 = [v11 objectForKeyedSubscript:v10];
    if (v12)
    {
      os_unfair_lock_unlock(&self->_taxonomyNodesLevelsAndWeightsLock);
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = v12;
      v13 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v39;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v39 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v7[2](v7, *(*(&v38 + 1) + 8 * i));
          }

          v14 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
        }

        while (v14);
      }
    }

    else
    {
      v31 = 0;
      v34 = v9;
      v32 = v11;
      v33 = v10;
      obj = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v11 setObject:? forKeyedSubscript:?];
      v17 = [(CLSInvestigationHelper *)self _maxLevelWithTaxonomyNode:v6];
      v35 = v6;
      v18 = [MEMORY[0x277CBEB58] setWithObject:v6];
      v36 = v17 + 1;
      v19 = v17;
      while (1)
      {
        if ([v18 count] == 1)
        {
          v20 = [v18 anyObject];
          v21 = [v20 isRoot];

          if (v21)
          {
            break;
          }
        }

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v22 = v18;
        v23 = [v22 countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v23)
        {
          v24 = v23;
          v18 = 0;
          v25 = *v43;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v43 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v42 + 1) + 8 * j);
              if (([v27 isRoot] & 1) == 0)
              {
                v28 = [[CLSInvestigationHelperSceneNodeLevelAndWeight alloc] initWithTaxonomyNode:v27 level:v17 andWeight:(v36 - v17) / v19];
                (v7)[2](v7, v28);
                [obj addObject:v28];
                v29 = [(CLSInvestigationHelper *)self parentNodesOfTaxonomyNode:v27];
                v30 = v29;
                if (v18)
                {
                  [v18 unionSet:v29];
                }

                else
                {
                  v18 = [v29 mutableCopy];
                }
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v42 objects:v47 count:16];
          }

          while (v24);
        }

        else
        {
          v18 = 0;
        }

        --v17;
      }

      os_unfair_lock_unlock(&self->_taxonomyNodesLevelsAndWeightsLock);

      v9 = v34;
      v6 = v35;
      v11 = v32;
      v10 = v33;
      v12 = v31;
    }
  }
}

- (id)parentNodesOfTaxonomyNode:(id)a3
{
  v4 = a3;
  v5 = [v4 taxonomy];
  v6 = [v5 digest];

  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "extendedSceneClassId")}];
    os_unfair_lock_lock(&self->_parentTaxonomyNodesLock);
    v8 = [(NSMutableDictionary *)self->_parentTaxonomyNodesBySceneIdentifierBySceneModelIdentifier objectForKeyedSubscript:v6];
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(NSMutableDictionary *)self->_parentTaxonomyNodesBySceneIdentifierBySceneModelIdentifier setObject:v8 forKeyedSubscript:v6];
    }

    v9 = [v8 objectForKeyedSubscript:v7];
    if (!v9)
    {
      v9 = [v4 parents];
      [v8 setObject:v9 forKeyedSubscript:v7];
    }

    os_unfair_lock_unlock(&self->_parentTaxonomyNodesLock);
  }

  else
  {
    v9 = [MEMORY[0x277CBEB98] set];
  }

  return v9;
}

- (id)taxonomyNodeForSceneIdentifier:(unint64_t)a3 sceneModel:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([v6 isResponsibleForSignalIdentifier:a3])
  {
    v7 = [v6 identifier];
    if (v7)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
      os_unfair_lock_lock(&self->_taxonomyNodesLock);
      v9 = [(NSMutableDictionary *)self->_taxonomyNodeBySceneIdentifierBySceneModelIdentifier objectForKeyedSubscript:v7];
      if (!v9)
      {
        v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [(NSMutableDictionary *)self->_taxonomyNodeBySceneIdentifierBySceneModelIdentifier setObject:v9 forKeyedSubscript:v7];
      }

      v10 = [v9 objectForKeyedSubscript:v8];
      if (!v10)
      {
        v10 = [v6 taxonomyNodeForSceneIdentifier:a3];
        if (!v10)
        {
          v10 = [MEMORY[0x277CBEB68] null];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v13[0] = 67109120;
            v13[1] = a3;
            _os_log_error_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "No taxonomy node found for sceneIdentifier %d", v13, 8u);
          }
        }

        [v9 setObject:v10 forKeyedSubscript:v8];
      }

      v11 = [MEMORY[0x277CBEB68] null];

      if (v10 == v11)
      {

        v10 = 0;
      }

      os_unfair_lock_unlock(&self->_taxonomyNodesLock);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CLSInvestigationHelper)initWithServiceManager:(id)a3 locationCache:(id)a4 aoiCache:(id)a5 poiCache:(id)a6 roiCache:(id)a7 natureCache:(id)a8
{
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v32.receiver = self;
  v32.super_class = CLSInvestigationHelper;
  v18 = [(CLSInvestigationHelper *)&v32 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_serviceManager, a3);
    objc_storeStrong(&v19->_locationCache, a4);
    objc_storeStrong(&v19->_aoiCache, a5);
    objc_storeStrong(&v19->_poiCache, a6);
    objc_storeStrong(&v19->_roiCache, a7);
    objc_storeStrong(&v19->_natureCache, a8);
    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    parentTaxonomyNodesBySceneIdentifierBySceneModelIdentifier = v19->_parentTaxonomyNodesBySceneIdentifierBySceneModelIdentifier;
    v19->_parentTaxonomyNodesBySceneIdentifierBySceneModelIdentifier = v20;

    v19->_parentTaxonomyNodesLock._os_unfair_lock_opaque = 0;
    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    taxonomyNodeBySceneIdentifierBySceneModelIdentifier = v19->_taxonomyNodeBySceneIdentifierBySceneModelIdentifier;
    v19->_taxonomyNodeBySceneIdentifierBySceneModelIdentifier = v22;

    v19->_taxonomyNodesLock._os_unfair_lock_opaque = 0;
    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    taxonomyNodesLevelsAndWeightsBySceneIdentifierBySceneModelIdentifier = v19->_taxonomyNodesLevelsAndWeightsBySceneIdentifierBySceneModelIdentifier;
    v19->_taxonomyNodesLevelsAndWeightsBySceneIdentifierBySceneModelIdentifier = v24;

    v19->_taxonomyNodesLevelsAndWeightsLock._os_unfair_lock_opaque = 0;
    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    maxTaxonomyNodeLevelBySceneIdentifierBySceneModelIdentifier = v19->_maxTaxonomyNodeLevelBySceneIdentifierBySceneModelIdentifier;
    v19->_maxTaxonomyNodeLevelBySceneIdentifierBySceneModelIdentifier = v26;
  }

  return v19;
}

@end