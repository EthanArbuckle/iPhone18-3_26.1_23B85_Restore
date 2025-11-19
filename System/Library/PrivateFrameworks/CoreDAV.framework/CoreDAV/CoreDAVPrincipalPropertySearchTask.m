@interface CoreDAVPrincipalPropertySearchTask
- (CoreDAVPrincipalPropertySearchTask)initWithPropertiesToFind:(id)a3 atURL:(id)a4;
- (id)requestBody;
- (void)finishCoreDAVTaskWithError:(id)a3;
@end

@implementation CoreDAVPrincipalPropertySearchTask

- (CoreDAVPrincipalPropertySearchTask)initWithPropertiesToFind:(id)a3 atURL:(id)a4
{
  v5.receiver = self;
  v5.super_class = CoreDAVPrincipalPropertySearchTask;
  result = [(CoreDAVPropertyFindBaseTask *)&v5 initWithPropertiesToFind:a3 atURL:a4];
  if (result)
  {
    result->super.super._depth = 2;
  }

  return result;
}

- (id)requestBody
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(CoreDAVPropertyFindBaseTask *)self propertiesToFind];
  v4 = [v3 count];

  if (v4)
  {
    v5 = objc_alloc_init(CoreDAVXMLData);
    v6 = [(CoreDAVPrincipalPropertySearchTask *)self extraAttributes];
    [(CoreDAVXMLData *)v5 startElement:@"principal-property-search" inNamespace:@"DAV:" withAttributes:v6];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = [(CoreDAVPrincipalPropertySearchTask *)self searchItems];
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v26 + 1) + 8 * i) write:v5];
        }

        v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
    }

    [(CoreDAVXMLData *)v5 startElement:@"prop" inNamespace:@"DAV:" withAttributeNamesAndValues:0];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = [(CoreDAVPropertyFindBaseTask *)self propertiesToFind];
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * j);
          v18 = [v17 name];
          v19 = [v17 nameSpace];
          [(CoreDAVXMLData *)v5 appendElement:v18 inNamespace:v19 withStringContent:0 withAttributeNamesAndValues:0];
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v14);
    }

    [(CoreDAVXMLData *)v5 endElement:@"prop" inNamespace:@"DAV:"];
    [(CoreDAVXMLData *)v5 endElement:@"principal-property-search" inNamespace:@"DAV:"];
    v4 = [(CoreDAVXMLData *)v5 data];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v4;
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
  v8.super_class = CoreDAVPrincipalPropertySearchTask;
  [(CoreDAVPropertyFindBaseTask *)&v8 finishCoreDAVTaskWithError:v6];
}

@end