@interface MobileCalDAVAccountRefreshActor
- (BOOL)_amendChangeRecordAndCleanUpAfterDeletedEventWithID:(int)d externalID:(id)iD database:(CalDatabase *)database;
- (BOOL)_checkForNewOrMovedItemsDeletedSinceSyncStartedInCalendars:(id)calendars database:(CalDatabase *)database moves:(id)moves;
- (BOOL)_cleanUpDuplicateCalendar:(id)calendar ofCalendar:(id)ofCalendar;
- (BOOL)_refreshShouldContinue;
- (BOOL)_sendMoveForItem:(id)item;
- (BOOL)calendarRefreshShouldRetryMkCalendarForPrincipal:(id)principal calendar:(id)calendar error:(id)error;
- (BOOL)needsRemindersSync;
- (CalDiagAccountSync)accountSyncDiagnostics;
- (MobileCalDAVAccount)account;
- (MobileCalDAVAccountRefreshActor)initWithAccount:(id)account context:(id)context;
- (id)_guidsOfExistingCalendars;
- (id)_powerLogInfoDictionary;
- (id)_prepareAttachmentsForUpload;
- (id)_refreshedCtagForCalendar:(id)calendar;
- (id)_refreshedSyncTokenForCalendar:(id)calendar;
- (void)_beginAttachmentDownloads;
- (void)_calendarCollectionsWereRefreshed;
- (void)_cleanUpDuplicateCalendars;
- (void)_cleanUpOrphanedPreferredUserAddressesPerCalendar;
- (void)_clearMoveChange:(id)change;
- (void)_continuePrincipalRefresh;
- (void)_downloadAttachments;
- (void)_finishMoveForItemWithID:(int)d withEtag:(id)etag scheduleTag:(id)tag;
- (void)_gatherAttachmentChanges;
- (void)_handleAttachmentUploadsComplete:(id)complete attachments:(id)attachments;
- (void)_handleMoveTaskComplete:(id)complete moveItem:(id)item;
- (void)_propFindForNewEtagFollowingMoveOfItem:(int)item;
- (void)_refreshAccountProperties;
- (void)_refreshCalendarProperties;
- (void)_refreshDelegateAccountProperties;
- (void)_refreshRegularCalendars;
- (void)_refreshSpecialCalendars;
- (void)_saveMoveChange:(id)change;
- (void)_sendMoveTasks;
- (void)_sendResultToAccount;
- (void)_syncCalendar:(id)calendar;
- (void)_teardownAllOutstandingOperations;
- (void)_updateDefaultCalendarIfNeededWithDatabase:(CalDatabase *)database;
- (void)_uploadAttachments;
- (void)_uploadAttachments:(id)attachments;
- (void)_uploadAttachments:(id)attachments forOwnerURL:(id)l syncKey:(id)key scheduleTag:(id)tag;
- (void)_waitForStateTransition;
- (void)calendarRefreshForPrincipal:(id)principal completedWithNewCTags:(id)tags newSyncTokens:(id)tokens calendarHomeSyncToken:(id)token updatedCalendars:(id)calendars error:(id)error;
- (void)calendarRefreshFoundUpdatedContainerWithIgnoredEntityType:(id)type;
- (void)calendarRefreshFoundUpdatedSpecialContainer:(id)container;
- (void)calendarRefreshWillSendCalendarDeletes:(id)deletes;
- (void)calendarSyncForPrincipal:(id)principal calendar:(id)calendar completedWithError:(id)error;
- (void)cancelWithCompletion:(id)completion;
- (void)dealloc;
- (void)delegateRefreshForPrincipal:(id)principal completedWithDelegateUserInfo:(id)info error:(id)error;
- (void)propertyRefreshForPrincipal:(id)principal completedWithError:(id)error;
- (void)refreshWithCompletion:(id)completion;
- (void)teardown;
@end

@implementation MobileCalDAVAccountRefreshActor

- (MobileCalDAVAccountRefreshActor)initWithAccount:(id)account context:(id)context
{
  v25 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = MobileCalDAVAccountRefreshActor;
  v8 = [(MobileCalDAVAccountRefreshActor *)&v22 init];
  if (v8)
  {
    v9 = objc_opt_new();
    transaction = v8->_transaction;
    v8->_transaction = v9;

    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v11, v12))
    {
      transactionId = [(DATransaction *)v8->_transaction transactionId];
      *buf = 138543362;
      v24 = transactionId;
      _os_log_impl(&dword_2484B2000, v11, v12, "DATransaction starting, ID: %{public}@", buf, 0xCu);
    }

    [(MobileCalDAVAccountRefreshActor *)v8 setAccount:accountCopy];
    [(MobileCalDAVAccountRefreshActor *)v8 setContext:contextCopy];
    v14 = objc_opt_new();
    [(MobileCalDAVAccountRefreshActor *)v8 setOutstandingTaskGroups:v14];

    v15 = objc_opt_new();
    [(MobileCalDAVAccountRefreshActor *)v8 setOutstandingTasks:v15];

    v16 = dispatch_group_create();
    [(MobileCalDAVAccountRefreshActor *)v8 setOutstandingOperationGroup:v16];
  }

  else
  {
    v12 = *(MEMORY[0x277D03988] + 6);
  }

  v17 = DALoggingwithCategory();
  if (os_log_type_enabled(v17, v12))
  {
    isForced = [contextCopy isForced];
    v19 = "NO";
    if (isForced)
    {
      v19 = "YES";
    }

    *buf = 136315138;
    v24 = v19;
    _os_log_impl(&dword_2484B2000, v17, v12, "Refresh actor starting up. (forced: %s)", buf, 0xCu);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_0_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_teardownAllOutstandingOperations
{
  v30 = *MEMORY[0x277D85DE8];
  outstandingTaskGroups = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
  v4 = [outstandingTaskGroups copy];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v24 + 1) + 8 * v9++) cancelTaskGroup];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  outstandingTasks = [(MobileCalDAVAccountRefreshActor *)self outstandingTasks];
  v11 = [outstandingTasks copy];

  v12 = objc_alloc(MEMORY[0x277CCA9B8]);
  v13 = [v12 initWithDomain:*MEMORY[0x277CFDB18] code:1 userInfo:0];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v20 + 1) + 8 * v18++) finishEarlyWithError:{v13, v20}];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)cancelWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 0;
    _os_log_impl(&dword_2484B2000, v5, v6, "CalDAV actor was told to cancel", buf, 2u);
  }

  [(MobileCalDAVAccountRefreshActor *)self setShouldCancel:1];
  if ([(MobileCalDAVAccountRefreshActor *)self state]!= 10)
  {
    goto LABEL_6;
  }

  outstandingTaskGroups = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
  if ([outstandingTaskGroups count])
  {

LABEL_6:
    [(MobileCalDAVAccountRefreshActor *)self setCancelCompletionBlock:completionCopy];
    [(MobileCalDAVAccountRefreshActor *)self _teardownAllOutstandingOperations];
    goto LABEL_7;
  }

  outstandingTasks = [(MobileCalDAVAccountRefreshActor *)self outstandingTasks];
  v9 = [outstandingTasks count];

  [(MobileCalDAVAccountRefreshActor *)self setCancelCompletionBlock:completionCopy];
  [(MobileCalDAVAccountRefreshActor *)self _teardownAllOutstandingOperations];
  if (!v9)
  {
    v10 = DALoggingwithCategory();
    if (os_log_type_enabled(v10, v6))
    {
      *v12 = 0;
      _os_log_impl(&dword_2484B2000, v10, v6, "There weren't any outstanding tasks, so we're going to call our cancel completion block now.", v12, 2u);
    }

    cancelCompletionBlock = [(MobileCalDAVAccountRefreshActor *)self cancelCompletionBlock];
    cancelCompletionBlock[2]();

    [(MobileCalDAVAccountRefreshActor *)self setCancelCompletionBlock:0];
  }

LABEL_7:
}

- (void)teardown
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v4))
  {
    *v5 = 0;
    _os_log_impl(&dword_2484B2000, v3, v4, "Refresh actor tearing down...", v5, 2u);
  }

  [(MobileCalDAVAccountRefreshActor *)self _teardownAllOutstandingOperations];
}

- (CalDiagAccountSync)accountSyncDiagnostics
{
  if (!self->_accountSyncDiagnostics && RecordCalendarDiagnostics())
  {
    DAWeakLinkClass();
    v3 = objc_opt_new();
    accountSyncDiagnostics = self->_accountSyncDiagnostics;
    self->_accountSyncDiagnostics = v3;
  }

  v5 = self->_accountSyncDiagnostics;

  return v5;
}

- (BOOL)_refreshShouldContinue
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277D03988];
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v5))
  {
    v20 = 67109120;
    LODWORD(v21) = [(MobileCalDAVAccountRefreshActor *)self state];
    _os_log_impl(&dword_2484B2000, v3, v5, "Checking if we should continue before transitioning from state %d", &v20, 8u);
  }

  account = [(MobileCalDAVAccountRefreshActor *)self account];
  shouldFailAllTasks = [account shouldFailAllTasks];

  if (shouldFailAllTasks)
  {
    v8 = DALoggingwithCategory();
    v9 = *(v4 + 4);
    if (os_log_type_enabled(v8, v9))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_2484B2000, v8, v9, "Ignoring calendar refresh task because we have no password.", &v20, 2u);
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:63 userInfo:0];
    context = [(MobileCalDAVAccountRefreshActor *)self context];
    [context setError:v10];
  }

  else if ([(MobileCalDAVAccountRefreshActor *)self shouldCancel])
  {
    v10 = DALoggingwithCategory();
    v14 = *(v4 + 4);
    if (os_log_type_enabled(v10, v14))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_2484B2000, v10, v14, "Bailing out of refresh because we were told to cancel", &v20, 2u);
    }
  }

  else
  {
    context2 = [(MobileCalDAVAccountRefreshActor *)self context];
    error = [context2 error];

    if (!error)
    {
      result = 1;
      goto LABEL_8;
    }

    v10 = DALoggingwithCategory();
    v17 = *(v4 + 4);
    if (os_log_type_enabled(v10, v17))
    {
      context3 = [(MobileCalDAVAccountRefreshActor *)self context];
      error2 = [context3 error];
      v20 = 138412290;
      v21 = error2;
      _os_log_impl(&dword_2484B2000, v10, v17, "Encountered an error while refreshing. Bailing out of the refresh. The error was %@", &v20, 0xCu);
    }
  }

  [(MobileCalDAVAccountRefreshActor *)self _sendResultToAccount];
  result = 0;
LABEL_8:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_waitForStateTransition
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    state = [(MobileCalDAVAccountRefreshActor *)self state];
    outstandingTaskGroups = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
    v8 = [outstandingTaskGroups count];
    outstandingTasks = [(MobileCalDAVAccountRefreshActor *)self outstandingTasks];
    *buf = 67109632;
    v19 = state;
    v20 = 2048;
    v21 = v8;
    v22 = 2048;
    v23 = [outstandingTasks count];
    _os_log_impl(&dword_2484B2000, v4, v5, "Waiting to make state transition from state %d with %lu outstanding task groups and %lu outstanding tasks", buf, 0x1Cu);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__MobileCalDAVAccountRefreshActor__waitForStateTransition__block_invoke;
  v17[3] = &unk_278F177F8;
  v17[4] = self;
  v17[5] = a2;
  v10 = MEMORY[0x24C1D0520](v17);
  outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
  v12 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__MobileCalDAVAccountRefreshActor__waitForStateTransition__block_invoke_2;
  block[3] = &unk_278F17820;
  v16 = v10;
  v13 = v10;
  dispatch_group_notify(outstandingOperationGroup, v12, block);

  v14 = *MEMORY[0x277D85DE8];
}

void __58__MobileCalDAVAccountRefreshActor__waitForStateTransition__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) outstandingTaskGroups];
  v4 = [v3 count];

  if (v4)
  {
    __58__MobileCalDAVAccountRefreshActor__waitForStateTransition__block_invoke_cold_1();
  }

  v5 = [*v2 outstandingTasks];
  v6 = [v5 count];

  if (v6)
  {
    __58__MobileCalDAVAccountRefreshActor__waitForStateTransition__block_invoke_cold_2();
  }

  if ([*v2 _refreshShouldContinue])
  {
    v7 = [*v2 state];
    if (v7 > 5)
    {
      if (v7 > 7)
      {
        if (v7 == 8)
        {
          if ([MEMORY[0x277D03910] enableAutomaticAttachmentDownloads])
          {
            [*v2 setState:9];
            v20 = *v2;

            [v20 _downloadAttachments];
            return;
          }
        }

        else if (v7 != 9)
        {
          if (v7 == 10)
          {
            v24 = [MEMORY[0x277CCA890] currentHandler];
            [v24 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"MobileCalDAVAccountRefreshActor.m" lineNumber:338 description:@"MobileCalDAVAccountRefreshActor tried to transition out of the finished state. What does that even mean?"];
          }

          return;
        }

        [*v2 setState:10];
        v21 = *v2;

        [v21 _calendarCollectionsWereRefreshed];
        return;
      }

      if (v7 == 6)
      {
        [*v2 setState:7];
        if ([*v2 _refreshShouldContinue])
        {
          v18 = *v2;

          [v18 _uploadAttachments];
        }
      }

      else
      {
        [*v2 setState:8];
        v16 = *v2;

        [v16 _refreshSpecialCalendars];
      }
    }

    else if (v7 > 2)
    {
      if (v7 == 3)
      {
        [*v2 setState:4];
        v22 = *v2;

        [v22 _sendMoveTasks];
      }

      else if (v7 == 4)
      {
        [*v2 setState:5];
        v19 = *v2;

        [v19 _continuePrincipalRefresh];
      }

      else
      {
        v12 = [*v2 context];
        v13 = [v12 isCalendarsOnly];

        v14 = *v2;
        if (v13)
        {
          [v14 setState:10];
          v15 = *v2;

          [v15 _sendResultToAccount];
        }

        else
        {
          [v14 setState:6];
          if ([*v2 _refreshShouldContinue])
          {
            [*v2 _gatherAttachmentChanges];
            v23 = *v2;

            [v23 _refreshRegularCalendars];
          }
        }
      }
    }

    else
    {
      if (v7 >= 2)
      {
        if (v7 != 2)
        {
          return;
        }

        v10 = *v2;
      }

      else
      {
        v8 = [*v2 account];
        v9 = [v8 isDelegateAccount];

        v10 = *v2;
        if (!v9)
        {
          [v10 setState:2];
          v11 = *v2;

          [v11 _refreshDelegateAccountProperties];
          return;
        }
      }

      [v10 setState:3];
      v17 = *v2;

      [v17 _refreshCalendarProperties];
    }
  }
}

void __58__MobileCalDAVAccountRefreshActor__waitForStateTransition__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D037D0] sharedRunLoop];
  v3 = [v2 getCFRunLoop];

  CFRunLoopPerformBlock(v3, *MEMORY[0x277CBF058], *(a1 + 32));

  CFRunLoopWakeUp(v3);
}

