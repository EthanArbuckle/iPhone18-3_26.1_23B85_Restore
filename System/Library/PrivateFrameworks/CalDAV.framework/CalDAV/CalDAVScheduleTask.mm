@interface CalDAVScheduleTask
- (CalDAVScheduleTask)initWithOriginator:(id)originator attendees:(id)attendees outboxURL:(id)l payload:(id)payload;
- (id)copyDefaultParserForContentType:(id)type;
- (void)finishCoreDAVTaskWithError:(id)error;
@end

@implementation CalDAVScheduleTask

- (CalDAVScheduleTask)initWithOriginator:(id)originator attendees:(id)attendees outboxURL:(id)l payload:(id)payload
{
  originatorCopy = originator;
  attendeesCopy = attendees;
  v15.receiver = self;
  v15.super_class = CalDAVScheduleTask;
  v12 = [(CoreDAVPostTask *)&v15 initWithDataPayload:payload dataContentType:@"text/calendar" atURL:l previousETag:0];
  v13 = v12;
  if (v12)
  {
    [(CalDAVScheduleTask *)v12 setOriginator:originatorCopy];
    [(CalDAVScheduleTask *)v13 setAttendees:attendeesCopy];
  }

  return v13;
}

- (id)copyDefaultParserForContentType:(id)type
{
  v4 = objc_alloc(MEMORY[0x277CFDCA8]);
  v5 = *MEMORY[0x277CFDDC0];
  v6 = objc_opt_class();
  v7 = [(CalDAVScheduleTask *)self url];
  v8 = [v4 initWithRootElementNameSpace:v5 name:@"schedule-response" parseClass:v6 baseURL:v7];

  return v8;
}

- (void)finishCoreDAVTaskWithError:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    code = [errorCopy code];
    mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x277CFDD38]));
    rootElement = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

    if (code == 1)
    {
      if (rootElement)
      {
        v10 = rootElement;
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

    else if (rootElement)
    {
      v10 = rootElement;
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
    mEMORY[0x277CFDC18] = [(CalDAVScheduleTask *)self responseBodyParser];
    rootElement = [mEMORY[0x277CFDC18] rootElement];
    [(CalDAVScheduleTask *)self setScheduleResponse:rootElement];
  }

  v17.receiver = self;
  v17.super_class = CalDAVScheduleTask;
  [(CoreDAVPostTask *)&v17 finishCoreDAVTaskWithError:v5];

  v16 = *MEMORY[0x277D85DE8];
}

@end