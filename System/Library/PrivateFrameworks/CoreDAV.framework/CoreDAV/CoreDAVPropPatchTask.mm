@interface CoreDAVPropPatchTask
- (CoreDAVPropPatchTask)initWithPropertiesToSet:(id)a3 andRemove:(id)a4 atURL:(id)a5;
- (id)additionalHeaderValues;
- (id)copyDefaultParserForContentType:(id)a3;
- (id)description;
- (id)requestBody;
- (void)finishCoreDAVTaskWithError:(id)a3;
- (void)setPriorOrderedURL:(id)a3;
@end

@implementation CoreDAVPropPatchTask

- (CoreDAVPropPatchTask)initWithPropertiesToSet:(id)a3 andRemove:(id)a4 atURL:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!(v9 | v10) || ((v12 = v11, !v9) || ![v9 count]) && (!v10 || !objc_msgSend(v10, "count")))
  {
    v16 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"The 'setElements' set or the 'removeElements' set should be non-nil and non-empty" userInfo:0];
    objc_exception_throw(v16);
  }

  v17.receiver = self;
  v17.super_class = CoreDAVPropPatchTask;
  v13 = [(CoreDAVTask *)&v17 initWithURL:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_propPatchSetElements, a3);
    objc_storeStrong(&v14->_propPatchRemoveElements, a4);
  }

  return v14;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v15.receiver = self;
  v15.super_class = CoreDAVPropPatchTask;
  v4 = [(CoreDAVActionBackedTask *)&v15 description];
  [v3 appendFormat:@"[%@ ", v4];

  v5 = [(CoreDAVPropPatchTask *)self propPatchSetElements];
  if (v5)
  {
    v6 = [(CoreDAVPropPatchTask *)self propPatchSetElements];
    [v3 appendFormat:@"| Number of properties to set: [%lu]", objc_msgSend(v6, "count")];
  }

  else
  {
    [v3 appendFormat:@"| Number of properties to set: [%lu]", 0];
  }

  v7 = [(CoreDAVPropPatchTask *)self propPatchRemoveElements];
  if (v7)
  {
    v8 = [(CoreDAVPropPatchTask *)self propPatchRemoveElements];
    [v3 appendFormat:@"| Number of properties to remove: [%lu]", objc_msgSend(v8, "count")];
  }

  else
  {
    [v3 appendFormat:@"| Number of properties to remove: [%lu]", 0];
  }

  v9 = +[CoreDAVLogging sharedLogging];
  v10 = [v9 shouldLogAtLevel:7 forAccountInfoProvider:0];

  if (v10)
  {
    v11 = [(CoreDAVPropPatchTask *)self requestBody];
    v12 = [v11 bytes];
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v12 length:objc_msgSend(v11 encoding:{"length"), 4}];
    [v3 appendFormat:@"\n  Request body: [%@]", v13];
  }

  [v3 appendFormat:@"]"];

  return v3;
}

- (id)additionalHeaderValues
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11.receiver = self;
  v11.super_class = CoreDAVPropPatchTask;
  v4 = [(CoreDAVTask *)&v11 additionalHeaderValues];
  [v3 addEntriesFromDictionary:v4];

  if (self->_sendOrder)
  {
    v5 = [(NSURL *)self->_priorOrderedURL CDVRawLastPathComponent];
    if ([v5 length])
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = CDVRelativeOrderHeaderString();
      v8 = [v6 stringWithFormat:@"%@%@", v7, v5];
    }

    else
    {
      v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_absoluteOrder];
      v8 = [v9 stringValue];

      if (!v8)
      {
LABEL_6:

        goto LABEL_7;
      }
    }

    [v3 setObject:v8 forKey:@"Position"];
    goto LABEL_6;
  }

LABEL_7:

  return v3;
}

