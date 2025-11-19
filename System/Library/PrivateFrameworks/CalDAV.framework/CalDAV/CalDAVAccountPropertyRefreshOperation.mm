@interface CalDAVAccountPropertyRefreshOperation
- (BOOL)shouldKeepDefaultAlarmError:(id)a3;
- (BOOL)shouldRefreshDefaultAlarms;
- (CalDAVAccountPropertyRefreshOperation)initWithPrincipal:(id)a3;
- (id)_copyHomePropertiesPropFindElements;
- (id)propPatchForProperty:(id)a3 value:(id)a4;
- (void)_finishCalDAVAccountPropertyRefreshOperationWithError:(id)a3;
- (void)_reallyRefreshProperties;
- (void)_refreshDefaultAlarms;
- (void)getAccountPropertiesTask:(id)a3 completedWithError:(id)a4;
- (void)propFindTask:(id)a3 parsedResponses:(id)a4 error:(id)a5;
- (void)refreshProperties;
- (void)sendLocallyChangedPropertiesIfNeeded;
@end

@implementation CalDAVAccountPropertyRefreshOperation

- (CalDAVAccountPropertyRefreshOperation)initWithPrincipal:(id)a3
{
  v7.receiver = self;
  v7.super_class = CalDAVAccountPropertyRefreshOperation;
  v3 = [(CalDAVOperation *)&v7 initWithPrincipal:a3];
  if (v3)
  {
    v4 = dispatch_group_create();
    defaultAlarmGroup = v3->_defaultAlarmGroup;
    v3->_defaultAlarmGroup = v4;
  }

  return v3;
}

- (id)propPatchForProperty:(id)a3 value:(id)a4
{
  v5 = MEMORY[0x277CFDBE0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = [v8 initWithNameSpace:*MEMORY[0x277CFDDC0] andName:v7];

  [v9 setPayloadAsString:v6];
  [v9 setUseCDATA:1];

  return v9;
}

- (void)sendLocallyChangedPropertiesIfNeeded
{
  v3 = objc_opt_new();
  v4 = [(CalDAVOperation *)self principal];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = [(CalDAVOperation *)self principal];
  if (([v5 needsDefaultTimedAlarmUpdate] & 1) == 0)
  {

    goto LABEL_7;
  }

  v6 = [(CalDAVOperation *)self principal];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CalDAVOperation *)self principal];
    v9 = [v8 defaultTimedAlarms];
    v10 = [(CalDAVAccountPropertyRefreshOperation *)self propPatchForProperty:@"default-alarm-vevent-datetime" value:v9];
    [v3 addObject:v10];

    v11 = [(CalDAVOperation *)self principal];
    LOBYTE(v8) = objc_opt_respondsToSelector();

    if (v8)
    {
      v4 = [(CalDAVOperation *)self principal];
      [v4 setNeedsDefaultTimedAlarmUpdate:0];
LABEL_7:
    }
  }

  v12 = [(CalDAVOperation *)self principal];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  v13 = [(CalDAVOperation *)self principal];
  if (([v13 needsDefaultAllDayAlarmUpdate] & 1) == 0)
  {

    goto LABEL_14;
  }

  v14 = [(CalDAVOperation *)self principal];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [(CalDAVOperation *)self principal];
    v17 = [v16 defaultAllDayAlarms];
    v18 = [(CalDAVAccountPropertyRefreshOperation *)self propPatchForProperty:@"default-alarm-vevent-date" value:v17];
    [v3 addObject:v18];

    v19 = [(CalDAVOperation *)self principal];
    LOBYTE(v16) = objc_opt_respondsToSelector();

    if (v16)
    {
      v12 = [(CalDAVOperation *)self principal];
      [v12 setNeedsDefaultAllDayAlarmUpdate:0];
      goto LABEL_14;
    }
  }

LABEL_15:
  if ([v3 count])
  {
    v20 = objc_alloc(MEMORY[0x277CFDC70]);
    v21 = [(CalDAVOperation *)self principal];
    v22 = [v21 calendarHomeURL];
    v23 = [v20 initWithPropertiesToSet:v3 andRemove:0 atURL:v22];

    v24 = [(CoreDAVTaskGroup *)self accountInfoProvider];
    [v23 setAccountInfoProvider:v24];

    objc_initWeak(&location, self);
    objc_initWeak(&from, v23);
    dispatch_group_enter(self->_defaultAlarmGroup);
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __77__CalDAVAccountPropertyRefreshOperation_sendLocallyChangedPropertiesIfNeeded__block_invoke;
    v30 = &unk_278D66918;
    objc_copyWeak(&v31, &location);
    objc_copyWeak(&v32, &from);
    [v23 setCompletionBlock:&v27];
    v25 = [(CoreDAVTaskGroup *)self outstandingTasks:v27];
    [v25 addObject:v23];

    v26 = [(CoreDAVTaskGroup *)self taskManager];
    [v26 submitQueuedCoreDAVTask:v23];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __77__CalDAVAccountPropertyRefreshOperation_sendLocallyChangedPropertiesIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (v2)
  {
    v3 = [WeakRetained outstandingTasks];
    [v3 removeObject:v2];
  }

  v4 = WeakRetained[14];
  if (v4)
  {
    dispatch_group_leave(v4);
  }
}

