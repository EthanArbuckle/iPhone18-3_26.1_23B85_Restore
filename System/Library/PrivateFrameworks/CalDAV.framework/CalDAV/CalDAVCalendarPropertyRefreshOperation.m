@interface CalDAVCalendarPropertyRefreshOperation
- (BOOL)_handleMkCalTaskGroupError:(id)a3 forCalendar:(id)a4;
- (BOOL)_handleUpdateForCalendar:(id)a3;
- (CalDAVCalendarPropertyRefreshOperation)initWithPrincipal:(id)a3;
- (id)_generateTimeZoneString:(id)a3;
- (id)_getIsAffectingAvailabilityCoreDAVItem:(id)a3;
- (id)_getMkcalendarTaskGroupForCalendar:(id)a3;
- (id)_getSetIsAffectingAvailabilityTask:(BOOL)a3 forCalendar:(id)a4 atURL:(id)a5;
- (id)_getSetPropertiesTaskWithItemsToSet:(id)a3 itemsToRemove:(id)a4 atURL:(id)a5;
- (id)_getSetPropertyTaskWithCoreDAVItem:(id)a3 forCalendar:(id)a4 atURL:(id)a5 ignoreErrors:(BOOL)a6;
- (int)_sharingStatusForContainer:(id)a3;
- (void)_continueHandleContainerInfoTask:(id)a3 completedWithContainers:(id)a4 error:(id)a5;
- (void)_finishRefresh;
- (void)_getDefaultCalendarsTasksIfNeededForPrincipal:(id)a3;
- (void)_handleCalendarPublish;
- (void)_initializePrincipalCalendarCache;
- (void)_prepareCalendarsBeforeRefresh;
- (void)_reallyRefreshCalendarProperties;
- (void)_retryMkCalForCalendar:(id)a3;
- (void)_sendAddsForCalendars;
- (void)_sendDeletesForCalendars;
- (void)_sendShareActionTasks;
- (void)_updateDefaultSchedulingCalendarIfNeededForInboxCalendar:(id)a3 withContainer:(id)a4;
- (void)containerInfoSyncTask:(id)a3 completedWithNewSyncToken:(id)a4 error:(id)a5;
- (void)containerInfoSyncTask:(id)a3 retrievedAddedOrModifiedContainers:(id)a4 removedContainerURLs:(id)a5;
- (void)containerInfoTask:(id)a3 completedWithContainers:(id)a4 error:(id)a5;
- (void)refreshCalendarProperties;
@end

@implementation CalDAVCalendarPropertyRefreshOperation

- (CalDAVCalendarPropertyRefreshOperation)initWithPrincipal:(id)a3
{
  v9.receiver = self;
  v9.super_class = CalDAVCalendarPropertyRefreshOperation;
  v3 = [(CalDAVOperation *)&v9 initWithPrincipal:a3];
  if (v3)
  {
    v4 = dispatch_group_create();
    outstandingTasksGroup = v3->_outstandingTasksGroup;
    v3->_outstandingTasksGroup = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    updatedCalendars = v3->_updatedCalendars;
    v3->_updatedCalendars = v6;
  }

  return v3;
}

- (void)_finishRefresh
{
  OUTLINED_FUNCTION_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"CalDAVCalendarPropertyRefreshOperation.m" lineNumber:81 description:@"We shouldn't have finished more than once!"];
}

void __56__CalDAVCalendarPropertyRefreshOperation__finishRefresh__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) principal];
  [v3 calendarRefreshForPrincipal:v2 completedWithNewCTags:*(*(a1 + 32) + 120) newSyncTokens:*(*(a1 + 32) + 128) calendarHomeSyncToken:*(a1 + 40) updatedCalendars:*(*(a1 + 32) + 152) error:*(*(a1 + 32) + 112)];
}

- (void)_reallyRefreshCalendarProperties
{
  v3 = [MEMORY[0x277CFDC18] sharedLogging];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
  v5 = [v3 logHandleForAccountInfoProvider:WeakRetained];

  if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_242742000, v5, OS_LOG_TYPE_INFO, "Refreshing calendar properties", buf, 2u);
  }

  v6 = MEMORY[0x277CBEB98];
  v7 = [(CalDAVOperation *)self principal];
  v8 = [v7 calendarHomeURL];
  v9 = [v6 setWithObject:v8];

  v10 = [(CalDAVOperation *)self principal];
  v11 = [v10 calendarHomeSyncToken];

  if (!-[CalDAVCalendarPropertyRefreshOperation useCalendarHomeSyncReport](self, "useCalendarHomeSyncReport") || ![v11 length])
  {
    goto LABEL_10;
  }

  v12 = [(CalDAVOperation *)self principal];
  if ([v12 isMergeSync])
  {
    goto LABEL_9;
  }

  v13 = [(CalDAVOperation *)self principal];
  v14 = [v13 modifiedCalendars];
  if ([v14 count])
  {

LABEL_9:
    goto LABEL_10;
  }

  forceClearCalendarHomeSyncToken = self->_forceClearCalendarHomeSyncToken;

  if (!forceClearCalendarHomeSyncToken)
  {
    v25 = [CalDAVCalendarInfoSyncTaskGroup alloc];
    v26 = [(CalDAVOperation *)self principal];
    v27 = [v26 calendarHomeURL];
    v28 = [(CalDAVOperation *)self principal];
    v29 = [(CoreDAVTaskGroup *)self taskManager];
    v18 = [(CoreDAVContainerInfoSyncTaskGroup *)v25 initWithContainerURL:v27 previousSyncToken:v11 accountInfoProvider:v28 taskManager:v29];

    v30 = [(CalDAVOperation *)self principal];
    v31 = [v30 account];
    v32 = [v31 serverVersion];
    -[CalDAVCalendarInfoSyncTaskGroup setFetchSharees:](v18, "setFetchSharees:", [v32 supportsSharing]);

    [(CoreDAVContainerInfoSyncTaskGroup *)v18 setDelegate:self];
    [(CalDAVCalendarPropertyRefreshOperation *)self _initializePrincipalCalendarCache];
    goto LABEL_11;
  }

LABEL_10:
  v15 = [CalDAVCalendarInfoTaskGroup alloc];
  v16 = [(CalDAVOperation *)self principal];
  v17 = [(CoreDAVTaskGroup *)self taskManager];
  v18 = [(CalDAVCalendarInfoTaskGroup *)v15 initWithAccountInfoProvider:v16 containerURLs:v9 taskManager:v17];

  v19 = [(CalDAVOperation *)self principal];
  v20 = [v19 account];
  v21 = [v20 serverVersion];
  -[CalDAVCalendarInfoSyncTaskGroup setFetchSharees:](v18, "setFetchSharees:", [v21 supportsSharing]);

  [(CoreDAVContainerInfoSyncTaskGroup *)v18 setDelegate:self];
LABEL_11:
  v22 = [(CalDAVCalendarPropertyRefreshOperation *)self outstandingTasksGroup];
  dispatch_group_enter(v22);

  v23 = [(CalDAVOperation *)self outstandingTaskGroups];
  [v23 addObject:v18];

  objc_initWeak(buf, self);
  objc_initWeak(&location, v18);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __74__CalDAVCalendarPropertyRefreshOperation__reallyRefreshCalendarProperties__block_invoke;
  v33[3] = &unk_278D66918;
  objc_copyWeak(&v34, buf);
  objc_copyWeak(&v35, &location);
  [(CoreDAVTaskGroup *)v18 setCompletionBlock:v33];
  [(CoreDAVContainerInfoSyncTaskGroup *)v18 startTaskGroup];
  objc_destroyWeak(&v35);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

void __74__CalDAVCalendarPropertyRefreshOperation__reallyRefreshCalendarProperties__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained outstandingTaskGroups];
  v3 = objc_loadWeakRetained((a1 + 40));
  [v2 removeObject:v3];

  v4 = [WeakRetained outstandingTasksGroup];

  if (v4)
  {
    v5 = [WeakRetained outstandingTasksGroup];
    dispatch_group_leave(v5);
  }
}

- (void)_sendDeletesForCalendars
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = &off_24277F000;
  if (!self->_isSecondRefresh)
  {
    v19 = a2;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v4 = [(CalDAVOperation *)self principal];
    obj = [v4 deletedCalendarURLs];

    v5 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v5)
    {
      v6 = *v27;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v27 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v26 + 1) + 8 * i);
          v9 = [MEMORY[0x277CFDC18] sharedLogging];
          WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
          v11 = [v9 logHandleForAccountInfoProvider:WeakRetained];

          if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v31 = v8;
            _os_log_impl(&dword_242742000, v11, OS_LOG_TYPE_INFO, "Sending delete for calendar at %@", buf, 0xCu);
          }

          v12 = [objc_alloc(MEMORY[0x277CFDBA8]) initWithURL:v8];
          v13 = [(CoreDAVTaskGroup *)self accountInfoProvider];
          [v12 setAccountInfoProvider:v13];

          v14 = [(CalDAVCalendarPropertyRefreshOperation *)self outstandingTasksGroup];
          dispatch_group_enter(v14);

          objc_initWeak(buf, self);
          objc_initWeak(&location, v12);
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __66__CalDAVCalendarPropertyRefreshOperation__sendDeletesForCalendars__block_invoke;
          v22[3] = &unk_278D66918;
          objc_copyWeak(&v23, buf);
          objc_copyWeak(&v24, &location);
          [v12 setCompletionBlock:v22];
          v15 = [(CoreDAVTaskGroup *)self outstandingTasks];
          [v15 addObject:v12];

          v16 = [(CoreDAVTaskGroup *)self taskManager];
          [v16 submitQueuedCoreDAVTask:v12];

          objc_destroyWeak(&v24);
          objc_destroyWeak(&v23);
          objc_destroyWeak(&location);
          objc_destroyWeak(buf);
        }

        v5 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v5);
    }

    a2 = v19;
    v3 = &off_24277F000;
  }

  outstandingTasksGroup = self->_outstandingTasksGroup;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *(v3 + 189);
  block[2] = __66__CalDAVCalendarPropertyRefreshOperation__sendDeletesForCalendars__block_invoke_2;
  block[3] = &unk_278D66A78;
  block[4] = self;
  block[5] = a2;
  dispatch_group_notify(outstandingTasksGroup, MEMORY[0x277D85CD0], block);
  v18 = *MEMORY[0x277D85DE8];
}

void __66__CalDAVCalendarPropertyRefreshOperation__sendDeletesForCalendars__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  v3 = [v2 error];

  if (v3)
  {
    [WeakRetained setForceClearCalendarHomeSyncToken:1];
  }

  v4 = [WeakRetained outstandingTasks];
  v5 = objc_loadWeakRetained((a1 + 40));
  [v4 removeObject:v5];

  v6 = [WeakRetained outstandingTasksGroup];

  if (v6)
  {
    v7 = [WeakRetained outstandingTasksGroup];
    dispatch_group_leave(v7);
  }
}

id __66__CalDAVCalendarPropertyRefreshOperation__sendDeletesForCalendars__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) outstandingTasks];
  v3 = [v2 count];

  if (v3)
  {
    __66__CalDAVCalendarPropertyRefreshOperation__sendDeletesForCalendars__block_invoke_2_cold_1();
  }

  v4 = [*v1 outstandingTaskGroups];
  v5 = [v4 count];

  if (v5)
  {
    __66__CalDAVCalendarPropertyRefreshOperation__sendDeletesForCalendars__block_invoke_2_cold_2();
  }

  result = *v1;
  if ((*(*v1 + *MEMORY[0x277CFDD50]) & 1) == 0)
  {
    [result _sendShareActionTasks];
    v7 = *v1;

    return [v7 _reallyRefreshCalendarProperties];
  }

  return result;
}

- (void)_sendAddsForCalendars
{
  v33 = *MEMORY[0x277D85DE8];
  if (!self->_isSecondRefresh)
  {
    v4 = [(CalDAVOperation *)self principal];
    v5 = [v4 isMergeSync];

    if ((v5 & 1) == 0)
    {
      v23 = a2;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v6 = [(CalDAVOperation *)self principal];
      v7 = [v6 addedCalendars];

      obj = v7;
      v8 = [v7 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v27;
        v11 = MEMORY[0x277CFDD48];
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v27 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v26 + 1) + 8 * i);
            v14 = [MEMORY[0x277CFDC18] sharedLogging];
            WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *v11));
            v16 = [v14 logHandleForAccountInfoProvider:WeakRetained];

            if (v16)
            {
              v17 = v16;
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                v18 = [v13 calendarURL];
                *buf = 138412290;
                v31 = v18;
                _os_log_impl(&dword_242742000, v17, OS_LOG_TYPE_INFO, "Sending add for calendar at %@", buf, 0xCu);
              }
            }

            v19 = [(CalDAVCalendarPropertyRefreshOperation *)self _getMkcalendarTaskGroupForCalendar:v13];
            v20 = [(CalDAVOperation *)self outstandingTaskGroups];
            [v20 addObject:v19];

            [v19 startTaskGroup];
          }

          v9 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
        }

        while (v9);
      }

      a2 = v23;
    }
  }

  outstandingTasksGroup = self->_outstandingTasksGroup;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__CalDAVCalendarPropertyRefreshOperation__sendAddsForCalendars__block_invoke;
  block[3] = &unk_278D66A78;
  block[4] = self;
  block[5] = a2;
  dispatch_group_notify(outstandingTasksGroup, MEMORY[0x277D85CD0], block);
  v22 = *MEMORY[0x277D85DE8];
}

void __63__CalDAVCalendarPropertyRefreshOperation__sendAddsForCalendars__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) outstandingTasks];
  v3 = [v2 count];

  if (v3)
  {
    __63__CalDAVCalendarPropertyRefreshOperation__sendAddsForCalendars__block_invoke_cold_1();
  }

  v4 = [*v1 outstandingTaskGroups];
  v5 = [v4 count];

  if (v5)
  {
    __63__CalDAVCalendarPropertyRefreshOperation__sendAddsForCalendars__block_invoke_cold_2();
  }

  if ((*(*v1 + *MEMORY[0x277CFDD50]) & 1) == 0)
  {
    v6 = [*v1 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v6 calendarRefreshWillSendCalendarDeletes:*v1];
    }

    else
    {
      [*v1 _sendDeletesForCalendars];
    }
  }
}

