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
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CalDAVOperation *)self outstandingTaskGroups];
  [v8 removeObject:v6];

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v34 = v6;
    v10 = [v6 readWritePrincipalDetails];
    v11 = [v10 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v43;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v43 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v42 + 1) + 8 * i);
          v16 = [v15 principalURL];
          v17 = [v16 relativePath];
          v18 = [v17 da_appendSlashIfNeeded];

          v19 = [MobileCalDAVDelegateUserInfo infoFromCalDAVDetails:v15 allowWrite:1];
          [v9 setObject:v19 forKeyedSubscript:v18];
        }

        v12 = [v10 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v12);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v20 = [v34 readOnlyPrincipalDetails];
    v21 = [v20 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v39;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v39 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v38 + 1) + 8 * j);
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

        v22 = [v20 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v22);
    }

    v6 = v34;
    v7 = 0;
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __71__CalDAVAccountDelegatesRefreshOperation_taskGroup_didFinishWithError___block_invoke;
  v35[3] = &unk_278F17EA8;
  v35[4] = self;
  v36 = v9;
  v37 = v7;
  v31 = v9;
  v32 = v7;
  [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:v32 delegateCallbackBlock:v35];

  v33 = *MEMORY[0x277D85DE8];
}

void __71__CalDAVAccountDelegatesRefreshOperation_taskGroup_didFinishWithError___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) mdelegate];
  v2 = [*(a1 + 32) principal];
  [v3 delegateRefreshForPrincipal:v2 completedWithDelegateUserInfo:*(a1 + 40) error:*(a1 + 48)];
}

@end