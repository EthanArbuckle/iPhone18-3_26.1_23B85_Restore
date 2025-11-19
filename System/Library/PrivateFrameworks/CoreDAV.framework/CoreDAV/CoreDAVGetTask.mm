@interface CoreDAVGetTask
- (id)description;
- (void)finishCoreDAVTaskWithError:(id)a3;
@end

@implementation CoreDAVGetTask

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v10.receiver = self;
  v10.super_class = CoreDAVGetTask;
  v4 = [(CoreDAVTask *)&v10 description];
  [v3 appendFormat:@"[%@ ", v4];

  v5 = [(CoreDAVTask *)self responseBodyParser];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(CoreDAVTask *)self responseBodyParser];
    v8 = [v7 octetStreamData];
    [v3 appendFormat:@"| Data length in bytes: [%lu]", objc_msgSend(v8, "length")];
  }

  else
  {
    [v3 appendFormat:@"| Data length in bytes: [unknown]"];
  }

  [v3 appendFormat:@"]"];

  return v3;
}

- (void)finishCoreDAVTaskWithError:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
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
          v27 = objc_opt_class();
          v11 = v27;
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
        v27 = objc_opt_class();
        v28 = 2112;
        v29 = v5;
        v11 = v27;
        v12 = "%{public}@ failed: %@";
        v13 = v16;
        v14 = OS_LOG_TYPE_ERROR;
        v15 = 22;
        goto LABEL_9;
      }

LABEL_10:
    }
  }

  v17 = [(CoreDAVTask *)self delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = [(CoreDAVTask *)self responseBodyParser];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v21 = [(CoreDAVTask *)self responseBodyParser];
      v22 = [v21 octetStreamData];
    }

    else
    {
      v22 = 0;
    }

    v23 = [(CoreDAVTask *)self delegate];
    [v23 getTask:self data:v22 error:v5];

    [(CoreDAVTask *)self setDelegate:0];
  }

  v25.receiver = self;
  v25.super_class = CoreDAVGetTask;
  [(CoreDAVTask *)&v25 finishCoreDAVTaskWithError:v5];

  v24 = *MEMORY[0x277D85DE8];
}

@end