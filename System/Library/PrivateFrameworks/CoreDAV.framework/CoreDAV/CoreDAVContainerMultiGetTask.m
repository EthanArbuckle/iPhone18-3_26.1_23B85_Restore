@interface CoreDAVContainerMultiGetTask
- (CoreDAVContainerMultiGetTask)initWithURLs:(id)a3 atContainerURL:(id)a4 appSpecificDataItemClass:(Class)a5;
- (NSSet)allProperties;
- (id)copyDefaultParserForContentType:(id)a3;
- (id)requestBody;
- (void)finishCoreDAVTaskWithError:(id)a3;
@end

@implementation CoreDAVContainerMultiGetTask

- (CoreDAVContainerMultiGetTask)initWithURLs:(id)a3 atContainerURL:(id)a4 appSpecificDataItemClass:(Class)a5
{
  v10 = a3;
  v11 = a4;
  if ([(CoreDAVContainerMultiGetTask *)self isMemberOfClass:objc_opt_class()])
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"CoreDAVContainerMultiGetTask.m" lineNumber:37 description:{@"You instantiated a class that doesn't want to be instantiated.  Please choose a concrete subclass of %@", objc_opt_class()}];

    v13 = 0;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = CoreDAVContainerMultiGetTask;
    v14 = [(CoreDAVTask *)&v17 initWithURL:v11];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_urls, a3);
      if (!a5)
      {
        a5 = objc_opt_class();
      }

      v15->_appSpecificDataItemClass = a5;
    }

    self = v15;
    v13 = self;
  }

  return v13;
}

- (id)requestBody
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(CoreDAVXMLData);
  v27 = [(CoreDAVContainerMultiGetTask *)self copyAdditionalPropElements];
  [(CoreDAVContainerMultiGetTask *)self setAdditionalPropElements:?];
  appSpecificMultiGetNameSpace = self->_appSpecificMultiGetNameSpace;
  if (!appSpecificMultiGetNameSpace)
  {
    appSpecificMultiGetNameSpace = self->_appSpecificNamespace;
  }

  [(CoreDAVXMLData *)v3 startElement:self->_appSpecificMultiGetCommand inNamespace:appSpecificMultiGetNameSpace withAttributeNamesAndValues:0];
  [(CoreDAVXMLData *)v3 startElement:@"prop" inNamespace:@"DAV:" withAttributeNamesAndValues:0];
  [(CoreDAVXMLData *)v3 appendElement:@"getetag" inNamespace:@"DAV:" withStringContent:0 withAttributeNamesAndValues:0];
  [(CoreDAVXMLData *)v3 appendElement:self->_appSpecificDataProp inNamespace:self->_appSpecificNamespace withStringContent:0 withAttributeNamesAndValues:0];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = [(CoreDAVContainerMultiGetTask *)self additionalPropElements];
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        v11 = [v10 name];
        v12 = [v10 nameSpace];
        [(CoreDAVXMLData *)v3 appendElement:v11 inNamespace:v12 withStringContent:0 withAttributeNamesAndValues:0];
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v7);
  }

  [(CoreDAVXMLData *)v3 endElement:@"prop" inNamespace:@"DAV:"];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_urls;
  v13 = [(NSSet *)obj countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v29 + 1) + 8 * j);
        v18 = [v17 CDVRawPath];

        if (v18)
        {
          v19 = [v17 CDVRawPath];
          [(CoreDAVXMLData *)v3 appendElement:@"href" inNamespace:@"DAV:" withStringContent:v19 withAttributeNamesAndValues:0];
        }

        else
        {
          v19 = +[CoreDAVLogging sharedLogging];
          v20 = self;
          WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
          v22 = [v19 logHandleForAccountInfoProvider:WeakRetained];

          if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v38 = v17;
            _os_log_impl(&dword_2452FB000, v22, OS_LOG_TYPE_DEFAULT, "Skipping item URL, as it has no path.  URL %@", buf, 0xCu);
          }

          self = v20;
        }
      }

      v14 = [(NSSet *)obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v14);
  }

  appSpecificNamespace = self->_appSpecificMultiGetNameSpace;
  if (!appSpecificNamespace)
  {
    appSpecificNamespace = self->_appSpecificNamespace;
  }

  [(CoreDAVXMLData *)v3 endElement:self->_appSpecificMultiGetCommand inNamespace:appSpecificNamespace];
  v24 = [(CoreDAVXMLData *)v3 data];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (NSSet)allProperties
{
  v3 = [(CoreDAVContainerMultiGetTask *)self copyAdditionalPropElements];
  v4 = [v3 mutableCopy];

  [v4 CDVAddItemParserMappingWithNameSpace:@"DAV:" name:@"getetag" parseClass:objc_opt_class()];
  [v4 CDVAddItemParserMappingWithNameSpace:self->_appSpecificNamespace name:self->_appSpecificDataProp parseClass:self->_appSpecificDataItemClass];
  v5 = [v4 copy];

  return v5;
}

- (id)copyDefaultParserForContentType:(id)a3
{
  v4 = [CoreDAVXMLParser alloc];
  v5 = objc_opt_class();
  v6 = [(CoreDAVTask *)self url];
  v7 = [(CoreDAVXMLParser *)v4 initWithRootElementNameSpace:@"DAV:" name:@"multistatus" parseClass:v5 baseURL:v6];

  v8 = [[CoreDAVItemParserMapping alloc] initWithNameSpace:@"DAV:" name:@"getetag" parseClass:objc_opt_class()];
  v9 = [[CoreDAVItemParserMapping alloc] initWithNameSpace:self->_appSpecificNamespace name:self->_appSpecificDataProp parseClass:objc_opt_class()];
  v10 = objc_alloc(MEMORY[0x277CBEB58]);
  v11 = [(CoreDAVContainerMultiGetTask *)self additionalPropElements];
  v12 = [v10 initWithSet:v11];

  [v12 addObject:v8];
  [v12 addObject:v9];
  [(CoreDAVXMLParser *)v7 setParseHints:v12];

  return v7;
}

