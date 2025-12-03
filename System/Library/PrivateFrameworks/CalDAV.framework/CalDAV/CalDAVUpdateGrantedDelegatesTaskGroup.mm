@interface CalDAVUpdateGrantedDelegatesTaskGroup
- (CalDAVUpdateGrantedDelegatesTaskGroup)initWithAccountInfoProvider:(id)provider addWriteURLs:(id)ls addReadURLs:(id)rLs removeURLs:(id)uRLs taskManager:(id)manager;
- (void)_fetchExistingGrantedDelegates;
- (void)_populateUpdatesFromFetched:(id)fetched allowWrite:(BOOL)write;
- (void)_updateDelegatesWithAllowWrite:(BOOL)write;
- (void)propPatchTask:(id)task parsedResponses:(id)responses error:(id)error;
- (void)taskGroup:(id)group didFinishWithError:(id)error;
@end

@implementation CalDAVUpdateGrantedDelegatesTaskGroup

- (CalDAVUpdateGrantedDelegatesTaskGroup)initWithAccountInfoProvider:(id)provider addWriteURLs:(id)ls addReadURLs:(id)rLs removeURLs:(id)uRLs taskManager:(id)manager
{
  lsCopy = ls;
  rLsCopy = rLs;
  uRLsCopy = uRLs;
  v18.receiver = self;
  v18.super_class = CalDAVUpdateGrantedDelegatesTaskGroup;
  v15 = [(CoreDAVTaskGroup *)&v18 initWithAccountInfoProvider:provider taskManager:manager];
  v16 = v15;
  if (v15)
  {
    [(CalDAVUpdateGrantedDelegatesTaskGroup *)v15 setState:0];
    [(CalDAVUpdateGrantedDelegatesTaskGroup *)v16 setAddWriteURLs:lsCopy];
    [(CalDAVUpdateGrantedDelegatesTaskGroup *)v16 setAddReadURLs:rLsCopy];
    [(CalDAVUpdateGrantedDelegatesTaskGroup *)v16 setRemoveURLs:uRLsCopy];
  }

  return v16;
}

- (void)_fetchExistingGrantedDelegates
{
  [(CalDAVUpdateGrantedDelegatesTaskGroup *)self setState:1];
  accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
  principalURL = [accountInfoProvider principalURL];

  v4 = [CalDAVGetGrantedDelegatesTaskGroup alloc];
  accountInfoProvider2 = [(CoreDAVTaskGroup *)self accountInfoProvider];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  v7 = [(CalDAVGetGrantedDelegatesTaskGroup *)v4 initWithAccountInfoProvider:accountInfoProvider2 principalURL:principalURL taskManager:taskManager];
  [(CalDAVUpdateGrantedDelegatesTaskGroup *)self setGetGrantedDelegatesTaskGroup:v7];

  getGrantedDelegatesTaskGroup = [(CalDAVUpdateGrantedDelegatesTaskGroup *)self getGrantedDelegatesTaskGroup];
  [getGrantedDelegatesTaskGroup setFetchPrincipalDetails:0];

  getGrantedDelegatesTaskGroup2 = [(CalDAVUpdateGrantedDelegatesTaskGroup *)self getGrantedDelegatesTaskGroup];
  [getGrantedDelegatesTaskGroup2 setDelegate:self];

  getGrantedDelegatesTaskGroup3 = [(CalDAVUpdateGrantedDelegatesTaskGroup *)self getGrantedDelegatesTaskGroup];
  [getGrantedDelegatesTaskGroup3 startTaskGroup];
}

