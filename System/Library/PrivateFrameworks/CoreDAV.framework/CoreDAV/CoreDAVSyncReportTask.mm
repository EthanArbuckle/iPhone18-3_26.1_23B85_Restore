@interface CoreDAVSyncReportTask
- (BOOL)hadUnexpectedChangeOfSyncTokenWithZeroResponses;
- (CoreDAVSyncReportTask)initWithPropertiesToFind:(id)find atURL:(id)l withDepth:(int)depth previousSyncToken:(id)token;
- (id)copyDefaultParserForContentType:(id)type;
- (id)description;
- (id)notFoundHREFs;
- (id)requestBody;
- (void)finishCoreDAVTaskWithError:(id)error;
@end

@implementation CoreDAVSyncReportTask

- (CoreDAVSyncReportTask)initWithPropertiesToFind:(id)find atURL:(id)l withDepth:(int)depth previousSyncToken:(id)token
{
  findCopy = find;
  lCopy = l;
  tokenCopy = token;
  if (!depth)
  {
    v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"The depth parameter must not be CoreDAVDepthNone.  A value representing an actual depth must be specified." userInfo:0];
    objc_exception_throw(v17);
  }

  v13 = tokenCopy;
  v18.receiver = self;
  v18.super_class = CoreDAVSyncReportTask;
  v14 = [(CoreDAVPropertyFindBaseTask *)&v18 initWithPropertiesToFind:findCopy atURL:lCopy];
  v15 = v14;
  if (v14)
  {
    v14->super.super._depth = depth;
    objc_storeStrong(&v14->_previousSyncToken, token);
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
  propertiesToFind = [(CoreDAVPropertyFindBaseTask *)self propertiesToFind];
  if (propertiesToFind && (v4 = propertiesToFind, -[CoreDAVPropertyFindBaseTask propertiesToFind](self, "propertiesToFind"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6))
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
    propertiesToFind2 = [(CoreDAVPropertyFindBaseTask *)self propertiesToFind];
    v10 = [propertiesToFind2 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(propertiesToFind2);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          name = [v14 name];
          nameSpace = [v14 nameSpace];
          [(CoreDAVXMLData *)v7 appendElement:name inNamespace:nameSpace withStringContent:0 withAttributeNamesAndValues:0];
        }

        v11 = [propertiesToFind2 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    [(CoreDAVXMLData *)v7 endElement:@"prop" inNamespace:@"DAV:"];
    [(CoreDAVXMLData *)v7 endElement:@"sync-collection" inNamespace:@"DAV:"];
    data = [(CoreDAVXMLData *)v7 data];
  }

  else
  {
    data = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return data;
}

- (id)notFoundHREFs
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  multiStatus = [(CoreDAVPropertyFindBaseTask *)self multiStatus];
  responses = [multiStatus responses];

  v6 = [responses countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v30;
    v10 = 0x278E30000uLL;
    *&v7 = 138412290;
    v27 = v7;
    v28 = responses;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(responses);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        status = [v12 status];
        payloadAsString = [status payloadAsString];
        v15 = [payloadAsString CDVIsHTTPStatusLineWithStatusCode:404];

        if (v15)
        {
          firstHref = [v12 firstHref];
          payloadAsFullURL = [firstHref payloadAsFullURL];

          if (payloadAsFullURL)
          {
            [v3 addObject:payloadAsFullURL];
          }

          else
          {
            sharedLogging = [*(v10 + 2968) sharedLogging];
            v19 = [sharedLogging logHandleForAccountInfoProvider:0];
            v20 = v19;
            if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              firstHref2 = [v12 firstHref];
              [firstHref2 payloadAsString];
              v22 = v3;
              v24 = v23 = v10;
              *buf = v27;
              v34 = v24;
              _os_log_impl(&dword_2452FB000, v20, OS_LOG_TYPE_ERROR, "The server gave us an invalid URL. Ignoring it. %@", buf, 0xCu);

              v10 = v23;
              v3 = v22;
              responses = v28;
            }
          }
        }
      }

      v8 = [responses countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v8);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)copyDefaultParserForContentType:(id)type
{
  v4 = [CoreDAVXMLParser alloc];
  v5 = objc_opt_class();
  v6 = [(CoreDAVTask *)self url];
  v7 = [(CoreDAVXMLParser *)v4 initWithRootElementNameSpace:@"DAV:" name:@"multistatus" parseClass:v5 baseURL:v6];

  parseHints = [(CoreDAVPropertyFindBaseTask *)self parseHints];
  [(CoreDAVXMLParser *)v7 setParseHints:parseHints];

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

  multiStatus = [(CoreDAVPropertyFindBaseTask *)self multiStatus];
  responses = [multiStatus responses];
  v4 = [responses count] == 0;

  return v4;
}

- (void)finishCoreDAVTaskWithError:(id)error
{
  v33 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  [(CoreDAVPropertyFindBaseTask *)self updateMultiStatusFromResponse];
  multiStatus = [(CoreDAVPropertyFindBaseTask *)self multiStatus];
  syncToken = [multiStatus syncToken];
  nextSyncToken = self->_nextSyncToken;
  self->_nextSyncToken = syncToken;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  multiStatus2 = [(CoreDAVPropertyFindBaseTask *)self multiStatus];
  responses = [multiStatus2 responses];

  v10 = [responses countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v26 = errorCopy;
    v11 = *v29;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(responses);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        firstHref = [v13 firstHref];
        payloadAsFullURL = [firstHref payloadAsFullURL];
        v16 = [(CoreDAVTask *)self url];
        v17 = [payloadAsFullURL isEqual:v16];

        if (v17)
        {
          v10 = v13;
          goto LABEL_11;
        }
      }

      v10 = [responses countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

LABEL_11:
    errorCopy = v26;
  }

  errorItem = [v10 errorItem];
  numberOfMatchesWithinLimits = [errorItem numberOfMatchesWithinLimits];
  self->_moreToSync = numberOfMatchesWithinLimits != 0;

  errorItem2 = [v10 errorItem];
  validSyncToken = [errorItem2 validSyncToken];
  self->_wasInvalidSyncToken = validSyncToken != 0;

  responseBodyParser = [(CoreDAVTask *)self responseBodyParser];
  rootError = [responseBodyParser rootError];
  validSyncToken2 = [rootError validSyncToken];
  self->_wasInvalidSyncToken |= validSyncToken2 != 0;

  v27.receiver = self;
  v27.super_class = CoreDAVSyncReportTask;
  [(CoreDAVPropertyFindBaseTask *)&v27 finishCoreDAVTaskWithError:errorCopy];

  v25 = *MEMORY[0x277D85DE8];
}

@end