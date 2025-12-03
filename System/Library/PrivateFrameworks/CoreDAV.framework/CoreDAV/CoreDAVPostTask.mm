@interface CoreDAVPostTask
- (CoreDAVPostTask)initWithDataPayload:(id)payload dataContentType:(id)type atURL:(id)l previousETag:(id)tag;
- (void)finishCoreDAVTaskWithError:(id)error;
@end

@implementation CoreDAVPostTask

- (CoreDAVPostTask)initWithDataPayload:(id)payload dataContentType:(id)type atURL:(id)l previousETag:(id)tag
{
  v10.receiver = self;
  v10.super_class = CoreDAVPostTask;
  v7 = [(CoreDAVPostOrPutTask *)&v10 initWithDataPayload:payload dataContentType:type atURL:l previousETag:?];
  v8 = v7;
  if (v7)
  {
    [(CoreDAVPostOrPutTask *)v7 setForceToServer:tag == 0];
  }

  return v8;
}

- (void)finishCoreDAVTaskWithError:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    code = [errorCopy code];
    v7 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super.super.super._accountInfoProvider);
    v9 = [v7 logHandleForAccountInfoProvider:WeakRetained];

    if (code == 1)
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

  v18.receiver = self;
  v18.super_class = CoreDAVPostTask;
  [(CoreDAVTask *)&v18 finishCoreDAVTaskWithError:v5];

  v17 = *MEMORY[0x277D85DE8];
}

@end