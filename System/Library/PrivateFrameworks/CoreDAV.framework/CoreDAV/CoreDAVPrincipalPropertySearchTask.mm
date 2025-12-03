@interface CoreDAVPrincipalPropertySearchTask
- (CoreDAVPrincipalPropertySearchTask)initWithPropertiesToFind:(id)find atURL:(id)l;
- (id)requestBody;
- (void)finishCoreDAVTaskWithError:(id)error;
@end

@implementation CoreDAVPrincipalPropertySearchTask

- (CoreDAVPrincipalPropertySearchTask)initWithPropertiesToFind:(id)find atURL:(id)l
{
  v5.receiver = self;
  v5.super_class = CoreDAVPrincipalPropertySearchTask;
  result = [(CoreDAVPropertyFindBaseTask *)&v5 initWithPropertiesToFind:find atURL:l];
  if (result)
  {
    result->super.super._depth = 2;
  }

  return result;
}

- (id)requestBody
{
  v32 = *MEMORY[0x277D85DE8];
  propertiesToFind = [(CoreDAVPropertyFindBaseTask *)self propertiesToFind];
  data = [propertiesToFind count];

  if (data)
  {
    v5 = objc_alloc_init(CoreDAVXMLData);
    extraAttributes = [(CoreDAVPrincipalPropertySearchTask *)self extraAttributes];
    [(CoreDAVXMLData *)v5 startElement:@"principal-property-search" inNamespace:@"DAV:" withAttributes:extraAttributes];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    searchItems = [(CoreDAVPrincipalPropertySearchTask *)self searchItems];
    v8 = [searchItems countByEnumeratingWithState:&v26 objects:v31 count:16];
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
            objc_enumerationMutation(searchItems);
          }

          [*(*(&v26 + 1) + 8 * i) write:v5];
        }

        v9 = [searchItems countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
    }

    [(CoreDAVXMLData *)v5 startElement:@"prop" inNamespace:@"DAV:" withAttributeNamesAndValues:0];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    propertiesToFind2 = [(CoreDAVPropertyFindBaseTask *)self propertiesToFind];
    v13 = [propertiesToFind2 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
            objc_enumerationMutation(propertiesToFind2);
          }

          v17 = *(*(&v22 + 1) + 8 * j);
          name = [v17 name];
          nameSpace = [v17 nameSpace];
          [(CoreDAVXMLData *)v5 appendElement:name inNamespace:nameSpace withStringContent:0 withAttributeNamesAndValues:0];
        }

        v14 = [propertiesToFind2 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v14);
    }

    [(CoreDAVXMLData *)v5 endElement:@"prop" inNamespace:@"DAV:"];
    [(CoreDAVXMLData *)v5 endElement:@"principal-property-search" inNamespace:@"DAV:"];
    data = [(CoreDAVXMLData *)v5 data];
  }

  v20 = *MEMORY[0x277D85DE8];

  return data;
}

- (void)finishCoreDAVTaskWithError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    getTotalFailureError = errorCopy;
  }

  else
  {
    getTotalFailureError = [(CoreDAVPropertyFindBaseTask *)self getTotalFailureError];
  }

  v7 = getTotalFailureError;
  v8.receiver = self;
  v8.super_class = CoreDAVPrincipalPropertySearchTask;
  [(CoreDAVPropertyFindBaseTask *)&v8 finishCoreDAVTaskWithError:getTotalFailureError];
}

@end