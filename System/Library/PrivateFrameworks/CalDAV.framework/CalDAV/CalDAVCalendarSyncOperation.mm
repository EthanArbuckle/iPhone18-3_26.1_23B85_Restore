@interface CalDAVCalendarSyncOperation
- (BOOL)setLocalETag:(id)tag forItemWithURL:(id)l inFolderWithURL:(id)rL;
- (BOOL)setLocalScheduleTag:(id)tag forItemWithURL:(id)l inFolderWithURL:(id)rL;
- (BOOL)syncDeleteTask:(id)task error:(id)error;
- (BOOL)syncPutTask:(id)task completedWithNewETag:(id)tag error:(id)error;
- (CalDAVCalendarSyncOperation)initWithPrincipal:(id)principal calendar:(id)calendar nextCtag:(id)ctag nextSyncToken:(id)token;
- (id)_distantFutureEndDate;
- (id)copyAllLocalURLsInFolderWithURL:(id)l;
- (id)copyLocalETagsForURLs:(id)ls inFolderWithURL:(id)l;
- (void)_advanceStage;
- (void)_finishWithError:(id)error;
- (void)_performNextStage;
- (void)_processAddedOrModified:(id)modified removed:(id)removed;
- (void)_reportJunk:(id)junk;
- (void)_splitRecurrences;
- (void)_syncCalendar;
- (void)_syncEventsForMerge;
- (void)containerSyncTask:(id)task completedWithNewCTag:(id)tag newSyncToken:(id)token addedOrModified:(id)modified removed:(id)removed error:(id)error;
- (void)recurrenceSplitAction:(id)action completedWithUpdatedETag:(id)tag updatedScheduleTag:(id)scheduleTag createdURL:(id)l createdETag:(id)eTag createdScheduleTag:(id)createdScheduleTag;
- (void)recurrenceSplitAction:(id)action failedWithError:(id)error;
- (void)reportJunkAction:(id)action completedWithError:(id)error;
@end

@implementation CalDAVCalendarSyncOperation

- (CalDAVCalendarSyncOperation)initWithPrincipal:(id)principal calendar:(id)calendar nextCtag:(id)ctag nextSyncToken:(id)token
{
  calendarCopy = calendar;
  ctagCopy = ctag;
  tokenCopy = token;
  v17.receiver = self;
  v17.super_class = CalDAVCalendarSyncOperation;
  v14 = [(CalDAVOperation *)&v17 initWithPrincipal:principal];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_calendar, calendar);
    objc_storeStrong(&v15->_nextCtag, ctag);
    objc_storeStrong(&v15->_nextSyncToken, token);
  }

  return v15;
}

- (void)_finishWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    errorCopy = self->_reportJunkError;
  }

  calendar = self->_calendar;
  if (objc_opt_respondsToSelector())
  {
    [(CalDAVCalendar *)self->_calendar syncDidFinishWithError:errorCopy];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__CalDAVCalendarSyncOperation__finishWithError___block_invoke;
  v7[3] = &unk_278D66968;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:v6 delegateCallbackBlock:v7];
}

void __48__CalDAVCalendarSyncOperation__finishWithError___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) principal];
  [v3 calendarSyncForPrincipal:v2 calendar:*(*(a1 + 32) + 136) completedWithError:*(a1 + 40)];
}

- (id)_distantFutureEndDate
{
  if (_distantFutureEndDate_onceToken != -1)
  {
    [CalDAVCalendarSyncOperation _distantFutureEndDate];
  }

  v3 = _distantFutureEndDate_futureEndDate;

  return v3;
}

void __52__CalDAVCalendarSyncOperation__distantFutureEndDate__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEA80]);
  v5 = [v0 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v1 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
  [v5 setTimeZone:v1];

  v2 = [MEMORY[0x277CBEAA8] distantFuture];
  v3 = [v5 components:252 fromDate:v2];
  v4 = _distantFutureEndDate_futureEndDate;
  _distantFutureEndDate_futureEndDate = v3;
}

