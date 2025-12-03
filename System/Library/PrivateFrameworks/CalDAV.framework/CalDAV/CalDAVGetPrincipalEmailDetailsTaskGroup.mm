@interface CalDAVGetPrincipalEmailDetailsTaskGroup
- (CalDAVGetPrincipalEmailDetailsTaskGroup)initWithAccountInfoProvider:(id)provider principalURL:(id)l taskManager:(id)manager;
- (NSSet)addresses;
- (NSString)displayName;
- (void)_processPropFind:(id)find;
- (void)startTaskGroup;
- (void)task:(id)task didFinishWithError:(id)error;
@end

@implementation CalDAVGetPrincipalEmailDetailsTaskGroup

- (CalDAVGetPrincipalEmailDetailsTaskGroup)initWithAccountInfoProvider:(id)provider principalURL:(id)l taskManager:(id)manager
{
  lCopy = l;
  v12.receiver = self;
  v12.super_class = CalDAVGetPrincipalEmailDetailsTaskGroup;
  v9 = [(CoreDAVTaskGroup *)&v12 initWithAccountInfoProvider:provider taskManager:manager];
  v10 = v9;
  if (v9)
  {
    [(CalDAVGetPrincipalEmailDetailsTaskGroup *)v9 setPrincipalURL:lCopy];
  }

  return v10;
}

- (void)startTaskGroup
{
  v3 = [MEMORY[0x277CBEB58] set];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__CalDAVGetPrincipalEmailDetailsTaskGroup_startTaskGroup__block_invoke;
  v15[3] = &unk_278D66C50;
  v16 = v3;
  v4 = v3;
  v5 = MEMORY[0x245D182B0](v15);
  v6 = objc_opt_class();
  v5[2](v5, 3, v6);
  v7 = objc_opt_class();
  v5[2](v5, 6, v7);
  v8 = objc_opt_class();
  v5[2](v5, 4, v8);
  v9 = objc_alloc(MEMORY[0x277CFDC68]);
  principalURL = [(CalDAVGetPrincipalEmailDetailsTaskGroup *)self principalURL];
  v11 = [v9 initWithPropertiesToFind:v4 atURL:principalURL withDepth:2];

  outstandingTasks = [(CoreDAVTaskGroup *)self outstandingTasks];
  [outstandingTasks addObject:v11];

  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v11 setAccountInfoProvider:accountInfoProvider];

  [v11 setDelegate:self];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  [taskManager submitQueuedCoreDAVTask:v11];
}

void __57__CalDAVGetPrincipalEmailDetailsTaskGroup_startTaskGroup__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [CalDAVPrincipalSearchSupport namespaceForWellKnownType:a2];
  v6 = [CalDAVPrincipalSearchSupport nameForWellKnownType:a2];
  v7 = [objc_alloc(MEMORY[0x277CFDBE8]) initWithNameSpace:v8 name:v6 parseClass:a3];
  [*(a1 + 32) addObject:v7];
}

- (void)_processPropFind:(id)find
{
  multiStatus = [find multiStatus];
  responses = [multiStatus responses];
  anyObject = [responses anyObject];

  v6 = [CalDAVPrincipalEmailDetailsResult resultFromResponseItem:anyObject];
  [(CalDAVGetPrincipalEmailDetailsTaskGroup *)self setPrincipalResult:v6];
}

- (void)task:(id)task didFinishWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v7 = errorCopy;
  if (errorCopy)
  {
    getTotalFailureError = errorCopy;
  }

  else
  {
    getTotalFailureError = [taskCopy getTotalFailureError];
    if (!getTotalFailureError)
    {
      [(CalDAVGetPrincipalEmailDetailsTaskGroup *)self _processPropFind:taskCopy];
    }
  }

  [(CalDAVGetPrincipalEmailDetailsTaskGroup *)self _finishWithError:getTotalFailureError];
  outstandingTasks = [(CoreDAVTaskGroup *)self outstandingTasks];
  [outstandingTasks removeObject:taskCopy];
}

- (NSSet)addresses
{
  principalResult = [(CalDAVGetPrincipalEmailDetailsTaskGroup *)self principalResult];
  addresses = [principalResult addresses];

  return addresses;
}

- (NSString)displayName
{
  principalResult = [(CalDAVGetPrincipalEmailDetailsTaskGroup *)self principalResult];
  displayName = [principalResult displayName];

  return displayName;
}

@end