- (void)_handleCalendarPublish
{
  v48 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v3 = [(CalDAVOperation *)self principal];
  obj = [v3 calendars];

  v4 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v4)
  {
    v31 = *v38;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v38 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v37 + 1) + 8 * i);
        if ([v6 needsPublishUpdate])
        {
          v7 = [v6 calendarURL];
          v8 = v7 == 0;

          v9 = [MEMORY[0x277CFDC18] sharedLogging];
          WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
          v11 = [(CalDAVModifyCalendarSharingLevelTaskGroup *)v9 logHandleForAccountInfoProvider:WeakRetained];

          if (v8)
          {
            if (v11)
            {
              v24 = v11;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                v25 = [v6 title];
                v26 = [v6 guid];
                *buf = 138412546;
                v42 = v25;
                v43 = 2114;
                v44 = v26;
                _os_log_impl(&dword_242742000, v24, OS_LOG_TYPE_DEFAULT, "Calendar %@ (%{public}@) doesn't have a URL, so we're not going to try to publish it", buf, 0x16u);
              }
            }
          }

          else
          {
            if (v11)
            {
              v12 = v11;
              if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
              {
                v13 = [v6 title];
                v14 = [v6 guid];
                v15 = [v6 isPublished];
                *buf = 138412802;
                v16 = @"un";
                if (v15)
                {
                  v16 = &stru_285505238;
                }

                v42 = v13;
                v43 = 2114;
                v44 = v14;
                v45 = 2114;
                v46 = v16;
                _os_log_impl(&dword_242742000, v12, OS_LOG_TYPE_INFO, "Calendar %@ (%{public}@) needs to be updated to be %{public}@published", buf, 0x20u);
              }
            }

            v17 = [CalDAVModifyCalendarSharingLevelTaskGroup alloc];
            v18 = [v6 isPublished];
            v19 = [v6 calendarURL];
            v20 = [(CoreDAVTaskGroup *)self accountInfoProvider];
            v21 = [(CoreDAVTaskGroup *)self taskManager];
            v9 = [(CalDAVModifyCalendarSharingLevelTaskGroup *)v17 initWithSharingAction:v18 ^ 1u atCalendarURL:v19 accountInfoProvider:v20 taskManager:v21];

            objc_initWeak(buf, self);
            objc_initWeak(&location, v9);
            v22 = [(CalDAVCalendarPropertyRefreshOperation *)self outstandingTasksGroup];
            dispatch_group_enter(v22);

            v33[0] = MEMORY[0x277D85DD0];
            v33[1] = 3221225472;
            v33[2] = __64__CalDAVCalendarPropertyRefreshOperation__handleCalendarPublish__block_invoke;
            v33[3] = &unk_278D66AA0;
            objc_copyWeak(&v34, buf);
            v33[4] = self;
            v33[5] = v6;
            objc_copyWeak(&v35, &location);
            [(CoreDAVTaskGroup *)v9 setCompletionBlock:v33];
            v23 = [(CalDAVOperation *)self outstandingTaskGroups];
            [v23 addObject:v9];

            [(CalDAVModifyCalendarSharingLevelTaskGroup *)v9 startTaskGroup];
            objc_destroyWeak(&v35);
            objc_destroyWeak(&v34);
            objc_destroyWeak(&location);
            objc_destroyWeak(buf);
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v4);
  }

  outstandingTasksGroup = self->_outstandingTasksGroup;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CalDAVCalendarPropertyRefreshOperation__handleCalendarPublish__block_invoke_32;
  block[3] = &unk_278D66A78;
  block[4] = self;
  block[5] = a2;
  dispatch_group_notify(outstandingTasksGroup, MEMORY[0x277D85CD0], block);
  v28 = *MEMORY[0x277D85DE8];
}

void __64__CalDAVCalendarPropertyRefreshOperation__handleCalendarPublish__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [MEMORY[0x277CFDC18] sharedLogging];
  v4 = *MEMORY[0x277CFDD48];
  v5 = objc_loadWeakRetained((*(a1 + 32) + v4));
  v6 = [v3 logHandleForAccountInfoProvider:v5];

  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 40) title];
      v9 = [*(a1 + 40) guid];
      v10 = [*(a1 + 40) isPublished];
      v11 = @"un";
      if (v10)
      {
        v11 = &stru_285505238;
      }

      v22 = v11;
      v12 = objc_loadWeakRetained((a1 + 56));
      v13 = [v12 error];
      *buf = 138413058;
      v24 = v8;
      v25 = 2114;
      v26 = v9;
      v27 = 2114;
      v28 = v22;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&dword_242742000, v7, OS_LOG_TYPE_INFO, "Calendar %@ (%{public}@) was %{public}@published with error: %@", buf, 0x2Au);
    }
  }

  v14 = [WeakRetained outstandingTaskGroups];
  v15 = objc_loadWeakRetained((a1 + 56));
  [v14 removeObject:v15];

  v16 = [MEMORY[0x277CFDC18] sharedLogging];
  v17 = objc_loadWeakRetained((*(a1 + 32) + v4));
  v18 = [v16 logHandleForAccountInfoProvider:v17];

  if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_242742000, v18, OS_LOG_TYPE_INFO, "Done updating publishing level on all calendars.", buf, 2u);
  }

  v19 = [WeakRetained outstandingTasksGroup];

  if (v19)
  {
    v20 = [WeakRetained outstandingTasksGroup];
    dispatch_group_leave(v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

id __64__CalDAVCalendarPropertyRefreshOperation__handleCalendarPublish__block_invoke_32(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) outstandingTasks];
  v3 = [v2 count];

  if (v3)
  {
    __64__CalDAVCalendarPropertyRefreshOperation__handleCalendarPublish__block_invoke_32_cold_1();
  }

  v4 = [*v1 outstandingTaskGroups];
  v5 = [v4 count];

  if (v5)
  {
    __64__CalDAVCalendarPropertyRefreshOperation__handleCalendarPublish__block_invoke_32_cold_2();
  }

  result = *v1;
  if ((*(*v1 + *MEMORY[0x277CFDD50]) & 1) == 0)
  {

    return [result _sendAddsForCalendars];
  }

  return result;
}

- (void)_prepareCalendarsBeforeRefresh
{
  v4 = [MEMORY[0x277CFDC18] sharedLogging];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
  v6 = [v4 logHandleForAccountInfoProvider:WeakRetained];

  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_242742000, v6, OS_LOG_TYPE_INFO, "Preparing our calendars before we refresh them from the server", buf, 2u);
  }

  v7 = [(CalDAVOperation *)self principal];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    *buf = 0;
    v12 = buf;
    v13 = 0x2020000000;
    v14 = 0;
    v9 = [(CalDAVOperation *)self principal];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__CalDAVCalendarPropertyRefreshOperation__prepareCalendarsBeforeRefresh__block_invoke;
    v10[3] = &unk_278D66AC8;
    v10[5] = buf;
    v10[6] = a2;
    v10[4] = self;
    [v9 prepareCalendarsForSyncWithCompletionBlock:v10];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [(CalDAVCalendarPropertyRefreshOperation *)self _handleCalendarPublish];
  }
}

uint64_t __72__CalDAVCalendarPropertyRefreshOperation__prepareCalendarsBeforeRefresh__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  if (*(v2 + 24) == 1)
  {
    __72__CalDAVCalendarPropertyRefreshOperation__prepareCalendarsBeforeRefresh__block_invoke_cold_1(a1, a1 + 40, &v5);
    v2 = v5;
  }

  *(v2 + 24) = 1;
  v3 = *(a1 + 32);

  return [v3 _handleCalendarPublish];
}

- (void)_sendShareActionTasks
{
  v82 = *MEMORY[0x277D85DE8];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v2 = [(CalDAVOperation *)self principal];
  obj = [v2 calendars];

  v48 = [obj countByEnumeratingWithState:&v64 objects:v81 count:16];
  if (v48)
  {
    v47 = *v65;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v65 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v51 = *(*(&v64 + 1) + 8 * i);
        if (([v51 isEventContainer] & 1) != 0 || objc_msgSend(v51, "isTaskContainer"))
        {
          v3 = [v51 shareeActions];
          v4 = [v3 count] == 0;

          if (!v4)
          {
            v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v7 = [v51 shareeActions];
            v8 = 0;
            v9 = [v7 countByEnumeratingWithState:&v60 objects:v80 count:16];
            if (v9)
            {
              v10 = *v61;
              do
              {
                v11 = 0;
                do
                {
                  if (*v61 != v10)
                  {
                    objc_enumerationMutation(v7);
                  }

                  v12 = *(*(&v60 + 1) + 8 * v11);
                  if ([v12 action] == 1 || !objc_msgSend(v12, "action"))
                  {
                    v17 = [v12 context];
                    [v5 addObject:v17];
                  }

                  else
                  {
                    if ([v12 action] != 2)
                    {
                      goto LABEL_22;
                    }

                    v13 = [v12 context];
                    objc_opt_class();
                    isKindOfClass = objc_opt_isKindOfClass();

                    v15 = [v12 context];
                    v16 = v15;
                    if (isKindOfClass)
                    {
                      v17 = [v15 objectForKeyedSubscript:@"CalDAVRemoveShareeItemKey"];

                      if (v17)
                      {
                        [v6 addObject:v17];
                        v18 = [v12 context];
                        v19 = [v18 objectForKeyedSubscript:@"CalDAVRemoveShareeMuteKey"];

                        LOBYTE(v18) = [v19 BOOLValue];
                        v8 |= v18;
                      }
                    }

                    else
                    {
                      [v6 addObject:v15];
                      v17 = v16;
                    }
                  }

LABEL_22:
                  ++v11;
                }

                while (v9 != v11);
                v20 = [v7 countByEnumeratingWithState:&v60 objects:v80 count:16];
                v9 = v20;
              }

              while (v20);
            }

            v21 = [v51 sharees];
            if ([v21 count])
            {
              v22 = 2;
            }

            else
            {
              v22 = 3;
            }

            v23 = [MEMORY[0x277CFDC18] sharedLogging];
            WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
            v25 = [v23 logHandleForAccountInfoProvider:WeakRetained];

            if (v25)
            {
              v26 = v25;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v27 = [v51 title];
                v28 = [v51 guid];
                v29 = [v51 calendarURL];
                *buf = 138413570;
                v69 = v27;
                v70 = 2114;
                v71 = v28;
                v72 = 2112;
                v73 = v29;
                v74 = 1024;
                v75 = v22;
                v76 = 2112;
                v77 = v5;
                v78 = 2112;
                v79 = v6;
                _os_log_impl(&dword_242742000, v26, OS_LOG_TYPE_INFO, "Sending sharee modifications to the server for the calendar %@ (%{public}@) at %@. Sharing action is %d. \n\tAdds/mods: %@\n\tDeletes: %@", buf, 0x3Au);
              }
            }

            v30 = [CalDAVModifyCalendarSharingLevelTaskGroup alloc];
            v31 = [v51 calendarURL];
            v32 = [(CoreDAVTaskGroup *)self accountInfoProvider];
            v33 = [(CoreDAVTaskGroup *)self taskManager];
            v34 = [(CalDAVModifyCalendarSharingLevelTaskGroup *)v30 initWithSharingAction:v22 atCalendarURL:v31 accountInfoProvider:v32 taskManager:v33];

            objc_initWeak(buf, self);
            objc_initWeak(&location, v34);
            v35 = [(CalDAVCalendarPropertyRefreshOperation *)self outstandingTasksGroup];
            dispatch_group_enter(v35);

            v56[0] = MEMORY[0x277D85DD0];
            v56[1] = 3221225472;
            v56[2] = __63__CalDAVCalendarPropertyRefreshOperation__sendShareActionTasks__block_invoke;
            v56[3] = &unk_278D66AA0;
            objc_copyWeak(&v57, buf);
            v56[4] = self;
            v56[5] = v51;
            objc_copyWeak(&v58, &location);
            [(CoreDAVTaskGroup *)v34 setCompletionBlock:v56];
            v36 = [(CalDAVOperation *)self outstandingTaskGroups];
            [v36 addObject:v34];

            [(CalDAVModifyCalendarSharingLevelTaskGroup *)v34 startTaskGroup];
            v37 = [CalDAVModifySharedCalendarShareeListTaskGroup alloc];
            v38 = [v51 title];
            v39 = [v51 calendarURL];
            v40 = [(CoreDAVTaskGroup *)self accountInfoProvider];
            v41 = [(CoreDAVTaskGroup *)self taskManager];
            v42 = [(CalDAVModifySharedCalendarShareeListTaskGroup *)v37 initWithShareesToSet:v5 shareesToRemove:v6 muteNotifications:v8 & 1 summary:v38 atCalendarURL:v39 accountInfoProvider:v40 taskManager:v41];

            objc_initWeak(&from, v42);
            v43 = [(CalDAVCalendarPropertyRefreshOperation *)self outstandingTasksGroup];
            dispatch_group_enter(v43);

            v52[0] = MEMORY[0x277D85DD0];
            v52[1] = 3221225472;
            v52[2] = __63__CalDAVCalendarPropertyRefreshOperation__sendShareActionTasks__block_invoke_41;
            v52[3] = &unk_278D66AA0;
            objc_copyWeak(&v53, buf);
            v52[4] = self;
            v52[5] = v51;
            objc_copyWeak(&v54, &from);
            [(CoreDAVTaskGroup *)v42 setCompletionBlock:v52];
            v44 = [(CalDAVOperation *)self outstandingTaskGroups];
            [v44 addObject:v42];

            [(CalDAVModifySharedCalendarShareeListTaskGroup *)v42 startTaskGroup];
            objc_destroyWeak(&v54);
            objc_destroyWeak(&v53);
            objc_destroyWeak(&from);

            objc_destroyWeak(&v58);
            objc_destroyWeak(&v57);
            objc_destroyWeak(&location);
            objc_destroyWeak(buf);
          }
        }
      }

      v48 = [obj countByEnumeratingWithState:&v64 objects:v81 count:16];
    }

    while (v48);
  }

  v45 = *MEMORY[0x277D85DE8];
}