- (void)_advanceStage
{
  currentStage = self->_currentStage;
  if (currentStage > 1)
  {
    v6 = 4;
    if (currentStage != 3)
    {
      v6 = 0;
    }

    if (currentStage == 2)
    {
      v5 = 3;
    }

    else
    {
      v5 = v6;
    }
  }

  else if (currentStage)
  {
    v4 = currentStage == 1;
    v5 = 2;
    if (!v4)
    {
      v5 = 0;
    }
  }

  else
  {
    mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
    v9 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_242742000, v9, OS_LOG_TYPE_ERROR, "CalendarSyncOperationStageNone is terminal.  Why are we trying to transition out of it?", v10, 2u);
    }

    v5 = 0;
  }

  self->_currentStage = v5;
}

- (void)_performNextStage
{
  [(CalDAVCalendarSyncOperation *)self _advanceStage];
  currentStage = self->_currentStage;
  if (currentStage > 2)
  {
    if (currentStage == 3)
    {
      calendar = self->_calendar;
      if ((objc_opt_respondsToSelector() & 1) != 0 && (-[CalDAVCalendar recurrenceSplitActions](self->_calendar, "recurrenceSplitActions"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 count], v12, v13))
      {

        [(CalDAVCalendarSyncOperation *)self _splitRecurrences];
      }

      else
      {

        [(CalDAVCalendarSyncOperation *)self _performNextStage];
      }
    }

    else if (currentStage == 4)
    {

      [(CalDAVCalendarSyncOperation *)self _syncCalendar];
    }
  }

  else if (currentStage == 1)
  {
    mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
    WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
    v10 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_242742000, v10, OS_LOG_TYPE_ERROR, "CalendarSyncOperationStageBegin is not any stage's next stage.  How did we get here?", buf, 2u);
    }
  }

  else if (currentStage == 2)
  {
    reportJunkError = self->_reportJunkError;
    self->_reportJunkError = 0;

    v5 = self->_calendar;
    v6 = objc_opt_respondsToSelector();
    reportJunkActions = 0;
    if (v6)
    {
      reportJunkActions = [(CalDAVCalendar *)self->_calendar reportJunkActions];
    }

    v14 = reportJunkActions;
    if ([reportJunkActions count])
    {
      [(CalDAVCalendarSyncOperation *)self _reportJunk:v14];
    }

    else
    {
      [(CalDAVCalendarSyncOperation *)self _performNextStage];
    }
  }
}

- (void)_reportJunk:(id)junk
{
  junkCopy = junk;
  v5 = [CalDAVReportJunkTaskGroup alloc];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
  v7 = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD60]));
  v8 = [(CalDAVReportJunkTaskGroup *)v5 initWithReportJunkActions:junkCopy accountInfoProvider:WeakRetained taskManager:v7];

  [(CoreDAVTaskGroup *)v8 setDelegate:self];
  outstandingTaskGroups = [(CalDAVOperation *)self outstandingTaskGroups];
  [outstandingTaskGroups addObject:v8];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v8);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __43__CalDAVCalendarSyncOperation__reportJunk___block_invoke;
  v13 = &unk_278D66918;
  objc_copyWeak(&v14, &location);
  objc_copyWeak(&v15, &from);
  [(CoreDAVTaskGroup *)v8 setCompletionBlock:&v10];
  [(CalDAVReportJunkTaskGroup *)v8 startTaskGroup:v10];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __43__CalDAVCalendarSyncOperation__reportJunk___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [v2 error];
    v4 = WeakRetained[18];
    WeakRetained[18] = v3;

    v5 = [WeakRetained outstandingTaskGroups];
    [v5 removeObject:v2];

    [WeakRetained _performNextStage];
  }
}

