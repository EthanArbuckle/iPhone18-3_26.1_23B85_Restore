@interface CalDAVAccountDelegatesRefreshOperation
- (void)refreshDelegates;
- (void)taskGroup:(id)a3 didFinishWithError:(id)a4;
@end

@implementation CalDAVAccountDelegatesRefreshOperation

- (void)refreshDelegates
{
  v3 = objc_alloc(MEMORY[0x277CF7000]);
  v4 = [(CalDAVOperation *)self principal];
  v5 = [(CalDAVOperation *)self principal];
  v6 = [v5 principalURL];
  v7 = [(CoreDAVTaskGroup *)self taskManager];
  v10 = [v3 initWithAccountInfoProvider:v4 principalURL:v6 taskManager:v7];

  [v10 setDelegate:self];
  v8 = [(CalDAVOperation *)self principal];
  [v10 setServerSupportsExpandPropertyReport:{objc_msgSend(v8, "isExpandPropertyReportSupported")}];

  v9 = [(CalDAVOperation *)self outstandingTaskGroups];
  [v9 addObject:v10];

  [v10 startTaskGroup];
}

- (void)taskGroup:(id)a3 didFinishWithError:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CalDAVOperation *)self outstandingTaskGroups];
  [v8 removeObject:v6];

  if (!v7)
  {
    v36 = self;
    v9 = [MEMORY[0x277CBEB38] dictionary];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v10 = [v6 readWritePrincipalDetails];
    v11 = [v10 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v44;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v44 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v43 + 1) + 8 * i);
          v16 = [v15 principalURL];
          v17 = [v16 relativePath];
          v18 = [v17 da_appendSlashIfNeeded];

          v19 = [MobileCalDAVDelegateUserInfo infoFromCalDAVDetails:v15 allowWrite:1];
          [v9 setObject:v19 forKeyedSubscript:v18];
        }

        v12 = [v10 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v12);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v20 = [v6 readOnlyPrincipalDetails];
    v21 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v40;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v40 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v39 + 1) + 8 * j);
          v26 = [v25 principalURL];
          v27 = [v26 relativePath];
          v28 = [v27 da_appendSlashIfNeeded];

          v29 = [v9 objectForKeyedSubscript:v28];

          if (!v29)
          {
            v30 = [MobileCalDAVDelegateUserInfo infoFromCalDAVDetails:v25 allowWrite:0];
            [v9 setObject:v30 forKeyedSubscript:v28];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v22);
    }

    self = v36;
    v31 = [(CalDAVOperation *)v36 principal];
    v32 = [v31 account];

    v33 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v9];
    [v32 setDelegateUserInfos:v33];

    v7 = 0;
  }

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __71__CalDAVAccountDelegatesRefreshOperation_taskGroup_didFinishWithError___block_invoke;
  v37[3] = &unk_278D4F7F8;
  v37[4] = self;
  v38 = v7;
  v34 = v7;
  [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:v34 delegateCallbackBlock:v37];

  v35 = *MEMORY[0x277D85DE8];
}

void __71__CalDAVAccountDelegatesRefreshOperation_taskGroup_didFinishWithError___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) mdelegate];
  v2 = [*(a1 + 32) principal];
  [v3 delegateRefreshForPrincipal:v2 completedWithError:*(a1 + 40)];
}

@end