void __63__CalDAVCalendarPropertyRefreshOperation__sendShareActionTasks__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [MEMORY[0x277CFDC18] sharedLogging];
  v4 = *MEMORY[0x277CFDD48];
  v5 = objc_loadWeakRetained((*(a1 + 32) + v4));
  v6 = [v3 logHandleForAccountInfoProvider:v5];

  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 40) title];
      v9 = objc_loadWeakRetained((a1 + 56));
      v10 = [v9 error];
      v19 = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_242742000, v7, OS_LOG_TYPE_INFO, "Finished updating sharing level on %@. Error was %@", &v19, 0x16u);
    }
  }

  v11 = [WeakRetained outstandingTaskGroups];
  v12 = objc_loadWeakRetained((a1 + 56));
  [v11 removeObject:v12];

  v13 = [MEMORY[0x277CFDC18] sharedLogging];
  v14 = objc_loadWeakRetained((*(a1 + 32) + v4));
  v15 = [v13 logHandleForAccountInfoProvider:v14];

  if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_242742000, v15, OS_LOG_TYPE_INFO, "Done updating sharing level on all calendars.", &v19, 2u);
  }

  v16 = [WeakRetained outstandingTasksGroup];

  if (v16)
  {
    v17 = [WeakRetained outstandingTasksGroup];
    dispatch_group_leave(v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __63__CalDAVCalendarPropertyRefreshOperation__sendShareActionTasks__block_invoke_41(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [MEMORY[0x277CFDC18] sharedLogging];
  v4 = *MEMORY[0x277CFDD48];
  v5 = objc_loadWeakRetained((*(a1 + 32) + v4));
  v6 = [v3 logHandleForAccountInfoProvider:v5];

  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 40) title];
      v9 = [*(a1 + 40) guid];
      v10 = objc_loadWeakRetained((a1 + 56));
      v11 = [v10 error];
      v20 = 138412802;
      v21 = v8;
      v22 = 2114;
      v23 = v9;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_242742000, v7, OS_LOG_TYPE_INFO, "Finished updating sharees on the Calendar %@ (%{public}@). Error was %@", &v20, 0x20u);
    }
  }

  v12 = [WeakRetained outstandingTaskGroups];
  v13 = objc_loadWeakRetained((a1 + 56));
  [v12 removeObject:v13];

  [*(a1 + 40) clearShareeActions];
  v14 = [MEMORY[0x277CFDC18] sharedLogging];
  v15 = objc_loadWeakRetained((*(a1 + 32) + v4));
  v16 = [v14 logHandleForAccountInfoProvider:v15];

  if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_242742000, v16, OS_LOG_TYPE_INFO, "Done updating sharees on all calendars. Refreshing calendar properties", &v20, 2u);
  }

  v17 = [WeakRetained outstandingTasksGroup];

  if (v17)
  {
    v18 = [WeakRetained outstandingTasksGroup];
    dispatch_group_leave(v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)refreshCalendarProperties
{
  v4 = [(CalDAVOperation *)self principal];
  v5 = [v4 calendarHomeURL];

  if (v5)
  {
    outstandingTasksGroup = self->_outstandingTasksGroup;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __67__CalDAVCalendarPropertyRefreshOperation_refreshCalendarProperties__block_invoke_2;
    v9[3] = &unk_278D66A78;
    v9[4] = self;
    v9[5] = a2;
    dispatch_group_notify(outstandingTasksGroup, MEMORY[0x277D85CD0], v9);
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFDB18] code:2 userInfo:0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__CalDAVCalendarPropertyRefreshOperation_refreshCalendarProperties__block_invoke;
    v10[3] = &unk_278D66968;
    v10[4] = self;
    v11 = v7;
    v8 = v7;
    [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:v8 delegateCallbackBlock:v10];
  }
}

void __67__CalDAVCalendarPropertyRefreshOperation_refreshCalendarProperties__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) principal];
  [v3 calendarRefreshForPrincipal:v2 completedWithNewCTags:0 newSyncTokens:0 calendarHomeSyncToken:0 updatedCalendars:0 error:*(a1 + 40)];
}

id __67__CalDAVCalendarPropertyRefreshOperation_refreshCalendarProperties__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) outstandingTasks];
  v3 = [v2 count];

  if (v3)
  {
    __67__CalDAVCalendarPropertyRefreshOperation_refreshCalendarProperties__block_invoke_2_cold_1();
  }

  v4 = [*v1 outstandingTaskGroups];
  v5 = [v4 count];

  if (v5)
  {
    __67__CalDAVCalendarPropertyRefreshOperation_refreshCalendarProperties__block_invoke_2_cold_2();
  }

  result = *v1;
  if ((*(*v1 + *MEMORY[0x277CFDD50]) & 1) == 0)
  {

    return [result _prepareCalendarsBeforeRefresh];
  }

  return result;
}

- (int)_sharingStatusForContainer:(id)a3
{
  v3 = a3;
  if (([v3 isSharedOwner] & 1) != 0 || (objc_msgSend(v3, "publishURL"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = 1;
  }

  else if ([v3 isShared])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_getIsAffectingAvailabilityCoreDAVItem:(id)a3
{
  v4 = a3;
  v5 = [(CalDAVOperation *)self principal];
  v6 = [v5 account];
  v7 = [v6 serverVersion];
  v8 = [v7 supportsAutoSchedule];

  v9 = objc_alloc(MEMORY[0x277CFDBE0]);
  v10 = *MEMORY[0x277CFDDC0];
  if (v8)
  {
    v11 = [v9 initWithNameSpace:*MEMORY[0x277CFDDC0] andName:*MEMORY[0x277CFDFF8]];
    v12 = objc_alloc(MEMORY[0x277CFDBE0]);
    v13 = [v4 isAffectingAvailability];

    v14 = MEMORY[0x277CFDFB8];
    if (!v13)
    {
      v14 = MEMORY[0x277CFE040];
    }

    v15 = *v14;
    v16 = v12;
    v17 = v10;
  }

  else
  {
    v11 = [v9 initWithNameSpace:*MEMORY[0x277CFDDC0] andName:*MEMORY[0x277CFDDE8]];
    v18 = objc_alloc(MEMORY[0x277CFDBE0]);
    v19 = [v4 isAffectingAvailability];

    if (v19)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v16 = v18;
    v17 = 0;
  }

  v20 = [v16 initWithNameSpace:v17 andName:v15];
  v21 = [v11 extraChildItems];
  [v21 addObject:v20];

  return v11;
}

- (id)_getSetIsAffectingAvailabilityTask:(BOOL)a3 forCalendar:(id)a4 atURL:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(CalDAVCalendarPropertyRefreshOperation *)self _getIsAffectingAvailabilityCoreDAVItem:v8];
  v10 = [(CalDAVCalendarPropertyRefreshOperation *)self _getSetPropertyTaskWithCoreDAVItem:v9 forCalendar:v8 atURL:v7];

  return v10;
}

- (id)_getSetPropertyTaskWithCoreDAVItem:(id)a3 forCalendar:(id)a4 atURL:(id)a5 ignoreErrors:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_alloc(MEMORY[0x277CFDC70]);
  v14 = [MEMORY[0x277CBEB98] setWithObject:v10];
  v15 = [v13 initWithPropertiesToSet:v14 andRemove:0 atURL:v12];

  v16 = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v15 setAccountInfoProvider:v16];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v15);
  v17 = [(CalDAVCalendarPropertyRefreshOperation *)self outstandingTasksGroup];
  dispatch_group_enter(v17);

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __108__CalDAVCalendarPropertyRefreshOperation__getSetPropertyTaskWithCoreDAVItem_forCalendar_atURL_ignoreErrors___block_invoke;
  v21[3] = &unk_278D66AF0;
  objc_copyWeak(&v24, &location);
  objc_copyWeak(&v25, &from);
  v26 = a6;
  v21[4] = self;
  v18 = v10;
  v22 = v18;
  v19 = v11;
  v23 = v19;
  [v15 setCompletionBlock:v21];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v15;
}

void __108__CalDAVCalendarPropertyRefreshOperation__getSetPropertyTaskWithCoreDAVItem_forCalendar_atURL_ignoreErrors___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = objc_loadWeakRetained((a1 + 64));
  v4 = [v3 error];

  if (v4)
  {
    v5 = *(a1 + 72);
    v6 = [MEMORY[0x277CFDC18] sharedLogging];
    v7 = objc_loadWeakRetained((*(a1 + 32) + *MEMORY[0x277CFDD48]));
    v8 = [v6 logHandleForAccountInfoProvider:v7];

    if (v5)
    {
      if (v8)
      {
        v9 = v8;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = [*(a1 + 40) nameSpace];
          v11 = [*(a1 + 40) name];
          v12 = [v3 error];
          v26 = 138543874;
          v27 = v10;
          v28 = 2114;
          v29 = v11;
          v30 = 2112;
          v31 = v12;
          _os_log_impl(&dword_242742000, v9, OS_LOG_TYPE_ERROR, "Got error (that we are ignoring) when attempting to set property %{public}@::%{public}@ on server: %@", &v26, 0x20u);
        }
      }
    }

    else
    {
      if (v8)
      {
        v13 = v8;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = [*(a1 + 40) nameSpace];
          v15 = [*(a1 + 40) name];
          v16 = [v3 error];
          v26 = 138543874;
          v27 = v14;
          v28 = 2114;
          v29 = v15;
          v30 = 2112;
          v31 = v16;
          _os_log_impl(&dword_242742000, v13, OS_LOG_TYPE_ERROR, "Got error when attempting to set property %{public}@::%{public}@ on server: %@", &v26, 0x20u);
        }
      }

      [WeakRetained setForceClearCalendarHomeSyncToken:1];
    }
  }

  if (*(a1 + 72) != 1 || ([v3 error], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v18 = [WeakRetained delegate];
    v19 = objc_opt_respondsToSelector();

    if ((v19 & 1) == 0)
    {
      goto LABEL_18;
    }

    v17 = [WeakRetained delegate];
    v20 = [v3 error];
    [v17 calendarRefreshPropPatchFinishedWithError:v20 forCalendar:*(a1 + 48)];
  }

LABEL_18:
  v21 = [*(a1 + 32) outstandingTasks];
  v22 = objc_loadWeakRetained((a1 + 64));
  [v21 removeObject:v22];

  v23 = [WeakRetained outstandingTasksGroup];

  if (v23)
  {
    v24 = [WeakRetained outstandingTasksGroup];
    dispatch_group_leave(v24);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)_getSetPropertiesTaskWithItemsToSet:(id)a3 itemsToRemove:(id)a4 atURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_alloc(MEMORY[0x277CFDC70]) initWithPropertiesToSet:v8 andRemove:v9 atURL:v10];
  v12 = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [v11 setAccountInfoProvider:v12];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v11);
  v13 = [(CalDAVCalendarPropertyRefreshOperation *)self outstandingTasksGroup];
  dispatch_group_enter(v13);

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__CalDAVCalendarPropertyRefreshOperation__getSetPropertiesTaskWithItemsToSet_itemsToRemove_atURL___block_invoke;
  v15[3] = &unk_278D66B18;
  objc_copyWeak(&v16, &location);
  objc_copyWeak(&v17, &from);
  v15[4] = self;
  [v11 setCompletionBlock:v15];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v11;
}

void __98__CalDAVCalendarPropertyRefreshOperation__getSetPropertiesTaskWithItemsToSet_itemsToRemove_atURL___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v2 = objc_loadWeakRetained(a1 + 6);
  v3 = [v2 error];

  if (v3)
  {
    [WeakRetained setForceClearCalendarHomeSyncToken:1];
  }

  v4 = [a1[4] outstandingTasks];
  v5 = objc_loadWeakRetained(a1 + 6);
  [v4 removeObject:v5];

  v6 = [WeakRetained outstandingTasksGroup];

  if (v6)
  {
    v7 = [WeakRetained outstandingTasksGroup];
    dispatch_group_leave(v7);
  }
}

- (id)_generateTimeZoneString:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v5 components:28 fromDate:v6];

  v8 = [objc_alloc(MEMORY[0x277D7F0F8]) initWithYear:objc_msgSend(v7 month:"year") - 1 day:{objc_msgSend(v7, "month"), objc_msgSend(v7, "day")}];
  v9 = [objc_alloc(MEMORY[0x277D7F140]) initWithSystemTimeZone:v4 fromDate:v8 options:2];

  v10 = objc_alloc_init(MEMORY[0x277D7F0D0]);
  v11 = [MEMORY[0x277CBEB18] arrayWithObject:v9];
  [v10 setComponents:v11];

  v12 = [objc_alloc(MEMORY[0x277D7F108]) initWithCalendar:v10];
  v13 = [v12 ICSStringWithOptions:0];

  return v13;
}