- (id)requestBody
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(CoreDAVXMLData);
  [(CoreDAVXMLData *)v3 setShouldAddFormattingSpaces:0];
  [(CoreDAVXMLData *)v3 startElement:@"propertyupdate" inNamespace:@"DAV:" withAttributeNamesAndValues:0];
  v4 = [(CoreDAVPropPatchTask *)self propPatchSetElements];
  if (v4)
  {
    v5 = v4;
    v6 = [(CoreDAVPropPatchTask *)self propPatchSetElements];
    v7 = [v6 count];

    if (v7)
    {
      [(CoreDAVXMLData *)v3 startElement:@"set" inNamespace:@"DAV:" withAttributeNamesAndValues:0];
      [(CoreDAVXMLData *)v3 startElement:@"prop" inNamespace:@"DAV:" withAttributeNamesAndValues:0];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v8 = [(CoreDAVPropPatchTask *)self propPatchSetElements];
      v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v30;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v30 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v29 + 1) + 8 * i) write:v3];
          }

          v10 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v10);
      }

      [(CoreDAVXMLData *)v3 endElement:@"prop" inNamespace:@"DAV:"];
      [(CoreDAVXMLData *)v3 endElement:@"set" inNamespace:@"DAV:"];
    }
  }

  v13 = [(CoreDAVPropPatchTask *)self propPatchRemoveElements];
  if (v13)
  {
    v14 = v13;
    v15 = [(CoreDAVPropPatchTask *)self propPatchRemoveElements];
    v16 = [v15 count];

    if (v16)
    {
      [(CoreDAVXMLData *)v3 startElement:@"remove" inNamespace:@"DAV:" withAttributeNamesAndValues:0];
      [(CoreDAVXMLData *)v3 startElement:@"prop" inNamespace:@"DAV:" withAttributeNamesAndValues:0];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v17 = [(CoreDAVPropPatchTask *)self propPatchRemoveElements];
      v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v26;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v26 != v20)
            {
              objc_enumerationMutation(v17);
            }

            [*(*(&v25 + 1) + 8 * j) write:v3];
          }

          v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v19);
      }

      [(CoreDAVXMLData *)v3 endElement:@"prop" inNamespace:@"DAV:"];
      [(CoreDAVXMLData *)v3 endElement:@"remove" inNamespace:@"DAV:"];
    }
  }

  [(CoreDAVXMLData *)v3 endElement:@"propertyupdate" inNamespace:@"DAV:"];
  v22 = [(CoreDAVXMLData *)v3 data];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)copyDefaultParserForContentType:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([CoreDAVXMLParser canHandleContentType:v4])
  {
    v5 = [CoreDAVXMLParser alloc];
    v6 = objc_opt_class();
    v7 = [(CoreDAVTask *)self url];
    v8 = [(CoreDAVXMLParser *)v5 initWithRootElementNameSpace:@"DAV:" name:@"multistatus" parseClass:v6 baseURL:v7];

    [(CoreDAVXMLParser *)v8 setParseHints:0];
  }

  else
  {
    v9 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super.super._accountInfoProvider);
    v11 = [v9 logHandleForAccountInfoProvider:WeakRetained];

    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_2452FB000, v11, OS_LOG_TYPE_ERROR, "Refusing to parse response to PROPPATCH because of content-type: [%@].", buf, 0xCu);
    }

    v14.receiver = self;
    v14.super_class = CoreDAVPropPatchTask;
    v8 = [(CoreDAVTask *)&v14 copyDefaultParserForContentType:v4];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)finishCoreDAVTaskWithError:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 code];
    v7 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super.super._accountInfoProvider);
    v9 = [v7 logHandleForAccountInfoProvider:WeakRetained];

    if (v6 == 1)
    {
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v49 = objc_opt_class();
          v11 = v49;
          v12 = "%{public}@ cancelled";
          v13 = v10;
          v14 = OS_LOG_TYPE_INFO;
          v15 = 12;
LABEL_11:
          _os_log_impl(&dword_2452FB000, v13, v14, v12, buf, v15);

          goto LABEL_12;
        }

        goto LABEL_12;
      }
    }

    else if (v9)
    {
      v17 = v9;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v49 = objc_opt_class();
        v50 = 2112;
        v51 = v5;
        v11 = v49;
        v12 = "%{public}@ failed: %@";
        v13 = v17;
        v14 = OS_LOG_TYPE_ERROR;
        v15 = 22;
        goto LABEL_11;
      }

