@interface CalDAVAccountPropertyRefreshOperation
- (BOOL)shouldKeepDefaultAlarmError:(id)error;
- (BOOL)shouldRefreshDefaultAlarms;
- (CalDAVAccountPropertyRefreshOperation)initWithPrincipal:(id)principal;
- (id)_copyHomePropertiesPropFindElements;
- (id)propPatchForProperty:(id)property value:(id)value;
- (void)_finishCalDAVAccountPropertyRefreshOperationWithError:(id)error;
- (void)_reallyRefreshProperties;
- (void)_refreshDefaultAlarms;
- (void)getAccountPropertiesTask:(id)task completedWithError:(id)error;
- (void)propFindTask:(id)task parsedResponses:(id)responses error:(id)error;
- (void)refreshProperties;
- (void)sendLocallyChangedPropertiesIfNeeded;
@end

@implementation CalDAVAccountPropertyRefreshOperation

- (CalDAVAccountPropertyRefreshOperation)initWithPrincipal:(id)principal
{
  v7.receiver = self;
  v7.super_class = CalDAVAccountPropertyRefreshOperation;
  v3 = [(CalDAVOperation *)&v7 initWithPrincipal:principal];
  if (v3)
  {
    v4 = dispatch_group_create();
    defaultAlarmGroup = v3->_defaultAlarmGroup;
    v3->_defaultAlarmGroup = v4;
  }

  return v3;
}

- (id)propPatchForProperty:(id)property value:(id)value
{
  v5 = MEMORY[0x277CFDBE0];
  valueCopy = value;
  propertyCopy = property;
  v8 = [v5 alloc];
  v9 = [v8 initWithNameSpace:*MEMORY[0x277CFDDC0] andName:propertyCopy];

  [v9 setPayloadAsString:valueCopy];
  [v9 setUseCDATA:1];

  return v9;
}

- (void)sendLocallyChangedPropertiesIfNeeded
{
  v3 = objc_opt_new();
  principal = [(CalDAVOperation *)self principal];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_7;
  }

  principal2 = [(CalDAVOperation *)self principal];
  if (([principal2 needsDefaultTimedAlarmUpdate] & 1) == 0)
  {

    goto LABEL_7;
  }

  principal3 = [(CalDAVOperation *)self principal];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    principal4 = [(CalDAVOperation *)self principal];
    defaultTimedAlarms = [principal4 defaultTimedAlarms];
    v10 = [(CalDAVAccountPropertyRefreshOperation *)self propPatchForProperty:@"default-alarm-vevent-datetime" value:defaultTimedAlarms];
    [v3 addObject:v10];

    principal5 = [(CalDAVOperation *)self principal];
    LOBYTE(principal4) = objc_opt_respondsToSelector();

    if (principal4)
    {
      principal = [(CalDAVOperation *)self principal];
      [principal setNeedsDefaultTimedAlarmUpdate:0];
LABEL_7:
    }
  }

  principal6 = [(CalDAVOperation *)self principal];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  principal7 = [(CalDAVOperation *)self principal];
  if (([principal7 needsDefaultAllDayAlarmUpdate] & 1) == 0)
  {

    goto LABEL_14;
  }

  principal8 = [(CalDAVOperation *)self principal];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    principal9 = [(CalDAVOperation *)self principal];
    defaultAllDayAlarms = [principal9 defaultAllDayAlarms];
    v18 = [(CalDAVAccountPropertyRefreshOperation *)self propPatchForProperty:@"default-alarm-vevent-date" value:defaultAllDayAlarms];
    [v3 addObject:v18];

    principal10 = [(CalDAVOperation *)self principal];
    LOBYTE(principal9) = objc_opt_respondsToSelector();

    if (principal9)
    {
      principal6 = [(CalDAVOperation *)self principal];
      [principal6 setNeedsDefaultAllDayAlarmUpdate:0];
      goto LABEL_14;
    }
  }