- (id)_getMkcalendarTaskGroupForCalendar:(id)a3
{
  v107 = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_didMakeCalendars = 1;
  v5 = [v4 calendarURL];

  if (!v5)
  {
    v6 = [(CalDAVOperation *)self principal];
    v7 = [v6 calendarHomeURL];
    v8 = [v4 guid];
    v9 = [v8 appendSlashIfNeeded];
    v10 = [v7 URLByAppendingPathComponent:v9];
    [v4 setCalendarURL:v10];
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = objc_alloc(MEMORY[0x277CFDBE0]);
  v13 = *MEMORY[0x277CFDEF8];
  v95 = [v12 initWithNameSpace:*MEMORY[0x277CFDEF8] andName:*MEMORY[0x277CFDF00]];
  v14 = [v4 title];
  [v95 setPayloadAsString:v14];

  [v11 addObject:v95];
  v15 = objc_alloc(MEMORY[0x277CFDBE0]);
  v16 = *MEMORY[0x277CFE050];
  v94 = [v15 initWithNameSpace:*MEMORY[0x277CFE050] andName:*MEMORY[0x277CFDDF0]];
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(v4, "order")];
  [v94 setPayloadAsString:v17];

  [v11 addObject:v94];
  v18 = [v4 color];

  if (!v18)
  {
    v96 = 0;
    goto LABEL_7;
  }

  v96 = objc_alloc_init(CalDAVCalendarColorItem);
  v19 = [v4 color];
  [(CalDAVCalendarColorItem *)v96 setColorString:v19];

  v20 = [v4 symbolicColorName];

  if (!v20)
  {
LABEL_7:
    v21 = 0;
    goto LABEL_8;
  }

  v21 = objc_alloc_init(CalDAVCalendarColorItem);
  v22 = [v4 color];
  [(CalDAVCalendarColorItem *)v21 setColorString:v22];

  v23 = [v4 symbolicColorName];
  [(CalDAVCalendarColorItem *)v21 setSymbolicColorName:v23];

LABEL_8:
  if ([v4 isSubscribed] && objc_msgSend(v4, "conformsToProtocol:", &unk_28552A228))
  {
    v24 = v4;
    v25 = objc_alloc(MEMORY[0x277CFDBE0]);
    v26 = [v25 initWithNameSpace:v13 andName:*MEMORY[0x277CFDFE0]];
    v27 = objc_alloc(MEMORY[0x277CFDBE0]);
    v89 = [v27 initWithNameSpace:v13 andName:*MEMORY[0x277CFDED8]];
    v28 = objc_alloc(MEMORY[0x277CFDBE0]);
    v29 = *MEMORY[0x277CFE020];
    v90 = *MEMORY[0x277CFDE90];
    v88 = [v28 initWithNameSpace:? andName:?];
    v30 = [v26 extraChildItems];
    [v30 addObject:v89];

    v31 = [v26 extraChildItems];
    [v31 addObject:v88];

    [v11 addObject:v26];
    v32 = objc_alloc(MEMORY[0x277CFDBE0]);
    v92 = [v32 initWithNameSpace:v90 andName:*MEMORY[0x277CFDE60]];
    v33 = objc_alloc(MEMORY[0x277CFDBE0]);
    v93 = [v33 initWithNameSpace:v13 andName:*MEMORY[0x277CFDF38]];
    v34 = [v24 subscriptionURL];
    v87 = [v34 absoluteString];

    [v93 setPayloadAsString:v87];
    v35 = [v92 extraChildItems];
    [v35 addObject:v93];

    [v11 addObject:v92];
    v36 = objc_alloc(MEMORY[0x277CFDBE0]);
    v91 = [v36 initWithNameSpace:v16 andName:*MEMORY[0x277CFDFD8]];
    [v24 refreshInterval];
    v38 = v37;
    [v24 refreshInterval];
    v40 = v39;
    if (v39 < 0)
    {
      v41 = [MEMORY[0x277CFDC18] sharedLogging];
      WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
      v43 = [v41 logHandleForAccountInfoProvider:WeakRetained];

      if (v43 && os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v104 = v24;
        v105 = 2048;
        v106 = v38;
        _os_log_impl(&dword_242742000, v43, OS_LOG_TYPE_ERROR, "The refresh interval specified for the [%@] calendar, which is about to be created, is too large.  It is currently: [%lu].  It will be set to 0.", buf, 0x16u);
      }

      v40 = 0;
    }

    v44 = [objc_alloc(MEMORY[0x277D7F110]) initWithWeeks:0 days:0 hours:0 minutes:0 seconds:v40];
    v86 = [v44 ICSStringWithOptions:0];
    [v91 setPayloadAsString:v86];
    [v11 addObject:v91];
    if ([v24 hasAlarmFilter])
    {
      v45 = objc_alloc(MEMORY[0x277CFDBE0]);
      v46 = [v45 initWithNameSpace:v90 andName:*MEMORY[0x277CFDE68]];
      [v11 addObject:v46];
    }

    if ([v24 hasAttachmentFilter])
    {
      v47 = objc_alloc(MEMORY[0x277CFDBE0]);
      v48 = [v47 initWithNameSpace:v90 andName:*MEMORY[0x277CFDE70]];
      [v11 addObject:v48];
    }

    if ([v24 hasTaskFilter])
    {
      v49 = objc_alloc(MEMORY[0x277CFDBE0]);
      v50 = [v49 initWithNameSpace:v90 andName:*MEMORY[0x277CFDE78]];
      [v11 addObject:v50];
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v24 autoprovisioned])
    {
      v51 = [objc_alloc(MEMORY[0x277CFDBE0]) initWithNameSpace:v16 andName:@"autoprovisioned"];
      [v11 addObject:v51];
    }

    if (objc_opt_respondsToSelector())
    {
      v52 = [v24 languageCode];
      v53 = v52 == 0;

      if (!v53)
      {
        v54 = [objc_alloc(MEMORY[0x277CFDBE0]) initWithNameSpace:v16 andName:@"language-code"];
        v55 = [v24 languageCode];
        [v54 setPayloadAsString:v55];

        [v11 addObject:v54];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v56 = [v24 locationCode];
      v57 = v56 == 0;

      if (!v57)
      {
        v58 = [objc_alloc(MEMORY[0x277CFDBE0]) initWithNameSpace:v16 andName:@"location-code"];
        v59 = [v24 locationCode];
        [v58 setPayloadAsString:v59];

        [v11 addObject:v58];
      }
    }

    goto LABEL_40;
  }

  if ([v4 isSubscribed])
  {
    v60 = [MEMORY[0x277CFDC18] sharedLogging];
    v61 = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
    v62 = [v60 logHandleForAccountInfoProvider:v61];

    if (v62 && os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v104 = v4;
      _os_log_impl(&dword_242742000, v62, OS_LOG_TYPE_ERROR, "We have a calendar (%@) that claims to be a subscribed calendar, but doesn't implement CalDAVSubscribedCalendar.", buf, 0xCu);
    }
  }

  v63 = [v4 notes];
  v64 = [v63 length] == 0;

  v65 = MEMORY[0x277CFDDC0];
  if (!v64)
  {
    v66 = objc_alloc(MEMORY[0x277CFDBE0]);
    v67 = [v66 initWithNameSpace:*v65 andName:*MEMORY[0x277CFDDE0]];
    v68 = [v4 notes];
    [v67 setPayloadAsString:v68];

    [v11 addObject:v67];
  }

  v69 = [(CalDAVCalendarPropertyRefreshOperation *)self _getIsAffectingAvailabilityCoreDAVItem:v4];
  [v11 addObject:v69];

  v70 = [v4 timeZone];
  LOBYTE(v69) = v70 == 0;

  if ((v69 & 1) == 0)
  {
    v71 = [v4 timeZone];
    v24 = [(CalDAVCalendarPropertyRefreshOperation *)self _generateTimeZoneString:v71];

    v72 = objc_alloc(MEMORY[0x277CFDBE0]);
    v26 = [v72 initWithNameSpace:*v65 andName:*MEMORY[0x277CFDE98]];
    [v26 setPayloadAsString:v24];
    [v11 addObject:v26];
LABEL_40:
  }

  v73 = v11;
  v74 = v73;
  if (v21)
  {
    v75 = [v73 setByAddingObject:v21];

    if (v96)
    {
      v76 = [v74 setByAddingObject:?];
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  if (v96)
  {
    v75 = [v73 setByAddingObject:?];

LABEL_46:
    v76 = 0;
    goto LABEL_48;
  }

  v76 = 0;
  v75 = v73;
LABEL_48:
  v77 = [CalDAVMkcalendarWithFallbackTaskGroup alloc];
  v78 = [(CoreDAVTaskGroup *)self accountInfoProvider];
  v79 = [(CoreDAVTaskGroup *)self taskManager];
  v80 = [v4 calendarURL];
  v81 = [(CalDAVMkcalendarWithFallbackTaskGroup *)v77 initWithAccountInfoProvider:v78 taskManager:v79 primaryPropertiesToSet:v75 fallbackPropertiesToSet:v76 atURL:v80];

  -[CalDAVMkcalendarWithFallbackTaskGroup setShouldSupportVEVENT:](v81, "setShouldSupportVEVENT:", [v4 isEventContainer]);
  -[CalDAVMkcalendarWithFallbackTaskGroup setShouldSupportVTODO:](v81, "setShouldSupportVTODO:", [v4 isTaskContainer]);
  objc_initWeak(buf, self);
  objc_initWeak(&location, v81);
  v82 = [(CalDAVCalendarPropertyRefreshOperation *)self outstandingTasksGroup];
  dispatch_group_enter(v82);

  v97[0] = MEMORY[0x277D85DD0];
  v97[1] = 3221225472;
  v97[2] = __77__CalDAVCalendarPropertyRefreshOperation__getMkcalendarTaskGroupForCalendar___block_invoke;
  v97[3] = &unk_278D66B40;
  objc_copyWeak(&v100, buf);
  objc_copyWeak(&v101, &location);
  v83 = v4;
  v98 = v83;
  v99 = self;
  [(CoreDAVTaskGroup *)v81 setCompletionBlock:v97];

  objc_destroyWeak(&v101);
  objc_destroyWeak(&v100);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v84 = *MEMORY[0x277D85DE8];

  return v81;
}

void __77__CalDAVCalendarPropertyRefreshOperation__getMkcalendarTaskGroupForCalendar___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = objc_loadWeakRetained((a1 + 56));
  v3 = [v2 error];

  if (v3)
  {
    if ([WeakRetained _handleMkCalTaskGroupError:v2 forCalendar:*(a1 + 32)])
    {
      [WeakRetained _retryMkCalForCalendar:*(a1 + 32)];
    }
  }

  else
  {
    v4 = [WeakRetained delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [WeakRetained delegate];
      v7 = [*(a1 + 40) principal];
      [v6 calendarRefreshMkCalendarSucceededForPrincipal:v7 calendar:*(a1 + 32)];
    }
  }

  v8 = [WeakRetained outstandingTaskGroups];
  [v8 removeObject:v2];

  v9 = [WeakRetained outstandingTasksGroup];

  if (v9)
  {
    v10 = [WeakRetained outstandingTasksGroup];
    dispatch_group_leave(v10);
  }
}

- (BOOL)_handleMkCalTaskGroupError:(id)a3 forCalendar:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 error];
  v9 = [MEMORY[0x277CFDC18] sharedLogging];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
  v11 = [v9 logHandleForAccountInfoProvider:WeakRetained];

  if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v17 = 138412802;
    v18 = v8;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_242742000, v11, OS_LOG_TYPE_ERROR, "Encountered an error while creating a calendar. error = %@; failing calendar = %@; failing task group = %@", &v17, 0x20u);
  }

  v12 = [(CoreDAVTaskGroup *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v13 = [(CalDAVOperation *)self principal];
    v14 = [v12 calendarRefreshShouldRetryMkCalendarForPrincipal:v13 calendar:v7 error:v8];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_retryMkCalForCalendar:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CFDC18] sharedLogging];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
  v7 = [v5 logHandleForAccountInfoProvider:WeakRetained];

  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_242742000, v7, OS_LOG_TYPE_DEFAULT, "Retrying mkcalendar for calendar %@", &v11, 0xCu);
  }

  v8 = [(CalDAVCalendarPropertyRefreshOperation *)self _getMkcalendarTaskGroupForCalendar:v4];
  v9 = [(CalDAVOperation *)self outstandingTaskGroups];
  [v9 addObject:v8];

  [v8 startTaskGroup];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_initializePrincipalCalendarCache
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(CalDAVOperation *)self principal];
  v4 = [v3 calendars];

  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count")}];
  pathToLocalCalendar = self->_pathToLocalCalendar;
  self->_pathToLocalCalendar = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  localCalendarsWithNoPath = self->_localCalendarsWithNoPath;
  self->_localCalendarsWithNoPath = v7;

  self->_nextCalendarOrder = -1;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v4;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        nextCalendarOrder = self->_nextCalendarOrder;
        v15 = [v13 order];
        if (nextCalendarOrder <= v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = nextCalendarOrder;
        }

        self->_nextCalendarOrder = v16;
        v17 = [v13 calendarURL];

        if (v17)
        {
          v18 = self->_pathToLocalCalendar;
          v19 = [v13 calendarURL];
          v20 = [v19 absoluteString];
          v21 = [v20 appendSlashIfNeeded];
          [(NSMutableDictionary *)v18 setObject:v13 forKey:v21];
        }

        else
        {
          [(NSMutableSet *)self->_localCalendarsWithNoPath addObject:v13];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
  }

  ++self->_nextCalendarOrder;
  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  ctags = self->_ctags;
  self->_ctags = v22;

  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  syncTokens = self->_syncTokens;
  self->_syncTokens = v24;

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)_handleUpdateForCalendar:(id)a3
{
  v336 = *MEMORY[0x277D85DE8];
  v4 = a3;
  val = self;
  v315 = [(CalDAVOperation *)self principal];
  if (([v4 isScheduleInbox] & 1) != 0 || (objc_msgSend(v4, "isScheduleOutbox") & 1) != 0 || (objc_msgSend(v4, "isNotification") & 1) != 0 || (objc_msgSend(v4, "isSubscribed") & 1) != 0 || objc_msgSend(v4, "isPollContainer"))
  {
    v5 = [(CoreDAVTaskGroup *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(CoreDAVTaskGroup *)val delegate];
      [v7 calendarRefreshFoundUpdatedSpecialContainer:v4];
    }

    [v4 isCalendar];
  }

  else if (([v4 isCalendar] & 1) == 0)
  {
    v313 = [MEMORY[0x277CFDC18] sharedLogging];
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
    v29 = [v313 logHandleForAccountInfoProvider:WeakRetained];

    if (v29)
    {
      v29 = v29;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v80 = [v4 url];
        *buf = 138412290;
        v332 = v80;
        _os_log_impl(&dword_242742000, v29, OS_LOG_TYPE_DEBUG, "Skipping special non-calendar container at %@", buf, 0xCu);
      }
    }

    goto LABEL_127;
  }

  v8 = [v4 ctag];

  if (v8)
  {
    ctags = val->_ctags;
    v10 = [v4 ctag];
    v11 = [v4 url];
    v12 = [v11 absoluteString];
    v13 = [v12 appendSlashIfNeeded];
    [(NSMutableDictionary *)ctags setObject:v10 forKey:v13];
  }

  v14 = [v4 syncToken];

  if (v14)
  {
    syncTokens = val->_syncTokens;
    v16 = [v4 syncToken];
    v17 = [v4 url];
    v18 = [v17 absoluteString];
    v19 = [v18 appendSlashIfNeeded];
    [(NSMutableDictionary *)syncTokens setObject:v16 forKey:v19];
  }

  v313 = [v4 privileges];
  if (v313)
  {
    v20 = [v4 hasWriteContentPrivileges];
    v21 = [v4 hasWritePropertiesPrivileges];
  }

  else
  {
    v20 = [v315 isWritable];
    v21 = [v315 isWritable];
  }

  v22 = v21;
  if (([v4 isScheduleInbox] & 1) != 0 || (objc_msgSend(v4, "isScheduleOutbox") & 1) != 0 || (objc_msgSend(v4, "isNotification") & 1) != 0 || (v312 = v22, objc_msgSend(v4, "isPollContainer")))
  {
    v312 = 0;
  }

  if ([v4 isEventContainer])
  {
    v23 = [v4 isTaskContainer] ^ 1;
  }

  else
  {
    v23 = 0;
  }

  if ([v4 isEventContainer])
  {
    v24 = 0;
    if (!v23)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v24 = [v4 isTaskContainer];
    if (!v23)
    {
      goto LABEL_29;
    }
  }

  if (([v315 isEnabledForEvents] & 1) == 0)
  {
    v61 = [MEMORY[0x277CFDC18] sharedLogging];
    v62 = objc_loadWeakRetained((&val->super.super.super.isa + *MEMORY[0x277CFDD48]));
    v63 = [v61 logHandleForAccountInfoProvider:v62];

    if (v63)
    {
      v64 = v63;
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        v65 = [v4 url];
        *buf = 138412290;
        v332 = v65;
        _os_log_impl(&dword_242742000, v64, OS_LOG_TYPE_DEBUG, "Skipping event-only container at %@", buf, 0xCu);
      }
    }

    v66 = [(CoreDAVTaskGroup *)val delegate];
    v67 = objc_opt_respondsToSelector();

    if ((v67 & 1) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_77;
  }

LABEL_29:
  if (v24 && ([v315 isEnabledForTodos] & 1) == 0)
  {
    v68 = [MEMORY[0x277CFDC18] sharedLogging];
    v69 = objc_loadWeakRetained((&val->super.super.super.isa + *MEMORY[0x277CFDD48]));
    v70 = [v68 logHandleForAccountInfoProvider:v69];

    if (v70)
    {
      v71 = v70;
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        v72 = [v4 url];
        *buf = 138412290;
        v332 = v72;
        _os_log_impl(&dword_242742000, v71, OS_LOG_TYPE_DEBUG, "Skipping todo-only container at %@", buf, 0xCu);
      }
    }

    v73 = [(CoreDAVTaskGroup *)val delegate];
    v74 = objc_opt_respondsToSelector();

    if ((v74 & 1) == 0)
    {
      goto LABEL_121;
    }

LABEL_77:
    v29 = [(CoreDAVTaskGroup *)val delegate];
    [v29 calendarRefreshFoundUpdatedContainerWithIgnoredEntityType:v4];