- (void)refreshWithCompletion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if ([(MobileCalDAVAccountRefreshActor *)self refreshing])
  {
    [MobileCalDAVAccountRefreshActor refreshWithCompletion:];
  }

  [(MobileCalDAVAccountRefreshActor *)self setRefreshing:1];
  [(MobileCalDAVAccountRefreshActor *)self setCompletionBlock:completionCopy];

  self->_didForceDefaultCalendarRefetch = 0;
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  shouldFailAllTasks = [account shouldFailAllTasks];

  if (shouldFailAllTasks)
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v7, v8, "Ignoring calendar refresh task because we have no password.", buf, 2u);
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:63 userInfo:0];
    context = [(MobileCalDAVAccountRefreshActor *)self context];
    [context setError:v9];

    [(MobileCalDAVAccountRefreshActor *)self _sendResultToAccount];
    goto LABEL_28;
  }

  context2 = [(MobileCalDAVAccountRefreshActor *)self context];
  isDisabledAccount = [context2 isDisabledAccount];

  if (!isDisabledAccount)
  {
    context3 = [(MobileCalDAVAccountRefreshActor *)self context];
    isCalendarsOnly = [context3 isCalendarsOnly];

    if (isCalendarsOnly)
    {
      v16 = DALoggingwithCategory();
      v17 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v16, v17))
      {
        *buf = 138412290;
        v41 = objc_opt_class();
        v18 = v41;
        _os_log_impl(&dword_2484B2000, v16, v17, "%@ refreshCalendarsOnly : begin", buf, 0xCu);
      }
    }

    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    if (([account2 needsAccountPropertyRefresh] & 1) == 0)
    {
      account3 = [(MobileCalDAVAccountRefreshActor *)self account];
      mainPrincipal = [account3 mainPrincipal];
      if (([mainPrincipal needsDefaultTimedAlarmUpdate] & 1) == 0)
      {
        account4 = [(MobileCalDAVAccountRefreshActor *)self account];
        mainPrincipal2 = [account4 mainPrincipal];
        if (([mainPrincipal2 needsDefaultAllDayAlarmUpdate] & 1) == 0)
        {
          account5 = [(MobileCalDAVAccountRefreshActor *)self account];
          mainPrincipal3 = [account5 mainPrincipal];
          calendarHomeURL = [mainPrincipal3 calendarHomeURL];
          if (calendarHomeURL)
          {
            v27 = calendarHomeURL;
            account6 = [(MobileCalDAVAccountRefreshActor *)self account];
            mainPrincipal4 = [account6 mainPrincipal];
            preferredCalendarUserAddresses = [mainPrincipal4 preferredCalendarUserAddresses];
            if ([preferredCalendarUserAddresses count])
            {
              account7 = [(MobileCalDAVAccountRefreshActor *)self account];
              searchPropertySet = [account7 searchPropertySet];
              if (searchPropertySet)
              {
                v34 = searchPropertySet;
                account8 = [(MobileCalDAVAccountRefreshActor *)self account];
                serverVersion = [account8 serverVersion];
                [serverVersion type];
                v30 = v35 = account6;
                v37 = [v30 isEqualToString:*MEMORY[0x277CF70A8]];

                account6 = v35;
                searchPropertySet = v34;
              }

              else
              {
                v37 = 1;
              }
            }

            else
            {
              v37 = 1;
            }

            if ((v37 & 1) == 0)
            {
              goto LABEL_27;
            }

            goto LABEL_26;
          }
        }
      }
    }

LABEL_26:
    [(MobileCalDAVAccountRefreshActor *)self setState:1];
    [(MobileCalDAVAccountRefreshActor *)self _refreshAccountProperties];
LABEL_27:
    [(MobileCalDAVAccountRefreshActor *)self _waitForStateTransition];
LABEL_28:
    v31 = *MEMORY[0x277D85DE8];
    return;
  }

  v13 = *MEMORY[0x277D85DE8];

  [(MobileCalDAVAccountRefreshActor *)self _sendResultToAccount];
}

- (void)_refreshAccountProperties
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v4))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2484B2000, v3, v4, "Refreshing properties for account with CoreDAV", buf, 2u);
  }

  account = [(MobileCalDAVAccountRefreshActor *)self account];
  copyCalStore = [account copyCalStore];

  if (copyCalStore)
  {
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    mainPrincipal = [account2 mainPrincipal];
    [mainPrincipal updatePropertiesFromCalStore:copyCalStore];

    CFRelease(copyCalStore);
  }

  v9 = objc_alloc(MEMORY[0x277CF6FA0]);
  account3 = [(MobileCalDAVAccountRefreshActor *)self account];
  mainPrincipal2 = [account3 mainPrincipal];
  v12 = [v9 initWithPrincipal:mainPrincipal2];

  account4 = [(MobileCalDAVAccountRefreshActor *)self account];
  mainPrincipal3 = [account4 mainPrincipal];
  [v12 setFetchPrincipalSearchProperties:{objc_msgSend(mainPrincipal3, "shouldRefreshPrincipalSearchProperties")}];

  [v12 setDelegate:self];
  outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
  dispatch_group_enter(outstandingOperationGroup);

  objc_initWeak(buf, v12);
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__MobileCalDAVAccountRefreshActor__refreshAccountProperties__block_invoke;
  v17[3] = &unk_278F17848;
  objc_copyWeak(&v18, &location);
  objc_copyWeak(&v19, buf);
  [v12 setCompletionBlock:v17];
  outstandingTaskGroups = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
  [outstandingTaskGroups addObject:v12];

  [v12 refreshProperties];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

void __60__MobileCalDAVAccountRefreshActor__refreshAccountProperties__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained outstandingTaskGroups];
  v4 = objc_loadWeakRetained((a1 + 40));
  [v3 removeObject:v4];

  v6 = objc_loadWeakRetained((a1 + 32));
  v5 = [v6 outstandingOperationGroup];
  dispatch_group_leave(v5);
}

- (void)propertyRefreshForPrincipal:(id)principal completedWithError:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  principalCopy = principal;
  errorCopy = error;
  v8 = DALoggingwithCategory();
  v9 = v8;
  if (errorCopy)
  {
    v10 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v8, v10))
    {
      v20 = 138412290;
      v21 = errorCopy;
      _os_log_impl(&dword_2484B2000, v9, v10, "Error refreshing properties for principal: %@", &v20, 0xCu);
    }

    context = [(MobileCalDAVAccountRefreshActor *)self context];
    [context setError:errorCopy];
  }

  else
  {
    v12 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v8, v12))
    {
      fullName = [principalCopy fullName];
      account = [principalCopy account];
      accountDescription = [account accountDescription];
      account2 = [principalCopy account];
      publicDescription = [account2 publicDescription];
      v20 = 138412802;
      v21 = fullName;
      v22 = 2112;
      v23 = accountDescription;
      v24 = 2114;
      v25 = publicDescription;
      _os_log_impl(&dword_2484B2000, v9, v12, "Properties were refreshed for principal %@ on account %@ (%{public}@)", &v20, 0x20u);
    }

    [principalCopy setShouldRefreshPrincipalSearchProperties:0];
    account3 = [(MobileCalDAVAccountRefreshActor *)self account];
    [account3 setNeedsAccountPropertyRefresh:0];

    context = [(MobileCalDAVAccountRefreshActor *)self context];
    [context setShouldSaveAccounts:{objc_msgSend(principalCopy, "isDirty") | objc_msgSend(context, "shouldSaveAccounts")}];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_refreshDelegateAccountProperties
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277D03988];
  v5 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_2484B2000, v3, v5, "Getting delegates for account with CoreDAV", buf, 2u);
  }

  account = [(MobileCalDAVAccountRefreshActor *)self account];
  serverVersion = [account serverVersion];
  supportsCalendarProxy = [serverVersion supportsCalendarProxy];

  if (supportsCalendarProxy)
  {
    v9 = [CalDAVAccountDelegatesRefreshOperation alloc];
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    mainPrincipal = [account2 mainPrincipal];
    v12 = [(CalDAVOperation *)v9 initWithPrincipal:mainPrincipal];

    [(CalDAVAccountDelegatesRefreshOperation *)v12 setMdelegate:self];
    outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
    dispatch_group_enter(outstandingOperationGroup);

    objc_initWeak(buf, v12);
    objc_initWeak(&location, self);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __68__MobileCalDAVAccountRefreshActor__refreshDelegateAccountProperties__block_invoke;
    v21[3] = &unk_278F17848;
    objc_copyWeak(&v22, &location);
    objc_copyWeak(&v23, buf);
    [(CoreDAVTaskGroup *)v12 setCompletionBlock:v21];
    outstandingTaskGroups = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
    [outstandingTaskGroups addObject:v12];

    [(CalDAVAccountDelegatesRefreshOperation *)v12 refreshDelegates];
    [(MobileCalDAVAccountRefreshActor *)self _waitForStateTransition];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else
  {
    v15 = DALoggingwithCategory();
    v16 = *(v4 + 6);
    if (os_log_type_enabled(v15, v16))
    {
      account3 = [(MobileCalDAVAccountRefreshActor *)self account];
      serverVersion2 = [account3 serverVersion];
      type = [serverVersion2 type];
      *buf = 138412290;
      v26 = type;
      _os_log_impl(&dword_2484B2000, v15, v16, "%@: This server does not support delegates.", buf, 0xCu);
    }

    [(MobileCalDAVAccountRefreshActor *)self _waitForStateTransition];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __68__MobileCalDAVAccountRefreshActor__refreshDelegateAccountProperties__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained outstandingTaskGroups];
  v4 = objc_loadWeakRetained((a1 + 40));
  [v3 removeObject:v4];

  v6 = objc_loadWeakRetained((a1 + 32));
  v5 = [v6 outstandingOperationGroup];
  dispatch_group_leave(v5);
}

- (void)delegateRefreshForPrincipal:(id)principal completedWithDelegateUserInfo:(id)info error:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  principalCopy = principal;
  infoCopy = info;
  errorCopy = error;
  v11 = DALoggingwithCategory();
  account5 = v11;
  if (errorCopy)
  {
    v13 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v11, v13))
    {
      account = [principalCopy account];
      accountDescription = [account accountDescription];
      account2 = [principalCopy account];
      publicDescription = [account2 publicDescription];
      v24 = 138412802;
      v25 = accountDescription;
      v26 = 2114;
      v27 = publicDescription;
      v28 = 2112;
      v29 = errorCopy;
      _os_log_impl(&dword_2484B2000, account5, v13, "Error refreshing delegates for account %@ (%{public}@): %@", &v24, 0x20u);
    }
  }

  else
  {
    v18 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v11, v18))
    {
      account3 = [principalCopy account];
      accountDescription2 = [account3 accountDescription];
      account4 = [principalCopy account];
      publicDescription2 = [account4 publicDescription];
      v24 = 138412546;
      v25 = accountDescription2;
      v26 = 2114;
      v27 = publicDescription2;
      _os_log_impl(&dword_2484B2000, account5, v18, "Delegates were refreshed for account %@ (%{public}@)", &v24, 0x16u);
    }

    account5 = [(MobileCalDAVAccountRefreshActor *)self account];
    [account5 updateDelegatesWithUserInfo:infoCopy];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_refreshCalendarProperties
{
  v37 = *MEMORY[0x277D85DE8];
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  mainPrincipal = [account mainPrincipal];
  calendarHomeURL = [mainPrincipal calendarHomeURL];
  v6 = calendarHomeURL == 0;

  v7 = DALoggingwithCategory();
  v8 = v7;
  if (!v6)
  {
    v9 = MEMORY[0x277D03988];
    v10 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v7, v10))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v8, v10, "Scheduling calendar refresh operation", buf, 2u);
    }

    v11 = objc_alloc(MEMORY[0x277CF6FB0]);
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    mainPrincipal2 = [account2 mainPrincipal];
    v14 = [v11 initWithPrincipal:mainPrincipal2];

    [v14 setDelegate:self];
    context = [(MobileCalDAVAccountRefreshActor *)self context];
    LOBYTE(mainPrincipal2) = [context isForced];

    if (mainPrincipal2)
    {
      goto LABEL_13;
    }

    account3 = [(MobileCalDAVAccountRefreshActor *)self account];
    mainPrincipal3 = [account3 mainPrincipal];
    defaultCalendarURL = [mainPrincipal3 defaultCalendarURL];
    if (defaultCalendarURL)
    {
    }

    else
    {
      account4 = [(MobileCalDAVAccountRefreshActor *)self account];
      haveForcedDefaultCalendarRefetch = [account4 haveForcedDefaultCalendarRefetch];

      if ((haveForcedDefaultCalendarRefetch & 1) == 0)
      {
        v28 = DALoggingwithCategory();
        v29 = *(v9 + 5);
        if (os_log_type_enabled(v28, v29))
        {
          account5 = [(MobileCalDAVAccountRefreshActor *)self account];
          *buf = 138412290;
          v36 = account5;
          _os_log_impl(&dword_2484B2000, v28, v29, "Account %@ is missing its default calendar. Will attempt a fuller sync once to fetch it.", buf, 0xCu);
        }

        v23 = 0;
        self->_didForceDefaultCalendarRefetch = 1;
        goto LABEL_12;
      }
    }

    v23 = 1;
LABEL_12:
    account6 = [(MobileCalDAVAccountRefreshActor *)self account];
    [v14 setUseCalendarHomeSyncReport:{v23 & objc_msgSend(account6, "shouldUseCalendarHomeSyncReport")}];

LABEL_13:
    outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
    dispatch_group_enter(outstandingOperationGroup);

    objc_initWeak(buf, v14);
    objc_initWeak(&location, self);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __61__MobileCalDAVAccountRefreshActor__refreshCalendarProperties__block_invoke;
    v31[3] = &unk_278F17848;
    objc_copyWeak(&v32, &location);
    objc_copyWeak(&v33, buf);
    [v14 setCompletionBlock:v31];
    outstandingTaskGroups = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
    [outstandingTaskGroups addObject:v14];

    [v14 refreshCalendarProperties];
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
    goto LABEL_14;
  }

  v19 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v7, v19))
  {
    *buf = 0;
    _os_log_impl(&dword_2484B2000, v8, v19, "Missing calendar home; not trying to refresh calendar properties", buf, 2u);
  }

  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:92 userInfo:0];
  context2 = [(MobileCalDAVAccountRefreshActor *)self context];
  [context2 setError:v14];

LABEL_14:
  [(MobileCalDAVAccountRefreshActor *)self _waitForStateTransition];
  v27 = *MEMORY[0x277D85DE8];
}

void __61__MobileCalDAVAccountRefreshActor__refreshCalendarProperties__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained outstandingTaskGroups];
  v4 = objc_loadWeakRetained((a1 + 40));
  [v3 removeObject:v4];

  v6 = objc_loadWeakRetained((a1 + 32));
  v5 = [v6 outstandingOperationGroup];
  dispatch_group_leave(v5);
}

