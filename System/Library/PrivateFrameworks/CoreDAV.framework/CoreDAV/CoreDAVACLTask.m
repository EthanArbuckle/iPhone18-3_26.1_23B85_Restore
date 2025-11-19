@interface CoreDAVACLTask
- (CoreDAVACLTask)initWithAccessControlEntities:(id)a3 atURL:(id)a4;
- (id)description;
- (id)requestBody;
- (void)finishCoreDAVTaskWithError:(id)a3;
@end

@implementation CoreDAVACLTask

- (CoreDAVACLTask)initWithAccessControlEntities:(id)a3 atURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7 || (v9 = v8, ![v7 count]))
  {
    v13 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Non-nil and non-empty accessControlEntities required." userInfo:0];
    objc_exception_throw(v13);
  }

  v14.receiver = self;
  v14.super_class = CoreDAVACLTask;
  v10 = [(CoreDAVTask *)&v14 initWithURL:v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_accessControlEntities, a3);
  }

  return v11;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7.receiver = self;
  v7.super_class = CoreDAVACLTask;
  v4 = [(CoreDAVTask *)&v7 description];
  [v3 appendFormat:@"[%@ ", v4];

  v5 = [(CoreDAVACLTask *)self accessControlEntities];
  [v3 appendFormat:@"| Number of access control entities: [%lu]", objc_msgSend(v5, "count")];

  [v3 appendFormat:@"]"];

  return v3;
}

- (id)requestBody
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(CoreDAVXMLData);
  [(CoreDAVXMLData *)v3 startElement:@"acl" inNamespace:@"DAV:" withAttributeNamesAndValues:0];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(CoreDAVACLTask *)self accessControlEntities];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v12 + 1) + 8 * i) write:v3];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [(CoreDAVXMLData *)v3 endElement:@"acl" inNamespace:@"DAV:"];
  v9 = [(CoreDAVXMLData *)v3 data];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)finishCoreDAVTaskWithError:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
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
          v24 = objc_opt_class();
          v11 = v24;
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
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v24 = objc_opt_class();
        v25 = 2112;
        v26 = v5;
        v11 = v24;
        v12 = "%{public}@ failed: %@";
        v13 = v16;
        v14 = OS_LOG_TYPE_DEFAULT;
        v15 = 22;
        goto LABEL_9;
      }

LABEL_10:
    }

    v17 = v5;
  }

  self->super._numDownloadedElements = 0;
  v18 = [(CoreDAVTask *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = [(CoreDAVTask *)self delegate];
    [v20 aclTask:self error:v5];

    [(CoreDAVTask *)self setDelegate:0];
  }

  v22.receiver = self;
  v22.super_class = CoreDAVACLTask;
  [(CoreDAVTask *)&v22 finishCoreDAVTaskWithError:v5];

  v21 = *MEMORY[0x277D85DE8];
}

@end