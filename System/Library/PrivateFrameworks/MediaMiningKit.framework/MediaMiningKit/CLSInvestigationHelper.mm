@interface CLSInvestigationHelper
- (CLSInvestigationHelper)initWithServiceManager:(id)manager locationCache:(id)cache aoiCache:(id)aoiCache poiCache:(id)poiCache roiCache:(id)roiCache natureCache:(id)natureCache;
- (id)parentNodesOfTaxonomyNode:(id)node;
- (id)taxonomyNodeForSceneIdentifier:(unint64_t)identifier sceneModel:(id)model;
- (unint64_t)_maxLevelWithTaxonomyNode:(id)node;
- (void)enumerateTaxonomyNodesLevelsAndWeightsStartingWithNode:(id)node usingBlock:(id)block;
@end

@implementation CLSInvestigationHelper

- (unint64_t)_maxLevelWithTaxonomyNode:(id)node
{
  nodeCopy = node;
  taxonomy = [nodeCopy taxonomy];
  digest = [taxonomy digest];

  if (digest)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(nodeCopy, "extendedSceneClassId")}];
    v8 = [(NSMutableDictionary *)self->_maxTaxonomyNodeLevelBySceneIdentifierBySceneModelIdentifier objectForKeyedSubscript:digest];
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(NSMutableDictionary *)self->_maxTaxonomyNodeLevelBySceneIdentifierBySceneModelIdentifier setObject:v8 forKeyedSubscript:digest];
    }

    v9 = [v8 objectForKeyedSubscript:v7];
    v10 = v9;
    if (v9)
    {
      unsignedIntegerValue = [v9 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = _maxTaxonomyNodeLevel(nodeCopy);
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
      [v8 setObject:v12 forKeyedSubscript:v7];
    }
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (void)enumerateTaxonomyNodesLevelsAndWeightsStartingWithNode:(id)node usingBlock:(id)block
{
  v48 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  blockCopy = block;
  taxonomy = [nodeCopy taxonomy];
  digest = [taxonomy digest];

  if (digest)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(nodeCopy, "extendedSceneClassId")}];
    os_unfair_lock_lock(&self->_taxonomyNodesLevelsAndWeightsLock);
    v11 = [(NSMutableDictionary *)self->_taxonomyNodesLevelsAndWeightsBySceneIdentifierBySceneModelIdentifier objectForKeyedSubscript:digest];
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(NSMutableDictionary *)self->_taxonomyNodesLevelsAndWeightsBySceneIdentifierBySceneModelIdentifier setObject:v11 forKeyedSubscript:digest];
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

            blockCopy[2](blockCopy, *(*(&v38 + 1) + 8 * i));
          }

          v14 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
        }

        while (v14);
      }
    }

    else
    {
      v31 = 0;
      v34 = digest;
      v32 = v11;
      v33 = v10;
      obj = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v11 setObject:? forKeyedSubscript:?];
      v17 = [(CLSInvestigationHelper *)self _maxLevelWithTaxonomyNode:nodeCopy];
      v35 = nodeCopy;
      v18 = [MEMORY[0x277CBEB58] setWithObject:nodeCopy];
      v36 = v17 + 1;
      v19 = v17;
      while (1)
      {
        if ([v18 count] == 1)
        {
          anyObject = [v18 anyObject];
          isRoot = [anyObject isRoot];

          if (isRoot)
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
                (blockCopy)[2](blockCopy, v28);
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

      digest = v34;
      nodeCopy = v35;
      v11 = v32;
      v10 = v33;
      v12 = v31;
    }
  }
}

- (id)parentNodesOfTaxonomyNode:(id)node
{
  nodeCopy = node;
  taxonomy = [nodeCopy taxonomy];
  digest = [taxonomy digest];

  if (digest)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(nodeCopy, "extendedSceneClassId")}];
    os_unfair_lock_lock(&self->_parentTaxonomyNodesLock);
    v8 = [(NSMutableDictionary *)self->_parentTaxonomyNodesBySceneIdentifierBySceneModelIdentifier objectForKeyedSubscript:digest];
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [(NSMutableDictionary *)self->_parentTaxonomyNodesBySceneIdentifierBySceneModelIdentifier setObject:v8 forKeyedSubscript:digest];
    }

    parents = [v8 objectForKeyedSubscript:v7];
    if (!parents)
    {
      parents = [nodeCopy parents];
      [v8 setObject:parents forKeyedSubscript:v7];
    }

    os_unfair_lock_unlock(&self->_parentTaxonomyNodesLock);
  }

  else
  {
    parents = [MEMORY[0x277CBEB98] set];
  }

  return parents;
}

- (id)taxonomyNodeForSceneIdentifier:(unint64_t)identifier sceneModel:(id)model
{
  v14 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  if ([modelCopy isResponsibleForSignalIdentifier:identifier])
  {
    identifier = [modelCopy identifier];
    if (identifier)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:identifier];
      os_unfair_lock_lock(&self->_taxonomyNodesLock);
      v9 = [(NSMutableDictionary *)self->_taxonomyNodeBySceneIdentifierBySceneModelIdentifier objectForKeyedSubscript:identifier];
      if (!v9)
      {
        v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [(NSMutableDictionary *)self->_taxonomyNodeBySceneIdentifierBySceneModelIdentifier setObject:v9 forKeyedSubscript:identifier];
      }

      null = [v9 objectForKeyedSubscript:v8];
      if (!null)
      {
        null = [modelCopy taxonomyNodeForSceneIdentifier:identifier];
        if (!null)
        {
          null = [MEMORY[0x277CBEB68] null];
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v13[0] = 67109120;
            v13[1] = identifier;
            _os_log_error_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "No taxonomy node found for sceneIdentifier %d", v13, 8u);
          }
        }

        [v9 setObject:null forKeyedSubscript:v8];
      }

      null2 = [MEMORY[0x277CBEB68] null];

      if (null == null2)
      {

        null = 0;
      }

      os_unfair_lock_unlock(&self->_taxonomyNodesLock);
    }

    else
    {
      null = 0;
    }
  }

  else
  {
    null = 0;
  }

  return null;
}

- (CLSInvestigationHelper)initWithServiceManager:(id)manager locationCache:(id)cache aoiCache:(id)aoiCache poiCache:(id)poiCache roiCache:(id)roiCache natureCache:(id)natureCache
{
  managerCopy = manager;
  cacheCopy = cache;
  aoiCacheCopy = aoiCache;
  poiCacheCopy = poiCache;
  roiCacheCopy = roiCache;
  natureCacheCopy = natureCache;
  v32.receiver = self;
  v32.super_class = CLSInvestigationHelper;
  v18 = [(CLSInvestigationHelper *)&v32 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_serviceManager, manager);
    objc_storeStrong(&v19->_locationCache, cache);
    objc_storeStrong(&v19->_aoiCache, aoiCache);
    objc_storeStrong(&v19->_poiCache, poiCache);
    objc_storeStrong(&v19->_roiCache, roiCache);
    objc_storeStrong(&v19->_natureCache, natureCache);
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