- (BOOL)calendarRefreshShouldRetryMkCalendarForPrincipal:(id)principal calendar:(id)calendar error:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  errorCopy = error;
  domain = [errorCopy domain];
  if (![domain isEqualToString:*MEMORY[0x277CFDB80]])
  {
LABEL_7:

    goto LABEL_8;
  }

  code = [errorCopy code];

  if (code != 403)
  {
LABEL_8:
    if (errorCopy)
    {
      [calendarCopy recordCalendarError:errorCopy ofType:2];
    }

    else
    {
      [calendarCopy clearCalendarErrorOfType:2];
    }

    v13 = 0;
    goto LABEL_12;
  }

  domain = [calendarCopy calendarURL];
  lastPathComponent = [domain lastPathComponent];
  if (stringLooksLikeAUUID(lastPathComponent))
  {
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v11, v12))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_2484B2000, v11, v12, "Ignoring 403 performing mkcalendar because the URL already looks like one we generated.", &v23, 2u);
    }

    goto LABEL_7;
  }

  guid = [calendarCopy guid];
  if (stringLooksLikeAUUID(guid))
  {
    uUIDString = guid;
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    if (!guid || ![guid length])
    {
      [calendarCopy setGuid:uUIDString];
    }
  }

  cDVURLByDeletingLastPathComponent = [domain CDVURLByDeletingLastPathComponent];
  v20 = [cDVURLByDeletingLastPathComponent CDVfixedURLByAppendingPathComponent:uUIDString];

  [calendarCopy setCalendarURL:v20];
  v21 = DALoggingwithCategory();
  v22 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = 138412546;
    v24 = domain;
    v25 = 2112;
    v26 = v20;
    _os_log_impl(&dword_2484B2000, v21, v22, "Received 403 performing mkcalendar at %@. Going to retry with new URL of %@", &v23, 0x16u);
  }

  v13 = 1;
LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)calendarRefreshWillSendCalendarDeletes:(id)deletes
{
  deletesCopy = deletes;
  state = [(MobileCalDAVAccountRefreshActor *)self state];
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 6);
  v9 = os_log_type_enabled(v7, v8);
  if (state == 3)
  {
    if (v9)
    {
      *v12 = 0;
      _os_log_impl(&dword_2484B2000, v7, v8, "Pausing calendar refresh before sending caledar deletes to send any outstanding moves we have", v12, 2u);
    }

    objc_storeStrong(&self->_pausedPropertyRefreshOperation, deletes);
    outstandingTaskGroups = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
    [outstandingTaskGroups removeObject:deletesCopy];

    outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
    dispatch_group_leave(outstandingOperationGroup);
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v7, v8, "Sending deletes past the BeginRefreshingPrincipalProperties state. Continuing on as normal.", buf, 2u);
    }

    [deletesCopy continueRefreshFromSendingDeletes];
  }
}

- (void)_sendMoveTasks
{
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  itemIDsToMoveActions = [account itemIDsToMoveActions];
  v5 = [itemIDsToMoveActions count];

  if (v5)
  {
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    itemIDsToMoveActions2 = [account2 itemIDsToMoveActions];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__MobileCalDAVAccountRefreshActor__sendMoveTasks__block_invoke;
    v8[3] = &unk_278F17870;
    v8[4] = self;
    [itemIDsToMoveActions2 enumerateKeysAndObjectsUsingBlock:v8];
  }

  [(MobileCalDAVAccountRefreshActor *)self _waitForStateTransition];
}

void __49__MobileCalDAVAccountRefreshActor__sendMoveTasks__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if ([*(a1 + 32) shouldCancel])
  {
    *a4 = 1;
  }

  else
  {
    [*(a1 + 32) _sendMoveForItem:v6];
  }
}

- (void)_clearMoveChange:(id)change
{
  v16 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v15[0] = 67109120;
    v15[1] = [changeCopy changeID];
    _os_log_impl(&dword_2484B2000, v5, v6, "Clearing move change at index %d", v15, 8u);
  }

  Mutable = CFArrayCreateMutable(0, 1, 0);
  CFArrayAppendValue(Mutable, [changeCopy changeID]);
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  dbHelper = [account dbHelper];
  account2 = [(MobileCalDAVAccountRefreshActor *)self account];
  accountID = [account2 accountID];
  [dbHelper calDatabaseForAccountID:accountID];
  account3 = [(MobileCalDAVAccountRefreshActor *)self account];
  changeTrackingID = [account3 changeTrackingID];
  [changeCopy objectType];
  CalDatabaseClearIndividualChangeRowIDsForClient();

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_saveMoveChange:(id)change
{
  v11 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v10[0] = 67109120;
    v10[1] = [changeCopy changeID];
    _os_log_impl(&dword_2484B2000, v5, v6, "Saving move change for next time at index %d", v10, 8u);
  }

  context = [(MobileCalDAVAccountRefreshActor *)self context];
  changeTracker = [context changeTracker];
  [changeTracker saveChange:objc_msgSend(changeCopy forEntityType:{"changeID"), objc_msgSend(changeCopy, "objectType")}];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleMoveTaskComplete:(id)complete moveItem:(id)item
{
  v34 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  itemCopy = item;
  outstandingTasks = [(MobileCalDAVAccountRefreshActor *)self outstandingTasks];
  [outstandingTasks removeObject:completeCopy];

  error = [completeCopy error];

  if (!error)
  {
    responseHeaders = [completeCopy responseHeaders];
    v21 = [responseHeaders CDVObjectForKeyCaseInsensitive:*MEMORY[0x277CF6F88]];
    v22 = [responseHeaders CDVObjectForKeyCaseInsensitive:*MEMORY[0x277CFDB30]];
    if ([v21 length] || objc_msgSend(v22, "length"))
    {
      v23 = DALoggingwithCategory();
      v24 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v23, v24))
      {
        v28 = 138412546;
        v29 = v21;
        v30 = 2112;
        v31 = v22;
        _os_log_impl(&dword_2484B2000, v23, v24, "move task included new schedule tag %@ and/or new etag %@", &v28, 0x16u);
      }

      -[MobileCalDAVAccountRefreshActor _finishMoveForItemWithID:withEtag:scheduleTag:](self, "_finishMoveForItemWithID:withEtag:scheduleTag:", [itemCopy itemID], v22, v21);
    }

    else
    {
      v26 = DALoggingwithCategory();
      v27 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v26, v27))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&dword_2484B2000, v26, v27, "No new etag included in move task; we'll need to PROPFIND to get it", &v28, 2u);
      }

      -[MobileCalDAVAccountRefreshActor _propFindForNewEtagFollowingMoveOfItem:](self, "_propFindForNewEtagFollowingMoveOfItem:", [itemCopy itemID]);
    }

    goto LABEL_14;
  }

  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = [completeCopy url];
    destinationURL = [completeCopy destinationURL];
    error2 = [completeCopy error];
    v28 = 138412802;
    v29 = v12;
    v30 = 2112;
    v31 = destinationURL;
    v32 = 2112;
    v33 = error2;
    _os_log_impl(&dword_2484B2000, v10, v11, "Error moving event from %@ to %@: %@", &v28, 0x20u);
  }

  error3 = [completeCopy error];
  domain = [error3 domain];
  v17 = [domain isEqualToString:*MEMORY[0x277CFDB80]];

  if (v17)
  {
    error4 = [completeCopy error];
    code = [error4 code];

    if ((code - 403) <= 9 && ((1 << (code + 109)) & 0x241) != 0)
    {
LABEL_14:
      [(MobileCalDAVAccountRefreshActor *)self _clearMoveChange:itemCopy];
      goto LABEL_15;
    }
  }

  [(MobileCalDAVAccountRefreshActor *)self _saveMoveChange:itemCopy];
LABEL_15:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_propFindForNewEtagFollowingMoveOfItem:(int)item
{
  v41 = *MEMORY[0x277D85DE8];
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  dbHelper = [account dbHelper];
  account2 = [(MobileCalDAVAccountRefreshActor *)self account];
  accountID = [account2 accountID];
  [dbHelper calDatabaseForAccountID:accountID];
  v9 = CalDatabaseCopyCalendarItemWithRowID();

  if (v9)
  {
    v10 = CalCalendarItemCopyExternalID();
    if (v10)
    {
      account3 = [(MobileCalDAVAccountRefreshActor *)self account];
      mainPrincipal = [account3 mainPrincipal];
      calendarHomeURL = [mainPrincipal calendarHomeURL];
      v14 = [v10 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarHomeURL];

      CFRelease(v9);
      if (v14)
      {

        v15 = objc_alloc(MEMORY[0x277CFDBE8]);
        v16 = [v15 initWithNameSpace:*MEMORY[0x277CFDEF8] name:*MEMORY[0x277CFDF20] parseClass:objc_opt_class()];
        v17 = objc_alloc(MEMORY[0x277CFDBE8]);
        v18 = [v17 initWithNameSpace:*MEMORY[0x277CFDDC0] name:*MEMORY[0x277CF7050] parseClass:objc_opt_class()];
        v19 = [MEMORY[0x277CBEB98] setWithObjects:{v16, v18, 0}];
        v20 = [objc_alloc(MEMORY[0x277CFDC68]) initWithPropertiesToFind:v19 atURL:v14 withDepth:2];
        account4 = [(MobileCalDAVAccountRefreshActor *)self account];
        mainPrincipal2 = [account4 mainPrincipal];
        [v20 setAccountInfoProvider:mainPrincipal2];

        objc_initWeak(&location, v20);
        outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
        dispatch_group_enter(outstandingOperationGroup);

        objc_initWeak(&from, self);
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __74__MobileCalDAVAccountRefreshActor__propFindForNewEtagFollowingMoveOfItem___block_invoke;
        v31[3] = &unk_278F17898;
        objc_copyWeak(&v34, &location);
        itemCopy = item;
        v10 = v14;
        v32 = v10;
        selfCopy = self;
        objc_copyWeak(&v35, &from);
        [v20 setCompletionBlock:v31];
        account5 = [(MobileCalDAVAccountRefreshActor *)self account];
        mainPrincipal3 = [account5 mainPrincipal];
        taskManager = [mainPrincipal3 taskManager];
        [taskManager submitIndependentCoreDAVTask:v20];

        objc_destroyWeak(&v35);
        objc_destroyWeak(&v34);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);

        goto LABEL_11;
      }
    }

    else
    {
      CFRelease(v9);
    }

    v28 = DALoggingwithCategory();
    v29 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v28, v29))
    {
      LODWORD(location) = 67109378;
      HIDWORD(location) = item;
      v39 = 2112;
      v40 = v10;
      _os_log_impl(&dword_2484B2000, v28, v29, "Moved item with id %d has no external ID (%@) or couldn't construct full URL from it", &location, 0x12u);
    }
  }

  else
  {
    v10 = DALoggingwithCategory();
    v27 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v27))
    {
      LODWORD(location) = 67109120;
      HIDWORD(location) = item;
      _os_log_impl(&dword_2484B2000, v10, v27, "Couldn't find a moved item in the database with id %d", &location, 8u);
    }
  }

LABEL_11:

  v30 = *MEMORY[0x277D85DE8];
}

void __74__MobileCalDAVAccountRefreshActor__propFindForNewEtagFollowingMoveOfItem___block_invoke(uint64_t a1)
{
  v1 = a1;
  v47 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];
  if (v3)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v1 + 64);
      v7 = *(v1 + 32);
      *buf = 67109634;
      *v46 = v6;
      *&v46[4] = 2112;
      *&v46[6] = v7;
      *&v46[14] = 2112;
      *&v46[16] = v3;
      _os_log_impl(&dword_2484B2000, v4, v5, "Error propfinding after a move for item %i to URL %@: %@", buf, 0x1Cu);
    }
  }

  else
  {
    v34 = v1;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v35 = WeakRetained;
    v8 = [WeakRetained multiStatus];
    v9 = [v8 orderedResponses];

    obj = v9;
    v10 = [v9 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v4 = 0;
      v13 = *v41;
      v39 = *MEMORY[0x277CFDEF8];
      v38 = *MEMORY[0x277CFDF20];
      v37 = *MEMORY[0x277CFDDC0];
      v14 = *MEMORY[0x277CF7050];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = [*(*(&v40 + 1) + 8 * i) successfulPropertiesToValues];
          v17 = v16;
          if (v16)
          {
            v18 = [v16 CDVObjectForKeyWithNameSpace:v39 andName:v38];
            v19 = [v18 payloadAsString];

            if (v19)
            {
              v20 = v19;

              v4 = v20;
            }

            v21 = [v17 CDVObjectForKeyWithNameSpace:v37 andName:v14];
            v22 = [v21 payloadAsString];

            if (v22)
            {
              v23 = v22;

              v12 = v23;
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
      v4 = 0;
    }

    v24 = DALoggingwithCategory();
    v25 = v24;
    if (v12 | v4)
    {
      v26 = *(MEMORY[0x277D03988] + 6);
      v3 = 0;
      WeakRetained = v35;
      v1 = v34;
      if (os_log_type_enabled(v24, v26))
      {
        v27 = *(v34 + 64);
        *buf = 138412802;
        *v46 = v12;
        *&v46[8] = 2112;
        *&v46[10] = v4;
        *&v46[18] = 1024;
        *&v46[20] = v27;
        _os_log_impl(&dword_2484B2000, v25, v26, "Got new schedule tag %@ and/or new etag %@ in propfind after move for item %i", buf, 0x1Cu);
      }

      [*(v34 + 40) _finishMoveForItemWithID:*(v34 + 64) withEtag:v4 scheduleTag:v12];
    }

    else
    {
      v28 = *(MEMORY[0x277D03988] + 3);
      v3 = 0;
      WeakRetained = v35;
      v1 = v34;
      if (os_log_type_enabled(v24, v28))
      {
        v29 = *(v34 + 64);
        v30 = *(v34 + 32);
        *buf = 67109378;
        *v46 = v29;
        *&v46[4] = 2112;
        *&v46[6] = v30;
        _os_log_impl(&dword_2484B2000, v25, v28, "Got neither etag nor schedule tag in propind after move for item id %i to %@", buf, 0x12u);
      }
    }
  }

  v31 = objc_loadWeakRetained((v1 + 56));
  v32 = [v31 outstandingOperationGroup];
  dispatch_group_leave(v32);

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_finishMoveForItemWithID:(int)d withEtag:(id)etag scheduleTag:(id)tag
{
  v21 = *MEMORY[0x277D85DE8];
  etagCopy = etag;
  tagCopy = tag;
  if (![tagCopy length] && !objc_msgSend(etagCopy, "length"))
  {
    v15 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v15, v16))
    {
      v19 = 67109120;
      dCopy2 = d;
      v17 = "Got neither an etag nor a schedule tag for item with ID %i";
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_11;
  }

  account = [(MobileCalDAVAccountRefreshActor *)self account];
  dbHelper = [account dbHelper];
  account2 = [(MobileCalDAVAccountRefreshActor *)self account];
  accountID = [account2 accountID];
  [dbHelper calDatabaseForAccountID:accountID];
  v14 = CalDatabaseCopyCalendarItemWithRowID();

  if (!v14)
  {
    v15 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v15, v16))
    {
      v19 = 67109120;
      dCopy2 = d;
      v17 = "Couldn't find a moved item in the database with id %d";
LABEL_9:
      _os_log_impl(&dword_2484B2000, v15, v16, v17, &v19, 8u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  [tagCopy length];
  CalCalendarItemSetExternalScheduleID();
  [etagCopy length];
  CalCalendarItemSetExternalModificationTag();
  CFRelease(v14);
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_sendMoveForItem:(id)item
{
  v76 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  dbHelper = [account dbHelper];
  account2 = [(MobileCalDAVAccountRefreshActor *)self account];
  accountID = [account2 accountID];
  [dbHelper calDatabaseForAccountID:accountID];
  [itemCopy itemID];
  v9 = CalDatabaseCopyCalendarItemWithRowID();

  cf = v9;
  if (!v9)
  {
    v29 = DALoggingwithCategory();
    v30 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v29, *(MEMORY[0x277D03988] + 3)))
    {
      *buf = 67109120;
      *v74 = [itemCopy itemID];
      _os_log_impl(&dword_2484B2000, v29, v30, "Couldn't find a calendar item with uid %d to process a move operation.", buf, 8u);
    }

    v31 = 0;
    goto LABEL_32;
  }

  account3 = [(MobileCalDAVAccountRefreshActor *)self account];
  mainPrincipal = [account3 mainPrincipal];
  calendarHomeURL = [mainPrincipal calendarHomeURL];

  v66 = CalCalendarItemCopyExternalID();
  v12 = CalCalendarItemCopyCalendar();
  if (v12)
  {
    v13 = v12;
    v14 = CalCalendarCopyExternalID();
    v15 = v14;
    if (v14)
    {
      v16 = [v14 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarHomeURL];
      v17 = [DACalDAViCalItem alloc];
      WeakRetained = objc_loadWeakRetained(&self->_account);
      accountID2 = [WeakRetained accountID];
      v20 = [(DACalDAViCalItem *)v17 initWithCalRecord:cf inContainer:v16 accountID:accountID2];

      v64 = v20;
      filename = [(DACalDAViCalItem *)v20 filename];
      v22 = [v16 URLByAppendingPathComponent:filename];
      [(DACalDAViCalItem *)v20 setServerID:v22];

      serverID = [(DACalDAViCalItem *)v20 serverID];
      account4 = [(MobileCalDAVAccountRefreshActor *)self account];
      mainPrincipal2 = [account4 mainPrincipal];
      calendarHomeURL2 = [mainPrincipal2 calendarHomeURL];
      v27 = [serverID da_leastInfoStringRepresentationRelativeToParentURL:calendarHomeURL2];

      CalCalendarItemSetExternalID();
      [itemCopy setUpdatedExternalID:v27];
      context = [(MobileCalDAVAccountRefreshActor *)self context];
      [context setShouldSave:1];
    }

    else
    {
      v33 = DALoggingwithCategory();
      v34 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v33, v34))
      {
        *buf = 67109120;
        *v74 = [itemCopy itemID];
        _os_log_impl(&dword_2484B2000, v33, v34, "Couldn't get a calendar URL for the moved event %d", buf, 8u);
      }

      v64 = 0;
    }

    CFRelease(v13);
  }

  else
  {
    v15 = DALoggingwithCategory();
    v32 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v15, v32))
    {
      *buf = 67109120;
      *v74 = [itemCopy itemID];
      _os_log_impl(&dword_2484B2000, v15, v32, "Couldn't find an owning calendar for a moved event (%d).", buf, 8u);
    }

    v64 = 0;
  }

  oldExternalID = [itemCopy oldExternalID];
  v36 = oldExternalID;
  if (v66)
  {
    v37 = DALoggingwithCategory();
    v38 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v37, v38))
    {
      *buf = 138412546;
      *v74 = v66;
      *&v74[8] = 2112;
      v75 = oldExternalID;
      _os_log_impl(&dword_2484B2000, v37, v38, "Moving an event that has an external id set. Preferring that external ID (%@) to the one tombstoned on the move record (%@)", buf, 0x16u);
    }

    v36 = v66;
  }

  v39 = v36;
  v40 = [v39 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarHomeURL];
  v41 = [v40 da_urlBySettingUsername:0];

  serverID2 = [(DACalDAViCalItem *)v64 serverID];
  v43 = [serverID2 da_urlBySettingUsername:0];

  if (!v43 || !v41)
  {
    v46 = DALoggingwithCategory();
    v52 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v46, v52))
    {
      *buf = 67109376;
      *v74 = v41 == 0;
      *&v74[4] = 1024;
      *&v74[6] = v43 == 0;
      v48 = "Can't move event because we don't have both a source URL and destination URL. source is null = %{BOOL}d, dest is null = %{BOOL}d";
      v49 = v46;
      v50 = v52;
      v51 = 14;
      goto LABEL_26;
    }

