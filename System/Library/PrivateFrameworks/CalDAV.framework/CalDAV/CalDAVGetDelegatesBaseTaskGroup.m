@interface CalDAVGetDelegatesBaseTaskGroup
- (CalDAVGetDelegatesBaseTaskGroup)initWithAccountInfoProvider:(id)a3 principalURL:(id)a4 taskManager:(id)a5;
- (NSSet)readOnlyPrincipalDetails;
- (NSSet)readWritePrincipalDetails;
- (id)_mappingsForPrincipalDetails;
- (id)_popFromArray:(id)a3;
- (void)_getPrincipalDetailsForURL:(id)a3;
- (void)_processDetailsFromMultiStatus:(id)a3 allowWrite:(BOOL)a4;
- (void)bailWithError:(id)a3;
- (void)task:(id)a3 didFinishWithError:(id)a4;
- (void)taskGroup:(id)a3 didFinishWithError:(id)a4;
@end

@implementation CalDAVGetDelegatesBaseTaskGroup

- (CalDAVGetDelegatesBaseTaskGroup)initWithAccountInfoProvider:(id)a3 principalURL:(id)a4 taskManager:(id)a5
{
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CalDAVGetDelegatesBaseTaskGroup;
  v9 = [(CoreDAVTaskGroup *)&v16 initWithAccountInfoProvider:a3 taskManager:a5];
  v10 = v9;
  if (v9)
  {
    [(CalDAVGetDelegatesBaseTaskGroup *)v9 setPrincipalURL:v8];
    v11 = [MEMORY[0x277CBEB58] set];
    [(CalDAVGetDelegatesBaseTaskGroup *)v10 setReadDetails:v11];

    v12 = [MEMORY[0x277CBEB58] set];
    [(CalDAVGetDelegatesBaseTaskGroup *)v10 setWriteDetails:v12];

    v13 = [MEMORY[0x277CBEB18] array];
    [(CalDAVGetDelegatesBaseTaskGroup *)v10 setReadPrincipalURLs:v13];

    v14 = [MEMORY[0x277CBEB18] array];
    [(CalDAVGetDelegatesBaseTaskGroup *)v10 setWritePrincipalURLs:v14];
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

- (void)_processDetailsFromMultiStatus:(id)a3 allowWrite:(BOOL)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4)
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
  v8 = [v6 responses];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v8);
        }

        v11 = [CalDAVPrincipalEmailDetailsResult resultFromResponseItem:*(*(&v18 + 1) + 8 * v13)];

        v15 = [v11 addresses];
        v16 = [v15 count];

        if (v16)
        {
          [v7 addObject:v11];
        }

        ++v13;
        v14 = v11;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_getPrincipalDetailsForURL:(id)a3
{
  v4 = a3;
  v5 = [CalDAVGetPrincipalEmailDetailsTaskGroup alloc];
  v6 = [(CoreDAVTaskGroup *)self accountInfoProvider];
  v7 = [(CoreDAVTaskGroup *)self taskManager];
  v8 = [(CalDAVGetPrincipalEmailDetailsTaskGroup *)v5 initWithAccountInfoProvider:v6 principalURL:v4 taskManager:v7];

  [(CalDAVGetDelegatesBaseTaskGroup *)self setGetPrincipalEmailDetailsTaskGroup:v8];
  v9 = [(CalDAVGetDelegatesBaseTaskGroup *)self getPrincipalEmailDetailsTaskGroup];
  [v9 setDelegate:self];

  v10 = [(CalDAVGetDelegatesBaseTaskGroup *)self getPrincipalEmailDetailsTaskGroup];
  [v10 startTaskGroup];
}

- (id)_popFromArray:(id)a3
{
  v3 = a3;
  v4 = [v3 lastObject];
  [v3 removeLastObject];

  return v4;
}

- (void)bailWithError:(id)a3
{
  v4 = a3;
  v5 = [(CalDAVGetDelegatesBaseTaskGroup *)self getPrincipalEmailDetailsTaskGroup];

  if (v5)
  {
    v6 = [(CalDAVGetDelegatesBaseTaskGroup *)self getPrincipalEmailDetailsTaskGroup];
    [v6 bailWithError:v4];

    [(CalDAVGetDelegatesBaseTaskGroup *)self setGetPrincipalEmailDetailsTaskGroup:0];
  }

  v7.receiver = self;
  v7.super_class = CalDAVGetDelegatesBaseTaskGroup;
  [(CoreDAVTaskGroup *)&v7 bailWithError:v4];
}

- (void)task:(id)a3 didFinishWithError:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"CalDAVGetDelegatesBaseTaskGroup.m" lineNumber:113 description:@"Must implement task:didFinishWithError: in subclass"];
}

- (void)taskGroup:(id)a3 didFinishWithError:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"CalDAVGetDelegatesBaseTaskGroup.m" lineNumber:117 description:@"Must implement taskGroup:didFinishWithError: in subclass"];
}

- (NSSet)readOnlyPrincipalDetails
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(CalDAVGetDelegatesBaseTaskGroup *)self readDetails];
  v4 = [v2 setWithSet:v3];

  return v4;
}

- (NSSet)readWritePrincipalDetails
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(CalDAVGetDelegatesBaseTaskGroup *)self writeDetails];
  v4 = [v2 setWithSet:v3];

  return v4;
}

@end