- (void)finishCoreDAVTaskWithError:(id)a3
{
  v73 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 code];
    v7 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v9 = [v7 logHandleForAccountInfoProvider:WeakRetained];

    if (v6 == 1)
    {
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v70 = objc_opt_class();
          v11 = v70;
          v12 = "%{public}@ cancelled";
          v13 = v10;
          v14 = OS_LOG_TYPE_INFO;
          v15 = 12;
LABEL_34:
          _os_log_impl(&dword_2452FB000, v13, v14, v12, buf, v15);

          goto LABEL_35;
        }

        goto LABEL_35;
      }
    }

    else if (v9)
    {
      v44 = v9;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v70 = objc_opt_class();
        v71 = 2112;
        v72 = v5;
        v11 = v70;
        v12 = "%{public}@ failed: %@";
        v13 = v44;
        v14 = OS_LOG_TYPE_DEFAULT;
        v15 = 22;
        goto LABEL_34;
      }

LABEL_35:
    }

    v45 = v5;
    v46 = 0;
    v16 = 0;
    goto LABEL_44;
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v58 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v59 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [(CoreDAVTask *)self rootElement];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v56 = v67 = 0u;
  obj = [v56 responses];
  v62 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
  if (!v62)
  {
    v57 = 0;
    goto LABEL_38;
  }

  v57 = 0;
  v61 = *v65;
  do
  {
    v17 = 0;
    do
    {
      if (*v65 != v61)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v64 + 1) + 8 * v17);
      v19 = [v18 firstHref];
      v20 = [v19 payloadAsFullURL];

      v21 = [v18 status];
      v22 = [v21 payloadAsString];
      v23 = [v22 CDVIsHTTPStatusLineWithStatusCode:404];

      if (v23)
      {
        v24 = +[CoreDAVLogging sharedLogging];
        v25 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v26 = [v24 logHandleForAccountInfoProvider:v25];

        if (v26 && os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v70 = v20;
          _os_log_impl(&dword_2452FB000, v26, OS_LOG_TYPE_DEFAULT, "Got a 404 in response to our multistatus. It looks like the item at %@ has gone away.", buf, 0xCu);
        }

        [(NSSet *)v59 addObject:v20];
      }

      v27 = [v18 successfulPropertiesToValues];
      v28 = v27;
      if (v27)
      {
        v29 = [v27 CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"getetag"];
        v30 = [v29 payloadAsString];

        v31 = [v28 CDVObjectForKeyWithNameSpace:self->_appSpecificNamespace andName:self->_appSpecificDataProp];
        v32 = [v31 payload];

        if (v20)
        {
          [v58 addObject:v20];
        }

        v33 = objc_alloc(self->_appSpecificDataItemClass);
        v34 = [(CoreDAVTask *)self url];
        v35 = [(CoreDAVTask *)self accountInfoProvider];
        v36 = [v33 initWithURL:v20 eTag:v30 dataPayload:v32 inContainerWithURL:v34 withAccountInfoProvider:v35];

        [(CoreDAVContainerMultiGetTask *)self setAdditionalProperties:v28 onDataItem:v36];
        [(NSSet *)v16 addObject:v36];

        goto LABEL_20;
      }

      v37 = [v18 status];
      v38 = [v37 payloadAsString];
      v39 = [v38 CDVIsHTTPStatusLineWithStatusCode:404];

      if ((v39 & 1) == 0)
      {
        v40 = +[CoreDAVLogging sharedLogging];
        v41 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v42 = [v40 logHandleForAccountInfoProvider:v41];

        if (v42 && os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v70 = v18;
          _os_log_impl(&dword_2452FB000, v42, OS_LOG_TYPE_DEFAULT, "Got a multi-status response with no valid property values. Response is %@", buf, 0xCu);
        }

        if (!self->_shouldIgnoreResponseErrors)
        {
          [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:8 userInfo:0];
          v57 = v30 = v57;
LABEL_20:
        }
      }

      ++v17;
    }

    while (v62 != v17);
    v43 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
    v62 = v43;
  }

  while (v43);
LABEL_38:

  v47 = [(NSSet *)v16 count];
  v5 = 0;
  v46 = v59;
  if (v47)
  {
    v48 = v47;
    if (v47 < [(NSSet *)self->_urls count])
    {
      v49 = [(NSSet *)self->_urls mutableCopy];
      [v49 minusSet:v58];
      v50 = [v49 count];
      if (v50 == [(NSSet *)self->_urls count]- v48)
      {
        objc_storeStrong(&self->_missingURLs, v49);
      }
    }
  }

  v45 = v57;
LABEL_44:
  parsedContents = self->_parsedContents;
  self->_parsedContents = v16;
  v52 = v16;

  deletedURLs = self->_deletedURLs;
  self->_deletedURLs = v46;
  v54 = v46;

  self->super._numDownloadedElements = [(NSSet *)v52 count];
  v63.receiver = self;
  v63.super_class = CoreDAVContainerMultiGetTask;
  [(CoreDAVTask *)&v63 finishCoreDAVTaskWithError:v45];

  v55 = *MEMORY[0x277D85DE8];
}

@end