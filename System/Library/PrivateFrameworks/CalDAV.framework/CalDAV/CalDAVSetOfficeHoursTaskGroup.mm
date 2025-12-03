@interface CalDAVSetOfficeHoursTaskGroup
- (CalDAVSetOfficeHoursTaskGroup)initWithAccountInfoProvider:(id)provider inboxURL:(id)l calendarAvailability:(id)availability taskManager:(id)manager;
- (void)propPatchTask:(id)task parsedResponses:(id)responses error:(id)error;
- (void)startTaskGroup;
@end

@implementation CalDAVSetOfficeHoursTaskGroup

- (CalDAVSetOfficeHoursTaskGroup)initWithAccountInfoProvider:(id)provider inboxURL:(id)l calendarAvailability:(id)availability taskManager:(id)manager
{
  lCopy = l;
  availabilityCopy = availability;
  v15.receiver = self;
  v15.super_class = CalDAVSetOfficeHoursTaskGroup;
  v12 = [(CoreDAVTaskGroup *)&v15 initWithAccountInfoProvider:provider taskManager:manager];
  v13 = v12;
  if (v12)
  {
    [(CalDAVSetOfficeHoursTaskGroup *)v12 setInboxURL:lCopy];
    [(CalDAVSetOfficeHoursTaskGroup *)v13 setCalendarAvailability:availabilityCopy];
  }

  return v13;
}

- (void)startTaskGroup
{
  calendarAvailability = [(CalDAVSetOfficeHoursTaskGroup *)self calendarAvailability];
  v4 = [calendarAvailability ICSStringWithOptions:0];
  v14 = [v4 dataUsingEncoding:4];

  v5 = objc_alloc(MEMORY[0x277CFDBE0]);
  v6 = [v5 initWithNameSpace:*MEMORY[0x277CFDE90] andName:@"calendar-availability"];
  [v6 setPayload:v14];
  v7 = objc_alloc(MEMORY[0x277CFDC70]);
  v8 = [MEMORY[0x277CBEB98] setWithObject:v6];
  inboxURL = [(CalDAVSetOfficeHoursTaskGroup *)self inboxURL];
  v10 = [v7 initWithPropertiesToSet:v8 andRemove:0 atURL:inboxURL];

  outstandingTasks = [(CoreDAVTaskGroup *)self outstandingTasks];
  [outstandingTasks addObject:v10];

  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v10 setAccountInfoProvider:accountInfoProvider];

  [v10 setDelegate:self];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  [taskManager submitQueuedCoreDAVTask:v10];
}

- (void)propPatchTask:(id)task parsedResponses:(id)responses error:(id)error
{
  errorCopy = error;
  taskCopy = task;
  outstandingTasks = [(CoreDAVTaskGroup *)self outstandingTasks];
  [outstandingTasks removeObject:taskCopy];

  [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:errorCopy delegateCallbackBlock:0];
}

@end