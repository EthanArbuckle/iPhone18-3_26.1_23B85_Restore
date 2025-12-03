@interface CoreDAVMultiPutTask
- (CoreDAVMultiPutTask)initWithURL:(id)l checkCTag:(id)tag uuidsToAddActions:(id)actions hrefsToModDeleteActions:(id)deleteActions;
- (id)additionalHeaderValues;
- (id)copyDefaultParserForContentType:(id)type;
- (void)fillOutDataWithUUIDsToAddActions:(id)actions hrefsToModDeleteActions:(id)deleteActions;
- (void)finishCoreDAVTaskWithError:(id)error;
@end

@implementation CoreDAVMultiPutTask

- (CoreDAVMultiPutTask)initWithURL:(id)l checkCTag:(id)tag uuidsToAddActions:(id)actions hrefsToModDeleteActions:(id)deleteActions
{
  lCopy = l;
  tagCopy = tag;
  if ([(CoreDAVMultiPutTask *)self isMemberOfClass:objc_opt_class()])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CoreDAVMultiPutTask.m" lineNumber:43 description:{@"You instantiated a class that doesn't want to be instantiated.  Please choose a concrete subclass of %@", objc_opt_class()}];

    selfCopy = 0;
  }

  else
  {
    v29.receiver = self;
    v29.super_class = CoreDAVMultiPutTask;
    v13 = [(CoreDAVTask *)&v29 initWithURL:lCopy];
    if (v13)
    {
      v14 = objc_alloc_init(CoreDAVXMLData);
      pushedData = v13->_pushedData;
      v13->_pushedData = v14;

      objc_storeStrong(&v13->_checkCTag, tag);
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
    selfCopy = self;
  }

  return selfCopy;
}

- (id)additionalHeaderValues
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7.receiver = self;
  v7.super_class = CoreDAVMultiPutTask;
  additionalHeaderValues = [(CoreDAVTask *)&v7 additionalHeaderValues];
  [v3 addEntriesFromDictionary:additionalHeaderValues];

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

- (void)fillOutDataWithUUIDsToAddActions:(id)actions hrefsToModDeleteActions:(id)deleteActions
{
  v42 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  deleteActionsCopy = deleteActions;
  [CoreDAVXMLData startElement:"startElement:inNamespace:withAttributes:" inNamespace:? withAttributes:?];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v26 = actionsCopy;
  obj = [actionsCopy allKeys];
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
        context = [v30 context];
        [(CoreDAVXMLData *)self->_pushedData startElement:@"resource" inNamespace:@"http://me.com/_namespace/" withAttributes:0];
        [(CoreDAVXMLData *)self->_pushedData startElement:@"set" inNamespace:@"DAV:" withAttributes:0];
        [(CoreDAVXMLData *)self->_pushedData startElement:@"prop" inNamespace:@"DAV:" withAttributes:0];
        v8 = objc_alloc(MEMORY[0x277CCACA8]);
        dataPayload = [context dataPayload];
        v10 = [v8 initWithData:dataPayload encoding:4];

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
  v11 = deleteActionsCopy;
  allKeys = [deleteActionsCopy allKeys];
  v31 = [allKeys countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v31)
  {
    v29 = *v33;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v32 + 1) + 8 * j);
        v14 = [v11 objectForKey:v13];
        [(CoreDAVXMLData *)self->_pushedData startElement:@"resource" inNamespace:@"http://me.com/_namespace/" withAttributes:0];
        pushedData = self->_pushedData;
        cDVRawPath = [v13 CDVRawPath];
        [(CoreDAVXMLData *)pushedData appendElement:@"href" inNamespace:@"DAV:" withStringContent:cDVRawPath withAttributeNamesAndValues:0];

        if ([v14 action] == 2)
        {
          [(CoreDAVXMLData *)self->_pushedData appendElement:@"delete" inNamespace:@"http://me.com/_namespace/" withStringContent:0 withAttributeNamesAndValues:0];
        }

        else
        {
          context2 = [v14 context];
          [(CoreDAVXMLData *)self->_pushedData startElement:@"set" inNamespace:@"DAV:" withAttributes:0];
          [(CoreDAVXMLData *)self->_pushedData startElement:@"prop" inNamespace:@"DAV:" withAttributes:0];
          v17 = objc_alloc(MEMORY[0x277CCACA8]);
          dataPayload2 = [context2 dataPayload];
          v19 = [v17 initWithData:dataPayload2 encoding:4];

          v11 = deleteActionsCopy;
          [(CoreDAVXMLData *)self->_pushedData appendElement:self->_appSpecificDataProp inNamespace:self->_appSpecificNamespace withStringContentAsCDATA:v19 withAttributeNamesAndValues:0];

          [(CoreDAVXMLData *)self->_pushedData endElement:@"prop" inNamespace:@"DAV:"];
          [(CoreDAVXMLData *)self->_pushedData endElement:@"set" inNamespace:@"DAV:"];
        }

        [(CoreDAVXMLData *)self->_pushedData endElement:@"resource" inNamespace:@"http://me.com/_namespace/"];
      }

      v31 = [allKeys countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v31);
  }

  [(CoreDAVXMLData *)self->_pushedData endElement:@"multiput" inNamespace:@"http://me.com/_namespace/"];
  v20 = *MEMORY[0x277D85DE8];
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
  v49 = *MEMORY[0x277D85DE8];
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
      v9 = [responseHeaders CDVObjectForKeyCaseInsensitive:@"ctag"];
      nextCTag = self->_nextCTag;
      self->_nextCTag = v9;

      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v34 = rootElement;
      obj = [rootElement responses];
      selfCopy = self;
      v39 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (!v39)
      {
        goto LABEL_43;
      }

      v38 = *v45;
      selfCopy2 = self;
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
          firstHref = [v13 firstHref];
          payloadAsFullURL = [firstHref payloadAsFullURL];

          successfulPropertiesToValues = [v13 successfulPropertiesToValues];
          v41 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"getetag"];
          payloadAsString = [v41 payloadAsString];
          v40 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:@"http://calendarserver.org/ns/" andName:@"uid"];
          payloadAsString2 = [v40 payloadAsString];
          status = [v13 status];
          payloadAsString3 = [status payloadAsString];

          if (payloadAsString2)
          {
            v21 = payloadAsFullURL == 0;
          }

          else
          {
            v21 = 1;
          }

          if (!v21)
          {
            [(NSMutableDictionary *)selfCopy->_uuidToHREF setObject:payloadAsFullURL forKey:payloadAsString2];
          }

          if (payloadAsFullURL)
          {
            v22 = payloadAsString == 0;
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
            if (payloadAsString2)
            {
              goto LABEL_19;
            }
          }

          else
          {
            [(NSMutableDictionary *)selfCopy->_hrefToETag setObject:payloadAsString forKey:payloadAsFullURL];
            if (payloadAsString2)
            {
LABEL_19:
              if (!payloadAsString3)
              {
                goto LABEL_27;
              }

              goto LABEL_23;
            }
          }

          serverUID = [v13 serverUID];
          payloadAsString2 = [serverUID payloadAsString];

          if (!payloadAsString3)
          {
            goto LABEL_27;
          }

