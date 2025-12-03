@interface CoreDAVDeleteTask
- (id)additionalHeaderValues;
- (id)description;
- (void)finishCoreDAVTaskWithError:(id)error;
@end

@implementation CoreDAVDeleteTask

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7.receiver = self;
  v7.super_class = CoreDAVDeleteTask;
  v4 = [(CoreDAVActionBackedTask *)&v7 description];
  [v3 appendFormat:@"[%@ ", v4];

  previousETag = [(CoreDAVDeleteTask *)self previousETag];
  [v3 appendFormat:@"| Previous ETag: [%@]", previousETag];

  [v3 appendFormat:@"]"];

  return v3;
}

- (id)additionalHeaderValues
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7.receiver = self;
  v7.super_class = CoreDAVDeleteTask;
  additionalHeaderValues = [(CoreDAVTask *)&v7 additionalHeaderValues];
  [v3 addEntriesFromDictionary:additionalHeaderValues];

  previousETag = [(CoreDAVDeleteTask *)self previousETag];
  if (previousETag)
  {
    [v3 setObject:previousETag forKey:@"If-Match"];
  }

  return v3;
}

- (void)finishCoreDAVTaskWithError:(id)error
{
  v28 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    if ([errorCopy code] == 1)
    {
      v6 = +[CoreDAVLogging sharedLogging];
      WeakRetained = objc_loadWeakRetained(&self->super.super._accountInfoProvider);
      v8 = [v6 logHandleForAccountInfoProvider:WeakRetained];

      if (v8)
      {
        v9 = v8;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          selfCopy = objc_opt_class();
          v10 = selfCopy;
          v11 = "%{public}@ cancelled";
          v12 = v9;
          v13 = OS_LOG_TYPE_INFO;
          v14 = 12;
LABEL_16:
          _os_log_impl(&dword_2452FB000, v12, v13, v11, buf, v14);

          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }

    else
    {
      domain = [v5 domain];
      if ([domain isEqualToString:@"CoreDAVHTTPStatusErrorDomain"])
      {
        code = [v5 code];

        if (code == 404)
        {
          v8 = +[CoreDAVLogging sharedLogging];
          v17 = objc_loadWeakRetained(&self->super.super._accountInfoProvider);
          v9 = [v8 logHandleForAccountInfoProvider:v17];

          if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            selfCopy = self;
            _os_log_impl(&dword_2452FB000, v9, OS_LOG_TYPE_INFO, "Tried to delete an unknown resource.  Swallowing this error %@", buf, 0xCu);
          }

          v6 = v5;
          v5 = 0;
          goto LABEL_17;
        }
      }

      else
      {
      }

      v6 = +[CoreDAVLogging sharedLogging];
      v18 = objc_loadWeakRetained(&self->super.super._accountInfoProvider);
      v8 = [v6 logHandleForAccountInfoProvider:v18];

      if (v8)
      {
        v9 = v8;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy = objc_opt_class();
          v26 = 2112;
          v27 = v5;
          v10 = selfCopy;
          v11 = "%{public}@ failed: %@";
          v12 = v9;
          v13 = OS_LOG_TYPE_ERROR;
          v14 = 22;
          goto LABEL_16;
        }

LABEL_17:
      }
    }
  }

  delegate = [(CoreDAVTask *)self delegate];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    delegate2 = [(CoreDAVTask *)self delegate];
    [delegate2 deleteTask:self completedWithError:v5];

    [(CoreDAVTask *)self setDelegate:0];
  }

  v23.receiver = self;
  v23.super_class = CoreDAVDeleteTask;
  [(CoreDAVTask *)&v23 finishCoreDAVTaskWithError:v5];

  v22 = *MEMORY[0x277D85DE8];
}

@end