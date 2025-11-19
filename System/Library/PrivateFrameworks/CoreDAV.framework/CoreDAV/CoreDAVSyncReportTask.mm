@interface CoreDAVSyncReportTask
- (BOOL)hadUnexpectedChangeOfSyncTokenWithZeroResponses;
- (CoreDAVSyncReportTask)initWithPropertiesToFind:(id)a3 atURL:(id)a4 withDepth:(int)a5 previousSyncToken:(id)a6;
- (id)copyDefaultParserForContentType:(id)a3;
- (id)description;
- (id)notFoundHREFs;
- (id)requestBody;
- (void)finishCoreDAVTaskWithError:(id)a3;
@end

@implementation CoreDAVSyncReportTask

- (CoreDAVSyncReportTask)initWithPropertiesToFind:(id)a3 atURL:(id)a4 withDepth:(int)a5 previousSyncToken:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!a5)
  {
    v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"The depth parameter must not be CoreDAVDepthNone.  A value representing an actual depth must be specified." userInfo:0];
    objc_exception_throw(v17);
  }

  v13 = v12;
  v18.receiver = self;
  v18.super_class = CoreDAVSyncReportTask;
  v14 = [(CoreDAVPropertyFindBaseTask *)&v18 initWithPropertiesToFind:v10 atURL:v11];
  v15 = v14;
  if (v14)
  {
    v14->super.super._depth = a5;
    objc_storeStrong(&v14->_previousSyncToken, a6);
  }

  return v15;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v6.receiver = self;
  v6.super_class = CoreDAVSyncReportTask;
  v4 = [(CoreDAVPropertyFindBaseTask *)&v6 description];
  [v3 appendFormat:@"%@", v4];

  [v3 appendFormat:@"\n  Previous Sync Token: [%@]", self->_previousSyncToken];

  return v3;
}

- (id)requestBody
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(CoreDAVPropertyFindBaseTask *)self propertiesToFind];
  if (v3 && (v4 = v3, -[CoreDAVPropertyFindBaseTask propertiesToFind](self, "propertiesToFind"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6))
  {
    v7 = objc_alloc_init(CoreDAVXMLData);
    [CoreDAVXMLData startElement:v7 inNamespace:"startElement:inNamespace:withAttributeNamesAndValues:" withAttributeNamesAndValues:?];
    [(CoreDAVXMLData *)v7 appendElement:@"sync-token" inNamespace:@"DAV:" withStringContent:self->_previousSyncToken withAttributeNamesAndValues:0];
    v8 = [objc_opt_class() stringFromDepth:self->super.super._depth];
    if (v8)
    {
      [(CoreDAVXMLData *)v7 appendElement:@"sync-level" inNamespace:@"DAV:" withStringContent:v8 withAttributeNamesAndValues:0];
    }

    [(CoreDAVXMLData *)v7 startElement:@"prop" inNamespace:@"DAV:" withAttributeNamesAndValues:0];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [(CoreDAVPropertyFindBaseTask *)self propertiesToFind];
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v14 name];
          v16 = [v14 nameSpace];
          [(CoreDAVXMLData *)v7 appendElement:v15 inNamespace:v16 withStringContent:0 withAttributeNamesAndValues:0];
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    [(CoreDAVXMLData *)v7 endElement:@"prop" inNamespace:@"DAV:"];
    [(CoreDAVXMLData *)v7 endElement:@"sync-collection" inNamespace:@"DAV:"];
    v17 = [(CoreDAVXMLData *)v7 data];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)notFoundHREFs
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = [(CoreDAVPropertyFindBaseTask *)self multiStatus];
  v5 = [v4 responses];

  v6 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v30;
    v10 = 0x278E30000uLL;
    *&v7 = 138412290;
    v27 = v7;
    v28 = v5;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v13 = [v12 status];
        v14 = [v13 payloadAsString];
        v15 = [v14 CDVIsHTTPStatusLineWithStatusCode:404];

        if (v15)
        {
          v16 = [v12 firstHref];
          v17 = [v16 payloadAsFullURL];

          if (v17)
          {
            [v3 addObject:v17];
          }

          else
          {
            v18 = [*(v10 + 2968) sharedLogging];
            v19 = [v18 logHandleForAccountInfoProvider:0];
            v20 = v19;
            if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v21 = [v12 firstHref];
              [v21 payloadAsString];
              v22 = v3;
              v24 = v23 = v10;
              *buf = v27;
              v34 = v24;
              _os_log_impl(&dword_2452FB000, v20, OS_LOG_TYPE_ERROR, "The server gave us an invalid URL. Ignoring it. %@", buf, 0xCu);

              v10 = v23;
              v3 = v22;
              v5 = v28;
            }
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v8);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)copyDefaultParserForContentType:(id)a3
{
  v4 = [CoreDAVXMLParser alloc];
  v5 = objc_opt_class();
  v6 = [(CoreDAVTask *)self url];
  v7 = [(CoreDAVXMLParser *)v4 initWithRootElementNameSpace:@"DAV:" name:@"multistatus" parseClass:v5 baseURL:v6];

  v8 = [(CoreDAVPropertyFindBaseTask *)self parseHints];
  [(CoreDAVXMLParser *)v7 setParseHints:v8];

  return v7;
}

- (BOOL)hadUnexpectedChangeOfSyncTokenWithZeroResponses
{
  if (!self->_previousSyncToken)
  {
    return 0;
  }

  nextSyncToken = self->_nextSyncToken;
  if (!nextSyncToken || [(NSString *)nextSyncToken isEqualToString:?])
  {
    return 0;
  }

  v6 = [(CoreDAVPropertyFindBaseTask *)self multiStatus];
  v7 = [v6 responses];
  v4 = [v7 count] == 0;

  return v4;
}

- (void)finishCoreDAVTaskWithError:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(CoreDAVPropertyFindBaseTask *)self updateMultiStatusFromResponse];
  v5 = [(CoreDAVPropertyFindBaseTask *)self multiStatus];
  v6 = [v5 syncToken];
  nextSyncToken = self->_nextSyncToken;
  self->_nextSyncToken = v6;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = [(CoreDAVPropertyFindBaseTask *)self multiStatus];
  v9 = [v8 responses];

  v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v26 = v4;
    v11 = *v29;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = [v13 firstHref];
        v15 = [v14 payloadAsFullURL];
        v16 = [(CoreDAVTask *)self url];
        v17 = [v15 isEqual:v16];

        if (v17)
        {
          v10 = v13;
          goto LABEL_11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

LABEL_11:
    v4 = v26;
  }

  v18 = [v10 errorItem];
  v19 = [v18 numberOfMatchesWithinLimits];
  self->_moreToSync = v19 != 0;

  v20 = [v10 errorItem];
  v21 = [v20 validSyncToken];
  self->_wasInvalidSyncToken = v21 != 0;

  v22 = [(CoreDAVTask *)self responseBodyParser];
  v23 = [v22 rootError];
  v24 = [v23 validSyncToken];
  self->_wasInvalidSyncToken |= v24 != 0;

  v27.receiver = self;
  v27.super_class = CoreDAVSyncReportTask;
  [(CoreDAVPropertyFindBaseTask *)&v27 finishCoreDAVTaskWithError:v4];

  v25 = *MEMORY[0x277D85DE8];
}

@end