- (void)_splitRecurrences
{
  v3 = [CalDAVRecurrenceSplitTaskGroup alloc];
  calendar = self->_calendar;
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
  v6 = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD60]));
  v7 = [(CalDAVRecurrenceSplitTaskGroup *)v3 initWithCalendar:calendar accountInfoProvider:WeakRetained taskManager:v6];

  [(CoreDAVTaskGroup *)v7 setDelegate:self];
  outstandingTaskGroups = [(CalDAVOperation *)self outstandingTaskGroups];
  [outstandingTaskGroups addObject:v7];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v7);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__CalDAVCalendarSyncOperation__splitRecurrences__block_invoke;
  v9[3] = &unk_278D66B18;
  objc_copyWeak(&v10, &location);
  objc_copyWeak(&v11, &from);
  v9[4] = self;
  [(CoreDAVTaskGroup *)v7 setCompletionBlock:v9];
  [(CalDAVRecurrenceSplitTaskGroup *)v7 startTaskGroup];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __48__CalDAVCalendarSyncOperation__splitRecurrences__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [WeakRetained outstandingTaskGroups];
    [v3 removeObject:v2];

    v4 = WeakRetained[17];
    if (objc_opt_respondsToSelector())
    {
      v5 = WeakRetained[17];
      v6 = [v2 error];
      [v5 recurrenceSplitActionsCompletedWithError:v6];
    }

    v7 = [v2 error];

    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = [v2 error];
      [v8 _finishWithError:v9];
    }

    else
    {
      [WeakRetained _performNextStage];
    }
  }
}

