@interface CoreDAVMultiPutTask
- (CoreDAVMultiPutTask)initWithURL:(id)a3 checkCTag:(id)a4 uuidsToAddActions:(id)a5 hrefsToModDeleteActions:(id)a6;
- (id)additionalHeaderValues;
- (id)copyDefaultParserForContentType:(id)a3;
- (void)fillOutDataWithUUIDsToAddActions:(id)a3 hrefsToModDeleteActions:(id)a4;
- (void)finishCoreDAVTaskWithError:(id)a3;
@end

@implementation CoreDAVMultiPutTask

- (CoreDAVMultiPutTask)initWithURL:(id)a3 checkCTag:(id)a4 uuidsToAddActions:(id)a5 hrefsToModDeleteActions:(id)a6
{
  v9 = a3;
  v10 = a4;
  if ([(CoreDAVMultiPutTask *)self isMemberOfClass:objc_opt_class()])
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"CoreDAVMultiPutTask.m" lineNumber:43 description:{@"You instantiated a class that doesn't want to be instantiated.  Please choose a concrete subclass of %@", objc_opt_class()}];

    v12 = 0;
  }

  else
  {
    v29.receiver = self;
    v29.super_class = CoreDAVMultiPutTask;
    v13 = [(CoreDAVTask *)&v29 initWithURL:v9];
    if (v13)
    {
      v14 = objc_alloc_init(CoreDAVXMLData);
      pushedData = v13->_pushedData;
      v13->_pushedData = v14;

      objc_storeStrong(&v13->_checkCTag, a4);
      v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
      uuidToHREF = v13->_uuidToHREF;
      v13->_uuidToHREF = v16;

      v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
      hrefToETag = v13->_hrefToETag;
      v13->_hrefToETag = v18;

      v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
      uuidToErrorItems = v13->_uuidToErrorItems;
      v13->_uuidToErrorItems = v20;

      v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
      hrefToErrorItems = v13->_hrefToErrorItems;
      v13->_hrefToErrorItems = v22;

      v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
      uuidToStatus = v13->_uuidToStatus;
      v13->_uuidToStatus = v24;

      v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
      hrefToStatus = v13->_hrefToStatus;
      v13->_hrefToStatus = v26;
    }

    self = v13;
    v12 = self;
  }

  return v12;
}

- (id)additionalHeaderValues
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7.receiver = self;
  v7.super_class = CoreDAVMultiPutTask;
  v4 = [(CoreDAVTask *)&v7 additionalHeaderValues];
  [v3 addEntriesFromDictionary:v4];

  if (self->_checkCTag)
  {
    v5 = [MEMORY[0x277CCACA8] CDVPreconditionHeaderValueWithCTag:?];
    if (v5)
    {
      [v3 setObject:v5 forKey:@"If"];
    }
  }

  return v3;
}

