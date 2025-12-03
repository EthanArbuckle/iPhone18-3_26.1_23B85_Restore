@interface CoreDAVBulkChangeTask
- (CoreDAVBulkChangeTask)initWithURL:(id)l checkCTag:(id)tag simple:(BOOL)simple returnChangedData:(BOOL)data uuidsToAddActions:(id)actions hrefsToModDeleteActions:(id)deleteActions;
- (id)additionalHeaderValues;
- (id)copyDefaultParserForContentType:(id)type;
- (void)fillOutDataWithUUIDsToAddActions:(id)actions hrefsToModDeleteActions:(id)deleteActions;
- (void)finishCoreDAVTaskWithError:(id)error;
@end

@implementation CoreDAVBulkChangeTask

- (CoreDAVBulkChangeTask)initWithURL:(id)l checkCTag:(id)tag simple:(BOOL)simple returnChangedData:(BOOL)data uuidsToAddActions:(id)actions hrefsToModDeleteActions:(id)deleteActions
{
  lCopy = l;
  tagCopy = tag;
  if ([(CoreDAVBulkChangeTask *)self isMemberOfClass:objc_opt_class()])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CoreDAVBulkChangeTask.m" lineNumber:44 description:{@"You instantiated a class that doesn't want to be instantiated.  Please choose a concrete subclass of %@", objc_opt_class()}];

    selfCopy = 0;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = CoreDAVBulkChangeTask;
    v17 = [(CoreDAVTask *)&v20 initWithURL:lCopy];
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(&v17->_checkCTag, tag);
      v18->_simple = simple;
      v18->_returnChangedData = data;
    }

    self = v18;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)additionalHeaderValues
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8.receiver = self;
  v8.super_class = CoreDAVBulkChangeTask;
  additionalHeaderValues = [(CoreDAVTask *)&v8 additionalHeaderValues];
  [v3 addEntriesFromDictionary:additionalHeaderValues];

  requestDataContentType = self->_requestDataContentType;
  if (requestDataContentType)
  {
    [v3 setObject:requestDataContentType forKey:@"Content-Type"];
  }

  if (self->_returnChangedData)
  {
    [v3 setObject:@"return-changed-data" forKey:@"X-MobileMe-DAV-Options"];
  }

  if (self->_checkCTag)
  {
    v6 = [MEMORY[0x277CCACA8] CDVPreconditionHeaderValueWithCTag:?];
    if (v6)
    {
      [v3 setObject:v6 forKey:@"If"];
    }
  }

  return v3;
}