- (void)_syncCalendar
{
  v48 = *MEMORY[0x277D85DE8];
  ctag = 120;
  v4 = [(NSString *)self->_nextCtag length];
  if (v4)
  {
    nextCtag = self->_nextCtag;
    ctag = [(CalDAVCalendar *)self->_calendar ctag];
    if ([(NSString *)nextCtag isEqualToString:ctag])
    {
      v6 = 1;
      goto LABEL_6;
    }
  }

  if (![(NSString *)self->_nextSyncToken length])
  {
    v6 = 0;
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = v4 == 0;
  nextSyncToken = self->_nextSyncToken;
  syncToken = [(CalDAVCalendar *)self->_calendar syncToken];
  v6 = [(NSString *)nextSyncToken isEqualToString:syncToken];

  if (!v7)
  {
LABEL_6:
  }

LABEL_7:
  if ((-[CalDAVCalendar needsResync](self->_calendar, "needsResync") & 1) != 0 || !v6 || (-[CalDAVCalendar syncActions](self->_calendar, "syncActions"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, v11))
  {
    principal = [(CalDAVOperation *)self principal];
    if ([principal isEnabledForEvents])
    {
      isEventContainer = [(CalDAVCalendar *)self->_calendar isEventContainer];
    }

    else
    {
      isEventContainer = 0;
    }

    if ([principal isEnabledForTodos])
    {
      isTaskContainer = [(CalDAVCalendar *)self->_calendar isTaskContainer];
    }

    else
    {
      isTaskContainer = 0;
    }

    if ((isEventContainer | isTaskContainer))
    {
      v15 = [CalDAVContainerSyncTaskGroup alloc];
      calendar = self->_calendar;
      taskManager = [(CoreDAVTaskGroup *)self taskManager];
      v18 = [(CalDAVContainerSyncTaskGroup *)v15 initWithCalendar:calendar accountInfoProvider:principal taskManager:taskManager];

      [(CoreDAVTaskGroup *)v18 setDelegate:self];
      outstandingTaskGroups = [(CalDAVOperation *)self outstandingTaskGroups];
      [outstandingTaskGroups addObject:v18];

      objc_initWeak(location, v18);
      objc_initWeak(&from, self);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __44__CalDAVCalendarSyncOperation__syncCalendar__block_invoke;
      v39[3] = &unk_278D66918;
      objc_copyWeak(&v40, &from);
      objc_copyWeak(&v41, location);
      [(CoreDAVTaskGroup *)v18 setCompletionBlock:v39];
      [(CalDAVContainerSyncTaskGroup *)v18 setSyncEvents:isEventContainer];
      [(CalDAVContainerSyncTaskGroup *)v18 setSyncTodos:isTaskContainer];
      -[CalDAVContainerSyncTaskGroup setSupportsExtendedCalendarQuery:](v18, "setSupportsExtendedCalendarQuery:", [principal supportsExtendedCalendarQuery]);
      account = [principal account];
      serverVersion = [account serverVersion];

      if ([serverVersion supportsTimeRangeFilter] && (!-[CalDAVCalendar isScheduleInbox](self->_calendar, "isScheduleInbox") || (objc_msgSend(serverVersion, "supportsTimeRangeFilterOnInbox") & 1) == 0))
      {
        eventFilterStartDate = [principal eventFilterStartDate];
        [(CalDAVContainerSyncTaskGroup *)v18 setEventFilterStartDate:eventFilterStartDate];

        eventFilterEndDate = [principal eventFilterEndDate];
        supportsTimeRangeFilterWithoutEndDate = [serverVersion supportsTimeRangeFilterWithoutEndDate];
        if (eventFilterEndDate)
        {
          v25 = 1;
        }

        else
        {
          v25 = supportsTimeRangeFilterWithoutEndDate;
        }

        if ((v25 & 1) == 0)
        {
          eventFilterEndDate = [(CalDAVCalendarSyncOperation *)self _distantFutureEndDate];
        }

        [(CalDAVContainerSyncTaskGroup *)v18 setEventFilterEndDate:eventFilterEndDate];
      }

      [(CoreDAVContainerSyncTaskGroup *)v18 startTaskGroup];

      objc_destroyWeak(&v41);
      objc_destroyWeak(&v40);
      objc_destroyWeak(&from);
      objc_destroyWeak(location);
    }

    else
    {
      mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
      WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
      v28 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

      if (v28)
      {
        v29 = v28;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          title = [(CalDAVCalendar *)self->_calendar title];
          *location = 138412290;
          *&location[4] = title;
          _os_log_impl(&dword_242742000, v29, OS_LOG_TYPE_DEFAULT, "Skipping refresh of calendar %@ because it isn't enabled to sync either events or todos", location, 0xCu);
        }
      }

      [(CalDAVCalendarSyncOperation *)self _finishWithError:0];
    }
  }

  else
  {
    mEMORY[0x277CFDC18]2 = [MEMORY[0x277CFDC18] sharedLogging];
    v33 = objc_loadWeakRetained((&self->super.super.super.isa + *MEMORY[0x277CFDD48]));
    v34 = [mEMORY[0x277CFDC18]2 logHandleForAccountInfoProvider:v33];

    if (v34)
    {
      v35 = v34;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        title2 = [(CalDAVCalendar *)self->_calendar title];
        ctag2 = [(CalDAVCalendar *)self->_calendar ctag];
        syncToken2 = [(CalDAVCalendar *)self->_calendar syncToken];
        *location = 138412802;
        *&location[4] = title2;
        v44 = 2114;
        v45 = ctag2;
        v46 = 2114;
        v47 = syncToken2;
        _os_log_impl(&dword_242742000, v35, OS_LOG_TYPE_INFO, "Skipping refresh of calendar %@ because the ctag matches and we have no local changes (ctag: %{public}@, syncToken: %{public}@)", location, 0x20u);
      }
    }

    [(CalDAVCalendarSyncOperation *)self _finishWithError:0];
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __44__CalDAVCalendarSyncOperation__syncCalendar__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [WeakRetained outstandingTaskGroups];
    [v3 removeObject:v2];

    [WeakRetained _performNextStage];
  }
}

- (void)_processAddedOrModified:(id)modified removed:(id)removed
{
  calendar = self->_calendar;
  removedCopy = removed;
  [(CalDAVCalendar *)calendar updateResourcesFromServer:modified];
  [(CalDAVCalendar *)self->_calendar deleteResourcesAtURLs:removedCopy];
}

