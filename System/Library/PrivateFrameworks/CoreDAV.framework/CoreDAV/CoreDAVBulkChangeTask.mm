@interface CoreDAVBulkChangeTask
- (CoreDAVBulkChangeTask)initWithURL:(id)a3 checkCTag:(id)a4 simple:(BOOL)a5 returnChangedData:(BOOL)a6 uuidsToAddActions:(id)a7 hrefsToModDeleteActions:(id)a8;
- (id)additionalHeaderValues;
- (id)copyDefaultParserForContentType:(id)a3;
- (void)fillOutDataWithUUIDsToAddActions:(id)a3 hrefsToModDeleteActions:(id)a4;
- (void)finishCoreDAVTaskWithError:(id)a3;
@end

@implementation CoreDAVBulkChangeTask

- (CoreDAVBulkChangeTask)initWithURL:(id)a3 checkCTag:(id)a4 simple:(BOOL)a5 returnChangedData:(BOOL)a6 uuidsToAddActions:(id)a7 hrefsToModDeleteActions:(id)a8
{
  v13 = a3;
  v14 = a4;
  if ([(CoreDAVBulkChangeTask *)self isMemberOfClass:objc_opt_class()])
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"CoreDAVBulkChangeTask.m" lineNumber:44 description:{@"You instantiated a class that doesn't want to be instantiated.  Please choose a concrete subclass of %@", objc_opt_class()}];

    v16 = 0;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = CoreDAVBulkChangeTask;
    v17 = [(CoreDAVTask *)&v20 initWithURL:v13];
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(&v17->_checkCTag, a4);
      v18->_simple = a5;
      v18->_returnChangedData = a6;
    }

    self = v18;
    v16 = self;
  }

  return v16;
}

- (id)additionalHeaderValues
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8.receiver = self;
  v8.super_class = CoreDAVBulkChangeTask;
  v4 = [(CoreDAVTask *)&v8 additionalHeaderValues];
  [v3 addEntriesFromDictionary:v4];

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

