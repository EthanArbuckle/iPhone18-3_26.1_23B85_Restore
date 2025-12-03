@interface CoreDAVPropFindTask
- (CoreDAVPropFindTask)initWithPropertiesToFind:(id)find atURL:(id)l withDepth:(int)depth;
- (id)requestBody;
- (void)finishCoreDAVTaskWithError:(id)error;
@end

@implementation CoreDAVPropFindTask

- (CoreDAVPropFindTask)initWithPropertiesToFind:(id)find atURL:(id)l withDepth:(int)depth
{
  findCopy = find;
  lCopy = l;
  if (!depth)
  {
    v14 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"The depth parameter must not be CoreDAVDepthNone.  A value representing an actual depth must be specified." userInfo:0];
    objc_exception_throw(v14);
  }

  v10 = lCopy;
  v15.receiver = self;
  v15.super_class = CoreDAVPropFindTask;
  v11 = [(CoreDAVPropertyFindBaseTask *)&v15 initWithPropertiesToFind:findCopy atURL:lCopy];
  v12 = v11;
  if (v11)
  {
    v11->super.super._depth = depth;
  }

  return v12;
}

- (id)requestBody
{
  v28 = *MEMORY[0x277D85DE8];
  propertiesToFind = [(CoreDAVPropertyFindBaseTask *)self propertiesToFind];
  if (propertiesToFind && (v4 = propertiesToFind, -[CoreDAVPropertyFindBaseTask propertiesToFind](self, "propertiesToFind"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6))
  {
    v7 = objc_alloc_init(CoreDAVXMLData);
    [CoreDAVXMLData startElement:v7 inNamespace:"startElement:inNamespace:withAttributeNamesAndValues:" withAttributeNamesAndValues:?];
    [CoreDAVXMLData startElement:v7 inNamespace:"startElement:inNamespace:withAttributeNamesAndValues:" withAttributeNamesAndValues:?];
    v8 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"name" ascending:1 selector:sel_caseInsensitiveCompare_];
    v9 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v8, 0}];
    propertiesToFind2 = [(CoreDAVPropertyFindBaseTask *)self propertiesToFind];
    v11 = [propertiesToFind2 sortedArrayUsingDescriptors:v9];

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
          name = [v17 name];
          nameSpace = [v17 nameSpace];
          [(CoreDAVXMLData *)v7 appendElement:name inNamespace:nameSpace withStringContent:0 withAttributeNamesAndValues:0];
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    [(CoreDAVXMLData *)v7 endElement:@"prop" inNamespace:@"DAV:"];
    [(CoreDAVXMLData *)v7 endElement:@"propfind" inNamespace:@"DAV:"];
    data = [(CoreDAVXMLData *)v7 data];
  }

  else
  {
    data = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return data;
}

- (void)finishCoreDAVTaskWithError:(id)error
{
  errorCopy = error;
  delegate = [(CoreDAVTask *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    [(CoreDAVPropertyFindBaseTask *)self updateMultiStatusFromResponse];
    if (errorCopy)
    {
      getTotalFailureError = errorCopy;
    }

    else
    {
      getTotalFailureError = [(CoreDAVPropertyFindBaseTask *)self getTotalFailureError];
    }

    v8 = getTotalFailureError;
    delegate2 = [(CoreDAVTask *)self delegate];
    multiStatus = [(CoreDAVPropertyFindBaseTask *)self multiStatus];
    orderedResponses = [multiStatus orderedResponses];
    [delegate2 propFindTask:self parsedResponses:orderedResponses error:v8];

    [(CoreDAVTask *)self setDelegate:0];
  }

  v12.receiver = self;
  v12.super_class = CoreDAVPropFindTask;
  [(CoreDAVPropertyFindBaseTask *)&v12 finishCoreDAVTaskWithError:errorCopy];
}

@end