- (void)_syncEventsForMerge
{
  v3 = [CalDAVMergeUploadTaskGroup alloc];
  calendar = self->_calendar;
  principal = [(CalDAVOperation *)self principal];
  principal2 = [(CalDAVOperation *)self principal];
  taskManager = [(CoreDAVTaskGroup *)self taskManager];
  v8 = [(CalDAVMergeUploadTaskGroup *)v3 initWithCalendar:calendar principal:principal accountInfoProvider:principal2 taskManager:taskManager];

  objc_initWeak(&location, v8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__CalDAVCalendarSyncOperation__syncEventsForMerge__block_invoke;
  v10[3] = &unk_278D66CC8;
  v10[4] = self;
  objc_copyWeak(&v11, &location);
  [(CoreDAVTaskGroup *)v8 setCompletionBlock:v10];
  outstandingTaskGroups = [(CalDAVOperation *)self outstandingTaskGroups];
  [outstandingTaskGroups addObject:v8];

  [(CalDAVMergeUploadTaskGroup *)v8 startTaskGroup];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __50__CalDAVCalendarSyncOperation__syncEventsForMerge__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained error];
  [v2 _finishWithError:v4];

  v6 = [*(a1 + 32) outstandingTaskGroups];
  v5 = objc_loadWeakRetained((a1 + 40));
  [v6 removeObject:v5];
}

- (id)copyLocalETagsForURLs:(id)ls inFolderWithURL:(id)l
{
  lsCopy = ls;
  lCopy = l;
  calendarURL = [(CalDAVCalendar *)self->_calendar calendarURL];
  v9 = [lCopy CDVIsEqualToURL:calendarURL];

  if ((v9 & 1) == 0)
  {
    [CalDAVCalendarSyncOperation copyLocalETagsForURLs:inFolderWithURL:];
  }

  v10 = [(CalDAVCalendar *)self->_calendar etagsForItemURLs:lsCopy];

  return v10;
}

- (id)copyAllLocalURLsInFolderWithURL:(id)l
{
  lCopy = l;
  calendarURL = [(CalDAVCalendar *)self->_calendar calendarURL];
  v6 = [lCopy CDVIsEqualToURL:calendarURL];

  if ((v6 & 1) == 0)
  {
    [CalDAVCalendarSyncOperation copyAllLocalURLsInFolderWithURL:];
  }

  allItemURLs = [(CalDAVCalendar *)self->_calendar allItemURLs];

  return allItemURLs;
}

- (BOOL)setLocalETag:(id)tag forItemWithURL:(id)l inFolderWithURL:(id)rL
{
  tagCopy = tag;
  lCopy = l;
  rLCopy = rL;
  calendarURL = [(CalDAVCalendar *)self->_calendar calendarURL];
  v12 = [rLCopy CDVIsEqualToURL:calendarURL];

  if ((v12 & 1) == 0)
  {
    [CalDAVCalendarSyncOperation setLocalETag:forItemWithURL:inFolderWithURL:];
  }

  v13 = [(CalDAVCalendar *)self->_calendar setEtag:tagCopy forItemAtURL:lCopy];

  return v13;
}

- (BOOL)setLocalScheduleTag:(id)tag forItemWithURL:(id)l inFolderWithURL:(id)rL
{
  tagCopy = tag;
  lCopy = l;
  rLCopy = rL;
  calendarURL = [(CalDAVCalendar *)self->_calendar calendarURL];
  v12 = [rLCopy CDVIsEqualToURL:calendarURL];

  if ((v12 & 1) == 0)
  {
    [CalDAVCalendarSyncOperation setLocalScheduleTag:forItemWithURL:inFolderWithURL:];
  }

  v13 = [(CalDAVCalendar *)self->_calendar setScheduleTag:tagCopy forItemAtURL:lCopy];

  return v13;
}

