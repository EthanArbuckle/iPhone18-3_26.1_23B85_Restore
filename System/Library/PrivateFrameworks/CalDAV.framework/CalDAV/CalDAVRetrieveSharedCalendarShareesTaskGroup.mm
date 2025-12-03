@interface CalDAVRetrieveSharedCalendarShareesTaskGroup
- (CalDAVRetrieveSharedCalendarShareesTaskGroup)initWithAccountInfoProvider:(id)provider taskManager:(id)manager;
- (CalDAVRetrieveSharedCalendarShareesTaskGroup)initWithCalendarURL:(id)l accountInfoProvider:(id)provider taskManager:(id)manager;
- (void)startTaskGroup;
- (void)task:(id)task didFinishWithError:(id)error;
@end

@implementation CalDAVRetrieveSharedCalendarShareesTaskGroup

- (CalDAVRetrieveSharedCalendarShareesTaskGroup)initWithAccountInfoProvider:(id)provider taskManager:(id)manager
{
  providerCopy = provider;
  managerCopy = manager;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Initializing this class instance with an inherited initializer not allowed." userInfo:0];
  objc_exception_throw(v7);
}

- (CalDAVRetrieveSharedCalendarShareesTaskGroup)initWithCalendarURL:(id)l accountInfoProvider:(id)provider taskManager:(id)manager
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = CalDAVRetrieveSharedCalendarShareesTaskGroup;
  v9 = [(CoreDAVTaskGroup *)&v12 initWithAccountInfoProvider:provider taskManager:manager];
  v10 = v9;
  if (v9)
  {
    [(CalDAVRetrieveSharedCalendarShareesTaskGroup *)v9 setUrl:lCopy];
    [(CalDAVRetrieveSharedCalendarShareesTaskGroup *)v10 setSharees:0];
  }

  return v10;
}

- (void)startTaskGroup
{
  v3 = objc_alloc(MEMORY[0x277CFDBE8]);
  v10 = [v3 initWithNameSpace:*MEMORY[0x277CFDE90] name:@"invite" parseClass:objc_opt_class()];
  v4 = objc_alloc(MEMORY[0x277CFDC68]);
  v5 = [MEMORY[0x277CBEB98] setWithObject:v10];
  v6 = [(CalDAVRetrieveSharedCalendarShareesTaskGroup *)self url];
  v7 = [v4 initWithPropertiesToFind:v5 atURL:v6 withDepth:2];

  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v7 setAccountInfoProvider:accountInfoProvider];

  [v7 setDelegate:self];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  [taskManager submitQueuedCoreDAVTask:v7];
}

- (void)task:(id)task didFinishWithError:(id)error
{
  errorCopy = error;
  v9 = errorCopy;
  if (!errorCopy)
  {
    v7 = [task successfulValueForNameSpace:*MEMORY[0x277CFDE90] elementName:@"invite"];
    users = [v7 users];
    [(CalDAVRetrieveSharedCalendarShareesTaskGroup *)self setSharees:users];

    errorCopy = 0;
  }

  [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:errorCopy delegateCallbackBlock:0];
}

@end