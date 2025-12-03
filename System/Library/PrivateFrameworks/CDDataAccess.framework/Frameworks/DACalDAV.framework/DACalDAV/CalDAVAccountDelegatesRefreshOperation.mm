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
  v49 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  errorCopy = error;
  outstandingTaskGroups = [(CalDAVOperation *)self outstandingTaskGroups];
  [outstandingTaskGroups removeObject:groupCopy];

  if (!errorCopy)
  {
    selfCopy = self;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    readWritePrincipalDetails = [groupCopy readWritePrincipalDetails];
    v11 = [readWritePrincipalDetails countByEnumeratingWithState:&v43 objects:v48 count:16];
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
            objc_enumerationMutation(readWritePrincipalDetails);
          }

          v15 = *(*(&v43 + 1) + 8 * i);
          principalURL = [v15 principalURL];
          relativePath = [principalURL relativePath];
          da_appendSlashIfNeeded = [relativePath da_appendSlashIfNeeded];

          v19 = [MobileCalDAVDelegateUserInfo infoFromCalDAVDetails:v15 allowWrite:1];
          [dictionary setObject:v19 forKeyedSubscript:da_appendSlashIfNeeded];
        }

        v12 = [readWritePrincipalDetails countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v12);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    readOnlyPrincipalDetails = [groupCopy readOnlyPrincipalDetails];
    v21 = [readOnlyPrincipalDetails countByEnumeratingWithState:&v39 objects:v47 count:16];
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
            objc_enumerationMutation(readOnlyPrincipalDetails);
          }

          v25 = *(*(&v39 + 1) + 8 * j);
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

        v22 = [readOnlyPrincipalDetails countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v22);
    }

    self = selfCopy;
    principal = [(CalDAVOperation *)selfCopy principal];
    account = [principal account];

    v33 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];
    [account setDelegateUserInfos:v33];

    errorCopy = 0;
  }

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __71__CalDAVAccountDelegatesRefreshOperation_taskGroup_didFinishWithError___block_invoke;
  v37[3] = &unk_278D4F7F8;
  v37[4] = self;
  v38 = errorCopy;
  v34 = errorCopy;
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