- (void)fillOutDataWithUUIDsToAddActions:(id)a3 hrefsToModDeleteActions:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v21 = a4;
  [CoreDAVXMLData startElement:"startElement:inNamespace:withAttributes:" inNamespace:? withAttributes:?];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v26 = v6;
  obj = [v6 allKeys];
  v27 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v27)
  {
    v23 = *v37;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v30 = [v26 objectForKey:*(*(&v36 + 1) + 8 * i)];
        v28 = [v30 context];
        [(CoreDAVXMLData *)self->_pushedData startElement:@"resource" inNamespace:@"http://me.com/_namespace/" withAttributes:0];
        [(CoreDAVXMLData *)self->_pushedData startElement:@"set" inNamespace:@"DAV:" withAttributes:0];
        [(CoreDAVXMLData *)self->_pushedData startElement:@"prop" inNamespace:@"DAV:" withAttributes:0];
        v8 = objc_alloc(MEMORY[0x277CCACA8]);
        v9 = [v28 dataPayload];
        v10 = [v8 initWithData:v9 encoding:4];

        [(CoreDAVXMLData *)self->_pushedData appendElement:self->_appSpecificDataProp inNamespace:self->_appSpecificNamespace withStringContentAsCDATA:v10 withAttributeNamesAndValues:0];
        [(CoreDAVXMLData *)self->_pushedData endElement:@"prop" inNamespace:@"DAV:"];
        [(CoreDAVXMLData *)self->_pushedData endElement:@"set" inNamespace:@"DAV:"];
        [(CoreDAVXMLData *)self->_pushedData endElement:@"resource" inNamespace:@"http://me.com/_namespace/"];
      }

      v27 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v27);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = v21;
  v24 = [v21 allKeys];
  v31 = [v24 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v31)
  {
    v29 = *v33;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(v24);
        }

        v13 = *(*(&v32 + 1) + 8 * j);
        v14 = [v11 objectForKey:v13];
        [(CoreDAVXMLData *)self->_pushedData startElement:@"resource" inNamespace:@"http://me.com/_namespace/" withAttributes:0];
        pushedData = self->_pushedData;
        v16 = [v13 CDVRawPath];
        [(CoreDAVXMLData *)pushedData appendElement:@"href" inNamespace:@"DAV:" withStringContent:v16 withAttributeNamesAndValues:0];

        if ([v14 action] == 2)
        {
          [(CoreDAVXMLData *)self->_pushedData appendElement:@"delete" inNamespace:@"http://me.com/_namespace/" withStringContent:0 withAttributeNamesAndValues:0];
        }

        else
        {
          v25 = [v14 context];
          [(CoreDAVXMLData *)self->_pushedData startElement:@"set" inNamespace:@"DAV:" withAttributes:0];
          [(CoreDAVXMLData *)self->_pushedData startElement:@"prop" inNamespace:@"DAV:" withAttributes:0];
          v17 = objc_alloc(MEMORY[0x277CCACA8]);
          v18 = [v25 dataPayload];
          v19 = [v17 initWithData:v18 encoding:4];

          v11 = v21;
          [(CoreDAVXMLData *)self->_pushedData appendElement:self->_appSpecificDataProp inNamespace:self->_appSpecificNamespace withStringContentAsCDATA:v19 withAttributeNamesAndValues:0];

          [(CoreDAVXMLData *)self->_pushedData endElement:@"prop" inNamespace:@"DAV:"];
          [(CoreDAVXMLData *)self->_pushedData endElement:@"set" inNamespace:@"DAV:"];
        }

        [(CoreDAVXMLData *)self->_pushedData endElement:@"resource" inNamespace:@"http://me.com/_namespace/"];
      }

      v31 = [v24 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v31);
  }

  [(CoreDAVXMLData *)self->_pushedData endElement:@"multiput" inNamespace:@"http://me.com/_namespace/"];
  v20 = *MEMORY[0x277D85DE8];
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
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = [(CoreDAVTask *)self responseBodyParser];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v35 = [(CoreDAVTask *)self responseBodyParser];
      v7 = [v35 rootElement];
      v8 = [(CoreDAVTask *)self responseHeaders];
      v9 = [v8 CDVObjectForKeyCaseInsensitive:@"ctag"];
      nextCTag = self->_nextCTag;
      self->_nextCTag = v9;

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v34 = v7;
      obj = [v7 responses];
      v11 = self;
      v39 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (!v39)
      {
        goto LABEL_43;
      }

      v38 = *v45;
      v36 = self;
      while (1)
      {
        v12 = 0;
        do
        {
          if (*v45 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v44 + 1) + 8 * v12);
          v14 = [v13 firstHref];
          v15 = [v14 payloadAsFullURL];

          v16 = [v13 successfulPropertiesToValues];
          v41 = [v16 CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"getetag"];
          v17 = [v41 payloadAsString];
          v40 = [v16 CDVObjectForKeyWithNameSpace:@"http://calendarserver.org/ns/" andName:@"uid"];
          v18 = [v40 payloadAsString];
          v19 = [v13 status];
          v20 = [v19 payloadAsString];

          if (v18)
          {
            v21 = v15 == 0;
          }

          else
          {
            v21 = 1;
          }

          if (!v21)
          {
            [(NSMutableDictionary *)v11->_uuidToHREF setObject:v15 forKey:v18];
          }

          if (v15)
          {
            v22 = v17 == 0;
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
            if (v18)
            {
              goto LABEL_19;
            }
          }

          else
          {
            [(NSMutableDictionary *)v11->_hrefToETag setObject:v17 forKey:v15];
            if (v18)
            {
LABEL_19:
              if (!v20)
              {
                goto LABEL_27;
              }

              goto LABEL_23;
            }
          }

          v23 = [v13 serverUID];
          v18 = [v23 payloadAsString];

          if (!v20)
          {
            goto LABEL_27;
          }

LABEL_23:
          if (v18)
          {
            [(NSMutableDictionary *)v11->_uuidToStatus setObject:v20 forKey:v18];
          }

          if (v15)
          {
            [(NSMutableDictionary *)v11->_hrefToStatus setObject:v20 forKey:v15];
          }

LABEL_27:
          v24 = [v13 errorItem];
          v25 = v24;
          if (!v24)
          {
            goto LABEL_38;
          }

          v26 = [v24 ctagOkay];

          if (v26)
          {
            v27 = +[CoreDAVLogging sharedLogging];
            WeakRetained = objc_loadWeakRetained(&v11->super._accountInfoProvider);
            v29 = [v27 logHandleForAccountInfoProvider:WeakRetained];

            if (v29 && os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_2452FB000, v29, OS_LOG_TYPE_INFO, "Found a ctag-ok error item, marking our ctag as invalid", buf, 2u);
            }

            v11 = v36;
            v30 = v36->_nextCTag;
            v36->_nextCTag = 0;
          }

          if (v18)
          {
            if (!v15)
            {
              goto LABEL_36;
            }

LABEL_35:
            [(NSMutableDictionary *)v11->_hrefToErrorItems setObject:v25 forKey:v15];
            goto LABEL_36;
          }

          v31 = [v25 uid];
          v18 = [v31 payloadAsString];

          if (v15)
          {
            goto LABEL_35;
          }

LABEL_36:
          if (v18)
          {
            [(NSMutableDictionary *)v11->_uuidToErrorItems setObject:v25 forKey:v18];
          }

LABEL_38:

          ++v12;
        }

        while (v39 != v12);
        v32 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
        v39 = v32;
        if (!v32)
        {
LABEL_43:

          self = v11;
          v4 = 0;
          break;
        }
      }
    }
  }

  v42.receiver = self;
  v42.super_class = CoreDAVMultiPutTask;
  [(CoreDAVTask *)&v42 finishCoreDAVTaskWithError:v4];

  v33 = *MEMORY[0x277D85DE8];
}

@end