- (void)_updateDelegatesWithAllowWrite:(BOOL)write
{
  selfCopy = self;
  v39 = *MEMORY[0x277D85DE8];
  if (write)
  {
    [(CalDAVUpdateGrantedDelegatesTaskGroup *)self setState:3];
    v4 = @"calendar-proxy-write/";
    [(CalDAVUpdateGrantedDelegatesTaskGroup *)selfCopy updatedWriteURLs];
  }

  else
  {
    [(CalDAVUpdateGrantedDelegatesTaskGroup *)self setState:2];
    v4 = @"calendar-proxy-read/";
    [(CalDAVUpdateGrantedDelegatesTaskGroup *)selfCopy updatedReadURLs];
  }
  v5 = ;
  accountInfoProvider = [(CoreDAVTaskGroup *)selfCopy accountInfoProvider];
  principalURL = [accountInfoProvider principalURL];
  v8 = [principalURL CDVfixedURLByAppendingPathComponent:v4];

  v9 = objc_alloc(MEMORY[0x277CFDBE0]);
  v10 = *MEMORY[0x277CFDEF8];
  v11 = [v9 initWithNameSpace:*MEMORY[0x277CFDEF8] andName:*MEMORY[0x277CFDF28]];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v31 = v8;
    v32 = selfCopy;
    v33 = v4;
    v15 = 0;
    v16 = *v35;
    v17 = *MEMORY[0x277CFDF38];
    do
    {
      v18 = 0;
      v19 = v15;
      do
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(*(&v34 + 1) + 8 * v18);
        v15 = [objc_alloc(MEMORY[0x277CFDBE0]) initWithNameSpace:v10 andName:v17];

        cDVRawPath = [v20 CDVRawPath];
        v22 = [cDVRawPath dataUsingEncoding:4];
        [v15 setPayload:v22];

        extraChildItems = [v11 extraChildItems];
        [extraChildItems addObject:v15];

        ++v18;
        v19 = v15;
      }

      while (v14 != v18);
      v14 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v14);

    selfCopy = v32;
    v4 = v33;
    v8 = v31;
  }

  v24 = objc_alloc(MEMORY[0x277CFDC70]);
  v25 = [MEMORY[0x277CBEB98] setWithObject:v11];
  v26 = [v24 initWithPropertiesToSet:v25 andRemove:0 atURL:v8];

  outstandingTasks = [(CoreDAVTaskGroup *)selfCopy outstandingTasks];
  [outstandingTasks addObject:v26];

  accountInfoProvider2 = [(CoreDAVTaskGroup *)selfCopy accountInfoProvider];
  [v26 setAccountInfoProvider:accountInfoProvider2];

  [v26 setDelegate:selfCopy];
  taskManager = [(CoreDAVTaskGroup *)selfCopy taskManager];
  [taskManager submitQueuedCoreDAVTask:v26];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_populateUpdatesFromFetched:(id)fetched allowWrite:(BOOL)write
{
  writeCopy = write;
  fetchedCopy = fetched;
  if (writeCopy)
  {
    addWriteURLs = [(CalDAVUpdateGrantedDelegatesTaskGroup *)self addWriteURLs];
    [(CalDAVUpdateGrantedDelegatesTaskGroup *)self addReadURLs];
  }

  else
  {
    addWriteURLs = [(CalDAVUpdateGrantedDelegatesTaskGroup *)self addReadURLs];
    [(CalDAVUpdateGrantedDelegatesTaskGroup *)self addWriteURLs];
  }
  v7 = ;
  v8 = [MEMORY[0x277CBEB58] setWithSet:addWriteURLs];
  [v8 minusSet:fetchedCopy];
  v9 = MEMORY[0x277CBEB58];
  removeURLs = [(CalDAVUpdateGrantedDelegatesTaskGroup *)self removeURLs];
  v11 = [v9 setWithSet:removeURLs];

  [v11 unionSet:v7];
  [v11 intersectSet:fetchedCopy];
  if ([v8 count] || objc_msgSend(v11, "count"))
  {
    [v8 unionSet:fetchedCopy];
    [v8 minusSet:v11];
  }

  else
  {

    v8 = 0;
  }

  if (writeCopy)
  {
    [(CalDAVUpdateGrantedDelegatesTaskGroup *)self setUpdatedWriteURLs:v8];
  }

  else
  {
    [(CalDAVUpdateGrantedDelegatesTaskGroup *)self setUpdatedReadURLs:v8];
  }
}

- (void)taskGroup:(id)group didFinishWithError:(id)error
{
  v35 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  if (!error)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    readWritePrincipalDetails = [groupCopy readWritePrincipalDetails];
    v9 = [readWritePrincipalDetails countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(readWritePrincipalDetails);
          }

          principalURL = [*(*(&v29 + 1) + 8 * i) principalURL];
          [v7 addObject:principalURL];
        }

        v10 = [readWritePrincipalDetails countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v10);
    }

    [(CalDAVUpdateGrantedDelegatesTaskGroup *)self _populateUpdatesFromFetched:v7 allowWrite:1];
    [v7 removeAllObjects];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    readOnlyPrincipalDetails = [groupCopy readOnlyPrincipalDetails];
    v15 = [readOnlyPrincipalDetails countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(readOnlyPrincipalDetails);
          }

          principalURL2 = [*(*(&v25 + 1) + 8 * j) principalURL];
          [v7 addObject:principalURL2];
        }

        v16 = [readOnlyPrincipalDetails countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v16);
    }

    [(CalDAVUpdateGrantedDelegatesTaskGroup *)self _populateUpdatesFromFetched:v7 allowWrite:0];
    updatedWriteURLs = [(CalDAVUpdateGrantedDelegatesTaskGroup *)self updatedWriteURLs];

    if (updatedWriteURLs)
    {
      selfCopy2 = self;
      v22 = 1;
    }

    else
    {
      updatedReadURLs = [(CalDAVUpdateGrantedDelegatesTaskGroup *)self updatedReadURLs];

      selfCopy2 = self;
      if (!updatedReadURLs)
      {
        [(CalDAVUpdateGrantedDelegatesTaskGroup *)self _finishWithError:0 state:7];
        goto LABEL_22;
      }

      v22 = 0;
    }

    [(CalDAVUpdateGrantedDelegatesTaskGroup *)selfCopy2 _updateDelegatesWithAllowWrite:v22];
LABEL_22:

    goto LABEL_23;
  }

  [(CalDAVUpdateGrantedDelegatesTaskGroup *)self _finishWithError:error state:4];
LABEL_23:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)propPatchTask:(id)task parsedResponses:(id)responses error:(id)error
{
  errorCopy = error;
  taskCopy = task;
  outstandingTasks = [(CoreDAVTaskGroup *)self outstandingTasks];
  [outstandingTasks removeObject:taskCopy];

  if (errorCopy)
  {
    selfCopy3 = self;
    v10 = errorCopy;
    v11 = 5;
  }

  else
  {
    if ([(CalDAVUpdateGrantedDelegatesTaskGroup *)self state]== 3)
    {
      updatedReadURLs = [(CalDAVUpdateGrantedDelegatesTaskGroup *)self updatedReadURLs];

      if (updatedReadURLs)
      {
        [(CalDAVUpdateGrantedDelegatesTaskGroup *)self _updateDelegatesWithAllowWrite:0];
        goto LABEL_10;
      }
    }

    else if ([(CalDAVUpdateGrantedDelegatesTaskGroup *)self state]!= 2)
    {
      selfCopy3 = self;
      v10 = 0;
      v11 = 6;
      goto LABEL_9;
    }

    selfCopy3 = self;
    v10 = 0;
    v11 = 7;
  }

LABEL_9:
  [(CalDAVUpdateGrantedDelegatesTaskGroup *)selfCopy3 _finishWithError:v10 state:v11];
LABEL_10:
}

@end