LABEL_127:
    v104 = 0;
    goto LABEL_315;
  }

  if ([v4 isJournalContainer] && (objc_msgSend(v4, "isEventContainer") & 1) == 0 && (objc_msgSend(v4, "isTaskContainer") & 1) == 0)
  {
    v29 = [MEMORY[0x277CFDC18] sharedLogging];
    v75 = objc_loadWeakRetained((&val->super.super.super.isa + *MEMORY[0x277CFDD48]));
    v76 = [v29 logHandleForAccountInfoProvider:v75];

    if (v76)
    {
      v77 = v76;
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
      {
        v78 = [v4 url];
        *buf = 138412290;
        v332 = v78;
        _os_log_impl(&dword_242742000, v77, OS_LOG_TYPE_DEBUG, "Skipping over VJOURNAL-only container at %@", buf, 0xCu);
      }
    }

    goto LABEL_127;
  }

  v310 = v22;
  v311 = v20;
  pathToLocalCalendar = val->_pathToLocalCalendar;
  v26 = [v4 url];
  v27 = [v26 absoluteString];
  v28 = [v27 appendSlashIfNeeded];
  v29 = [(NSMutableDictionary *)pathToLocalCalendar objectForKey:v28];

  if (v29)
  {
    goto LABEL_115;
  }

  if (![v315 isMergeSync])
  {
    goto LABEL_70;
  }

  v30 = [MEMORY[0x277CFDC18] sharedLogging];
  v316 = *MEMORY[0x277CFDD48];
  v31 = objc_loadWeakRetained((&val->super.super.super.isa + v316));
  v32 = [v30 logHandleForAccountInfoProvider:v31];

  if (v32)
  {
    v33 = v32;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = [v4 containerTitle];
      *buf = 138412290;
      v332 = v34;
      _os_log_impl(&dword_242742000, v33, OS_LOG_TYPE_INFO, "This is a merge sync, so we'll try to identity match this calendar: %@", buf, 0xCu);
    }
  }

  v329 = 0u;
  v330 = 0u;
  v328 = 0u;
  v327 = 0u;
  v35 = val->_localCalendarsWithNoPath;
  v36 = [(NSMutableSet *)v35 countByEnumeratingWithState:&v327 objects:v335 count:16];
  if (!v36)
  {
LABEL_64:

    goto LABEL_65;
  }

  v37 = *v328;
  v314 = 138412546;
LABEL_42:
  v38 = 0;
  while (1)
  {
    if (*v328 != v37)
    {
      objc_enumerationMutation(v35);
    }

    v39 = *(*(&v327 + 1) + 8 * v38);
    v40 = [v4 containerTitle];
    if (![v40 length])
    {
      goto LABEL_61;
    }

    v41 = [v4 containerTitle];
    v42 = [v39 title];
    v43 = [v41 caseInsensitiveCompare:v42] == 0;

    if (v43)
    {
      break;
    }

LABEL_62:
    if (v36 == ++v38)
    {
      v36 = [(NSMutableSet *)v35 countByEnumeratingWithState:&v327 objects:v335 count:16];
      if (v36)
      {
        goto LABEL_42;
      }

      goto LABEL_64;
    }
  }

  v44 = [v39 isEventContainer];
  if (v44 != [v4 isEventContainer] && !objc_msgSend(v4, "isEventContainer") || (v45 = objc_msgSend(v39, "isTaskContainer"), v45 != objc_msgSend(v4, "isTaskContainer")) && !objc_msgSend(v4, "isTaskContainer") || (v46 = objc_msgSend(v39, "isScheduleInbox"), v46 != objc_msgSend(v4, "isScheduleInbox")) || (v47 = objc_msgSend(v39, "isNotification"), v47 != objc_msgSend(v4, "isNotification")) || (v48 = objc_msgSend(v39, "isSubscribed"), v48 != objc_msgSend(v4, "isSubscribed")) || (objc_msgSend(v4, "isScheduleOutbox") & 1) != 0 || (objc_msgSend(v4, "isSubscribed") & 1) != 0)
  {
    v40 = [MEMORY[0x277CFDC18] sharedLogging];
    v49 = objc_loadWeakRetained((&val->super.super.super.isa + v316));
    v50 = [v40 logHandleForAccountInfoProvider:v49];

    if (v50)
    {
      v51 = v50;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = [v39 title];
        v53 = [v4 containerTitle];
        *buf = 138412546;
        v332 = v52;
        v333 = 2112;
        v334 = v53;
        _os_log_impl(&dword_242742000, v51, OS_LOG_TYPE_INFO, "Found a calendar that matches based on title, but it doesn't support the same types. %@/%@", buf, 0x16u);
      }
    }

LABEL_61:
    goto LABEL_62;
  }

  v81 = [MEMORY[0x277CFDC18] sharedLogging];
  v82 = objc_loadWeakRetained((&val->super.super.super.isa + v316));
  v83 = [v81 logHandleForAccountInfoProvider:v82];

  if (v83)
  {
    v84 = v83;
    if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
    {
      v85 = [v39 title];
      v86 = [v4 containerTitle];
      *buf = 138412546;
      v332 = v85;
      v333 = 2112;
      v334 = v86;
      _os_log_impl(&dword_242742000, v84, OS_LOG_TYPE_INFO, "Merged local calendar %@ with remote calendar %@", buf, 0x16u);
    }
  }

  v29 = v39;
  -[NSObject setIsEventContainer:](v29, "setIsEventContainer:", [v4 isEventContainer]);
  -[NSObject setIsTaskContainer:](v29, "setIsTaskContainer:", [v4 isTaskContainer]);
  v87 = [v4 url];
  [v29 setCalendarURL:v87];

  if (v29)
  {
    [(NSMutableSet *)val->_localCalendarsWithNoPath removeObject:v29];
    v88 = [MEMORY[0x277CFDC18] sharedLogging];
    v89 = objc_loadWeakRetained((&val->super.super.super.isa + v316));
    v90 = [v88 logHandleForAccountInfoProvider:v89];

    if (v90)
    {
      v91 = v90;
      if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
      {
        v92 = [v4 url];
        localCalendarsWithNoPath = val->_localCalendarsWithNoPath;
        *buf = 138412546;
        v332 = v92;
        v333 = 2112;
        v334 = localCalendarsWithNoPath;
        _os_log_impl(&dword_242742000, v91, OS_LOG_TYPE_INFO, "Merged container at %@. The following calendars haven't matched yet: %@", buf, 0x16u);
      }
    }

    goto LABEL_115;
  }

LABEL_65:
  v54 = [MEMORY[0x277CFDC18] sharedLogging];
  v55 = objc_loadWeakRetained((&val->super.super.super.isa + v316));
  v56 = [v54 logHandleForAccountInfoProvider:v55];

  if (v56)
  {
    v57 = v56;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      v58 = [v4 url];
      v59 = val->_localCalendarsWithNoPath;
      *buf = 138412546;
      v332 = v58;
      v333 = 2112;
      v334 = v59;
      _os_log_impl(&dword_242742000, v57, OS_LOG_TYPE_INFO, "Didn't merge the container at %@. The following calendars haven't matched yet: %@", buf, 0x16u);
    }
  }

LABEL_70:
  if ([v4 isSubscribed])
  {
    v60 = 4;
  }

  else if ([v4 isScheduleInbox])
  {
    v60 = 1;
  }

  else if ([v4 isScheduleOutbox])
  {
    v60 = 2;
  }

  else if ([v4 isNotification])
  {
    v60 = 3;
  }

  else if ([v4 isPollContainer])
  {
    v60 = 5;
  }

  else
  {
    v60 = 0;
  }

  v94 = [v4 url];
  v29 = [v315 calendarOfType:v60 atURL:v94 withOptions:0];

  if (!v29)
  {
LABEL_121:
    v104 = 0;
    goto LABEL_316;
  }

  v95 = CFUUIDCreate(0);
  v96 = CFUUIDCreateString(0, v95);
  [v29 setGuid:v96];

  CFRelease(v95);
  v97 = [v4 url];
  [v29 setCalendarURL:v97];

  -[NSObject setIsEnabled:](v29, "setIsEnabled:", [v315 isEnabled]);
  -[NSObject setIsEditable:](v29, "setIsEditable:", ([v4 isSubscribed] ^ 1) & v311);
  [v29 setIsRenameable:v310];
  -[NSObject setIsEventContainer:](v29, "setIsEventContainer:", [v4 isEventContainer]);
  -[NSObject setIsTaskContainer:](v29, "setIsTaskContainer:", [v4 isTaskContainer]);
  -[NSObject setIsSubscribed:](v29, "setIsSubscribed:", [v4 isSubscribed]);
  -[NSObject setIsScheduleInbox:](v29, "setIsScheduleInbox:", [v4 isScheduleInbox]);
  -[NSObject setIsScheduleOutbox:](v29, "setIsScheduleOutbox:", [v4 isScheduleOutbox]);
  -[NSObject setIsPoll:](v29, "setIsPoll:", [v4 isPollContainer]);
  -[NSObject setIsNotification:](v29, "setIsNotification:", [v4 isNotification]);
  v98 = [v4 publishURL];
  [v29 setPublishURL:v98];

  v99 = [v4 prePublishURL];
  [v29 setPrePublishURL:v99];

  [v29 setSharingStatus:[(CalDAVCalendarPropertyRefreshOperation *)val _sharingStatusForContainer:v4]];