- (BOOL)syncPutTask:(id)task completedWithNewETag:(id)tag error:(id)error
{
  taskCopy = task;
  errorCopy = error;
  calendar = self->_calendar;
  if (objc_opt_respondsToSelector())
  {
    v10 = self->_calendar;
    backingAction = [taskCopy backingAction];
    [(CalDAVCalendar *)v10 putAction:backingAction completedWithError:errorCopy];
  }

  return errorCopy == 0;
}

- (BOOL)syncDeleteTask:(id)task error:(id)error
{
  taskCopy = task;
  errorCopy = error;
  calendar = self->_calendar;
  if (objc_opt_respondsToSelector())
  {
    v9 = self->_calendar;
    backingAction = [taskCopy backingAction];
    [(CalDAVCalendar *)v9 deleteAction:backingAction completedWithError:errorCopy];
  }

  return errorCopy == 0;
}

- (void)containerSyncTask:(id)task completedWithNewCTag:(id)tag newSyncToken:(id)token addedOrModified:(id)modified removed:(id)removed error:(id)error
{
  v35 = a2;
  v43 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  tagCopy = tag;
  tokenCopy = token;
  modifiedCopy = modified;
  removedCopy = removed;
  errorCopy = error;
  v37 = modifiedCopy;
  [(CalDAVCalendarSyncOperation *)self _processAddedOrModified:modifiedCopy removed:removedCopy];
  mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
  v18 = *MEMORY[0x277CFDD48];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + v18));
  v20 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

  if (v20)
  {
    v21 = v20;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      title = [(CalDAVCalendar *)self->_calendar title];
      v23 = &stru_285505238;
      if (errorCopy)
      {
        v24 = @" Error was: ";
      }

      else
      {
        v24 = &stru_285505238;
      }

      if (errorCopy)
      {
        v23 = [errorCopy description];
      }

      *buf = 138412802;
      *&buf[4] = title;
      *&buf[12] = 2112;
      *&buf[14] = v24;
      *&buf[22] = 2112;
      v42 = v23;
      _os_log_impl(&dword_242742000, v21, OS_LOG_TYPE_INFO, "Finished syncing container %@.%@%@", buf, 0x20u);
      if (errorCopy)
      {
      }
    }
  }

  if (errorCopy)
  {
    goto LABEL_23;
  }

  nextCtag = tagCopy;
  if (!tagCopy)
  {
    nextCtag = self->_nextCtag;
  }

  [(CalDAVCalendar *)self->_calendar setCtag:nextCtag, v35, taskCopy];
  nextSyncToken = tokenCopy;
  if (!tokenCopy)
  {
    nextSyncToken = self->_nextSyncToken;
  }

  [(CalDAVCalendar *)self->_calendar setSyncToken:nextSyncToken];
  principal = [(CalDAVOperation *)self principal];
  if (![principal isMergeSync] || (-[CalDAVCalendar isNotification](self->_calendar, "isNotification") & 1) != 0 || (-[CalDAVCalendar isSubscribed](self->_calendar, "isSubscribed") & 1) != 0 || (-[CalDAVCalendar isScheduleInbox](self->_calendar, "isScheduleInbox") & 1) != 0 || -[CalDAVCalendar isScheduleOutbox](self->_calendar, "isScheduleOutbox"))
  {

LABEL_23:
    [(CalDAVCalendarSyncOperation *)self _finishWithError:errorCopy, v35];
    goto LABEL_24;
  }

  calendar = self->_calendar;
  v30 = objc_opt_respondsToSelector();

  if ((v30 & 1) == 0)
  {
    goto LABEL_23;
  }

  mEMORY[0x277CFDC18]2 = [MEMORY[0x277CFDC18] sharedLogging];
  v32 = objc_loadWeakRetained((&self->super.super.super.isa + v18));
  v33 = [mEMORY[0x277CFDC18]2 logHandleForAccountInfoProvider:v32];

  if (v33 && os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_242742000, v33, OS_LOG_TYPE_INFO, "This is a merge sync. Collecting merge actions from calendar and beginning upload", buf, 2u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v34 = self->_calendar;
  LOBYTE(v42) = 0;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __113__CalDAVCalendarSyncOperation_containerSyncTask_completedWithNewCTag_newSyncToken_addedOrModified_removed_error___block_invoke;
  v40[3] = &unk_278D66CF0;
  v40[4] = self;
  v40[5] = buf;
  v40[6] = v35;
  [(CalDAVCalendar *)v34 prepareMergeSyncActionsWithCompletionBlock:v40];
  _Block_object_dispose(buf, 8);
LABEL_24:

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __113__CalDAVCalendarSyncOperation_containerSyncTask_completedWithNewCTag_newSyncToken_addedOrModified_removed_error___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CFDC18] sharedLogging];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + *MEMORY[0x277CFDD48]));
  v4 = [v2 logHandleForAccountInfoProvider:WeakRetained];

  if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_242742000, v4, OS_LOG_TYPE_INFO, "Sync action completion block was called", v8, 2u);
  }

  v5 = a1 + 40;
  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24))
  {
    __113__CalDAVCalendarSyncOperation_containerSyncTask_completedWithNewCTag_newSyncToken_addedOrModified_removed_error___block_invoke_cold_1();
    v6 = v9;
  }

  *(v6 + 24) = 1;
  return [*(a1 + 32) _syncEventsForMerge];
}