- (void)refreshProperties
{
  [(CalDAVAccountPropertyRefreshOperation *)self sendLocallyChangedPropertiesIfNeeded];
  defaultAlarmGroup = self->_defaultAlarmGroup;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CalDAVAccountPropertyRefreshOperation_refreshProperties__block_invoke;
  block[3] = &unk_278D66940;
  block[4] = self;
  dispatch_group_notify(defaultAlarmGroup, MEMORY[0x277D85CD0], block);
}

void *__58__CalDAVAccountPropertyRefreshOperation_refreshProperties__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((*(result + *MEMORY[0x277CFDD50]) & 1) == 0)
  {
    return [result _reallyRefreshProperties];
  }

  return result;
}

- (void)_reallyRefreshProperties
{
  v3 = [CalDAVGetAccountPropertiesTaskGroup alloc];
  v4 = [(CalDAVOperation *)self principal];
  v5 = [(CoreDAVTaskGroup *)self taskManager];
  v10 = [(CoreDAVGetAccountPropertiesTaskGroup *)v3 initWithAccountInfoProvider:v4 taskManager:v5];

  [(CoreDAVTaskGroup *)v10 setDelegate:self];
  v6 = [(CalDAVOperation *)self principal];
  LODWORD(v4) = [v6 isDelegate];

  if (v4)
  {
    v7 = [(CalDAVOperation *)self principal];
    v8 = [v7 principalURL];
    [(CalDAVGetAccountPropertiesTaskGroup *)v10 setDelegatePrincipalURL:v8];
  }

  [(CoreDAVGetAccountPropertiesTaskGroup *)v10 setFetchPrincipalSearchProperties:[(CalDAVAccountPropertyRefreshOperation *)self fetchPrincipalSearchProperties]];
  v9 = [(CalDAVOperation *)self outstandingTaskGroups];
  [v9 addObject:v10];

  [(CalDAVGetAccountPropertiesTaskGroup *)v10 startTaskGroup];
}

- (void)getAccountPropertiesTask:(id)a3 completedWithError:(id)a4
{
  v36 = a3;
  v6 = a4;
  v7 = [(CalDAVOperation *)self outstandingTaskGroups];
  [v7 removeObject:v36];

  v8 = [(CalDAVOperation *)self principal];
  v9 = v8;
  if (v6)
  {
    [(CalDAVAccountPropertyRefreshOperation *)self _finishCalDAVAccountPropertyRefreshOperationWithError:v6];
  }

  else
  {
    v10 = [v8 account];
    v11 = [v36 collections];
    v12 = [v11 anyObject];
    [v10 setCollectionSetURL:v12];

    v13 = [v36 serverVersion];
    [v10 setServerVersion:v13];

    v14 = [v36 principalSearchProperties];
    v15 = [CalDAVPrincipalSearchPropertySet searchSetWithProperties:v14];
    [v10 setSearchPropertySet:v15];

    v16 = MEMORY[0x277CBEBC0];
    v17 = [v36 calendarHomes];
    v18 = [v17 anyObject];
    v19 = [v18 absoluteString];
    v20 = [v19 appendSlashIfNeeded];
    v21 = [v16 URLWithString:v20];
    [v9 setCalendarHomeURL:v21];

    v22 = [v36 inboxURL];
    [v9 setInboxURL:v22];

    v23 = [v36 outboxURL];
    [v9 setOutboxURL:v23];

    v24 = [v36 dropboxURL];
    [v9 setDropBoxURL:v24];

    v25 = [v36 notificationURL];
    [v9 setNotificationCollectionURL:v25];

    v26 = [v36 displayName];
    [v9 setFullName:v26];

    [v9 setSupportsCalendarUserSearch:{objc_msgSend(v36, "supportsCalendarUserSearch")}];
    if ([v36 isExpandPropertyReportSupported])
    {
      v27 = [v36 serverVersion];
      [v9 setIsExpandPropertyReportSupported:{objc_msgSend(v27, "expandPropertyReportIsUnreliable") ^ 1}];
    }

    else
    {
      [v9 setIsExpandPropertyReportSupported:0];
    }

    v28 = [v36 preferredUserAddresses];
    [v9 setPreferredCalendarUserAddresses:v28];

    v29 = MEMORY[0x277CBEBC0];
    v30 = [v36 principalURL];
    v31 = [v30 absoluteString];
    v32 = [v31 appendSlashIfNeeded];
    v33 = [v29 URLWithString:v32];

    v34 = [v9 principalURL];
    LOBYTE(v31) = [v34 isEqual:v33];

    if ((v31 & 1) == 0)
    {
      v35 = [v10 password];
      [v9 setPrincipalURL:v33];
      [v10 setPassword:v35];
    }

    if ([(CalDAVAccountPropertyRefreshOperation *)self shouldRefreshDefaultAlarms])
    {
      [(CalDAVAccountPropertyRefreshOperation *)self _refreshDefaultAlarms];
    }

    else
    {
      [(CalDAVAccountPropertyRefreshOperation *)self _finishCalDAVAccountPropertyRefreshOperationWithError:0];
    }
  }
}

