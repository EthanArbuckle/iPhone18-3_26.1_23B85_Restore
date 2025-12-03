@interface CalDAVGetDelegatesBaseTaskGroup
- (CalDAVGetDelegatesBaseTaskGroup)initWithAccountInfoProvider:(id)provider principalURL:(id)l taskManager:(id)manager;
- (NSSet)readOnlyPrincipalDetails;
- (NSSet)readWritePrincipalDetails;
- (id)_mappingsForPrincipalDetails;
- (id)_popFromArray:(id)array;
- (void)_getPrincipalDetailsForURL:(id)l;
- (void)_processDetailsFromMultiStatus:(id)status allowWrite:(BOOL)write;
- (void)bailWithError:(id)error;
- (void)task:(id)task didFinishWithError:(id)error;
- (void)taskGroup:(id)group didFinishWithError:(id)error;
@end

@implementation CalDAVGetDelegatesBaseTaskGroup

- (CalDAVGetDelegatesBaseTaskGroup)initWithAccountInfoProvider:(id)provider principalURL:(id)l taskManager:(id)manager
{
  lCopy = l;
  v16.receiver = self;
  v16.super_class = CalDAVGetDelegatesBaseTaskGroup;
  v9 = [(CoreDAVTaskGroup *)&v16 initWithAccountInfoProvider:provider taskManager:manager];
  v10 = v9;
  if (v9)
  {
    [(CalDAVGetDelegatesBaseTaskGroup *)v9 setPrincipalURL:lCopy];
    v11 = [MEMORY[0x277CBEB58] set];
    [(CalDAVGetDelegatesBaseTaskGroup *)v10 setReadDetails:v11];

    v12 = [MEMORY[0x277CBEB58] set];
    [(CalDAVGetDelegatesBaseTaskGroup *)v10 setWriteDetails:v12];

    array = [MEMORY[0x277CBEB18] array];
    [(CalDAVGetDelegatesBaseTaskGroup *)v10 setReadPrincipalURLs:array];

    array2 = [MEMORY[0x277CBEB18] array];
    [(CalDAVGetDelegatesBaseTaskGroup *)v10 setWritePrincipalURLs:array2];
  }

  return v10;
}

- (id)_mappingsForPrincipalDetails
{
  v2 = [MEMORY[0x277CBEB58] set];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__CalDAVGetDelegatesBaseTaskGroup__mappingsForPrincipalDetails__block_invoke;
  v10[3] = &unk_278D66C50;
  v3 = v2;
  v11 = v3;
  v4 = MEMORY[0x245D182B0](v10);
  v5 = objc_opt_class();
  v4[2](v4, 3, v5);
  v6 = objc_opt_class();
  v4[2](v4, 6, v6);
  v7 = objc_opt_class();
  v4[2](v4, 4, v7);
  v8 = v3;

  return v3;
}

void __63__CalDAVGetDelegatesBaseTaskGroup__mappingsForPrincipalDetails__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [CalDAVPrincipalSearchSupport namespaceForWellKnownType:a2];
  v6 = [CalDAVPrincipalSearchSupport nameForWellKnownType:a2];
  v7 = [objc_alloc(MEMORY[0x277CFDBE8]) initWithNameSpace:v8 name:v6 parseClass:a3];
  [*(a1 + 32) addObject:v7];
}

- (void)_processDetailsFromMultiStatus:(id)status allowWrite:(BOOL)write
{
  v23 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  if (write)
  {
    [(CalDAVGetDelegatesBaseTaskGroup *)self writeDetails];
  }

  else
  {
    [(CalDAVGetDelegatesBaseTaskGroup *)self readDetails];
  }
  v7 = ;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  responses = [statusCopy responses];
  v9 = [responses countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v19;
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(responses);
        }

        v11 = [CalDAVPrincipalEmailDetailsResult resultFromResponseItem:*(*(&v18 + 1) + 8 * v13)];

        addresses = [v11 addresses];
        v16 = [addresses count];

        if (v16)
        {
          [v7 addObject:v11];
        }

        ++v13;
        v14 = v11;
      }

      while (v10 != v13);
      v10 = [responses countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_getPrincipalDetailsForURL:(id)l
{
  lCopy = l;
  v5 = [CalDAVGetPrincipalEmailDetailsTaskGroup alloc];
  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  v8 = [(CalDAVGetPrincipalEmailDetailsTaskGroup *)v5 initWithAccountInfoProvider:accountInfoProvider principalURL:lCopy taskManager:taskManager];

  [(CalDAVGetDelegatesBaseTaskGroup *)self setGetPrincipalEmailDetailsTaskGroup:v8];
  getPrincipalEmailDetailsTaskGroup = [(CalDAVGetDelegatesBaseTaskGroup *)self getPrincipalEmailDetailsTaskGroup];
  [getPrincipalEmailDetailsTaskGroup setDelegate:self];

  getPrincipalEmailDetailsTaskGroup2 = [(CalDAVGetDelegatesBaseTaskGroup *)self getPrincipalEmailDetailsTaskGroup];
  [getPrincipalEmailDetailsTaskGroup2 startTaskGroup];
}

- (id)_popFromArray:(id)array
{
  arrayCopy = array;
  lastObject = [arrayCopy lastObject];
  [arrayCopy removeLastObject];

  return lastObject;
}

- (void)bailWithError:(id)error
{
  errorCopy = error;
  getPrincipalEmailDetailsTaskGroup = [(CalDAVGetDelegatesBaseTaskGroup *)self getPrincipalEmailDetailsTaskGroup];

  if (getPrincipalEmailDetailsTaskGroup)
  {
    getPrincipalEmailDetailsTaskGroup2 = [(CalDAVGetDelegatesBaseTaskGroup *)self getPrincipalEmailDetailsTaskGroup];
    [getPrincipalEmailDetailsTaskGroup2 bailWithError:errorCopy];

    [(CalDAVGetDelegatesBaseTaskGroup *)self setGetPrincipalEmailDetailsTaskGroup:0];
  }

  v7.receiver = self;
  v7.super_class = CalDAVGetDelegatesBaseTaskGroup;
  [(CoreDAVTaskGroup *)&v7 bailWithError:errorCopy];
}

- (void)task:(id)task didFinishWithError:(id)error
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CalDAVGetDelegatesBaseTaskGroup.m" lineNumber:113 description:@"Must implement task:didFinishWithError: in subclass"];
}

- (void)taskGroup:(id)group didFinishWithError:(id)error
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CalDAVGetDelegatesBaseTaskGroup.m" lineNumber:117 description:@"Must implement taskGroup:didFinishWithError: in subclass"];
}

- (NSSet)readOnlyPrincipalDetails
{
  v2 = MEMORY[0x277CBEB98];
  readDetails = [(CalDAVGetDelegatesBaseTaskGroup *)self readDetails];
  v4 = [v2 setWithSet:readDetails];

  return v4;
}

- (NSSet)readWritePrincipalDetails
{
  v2 = MEMORY[0x277CBEB98];
  writeDetails = [(CalDAVGetDelegatesBaseTaskGroup *)self writeDetails];
  v4 = [v2 setWithSet:writeDetails];

  return v4;
}

@end