LABEL_27:
    v31 = 0;
    v53 = 1;
    goto LABEL_31;
  }

  v44 = [v41 da_isEqualToDAVURL:v43];
  v45 = DALoggingwithCategory();
  v46 = v45;
  if (v44)
  {
    v47 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v45, v47))
    {
      *buf = 0;
      v48 = "The source and destination URLs are equal. This could happen if you moved an event twice. We're just going to pretend we didn't see that.";
      v49 = v46;
      v50 = v47;
      v51 = 2;
LABEL_26:
      _os_log_impl(&dword_2484B2000, v49, v50, v48, buf, v51);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  v54 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v45, v54))
  {
    *buf = 138412546;
    *v74 = v41;
    *&v74[8] = 2112;
    v75 = v43;
    _os_log_impl(&dword_2484B2000, v46, v54, "Sending a move request from %@ to %@", buf, 0x16u);
  }

  v46 = [objc_alloc(MEMORY[0x277CFDC28]) initWithSourceURL:v41 destinationURL:v43];
  objc_initWeak(buf, v46);
  objc_initWeak(&location, self);
  outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
  dispatch_group_enter(outstandingOperationGroup);

  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __52__MobileCalDAVAccountRefreshActor__sendMoveForItem___block_invoke;
  v68[3] = &unk_278F178C0;
  objc_copyWeak(&v70, &location);
  objc_copyWeak(&v71, buf);
  v69 = itemCopy;
  [v46 setCompletionBlock:v68];
  outstandingTasks = [(MobileCalDAVAccountRefreshActor *)self outstandingTasks];
  [outstandingTasks addObject:v46];

  account5 = [(MobileCalDAVAccountRefreshActor *)self account];
  mainPrincipal3 = [account5 mainPrincipal];
  [v46 setAccountInfoProvider:mainPrincipal3];

  account6 = [(MobileCalDAVAccountRefreshActor *)self account];
  mainPrincipal4 = [account6 mainPrincipal];
  taskManager = [mainPrincipal4 taskManager];
  [taskManager submitIndependentCoreDAVTask:v46];

  objc_destroyWeak(&v71);
  objc_destroyWeak(&v70);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
  v53 = 0;
  v31 = 1;
LABEL_31:

  CFRelease(cf);
  if (!v53)
  {
    [(MobileCalDAVAccountRefreshActor *)self _saveMoveChange:itemCopy];
    goto LABEL_34;
  }

LABEL_32:
  [(MobileCalDAVAccountRefreshActor *)self _clearMoveChange:itemCopy, v64];
LABEL_34:

  v62 = *MEMORY[0x277D85DE8];
  return v31;
}

void __52__MobileCalDAVAccountRefreshActor__sendMoveForItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleMoveTaskComplete:v3 moveItem:*(a1 + 32)];

  v5 = objc_loadWeakRetained((a1 + 40));
  v4 = [v5 outstandingOperationGroup];
  dispatch_group_leave(v4);
}

- (void)_continuePrincipalRefresh
{
  v3 = self->_pausedPropertyRefreshOperation;
  pausedPropertyRefreshOperation = self->_pausedPropertyRefreshOperation;
  self->_pausedPropertyRefreshOperation = 0;

  if (v3)
  {
    outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
    dispatch_group_enter(outstandingOperationGroup);

    outstandingTaskGroups = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
    [outstandingTaskGroups addObject:v3];

    [(CalDAVCalendarPropertyRefreshOperation *)v3 continueRefreshFromSendingDeletes];
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v8))
    {
      *v9 = 0;
      _os_log_impl(&dword_2484B2000, v7, v8, "No paused property refresh operation to continue", v9, 2u);
    }
  }

  [(MobileCalDAVAccountRefreshActor *)self _waitForStateTransition];
}

- (void)calendarRefreshFoundUpdatedContainerWithIgnoredEntityType:(id)type
{
  if ([type isTaskContainer])
  {

    [(MobileCalDAVAccountRefreshActor *)self setRefreshFoundUpdatedTaskContainer:1];
  }
}

- (void)calendarRefreshFoundUpdatedSpecialContainer:(id)container
{
  if ([container isNotification])
  {

    [(MobileCalDAVAccountRefreshActor *)self setRefreshFoundUpdatedSpecialCalendar:1];
  }
}

- (void)calendarRefreshForPrincipal:(id)principal completedWithNewCTags:(id)tags newSyncTokens:(id)tokens calendarHomeSyncToken:(id)token updatedCalendars:(id)calendars error:(id)error
{
  v95 = *MEMORY[0x277D85DE8];
  principalCopy = principal;
  tagsCopy = tags;
  tokensCopy = tokens;
  tokenCopy = token;
  calendarsCopy = calendars;
  errorCopy = error;
  if (errorCopy)
  {
    context = [(MobileCalDAVAccountRefreshActor *)self context];
    error = [context error];

    selfCopy = self;
    if (!error)
    {
      context2 = [(MobileCalDAVAccountRefreshActor *)self context];
      [context2 setError:errorCopy];
    }

    v23 = DALoggingwithCategory();
    v24 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v23, v24))
    {
      account = [(MobileCalDAVAccountRefreshActor *)selfCopy account];
      publicDescription = [account publicDescription];
      *buf = 138543618;
      v92 = publicDescription;
      v93 = 2112;
      v94 = errorCopy;
      _os_log_impl(&dword_2484B2000, v23, v24, "Error refreshing calendar properties for account %{public}@ error %@", buf, 0x16u);
    }

LABEL_32:

    goto LABEL_33;
  }

  if (![(MobileCalDAVAccountRefreshActor *)self shouldCancel])
  {
    selfCopy4 = self;
    v28 = DALoggingwithCategory();
    type = *(MEMORY[0x277D03988] + 6);
    selfCopy3 = self;
    if (os_log_type_enabled(v28, type))
    {
      account2 = [(MobileCalDAVAccountRefreshActor *)self account];
      accountDescription = [account2 accountDescription];
      account3 = [(MobileCalDAVAccountRefreshActor *)self account];
      publicDescription2 = [account3 publicDescription];
      *buf = 138412546;
      v92 = accountDescription;
      v93 = 2114;
      v94 = publicDescription2;
      _os_log_impl(&dword_2484B2000, v28, type, "Calendars properties were refreshed for account %@ (%{public}@)", buf, 0x16u);

      selfCopy4 = self;
      errorCopy = 0;
    }

    context3 = [(MobileCalDAVAccountRefreshActor *)selfCopy4 context];
    account4 = [(MobileCalDAVAccountRefreshActor *)selfCopy4 account];
    mainPrincipal = [account4 mainPrincipal];
    [context3 setShouldSaveAccounts:{objc_msgSend(mainPrincipal, "isDirty") | objc_msgSend(context3, "shouldSaveAccounts")}];

    account5 = [(MobileCalDAVAccountRefreshActor *)self account];
    mainPrincipal2 = [account5 mainPrincipal];
    LODWORD(mainPrincipal) = [mainPrincipal2 isDirty];

    if (mainPrincipal)
    {
      account6 = [(MobileCalDAVAccountRefreshActor *)self account];
      v39 = [account6 updateCalendarStoreWithAlreadyOpenDBShouldCreate:0 syncingThisAccount:1];
    }

    else
    {
      v39 = 0;
    }

    account7 = [(MobileCalDAVAccountRefreshActor *)self account];
    mainPrincipal3 = [account7 mainPrincipal];
    calendarsAreDirty = [mainPrincipal3 calendarsAreDirty];

    if (calendarsAreDirty)
    {
      account8 = [(MobileCalDAVAccountRefreshActor *)self account];
      mainPrincipal4 = [account8 mainPrincipal];
      [mainPrincipal4 setCalendarsAreDirty:0];

      selfCopy7 = self;
    }

    else
    {
      selfCopy7 = self;
      if (!v39)
      {
        goto LABEL_18;
      }
    }

    v46 = DALoggingwithCategory();
    if (os_log_type_enabled(v46, type))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v46, type, "Calendar properties were updated. Saving the database", buf, 2u);
    }

    account9 = [(MobileCalDAVAccountRefreshActor *)selfCopy7 account];
    dbHelper = [account9 dbHelper];
    account10 = [(MobileCalDAVAccountRefreshActor *)selfCopy7 account];
    accountID = [account10 accountID];
    [dbHelper calSaveDatabaseForAccountID:accountID];

    selfCopy7 = self;
LABEL_18:
    context4 = [(MobileCalDAVAccountRefreshActor *)selfCopy7 context];
    isCalendarsOnly = [context4 isCalendarsOnly];

    if ((isCalendarsOnly & 1) == 0)
    {
      v71 = errorCopy;
      [(MobileCalDAVAccountRefreshActor *)selfCopy7 setCalendarHomeSyncToken:tokenCopy];
      v74 = tagsCopy;
      v53 = [tagsCopy copy];
      [(MobileCalDAVAccountRefreshActor *)selfCopy7 setPathsToCTags:v53];

      v73 = tokensCopy;
      v54 = [tokensCopy copy];
      [(MobileCalDAVAccountRefreshActor *)selfCopy7 setPathsToSyncTokens:v54];

      v72 = calendarsCopy;
      v55 = [calendarsCopy mutableCopy];
      outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)selfCopy7 outstandingOperationGroup];
      dispatch_group_enter(outstandingOperationGroup);

      v23 = dispatch_group_create();
      [(MobileCalDAVAccountRefreshActor *)selfCopy7 _cleanUpDuplicateCalendars];
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      account11 = [(MobileCalDAVAccountRefreshActor *)selfCopy7 account];
      calendars = [account11 calendars];

      v59 = [calendars countByEnumeratingWithState:&v86 objects:v90 count:16];
      if (v59)
      {
        v60 = v59;
        v61 = *v87;
        do
        {
          for (i = 0; i != v60; ++i)
          {
            if (*v87 != v61)
            {
              objc_enumerationMutation(calendars);
            }

            v63 = *(*(&v86 + 1) + 8 * i);
            if (([v63 isEventContainer] & 1) != 0 || CalShouldSyncReminders())
            {
              v64 = DALoggingwithCategory();
              if (os_log_type_enabled(v64, type))
              {
                title = [v63 title];
                *buf = 138412290;
                v92 = title;
                _os_log_impl(&dword_2484B2000, v64, type, "Preparing sync actions for calendar %@", buf, 0xCu);

                selfCopy7 = selfCopy3;
              }

              dispatch_group_enter(v23);
              v82[0] = MEMORY[0x277D85DD0];
              v82[1] = 3221225472;
              v82[2] = __144__MobileCalDAVAccountRefreshActor_calendarRefreshForPrincipal_completedWithNewCTags_newSyncTokens_calendarHomeSyncToken_updatedCalendars_error___block_invoke;
              v82[3] = &unk_278F178E8;
              v82[4] = selfCopy7;
              v83 = v55;
              v84 = principalCopy;
              v85 = v23;
              [v63 prepareSyncActionsWithCompletionBlock:v82];
            }
          }

          v60 = [calendars countByEnumeratingWithState:&v86 objects:v90 count:16];
        }

        while (v60);
      }

      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __144__MobileCalDAVAccountRefreshActor_calendarRefreshForPrincipal_completedWithNewCTags_newSyncTokens_calendarHomeSyncToken_updatedCalendars_error___block_invoke_75;
      v80[3] = &unk_278F17910;
      v80[4] = selfCopy7;
      v81 = v55;
      v66 = v55;
      v67 = MEMORY[0x24C1D0520](v80);
      v68 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __144__MobileCalDAVAccountRefreshActor_calendarRefreshForPrincipal_completedWithNewCTags_newSyncTokens_calendarHomeSyncToken_updatedCalendars_error___block_invoke_76;
      block[3] = &unk_278F17820;
      v79 = v67;
      v69 = v67;
      dispatch_group_notify(v23, v68, block);

      tokensCopy = v73;
      tagsCopy = v74;
      calendarsCopy = v72;
      errorCopy = v71;
      goto LABEL_32;
    }
  }