LABEL_23:
          if (payloadAsString2)
          {
            [(NSMutableDictionary *)selfCopy->_uuidToStatus setObject:payloadAsString3 forKey:payloadAsString2];
          }

          if (payloadAsFullURL)
          {
            [(NSMutableDictionary *)selfCopy->_hrefToStatus setObject:payloadAsString3 forKey:payloadAsFullURL];
          }

LABEL_27:
          errorItem = [v13 errorItem];
          v25 = errorItem;
          if (!errorItem)
          {
            goto LABEL_38;
          }

          ctagOkay = [errorItem ctagOkay];

          if (ctagOkay)
          {
            v27 = +[CoreDAVLogging sharedLogging];
            WeakRetained = objc_loadWeakRetained(&selfCopy->super._accountInfoProvider);
            v29 = [v27 logHandleForAccountInfoProvider:WeakRetained];

            if (v29 && os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_2452FB000, v29, OS_LOG_TYPE_INFO, "Found a ctag-ok error item, marking our ctag as invalid", buf, 2u);
            }

            selfCopy = selfCopy2;
            v30 = selfCopy2->_nextCTag;
            selfCopy2->_nextCTag = 0;
          }

          if (payloadAsString2)
          {
            if (!payloadAsFullURL)
            {
              goto LABEL_36;
            }

LABEL_35:
            [(NSMutableDictionary *)selfCopy->_hrefToErrorItems setObject:v25 forKey:payloadAsFullURL];
            goto LABEL_36;
          }

          v31 = [v25 uid];
          payloadAsString2 = [v31 payloadAsString];

          if (payloadAsFullURL)
          {
            goto LABEL_35;
          }

LABEL_36:
          if (payloadAsString2)
          {
            [(NSMutableDictionary *)selfCopy->_uuidToErrorItems setObject:v25 forKey:payloadAsString2];
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

          self = selfCopy;
          errorCopy = 0;
          break;
        }
      }
    }
  }

  v42.receiver = self;
  v42.super_class = CoreDAVMultiPutTask;
  [(CoreDAVTask *)&v42 finishCoreDAVTaskWithError:errorCopy];

  v33 = *MEMORY[0x277D85DE8];
}

@end