- (void)fillOutDataWithUUIDsToAddActions:(id)a3 hrefsToModDeleteActions:(id)a4
{
  v66 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (self->_pushedData)
  {
    [CoreDAVBulkChangeTask fillOutDataWithUUIDsToAddActions:a2 hrefsToModDeleteActions:self];
  }

  v49 = self;
  if (self->_simple)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v10 = v7;
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
          v16 = [v15 context];
          v17 = [v16 dataPayload];
          [(NSData *)v9 appendData:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v59 objects:v65 count:16];
      }

      while (v12);
    }

    pushedData = v49->_pushedData;
    v49->_pushedData = v9;
  }

  else
  {
    v43 = v8;
    pushedData = objc_alloc_init(CoreDAVXMLData);
    [CoreDAVXMLData startElement:"startElement:inNamespace:withAttributes:" inNamespace:? withAttributes:?];
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v42 = v7;
    obj = v7;
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
          v21 = [v20 context];
          [(CoreDAVXMLData *)pushedData startElement:@"resource" inNamespace:@"http://me.com/_namespace/" withAttributes:0];
          [(CoreDAVXMLData *)pushedData startElement:@"set" inNamespace:@"DAV:" withAttributes:0];
          [(CoreDAVXMLData *)pushedData startElement:@"prop" inNamespace:@"DAV:" withAttributes:0];
          v22 = objc_alloc(MEMORY[0x277CCACA8]);
          v23 = [v21 dataPayload];
          v24 = [v22 initWithData:v23 encoding:4];

          [(CoreDAVXMLData *)pushedData appendElement:v49->_appSpecificDataProp inNamespace:v49->_appSpecificNamespace withStringContentAsCDATA:v24 withAttributeNamesAndValues:0];
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
          v32 = [v30 CDVRawPath];
          [(CoreDAVXMLData *)pushedData appendElement:@"href" inNamespace:@"DAV:" withStringContent:v32 withAttributeNamesAndValues:0];

          if ([v31 action] == 2)
          {
            [(CoreDAVXMLData *)pushedData appendElement:@"delete" inNamespace:@"http://me.com/_namespace/" withStringContent:0 withAttributeNamesAndValues:0];
          }

          else
          {
            v33 = [v31 context];
            v34 = [v33 syncKey];

            if (v34)
            {
              [(CoreDAVXMLData *)pushedData startElement:@"if-match" inNamespace:@"http://me.com/_namespace/" withAttributes:0];
              v35 = [v33 syncKey];
              [(CoreDAVXMLData *)pushedData appendElement:@"getetag" inNamespace:@"DAV:" withStringContent:v35 withAttributeNamesAndValues:0];

              [(CoreDAVXMLData *)pushedData endElement:@"if-match" inNamespace:@"http://me.com/_namespace/"];
            }

            [(CoreDAVXMLData *)pushedData startElement:@"set" inNamespace:@"DAV:" withAttributes:0];
            [(CoreDAVXMLData *)pushedData startElement:@"prop" inNamespace:@"DAV:" withAttributes:0];
            v36 = objc_alloc(MEMORY[0x277CCACA8]);
            v37 = [v33 dataPayload];
            v38 = [v36 initWithData:v37 encoding:4];

            [(CoreDAVXMLData *)pushedData appendElement:v49->_appSpecificDataProp inNamespace:v49->_appSpecificNamespace withStringContentAsCDATA:v38 withAttributeNamesAndValues:0];
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
    v39 = [(CoreDAVXMLData *)pushedData data];
    v40 = v49->_pushedData;
    v49->_pushedData = v39;

    v7 = v42;
    v8 = v43;
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (id)copyDefaultParserForContentType:(id)a3
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

- (void)finishCoreDAVTaskWithError:(id)a3
{
  v73 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = [(CoreDAVTask *)self responseBodyParser];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v46 = [(CoreDAVTask *)self responseBodyParser];
      v7 = [v46 rootElement];
      v8 = [(CoreDAVTask *)self responseHeaders];
      v9 = [v8 CDVObjectForKeyCaseInsensitive:@"CTag"];
      nextCTag = self->_nextCTag;
      self->_nextCTag = v9;

      v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
      bulkChangeResponses = self->_bulkChangeResponses;
      self->_bulkChangeResponses = v11;

      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v45 = v7;
      obj = [v7 responses];
      v50 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
      if (v50)
      {
        v48 = *v67;
        v49 = self;
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
            v16 = [v14 status];

            if (v16)
            {
              v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCDVNameSpace:@"DAV:" andName:@"status"];
              v18 = [v14 status];
              [v15 setObject:v18 forKey:v17];
            }

            v19 = [v14 errorItem];

            if (v19)
            {
              v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCDVNameSpace:@"DAV:" andName:@"error"];
              v21 = [v14 errorItem];
              [v15 setObject:v21 forKey:v20];
            }

            v22 = [v14 firstHref];

            if (v22)
            {
              v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCDVNameSpace:@"DAV:" andName:@"href"];
              v24 = [v14 firstHref];
              [v15 setObject:v24 forKey:v23];
            }

            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v52 = [v14 propStats];
            v54 = [v52 countByEnumeratingWithState:&v62 objects:v71 count:16];
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
                    objc_enumerationMutation(v52);
                  }

                  v26 = *(*(&v62 + 1) + 8 * v25);
                  v58 = 0u;
                  v59 = 0u;
                  v60 = 0u;
                  v61 = 0u;
                  v55 = v26;
                  v56 = v25;
                  v27 = [v26 prop];
                  v28 = [v27 extraChildItems];

                  v29 = [v28 countByEnumeratingWithState:&v58 objects:v70 count:16];
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
                          objc_enumerationMutation(v28);
                        }

                        v33 = *(*(&v58 + 1) + 8 * i);
                        v34 = objc_alloc(MEMORY[0x277CCACA8]);
                        v35 = [v33 nameSpace];
                        v36 = [v33 name];
                        v37 = [v34 initWithCDVNameSpace:v35 andName:v36];

                        [v15 setObject:v33 forKey:v37];
                      }

                      v30 = [v28 countByEnumeratingWithState:&v58 objects:v70 count:16];
                    }

                    while (v30);
                  }

                  v38 = [v55 status];

                  if (v38)
                  {
                    v39 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCDVNameSpace:@"DAV:" andName:@"status"];
                    v40 = [v55 status];
                    [v15 setObject:v40 forKey:v39];
                  }

                  v41 = [v55 errorItem];

                  if (v41)
                  {
                    v42 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCDVNameSpace:@"DAV:" andName:@"error"];
                    v43 = [v55 errorItem];
                    [v15 setObject:v43 forKey:v42];
                  }

                  v25 = v56 + 1;
                }

                while (v56 + 1 != v54);
                v54 = [v52 countByEnumeratingWithState:&v62 objects:v71 count:16];
              }

              while (v54);
            }

            self = v49;
            [(NSMutableSet *)v49->_bulkChangeResponses addObject:v15];

            v13 = v51 + 1;
          }

          while (v51 + 1 != v50);
          v50 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
        }

        while (v50);
      }

      v4 = 0;
    }
  }

  v57.receiver = self;
  v57.super_class = CoreDAVBulkChangeTask;
  [(CoreDAVTask *)&v57 finishCoreDAVTaskWithError:v4];

  v44 = *MEMORY[0x277D85DE8];
}

- (void)fillOutDataWithUUIDsToAddActions:(uint64_t)a1 hrefsToModDeleteActions:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CoreDAVBulkChangeTask.m" lineNumber:92 description:{@"%s _pushedData is not nil. self = %@", "-[CoreDAVBulkChangeTask fillOutDataWithUUIDsToAddActions:hrefsToModDeleteActions:]", a2}];
}

@end