LABEL_33:

  v70 = *MEMORY[0x277D85DE8];
}

void __144__MobileCalDAVAccountRefreshActor_calendarRefreshForPrincipal_completedWithNewCTags_newSyncTokens_calendarHomeSyncToken_updatedCalendars_error___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 needsResync];
  v5 = [v3 syncActions];
  v6 = [v5 count];

  v7 = [v3 reportJunkActions];
  v8 = [v7 count];

  v9 = [v3 recurrenceSplitActions];
  v10 = [v9 count];

  v11 = [*(a1 + 32) account];
  v12 = [v11 mainPrincipal];
  v13 = [v12 isMergeSync];

  v14 = [v3 hasCalendarErrorOfType:4];
  v15 = v14;
  if ((v4 & 1) != 0 || v6 || v8 || v10 || (v13 & 1) != 0 || v14)
  {
    v16 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v16, v17))
    {
      v21 = v10 != 0;
      v18 = v6 != 0;
      v19 = [v3 title];
      *buf = 138413826;
      v23 = v19;
      v24 = 1024;
      v25 = v4;
      v26 = 1024;
      v27 = v18;
      v28 = 1024;
      v29 = v8 != 0;
      v30 = 1024;
      v31 = v21;
      v32 = 1024;
      v33 = v13;
      v34 = 1024;
      v35 = v15;
      _os_log_impl(&dword_2484B2000, v16, v17, "Calendar %@ needs to be synced (needsResync: %d, hasSyncActions: %d, hasItemsToReportJunk: %d, hasRecurrenceSplitActions: %d, isMergeSync: %d, hadSyncError: %d)", buf, 0x30u);
    }

    [*(a1 + 40) addObject:v3];
  }

  else
  {
    [*(a1 + 32) calendarSyncForPrincipal:*(a1 + 48) calendar:v3 completedWithError:0];
  }

  dispatch_group_leave(*(a1 + 56));

  v20 = *MEMORY[0x277D85DE8];
}

void __144__MobileCalDAVAccountRefreshActor_calendarRefreshForPrincipal_completedWithNewCTags_newSyncTokens_calendarHomeSyncToken_updatedCalendars_error___block_invoke_75(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) allObjects];
  v3 = [v2 mutableCopy];
  [*(a1 + 32) setCalendarsToRefresh:v3];

  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = [*(a1 + 32) calendarsToRefresh];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_2484B2000, v4, v5, "Calendars to refresh in this sync are: %@", &v9, 0xCu);
  }

  v7 = [*(a1 + 32) outstandingOperationGroup];
  dispatch_group_leave(v7);

  v8 = *MEMORY[0x277D85DE8];
}

void __144__MobileCalDAVAccountRefreshActor_calendarRefreshForPrincipal_completedWithNewCTags_newSyncTokens_calendarHomeSyncToken_updatedCalendars_error___block_invoke_76(uint64_t a1)
{
  Main = CFRunLoopGetMain();
  CFRunLoopPerformBlock(Main, *MEMORY[0x277CBF058], *(a1 + 32));
  v3 = CFRunLoopGetMain();

  CFRunLoopWakeUp(v3);
}

- (void)_cleanUpDuplicateCalendars
{
  v35 = *MEMORY[0x277D85DE8];
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  duplicateCalendars = [account duplicateCalendars];

  if ([duplicateCalendars count])
  {
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    dbHelper = [account2 dbHelper];
    account3 = [(MobileCalDAVAccountRefreshActor *)self account];
    accountID = [account3 accountID];
    account4 = [(MobileCalDAVAccountRefreshActor *)self account];
    changeTrackingID = [account4 changeTrackingID];
    [dbHelper calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = duplicateCalendars;
    v11 = duplicateCalendars;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v29;
      v16 = *(MEMORY[0x277D03988] + 3);
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v28 + 1) + 8 * i);
          if ([v18 count] == 2)
          {
            v19 = [v18 objectAtIndexedSubscript:0];
            v20 = [v18 objectAtIndexedSubscript:1];
            v14 |= [(MobileCalDAVAccountRefreshActor *)self _cleanUpDuplicateCalendar:v20 ofCalendar:v19];
          }

          else
          {
            v19 = DALoggingwithCategory();
            if (os_log_type_enabled(v19, v16))
            {
              v21 = [v18 count];
              *buf = 134217984;
              v33 = v21;
              _os_log_impl(&dword_2484B2000, v19, v16, "Unexpected number of items in duplicate pair: %lu", buf, 0xCu);
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v13);
    }

    else
    {
      LOBYTE(v14) = 0;
    }

    account5 = [(MobileCalDAVAccountRefreshActor *)self account];
    dbHelper2 = [account5 dbHelper];
    account6 = [(MobileCalDAVAccountRefreshActor *)self account];
    accountID2 = [account6 accountID];
    [dbHelper2 calCloseDatabaseForAccountID:accountID2 save:v14 & 1];

    duplicateCalendars = v27;
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)_cleanUpDuplicateCalendar:(id)calendar ofCalendar:(id)ofCalendar
{
  v34 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  ofCalendarCopy = ofCalendar;
  calCalendar = [ofCalendarCopy calCalendar];
  calCalendar2 = [calendarCopy calCalendar];
  v10 = calCalendar2;
  if (!calCalendar)
  {
    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v19, *(MEMORY[0x277D03988] + 3)))
    {
      title = [ofCalendarCopy title];
      calendarURLString = [ofCalendarCopy calendarURLString];
      v32 = 138412546;
      *v33 = title;
      *&v33[8] = 2112;
      *&v33[10] = calendarURLString;
      _os_log_impl(&dword_2484B2000, v19, v20, "Calendar ref is NULL for original calendar %@ with URL %@. Will not attempt to remove duplicate.", &v32, 0x16u);
    }

    if (v10)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (!calCalendar2)
  {
LABEL_10:
    v23 = DALoggingwithCategory();
    v24 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v23, v24))
    {
      title2 = [calendarCopy title];
      calendarURLString2 = [calendarCopy calendarURLString];
      v32 = 138412546;
      *v33 = title2;
      *&v33[8] = 2112;
      *&v33[10] = calendarURLString2;
      _os_log_impl(&dword_2484B2000, v23, v24, "Calendar ref is NULL for duplicate calendar %@ with URL %@. Will not attempt to remove duplicate.", &v32, 0x16u);
    }

    goto LABEL_16;
  }

  account = [(MobileCalDAVAccountRefreshActor *)self account];
  copyCalStore = [account copyCalStore];

  v13 = DALoggingwithCategory();
  v14 = *(MEMORY[0x277D03988] + 3);
  v15 = os_log_type_enabled(v13, v14);
  if (!copyCalStore)
  {
    if (v15)
    {
      UID = CalCalendarGetUID();
      title3 = [calendarCopy title];
      calendarURLString3 = [calendarCopy calendarURLString];
      v32 = 67109634;
      *v33 = UID;
      *&v33[4] = 2112;
      *&v33[6] = title3;
      *&v33[14] = 2112;
      *&v33[16] = calendarURLString3;
      _os_log_impl(&dword_2484B2000, v13, v14, "No store when removing duplicate calendar with UID %i (%@ with URL %@). Will not attempt to remove duplicate.", &v32, 0x1Cu);
    }

LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (v15)
  {
    v16 = CalCalendarGetUID();
    title4 = [calendarCopy title];
    v32 = 67109378;
    *v33 = v16;
    *&v33[4] = 2112;
    *&v33[6] = title4;
    _os_log_impl(&dword_2484B2000, v13, v14, "Removing duplicate calendar with rowid %i and title %@; clearing ctag and synctoken for original calendar", &v32, 0x12u);
  }

  CalStoreRemoveCalendar();
  CFRelease(copyCalStore);
  v18 = 1;
  [ofCalendarCopy setNeedsResync:1];
  [ofCalendarCopy setSyncToken:0];
  [ofCalendarCopy setCtag:0];
LABEL_17:

  v30 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)_amendChangeRecordAndCleanUpAfterDeletedEventWithID:(int)d externalID:(id)iD database:(CalDatabase *)database
{
  v23 = *MEMORY[0x277D85DE8];
  iDCopy = iD;
  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v8, v9))
  {
    v19 = 67109378;
    *v20 = d;
    *&v20[4] = 2112;
    *&v20[6] = iDCopy;
    _os_log_impl(&dword_2484B2000, v8, v9, "Event put to server during this sync appears to have been deleted. Original row id = %i. external_id = %@", &v19, 0x12u);
  }

  CalDatabaseAmendDeleteForCalendarItemWithExternalID();
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  copyCalStore = [account copyCalStore];

  if (copyCalStore)
  {
    v12 = CalDatabaseCopyCalendarItemWithExternalIDInCalendarOrStore();
    v13 = v12 != 0;
    if (v12)
    {
      v14 = v12;
      v15 = DALoggingwithCategory();
      if (os_log_type_enabled(v15, v9))
      {
        RowID = CalCalendarItemGetRowID();
        v19 = 138412802;
        *v20 = iDCopy;
        *&v20[8] = 1024;
        *&v20[10] = RowID;
        v21 = 1024;
        dCopy = d;
        _os_log_impl(&dword_2484B2000, v15, v9, "Removing event with external_id %@ and row id %i because it has the same external ID as an event that was put and subsequently deleted during this sync. (Original row id = %i)", &v19, 0x18u);
      }

      CalRemoveEvent();
      CFRelease(v14);
    }

    CFRelease(copyCalStore);
  }

  else
  {
    v13 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_checkForNewOrMovedItemsDeletedSinceSyncStartedInCalendars:(id)calendars database:(CalDatabase *)database moves:(id)moves
{
  v64 = *MEMORY[0x277D85DE8];
  calendarsCopy = calendars;
  movesCopy = moves;
  obj = calendarsCopy;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v38 = [calendarsCopy countByEnumeratingWithState:&v51 objects:v63 count:16];
  v7 = 0;
  if (v38)
  {
    v37 = *v52;
    do
    {
      v8 = 0;
      do
      {
        if (*v52 != v37)
        {
          objc_enumerationMutation(obj);
        }

        *type = v8;
        v9 = *(*(&v51 + 1) + 8 * v8);
        newlyAddedItems = [v9 newlyAddedItems];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v11 = [newlyAddedItems countByEnumeratingWithState:&v47 objects:v62 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v48;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v48 != v13)
              {
                objc_enumerationMutation(newlyAddedItems);
              }

              v15 = *(*(&v47 + 1) + 8 * i);
              [v15 calItem];
              if ((CalCalendarItemStillExists() & 1) == 0)
              {
                serverID = [v15 serverID];
                calendarURL = [v9 calendarURL];
                v18 = [serverID da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

                v7 |= [(MobileCalDAVAccountRefreshActor *)self _amendChangeRecordAndCleanUpAfterDeletedEventWithID:CalCalendarItemGetRowID() externalID:v18 database:database];
              }
            }

            v12 = [newlyAddedItems countByEnumeratingWithState:&v47 objects:v62 count:16];
          }

          while (v12);
        }

        if (newlyAddedItems)
        {
          [v9 setNewlyAddedItems:0];
        }

        v8 = *type + 1;
      }

      while (*type + 1 != v38);
      v38 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v38);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v19 = movesCopy;
  v20 = [v19 countByEnumeratingWithState:&v43 objects:v61 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v44;
    typea = *(MEMORY[0x277D03988] + 3);
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v44 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v43 + 1) + 8 * j);
        intValue = [v24 intValue];
        v26 = CalDatabaseCopyCalendarItemWithRowID();
        if (v26)
        {
          CFRelease(v26);
        }

        else
        {
          v27 = [v19 objectForKeyedSubscript:v24];
          updatedExternalID = [v27 updatedExternalID];
          if (updatedExternalID)
          {
            v7 |= [(MobileCalDAVAccountRefreshActor *)self _amendChangeRecordAndCleanUpAfterDeletedEventWithID:intValue externalID:updatedExternalID database:database];
          }

          else
          {
            v29 = DALoggingwithCategory();
            if (os_log_type_enabled(v29, typea))
            {
              uniqueIdentifier = [v27 uniqueIdentifier];
              oldExternalID = [v27 oldExternalID];
              *buf = 67109634;
              v56 = intValue;
              v57 = 2112;
              v58 = uniqueIdentifier;
              v59 = 2112;
              v60 = oldExternalID;
              v32 = oldExternalID;
              _os_log_impl(&dword_2484B2000, v29, typea, "Moved item has been deleted, but that moved item didn't have a new external ID, so we won't amend the change table for it. (eventID = %i, uniqueIdentier = %@, oldExternalID = %@)", buf, 0x1Cu);
            }
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v43 objects:v61 count:16];
    }

    while (v21);
  }

  v33 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

- (void)_refreshSpecialCalendars
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  calendarsToRefresh = [(MobileCalDAVAccountRefreshActor *)self calendarsToRefresh];
  v4 = [calendarsToRefresh countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v4)
  {

    v6 = 0;
    v7 = 0;
    goto LABEL_25;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0;
  v8 = *v22;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(calendarsToRefresh);
      }

      v10 = *(*(&v21 + 1) + 8 * i);
      if ([v10 isScheduleInbox])
      {
        v11 = v7;
        v12 = v6;
        v7 = v10;
LABEL_9:
        v13 = v10;

        v6 = v12;
        goto LABEL_10;
      }

      v11 = v6;
      v12 = v10;
      if ([v10 isNotification])
      {
        goto LABEL_9;
      }

LABEL_10:
      if (v7 && v6)
      {

LABEL_17:
        [(MobileCalDAVAccountRefreshActor *)self _syncCalendar:v6];
        goto LABEL_18;
      }
    }

    v5 = [calendarsToRefresh countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

  if (v6)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (v7)
  {
    account = [(MobileCalDAVAccountRefreshActor *)self account];
    serverVersion = [account serverVersion];
    supportsAutoSchedule = [serverVersion supportsAutoSchedule];

    if (supportsAutoSchedule)
    {
      [(MobileCalDAVAccountRefreshActor *)self _syncCalendar:v7];
    }

    else
    {
      v17 = DALoggingwithCategory();
      v18 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v17, v18))
      {
        *v20 = 0;
        _os_log_impl(&dword_2484B2000, v17, v18, "Skipping refresh of inbox because this server doesn't support automatic scheduling", v20, 2u);
      }
    }
  }