LABEL_15:
  if ([v3 count])
  {
    v20 = objc_alloc(MEMORY[0x277CFDC70]);
    principal11 = [(CalDAVOperation *)self principal];
    calendarHomeURL = [principal11 calendarHomeURL];
    v23 = [v20 initWithPropertiesToSet:v3 andRemove:0 atURL:calendarHomeURL];

    accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
    [v23 setAccountInfoProvider:accountInfoProvider];

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

    taskManager = [(CoreDAVTaskGroup *)self taskManager];
    [taskManager submitQueuedCoreDAVTask:v23];

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
  principal = [(CalDAVOperation *)self principal];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  v10 = [(CoreDAVGetAccountPropertiesTaskGroup *)v3 initWithAccountInfoProvider:principal taskManager:taskManager];

  [(CoreDAVTaskGroup *)v10 setDelegate:self];
  principal2 = [(CalDAVOperation *)self principal];
  LODWORD(principal) = [principal2 isDelegate];

  if (principal)
  {
    principal3 = [(CalDAVOperation *)self principal];
    principalURL = [principal3 principalURL];
    [(CalDAVGetAccountPropertiesTaskGroup *)v10 setDelegatePrincipalURL:principalURL];
  }

  [(CoreDAVGetAccountPropertiesTaskGroup *)v10 setFetchPrincipalSearchProperties:[(CalDAVAccountPropertyRefreshOperation *)self fetchPrincipalSearchProperties]];
  outstandingTaskGroups = [(CalDAVOperation *)self outstandingTaskGroups];
  [outstandingTaskGroups addObject:v10];

  [(CalDAVGetAccountPropertiesTaskGroup *)v10 startTaskGroup];
}

- (void)getAccountPropertiesTask:(id)task completedWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  outstandingTaskGroups = [(CalDAVOperation *)self outstandingTaskGroups];
  [outstandingTaskGroups removeObject:taskCopy];

  principal = [(CalDAVOperation *)self principal];
  v9 = principal;
  if (errorCopy)
  {
    [(CalDAVAccountPropertyRefreshOperation *)self _finishCalDAVAccountPropertyRefreshOperationWithError:errorCopy];
  }

  else
  {
    account = [principal account];
    collections = [taskCopy collections];
    anyObject = [collections anyObject];
    [account setCollectionSetURL:anyObject];

    serverVersion = [taskCopy serverVersion];
    [account setServerVersion:serverVersion];

    principalSearchProperties = [taskCopy principalSearchProperties];
    v15 = [CalDAVPrincipalSearchPropertySet searchSetWithProperties:principalSearchProperties];
    [account setSearchPropertySet:v15];

    v16 = MEMORY[0x277CBEBC0];
    calendarHomes = [taskCopy calendarHomes];
    anyObject2 = [calendarHomes anyObject];
    absoluteString = [anyObject2 absoluteString];
    appendSlashIfNeeded = [absoluteString appendSlashIfNeeded];
    v21 = [v16 URLWithString:appendSlashIfNeeded];
    [v9 setCalendarHomeURL:v21];

    inboxURL = [taskCopy inboxURL];
    [v9 setInboxURL:inboxURL];

    outboxURL = [taskCopy outboxURL];
    [v9 setOutboxURL:outboxURL];

    dropboxURL = [taskCopy dropboxURL];
    [v9 setDropBoxURL:dropboxURL];

    notificationURL = [taskCopy notificationURL];
    [v9 setNotificationCollectionURL:notificationURL];

    displayName = [taskCopy displayName];
    [v9 setFullName:displayName];

    [v9 setSupportsCalendarUserSearch:{objc_msgSend(taskCopy, "supportsCalendarUserSearch")}];
    if ([taskCopy isExpandPropertyReportSupported])
    {
      serverVersion2 = [taskCopy serverVersion];
      [v9 setIsExpandPropertyReportSupported:{objc_msgSend(serverVersion2, "expandPropertyReportIsUnreliable") ^ 1}];
    }

    else
    {
      [v9 setIsExpandPropertyReportSupported:0];
    }

    preferredUserAddresses = [taskCopy preferredUserAddresses];
    [v9 setPreferredCalendarUserAddresses:preferredUserAddresses];

    v29 = MEMORY[0x277CBEBC0];
    principalURL = [taskCopy principalURL];
    absoluteString2 = [principalURL absoluteString];
    appendSlashIfNeeded2 = [absoluteString2 appendSlashIfNeeded];
    v33 = [v29 URLWithString:appendSlashIfNeeded2];

    principalURL2 = [v9 principalURL];
    LOBYTE(absoluteString2) = [principalURL2 isEqual:v33];

    if ((absoluteString2 & 1) == 0)
    {
      password = [account password];
      [v9 setPrincipalURL:v33];
      [account setPassword:password];
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
  principal = [(CalDAVOperation *)self principal];
  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector())
  {
    account = [principal account];
    serverVersion = [account serverVersion];

    supportsDefaultAlarms = [serverVersion supportsDefaultAlarms];
  }

  else
  {
    supportsDefaultAlarms = 0;
  }

  return supportsDefaultAlarms;
}

