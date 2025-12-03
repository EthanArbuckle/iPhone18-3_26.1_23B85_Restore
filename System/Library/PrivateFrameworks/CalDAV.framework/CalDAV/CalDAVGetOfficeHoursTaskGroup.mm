@interface CalDAVGetOfficeHoursTaskGroup
- (CalDAVGetOfficeHoursTaskGroup)initWithAccountInfoProvider:(id)provider inboxURL:(id)l taskManager:(id)manager;
- (void)propFindTask:(id)task parsedResponses:(id)responses error:(id)error;
- (void)startTaskGroup;
@end

@implementation CalDAVGetOfficeHoursTaskGroup

- (CalDAVGetOfficeHoursTaskGroup)initWithAccountInfoProvider:(id)provider inboxURL:(id)l taskManager:(id)manager
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = CalDAVGetOfficeHoursTaskGroup;
  v9 = [(CoreDAVTaskGroup *)&v12 initWithAccountInfoProvider:provider taskManager:manager];
  v10 = v9;
  if (v9)
  {
    [(CalDAVGetOfficeHoursTaskGroup *)v9 setInboxURL:lCopy];
    [(CalDAVGetOfficeHoursTaskGroup *)v10 setCalendarAvailability:0];
    [(CalDAVGetOfficeHoursTaskGroup *)v10 setFetchTask:0];
  }

  return v10;
}

- (void)startTaskGroup
{
  v3 = objc_alloc(MEMORY[0x277CFDBE8]);
  v15 = [v3 initWithNameSpace:*MEMORY[0x277CFDE90] name:@"calendar-availability" parseClass:objc_opt_class()];
  v4 = [MEMORY[0x277CBEB98] setWithObject:v15];
  v5 = objc_alloc(MEMORY[0x277CFDC68]);
  inboxURL = [(CalDAVGetOfficeHoursTaskGroup *)self inboxURL];
  v7 = [v5 initWithPropertiesToFind:v4 atURL:inboxURL withDepth:2];

  [(CalDAVGetOfficeHoursTaskGroup *)self setFetchTask:v7];
  outstandingTasks = [(CoreDAVTaskGroup *)self outstandingTasks];
  fetchTask = [(CalDAVGetOfficeHoursTaskGroup *)self fetchTask];
  [outstandingTasks addObject:fetchTask];

  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  fetchTask2 = [(CalDAVGetOfficeHoursTaskGroup *)self fetchTask];
  [fetchTask2 setAccountInfoProvider:accountInfoProvider];

  fetchTask3 = [(CalDAVGetOfficeHoursTaskGroup *)self fetchTask];
  [fetchTask3 setDelegate:self];

  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  fetchTask4 = [(CalDAVGetOfficeHoursTaskGroup *)self fetchTask];
  [taskManager submitQueuedCoreDAVTask:fetchTask4];
}

- (void)propFindTask:(id)task parsedResponses:(id)responses error:(id)error
{
  errorCopy = error;
  outstandingTasks = [(CoreDAVTaskGroup *)self outstandingTasks];
  fetchTask = [(CalDAVGetOfficeHoursTaskGroup *)self fetchTask];
  [outstandingTasks removeObject:fetchTask];

  if (!errorCopy)
  {
    fetchTask2 = [(CalDAVGetOfficeHoursTaskGroup *)self fetchTask];
    v10 = [fetchTask2 successfulValueForNameSpace:*MEMORY[0x277CFDE90] elementName:@"calendar-availability"];

    if (v10)
    {
      payload = [v10 payload];
      if (payload)
      {
        v13 = 0;
        v12 = [objc_alloc(MEMORY[0x277D7F108]) initWithData:payload options:0 error:&v13];
        errorCopy = v13;
        [(CalDAVGetOfficeHoursTaskGroup *)self setCalendarAvailability:v12];
      }

      else
      {
        errorCopy = 0;
      }
    }

    else
    {
      errorCopy = 0;
    }
  }

  [(CalDAVGetOfficeHoursTaskGroup *)self _finishWithError:errorCopy];
}

@end