- (void)fillOutDataWithUUIDsToAddActions:(id)actions hrefsToModDeleteActions:(id)deleteActions
{
  v66 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  deleteActionsCopy = deleteActions;
  if (self->_pushedData)
  {
    [CoreDAVBulkChangeTask fillOutDataWithUUIDsToAddActions:a2 hrefsToModDeleteActions:self];
  }

  selfCopy = self;
  if (self->_simple)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v10 = actionsCopy;
    v11 = [v10 countByEnumeratingWithState:&v59 objects:v65 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v60;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v60 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [v10 objectForKey:*(*(&v59 + 1) + 8 * i)];
          context = [v15 context];
          dataPayload = [context dataPayload];
          [(NSData *)v9 appendData:dataPayload];
        }

        v12 = [v10 countByEnumeratingWithState:&v59 objects:v65 count:16];
      }

      while (v12);
    }

    pushedData = selfCopy->_pushedData;
    selfCopy->_pushedData = v9;
  }

  else
  {
    v43 = deleteActionsCopy;
    pushedData = objc_alloc_init(CoreDAVXMLData);
    [CoreDAVXMLData startElement:"startElement:inNamespace:withAttributes:" inNamespace:? withAttributes:?];
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v42 = actionsCopy;
    obj = actionsCopy;
    v47 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
    if (v47)
    {
      v45 = *v56;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v56 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v20 = [obj objectForKey:*(*(&v55 + 1) + 8 * j)];
          context2 = [v20 context];
          [(CoreDAVXMLData *)pushedData startElement:@"resource" inNamespace:@"http://me.com/_namespace/" withAttributes:0];
          [(CoreDAVXMLData *)pushedData startElement:@"set" inNamespace:@"DAV:" withAttributes:0];
          [(CoreDAVXMLData *)pushedData startElement:@"prop" inNamespace:@"DAV:" withAttributes:0];
          v22 = objc_alloc(MEMORY[0x277CCACA8]);
          dataPayload2 = [context2 dataPayload];
          v24 = [v22 initWithData:dataPayload2 encoding:4];

          [(CoreDAVXMLData *)pushedData appendElement:selfCopy->_appSpecificDataProp inNamespace:selfCopy->_appSpecificNamespace withStringContentAsCDATA:v24 withAttributeNamesAndValues:0];
          [(CoreDAVXMLData *)pushedData endElement:@"prop" inNamespace:@"DAV:"];
          [(CoreDAVXMLData *)pushedData endElement:@"set" inNamespace:@"DAV:"];
          [(CoreDAVXMLData *)pushedData endElement:@"resource" inNamespace:@"http://me.com/_namespace/"];
        }

        v47 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
      }

      while (v47);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v25 = v43;
    v26 = [v25 countByEnumeratingWithState:&v51 objects:v63 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v52;
      v46 = v25;
      v44 = *v52;
      do
      {
        v29 = 0;
        v48 = v27;
        do
        {
          if (*v52 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v51 + 1) + 8 * v29);
          v31 = [v25 objectForKey:v30];
          [(CoreDAVXMLData *)pushedData startElement:@"resource" inNamespace:@"http://me.com/_namespace/" withAttributes:0];
          cDVRawPath = [v30 CDVRawPath];
          [(CoreDAVXMLData *)pushedData appendElement:@"href" inNamespace:@"DAV:" withStringContent:cDVRawPath withAttributeNamesAndValues:0];

          if ([v31 action] == 2)
          {
            [(CoreDAVXMLData *)pushedData appendElement:@"delete" inNamespace:@"http://me.com/_namespace/" withStringContent:0 withAttributeNamesAndValues:0];
          }

          else
          {
            context3 = [v31 context];
            syncKey = [context3 syncKey];

            if (syncKey)
            {
              [(CoreDAVXMLData *)pushedData startElement:@"if-match" inNamespace:@"http://me.com/_namespace/" withAttributes:0];
              syncKey2 = [context3 syncKey];
              [(CoreDAVXMLData *)pushedData appendElement:@"getetag" inNamespace:@"DAV:" withStringContent:syncKey2 withAttributeNamesAndValues:0];

              [(CoreDAVXMLData *)pushedData endElement:@"if-match" inNamespace:@"http://me.com/_namespace/"];
            }

            [(CoreDAVXMLData *)pushedData startElement:@"set" inNamespace:@"DAV:" withAttributes:0];
            [(CoreDAVXMLData *)pushedData startElement:@"prop" inNamespace:@"DAV:" withAttributes:0];
            v36 = objc_alloc(MEMORY[0x277CCACA8]);
            dataPayload3 = [context3 dataPayload];
            v38 = [v36 initWithData:dataPayload3 encoding:4];

            [(CoreDAVXMLData *)pushedData appendElement:selfCopy->_appSpecificDataProp inNamespace:selfCopy->_appSpecificNamespace withStringContentAsCDATA:v38 withAttributeNamesAndValues:0];
            [(CoreDAVXMLData *)pushedData endElement:@"prop" inNamespace:@"DAV:"];
            [(CoreDAVXMLData *)pushedData endElement:@"set" inNamespace:@"DAV:"];

            v28 = v44;
            v25 = v46;
            v27 = v48;
          }

          [(CoreDAVXMLData *)pushedData endElement:@"resource" inNamespace:@"http://me.com/_namespace/"];

          ++v29;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v51 objects:v63 count:16];
      }

      while (v27);
    }

    [(CoreDAVXMLData *)pushedData endElement:@"multiput" inNamespace:@"http://me.com/_namespace/"];
    data = [(CoreDAVXMLData *)pushedData data];
    v40 = selfCopy->_pushedData;
    selfCopy->_pushedData = data;

    actionsCopy = v42;
    deleteActionsCopy = v43;
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (id)copyDefaultParserForContentType:(id)type
{
  v4 = [CoreDAVXMLParser alloc];
  v5 = objc_opt_class();
  v6 = [(CoreDAVTask *)self url];
  v7 = [(CoreDAVXMLParser *)v4 initWithRootElementNameSpace:@"DAV:" name:@"multistatus" parseClass:v5 baseURL:v6];

  v8 = [[CoreDAVItemParserMapping alloc] initWithNameSpace:@"DAV:" name:@"getetag" parseClass:objc_opt_class()];
  v9 = [[CoreDAVItemParserMapping alloc] initWithNameSpace:@"http://calendarserver.org/ns/" name:@"uid" parseClass:objc_opt_class()];
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v10 addObject:v8];
  [v10 addObject:v9];
  [(CoreDAVXMLParser *)v7 setParseHints:v10];

  return v7;
}