LABEL_25:
  [(MobileCalDAVAccountRefreshActor *)self _waitForStateTransition];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_refreshRegularCalendars
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    calendarsToRefresh = [(MobileCalDAVAccountRefreshActor *)self calendarsToRefresh];
    *buf = 138412290;
    v19 = calendarsToRefresh;
    _os_log_impl(&dword_2484B2000, v3, v4, "Syncing calendars: %@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  calendarsToRefresh2 = [(MobileCalDAVAccountRefreshActor *)self calendarsToRefresh];
  v7 = [calendarsToRefresh2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(calendarsToRefresh2);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (([v11 isScheduleInbox] & 1) == 0 && (objc_msgSend(v11, "isNotification") & 1) == 0)
        {
          [(MobileCalDAVAccountRefreshActor *)self _syncCalendar:v11];
        }
      }

      v8 = [calendarsToRefresh2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(MobileCalDAVAccountRefreshActor *)self _waitForStateTransition];
  v12 = *MEMORY[0x277D85DE8];
}

- (id)_refreshedCtagForCalendar:(id)calendar
{
  calendarCopy = calendar;
  context = [(MobileCalDAVAccountRefreshActor *)self context];
  isForced = [context isForced];

  if (isForced)
  {
    v7 = 0;
  }

  else
  {
    calendarURL = [calendarCopy calendarURL];
    absoluteString = [calendarURL absoluteString];
    da_appendSlashIfNeeded = [absoluteString da_appendSlashIfNeeded];

    pathsToCTags = [(MobileCalDAVAccountRefreshActor *)self pathsToCTags];
    v7 = [pathsToCTags objectForKeyedSubscript:da_appendSlashIfNeeded];
  }

  return v7;
}

- (id)_refreshedSyncTokenForCalendar:(id)calendar
{
  calendarCopy = calendar;
  context = [(MobileCalDAVAccountRefreshActor *)self context];
  isForced = [context isForced];

  if (isForced)
  {
    v7 = 0;
  }

  else
  {
    calendarURL = [calendarCopy calendarURL];
    absoluteString = [calendarURL absoluteString];
    da_appendSlashIfNeeded = [absoluteString da_appendSlashIfNeeded];

    pathsToSyncTokens = [(MobileCalDAVAccountRefreshActor *)self pathsToSyncTokens];
    v7 = [pathsToSyncTokens objectForKeyedSubscript:da_appendSlashIfNeeded];
  }

  return v7;
}

- (void)_syncCalendar:(id)calendar
{
  v29 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  v5 = calendarCopy;
  if (calendarCopy && [calendarCopy isManagedByServer])
  {
    account = [(MobileCalDAVAccountRefreshActor *)self account];
    serverVersion = [account serverVersion];
    if (([serverVersion supportsAutoSchedule] & 1) == 0 && (objc_msgSend(v5, "isScheduleInbox") & 1) != 0 || objc_msgSend(v5, "isScheduleOutbox"))
    {
    }

    else
    {
      isPoll = [v5 isPoll];

      if ((isPoll & 1) == 0)
      {
        [v5 setNumUploadedElements:0];
        [v5 setNumDownloadedElements:0];
        context = [(MobileCalDAVAccountRefreshActor *)self context];
        changeTracker = [context changeTracker];
        [v5 setChangeTracker:changeTracker];

        v11 = DALoggingwithCategory();
        v12 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v11, v12))
        {
          title = [v5 title];
          *buf = 138412290;
          v28 = title;
          _os_log_impl(&dword_2484B2000, v11, v12, "Starting a calendar sync for %@", buf, 0xCu);
        }

        v14 = objc_alloc(MEMORY[0x277CF6FE8]);
        account2 = [(MobileCalDAVAccountRefreshActor *)self account];
        mainPrincipal = [account2 mainPrincipal];
        v17 = [(MobileCalDAVAccountRefreshActor *)self _refreshedCtagForCalendar:v5];
        v18 = [(MobileCalDAVAccountRefreshActor *)self _refreshedSyncTokenForCalendar:v5];
        v19 = [v14 initWithPrincipal:mainPrincipal calendar:v5 nextCtag:v17 nextSyncToken:v18];

        [v19 setDelegate:self];
        outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
        dispatch_group_enter(outstandingOperationGroup);

        objc_initWeak(buf, v19);
        objc_initWeak(&location, self);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __49__MobileCalDAVAccountRefreshActor__syncCalendar___block_invoke;
        v23[3] = &unk_278F17848;
        objc_copyWeak(&v24, &location);
        objc_copyWeak(&v25, buf);
        [v19 setCompletionBlock:v23];
        outstandingTaskGroups = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
        [outstandingTaskGroups addObject:v19];

        [v19 syncCalendar];
        objc_destroyWeak(&v25);
        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
        objc_destroyWeak(buf);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __49__MobileCalDAVAccountRefreshActor__syncCalendar___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained outstandingTaskGroups];
  v4 = objc_loadWeakRetained((a1 + 40));
  [v3 removeObject:v4];

  v6 = objc_loadWeakRetained((a1 + 32));
  v5 = [v6 outstandingOperationGroup];
  dispatch_group_leave(v5);
}

- (id)_powerLogInfoDictionary
{
  v3 = objc_opt_new();
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  accountID = [account accountID];

  if (accountID)
  {
    accountID2 = [account accountID];
    [v3 setObject:accountID2 forKeyedSubscript:*MEMORY[0x277D03868]];
  }

  accountDescription = [account accountDescription];

  if (accountDescription)
  {
    accountDescription2 = [account accountDescription];
    [v3 setObject:accountDescription2 forKeyedSubscript:*MEMORY[0x277D03870]];
  }

  if (objc_opt_class())
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x277D03860]];
  }

  return v3;
}

- (void)calendarSyncForPrincipal:(id)principal calendar:(id)calendar completedWithError:(id)error
{
  v64 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  errorCopy = error;
  v9 = calendarCopy;
  context = [(MobileCalDAVAccountRefreshActor *)self context];
  [context setShouldSave:{objc_msgSend(v9, "isDirty") | objc_msgSend(context, "shouldSave")}];

  context2 = [(MobileCalDAVAccountRefreshActor *)self context];
  [context2 setNumDownloadedElements:{objc_msgSend(context2, "numDownloadedElements") + objc_msgSend(v9, "numDownloadedElements")}];

  context3 = [(MobileCalDAVAccountRefreshActor *)self context];
  [context3 setNumUploadedElements:{objc_msgSend(context3, "numUploadedElements") + objc_msgSend(v9, "numUploadedElements")}];

  [v9 setChangeTracker:0];
  if (errorCopy)
  {
    v13 = DALoggingwithCategory();
    v14 = MEMORY[0x277D03988];
    v15 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v13, v15))
    {
      calendarURL = [v9 calendarURL];
      *buf = 138412546;
      v61 = calendarURL;
      v62 = 2112;
      v63 = errorCopy;
      _os_log_impl(&dword_2484B2000, v13, v15, "Error refreshing the calendar at %@: %@", buf, 0x16u);
    }

    context4 = [(MobileCalDAVAccountRefreshActor *)self context];
    [context4 addCalendarSyncFailure:errorCopy];

    domain = [errorCopy domain];
    if (![domain isEqualToString:*MEMORY[0x277CF6F80]])
    {
      goto LABEL_11;
    }

    code = [errorCopy code];

    if (code != 1)
    {
      goto LABEL_13;
    }

    if ([v9 didResync])
    {
      context5 = [(MobileCalDAVAccountRefreshActor *)self context];
      [context5 setRetryTime:{objc_msgSend(context5, "retryTime") + 30}];

      context6 = [(MobileCalDAVAccountRefreshActor *)self context];
      retryTime = [context6 retryTime];

      v23 = DALoggingwithCategory();
      v24 = *(v14 + 4);
      v25 = os_log_type_enabled(v23, v24);
      if (retryTime <= 240)
      {
        if (v25)
        {
          *buf = 0;
          _os_log_impl(&dword_2484B2000, v23, v24, "Hit a precondition error on our second bulk upload attempt. Waiting a bit before retrying again", buf, 2u);
        }

        v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:75 userInfo:0];
        context7 = [(MobileCalDAVAccountRefreshActor *)self context];
        [context7 setError:v26];

        domain = [(MobileCalDAVAccountRefreshActor *)self context];
        [domain setShouldRetry:1];
LABEL_11:

        goto LABEL_13;
      }

      if (v25)
      {
        *buf = 0;
        _os_log_impl(&dword_2484B2000, v23, v24, "We've backed off for too long. We're just giving up for now.", buf, 2u);
      }

      v55 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:75 userInfo:0];
      context8 = [(MobileCalDAVAccountRefreshActor *)self context];
      [context8 setError:v55];

      context9 = [(MobileCalDAVAccountRefreshActor *)self context];
      [context9 setShouldRetry:0];

      self->_shouldCancel = 1;
    }

    else
    {
      v53 = DALoggingwithCategory();
      v54 = *(v14 + 4);
      if (os_log_type_enabled(v53, v54))
      {
        *buf = 0;
        _os_log_impl(&dword_2484B2000, v53, v54, "Hit a precondition error while performing a bulk upload of events. Attempting a resync of the calendar", buf, 2u);
      }

      [v9 _forceRefreshNextSync];
    }
  }

  else
  {
    [v9 clearEventChanges];
    [v9 setWasModifiedLocally:0];
  }

LABEL_13:
  v28 = *MEMORY[0x277D03840];
  v29 = PLShouldLogRegisteredEvent();
  v30 = MEMORY[0x277D03858];
  if (v29)
  {
    _powerLogInfoDictionary = [(MobileCalDAVAccountRefreshActor *)self _powerLogInfoDictionary];
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "numDownloadedElements")}];
    v33 = *v30;
    [_powerLogInfoDictionary setObject:v32 forKeyedSubscript:*v30];

    calendarURL2 = [v9 calendarURL];
    absoluteString = [calendarURL2 absoluteString];

    if (absoluteString)
    {
      calendarURL3 = [v9 calendarURL];
      absoluteString2 = [calendarURL3 absoluteString];
      [_powerLogInfoDictionary setObject:absoluteString2 forKeyedSubscript:*MEMORY[0x277D03850]];
    }

    v38 = *MEMORY[0x277D03860];
    v59[0] = *MEMORY[0x277D03870];
    v59[1] = v38;
    v59[2] = *MEMORY[0x277D03868];
    v59[3] = v33;
    [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:4];
    PLLogRegisteredEvent();
  }

  v39 = *MEMORY[0x277D03848];
  if (PLShouldLogRegisteredEvent())
  {
    _powerLogInfoDictionary2 = [(MobileCalDAVAccountRefreshActor *)self _powerLogInfoDictionary];
    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "numUploadedElements")}];
    v42 = *v30;
    [_powerLogInfoDictionary2 setObject:v41 forKeyedSubscript:*v30];

    calendarURL4 = [v9 calendarURL];
    absoluteString3 = [calendarURL4 absoluteString];

    if (absoluteString3)
    {
      calendarURL5 = [v9 calendarURL];
      absoluteString4 = [calendarURL5 absoluteString];
      [_powerLogInfoDictionary2 setObject:absoluteString4 forKeyedSubscript:*MEMORY[0x277D03850]];
    }

    v47 = *MEMORY[0x277D03860];
    v58[0] = *MEMORY[0x277D03870];
    v58[1] = v47;
    v58[2] = *MEMORY[0x277D03868];
    v58[3] = v42;
    [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:4];
    PLLogRegisteredEvent();
  }

  if (!-[MobileCalDAVAccountRefreshActor shouldCancel](self, "shouldCancel") && [v9 needsResync] && (objc_msgSend(v9, "didResync") & 1) == 0)
  {
    v48 = DALoggingwithCategory();
    v49 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v48, v49))
    {
      title = [v9 title];
      *buf = 138412290;
      v61 = title;
      _os_log_impl(&dword_2484B2000, v48, v49, "Calendar %@ requested a resync, so we're going to sync it again", buf, 0xCu);
    }

    [(MobileCalDAVAccountRefreshActor *)self _syncCalendar:v9];
    [v9 setDidResync:1];
  }

  if (RecordCalendarDiagnostics())
  {
    accountSyncDiagnostics = [(MobileCalDAVAccountRefreshActor *)self accountSyncDiagnostics];
    [v9 recordDiagnosticsForAccountSync:accountSyncDiagnostics];
  }

  v52 = *MEMORY[0x277D85DE8];
}

- (void)_gatherAttachmentChanges
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  copyCalStore = [account copyCalStore];

  if (copyCalStore)
  {
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    dbHelper = [account2 dbHelper];
    account3 = [(MobileCalDAVAccountRefreshActor *)self account];
    accountID = [account3 accountID];
    [dbHelper calDatabaseForAccountID:accountID];
    CalDatabaseCopyAttachmentChangesInStore();

    CFRelease(copyCalStore);
  }

  [(MobileCalDAVAccountRefreshActor *)self setEventUIDsWithAttachmentChanges:v3];
  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v10, v11))
  {
    *buf = 134217984;
    v14 = [v3 count];
    _os_log_impl(&dword_2484B2000, v10, v11, "Found %lu events with modified attachments", buf, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_uploadAttachments
{
  _prepareAttachmentsForUpload = [(MobileCalDAVAccountRefreshActor *)self _prepareAttachmentsForUpload];
  if (_prepareAttachmentsForUpload)
  {
    [(MobileCalDAVAccountRefreshActor *)self _uploadAttachments:_prepareAttachmentsForUpload];
  }

  [(MobileCalDAVAccountRefreshActor *)self _waitForStateTransition];
}

- (id)_prepareAttachmentsForUpload
{
  v113 = *MEMORY[0x277D85DE8];
  eventUIDsWithAttachmentChanges = [(MobileCalDAVAccountRefreshActor *)self eventUIDsWithAttachmentChanges];
  v4 = [eventUIDsWithAttachmentChanges count];

  if (v4)
  {
    calendarsToRefresh = [(MobileCalDAVAccountRefreshActor *)self calendarsToRefresh];
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(calendarsToRefresh, "count")}];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v7 = calendarsToRefresh;
    v8 = [v7 countByEnumeratingWithState:&v101 objects:v112 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v102;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v102 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v101 + 1) + 8 * i);
          if ([v12 getCalCalendar])
          {
            v13 = CalCalendarCopyUUID();
            if (v13)
            {
              [v6 setObject:v12 forKeyedSubscript:v13];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v101 objects:v112 count:16];
      }

      while (v9);
    }

    v74 = v6;
    v70 = v7;

    v73 = objc_opt_new();
    v71 = objc_alloc_init(MEMORY[0x277CBEB18]);
    account = [(MobileCalDAVAccountRefreshActor *)self account];
    dbHelper = [account dbHelper];
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    accountID = [account2 accountID];
    [dbHelper calDatabaseForAccountID:accountID];

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    selfCopy = self;
    obj = [(MobileCalDAVAccountRefreshActor *)self eventUIDsWithAttachmentChanges];
    v86 = [obj countByEnumeratingWithState:&v97 objects:v111 count:16];
    if (v86)
    {
      v85 = *v98;
      v18 = *(MEMORY[0x277D03988] + 5);
      v82 = v18;
      type = *(MEMORY[0x277D03988] + 6);
      v78 = *(MEMORY[0x277D03988] + 3);
      do
      {
        v19 = 0;
        do
        {
          if (*v98 != v85)
          {
            objc_enumerationMutation(obj);
          }

          intValue = [*(*(&v97 + 1) + 8 * v19) intValue];
          v21 = CalDatabaseCopyCalendarItemWithRowID();
          if (!v21)
          {
            v25 = DALoggingwithCategory();
            if (os_log_type_enabled(v25, v18))
            {
              *buf = 67109120;
              v107 = intValue;
              _os_log_impl(&dword_2484B2000, v25, v18, "Couldn't find event with UID %i even though it had attachment changes. Maybe it was deleted?", buf, 8u);
            }

            goto LABEL_66;
          }

          v22 = v21;
          v84 = intValue;
          v23 = CalCalendarItemCopyAttachments();
          v24 = objc_opt_new();
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          v25 = v23;
          v26 = [v25 countByEnumeratingWithState:&v93 objects:v110 count:16];
          if (!v26)
          {
            goto LABEL_30;
          }

          v27 = v26;
          v28 = *v94;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v94 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v93 + 1) + 8 * j);
              v31 = CalAttachmentCopyURL();
              if (!v31)
              {
                v32 = CalAttachmentCopyLocalURL();
                if (!v32)
                {
                  continue;
                }

                v31 = v32;
                [v24 addObject:v30];
              }

              CFRelease(v31);
            }

            v27 = [v25 countByEnumeratingWithState:&v93 objects:v110 count:16];
          }

          while (v27);
