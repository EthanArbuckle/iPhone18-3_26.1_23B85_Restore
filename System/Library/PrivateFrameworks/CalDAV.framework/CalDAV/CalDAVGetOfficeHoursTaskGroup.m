@interface CalDAVGetOfficeHoursTaskGroup
- (CalDAVGetOfficeHoursTaskGroup)initWithAccountInfoProvider:(id)a3 inboxURL:(id)a4 taskManager:(id)a5;
- (void)propFindTask:(id)a3 parsedResponses:(id)a4 error:(id)a5;
- (void)startTaskGroup;
@end

@implementation CalDAVGetOfficeHoursTaskGroup

- (CalDAVGetOfficeHoursTaskGroup)initWithAccountInfoProvider:(id)a3 inboxURL:(id)a4 taskManager:(id)a5
{
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CalDAVGetOfficeHoursTaskGroup;
  v9 = [(CoreDAVTaskGroup *)&v12 initWithAccountInfoProvider:a3 taskManager:a5];
  v10 = v9;
  if (v9)
  {
    [(CalDAVGetOfficeHoursTaskGroup *)v9 setInboxURL:v8];
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
  v6 = [(CalDAVGetOfficeHoursTaskGroup *)self inboxURL];
  v7 = [v5 initWithPropertiesToFind:v4 atURL:v6 withDepth:2];

  [(CalDAVGetOfficeHoursTaskGroup *)self setFetchTask:v7];
  v8 = [(CoreDAVTaskGroup *)self outstandingTasks];
  v9 = [(CalDAVGetOfficeHoursTaskGroup *)self fetchTask];
  [v8 addObject:v9];

  v10 = [(CoreDAVTaskGroup *)self accountInfoProvider];
  v11 = [(CalDAVGetOfficeHoursTaskGroup *)self fetchTask];
  [v11 setAccountInfoProvider:v10];

  v12 = [(CalDAVGetOfficeHoursTaskGroup *)self fetchTask];
  [v12 setDelegate:self];

  v13 = [(CoreDAVTaskGroup *)self taskManager];
  v14 = [(CalDAVGetOfficeHoursTaskGroup *)self fetchTask];
  [v13 submitQueuedCoreDAVTask:v14];
}

- (void)propFindTask:(id)a3 parsedResponses:(id)a4 error:(id)a5
{
  v6 = a5;
  v7 = [(CoreDAVTaskGroup *)self outstandingTasks];
  v8 = [(CalDAVGetOfficeHoursTaskGroup *)self fetchTask];
  [v7 removeObject:v8];

  if (!v6)
  {
    v9 = [(CalDAVGetOfficeHoursTaskGroup *)self fetchTask];
    v10 = [v9 successfulValueForNameSpace:*MEMORY[0x277CFDE90] elementName:@"calendar-availability"];

    if (v10)
    {
      v11 = [v10 payload];
      if (v11)
      {
        v13 = 0;
        v12 = [objc_alloc(MEMORY[0x277D7F108]) initWithData:v11 options:0 error:&v13];
        v6 = v13;
        [(CalDAVGetOfficeHoursTaskGroup *)self setCalendarAvailability:v12];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  [(CalDAVGetOfficeHoursTaskGroup *)self _finishWithError:v6];
}

@end