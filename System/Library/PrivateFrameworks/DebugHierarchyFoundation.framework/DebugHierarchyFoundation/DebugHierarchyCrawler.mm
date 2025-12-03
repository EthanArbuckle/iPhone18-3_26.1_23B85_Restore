@interface DebugHierarchyCrawler
+ (id)crawlerWithRequestContext:(id)context knownObjectsMap:(id)map;
- (DebugHierarchyCrawler)initWithRequestContext:(id)context knownObjectsMap:(id)map;
- (DebugHierarchyCrawlerOptions)options;
- (id)_entryPointClasses;
- (void)crawlEntryPointClasses;
@end

@implementation DebugHierarchyCrawler

+ (id)crawlerWithRequestContext:(id)context knownObjectsMap:(id)map
{
  mapCopy = map;
  contextCopy = context;
  v8 = [[self alloc] initWithRequestContext:contextCopy knownObjectsMap:mapCopy];

  return v8;
}

- (DebugHierarchyCrawler)initWithRequestContext:(id)context knownObjectsMap:(id)map
{
  contextCopy = context;
  mapCopy = map;
  v12.receiver = self;
  v12.super_class = DebugHierarchyCrawler;
  v9 = [(DebugHierarchyCrawler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_knownObjectsMap, map);
    objc_storeStrong(&v10->_requestContext, context);
  }

  return v10;
}

- (void)crawlEntryPointClasses
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(DebugHierarchyCrawler *)self _entryPointClasses];
  v17 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v17)
  {
    v16 = *v25;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v24 + 1) + 8 * i);
        v4 = [DebugHierarchyEntryPointProtocolHelper debugHierarchyGroupingIDsOnClass:v3];
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v5 = v4;
        v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v6)
        {
          v7 = *v21;
          do
          {
            for (j = 0; j != v6; j = j + 1)
            {
              if (*v21 != v7)
              {
                objc_enumerationMutation(v5);
              }

              v9 = *(*(&v20 + 1) + 8 * j);
              options = [(DebugHierarchyCrawler *)self options];
              if (options)
              {
                options2 = [(DebugHierarchyCrawler *)self options];
                v12 = [options2 shouldCrawlGroupWithID:v9];

                if (!v12)
                {
                  continue;
                }
              }

              v19 = 0;
              v13 = [DebugHierarchyEntryPointProtocolHelper debugHierarchyObjectsInGroupWithID:v9 outOptions:&v19 onEntryPointClass:v3];
              v14 = v19;
              [(DebugHierarchyCrawler *)self enumerateDebugHierarchyObjects:v13 inGroupWithID:v9 options:v14 asDirectChildren:1 belowParent:0];
            }

            v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v6);
        }
      }

      v17 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v17);
  }
}

- (DebugHierarchyCrawlerOptions)options
{
  requestContext = [(DebugHierarchyCrawler *)self requestContext];
  request = [requestContext request];
  crawlerOptions = [request crawlerOptions];

  return crawlerOptions;
}

- (id)_entryPointClasses
{
  v2 = DebugHierarchyEntryPointClasses();
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([DebugHierarchyEntryPointProtocolHelper classImplementsRequiredEntryPointMethods:v9, v12])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

@end