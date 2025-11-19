@interface CoreDAVPropertyFindBaseTask
- (CoreDAVPropertyFindBaseTask)initWithPropertiesToFind:(id)a3 atURL:(id)a4;
- (id)additionalHeaderValues;
- (id)copyDefaultParserForContentType:(id)a3;
- (id)description;
- (id)getTotalFailureError;
- (id)successfulValueForNameSpace:(id)a3 elementName:(id)a4;
- (void)finishCoreDAVTaskWithError:(id)a3;
- (void)updateMultiStatusFromResponse;
@end

@implementation CoreDAVPropertyFindBaseTask

- (CoreDAVPropertyFindBaseTask)initWithPropertiesToFind:(id)a3 atURL:(id)a4
{
  v8 = a3;
  v9 = a4;
  if ([(CoreDAVPropertyFindBaseTask *)self isMemberOfClass:objc_opt_class()])
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"CoreDAVPropertyFindBaseTask.m" lineNumber:36 description:{@"You instantiated a class that doesn't want to be instantiated.  Please choose a concrete subclass of %@", objc_opt_class()}];

    v11 = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = CoreDAVPropertyFindBaseTask;
    v12 = [(CoreDAVTask *)&v15 initWithURL:v9];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_propertiesToFind, a3);
    }

    self = v13;
    v11 = self;
  }

  return v11;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7.receiver = self;
  v7.super_class = CoreDAVPropertyFindBaseTask;
  v4 = [(CoreDAVTask *)&v7 description];
  [v3 appendFormat:@"[%@ ", v4];

  v5 = [(CoreDAVPropertyFindBaseTask *)self propertiesToFind];
  [v3 appendFormat:@"| Number of properties to find: [%lu]", objc_msgSend(v5, "count")];

  [v3 appendFormat:@"]"];

  return v3;
}

- (id)additionalHeaderValues
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6.receiver = self;
  v6.super_class = CoreDAVPropertyFindBaseTask;
  v4 = [(CoreDAVTask *)&v6 additionalHeaderValues];
  [v3 addEntriesFromDictionary:v4];

  [v3 setObject:@"t" forKey:@"Brief"];
  [v3 setObject:@"return=minimal" forKey:@"Prefer"];

  return v3;
}

- (id)copyDefaultParserForContentType:(id)a3
{
  v4 = [(CoreDAVTask *)self url];
  v5 = [(CoreDAVTask *)self lastRedirectURL];
  v6 = v5;
  if (v5)
  {
    v7 = v5;

    v4 = v7;
  }

  v8 = [[CoreDAVXMLParser alloc] initWithRootElementNameSpace:@"DAV:" name:@"multistatus" parseClass:objc_opt_class() baseURL:v4];
  v9 = [(CoreDAVPropertyFindBaseTask *)self parseHints];
  [(CoreDAVXMLParser *)v8 setParseHints:v9];

  return v8;
}

- (id)successfulValueForNameSpace:(id)a3 elementName:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(CoreDAVPropertyFindBaseTask *)self multiStatus];
  v9 = [v8 responses];

  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) successfulPropertiesToValues];
        if (v13)
        {
          v14 = v13;
          v10 = [v13 CDVObjectForKeyWithNameSpace:v6 andName:v7];

          goto LABEL_11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)updateMultiStatusFromResponse
{
  v3 = [(CoreDAVPropertyFindBaseTask *)self multiStatus];
  if (!v3)
  {
    v4 = [(CoreDAVTask *)self responseBodyParser];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      v5 = [(CoreDAVTask *)self simulated];

      if (!v5)
      {
        return;
      }
    }

    v6 = [(CoreDAVTask *)self rootElement];
    [(CoreDAVPropertyFindBaseTask *)self setMultiStatus:v6];
    v3 = v6;
  }
}

- (id)getTotalFailureError
{
  v34 = *MEMORY[0x277D85DE8];
  [(CoreDAVPropertyFindBaseTask *)self updateMultiStatusFromResponse];
  v3 = [(CoreDAVPropertyFindBaseTask *)self multiStatus];

  if (v3)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v4 = [(CoreDAVPropertyFindBaseTask *)self multiStatus];
    v5 = [v4 responses];

    v6 = [v5 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v6)
    {
      v8 = v6;
      v25 = self;
      v9 = 0;
      v10 = *v28;
      v11 = 1;
      *&v7 = 138412290;
      v24 = v7;
      obj = v5;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          v14 = [v13 successfulPropertiesToValues];
          v15 = [v14 count];

          v16 = v15 != 0;
          v17 = v15 == 0;
          if ([v13 hasPropertyError])
          {
            v18 = +[CoreDAVLogging sharedLogging];
            WeakRetained = objc_loadWeakRetained(&v25->super._accountInfoProvider);
            v20 = [v18 logHandleForAccountInfoProvider:WeakRetained];

            if (v20 && os_log_type_enabled(v20, (2 * v16)))
            {
              *buf = v24;
              v32 = v13;
              _os_log_impl(&dword_2452FB000, v20, (2 * v16), "There were some failures fetching properties, according to the following response: [%@].", buf, 0xCu);
            }

            v9 = 1;
          }

          v11 &= v17;
        }

        v8 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v8);

      if (v9 & v11)
      {
        v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:2 userInfo:0];
        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  v21 = 0;
LABEL_18:
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)finishCoreDAVTaskWithError:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
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
          v20 = objc_opt_class();
          v11 = v20;
          v12 = "%{public}@ cancelled";
          v13 = v10;
          v14 = OS_LOG_TYPE_INFO;
          v15 = 12;
LABEL_9:
          _os_log_impl(&dword_2452FB000, v13, v14, v12, buf, v15);

          goto LABEL_10;
        }

        goto LABEL_10;
      }
    }

    else if (v9)
    {
      v16 = v9;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v20 = objc_opt_class();
        v21 = 2112;
        v22 = v5;
        v11 = v20;
        v12 = "%{public}@ failed: %@";
        v13 = v16;
        v14 = OS_LOG_TYPE_ERROR;
        v15 = 22;
        goto LABEL_9;
      }

LABEL_10:
    }
  }

  [(CoreDAVPropertyFindBaseTask *)self updateMultiStatusFromResponse];
  v18.receiver = self;
  v18.super_class = CoreDAVPropertyFindBaseTask;
  [(CoreDAVTask *)&v18 finishCoreDAVTaskWithError:v5];

  v17 = *MEMORY[0x277D85DE8];
}

@end