LABEL_115:
  v100 = [(CoreDAVTaskGroup *)val delegate];
  v101 = objc_opt_respondsToSelector();

  if (v101)
  {
    v102 = [(CoreDAVTaskGroup *)val delegate];
    [v102 calendarRefreshWillRefreshCalendar:v29];
  }

  if (![v4 isSubscribed])
  {
    goto LABEL_182;
  }

  if (([v29 conformsToProtocol:&unk_28552A228]& 1) == 0)
  {
    v105 = [MEMORY[0x277CFDC18] sharedLogging];
    v106 = objc_loadWeakRetained((&val->super.super.super.isa + *MEMORY[0x277CFDD48]));
    v107 = [v105 logHandleForAccountInfoProvider:v106];

    if (v107)
    {
      v108 = v107;
      if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
      {
        v109 = objc_opt_class();
        *buf = 138543362;
        v332 = v109;
        _os_log_impl(&dword_242742000, v108, OS_LOG_TYPE_ERROR, "Expected a subscribed calendar, but this doesn't look like one: %{public}@", buf, 0xCu);
      }
    }

    [v29 setIsSubscribed:1];
    goto LABEL_127;
  }

  if (v312)
  {
    v103 = [v29 wasModifiedLocally];
  }

  else
  {
    v103 = 0;
  }

  v110 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v111 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v112 = v29;
  v113 = [v112 subscriptionURL];
  if (!v113)
  {
    goto LABEL_132;
  }

  v114 = [v112 subscriptionURL];
  v115 = [v4 source];
  v116 = [v114 isEqual:v115];

  if (((v116 ^ 1) & v103) != 0)
  {
    v117 = objc_alloc(MEMORY[0x277CFDBE0]);
    v118 = [v117 initWithNameSpace:*MEMORY[0x277CFDE90] andName:*MEMORY[0x277CFDE60]];
    v119 = objc_alloc(MEMORY[0x277CFDBE0]);
    v120 = [v119 initWithNameSpace:*MEMORY[0x277CFDEF8] andName:*MEMORY[0x277CFDF38]];
    v121 = [v112 subscriptionURL];
    v122 = [v121 absoluteString];

    [v120 setPayloadAsString:v122];
    v123 = [v118 extraChildItems];
    [v123 addObject:v120];

    [v110 addObject:v118];
  }

  else
  {
LABEL_132:
    v118 = [v4 source];
    [v112 setSubscriptionURL:v118];
  }

  v124 = [v112 hasAlarmFilter];
  if (((v124 ^ [v4 subscribedStripAlarms]) & v103) == 1)
  {
    v125 = objc_alloc(MEMORY[0x277CFDBE0]);
    v126 = [v125 initWithNameSpace:*MEMORY[0x277CFDE90] andName:*MEMORY[0x277CFDE68]];
    if ([v112 hasAlarmFilter])
    {
      v127 = v110;
    }

    else
    {
      v127 = v111;
    }

    [v127 addObject:v126];
  }

  else
  {
    -[NSObject setHasAlarmFilter:](v112, "setHasAlarmFilter:", [v4 subscribedStripAlarms]);
  }

  v128 = [v112 hasAttachmentFilter];
  if (((v128 ^ [v4 subscribedStripAttachments]) & v103) == 1)
  {
    v129 = objc_alloc(MEMORY[0x277CFDBE0]);
    v130 = [v129 initWithNameSpace:*MEMORY[0x277CFDE90] andName:*MEMORY[0x277CFDE70]];
    if ([v112 hasAttachmentFilter])
    {
      v131 = v110;
    }

    else
    {
      v131 = v111;
    }

    [v131 addObject:v130];
  }

  else
  {
    -[NSObject setHasAttachmentFilter:](v112, "setHasAttachmentFilter:", [v4 subscribedStripAttachments]);
  }

  v132 = [v112 hasTaskFilter];
  if (((v132 ^ [v4 subscribedStripTodos]) & v103) == 1)
  {
    v133 = objc_alloc(MEMORY[0x277CFDBE0]);
    v134 = [v133 initWithNameSpace:*MEMORY[0x277CFDE90] andName:*MEMORY[0x277CFDE78]];
    if ([v112 hasTaskFilter])
    {
      v135 = v110;
    }

    else
    {
      v135 = v111;
    }

    [v135 addObject:v134];
    v136 = [v112 subscriptionURL];
    v137 = [v136 absoluteString];
    [v134 setPayloadAsString:v137];
  }

  else
  {
    -[NSObject setHasTaskFilter:](v112, "setHasTaskFilter:", [v4 subscribedStripTodos]);
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && (v138 = -[NSObject autoprovisioned](v112, "autoprovisioned"), ((v138 ^ [v4 autoprovisioned]) & v103) == 1))
  {
    v139 = objc_alloc(MEMORY[0x277CFDBE0]);
    v140 = [v139 initWithNameSpace:*MEMORY[0x277CFE050] andName:@"autoprovisioned"];
    if ([v112 autoprovisioned])
    {
      v141 = v110;
    }

    else
    {
      v141 = v111;
    }

    [v141 addObject:v140];
    v142 = [v112 subscriptionURL];
    v143 = [v142 absoluteString];
    [v140 setPayloadAsString:v143];
  }

  else if (objc_opt_respondsToSelector())
  {
    -[NSObject setAutoprovisioned:](v112, "setAutoprovisioned:", [v4 autoprovisioned]);
  }

  if (objc_opt_respondsToSelector())
  {
    v144 = [v112 locationCode];
    if (v144)
    {
      v145 = [v112 locationCode];
      v146 = [v4 locationCode];
      v147 = [v145 isEqualToString:v146];

      if (((v147 ^ 1) & v103) != 0)
      {
        v148 = objc_alloc(MEMORY[0x277CFDBE0]);
        v149 = [v148 initWithNameSpace:*MEMORY[0x277CFE050] andName:@"location-code"];
        v150 = [v112 locationCode];
        [v149 setPayloadAsString:v150];

        [v110 addObject:v149];
        goto LABEL_165;
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v149 = [v4 locationCode];
    [v112 setLocationCode:v149];
LABEL_165:
  }

  if (objc_opt_respondsToSelector())
  {
    v151 = [v112 languageCode];
    if (v151)
    {
      v152 = [v112 languageCode];
      v153 = [v4 languageCode];
      v154 = [v152 isEqualToString:v153];

      if (((v154 ^ 1) & v103) != 0)
      {
        v155 = objc_alloc(MEMORY[0x277CFDBE0]);
        v156 = [v155 initWithNameSpace:*MEMORY[0x277CFE050] andName:@"language-code"];
        v157 = [v112 languageCode];
        [v156 setPayloadAsString:v157];

        [v110 addObject:v156];
        goto LABEL_172;
      }
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v156 = [v4 languageCode];
    [v112 setLanguageCode:v156];
LABEL_172:
  }

  v158 = [v4 subscribedRefreshRate];
  v159 = v158 == 0;

  if (v159)
  {
    if (!v103)
    {
      goto LABEL_178;
    }

LABEL_177:
    v164 = objc_alloc(MEMORY[0x277CFDBE0]);
    v165 = [v164 initWithNameSpace:*MEMORY[0x277CFE050] andName:*MEMORY[0x277CFDFD8]];
    v166 = objc_alloc(MEMORY[0x277D7F110]);
    [v112 refreshInterval];
    v168 = [v166 initWithWeeks:0 days:0 hours:0 minutes:0 seconds:v167];
    v169 = [v168 ICSStringWithOptions:0];
    [v165 setPayloadAsString:v169];
    [v110 addObject:v165];

    goto LABEL_178;
  }

  v160 = [v4 subscribedRefreshRate];
  [v160 timeInterval];
  v162 = v161;

  [v112 refreshInterval];
  if (((v163 != v162) & v103) != 0)
  {
    goto LABEL_177;
  }

  [v112 setRefreshInterval:v162];
LABEL_178:
  if ([v110 count] || objc_msgSend(v111, "count"))
  {
    v170 = [v4 url];
    v171 = [(CalDAVCalendarPropertyRefreshOperation *)val _getSetPropertiesTaskWithItemsToSet:v110 itemsToRemove:v111 atURL:v170];

    v172 = [(CoreDAVTaskGroup *)val outstandingTasks];
    [v172 addObject:v171];

    v173 = [(CoreDAVTaskGroup *)val taskManager];
    [v173 submitQueuedCoreDAVTask:v171];
  }

LABEL_182:
  v174 = [v4 isScheduleTransparent];
  v175 = [v29 isAffectingAvailability];
  if (v174 == v175)
  {
    v176 = [v29 wasModifiedLocally];
    if ((objc_opt_respondsToSelector() & 1) != 0 && (v312 & v176 & [v29 needsIsAffectingAvailabilityUpdate]) == 1)
    {
      v177 = [v4 url];
      v178 = [(CalDAVCalendarPropertyRefreshOperation *)val _getSetIsAffectingAvailabilityTask:v175 forCalendar:v29 atURL:v177];

      v179 = [(CoreDAVTaskGroup *)val outstandingTasks];
      [v179 addObject:v178];

      v180 = [(CoreDAVTaskGroup *)val taskManager];
      [v180 submitQueuedCoreDAVTask:v178];
    }

    else
    {
      [v29 setIsAffectingAvailability:v174 ^ 1u];
    }
  }

  v181 = [v29 isManagedByServer];
  if (v181 != [v4 isCalendar])
  {
    -[NSObject setIsManagedByServer:](v29, "setIsManagedByServer:", [v4 isCalendar]);
  }

  v182 = [v4 pushKey];
  v183 = [v29 pushKey];
  v184 = v183;
  if (v182 == v183)
  {

LABEL_193:
  }

  else
  {
    v185 = [v4 pushKey];
    v186 = [v29 pushKey];
    v187 = [v185 isEqualToString:v186];

    if ((v187 & 1) == 0)
    {
      v182 = [v4 pushKey];
      [v29 setPushKey:v182];
      goto LABEL_193;
    }
  }

  v188 = [v4 isEventContainer];
  if (v188 != [v29 isEventContainer])
  {
    -[NSObject setIsEventContainer:](v29, "setIsEventContainer:", [v4 isEventContainer]);
  }

  v189 = [v4 isTaskContainer];
  if (v189 != [v29 isTaskContainer])
  {
    -[NSObject setIsTaskContainer:](v29, "setIsTaskContainer:", [v4 isTaskContainer]);
  }

  if (v311 != -[NSObject isEditable](v29, "isEditable") && ([v4 isSubscribed] & 1) == 0)
  {
    [v29 setIsEditable:v311];
  }

  if (v310 != [v29 isRenameable])
  {
    [v29 setIsRenameable:?];
  }

  v190 = [v29 bulkRequests];
  v191 = [v4 bulkRequests];
  v192 = v191;
  if (v190 == v191)
  {

LABEL_207:
  }

  else
  {
    v193 = [v29 bulkRequests];
    v194 = [v4 bulkRequests];
    v195 = [v193 isEqualToDictionary:v194];

    if ((v195 & 1) == 0)
    {
      v190 = [v4 bulkRequests];
      [v29 setBulkRequests:v190];
      goto LABEL_207;
    }
  }

  v196 = [v4 containerTitle];
  if (![v196 length])
  {

    goto LABEL_213;
  }

  v197 = [v4 containerTitle];
  v198 = [v29 title];
  v192 = v198;
  if (v197 == v198)
  {

LABEL_227:
    goto LABEL_228;
  }

  v199 = [v4 containerTitle];
  v200 = [v29 title];
  v201 = [v199 isEqualToString:v200];

  if ((v201 & 1) == 0)
  {
LABEL_213:
    v202 = [v29 wasModifiedLocally];
    if ((v202 & 1) == 0)
    {
      v192 = [v4 containerTitle];
      if ([v192 length])
      {

LABEL_226:
        v196 = [v4 containerTitle];
        [v29 setTitle:v196];
        goto LABEL_227;
      }
    }

    if (v312 && ([v4 isCalendar] & 1) == 0)
    {
      v203 = [v4 isSubscribed];
      if (v202)
      {
LABEL_219:
        if (!v203)
        {
          goto LABEL_226;
        }

LABEL_220:
        v204 = [v29 title];

        if (!v204)
        {
          v205 = [v4 url];
          v206 = [v205 lastPathComponent];
          v207 = [v206 stringByURLUnquoting];
          [v29 setTitle:v207];
        }

        v208 = [v29 title];
        v209 = [v4 url];
        v196 = [(CalDAVCalendarPropertyRefreshOperation *)val _getSetPropertyStringTask:v208 forName:*MEMORY[0x277CFDF00] andNamespace:*MEMORY[0x277CFDEF8] forCalendar:v29 atURL:v209 ignoreErrors:v204 == 0];

        v210 = [(CoreDAVTaskGroup *)val outstandingTasks];
        [v210 addObject:v196];

        v211 = [(CoreDAVTaskGroup *)val taskManager];
        [v211 submitQueuedCoreDAVTask:v196];

        goto LABEL_227;
      }
    }

    else
    {
      v203 = v312;
      if (v202)
      {
        goto LABEL_219;
      }
    }

    if ((v203 & 1) == 0)
    {
      goto LABEL_226;
    }

    goto LABEL_220;
  }

LABEL_228:
  v212 = [v4 calendarDescription];
  v213 = [v212 length];
  if (v213)
  {
    v214 = 0;
    goto LABEL_230;
  }

  v316 = [v29 notes];
  if (v316)
  {
    v314 = [v29 notes];
    if ([v314 length])
    {

      goto LABEL_242;
    }

    v214 = 1;
  }

  else
  {
    v316 = 0;
    v214 = 0;
  }

LABEL_230:
  v215 = [v4 calendarDescription];
  v216 = [v29 notes];
  if (v215 == v216)
  {
    v220 = 0;
  }

  else
  {
    v217 = [v4 calendarDescription];
    v218 = [v29 notes];
    v219 = [v217 isEqualToString:v218];

    v220 = v219 ^ 1;
  }

  if (v214)
  {

    if (!v213)
    {
      goto LABEL_238;
    }

LABEL_241:

    if (v220)
    {
      goto LABEL_242;
    }
  }

  else
  {
    if (v213)
    {
      goto LABEL_241;
    }

LABEL_238:

    if (v220)
    {
LABEL_242:
      if (([v29 wasModifiedLocally]& v312) == 1)
      {
        v221 = [v29 notes];
        v222 = [v4 url];
        v223 = [(CalDAVCalendarPropertyRefreshOperation *)val _getSetPropertyStringTask:v221 forName:*MEMORY[0x277CFDDE0] andNamespace:*MEMORY[0x277CFDDC0] forCalendar:v29 atURL:v222];

        v224 = [(CoreDAVTaskGroup *)val outstandingTasks];
        [v224 addObject:v223];

        v225 = [(CoreDAVTaskGroup *)val taskManager];
        [v225 submitQueuedCoreDAVTask:v223];
      }

      else
      {
        v223 = [v4 calendarDescription];
        [v29 setNotes:v223];
      }
    }
  }

  v226 = MEMORY[0x277D7F0D8];
  v227 = [v29 color];
  v228 = [v4 calendarColor];
  v229 = [v29 symbolicColorName];
  v230 = [v4 symbolicColorName];
  LODWORD(v226) = [v226 colorDetailsAreEffectivelyDifferentFirstColor:v227 secondColor:v228 firstSymbolicName:v229 secondSymbolicName:v230];

  v231 = [v4 calendarColor];
  LODWORD(v230) = [v231 length] == 0;

  if (((v230 | v226) & 1) == 0)
  {
    goto LABEL_256;
  }

  v232 = [v29 wasModifiedLocally];
  if ((v232 & 1) == 0)
  {
    v231 = [v4 calendarColor];
    if ([v231 length])
    {
      goto LABEL_253;
    }
  }

  v233 = [v29 color];
  v234 = v233;
  if (((v233 != 0) & v312) != 1)
  {

    if (v232)
    {
      goto LABEL_254;
    }

LABEL_253:

    goto LABEL_254;
  }

  if ([v4 isCalendar])
  {
    v235 = 1;
  }

  else
  {
    v235 = [v4 isSubscribed];
  }

  if ((v232 & 1) == 0)
  {

    if (v235)
    {
      goto LABEL_323;
    }

    goto LABEL_254;
  }

  if (!v235)
  {
LABEL_254:
    v236 = [v4 calendarColor];
    [v29 setColor:v236];

    v237 = [v4 symbolicColorName];
    [v29 setSymbolicColorName:v237];
    goto LABEL_255;
  }

LABEL_323:
  v295 = [v29 color];

  if (v295)
  {
    v296 = objc_alloc_init(CalDAVCalendarColorItem);
    v297 = [v29 color];
    [(CalDAVCalendarColorItem *)v296 setColorString:v297];

    v237 = [MEMORY[0x277CBEB98] setWithObject:v296];
    v298 = [v29 symbolicColorName];

    if (v298)
    {
      v299 = [v29 symbolicColorName];
      [(CalDAVCalendarColorItem *)v296 setSymbolicColorName:v299];

      v300 = objc_alloc_init(CalDAVCalendarColorItem);
      v301 = [v29 color];
      [(CalDAVCalendarColorItem *)v300 setColorString:v301];

      v302 = [MEMORY[0x277CBEB98] setWithObject:v300];
    }

    else
    {
      v302 = 0;
    }
  }

  else
  {
    v237 = 0;
    v302 = 0;
  }

  v303 = [CalDAVPropPatchWithFallbackTaskGroup alloc];
  v304 = [(CoreDAVTaskGroup *)val accountInfoProvider];
  v305 = [(CoreDAVTaskGroup *)val taskManager];
  v306 = [v4 url];
  v307 = [(CalDAVPropPatchWithFallbackTaskGroup *)v303 initWithAccountInfoProvider:v304 taskManager:v305 primaryPropertiesToSet:v237 fallbackPropertiesToSet:v302 atURL:v306];

  objc_initWeak(buf, val);
  objc_initWeak(&location, v307);
  v308 = [(CalDAVCalendarPropertyRefreshOperation *)val outstandingTasksGroup];
  dispatch_group_enter(v308);

  v322[0] = MEMORY[0x277D85DD0];
  v322[1] = 3221225472;
  v322[2] = __67__CalDAVCalendarPropertyRefreshOperation__handleUpdateForCalendar___block_invoke;
  v322[3] = &unk_278D66B18;
  objc_copyWeak(&v324, buf);
  objc_copyWeak(&v325, &location);
  v323 = v29;
  [(CoreDAVTaskGroup *)v307 setCompletionBlock:v322];
  v309 = [(CalDAVOperation *)val outstandingTaskGroups];
  [v309 addObject:v307];

  [(CalDAVPropPatchWithFallbackTaskGroup *)v307 startTaskGroup];
  objc_destroyWeak(&v325);
  objc_destroyWeak(&v324);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

LABEL_255:
LABEL_256:
  v238 = [v4 calendarOrder];
  if (v238)
  {
    v239 = [v4 calendarOrder];
    v240 = [v239 intValue];
  }

  else
  {
    v240 = -1;
  }

  if (v240 != [v29 order])
  {
    if (([v29 wasModifiedLocally]& 1) != 0)
    {
      if (!v312)
      {
        goto LABEL_278;
      }

LABEL_267:
      if ((-[NSObject order](v29, "order") & 0x80000000) != 0 || !-[NSObject order](v29, "order") && ([v4 calendarOrder], v242 = objc_claimAutoreleasedReturnValue(), v243 = v242 == 0, v242, v243))
      {
        ++val->_nextCalendarOrder;
        [v29 setOrder:?];
      }

      v244 = [v4 calendarOrder];

      if (!v244)
      {
        v245 = [MEMORY[0x277CFDC18] sharedLogging];
        v246 = objc_loadWeakRetained((&val->super.super.super.isa + *MEMORY[0x277CFDD48]));
        v247 = [v245 logHandleForAccountInfoProvider:v246];

        if (v247)
        {
          v248 = v247;
          if (os_log_type_enabled(v248, OS_LOG_TYPE_ERROR))
          {
            v249 = [v29 title];
            v250 = [v29 order];
            *buf = 138412546;
            v332 = v249;
            v333 = 1024;
            LODWORD(v334) = v250;
            _os_log_impl(&dword_242742000, v248, OS_LOG_TYPE_ERROR, "Calendar %@ did not have a calendar-order set so we will try to set it to %d", buf, 0x12u);
          }
        }
      }

      v251 = v244 == 0;
      v252 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", -[NSObject order](v29, "order")];
      v253 = [v4 url];
      v254 = [(CalDAVCalendarPropertyRefreshOperation *)val _getSetPropertyStringTask:v252 forName:*MEMORY[0x277CFDDF0] andNamespace:*MEMORY[0x277CFE050] forCalendar:v29 atURL:v253 ignoreErrors:v251];

      v255 = [(CoreDAVTaskGroup *)val outstandingTasks];
      [v255 addObject:v254];

      v256 = [(CoreDAVTaskGroup *)val taskManager];
      [v256 submitQueuedCoreDAVTask:v254];

LABEL_280:
    }

    else
    {
      v241 = [v4 calendarOrder];
      if (v241)
      {

        goto LABEL_278;
      }

      if (v312)
      {
        goto LABEL_267;
      }

LABEL_278:
      if (([v29 isScheduleInbox]& 1) == 0)
      {
        v252 = [v4 calendarOrder];
        -[NSObject setOrder:](v29, "setOrder:", [v252 intValue]);
        goto LABEL_280;
      }
    }
  }

  [v29 setSharingStatus:[(CalDAVCalendarPropertyRefreshOperation *)val _sharingStatusForContainer:v4]];
  v257 = [v4 sharees];
  [v29 setSharees:v257];

  v258 = [v4 publishURL];
  v259 = [v29 publishURL];
  v260 = v259;
  if (v258 == v259)
  {

LABEL_285:
  }

  else
  {
    v261 = [v4 publishURL];
    v262 = [v29 publishURL];
    v263 = [v261 absoluteURLisEqual:v262];

    if ((v263 & 1) == 0)
    {
      v258 = [v4 publishURL];
      [v29 setPublishURL:v258];
      goto LABEL_285;
    }
  }

  v264 = [v4 publishURL];
  [v29 setIsPublished:v264 != 0];

  v265 = [v4 prePublishURL];
  [v29 setPrePublishURL:v265];

  v266 = [v315 isMergeSync];
  v267 = [v4 owner];
  v268 = [v29 owner];
  v269 = v268;
  if (v267 == v268)
  {

    if (!v266)
    {
      goto LABEL_298;
    }
  }

  else
  {
    v270 = [v4 owner];
    v271 = [v29 owner];
    if (([v270 absoluteURLisEqual:v271] & 1) == 0)
    {
      v272 = [v4 owner];
      v273 = [v29 hasCalendarUserAddressEquivalentToURL:v272];

      LOBYTE(v266) = v273 ^ 1 | v266;
    }

    if ((v266 & 1) == 0)
    {
      goto LABEL_298;
    }
  }

  v274 = [v4 owner];
  if (!v274)
  {
    goto LABEL_298;
  }

  v275 = [v4 owner];
  v276 = [v315 principalURL];
  v277 = v276;
  if (v275 == v276)
  {
  }

  else
  {
    v278 = [v4 owner];
    v279 = [v315 principalURL];
    v280 = [v278 absoluteURLisEqual:v279];

    if (v280)
    {
      goto LABEL_298;
    }

    v281 = [CalDAVGetPrincipalEmailDetailsTaskGroup alloc];
    v282 = [(CoreDAVTaskGroup *)val accountInfoProvider];
    v283 = [v4 owner];
    v284 = [(CoreDAVTaskGroup *)val taskManager];
    v274 = [(CalDAVGetPrincipalEmailDetailsTaskGroup *)v281 initWithAccountInfoProvider:v282 principalURL:v283 taskManager:v284];

    [(CoreDAVTaskGroup *)v274 setDelegate:val];
    objc_initWeak(buf, val);
    objc_initWeak(&location, v274);
    v285 = [(CalDAVCalendarPropertyRefreshOperation *)val outstandingTasksGroup];
    dispatch_group_enter(v285);

    v318[0] = MEMORY[0x277D85DD0];
    v318[1] = 3221225472;
    v318[2] = __67__CalDAVCalendarPropertyRefreshOperation__handleUpdateForCalendar___block_invoke_375;
    v318[3] = &unk_278D66B18;
    objc_copyWeak(&v320, buf);
    objc_copyWeak(&v321, &location);
    v319 = v29;
    [(CoreDAVTaskGroup *)v274 setCompletionBlock:v318];
    v286 = [(CalDAVOperation *)val outstandingTaskGroups];
    [v286 addObject:v274];

    [(CalDAVGetPrincipalEmailDetailsTaskGroup *)v274 startTaskGroup];
    objc_destroyWeak(&v321);
    objc_destroyWeak(&v320);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

LABEL_298:
  v287 = [v4 canBePublished];
  if (v287 != [v29 canBePublished])
  {
    -[NSObject setCanBePublished:](v29, "setCanBePublished:", [v4 canBePublished]);
  }

  v288 = [v4 canBeShared];
  if (v288 != [v29 canBeShared])
  {
    -[NSObject setCanBeShared:](v29, "setCanBeShared:", [v4 canBeShared]);
  }

  v289 = [v4 isFamilyCalendar];
  if (v289 != [v29 isFamilyCalendar])
  {
    -[NSObject setIsFamilyCalendar:](v29, "setIsFamilyCalendar:", [v4 isFamilyCalendar]);
  }

  v290 = [v4 isMarkedUndeletable];
  if (v290 != [v29 isMarkedUndeletable])
  {
    -[NSObject setIsMarkedUndeletable:](v29, "setIsMarkedUndeletable:", [v4 isMarkedUndeletable]);
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v291 = [v4 maxAttendees];
    if (v291 != [v29 maxAttendees])
    {
      -[NSObject setMaxAttendees:](v29, "setMaxAttendees:", [v4 maxAttendees]);
    }
  }

  v292 = [v4 isMarkedImmutableSharees];
  if (v292 != [v29 isMarkedImmutableSharees])
  {
    -[NSObject setIsMarkedImmutableSharees:](v29, "setIsMarkedImmutableSharees:", [v4 isMarkedImmutableSharees]);
  }

  if ([v29 isScheduleInbox])
  {
    [(CalDAVCalendarPropertyRefreshOperation *)val _updateDefaultSchedulingCalendarIfNeededForInboxCalendar:v29 withContainer:v4];
  }

  [(NSMutableSet *)val->_updatedCalendars addObject:v29];
  v104 = 1;
LABEL_315:

LABEL_316:
  v293 = *MEMORY[0x277D85DE8];
  return v104;
}

void __67__CalDAVCalendarPropertyRefreshOperation__handleUpdateForCalendar___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  v3 = [v2 error];

  if (v3)
  {
    [WeakRetained setForceClearCalendarHomeSyncToken:1];
  }

  v4 = [WeakRetained delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [WeakRetained delegate];
    v7 = [v2 error];
    [v6 calendarRefreshPropPatchFinishedWithError:v7 forCalendar:*(a1 + 32)];
  }

  v8 = [WeakRetained outstandingTaskGroups];
  v9 = objc_loadWeakRetained((a1 + 48));
  [v8 removeObject:v9];

  v10 = [WeakRetained outstandingTasksGroup];

  if (v10)
  {
    v11 = [WeakRetained outstandingTasksGroup];
    dispatch_group_leave(v11);
  }
}

void __67__CalDAVCalendarPropertyRefreshOperation__handleUpdateForCalendar___block_invoke_375(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (!WeakRetained)
  {
    goto LABEL_13;
  }

  v3 = objc_loadWeakRetained(a1 + 6);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 error];

    if (v5)
    {
      v6 = [MEMORY[0x277CFDC18] sharedLogging];
      v7 = objc_loadWeakRetained(&WeakRetained[*MEMORY[0x277CFDD48]]);
      v8 = [v6 logHandleForAccountInfoProvider:v7];

      if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v22 = 0;
        _os_log_impl(&dword_242742000, v8, OS_LOG_TYPE_INFO, "principalEmailDetailsTask encountered an error; not saving details to calendar", v22, 2u);
      }

      goto LABEL_9;
    }
  }

  v9 = objc_loadWeakRetained(a1 + 6);
  v10 = [v9 displayName];
  [a1[4] setOwnerDisplayName:v10];

  v11 = objc_loadWeakRetained(a1 + 6);
  v12 = [v11 principalResult];
  v13 = [v12 preferredAddresses];
  [a1[4] setPreferredCalendarUserAddresses:v13];

  v14 = objc_loadWeakRetained(a1 + 6);
  v15 = [v14 principalResult];
  v16 = [v15 preferredAddresses];
  v17 = [CalDAVCalendarUserAddress preferredAddress:v16];

  v18 = [MEMORY[0x277CBEBC0] URLWithString:v17];
  [a1[4] setOwner:v18];

  if (v4)
  {
LABEL_9:
    v19 = [WeakRetained outstandingTaskGroups];
    [v19 removeObject:v4];
  }

  v20 = [WeakRetained outstandingTasksGroup];

  if (v20)
  {
    v21 = [WeakRetained outstandingTasksGroup];
    dispatch_group_leave(v21);
  }

