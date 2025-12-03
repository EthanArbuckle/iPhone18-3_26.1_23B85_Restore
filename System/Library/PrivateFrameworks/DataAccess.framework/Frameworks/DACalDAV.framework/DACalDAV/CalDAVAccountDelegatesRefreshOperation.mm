@interface CalDAVAccountDelegatesRefreshOperation
- (void)refreshDelegates;
- (void)taskGroup:(id)group didFinishWithError:(id)error;
@end

@implementation CalDAVAccountDelegatesRefreshOperation

- (void)refreshDelegates
{
  v3 = objc_alloc(MEMORY[0x277CF7000]);
  principal = [(CalDAVOperation *)self principal];
  principal2 = [(CalDAVOperation *)self principal];
  principalURL = [principal2 principalURL];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  v10 = [v3 initWithAccountInfoProvider:principal principalURL:principalURL taskManager:taskManager];

  [v10 setDelegate:self];
  principal3 = [(CalDAVOperation *)self principal];
  [v10 setServerSupportsExpandPropertyReport:{objc_msgSend(principal3, "isExpandPropertyReportSupported")}];

  outstandingTaskGroups = [(CalDAVOperation *)self outstandingTaskGroups];
  [outstandingTaskGroups addObject:v10];

  [v10 startTaskGroup];
}

- (void)taskGroup:(id)group didFinishWithError:(id)error
{
  v48 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  errorCopy = error;
  outstandingTaskGroups = [(CalDAVOperation *)self outstandingTaskGroups];
  [outstandingTaskGroups removeObject:groupCopy];

  if (errorCopy)
  {
    dictionary = 0;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v34 = groupCopy;
    readWritePrincipalDetails = [groupCopy readWritePrincipalDetails];
    v11 = [readWritePrincipalDetails countByEnumeratingWithState:&v42 objects:v47 count:16];
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
            objc_enumerationMutation(readWritePrincipalDetails);
          }

          v15 = *(*(&v42 + 1) + 8 * i);
          principalURL = [v15 principalURL];
          relativePath = [principalURL relativePath];
          da_appendSlashIfNeeded = [relativePath da_appendSlashIfNeeded];

          v19 = [MobileCalDAVDelegateUserInfo infoFromCalDAVDetails:v15 allowWrite:1];
          [dictionary setObject:v19 forKeyedSubscript:da_appendSlashIfNeeded];
        }

        v12 = [readWritePrincipalDetails countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v12);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    readOnlyPrincipalDetails = [v34 readOnlyPrincipalDetails];
    v21 = [readOnlyPrincipalDetails countByEnumeratingWithState:&v38 objects:v46 count:16];
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
            objc_enumerationMutation(readOnlyPrincipalDetails);
          }

          v25 = *(*(&v38 + 1) + 8 * j);
          principalURL2 = [v25 principalURL];
          relativePath2 = [principalURL2 relativePath];
          da_appendSlashIfNeeded2 = [relativePath2 da_appendSlashIfNeeded];

          v29 = [dictionary objectForKeyedSubscript:da_appendSlashIfNeeded2];

          if (!v29)
          {
            v30 = [MobileCalDAVDelegateUserInfo infoFromCalDAVDetails:v25 allowWrite:0];
            [dictionary setObject:v30 forKeyedSubscript:da_appendSlashIfNeeded2];
          }
        }

        v22 = [readOnlyPrincipalDetails countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v22);
    }

    groupCopy = v34;
    errorCopy = 0;
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __71__CalDAVAccountDelegatesRefreshOperation_taskGroup_didFinishWithError___block_invoke;
  v35[3] = &unk_278F17EA8;
  v35[4] = self;
  v36 = dictionary;
  v37 = errorCopy;
  v31 = dictionary;
  v32 = errorCopy;
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