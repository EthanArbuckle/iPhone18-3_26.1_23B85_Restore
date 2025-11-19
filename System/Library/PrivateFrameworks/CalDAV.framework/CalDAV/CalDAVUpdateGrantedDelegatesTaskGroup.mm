@interface CalDAVUpdateGrantedDelegatesTaskGroup
- (CalDAVUpdateGrantedDelegatesTaskGroup)initWithAccountInfoProvider:(id)a3 addWriteURLs:(id)a4 addReadURLs:(id)a5 removeURLs:(id)a6 taskManager:(id)a7;
- (void)_fetchExistingGrantedDelegates;
- (void)_populateUpdatesFromFetched:(id)a3 allowWrite:(BOOL)a4;
- (void)_updateDelegatesWithAllowWrite:(BOOL)a3;
- (void)propPatchTask:(id)a3 parsedResponses:(id)a4 error:(id)a5;
- (void)taskGroup:(id)a3 didFinishWithError:(id)a4;
@end

@implementation CalDAVUpdateGrantedDelegatesTaskGroup

- (CalDAVUpdateGrantedDelegatesTaskGroup)initWithAccountInfoProvider:(id)a3 addWriteURLs:(id)a4 addReadURLs:(id)a5 removeURLs:(id)a6 taskManager:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CalDAVUpdateGrantedDelegatesTaskGroup;
  v15 = [(CoreDAVTaskGroup *)&v18 initWithAccountInfoProvider:a3 taskManager:a7];
  v16 = v15;
  if (v15)
  {
    [(CalDAVUpdateGrantedDelegatesTaskGroup *)v15 setState:0];
    [(CalDAVUpdateGrantedDelegatesTaskGroup *)v16 setAddWriteURLs:v12];
    [(CalDAVUpdateGrantedDelegatesTaskGroup *)v16 setAddReadURLs:v13];
    [(CalDAVUpdateGrantedDelegatesTaskGroup *)v16 setRemoveURLs:v14];
  }

  return v16;
}

- (void)_fetchExistingGrantedDelegates
{
  [(CalDAVUpdateGrantedDelegatesTaskGroup *)self setState:1];
  v3 = [(CoreDAVTaskGroup *)self accountInfoProvider];
  v11 = [v3 principalURL];

  v4 = [CalDAVGetGrantedDelegatesTaskGroup alloc];
  v5 = [(CoreDAVTaskGroup *)self accountInfoProvider];
  v6 = [(CoreDAVTaskGroup *)self taskManager];
  v7 = [(CalDAVGetGrantedDelegatesTaskGroup *)v4 initWithAccountInfoProvider:v5 principalURL:v11 taskManager:v6];
  [(CalDAVUpdateGrantedDelegatesTaskGroup *)self setGetGrantedDelegatesTaskGroup:v7];

  v8 = [(CalDAVUpdateGrantedDelegatesTaskGroup *)self getGrantedDelegatesTaskGroup];
  [v8 setFetchPrincipalDetails:0];

  v9 = [(CalDAVUpdateGrantedDelegatesTaskGroup *)self getGrantedDelegatesTaskGroup];
  [v9 setDelegate:self];

  v10 = [(CalDAVUpdateGrantedDelegatesTaskGroup *)self getGrantedDelegatesTaskGroup];
  [v10 startTaskGroup];
}