LABEL_13:
}

- (void)_updateDefaultSchedulingCalendarIfNeededForInboxCalendar:(id)a3 withContainer:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = [v6 principal];
  v9 = [v8 calendars];

  v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        if (([v14 isScheduleInbox] & 1) == 0 && (objc_msgSend(v14, "isScheduleOutbox") & 1) == 0 && (objc_msgSend(v14, "isNotification") & 1) == 0 && (objc_msgSend(v14, "isSubscribed") & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v14, "becameDefaultSchedulingCalendar"))
        {
          v15 = [v14 calendarURL];
          v16 = [v15 relativePath];
          v17 = [v16 CDVStringByAppendingSlashIfNeeded];

          if (v15)
          {
            v18 = objc_alloc(MEMORY[0x277CFDBE0]);
            v19 = [v18 initWithNameSpace:*MEMORY[0x277CFDDC0] andName:*MEMORY[0x277CFE000]];
            v20 = objc_alloc(MEMORY[0x277CFDBE0]);
            v21 = [v20 initWithNameSpace:*MEMORY[0x277CFDEF8] andName:*MEMORY[0x277CFDF38]];
            [v21 setPayloadAsString:v17];
            v22 = [v19 extraChildItems];
            [v22 addObject:v21];

            v23 = [v7 url];
            v24 = [(CalDAVCalendarPropertyRefreshOperation *)self _getSetPropertyTaskWithCoreDAVItem:v19 forCalendar:v6 atURL:v23];

            v25 = [(CoreDAVTaskGroup *)self outstandingTasks];
            [v25 addObject:v24];

            v26 = [(CoreDAVTaskGroup *)self taskManager];
            [v26 submitQueuedCoreDAVTask:v24];

            v27 = [v6 principal];
            [v27 setDefaultCalendarURL:v15];
          }

          goto LABEL_18;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_continueHandleContainerInfoTask:(id)a3 completedWithContainers:(id)a4 error:(id)a5
{
  v103 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(CalDAVOperation *)self principal];
  [(CalDAVCalendarPropertyRefreshOperation *)self _initializePrincipalCalendarCache];
  v10 = [MEMORY[0x277CFDC18] sharedLogging];
  v70 = *MEMORY[0x277CFDD48];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + v70));
  v12 = [v10 logHandleForAccountInfoProvider:WeakRetained];

  if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    pathToLocalCalendar = self->_pathToLocalCalendar;
    localCalendarsWithNoPath = self->_localCalendarsWithNoPath;
    *buf = 138412546;
    v100 = pathToLocalCalendar;
    v101 = 2112;
    v102 = localCalendarsWithNoPath;
    _os_log_impl(&dword_242742000, v12, OS_LOG_TYPE_INFO, "Syncing calendar collections. Local calendars are: %@. Local calendars with no paths are: %@", buf, 0x16u);
  }

  v15 = [v9 inboxURL];
  v16 = 0;
  if ([v9 isWritable])
  {
    if (v15)
    {
      v16 = [v7 containerForURL:v15];
      v17 = [v16 scheduleDefaultCalendarURL];

      if (v17)
      {
        v18 = [v16 scheduleDefaultCalendarURL];
        [v9 setDefaultCalendarURL:v18];
      }
    }
  }

  v74 = v16;
  v75 = v15;
  [v9 outboxURL];
  v73 = v76 = v7;
  v72 = [v7 containerForURL:?];
  v77 = v9;
  [v9 setSupportsFreebusy:{objc_msgSend(v72, "supportsFreebusy")}];
  v19 = [MEMORY[0x277CBEB58] set];
  v20 = [(CalDAVOperation *)self principal];
  v21 = [v20 deletedCalendarURLs];
  [v19 unionSet:v21];

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v8;
  v22 = [obj countByEnumeratingWithState:&v91 objects:v98 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v92;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v92 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v91 + 1) + 8 * i);
        v27 = [v26 url];
        v28 = [v27 absoluteString];
        v29 = [v19 containsObject:v28];

        if ((v29 & 1) == 0)
        {
          v30 = [v26 url];
          v31 = [v30 absoluteString];
          [v19 addObject:v31];

          if ([(CalDAVCalendarPropertyRefreshOperation *)self _handleUpdateForCalendar:v26])
          {
            v32 = self->_pathToLocalCalendar;
            v33 = [v26 url];
            v34 = [v33 absoluteString];
            v35 = [v34 appendSlashIfNeeded];
            [(NSMutableDictionary *)v32 removeObjectForKey:v35];
          }
        }
      }

      v23 = [obj countByEnumeratingWithState:&v91 objects:v98 count:16];
    }

    while (v23);
  }

  v36 = v77;
  if (!self->_isSecondRefresh)
  {
    if ([(NSMutableSet *)self->_localCalendarsWithNoPath count])
    {
      v37 = [MEMORY[0x277CFDC18] sharedLogging];
      v38 = objc_loadWeakRetained((&self->super.super.super.isa + v71));
      v39 = [v37 logHandleForAccountInfoProvider:v38];

      if (v39)
      {
        v40 = v39;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = [(NSMutableSet *)self->_localCalendarsWithNoPath count];
          v42 = self->_localCalendarsWithNoPath;
          *buf = 134218242;
          v100 = v41;
          v101 = 2112;
          v102 = v42;
          _os_log_impl(&dword_242742000, v40, OS_LOG_TYPE_INFO, "Found %lu calendars with no paths. Sending these calendars to the server: %@", buf, 0x16u);
        }
      }
    }

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v43 = self->_localCalendarsWithNoPath;
    v44 = [(NSMutableSet *)v43 countByEnumeratingWithState:&v87 objects:v97 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v88;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v88 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v87 + 1) + 8 * j);
          if (([v48 order] & 0x80000000) != 0)
          {
            ++self->_nextCalendarOrder;
            [v48 setOrder:?];
          }

          v49 = [(CalDAVCalendarPropertyRefreshOperation *)self _getMkcalendarTaskGroupForCalendar:v48];
          v50 = [(CalDAVOperation *)self outstandingTaskGroups];
          [v50 addObject:v49];

          [v49 startTaskGroup];
        }

        v45 = [(NSMutableSet *)v43 countByEnumeratingWithState:&v87 objects:v97 count:16];
      }

      while (v45);
    }

    v36 = v77;
    v51 = [v77 isMergeSync];
    v52 = [MEMORY[0x277CFDC18] sharedLogging];
    v53 = objc_loadWeakRetained((&self->super.super.super.isa + v71));
    v54 = [v52 logHandleForAccountInfoProvider:v53];

    if (v51)
    {
      if (v54 && os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v55 = self->_pathToLocalCalendar;
        *buf = 138412290;
        v100 = v55;
        _os_log_impl(&dword_242742000, v54, OS_LOG_TYPE_INFO, "Since this is a merge sync, we're going to upload all the calendars that didn't exist on the server: %@", buf, 0xCu);
      }

      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v56 = [(NSMutableDictionary *)self->_pathToLocalCalendar allValues];
      v57 = [v56 countByEnumeratingWithState:&v83 objects:v96 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v84;
        do
        {
          for (k = 0; k != v58; ++k)
          {
            if (*v84 != v59)
            {
              objc_enumerationMutation(v56);
            }

            v61 = *(*(&v83 + 1) + 8 * k);
            if (([v61 order] & 0x80000000) != 0)
            {
              ++self->_nextCalendarOrder;
              [v61 setOrder:?];
            }

            v62 = [(CalDAVCalendarPropertyRefreshOperation *)self _getMkcalendarTaskGroupForCalendar:v61];
            v63 = [(CalDAVOperation *)self outstandingTaskGroups];
            [v63 addObject:v62];

            [v62 startTaskGroup];
          }

          v58 = [v56 countByEnumeratingWithState:&v83 objects:v96 count:16];
        }

        while (v58);
        v36 = v77;
      }
    }

    else
    {
      if (v54 && os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v64 = self->_pathToLocalCalendar;
        *buf = 138412290;
        v100 = v64;
        _os_log_impl(&dword_242742000, v54, OS_LOG_TYPE_INFO, "Deleting calendars that no longer appear on the server: %@", buf, 0xCu);
      }

      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v56 = [(NSMutableDictionary *)self->_pathToLocalCalendar allValues];
      v65 = [v56 countByEnumeratingWithState:&v79 objects:v95 count:16];
      if (v65)
      {
        v66 = v65;
        v67 = *v80;
        do
        {
          for (m = 0; m != v66; ++m)
          {
            if (*v80 != v67)
            {
              objc_enumerationMutation(v56);
            }

            [v77 removeCalendar:*(*(&v79 + 1) + 8 * m)];
          }

          v66 = [v56 countByEnumeratingWithState:&v79 objects:v95 count:16];
        }

        while (v66);
      }
    }

    [(CalDAVCalendarPropertyRefreshOperation *)self _getDefaultCalendarsTasksIfNeededForPrincipal:v36];
  }

  v69 = *MEMORY[0x277D85DE8];
}

