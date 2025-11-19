@interface CoreDAVExpandPropertiesTask
- (CoreDAVExpandPropertiesTask)initWithPropertiesToFind:(id)a3 atURL:(id)a4 expandedName:(id)a5 expandedNameSpace:(id)a6;
- (id)description;
- (id)parseHints;
- (id)requestBody;
- (void)addPropertyToExpandWithPropertiesToFind:(id)a3 expandedName:(id)a4 expandedNameSpace:(id)a5;
- (void)finishCoreDAVTaskWithError:(id)a3;
@end

@implementation CoreDAVExpandPropertiesTask

- (CoreDAVExpandPropertiesTask)initWithPropertiesToFind:(id)a3 atURL:(id)a4 expandedName:(id)a5 expandedNameSpace:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = CoreDAVExpandPropertiesTask;
  v13 = [(CoreDAVPropertyFindBaseTask *)&v16 initWithPropertiesToFind:0 atURL:a4];
  if (v13)
  {
    v14 = [MEMORY[0x277CBEB58] set];
    [(CoreDAVExpandPropertiesTask *)v13 setPropertiesToExpand:v14];

    [(CoreDAVExpandPropertiesTask *)v13 addPropertyToExpandWithPropertiesToFind:v10 expandedName:v11 expandedNameSpace:v12];
  }

  return v13;
}

- (void)addPropertyToExpandWithPropertiesToFind:(id)a3 expandedName:(id)a4 expandedNameSpace:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [[CoreDAVExpandProperty alloc] initWithPropertiesToFind:v10 expandedName:v9 expandedNameSpace:v8];

  v11 = [(CoreDAVExpandPropertiesTask *)self propertiesToExpand];
  [v11 addObject:v12];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7.receiver = self;
  v7.super_class = CoreDAVExpandPropertiesTask;
  v4 = [(CoreDAVPropertyFindBaseTask *)&v7 description];
  [v3 appendFormat:@"[%@]", v4];

  v5 = [(CoreDAVExpandPropertiesTask *)self propertiesToExpand];
  [v3 appendFormat:@"\n  Number of properties to expand: [%lu]", objc_msgSend(v5, "count")];

  return v3;
}

- (id)requestBody
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(CoreDAVXMLData);
  v4 = [(CoreDAVExpandPropertiesTask *)self propertiesToExpand];
  v5 = [v4 count];

  if (v5)
  {
    [CoreDAVXMLData startElement:v3 inNamespace:"startElement:inNamespace:withAttributes:" withAttributes:?];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [(CoreDAVExpandPropertiesTask *)self propertiesToExpand];
    v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v24)
    {
      v23 = *v31;
      do
      {
        v6 = 0;
        do
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = v6;
          v7 = *(*(&v30 + 1) + 8 * v6);
          v8 = [v7 expandedName];
          v9 = [v7 expandedNameSpace];
          v10 = v3;
          [(CoreDAVXMLData *)v3 startElement:@"property" inNamespace:@"DAV:" withAttributeNamesAndValues:@"name", v8, @"namespace", v9, 0];

          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v11 = [v7 propertiesToFind];
          v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v27;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v27 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v26 + 1) + 8 * i);
                v17 = [v16 name];
                v18 = [v16 nameSpace];
                [(CoreDAVXMLData *)v10 appendElement:@"property" inNamespace:@"DAV:" withStringContent:0 withAttributeNamesAndValues:@"name", v17, @"namespace", v18, 0];
              }

              v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v13);
          }

          v3 = v10;
          [(CoreDAVXMLData *)v10 endElement:@"property" inNamespace:@"DAV:"];
          v6 = v25 + 1;
        }

        while (v25 + 1 != v24);
        v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v24);
    }

    [(CoreDAVXMLData *)v3 endElement:@"expand-property" inNamespace:@"DAV:"];
  }

  v19 = [(CoreDAVXMLData *)v3 data];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)parseHints
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v30 = self;
  obj = [(CoreDAVExpandPropertiesTask *)self propertiesToExpand];
  v33 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v33)
  {
    v32 = *v45;
    do
    {
      v4 = 0;
      do
      {
        if (*v45 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = v4;
        v5 = *(*(&v44 + 1) + 8 * v4);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v6 = [v5 propertiesToFind];
        v7 = [v6 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v41;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v41 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v40 + 1) + 8 * i);
              v12 = MEMORY[0x277CCACA8];
              v13 = [v11 nameSpace];
              v14 = [v11 name];
              v15 = [v12 CDVStringWithNameSpace:v13 andName:v14];

              [v3 setObject:v11 forKey:v15];
            }

            v8 = [v6 countByEnumeratingWithState:&v40 objects:v49 count:16];
          }

          while (v8);
        }

        v4 = v34 + 1;
      }

      while (v34 + 1 != v33);
      v33 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v33);
  }

  v16 = MEMORY[0x277CBEB58];
  v17 = [v3 allValues];
  v18 = [v16 setWithArray:v17];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = [(CoreDAVExpandPropertiesTask *)v30 propertiesToExpand];
  v19 = [v35 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v37;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v37 != v21)
        {
          objc_enumerationMutation(v35);
        }

        v23 = *(*(&v36 + 1) + 8 * j);
        v24 = [CoreDAVItemParserMapping alloc];
        v25 = [v23 expandedNameSpace];
        v26 = [v23 expandedName];
        v27 = [(CoreDAVItemParserMapping *)v24 initWithNameSpace:v25 name:v26 parseClass:objc_opt_class()];

        [v18 addObject:v27];
      }

      v20 = [v35 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v20);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)finishCoreDAVTaskWithError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(CoreDAVPropertyFindBaseTask *)self getTotalFailureError];
  }

  v7 = v6;
  v8.receiver = self;
  v8.super_class = CoreDAVExpandPropertiesTask;
  [(CoreDAVPropertyFindBaseTask *)&v8 finishCoreDAVTaskWithError:v6];
}

@end