- (void)_updateDelegatesWithAllowWrite:(BOOL)a3
{
  v3 = self;
  v39 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    [(CalDAVUpdateGrantedDelegatesTaskGroup *)self setState:3];
    v4 = @"calendar-proxy-write/";
    [(CalDAVUpdateGrantedDelegatesTaskGroup *)v3 updatedWriteURLs];
  }

  else
  {
    [(CalDAVUpdateGrantedDelegatesTaskGroup *)self setState:2];
    v4 = @"calendar-proxy-read/";
    [(CalDAVUpdateGrantedDelegatesTaskGroup *)v3 updatedReadURLs];
  }
  v5 = ;
  v6 = [(CoreDAVTaskGroup *)v3 accountInfoProvider];
  v7 = [v6 principalURL];
  v8 = [v7 CDVfixedURLByAppendingPathComponent:v4];

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
    v32 = v3;
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

        v21 = [v20 CDVRawPath];
        v22 = [v21 dataUsingEncoding:4];
        [v15 setPayload:v22];

        v23 = [v11 extraChildItems];
        [v23 addObject:v15];

        ++v18;
        v19 = v15;
      }

      while (v14 != v18);
      v14 = [v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v14);

    v3 = v32;
    v4 = v33;
    v8 = v31;
  }

  v24 = objc_alloc(MEMORY[0x277CFDC70]);
  v25 = [MEMORY[0x277CBEB98] setWithObject:v11];
  v26 = [v24 initWithPropertiesToSet:v25 andRemove:0 atURL:v8];

  v27 = [(CoreDAVTaskGroup *)v3 outstandingTasks];
  [v27 addObject:v26];

  v28 = [(CoreDAVTaskGroup *)v3 accountInfoProvider];
  [v26 setAccountInfoProvider:v28];

  [v26 setDelegate:v3];
  v29 = [(CoreDAVTaskGroup *)v3 taskManager];
  [v29 submitQueuedCoreDAVTask:v26];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_populateUpdatesFromFetched:(id)a3 allowWrite:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  if (v4)
  {
    v6 = [(CalDAVUpdateGrantedDelegatesTaskGroup *)self addWriteURLs];
    [(CalDAVUpdateGrantedDelegatesTaskGroup *)self addReadURLs];
  }

  else
  {
    v6 = [(CalDAVUpdateGrantedDelegatesTaskGroup *)self addReadURLs];
    [(CalDAVUpdateGrantedDelegatesTaskGroup *)self addWriteURLs];
  }
  v7 = ;
  v8 = [MEMORY[0x277CBEB58] setWithSet:v6];
  [v8 minusSet:v12];
  v9 = MEMORY[0x277CBEB58];
  v10 = [(CalDAVUpdateGrantedDelegatesTaskGroup *)self removeURLs];
  v11 = [v9 setWithSet:v10];

  [v11 unionSet:v7];
  [v11 intersectSet:v12];
  if ([v8 count] || objc_msgSend(v11, "count"))
  {
    [v8 unionSet:v12];
    [v8 minusSet:v11];
  }

  else
  {

    v8 = 0;
  }

  if (v4)
  {
    [(CalDAVUpdateGrantedDelegatesTaskGroup *)self setUpdatedWriteURLs:v8];
  }

  else
  {
    [(CalDAVUpdateGrantedDelegatesTaskGroup *)self setUpdatedReadURLs:v8];
  }
}

- (void)taskGroup:(id)a3 didFinishWithError:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!a4)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = [v6 readWritePrincipalDetails];
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v29 + 1) + 8 * i) principalURL];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v10);
    }

    [(CalDAVUpdateGrantedDelegatesTaskGroup *)self _populateUpdatesFromFetched:v7 allowWrite:1];
    [v7 removeAllObjects];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = [v6 readOnlyPrincipalDetails];
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v25 + 1) + 8 * j) principalURL];
          [v7 addObject:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v16);
    }

    [(CalDAVUpdateGrantedDelegatesTaskGroup *)self _populateUpdatesFromFetched:v7 allowWrite:0];
    v20 = [(CalDAVUpdateGrantedDelegatesTaskGroup *)self updatedWriteURLs];

    if (v20)
    {
      v21 = self;
      v22 = 1;
    }

    else
    {
      v23 = [(CalDAVUpdateGrantedDelegatesTaskGroup *)self updatedReadURLs];

      v21 = self;
      if (!v23)
      {
        [(CalDAVUpdateGrantedDelegatesTaskGroup *)self _finishWithError:0 state:7];
        goto LABEL_22;
      }

      v22 = 0;
    }

    [(CalDAVUpdateGrantedDelegatesTaskGroup *)v21 _updateDelegatesWithAllowWrite:v22];
LABEL_22:

    goto LABEL_23;
  }

  [(CalDAVUpdateGrantedDelegatesTaskGroup *)self _finishWithError:a4 state:4];
LABEL_23:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)propPatchTask:(id)a3 parsedResponses:(id)a4 error:(id)a5
{
  v13 = a5;
  v7 = a3;
  v8 = [(CoreDAVTaskGroup *)self outstandingTasks];
  [v8 removeObject:v7];

  if (v13)
  {
    v9 = self;
    v10 = v13;
    v11 = 5;
  }

  else
  {
    if ([(CalDAVUpdateGrantedDelegatesTaskGroup *)self state]== 3)
    {
      v12 = [(CalDAVUpdateGrantedDelegatesTaskGroup *)self updatedReadURLs];

      if (v12)
      {
        [(CalDAVUpdateGrantedDelegatesTaskGroup *)self _updateDelegatesWithAllowWrite:0];
        goto LABEL_10;
      }
    }

    else if ([(CalDAVUpdateGrantedDelegatesTaskGroup *)self state]!= 2)
    {
      v9 = self;
      v10 = 0;
      v11 = 6;
      goto LABEL_9;
    }

    v9 = self;
    v10 = 0;
    v11 = 7;
  }

LABEL_9:
  [(CalDAVUpdateGrantedDelegatesTaskGroup *)v9 _finishWithError:v10 state:v11];
LABEL_10:
}

@end