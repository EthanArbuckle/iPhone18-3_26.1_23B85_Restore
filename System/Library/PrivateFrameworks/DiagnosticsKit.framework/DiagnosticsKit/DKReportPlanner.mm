@interface DKReportPlanner
+ (DKReportPlanner)plannerWithReportGeneratorRegistry:(id)registry;
- (DKReportPlanner)initWithReportGeneratorRegistry:(id)registry;
- (id)_resolveComponentIdentityManifest:(id)manifest;
- (id)requestGroupsForPredicateManifest:(id)manifest;
@end

@implementation DKReportPlanner

+ (DKReportPlanner)plannerWithReportGeneratorRegistry:(id)registry
{
  registryCopy = registry;
  v4 = [[DKReportPlanner alloc] initWithReportGeneratorRegistry:registryCopy];

  return v4;
}

- (DKReportPlanner)initWithReportGeneratorRegistry:(id)registry
{
  registryCopy = registry;
  v9.receiver = self;
  v9.super_class = DKReportPlanner;
  v6 = [(DKReportPlanner *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_registry, registry);
  }

  return v7;
}

- (id)requestGroupsForPredicateManifest:(id)manifest
{
  v39 = *MEMORY[0x277D85DE8];
  manifestCopy = manifest;
  array = [MEMORY[0x277CBEB18] array];
  selfCopy = self;
  v22 = manifestCopy;
  [(DKReportPlanner *)self _resolveComponentIdentityManifest:manifestCopy];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v36 = 0u;
  v27 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v27)
  {
    v25 = *v34;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v33 + 1) + 8 * i);
        registry = [(DKReportPlanner *)selfCopy registry];
        v8 = [registry generatorForComponentIdentity:v6];

        if (v8)
        {
          v28 = i;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v9 = array;
          v10 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v30;
LABEL_9:
            v13 = 0;
            while (1)
            {
              if (*v30 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v29 + 1) + 8 * v13);
              requestLookupByGenerator = [v14 requestLookupByGenerator];
              allKeys = [requestLookupByGenerator allKeys];
              v17 = [allKeys count];

              if (v17 <= 3 && ([v14 addComponentIdentity:v6 usingGenerator:v8] & 1) != 0)
              {
                break;
              }

              if (v11 == ++v13)
              {
                v11 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
                if (v11)
                {
                  goto LABEL_9;
                }

                goto LABEL_16;
              }
            }
          }

          else
          {
LABEL_16:

            resources = [v6 resources];
            v19 = [DKReportingConcurrentRequestGroup initWithResources:resources];

            [v19 addComponentIdentity:v6 usingGenerator:v8];
            [v9 addObject:v19];
            v9 = v19;
          }

          i = v28;
        }
      }

      v27 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v27);
  }

  v20 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)_resolveComponentIdentityManifest:(id)manifest
{
  v35 = *MEMORY[0x277D85DE8];
  manifestCopy = manifest;
  v5 = [MEMORY[0x277CBEB58] set];
  registry = [(DKReportPlanner *)self registry];
  components = [registry components];
  v8 = [components mutableCopy];

  if (manifestCopy)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v21 = manifestCopy;
    obj = manifestCopy;
    v24 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v24)
    {
      v23 = *v30;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          v10 = v5;
          if (*v30 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v29 + 1) + 8 * i);
          v12 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v8, "count", v21)}];
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v13 = v8;
          v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v26;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v26 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v25 + 1) + 8 * j);
                if ([v11 matchesComponentIdentity:v18])
                {
                  [v12 addObject:v18];
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v15);
          }

          [v13 minusSet:v12];
          v5 = v10;
          [v10 unionSet:v12];
        }

        v24 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v24);
    }

    manifestCopy = v21;
  }

  else
  {
    [v5 unionSet:v8];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v5;
}

@end