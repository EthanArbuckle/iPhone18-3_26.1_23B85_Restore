@interface CalDAVGetPrincipalEmailDetailsTaskGroup
- (CalDAVGetPrincipalEmailDetailsTaskGroup)initWithAccountInfoProvider:(id)a3 principalURL:(id)a4 taskManager:(id)a5;
- (NSSet)addresses;
- (NSString)displayName;
- (void)_processPropFind:(id)a3;
- (void)startTaskGroup;
- (void)task:(id)a3 didFinishWithError:(id)a4;
@end

@implementation CalDAVGetPrincipalEmailDetailsTaskGroup

- (CalDAVGetPrincipalEmailDetailsTaskGroup)initWithAccountInfoProvider:(id)a3 principalURL:(id)a4 taskManager:(id)a5
{
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CalDAVGetPrincipalEmailDetailsTaskGroup;
  v9 = [(CoreDAVTaskGroup *)&v12 initWithAccountInfoProvider:a3 taskManager:a5];
  v10 = v9;
  if (v9)
  {
    [(CalDAVGetPrincipalEmailDetailsTaskGroup *)v9 setPrincipalURL:v8];
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
  v10 = [(CalDAVGetPrincipalEmailDetailsTaskGroup *)self principalURL];
  v11 = [v9 initWithPropertiesToFind:v4 atURL:v10 withDepth:2];

  v12 = [(CoreDAVTaskGroup *)self outstandingTasks];
  [v12 addObject:v11];

  v13 = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v11 setAccountInfoProvider:v13];

  [v11 setDelegate:self];
  v14 = [(CoreDAVTaskGroup *)self taskManager];
  [v14 submitQueuedCoreDAVTask:v11];
}

void __57__CalDAVGetPrincipalEmailDetailsTaskGroup_startTaskGroup__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [CalDAVPrincipalSearchSupport namespaceForWellKnownType:a2];
  v6 = [CalDAVPrincipalSearchSupport nameForWellKnownType:a2];
  v7 = [objc_alloc(MEMORY[0x277CFDBE8]) initWithNameSpace:v8 name:v6 parseClass:a3];
  [*(a1 + 32) addObject:v7];
}

- (void)_processPropFind:(id)a3
{
  v4 = [a3 multiStatus];
  v5 = [v4 responses];
  v7 = [v5 anyObject];

  v6 = [CalDAVPrincipalEmailDetailsResult resultFromResponseItem:v7];
  [(CalDAVGetPrincipalEmailDetailsTaskGroup *)self setPrincipalResult:v6];
}

- (void)task:(id)a3 didFinishWithError:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v10 getTotalFailureError];
    if (!v8)
    {
      [(CalDAVGetPrincipalEmailDetailsTaskGroup *)self _processPropFind:v10];
    }
  }

  [(CalDAVGetPrincipalEmailDetailsTaskGroup *)self _finishWithError:v8];
  v9 = [(CoreDAVTaskGroup *)self outstandingTasks];
  [v9 removeObject:v10];
}

- (NSSet)addresses
{
  v2 = [(CalDAVGetPrincipalEmailDetailsTaskGroup *)self principalResult];
  v3 = [v2 addresses];

  return v3;
}

- (NSString)displayName
{
  v2 = [(CalDAVGetPrincipalEmailDetailsTaskGroup *)self principalResult];
  v3 = [v2 displayName];

  return v3;
}

@end