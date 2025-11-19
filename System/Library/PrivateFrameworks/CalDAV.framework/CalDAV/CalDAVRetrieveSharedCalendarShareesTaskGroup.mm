@interface CalDAVRetrieveSharedCalendarShareesTaskGroup
- (CalDAVRetrieveSharedCalendarShareesTaskGroup)initWithAccountInfoProvider:(id)a3 taskManager:(id)a4;
- (CalDAVRetrieveSharedCalendarShareesTaskGroup)initWithCalendarURL:(id)a3 accountInfoProvider:(id)a4 taskManager:(id)a5;
- (void)startTaskGroup;
- (void)task:(id)a3 didFinishWithError:(id)a4;
@end

@implementation CalDAVRetrieveSharedCalendarShareesTaskGroup

- (CalDAVRetrieveSharedCalendarShareesTaskGroup)initWithAccountInfoProvider:(id)a3 taskManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Initializing this class instance with an inherited initializer not allowed." userInfo:0];
  objc_exception_throw(v7);
}

- (CalDAVRetrieveSharedCalendarShareesTaskGroup)initWithCalendarURL:(id)a3 accountInfoProvider:(id)a4 taskManager:(id)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = CalDAVRetrieveSharedCalendarShareesTaskGroup;
  v9 = [(CoreDAVTaskGroup *)&v12 initWithAccountInfoProvider:a4 taskManager:a5];
  v10 = v9;
  if (v9)
  {
    [(CalDAVRetrieveSharedCalendarShareesTaskGroup *)v9 setUrl:v8];
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

  v8 = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v7 setAccountInfoProvider:v8];

  [v7 setDelegate:self];
  v9 = [(CoreDAVTaskGroup *)self taskManager];
  [v9 submitQueuedCoreDAVTask:v7];
}

- (void)task:(id)a3 didFinishWithError:(id)a4
{
  v6 = a4;
  v9 = v6;
  if (!v6)
  {
    v7 = [a3 successfulValueForNameSpace:*MEMORY[0x277CFDE90] elementName:@"invite"];
    v8 = [v7 users];
    [(CalDAVRetrieveSharedCalendarShareesTaskGroup *)self setSharees:v8];

    v6 = 0;
  }

  [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:v6 delegateCallbackBlock:0];
}

@end