- (void)_getDefaultCalendarsTasksIfNeededForPrincipal:(id)a3
{
  v4 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v5 = [v4 calendars];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__CalDAVCalendarPropertyRefreshOperation__getDefaultCalendarsTasksIfNeededForPrincipal___block_invoke;
  v17[3] = &unk_278D66B68;
  v17[4] = &v22;
  v17[5] = &v18;
  [v5 enumerateObjectsUsingBlock:v17];

  if ([v4 isEnabledForEvents] && (v23[3] & 1) == 0)
  {
    v6 = [MEMORY[0x277CFDC18] sharedLogging];
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
    v8 = [v6 logHandleForAccountInfoProvider:WeakRetained];

    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_242742000, v8, OS_LOG_TYPE_DEFAULT, "This account is enabled for events, but has no event calendar. We're going to create a default one", v16, 2u);
    }

    v9 = [(CalDAVCalendarPropertyRefreshOperation *)self _getDefaultMkCalendarForPrincipalTaskGroup:v4 isEventCalendar:1];
    v10 = [(CalDAVOperation *)self outstandingTaskGroups];
    [v10 addObject:v9];

    [v9 startTaskGroup];
  }

  if ([v4 isEnabledForTodos] && (v19[3] & 1) == 0)
  {
    v11 = [MEMORY[0x277CFDC18] sharedLogging];
    v12 = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
    v13 = [v11 logHandleForAccountInfoProvider:v12];

    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_242742000, v13, OS_LOG_TYPE_DEFAULT, "This account is enabled for tasks, but has no task calendar. We're going to create a default one", v16, 2u);
    }

    v14 = [(CalDAVCalendarPropertyRefreshOperation *)self _getDefaultMkCalendarForPrincipalTaskGroup:v4 isEventCalendar:0];
    v15 = [(CalDAVOperation *)self outstandingTaskGroups];
    [v15 addObject:v14];

    [v14 startTaskGroup];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
}

uint64_t __88__CalDAVCalendarPropertyRefreshOperation__getDefaultCalendarsTasksIfNeededForPrincipal___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  if (([v7 isSubscribed] & 1) == 0 && (objc_msgSend(v7, "isScheduleInbox") & 1) == 0 && (objc_msgSend(v7, "isScheduleOutbox") & 1) == 0 && (objc_msgSend(v7, "isNotification") & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) |= [v7 isEventContainer];
    *(*(*(a1 + 40) + 8) + 24) |= [v7 isTaskContainer];
    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      v5 = *(*(*(a1 + 40) + 8) + 24);
    }

    else
    {
      v5 = 0;
    }

    *a3 = v5 & 1;
  }

  return MEMORY[0x2821F96F8]();
}

- (void)containerInfoTask:(id)a3 completedWithContainers:(id)a4 error:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v9;
  v13 = [(CalDAVOperation *)self principal];
  v14 = v13;
  if (v11)
  {
    objc_storeStrong(&self->_savedError, a5);
    v15 = [MEMORY[0x277CFDC18] sharedLogging];
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
    v17 = [v15 logHandleForAccountInfoProvider:WeakRetained];

    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v11;
      _os_log_impl(&dword_242742000, v17, OS_LOG_TYPE_ERROR, "Encountered an error while getting calendar info: %@", buf, 0xCu);
    }

LABEL_19:
    goto LABEL_20;
  }

  if (!self->_isSecondRefresh)
  {
    v18 = [v13 calendarHomeURL];
    v15 = [v12 containerForURL:v18];

    if (v15)
    {
      v19 = [v15 pushTransports];
      [v14 setPushTransports:v19];

      v20 = [v15 pushKey];
      [v14 setCalendarHomePushKey:v20];

      v21 = MEMORY[0x277CCABB0];
      v22 = [v15 quotaAvailable];
      v23 = [v21 numberWithInteger:{objc_msgSend(v22, "intValue")}];
      [v14 setQuotaFreeBytes:v23];

      v24 = [v15 privileges];
      if ([v24 count])
      {
        v25 = [v15 hasBindPrivileges];
      }

      else
      {
        v25 = 1;
      }

      [v14 setCanCreateCalendars:v25];

      v30 = [v15 syncToken];
      [(CalDAVCalendarPropertyRefreshOperation *)self setCalendarHomeSyncToken:v30];

      v26 = [v15 supportedCalendarComponentSets];
      [v14 setSupportedCalendarComponentSets:v26];
    }

    else
    {
      v26 = [MEMORY[0x277CFDC18] sharedLogging];
      v27 = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
      v28 = [v26 logHandleForAccountInfoProvider:v27];

      if (v28)
      {
        v29 = v28;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [v14 calendarHomeURL];
          *buf = 138412290;
          v36 = v33;
          _os_log_impl(&dword_242742000, v29, OS_LOG_TYPE_DEFAULT, "Didn't find a home container for the principal at %@", buf, 0xCu);
        }
      }
    }

    [(CalDAVCalendarPropertyRefreshOperation *)self _continueHandleContainerInfoTask:v12 completedWithContainers:v10 error:0];
    goto LABEL_19;
  }

  [(CalDAVCalendarPropertyRefreshOperation *)self _continueHandleContainerInfoTask:v12 completedWithContainers:v10 error:0];
LABEL_20:
  outstandingTasksGroup = self->_outstandingTasksGroup;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__CalDAVCalendarPropertyRefreshOperation_containerInfoTask_completedWithContainers_error___block_invoke;
  block[3] = &unk_278D66A78;
  block[4] = self;
  block[5] = a2;
  dispatch_group_notify(outstandingTasksGroup, MEMORY[0x277D85CD0], block);

  v32 = *MEMORY[0x277D85DE8];
}

id __90__CalDAVCalendarPropertyRefreshOperation_containerInfoTask_completedWithContainers_error___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) outstandingTasks];
  v3 = [v2 count];

  if (v3)
  {
    __90__CalDAVCalendarPropertyRefreshOperation_containerInfoTask_completedWithContainers_error___block_invoke_cold_1();
  }

  v4 = [*v1 outstandingTaskGroups];
  v5 = [v4 count];

  if (v5)
  {
    __90__CalDAVCalendarPropertyRefreshOperation_containerInfoTask_completedWithContainers_error___block_invoke_cold_2();
  }

  result = *v1;
  if ((*(*v1 + *MEMORY[0x277CFDD50]) & 1) == 0)
  {

    return [result _finishRefresh];
  }

  return result;
}

- (void)containerInfoSyncTask:(id)a3 retrievedAddedOrModifiedContainers:(id)a4 removedContainerURLs:(id)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v44 = a5;
  v8 = [(CalDAVOperation *)self principal];
  v9 = [v8 calendarHomeURL];
  v10 = [v9 absoluteString];
  v11 = [v10 appendSlashIfNeeded];

  v12 = v11;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v7;
  v45 = v11;
  v48 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v48)
  {
    v13 = *v54;
    v46 = *v54;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v54 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v53 + 1) + 8 * i);
        v16 = [v15 url];
        v17 = [v16 absoluteString];
        v18 = [v17 appendSlashIfNeeded];

        if ([v18 isEqualToString:v12])
        {
          v19 = [MEMORY[0x277CFDC18] sharedLogging];
          v20 = *MEMORY[0x277CFDD48];
          WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + v20));
          v22 = [v19 logHandleForAccountInfoProvider:WeakRetained];

          if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v59 = v18;
            _os_log_impl(&dword_242742000, v22, OS_LOG_TYPE_INFO, "Modified Calendar Found in Report Is 'Calendar Home Collection' : %@", buf, 0xCu);
          }

          v23 = [v15 pushTransports];

          if (v23)
          {
            v24 = [MEMORY[0x277CFDC18] sharedLogging];
            v25 = objc_loadWeakRetained((&self->super.super.super.isa + v20));
            v26 = [v24 logHandleForAccountInfoProvider:v25];

            if (v26)
            {
              v27 = v26;
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                v28 = [(CalDAVOperation *)self principal];
                v29 = [v28 pushTransports];
                v30 = [v15 pushTransports];
                *buf = 138412546;
                v59 = v29;
                v60 = 2112;
                v61 = v30;
                _os_log_impl(&dword_242742000, v27, OS_LOG_TYPE_INFO, "Updating Push-transports for 'Calendar Home Collection' From {\n%@\n} To: {\n%@\n}", buf, 0x16u);

                v12 = v45;
              }
            }

            v31 = [v15 pushTransports];
            v32 = [(CalDAVOperation *)self principal];
            [v32 setPushTransports:v31];

            v13 = v46;
          }
        }

        [(CalDAVCalendarPropertyRefreshOperation *)self _handleUpdateForCalendar:v15];
      }

      v48 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
    }

    while (v48);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v33 = v44;
  v34 = [v33 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v50;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v50 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v49 + 1) + 8 * j);
        v39 = [(CoreDAVTaskGroup *)self delegate];
        v40 = objc_opt_respondsToSelector();

        if (v40)
        {
          v41 = [(CoreDAVTaskGroup *)self delegate];
          [v41 calendarRefreshFoundDeletedContainerURL:v38];
        }

        v42 = [(CalDAVOperation *)self principal];
        [v42 removecalendarWithURL:v38];
      }

      v35 = [v33 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v35);
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)containerInfoSyncTask:(id)a3 completedWithNewSyncToken:(id)a4 error:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10 || ![v9 length])
  {
    v11 = [MEMORY[0x277CFDC18] sharedLogging];
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
    v13 = [v11 logHandleForAccountInfoProvider:WeakRetained];

    if (v13)
    {
      v14 = v13;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(CalDAVOperation *)self principal];
        v16 = [v15 calendarHomeURL];
        *buf = 138412802;
        v25 = v16;
        v26 = 2112;
        v27 = v9;
        v28 = 2112;
        v29 = v10;
        _os_log_impl(&dword_242742000, v14, OS_LOG_TYPE_DEFAULT, "Sync report against %@ failed with error %@ or no sync token %@. Retrying sync with a PROPFIND", buf, 0x20u);
      }
    }

    v17 = [(CalDAVOperation *)self principal];
    [v17 setCalendarHomeSyncToken:0];

    outstandingTasksGroup = self->_outstandingTasksGroup;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __96__CalDAVCalendarPropertyRefreshOperation_containerInfoSyncTask_completedWithNewSyncToken_error___block_invoke_395;
    v22[3] = &unk_278D66940;
    v22[4] = self;
    v19 = MEMORY[0x277D85CD0];
    v20 = v22;
  }

  else
  {
    [(CalDAVCalendarPropertyRefreshOperation *)self setCalendarHomeSyncToken:v9];
    outstandingTasksGroup = self->_outstandingTasksGroup;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __96__CalDAVCalendarPropertyRefreshOperation_containerInfoSyncTask_completedWithNewSyncToken_error___block_invoke;
    block[3] = &unk_278D66940;
    block[4] = self;
    v19 = MEMORY[0x277D85CD0];
    v20 = block;
  }

  dispatch_group_notify(outstandingTasksGroup, v19, v20);

  v21 = *MEMORY[0x277D85DE8];
}

void *__96__CalDAVCalendarPropertyRefreshOperation_containerInfoSyncTask_completedWithNewSyncToken_error___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((*(result + *MEMORY[0x277CFDD50]) & 1) == 0)
  {
    return [result _finishRefresh];
  }

  return result;
}

void *__96__CalDAVCalendarPropertyRefreshOperation_containerInfoSyncTask_completedWithNewSyncToken_error___block_invoke_395(uint64_t a1)
{
  result = *(a1 + 32);
  if ((*(result + *MEMORY[0x277CFDD50]) & 1) == 0)
  {
    return [result _reallyRefreshCalendarProperties];
  }

  return result;
}

void __66__CalDAVCalendarPropertyRefreshOperation__sendDeletesForCalendars__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __66__CalDAVCalendarPropertyRefreshOperation__sendDeletesForCalendars__block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __63__CalDAVCalendarPropertyRefreshOperation__sendAddsForCalendars__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __63__CalDAVCalendarPropertyRefreshOperation__sendAddsForCalendars__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __64__CalDAVCalendarPropertyRefreshOperation__handleCalendarPublish__block_invoke_32_cold_1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __64__CalDAVCalendarPropertyRefreshOperation__handleCalendarPublish__block_invoke_32_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __72__CalDAVCalendarPropertyRefreshOperation__prepareCalendarsBeforeRefresh__block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"CalDAVCalendarPropertyRefreshOperation.m" lineNumber:240 description:@"prepareCalendarsForSyncWithCompletionBlock should only get called back once"];

  *a3 = *(*a2 + 8);
}

void __67__CalDAVCalendarPropertyRefreshOperation_refreshCalendarProperties__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __67__CalDAVCalendarPropertyRefreshOperation_refreshCalendarProperties__block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __90__CalDAVCalendarPropertyRefreshOperation_containerInfoTask_completedWithContainers_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __90__CalDAVCalendarPropertyRefreshOperation_containerInfoTask_completedWithContainers_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end