- (void)_refreshDefaultAlarms
{
  principal = [(CalDAVOperation *)self principal];
  calendarHomeURL = [principal calendarHomeURL];
  if (calendarHomeURL)
  {
    _copyHomePropertiesPropFindElements = [(CalDAVAccountPropertyRefreshOperation *)self _copyHomePropertiesPropFindElements];
    v6 = [objc_alloc(MEMORY[0x277CFDC68]) initWithPropertiesToFind:_copyHomePropertiesPropFindElements atURL:calendarHomeURL withDepth:2];
    [*(&self->super.super.super.isa + *MEMORY[0x277CFDD58]) addObject:v6];
    [v6 setDelegate:self];
    [v6 setAccountInfoProvider:principal];
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD60]));
    [WeakRetained submitQueuedCoreDAVTask:v6];
  }

  else
  {
    mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
    v9 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:0];
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

- (void)propFindTask:(id)task parsedResponses:(id)responses error:(id)error
{
  v42 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  responsesCopy = responses;
  errorCopy = error;
  principal = [(CalDAVOperation *)self principal];
  v12 = principal;
  if (!errorCopy)
  {
    v29 = principal;
    selfCopy = self;
    v31 = taskCopy;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = responsesCopy;
    v16 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      errorCopy = 0;
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

          successfulPropertiesToValues = [*(*(&v35 + 1) + 8 * i) successfulPropertiesToValues];
          v21 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:v18 andName:@"default-alarm-vevent-datetime"];
          v22 = v21;
          if (v21)
          {
            payloadAsString = [v21 payloadAsString];

            errorCopy = payloadAsString;
          }

          v24 = [successfulPropertiesToValues CDVObjectForKeyWithNameSpace:v18 andName:@"default-alarm-vevent-date"];
          v25 = v24;
          if (v24)
          {
            [v24 payloadAsString];
            v27 = v26 = errorCopy;

            v34 = v27;
            errorCopy = v26;
          }
        }

        v17 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v17);
    }

    else
    {
      v34 = 0;
      errorCopy = 0;
    }

    v12 = v29;
    if (objc_opt_respondsToSelector())
    {
      [v29 setDefaultTimedAlarms:errorCopy];
    }

    taskCopy = v31;
    self = selfCopy;
    mEMORY[0x277CFDC18] = v34;
    if (objc_opt_respondsToSelector())
    {
      [v29 setDefaultAllDayAlarms:v34];
    }

    goto LABEL_24;
  }

  if (![(CalDAVAccountPropertyRefreshOperation *)self shouldKeepDefaultAlarmError:errorCopy])
  {
    mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
    v14 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:0];
    v15 = v14;
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v40 = errorCopy;
      _os_log_impl(&dword_242742000, v15, OS_LOG_TYPE_ERROR, "Fetching default alarms failed. Ignoring and moving on. The error was %@", buf, 0xCu);
    }

LABEL_24:
    errorCopy = 0;
  }

  [*(&self->super.super.super.isa + *MEMORY[0x277CFDD58]) removeObject:taskCopy];
  [(CalDAVAccountPropertyRefreshOperation *)self _finishCalDAVAccountPropertyRefreshOperationWithError:errorCopy];

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldKeepDefaultAlarmError:(id)error
{
  domain = [error domain];
  v4 = [domain isEqualToString:*MEMORY[0x277CCA738]];

  return v4;
}

- (void)_finishCalDAVAccountPropertyRefreshOperationWithError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __95__CalDAVAccountPropertyRefreshOperation__finishCalDAVAccountPropertyRefreshOperationWithError___block_invoke;
  v6[3] = &unk_278D66968;
  v6[4] = self;
  v7 = errorCopy;
  v5 = errorCopy;
  [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:v5 delegateCallbackBlock:v6];
}

void __95__CalDAVAccountPropertyRefreshOperation__finishCalDAVAccountPropertyRefreshOperationWithError___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) principal];
  [v3 propertyRefreshForPrincipal:v2 completedWithError:*(a1 + 40)];
}

@end