LABEL_30:

          if ([v24 count])
          {
            v33 = CalCalendarItemCopyCalendar();
            v34 = type;
            if (v33)
            {
              v35 = v33;
              v36 = CalCalendarCopyUUID();
              v37 = [v74 objectForKeyedSubscript:v36];
              v80 = v37;
              if (v37)
              {
                v38 = v37;
                v75 = v36;
                v76 = v35;
                v39 = [DACalDAViCalItem alloc];
                calendarURL = [v38 calendarURL];
                WeakRetained = objc_loadWeakRetained(&selfCopy->_account);
                accountID2 = [WeakRetained accountID];
                v43 = [(DACalDAViCalItem *)v39 initWithCalRecord:v22 inContainer:calendarURL accountID:accountID2];

                serverID = [(DACalDAViCalItem *)v43 serverID];
                p_super = &v43->super;
                if (serverID)
                {
                  v45 = serverID;
                  goto LABEL_48;
                }

                calendarURL2 = [v38 calendarURL];
                filename = [(DACalDAViCalItem *)v43 filename];
                v45 = [calendarURL2 URLByAppendingPathComponent:filename];

                if (v45)
                {
LABEL_48:
                  v52 = [v73 objectForKeyedSubscript:v45];
                  v79 = v45;
                  if (v52)
                  {
                    v53 = MEMORY[0x277CCAC30];
                    v87[0] = MEMORY[0x277D85DD0];
                    v87[1] = 3221225472;
                    v87[2] = __63__MobileCalDAVAccountRefreshActor__prepareAttachmentsForUpload__block_invoke;
                    v87[3] = &unk_278F17938;
                    v54 = v52;
                    v88 = v54;
                    v55 = [v53 predicateWithBlock:v87];
                    [v24 filterUsingPredicate:v55];
                  }

                  else
                  {
                    v54 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v24, "count")}];
                    v89 = 0u;
                    v90 = 0u;
                    v91 = 0u;
                    v92 = 0u;
                    v56 = v24;
                    v57 = [v56 countByEnumeratingWithState:&v89 objects:v105 count:16];
                    if (v57)
                    {
                      v58 = v57;
                      v59 = *v90;
                      do
                      {
                        for (k = 0; k != v58; ++k)
                        {
                          if (*v90 != v59)
                          {
                            objc_enumerationMutation(v56);
                          }

                          v61 = *(*(&v89 + 1) + 8 * k);
                          v62 = CalAttachmentCopyUUID();
                          [v54 addObject:v62];
                        }

                        v58 = [v56 countByEnumeratingWithState:&v89 objects:v105 count:16];
                      }

                      while (v58);
                    }

                    [v73 setObject:v54 forKeyedSubscript:v79];
                    v34 = type;
                  }

                  v36 = v75;
                  v35 = v76;
                  if ([v24 count])
                  {
                    v63 = objc_opt_new();
                    [v63 setCalAttachmentsToUpload:v24];
                    [v63 setItemURL:v79];
                    scheduleTag = [p_super scheduleTag];
                    [v63 setScheduleTag:scheduleTag];

                    syncKey = [p_super syncKey];
                    [v63 setSyncKey:syncKey];

                    [v71 addObject:v63];
                  }

                  else
                  {
                    v63 = DALoggingwithCategory();
                    if (os_log_type_enabled(v63, v34))
                    {
                      *buf = 67109120;
                      v107 = v84;
                      _os_log_impl(&dword_2484B2000, v63, v34, "All attachments to upload for event %i are already pending upload", buf, 8u);
                    }
                  }

                  v18 = v82;
                }

                else
                {
                  v66 = DALoggingwithCategory();
                  v18 = v82;
                  v36 = v75;
                  v35 = v76;
                  v79 = v66;
                  if (os_log_type_enabled(v66, v78))
                  {
                    *buf = 67109120;
                    v107 = v84;
                    _os_log_impl(&dword_2484B2000, v66, v78, "Couldn't get a URL for event %i, so its attachments won't be uploaded", buf, 8u);
                  }
                }

                v48 = p_super;
              }

              else
              {
                v48 = DALoggingwithCategory();
                if (os_log_type_enabled(v48, v78))
                {
                  UID = CalCalendarGetUID();
                  *buf = 67109376;
                  v107 = v84;
                  v108 = 1024;
                  v109 = UID;
                  _os_log_impl(&dword_2484B2000, v48, v78, "event %i has attachments to upload, its calendar (%i) isn't being refreshed so we can't do that right now", buf, 0xEu);
                }

                v18 = v82;
              }

              CFRelease(v35);
            }

            else
            {
              v47 = DALoggingwithCategory();
              if (os_log_type_enabled(v47, v78))
              {
                *buf = 67109120;
                v107 = v84;
                _os_log_impl(&dword_2484B2000, v47, v78, "event %i has attachments to upload, but no calendar, so there's nothing we can do about that.", buf, 8u);
              }

              v18 = v82;
            }
          }

          else
          {
            v46 = DALoggingwithCategory();
            if (os_log_type_enabled(v46, type))
            {
              *buf = 67109120;
              v107 = v84;
              _os_log_impl(&dword_2484B2000, v46, type, "No attachments to upload for event %i", buf, 8u);
            }

            v18 = v82;
            if (CalCalendarItemHasErrorCode())
            {
              CalCalendarItemSetError();
            }
          }

          CFRelease(v22);

LABEL_66:
          ++v19;
        }

        while (v19 != v86);
        v67 = [obj countByEnumeratingWithState:&v97 objects:v111 count:16];
        v86 = v67;
      }

      while (v67);
    }
  }

  else
  {
    v71 = 0;
  }

  v68 = *MEMORY[0x277D85DE8];

  return v71;
}

uint64_t __63__MobileCalDAVAccountRefreshActor__prepareAttachmentsForUpload__block_invoke(uint64_t a1)
{
  v2 = CalAttachmentCopyUUID();
  v3 = [*(a1 + 32) containsObject:v2];
  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) addObject:v2];
  }

  return v3 ^ 1u;
}

- (void)_uploadAttachments:(id)attachments
{
  v20 = *MEMORY[0x277D85DE8];
  attachmentsCopy = attachments;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [attachmentsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(attachmentsCopy);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        calAttachmentsToUpload = [v9 calAttachmentsToUpload];
        itemURL = [v9 itemURL];
        syncKey = [v9 syncKey];
        scheduleTag = [v9 scheduleTag];
        [(MobileCalDAVAccountRefreshActor *)self _uploadAttachments:calAttachmentsToUpload forOwnerURL:itemURL syncKey:syncKey scheduleTag:scheduleTag];
      }

      v6 = [attachmentsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_uploadAttachments:(id)attachments forOwnerURL:(id)l syncKey:(id)key scheduleTag:(id)tag
{
  v67 = *MEMORY[0x277D85DE8];
  attachmentsCopy = attachments;
  lCopy = l;
  keyCopy = key;
  tagCopy = tag;
  v10 = [attachmentsCopy count];
  v11 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v11, v12))
  {
    *buf = 134218754;
    *v66 = v10;
    *&v66[8] = 2114;
    *&v66[10] = lCopy;
    *&v66[18] = 2114;
    *&v66[20] = keyCopy;
    *&v66[28] = 2114;
    *&v66[30] = tagCopy;
    _os_log_impl(&dword_2484B2000, v11, v12, "Uploading (%ld) attachments, owner url = %{public}@, sync key = %{public}@, schedule tag = %{public}@", buf, 0x2Au);
  }

  v51 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v10];
  v50 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v10];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = attachmentsCopy;
  v13 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v13)
  {
    v53 = *v61;
    inTagClass = *MEMORY[0x277CC1F58];
    v48 = *MEMORY[0x277CC1F60];
    v14 = *(MEMORY[0x277D03988] + 3);
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v61 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v60 + 1) + 8 * i);
        v17 = CalAttachmentCopyFilename();
        if (v17)
        {
          v18 = CalAttachmentCopyLocalURLForArchivedData();
          if (v18)
          {
            v59 = 0;
            v19 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v18 options:0 error:&v59];
            v20 = v59;
            if (v19)
            {
              if (CalAttachmentIsAutoArchived())
              {
                [v17 stringByAppendingPathExtension:@"zip"];
                pathExtension = v17;
                v17 = v22 = @"application/zipx-mac-auto-archive=yes";;
              }

              else
              {
                pathExtension = [v18 pathExtension];
                PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(inTagClass, pathExtension, 0);
                v28 = UTTypeCopyPreferredTagWithClass(PreferredIdentifierForTag, v48);
                if (v28)
                {
                  v22 = v28;
                }

                else
                {
                  v22 = @"application/octet-stream";
                }
              }

              [v51 setObject:v19 forKey:v17];
              [v50 setObject:v22 forKey:v17];
            }

            else
            {
              v22 = DALoggingwithCategory();
              if (os_log_type_enabled(v22, v14))
              {
                UID = CalAttachmentGetUID();
                *buf = 67109890;
                *v66 = UID;
                *&v66[4] = 2112;
                *&v66[6] = v17;
                *&v66[14] = 2112;
                *&v66[16] = v18;
                *&v66[24] = 2112;
                *&v66[26] = v20;
                _os_log_impl(&dword_2484B2000, v22, v14, "Unable to load file data for attachment %i (%@) from path %@. (%@) Attachment will not be uploaded.", buf, 0x26u);
              }
            }

            CFRelease(v18);
          }

          else
          {
            v24 = DALoggingwithCategory();
            if (os_log_type_enabled(v24, v14))
            {
              v25 = CalAttachmentGetUID();
              *buf = 67109378;
              *v66 = v25;
              *&v66[4] = 2112;
              *&v66[6] = v17;
              _os_log_impl(&dword_2484B2000, v24, v14, "Attachment %i (%@) has no local URL and will not be uploaded.", buf, 0x12u);
            }
          }
        }

        else
        {
          v17 = DALoggingwithCategory();
          if (os_log_type_enabled(v17, v14))
          {
            v23 = CalAttachmentGetUID();
            *buf = 67109120;
            *v66 = v23;
            _os_log_impl(&dword_2484B2000, v17, v14, "Attachment %i has no filename and will not be uploaded.", buf, 8u);
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v13);
  }

  if ([v51 count] && objc_msgSend(v50, "count") && (v29 = objc_msgSend(v51, "count"), v29 == objc_msgSend(v50, "count")))
  {
    v30 = objc_alloc(MEMORY[0x277CF6FA8]);
    account = [(MobileCalDAVAccountRefreshActor *)self account];
    mainPrincipal = [account mainPrincipal];
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    mainPrincipal2 = [account2 mainPrincipal];
    taskManager = [mainPrincipal2 taskManager];
    v36 = [v30 initWithAccountInfoProvider:mainPrincipal resourceURL:lCopy attachments:v51 contentTypes:v50 taskManager:taskManager];

    [v36 setDelegate:self];
    if (keyCopy && [keyCopy length])
    {
      [v36 setPreviousETag:keyCopy];
    }

    if (tagCopy && [tagCopy length])
    {
      [v36 setPreviousScheduleTag:tagCopy];
    }

    outstandingOperationGroup = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
    dispatch_group_enter(outstandingOperationGroup);

    objc_initWeak(buf, vala);
    objc_initWeak(&location, v36);
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __86__MobileCalDAVAccountRefreshActor__uploadAttachments_forOwnerURL_syncKey_scheduleTag___block_invoke;
    v54[3] = &unk_278F178C0;
    objc_copyWeak(&v56, buf);
    objc_copyWeak(&v57, &location);
    v55 = obj;
    [v36 setCompletionBlock:v54];
    outstandingTaskGroups = [vala outstandingTaskGroups];
    [outstandingTaskGroups addObject:v36];

    [v36 startTaskGroup];
    objc_destroyWeak(&v57);
    objc_destroyWeak(&v56);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else
  {
    v36 = DALoggingwithCategory();
    v39 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v36, v39))
    {
      v40 = [v51 count];
      v41 = [v50 count];
      *buf = 134218240;
      *v66 = v40;
      *&v66[8] = 2048;
      *&v66[10] = v41;
      _os_log_impl(&dword_2484B2000, v36, v39, "Not actually uploading any attachments (gathered %lu attachments with %lu types)", buf, 0x16u);
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

void __86__MobileCalDAVAccountRefreshActor__uploadAttachments_forOwnerURL_syncKey_scheduleTag___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleAttachmentUploadsComplete:v3 attachments:*(a1 + 32)];

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 outstandingTaskGroups];
  v6 = objc_loadWeakRetained((a1 + 48));
  [v5 removeObject:v6];

  v8 = objc_loadWeakRetained((a1 + 40));
  v7 = [v8 outstandingOperationGroup];
  dispatch_group_leave(v7);
}

