@interface CoreDAVPropFindTask
- (CoreDAVPropFindTask)initWithPropertiesToFind:(id)a3 atURL:(id)a4 withDepth:(int)a5;
- (id)requestBody;
- (void)finishCoreDAVTaskWithError:(id)a3;
@end

@implementation CoreDAVPropFindTask

- (CoreDAVPropFindTask)initWithPropertiesToFind:(id)a3 atURL:(id)a4 withDepth:(int)a5
{
  v8 = a3;
  v9 = a4;
  if (!a5)
  {
    v14 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"The depth parameter must not be CoreDAVDepthNone.  A value representing an actual depth must be specified." userInfo:0];
    objc_exception_throw(v14);
  }

  v10 = v9;
  v15.receiver = self;
  v15.super_class = CoreDAVPropFindTask;
  v11 = [(CoreDAVPropertyFindBaseTask *)&v15 initWithPropertiesToFind:v8 atURL:v9];
  v12 = v11;
  if (v11)
  {
    v11->super.super._depth = a5;
  }

  return v12;
}

- (id)requestBody
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(CoreDAVPropertyFindBaseTask *)self propertiesToFind];
  if (v3 && (v4 = v3, -[CoreDAVPropertyFindBaseTask propertiesToFind](self, "propertiesToFind"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6))
  {
    v7 = objc_alloc_init(CoreDAVXMLData);
    [CoreDAVXMLData startElement:v7 inNamespace:"startElement:inNamespace:withAttributeNamesAndValues:" withAttributeNamesAndValues:?];
    [CoreDAVXMLData startElement:v7 inNamespace:"startElement:inNamespace:withAttributeNamesAndValues:" withAttributeNamesAndValues:?];
    v8 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"name" ascending:1 selector:sel_caseInsensitiveCompare_];
    v9 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v8, 0}];
    v10 = [(CoreDAVPropertyFindBaseTask *)self propertiesToFind];
    v11 = [v10 sortedArrayUsingDescriptors:v9];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          v18 = [v17 name];
          v19 = [v17 nameSpace];
          [(CoreDAVXMLData *)v7 appendElement:v18 inNamespace:v19 withStringContent:0 withAttributeNamesAndValues:0];
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    [(CoreDAVXMLData *)v7 endElement:@"prop" inNamespace:@"DAV:"];
    [(CoreDAVXMLData *)v7 endElement:@"propfind" inNamespace:@"DAV:"];
    v20 = [(CoreDAVXMLData *)v7 data];
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)finishCoreDAVTaskWithError:(id)a3
{
  v4 = a3;
  v5 = [(CoreDAVTask *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    [(CoreDAVPropertyFindBaseTask *)self updateMultiStatusFromResponse];
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = [(CoreDAVPropertyFindBaseTask *)self getTotalFailureError];
    }

    v8 = v7;
    v9 = [(CoreDAVTask *)self delegate];
    v10 = [(CoreDAVPropertyFindBaseTask *)self multiStatus];
    v11 = [v10 orderedResponses];
    [v9 propFindTask:self parsedResponses:v11 error:v8];

    [(CoreDAVTask *)self setDelegate:0];
  }

  v12.receiver = self;
  v12.super_class = CoreDAVPropFindTask;
  [(CoreDAVPropertyFindBaseTask *)&v12 finishCoreDAVTaskWithError:v4];
}

@end