- (void)reportJunkAction:(id)action completedWithError:(id)error
{
  actionCopy = action;
  errorCopy = error;
  calendar = self->_calendar;
  if (objc_opt_respondsToSelector())
  {
    [(CalDAVCalendar *)self->_calendar reportJunkAction:actionCopy completedWithError:errorCopy];
  }
}

- (void)recurrenceSplitAction:(id)action completedWithUpdatedETag:(id)tag updatedScheduleTag:(id)scheduleTag createdURL:(id)l createdETag:(id)eTag createdScheduleTag:(id)createdScheduleTag
{
  actionCopy = action;
  tagCopy = tag;
  scheduleTagCopy = scheduleTag;
  lCopy = l;
  eTagCopy = eTag;
  createdScheduleTagCopy = createdScheduleTag;
  calendar = self->_calendar;
  if (objc_opt_respondsToSelector())
  {
    [(CalDAVCalendar *)self->_calendar recurrenceSplitAction:actionCopy completedWithUpdatedETag:tagCopy updatedScheduleTag:scheduleTagCopy createdURL:lCopy createdETag:eTagCopy createdScheduleTag:createdScheduleTagCopy];
  }
}

- (void)recurrenceSplitAction:(id)action failedWithError:(id)error
{
  actionCopy = action;
  errorCopy = error;
  calendar = self->_calendar;
  if (objc_opt_respondsToSelector())
  {
    [(CalDAVCalendar *)self->_calendar recurrenceSplitAction:actionCopy failedWithError:errorCopy];
  }
}

- (void)copyLocalETagsForURLs:inFolderWithURL:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2() calendarURL];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_1_0(v1 v2];
}

- (void)copyAllLocalURLsInFolderWithURL:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2() calendarURL];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_1_0(v1 v2];
}

- (void)setLocalETag:forItemWithURL:inFolderWithURL:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2() calendarURL];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_1_0(v1 v2];
}

- (void)setLocalScheduleTag:forItemWithURL:inFolderWithURL:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2() calendarURL];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  [OUTLINED_FUNCTION_1_0(v1 v2];
}

void __113__CalDAVCalendarSyncOperation_containerSyncTask_completedWithNewCTag_newSyncToken_addedOrModified_removed_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:*(v3 + 48) object:*v2 file:@"CalDAVCalendarSyncOperation.m" lineNumber:365 description:@"The sync action completion block should only be called once"];

  *v0 = *(*v1 + 8);
}

@end