LABEL_12:
    }

    v18 = v5;
LABEL_14:
    v19 = v18;
    goto LABEL_27;
  }

  v16 = [(CoreDAVTask *)self responseBodyParser];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v20 = [(CoreDAVTask *)self simulated];

    if (!v20)
    {
      v42 = +[CoreDAVLogging sharedLogging];
      v43 = objc_loadWeakRetained(&self->super.super._accountInfoProvider);
      v44 = [v42 logHandleForAccountInfoProvider:v43];

      if (v44)
      {
        v45 = v44;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = [(CoreDAVTask *)self responseBodyParser];
          *buf = 138412290;
          v49 = v46;
          _os_log_impl(&dword_2452FB000, v45, OS_LOG_TYPE_ERROR, "Unexpected parse response object for PROPPATCH: [%@].", buf, 0xCu);
        }
      }

      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:3 userInfo:0];
      goto LABEL_14;
    }
  }

  if ([(CoreDAVTask *)self simulated])
  {
    v21 = [(CoreDAVTask *)self simulatedRootElement];
  }

  else
  {
    v22 = [(CoreDAVTask *)self responseBodyParser];
    v21 = [v22 rootElement];
  }

  v23 = [v21 responses];
  v24 = [v23 anyObject];
  [(CoreDAVPropPatchTask *)self setResponseItem:v24];

  v25 = [(CoreDAVPropPatchTask *)self responseItem];
  LODWORD(v24) = [v25 hasPropertyError];

  if (!v24)
  {
    goto LABEL_25;
  }

  v26 = +[CoreDAVLogging sharedLogging];
  v27 = objc_loadWeakRetained(&self->super.super._accountInfoProvider);
  v28 = [v26 logHandleForAccountInfoProvider:v27];

  if (v28)
  {
    v29 = v28;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [(CoreDAVPropPatchTask *)self responseItem];
      *buf = 138412290;
      v49 = v30;
      _os_log_impl(&dword_2452FB000, v29, OS_LOG_TYPE_DEFAULT, "There were some failures changing properties, according to the following response: [%@].", buf, 0xCu);
    }
  }

  v31 = [(CoreDAVPropPatchTask *)self responseItem];
  v32 = [v31 successfulPropertiesToValues];
  v33 = [v32 count];

  if (!v33)
  {
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:2 userInfo:0];
  }

  else
  {
LABEL_25:
    v19 = 0;
  }

LABEL_27:
  self->super.super._numDownloadedElements = [0 count];
  if (v19)
  {
    v34 = v19;

    v5 = v34;
  }

  v35 = [(CoreDAVTask *)self delegate];
  v36 = objc_opt_respondsToSelector();

  if (v36)
  {
    v37 = [(CoreDAVPropPatchTask *)self responseItem];

    if (v37)
    {
      v38 = MEMORY[0x277CBEA60];
      v39 = [(CoreDAVPropPatchTask *)self responseItem];
      v37 = [v38 arrayWithObject:v39];
    }

    v40 = [(CoreDAVTask *)self delegate];
    [v40 propPatchTask:self parsedResponses:v37 error:v19];

    [(CoreDAVTask *)self setDelegate:0];
  }

  v47.receiver = self;
  v47.super_class = CoreDAVPropPatchTask;
  [(CoreDAVTask *)&v47 finishCoreDAVTaskWithError:v5];

  v41 = *MEMORY[0x277D85DE8];
}

- (void)setPriorOrderedURL:(id)a3
{
  v5 = a3;
  if (self->_priorOrderedURL != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_priorOrderedURL, a3);
    v5 = v6;
    if (self->_priorOrderedURL)
    {
      self->_sendOrder = 1;
    }
  }
}

@end