- (void)finishCoreDAVTaskWithError:(id)error
{
  v73 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (!errorCopy)
  {
    responseBodyParser = [(CoreDAVTask *)self responseBodyParser];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      responseBodyParser2 = [(CoreDAVTask *)self responseBodyParser];
      rootElement = [responseBodyParser2 rootElement];
      responseHeaders = [(CoreDAVTask *)self responseHeaders];
      v9 = [responseHeaders CDVObjectForKeyCaseInsensitive:@"CTag"];
      nextCTag = self->_nextCTag;
      self->_nextCTag = v9;

      v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
      bulkChangeResponses = self->_bulkChangeResponses;
      self->_bulkChangeResponses = v11;

      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v45 = rootElement;
      obj = [rootElement responses];
      v50 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
      if (v50)
      {
        v48 = *v67;
        selfCopy = self;
        do
        {
          v13 = 0;
          do
          {
            if (*v67 != v48)
            {
              objc_enumerationMutation(obj);
            }

            v51 = v13;
            v14 = *(*(&v66 + 1) + 8 * v13);
            v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
            status = [v14 status];

            if (status)
            {
              v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCDVNameSpace:@"DAV:" andName:@"status"];
              status2 = [v14 status];
              [v15 setObject:status2 forKey:v17];
            }

            errorItem = [v14 errorItem];

            if (errorItem)
            {
              v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCDVNameSpace:@"DAV:" andName:@"error"];
              errorItem2 = [v14 errorItem];
              [v15 setObject:errorItem2 forKey:v20];
            }

            firstHref = [v14 firstHref];

            if (firstHref)
            {
              v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCDVNameSpace:@"DAV:" andName:@"href"];
              firstHref2 = [v14 firstHref];
              [v15 setObject:firstHref2 forKey:v23];
            }

            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            propStats = [v14 propStats];
            v54 = [propStats countByEnumeratingWithState:&v62 objects:v71 count:16];
            if (v54)
            {
              v53 = *v63;
              do
              {
                v25 = 0;
                do
                {
                  if (*v63 != v53)
                  {
                    objc_enumerationMutation(propStats);
                  }

                  v26 = *(*(&v62 + 1) + 8 * v25);
                  v58 = 0u;
                  v59 = 0u;
                  v60 = 0u;
                  v61 = 0u;
                  v55 = v26;
                  v56 = v25;
                  prop = [v26 prop];
                  extraChildItems = [prop extraChildItems];

                  v29 = [extraChildItems countByEnumeratingWithState:&v58 objects:v70 count:16];
                  if (v29)
                  {
                    v30 = v29;
                    v31 = *v59;
                    do
                    {
                      for (i = 0; i != v30; ++i)
                      {
                        if (*v59 != v31)
                        {
                          objc_enumerationMutation(extraChildItems);
                        }

                        v33 = *(*(&v58 + 1) + 8 * i);
                        v34 = objc_alloc(MEMORY[0x277CCACA8]);
                        nameSpace = [v33 nameSpace];
                        name = [v33 name];
                        v37 = [v34 initWithCDVNameSpace:nameSpace andName:name];

                        [v15 setObject:v33 forKey:v37];
                      }

                      v30 = [extraChildItems countByEnumeratingWithState:&v58 objects:v70 count:16];
                    }

                    while (v30);
                  }

                  status3 = [v55 status];

                  if (status3)
                  {
                    v39 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCDVNameSpace:@"DAV:" andName:@"status"];
                    status4 = [v55 status];
                    [v15 setObject:status4 forKey:v39];
                  }

                  errorItem3 = [v55 errorItem];

                  if (errorItem3)
                  {
                    v42 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCDVNameSpace:@"DAV:" andName:@"error"];
                    errorItem4 = [v55 errorItem];
                    [v15 setObject:errorItem4 forKey:v42];
                  }

                  v25 = v56 + 1;
                }

                while (v56 + 1 != v54);
                v54 = [propStats countByEnumeratingWithState:&v62 objects:v71 count:16];
              }

              while (v54);
            }

            self = selfCopy;
            [(NSMutableSet *)selfCopy->_bulkChangeResponses addObject:v15];

            v13 = v51 + 1;
          }

          while (v51 + 1 != v50);
          v50 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
        }

        while (v50);
      }

      errorCopy = 0;
    }
  }

  v57.receiver = self;
  v57.super_class = CoreDAVBulkChangeTask;
  [(CoreDAVTask *)&v57 finishCoreDAVTaskWithError:errorCopy];

  v44 = *MEMORY[0x277D85DE8];
}

- (void)fillOutDataWithUUIDsToAddActions:(uint64_t)a1 hrefsToModDeleteActions:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CoreDAVBulkChangeTask.m" lineNumber:92 description:{@"%s _pushedData is not nil. self = %@", "-[CoreDAVBulkChangeTask fillOutDataWithUUIDsToAddActions:hrefsToModDeleteActions:]", a2}];
}

@end