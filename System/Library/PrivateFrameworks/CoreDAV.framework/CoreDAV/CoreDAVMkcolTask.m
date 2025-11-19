@interface CoreDAVMkcolTask
- (CoreDAVMkcolTask)initWithPropertiesToSet:(id)a3 atURL:(id)a4;
- (id)additionalHeaderValues;
- (id)copyDefaultParserForContentType:(id)a3;
- (id)description;
- (id)requestBody;
- (void)finishCoreDAVTaskWithError:(id)a3;
- (void)setPriorOrderedURL:(id)a3;
@end

@implementation CoreDAVMkcolTask

- (CoreDAVMkcolTask)initWithPropertiesToSet:(id)a3 atURL:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CoreDAVMkcolTask;
  v8 = [(CoreDAVTask *)&v11 initWithURL:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_propertiesToSet, a3);
  }

  return v9;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v13.receiver = self;
  v13.super_class = CoreDAVMkcolTask;
  v4 = [(CoreDAVActionBackedTask *)&v13 description];
  [v3 appendFormat:@"[%@ ", v4];

  v5 = [(CoreDAVMkcolTask *)self propertiesToSet];
  if (v5)
  {
    v6 = [(CoreDAVMkcolTask *)self propertiesToSet];
    [v3 appendFormat:@"| Number of properties to set: [%lu]", objc_msgSend(v6, "count")];
  }

  else
  {
    [v3 appendFormat:@"| Number of properties to set: [%lu]", 0];
  }

  v7 = +[CoreDAVLogging sharedLogging];
  v8 = [v7 shouldLogAtLevel:7 forAccountInfoProvider:0];

  if (v8)
  {
    v9 = [(CoreDAVMkcolTask *)self requestBody];
    v10 = [v9 bytes];
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v10 length:objc_msgSend(v9 encoding:{"length"), 4}];
    [v3 appendFormat:@"| Request body: [%@]", v11];
  }

  [v3 appendFormat:@"]"];

  return v3;
}

- (id)additionalHeaderValues
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11.receiver = self;
  v11.super_class = CoreDAVMkcolTask;
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
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(CoreDAVMkcolTask *)self propertiesToSet];
  if (v3 && (v4 = v3, -[CoreDAVMkcolTask propertiesToSet](self, "propertiesToSet"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6))
  {
    v7 = objc_alloc_init(CoreDAVXMLData);
    [(CoreDAVXMLData *)v7 startElement:@"mkcol" inNamespace:@"DAV:" withAttributeNamesAndValues:0];
    v8 = [(CoreDAVMkcolTask *)self propertiesToSet];
    if (v8)
    {
      v9 = v8;
      v10 = [(CoreDAVMkcolTask *)self propertiesToSet];
      v11 = [v10 count];

      if (v11)
      {
        [(CoreDAVXMLData *)v7 startElement:@"set" inNamespace:@"DAV:" withAttributeNamesAndValues:0];
        [(CoreDAVXMLData *)v7 startElement:@"prop" inNamespace:@"DAV:" withAttributeNamesAndValues:0];
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v12 = [(CoreDAVMkcolTask *)self propertiesToSet];
        v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v21;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v21 != v15)
              {
                objc_enumerationMutation(v12);
              }

              [*(*(&v20 + 1) + 8 * i) write:v7];
            }

            v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
          }

          while (v14);
        }

        [(CoreDAVXMLData *)v7 endElement:@"prop" inNamespace:@"DAV:"];
        [(CoreDAVXMLData *)v7 endElement:@"set" inNamespace:@"DAV:"];
      }
    }

    [(CoreDAVXMLData *)v7 endElement:@"mkcol" inNamespace:@"DAV:"];
    v17 = [(CoreDAVXMLData *)v7 data];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)copyDefaultParserForContentType:(id)a3
{
  v4 = a3;
  if ([CoreDAVXMLParser canHandleContentType:v4])
  {
    v5 = [CoreDAVXMLParser alloc];
    v6 = objc_opt_class();
    v7 = [(CoreDAVTask *)self url];
    v8 = [(CoreDAVXMLParser *)v5 initWithRootElementNameSpace:@"DAV:" name:@"mkcol-response" parseClass:v6 baseURL:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = CoreDAVMkcolTask;
    v8 = [(CoreDAVTask *)&v10 copyDefaultParserForContentType:v4];
  }

  return v8;
}

- (void)finishCoreDAVTaskWithError:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
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
          v33 = objc_opt_class();
          v11 = v33;
          v12 = "%{public}@ cancelled";
          v13 = v10;
          v14 = OS_LOG_TYPE_INFO;
          v15 = 12;
LABEL_15:
          _os_log_impl(&dword_2452FB000, v13, v14, v12, buf, v15);

          goto LABEL_16;
        }

        goto LABEL_16;
      }
    }

    else if (v9)
    {
      v26 = v9;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v33 = objc_opt_class();
        v34 = 2112;
        v35 = v5;
        v11 = v33;
        v12 = "%{public}@ failed: %@";
        v13 = v26;
        v14 = OS_LOG_TYPE_ERROR;
        v15 = 22;
        goto LABEL_15;
      }

LABEL_16:
    }

    v25 = v5;
    v21 = 0;
    goto LABEL_21;
  }

  v16 = [(CoreDAVTask *)self responseBodyParser];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v18 = [(CoreDAVTask *)self responseBodyParser];
    v19 = [v18 rootElement];
    v20 = [v19 propStats];
    v21 = [v20 allObjects];

    if ([v19 hasPropertyError])
    {
      v22 = +[CoreDAVLogging sharedLogging];
      v23 = objc_loadWeakRetained(&self->super.super._accountInfoProvider);
      v24 = [v22 logHandleForAccountInfoProvider:v23];

      if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v19;
        _os_log_impl(&dword_2452FB000, v24, OS_LOG_TYPE_DEFAULT, "There we no properties successfully applied according to the following item: [%@].", buf, 0xCu);
      }

      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:2 userInfo:0];
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v21 = 0;
    v25 = 0;
  }

LABEL_21:
  self->super.super._numDownloadedElements = [v21 count];
  v27 = [(CoreDAVTask *)self delegate];
  v28 = objc_opt_respondsToSelector();

  if (v28)
  {
    v29 = [(CoreDAVTask *)self delegate];
    [v29 mkcolTask:self parsedPropStats:v21 error:v25];

    [(CoreDAVTask *)self setDelegate:0];
  }

  v31.receiver = self;
  v31.super_class = CoreDAVMkcolTask;
  [(CoreDAVTask *)&v31 finishCoreDAVTaskWithError:v5];

  v30 = *MEMORY[0x277D85DE8];
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