- (BOOL)shouldRefreshDefaultAlarms
{
  v2 = [(CalDAVOperation *)self principal];
  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    v3 = [v2 account];
    v4 = [v3 serverVersion];

    v5 = [v4 supportsDefaultAlarms];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_refreshDefaultAlarms
{
  v3 = [(CalDAVOperation *)self principal];
  v4 = [v3 calendarHomeURL];
  if (v4)
  {
    v5 = [(CalDAVAccountPropertyRefreshOperation *)self _copyHomePropertiesPropFindElements];
    v6 = [objc_alloc(MEMORY[0x277CFDC68]) initWithPropertiesToFind:v5 atURL:v4 withDepth:2];
    [*(&self->super.super.super.isa + *MEMORY[0x277CFDD58]) addObject:v6];
    [v6 setDelegate:self];
    [v6 setAccountInfoProvider:v3];
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD60]));
    [WeakRetained submitQueuedCoreDAVTask:v6];
  }

  else
  {
    v8 = [MEMORY[0x277CFDC18] sharedLogging];
    v9 = [v8 logHandleForAccountInfoProvider:0];
    v10 = v9;
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_242742000, v10, OS_LOG_TYPE_ERROR, "Skipping default alarm refresh because there is no home URL", v11, 2u);
    }

    [(CalDAVAccountPropertyRefreshOperation *)self _finishCalDAVAccountPropertyRefreshOperationWithError:0];
  }
}

- (id)_copyHomePropertiesPropFindElements
{
  v2 = objc_opt_new();
  v3 = *MEMORY[0x277CFDDC0];
  [v2 CDVAddItemParserMappingWithNameSpace:*MEMORY[0x277CFDDC0] name:@"default-alarm-vevent-datetime" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:v3 name:@"default-alarm-vevent-date" parseClass:objc_opt_class()];
  return v2;
}

- (void)propFindTask:(id)a3 parsedResponses:(id)a4 error:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CalDAVOperation *)self principal];
  v12 = v11;
  if (!v10)
  {
    v29 = v11;
    v30 = self;
    v31 = v8;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v9;
    v16 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v10 = 0;
      v33 = *v36;
      v34 = 0;
      v18 = *MEMORY[0x277CFDDC0];
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v36 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v20 = [*(*(&v35 + 1) + 8 * i) successfulPropertiesToValues];
          v21 = [v20 CDVObjectForKeyWithNameSpace:v18 andName:@"default-alarm-vevent-datetime"];
          v22 = v21;
          if (v21)
          {
            v23 = [v21 payloadAsString];

            v10 = v23;
          }

          v24 = [v20 CDVObjectForKeyWithNameSpace:v18 andName:@"default-alarm-vevent-date"];
          v25 = v24;
          if (v24)
          {
            [v24 payloadAsString];
            v27 = v26 = v10;

            v34 = v27;
            v10 = v26;
          }
        }

        v17 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v17);
    }

    else
    {
      v34 = 0;
      v10 = 0;
    }

    v12 = v29;
    if (objc_opt_respondsToSelector())
    {
      [v29 setDefaultTimedAlarms:v10];
    }

    v8 = v31;
    self = v30;
    v13 = v34;
    if (objc_opt_respondsToSelector())
    {
      [v29 setDefaultAllDayAlarms:v34];
    }

    goto LABEL_24;
  }

  if (![(CalDAVAccountPropertyRefreshOperation *)self shouldKeepDefaultAlarmError:v10])
  {
    v13 = [MEMORY[0x277CFDC18] sharedLogging];
    v14 = [v13 logHandleForAccountInfoProvider:0];
    v15 = v14;
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v40 = v10;
      _os_log_impl(&dword_242742000, v15, OS_LOG_TYPE_ERROR, "Fetching default alarms failed. Ignoring and moving on. The error was %@", buf, 0xCu);
    }

LABEL_24:
    v10 = 0;
  }

  [*(&self->super.super.super.isa + *MEMORY[0x277CFDD58]) removeObject:v8];
  [(CalDAVAccountPropertyRefreshOperation *)self _finishCalDAVAccountPropertyRefreshOperationWithError:v10];

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldKeepDefaultAlarmError:(id)a3
{
  v3 = [a3 domain];
  v4 = [v3 isEqualToString:*MEMORY[0x277CCA738]];

  return v4;
}

- (void)_finishCalDAVAccountPropertyRefreshOperationWithError:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __95__CalDAVAccountPropertyRefreshOperation__finishCalDAVAccountPropertyRefreshOperationWithError___block_invoke;
  v6[3] = &unk_278D66968;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:v5 delegateCallbackBlock:v6];
}

void __95__CalDAVAccountPropertyRefreshOperation__finishCalDAVAccountPropertyRefreshOperationWithError___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) principal];
  [v3 propertyRefreshForPrincipal:v2 completedWithError:*(a1 + 40)];
}

@end