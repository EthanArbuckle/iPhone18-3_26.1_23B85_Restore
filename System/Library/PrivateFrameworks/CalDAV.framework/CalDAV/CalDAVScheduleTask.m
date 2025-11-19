@interface CalDAVScheduleTask
- (CalDAVScheduleTask)initWithOriginator:(id)a3 attendees:(id)a4 outboxURL:(id)a5 payload:(id)a6;
- (id)copyDefaultParserForContentType:(id)a3;
- (void)finishCoreDAVTaskWithError:(id)a3;
@end

@implementation CalDAVScheduleTask

- (CalDAVScheduleTask)initWithOriginator:(id)a3 attendees:(id)a4 outboxURL:(id)a5 payload:(id)a6
{
  v10 = a3;
  v11 = a4;
  v15.receiver = self;
  v15.super_class = CalDAVScheduleTask;
  v12 = [(CoreDAVPostTask *)&v15 initWithDataPayload:a6 dataContentType:@"text/calendar" atURL:a5 previousETag:0];
  v13 = v12;
  if (v12)
  {
    [(CalDAVScheduleTask *)v12 setOriginator:v10];
    [(CalDAVScheduleTask *)v13 setAttendees:v11];
  }

  return v13;
}

- (id)copyDefaultParserForContentType:(id)a3
{
  v4 = objc_alloc(MEMORY[0x277CFDCA8]);
  v5 = *MEMORY[0x277CFDDC0];
  v6 = objc_opt_class();
  v7 = [(CalDAVScheduleTask *)self url];
  v8 = [v4 initWithRootElementNameSpace:v5 name:@"schedule-response" parseClass:v6 baseURL:v7];

  return v8;
}

- (void)finishCoreDAVTaskWithError:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 code];
    v7 = [MEMORY[0x277CFDC18] sharedLogging];
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277CFDD38]));
    v9 = [v7 logHandleForAccountInfoProvider:WeakRetained];

    if (v6 == 1)
    {
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v19 = objc_opt_class();
          v11 = v19;
          v12 = "%{public}@ cancelled";
          v13 = v10;
          v14 = OS_LOG_TYPE_INFO;
          v15 = 12;
LABEL_10:
          _os_log_impl(&dword_242742000, v13, v14, v12, buf, v15);

          goto LABEL_11;
        }

        goto LABEL_11;
      }
    }

    else if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v19 = objc_opt_class();
        v20 = 2112;
        v21 = v5;
        v11 = v19;
        v12 = "%{public}@ failed: %@";
        v13 = v10;
        v14 = OS_LOG_TYPE_DEFAULT;
        v15 = 22;
        goto LABEL_10;
      }

LABEL_11:
    }
  }

  else
  {
    v7 = [(CalDAVScheduleTask *)self responseBodyParser];
    v9 = [v7 rootElement];
    [(CalDAVScheduleTask *)self setScheduleResponse:v9];
  }

  v17.receiver = self;
  v17.super_class = CalDAVScheduleTask;
  [(CoreDAVPostTask *)&v17 finishCoreDAVTaskWithError:v5];

  v16 = *MEMORY[0x277D85DE8];
}

@end