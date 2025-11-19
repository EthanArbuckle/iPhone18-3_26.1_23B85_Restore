@interface CoreDAVPutTask
- (id)description;
- (void)finishCoreDAVTaskWithError:(id)a3;
@end

@implementation CoreDAVPutTask

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7.receiver = self;
  v7.super_class = CoreDAVPutTask;
  v4 = [(CoreDAVPostOrPutTask *)&v7 description];
  [v3 appendFormat:@"[%@ ", v4];

  v5 = [(CoreDAVPutTask *)self nextETag];
  [v3 appendFormat:@"| New ETag: [%@]", v5];

  [v3 appendFormat:@"]"];

  return v3;
}

- (void)finishCoreDAVTaskWithError:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(CoreDAVPutTask *)self setNextETag:0];
  if (!v4)
  {
    v6 = [(CoreDAVTask *)self responseHeaders];
    v8 = [v6 CDVObjectForKeyCaseInsensitive:@"ETag"];
    [(CoreDAVPutTask *)self setNextETag:v8];
    goto LABEL_12;
  }

  v5 = [v4 code];
  v6 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super.super.super._accountInfoProvider);
  v8 = [v6 logHandleForAccountInfoProvider:WeakRetained];

  if (v5 == 1)
  {
    if (!v8)
    {
      goto LABEL_12;
    }

    v9 = v8;
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    *buf = 138543362;
    v22 = objc_opt_class();
    v10 = v22;
    v11 = "%{public}@ cancelled";
    v12 = v9;
    v13 = OS_LOG_TYPE_INFO;
    v14 = 12;
    goto LABEL_10;
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v22 = objc_opt_class();
    v23 = 2112;
    v24 = v4;
    v10 = v22;
    v11 = "%{public}@ failed: %@";
    v12 = v9;
    v13 = OS_LOG_TYPE_ERROR;
    v14 = 22;
LABEL_10:
    _os_log_impl(&dword_2452FB000, v12, v13, v11, buf, v14);
  }

LABEL_11:

LABEL_12:
  v15 = [(CoreDAVTask *)self delegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    v17 = [(CoreDAVTask *)self delegate];
    v18 = [(CoreDAVPutTask *)self nextETag];
    [v17 putTask:self completedWithNewETag:v18 error:v4];

    [(CoreDAVTask *)self setDelegate:0];
  }

  v20.receiver = self;
  v20.super_class = CoreDAVPutTask;
  [(CoreDAVTask *)&v20 finishCoreDAVTaskWithError:v4];

  v19 = *MEMORY[0x277D85DE8];
}

@end