- (void)_handleAttachmentUploadsComplete:(id)complete attachments:(id)attachments
{
  v54 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  attachmentsCopy = attachments;
  v37 = completeCopy;
  error = [completeCopy error];
  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v8, v9))
  {
    *buf = 134218498;
    v43 = v37;
    v44 = 2048;
    v45 = [attachmentsCopy count];
    v46 = 2112;
    v47 = error;
    _os_log_impl(&dword_2484B2000, v8, v9, "Attachment upload %p complete for %lu attachments with error = %@", buf, 0x20u);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = attachmentsCopy;
  v11 = [v10 countByEnumeratingWithState:&v38 objects:v53 count:16];
  if (v11)
  {
    v12 = v11;
    v35 = v9;
    v13 = v10;
    v14 = 0;
    v15 = *v39;
    v36 = 1;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v38 + 1) + 8 * i);
        if (!v14)
        {
          v18 = *(*(&v38 + 1) + 8 * i);
          v14 = CalAttachmentCopyOwner();
        }

        v19 = CalAttachmentCopyFilename();
        if (CalAttachmentIsAutoArchived())
        {
          v20 = [v19 stringByAppendingPathExtension:@"zip"];

          v19 = v20;
        }

        if (v19)
        {
          filenamesToServerLocation = [v37 filenamesToServerLocation];
          v22 = [filenamesToServerLocation objectForKeyedSubscript:v19];

          v23 = [MEMORY[0x277CBEBC0] URLWithString:v22];
          if (v23)
          {
            CalAttachmentSetURL();
          }

          else
          {
            v36 = 0;
          }
        }
      }

      v12 = [v13 countByEnumeratingWithState:&v38 objects:v53 count:16];
    }

    while (v12);
    v10 = v13;

    if (v14)
    {
      if (v36)
      {
        v24 = v35;
        if (CalCalendarItemHasErrorCode())
        {
          CalCalendarItemSetError();
        }

        goto LABEL_30;
      }

      domain = [error domain];
      v24 = v35;
      if ([domain isEqualToString:*MEMORY[0x277CFDB80]])
      {
        code = [error code];

        if (code != 507)
        {
LABEL_30:
          updatedETag = [v37 updatedETag];
          updatedScheduleTag = [v37 updatedScheduleTag];
          if (updatedETag)
          {
            v31 = CalCalendarItemCopyExternalID();
            CalCalendarItemSetExternalModificationTag();
            if (updatedScheduleTag)
            {
              CalCalendarItemSetExternalScheduleID();
            }

            v32 = DALoggingwithCategory();
            if (os_log_type_enabled(v32, v24))
            {
              *buf = 134218754;
              v43 = v37;
              v44 = 2114;
              v45 = updatedETag;
              v46 = 2114;
              v47 = updatedScheduleTag;
              v48 = 2114;
              v49 = v31;
              _os_log_impl(&dword_2484B2000, v32, v24, "Setting updated etag and schedule tag if needed for event due to completed attachment upload %p, etag = %{public}@, schedule tag = %{public}@, event external id = %{public}@", buf, 0x2Au);
            }
          }

          else
          {
            v31 = DALoggingwithCategory();
            v33 = *(MEMORY[0x277D03988] + 3);
            if (os_log_type_enabled(v31, v33))
            {
              *buf = 134218242;
              v43 = v37;
              v44 = 2114;
              v45 = updatedScheduleTag;
              _os_log_impl(&dword_2484B2000, v31, v33, "Could not get updated etag for completed attachment upload %p. Updated schedule tag = %{public}@", buf, 0x16u);
            }
          }

          CFRelease(v14);
          goto LABEL_39;
        }

        v51 = *MEMORY[0x277CF7718];
        v50 = *MEMORY[0x277CF7720];
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
        v52 = v29;
        domain = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];

        CalCalendarItemSetErrorCodeAndUserInfo();
      }

      goto LABEL_30;
    }
  }

  else
  {
  }

  updatedETag = DALoggingwithCategory();
  v26 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(updatedETag, v26))
  {
    *buf = 134217984;
    v43 = v37;
    _os_log_impl(&dword_2484B2000, updatedETag, v26, "Could not get an event for completed attachment upload %p.", buf, 0xCu);
  }

LABEL_39:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_downloadAttachments
{
  v16 = *MEMORY[0x277D85DE8];
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  serverVersion = [account serverVersion];
  requiresOpeningAttachmentAsLink = [serverVersion requiresOpeningAttachmentAsLink];

  if (requiresOpeningAttachmentAsLink)
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v6, v7))
    {
      account2 = [(MobileCalDAVAccountRefreshActor *)self account];
      account3 = [(MobileCalDAVAccountRefreshActor *)self account];
      serverVersion2 = [account3 serverVersion];
      v12 = 138543618;
      v13 = account2;
      v14 = 2114;
      v15 = serverVersion2;
      _os_log_impl(&dword_2484B2000, v6, v7, "Not downloading attachments because the account is requires opening attachment as link %{public}@, %{public}@", &v12, 0x16u);
    }
  }

  else
  {
    [(MobileCalDAVAccountRefreshActor *)self _beginAttachmentDownloads];
  }

  [(MobileCalDAVAccountRefreshActor *)self _waitForStateTransition];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_beginAttachmentDownloads
{
  v38 = *MEMORY[0x277D85DE8];
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  copyCalStore = [account copyCalStore];

  if (copyCalStore)
  {
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    dbHelper = [account2 dbHelper];
    account3 = [(MobileCalDAVAccountRefreshActor *)self account];
    accountID = [account3 accountID];
    [dbHelper calDatabaseForAccountID:accountID];
    v9 = CalDatabaseCopyOfAllAttachmentFilesInStoreWithoutLocalFilesAndDownloadAttemptsBelow();

    if (v9)
    {
      cf = copyCalStore;
      Count = CFArrayGetCount(v9);
      account4 = [(MobileCalDAVAccountRefreshActor *)self account];
      backingAccount = [account4 backingAccount];
      principalURL = [backingAccount principalURL];

      if (Count >= 1)
      {
        v13 = 0;
        type = *(MEMORY[0x277D03988] + 6);
        do
        {
          CFArrayGetValueAtIndex(v9, v13);
          v14 = CalAttachmentFileCopyUUID();
          DownloadTries = CalAttachmentFileGetDownloadTries();
          v16 = CalAttachmentFileCopyDownloadStart();
          [v16 timeIntervalSinceNow];
          if (DownloadTries <= 4 && (!v16 || v17 > 0.0 || _beginAttachmentDownloads_delayBeforeAutoDownloading[DownloadTries] + round(_beginAttachmentDownloads_delayBeforeAutoDownloading[DownloadTries] * (vcvtd_n_f64_u64([v14 hash], 0x40uLL) * 0.1)) <= -v17))
          {
            v18 = CalAttachmentFileCopyURL();
            v19 = [MEMORY[0x277CF7768] attachmentURL:v18 matchesServerURL:principalURL];
            v20 = DALoggingwithCategory();
            v21 = os_log_type_enabled(v20, type);
            if (v19)
            {
              if (v21)
              {
                *buf = 138543362;
                v35 = v14;
                _os_log_impl(&dword_2484B2000, v20, type, "Kicking off a download of attachment with uuid %{public}@", buf, 0xCu);
              }

              context = [[MobileCalDAVAccountRefreshActorAttachmentDownloadDelegate alloc] initWithAttachmentUUID:v14];
              [(MobileCalDAVAccountRefreshActorAttachmentDownloadDelegate *)context beginDownload];
              account5 = [(MobileCalDAVAccountRefreshActor *)self account];
              backingAccount2 = [account5 backingAccount];
              v25 = [backingAccount2 beginDownloadingAttachmentWithUUID:v14 consumer:context];
            }

            else
            {
              if (v21)
              {
                *buf = 138543618;
                v35 = v14;
                v36 = 2112;
                v37 = v18;
                _os_log_impl(&dword_2484B2000, v20, type, "Attachment with uuid %{public}@ cannot be auto-downloaded because the attachment URL hostname doesn't match the calendar server hostname. (%@)", buf, 0x16u);
              }

              CalAttachmentFileSetDownloadTries();
              context = [(MobileCalDAVAccountRefreshActor *)self context];
              [(MobileCalDAVAccountRefreshActorAttachmentDownloadDelegate *)context setShouldSave:1];
            }
          }

          ++v13;
        }

        while (Count != v13);
      }

      CFRelease(cf);
      CFRelease(v9);
    }

    else
    {
      v28 = DALoggingwithCategory();
      v29 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v28, v29))
      {
        *buf = 0;
        _os_log_impl(&dword_2484B2000, v28, v29, "Unable to get attachments without local files; won't be able to download attachments.", buf, 2u);
      }

      CFRelease(copyCalStore);
    }
  }

  else
  {
    v26 = DALoggingwithCategory();
    v27 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v26, v27))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v26, v27, "Unable to get store; won't be able to download attachments.", buf, 2u);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_calendarCollectionsWereRefreshed
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    account = [(MobileCalDAVAccountRefreshActor *)self account];
    accountDescription = [account accountDescription];
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    publicDescription = [account2 publicDescription];
    v24 = 138412546;
    v25 = accountDescription;
    v26 = 2114;
    v27 = publicDescription;
    _os_log_impl(&dword_2484B2000, v3, v4, "Calendar collections were refreshed for account %@ (%{public}@)", &v24, 0x16u);
  }

  account3 = [(MobileCalDAVAccountRefreshActor *)self account];
  mainPrincipal = [account3 mainPrincipal];
  supportsSyncToken = [mainPrincipal supportsSyncToken];

  if (supportsSyncToken)
  {
    account4 = [(MobileCalDAVAccountRefreshActor *)self account];
    mainPrincipal2 = [account4 mainPrincipal];
    eventFilterStartDate = [mainPrincipal2 eventFilterStartDate];

    if (eventFilterStartDate)
    {
      v15 = objc_alloc(MEMORY[0x277CBEA80]);
      v16 = [v15 initWithCalendarIdentifier:*MEMORY[0x277CBE650]];
      localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
      [v16 setTimeZone:localTimeZone];

      v18 = [v16 dateFromComponents:eventFilterStartDate];
      account5 = [(MobileCalDAVAccountRefreshActor *)self account];
      copyCalStore = [account5 copyCalStore];

      v21 = DALoggingwithCategory();
      if (os_log_type_enabled(v21, v4))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_2484B2000, v21, v4, "Cleaning out old calendar items", &v24, 2u);
      }

      v22 = DALoggingwithCategory();
      if (os_log_type_enabled(v22, v4))
      {
        v24 = 138412290;
        v25 = v18;
        _os_log_impl(&dword_2484B2000, v22, v4, "Removing events older than %@", &v24, 0xCu);
      }

      CalStoreRemoveItemsOfTypeOlderThanDateInStore();
      if (copyCalStore)
      {
        CFRelease(copyCalStore);
      }
    }
  }

  [(MobileCalDAVAccountRefreshActor *)self _cleanUpOrphanedPreferredUserAddressesPerCalendar];
  [(MobileCalDAVAccountRefreshActor *)self _sendResultToAccount];
  v23 = *MEMORY[0x277D85DE8];
}

- (void)_cleanUpOrphanedPreferredUserAddressesPerCalendar
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  mainPrincipal = [account mainPrincipal];

  calendarUserAddressesPerCalendar = [mainPrincipal calendarUserAddressesPerCalendar];
  if ([calendarUserAddressesPerCalendar count])
  {
    v18 = v3;
    _guidsOfExistingCalendars = [(MobileCalDAVAccountRefreshActor *)self _guidsOfExistingCalendars];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v17 = calendarUserAddressesPerCalendar;
    v8 = calendarUserAddressesPerCalendar;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      v12 = *(MEMORY[0x277D03988] + 5);
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if (([_guidsOfExistingCalendars containsObject:{v14, v17}] & 1) == 0)
          {
            [mainPrincipal removePreferredCalendarUserAddressesForCalendarWithIdentifier:v14];
            v15 = DALoggingwithCategory();
            if (os_log_type_enabled(v15, v12))
            {
              *buf = 138543362;
              v24 = v14;
              _os_log_impl(&dword_2484B2000, v15, v12, "Removing preferred calendar user addresses for calendar no longer in local store (%{public}@)", buf, 0xCu);
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v10);
    }

    calendarUserAddressesPerCalendar = v17;
    v3 = v18;
  }

  objc_autoreleasePoolPop(v3);
  v16 = *MEMORY[0x277D85DE8];
}

- (id)_guidsOfExistingCalendars
{
  v28 = *MEMORY[0x277D85DE8];
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  copyCalStore = [account copyCalStore];

  if (copyCalStore)
  {
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    dbHelper = [account2 dbHelper];
    account3 = [(MobileCalDAVAccountRefreshActor *)self account];
    accountID = [account3 accountID];
    [dbHelper calDatabaseForAccountID:accountID];

    v9 = CalDatabaseCopyOfAllCalendarsInStore();
    v10 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v9, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          v17 = CalCalendarCopyExternalIdentificationTag();
          if (v17)
          {
            [v10 addObject:{v17, v22}];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v13);
    }

    CFRelease(copyCalStore);
    v18 = [v10 copy];
  }

  else
  {
    v11 = DALoggingwithCategory();
    v19 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v11, *(MEMORY[0x277D03988] + 3)))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v11, v19, "Failed to get a store. Will not clean up preferred user addresses per calendar", buf, 2u);
    }

    v18 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)_sendResultToAccount
{
  OUTLINED_FUNCTION_0_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateDefaultCalendarIfNeededWithDatabase:(CalDatabase *)database
{
  v31 = *MEMORY[0x277D85DE8];
  account = [(MobileCalDAVAccountRefreshActor *)self account];
  mainPrincipal = [account mainPrincipal];

  defaultCalendarURL = [mainPrincipal defaultCalendarURL];
  if (defaultCalendarURL)
  {
    account2 = [(MobileCalDAVAccountRefreshActor *)self account];
    copyCalStore = [account2 copyCalStore];

    if (copyCalStore)
    {
      path = [defaultCalendarURL path];
      da_appendSlashIfNeeded = [path da_appendSlashIfNeeded];

      v11 = CalDatabaseCopyCalendarWithExternalIDInStore();
      if (!v11)
      {
LABEL_6:
        CFRelease(copyCalStore);

        goto LABEL_17;
      }

      v12 = v11;
      if (CalCalendarIsDefaultCalendarForStore())
      {
        CFRelease(v12);
        goto LABEL_6;
      }

      v25 = da_appendSlashIfNeeded;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = CalStoreCopyCalendars();
      v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v27;
        do
        {
          v17 = 0;
          do
          {
            if (*v27 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v26 + 1) + 8 * v17);
            if (CalCalendarIsDefaultCalendarForStore())
            {
              CalCalendarSetDefaultCalendarForStore();
            }

            ++v17;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v15);
      }

      CalCalendarSetDefaultCalendarForStore();
      CFRelease(v12);
      CFRelease(copyCalStore);

      context = [(MobileCalDAVAccountRefreshActor *)self context];
      [context setShouldSave:1];
    }
  }

LABEL_17:
  if (self->_didForceDefaultCalendarRefetch || (-[MobileCalDAVAccountRefreshActor account](self, "account"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 haveForcedDefaultCalendarRefetch], v20, defaultCalendarURL) && (v21 & 1) == 0)
  {
    account3 = [(MobileCalDAVAccountRefreshActor *)self account];
    [account3 setHaveForcedDefaultCalendarRefetch:1];

    context2 = [(MobileCalDAVAccountRefreshActor *)self context];
    [context2 setShouldSaveAccounts:1];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)needsRemindersSync
{
  if ([(MobileCalDAVAccountRefreshActor *)self refreshFoundUpdatedTaskContainer]|| [(MobileCalDAVAccountRefreshActor *)self refreshFoundUpdatedSpecialCalendar])
  {
    return 1;
  }

  return [(MobileCalDAVAccountRefreshActor *)self refreshFoundDeletedContainerURL];
}

- (MobileCalDAVAccount)account
{
  WeakRetained = objc_loadWeakRetained(&self->_account);

  return WeakRetained;
}

void __58__MobileCalDAVAccountRefreshActor__waitForStateTransition__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 40) object:*v0 file:@"MobileCalDAVAccountRefreshActor.m" lineNumber:264 description:@"There should not be any active task groups at a state transition"];
}

void __58__MobileCalDAVAccountRefreshActor__waitForStateTransition__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 40) object:*v0 file:@"MobileCalDAVAccountRefreshActor.m" lineNumber:265 description:@"There should not be any active tasks at a state transition"];
}

- (void)refreshWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end