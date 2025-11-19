@interface MobileCalDAVAccountRefreshActor
- (BOOL)_amendChangeRecordAndCleanUpAfterDeletedEventWithID:(int)a3 externalID:(id)a4 database:(CalDatabase *)a5;
- (BOOL)_checkForNewOrMovedItemsDeletedSinceSyncStartedInCalendars:(id)a3 database:(CalDatabase *)a4 moves:(id)a5;
- (BOOL)_cleanUpDuplicateCalendar:(id)a3 ofCalendar:(id)a4;
- (BOOL)_refreshShouldContinue;
- (BOOL)_sendMoveForItem:(id)a3;
- (BOOL)calendarRefreshShouldRetryMkCalendarForPrincipal:(id)a3 calendar:(id)a4 error:(id)a5;
- (BOOL)needsRemindersSync;
- (CalDiagAccountSync)accountSyncDiagnostics;
- (MobileCalDAVAccount)account;
- (MobileCalDAVAccountRefreshActor)initWithAccount:(id)a3 context:(id)a4;
- (id)_guidsOfExistingCalendars;
- (id)_powerLogInfoDictionary;
- (id)_prepareAttachmentsForUpload;
- (id)_refreshedCtagForCalendar:(id)a3;
- (id)_refreshedSyncTokenForCalendar:(id)a3;
- (void)_beginAttachmentDownloads;
- (void)_calendarCollectionsWereRefreshed;
- (void)_cleanUpDuplicateCalendars;
- (void)_cleanUpOrphanedPreferredUserAddressesPerCalendar;
- (void)_clearMoveChange:(id)a3;
- (void)_continuePrincipalRefresh;
- (void)_downloadAttachments;
- (void)_finishMoveForItemWithID:(int)a3 withEtag:(id)a4 scheduleTag:(id)a5;
- (void)_gatherAttachmentChanges;
- (void)_handleAttachmentUploadsComplete:(id)a3 attachments:(id)a4;
- (void)_handleMoveTaskComplete:(id)a3 moveItem:(id)a4;
- (void)_propFindForNewEtagFollowingMoveOfItem:(int)a3;
- (void)_refreshAccountProperties;
- (void)_refreshCalendarProperties;
- (void)_refreshDelegateAccountProperties;
- (void)_refreshRegularCalendars;
- (void)_refreshSpecialCalendars;
- (void)_saveMoveChange:(id)a3;
- (void)_sendMoveTasks;
- (void)_sendResultToAccount;
- (void)_syncCalendar:(id)a3;
- (void)_teardownAllOutstandingOperations;
- (void)_updateDefaultCalendarIfNeededWithDatabase:(CalDatabase *)a3;
- (void)_uploadAttachments;
- (void)_uploadAttachments:(id)a3;
- (void)_uploadAttachments:(id)a3 forOwnerURL:(id)a4 syncKey:(id)a5 scheduleTag:(id)a6;
- (void)_waitForStateTransition;
- (void)calendarRefreshForPrincipal:(id)a3 completedWithNewCTags:(id)a4 newSyncTokens:(id)a5 calendarHomeSyncToken:(id)a6 updatedCalendars:(id)a7 error:(id)a8;
- (void)calendarRefreshFoundUpdatedContainerWithIgnoredEntityType:(id)a3;
- (void)calendarRefreshFoundUpdatedSpecialContainer:(id)a3;
- (void)calendarRefreshWillSendCalendarDeletes:(id)a3;
- (void)calendarSyncForPrincipal:(id)a3 calendar:(id)a4 completedWithError:(id)a5;
- (void)cancelWithCompletion:(id)a3;
- (void)dealloc;
- (void)delegateRefreshForPrincipal:(id)a3 completedWithDelegateUserInfo:(id)a4 error:(id)a5;
- (void)propertyRefreshForPrincipal:(id)a3 completedWithError:(id)a4;
- (void)refreshWithCompletion:(id)a3;
- (void)teardown;
@end

@implementation MobileCalDAVAccountRefreshActor

- (MobileCalDAVAccountRefreshActor)initWithAccount:(id)a3 context:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
      v13 = [(DATransaction *)v8->_transaction transactionId];
      *buf = 138543362;
      v24 = v13;
      _os_log_impl(&dword_2484B2000, v11, v12, "DATransaction starting, ID: %{public}@", buf, 0xCu);
    }

    [(MobileCalDAVAccountRefreshActor *)v8 setAccount:v6];
    [(MobileCalDAVAccountRefreshActor *)v8 setContext:v7];
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
    v18 = [v7 isForced];
    v19 = "NO";
    if (v18)
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
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_teardownAllOutstandingOperations
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
  v4 = [v3 copy];

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

  v10 = [(MobileCalDAVAccountRefreshActor *)self outstandingTasks];
  v11 = [v10 copy];

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

- (void)cancelWithCompletion:(id)a3
{
  v4 = a3;
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

  v7 = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
  if ([v7 count])
  {

LABEL_6:
    [(MobileCalDAVAccountRefreshActor *)self setCancelCompletionBlock:v4];
    [(MobileCalDAVAccountRefreshActor *)self _teardownAllOutstandingOperations];
    goto LABEL_7;
  }

  v8 = [(MobileCalDAVAccountRefreshActor *)self outstandingTasks];
  v9 = [v8 count];

  [(MobileCalDAVAccountRefreshActor *)self setCancelCompletionBlock:v4];
  [(MobileCalDAVAccountRefreshActor *)self _teardownAllOutstandingOperations];
  if (!v9)
  {
    v10 = DALoggingwithCategory();
    if (os_log_type_enabled(v10, v6))
    {
      *v12 = 0;
      _os_log_impl(&dword_2484B2000, v10, v6, "There weren't any outstanding tasks, so we're going to call our cancel completion block now.", v12, 2u);
    }

    v11 = [(MobileCalDAVAccountRefreshActor *)self cancelCompletionBlock];
    v11[2]();

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

  v6 = [(MobileCalDAVAccountRefreshActor *)self account];
  v7 = [v6 shouldFailAllTasks];

  if (v7)
  {
    v8 = DALoggingwithCategory();
    v9 = *(v4 + 4);
    if (os_log_type_enabled(v8, v9))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_2484B2000, v8, v9, "Ignoring calendar refresh task because we have no password.", &v20, 2u);
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:63 userInfo:0];
    v11 = [(MobileCalDAVAccountRefreshActor *)self context];
    [v11 setError:v10];
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
    v15 = [(MobileCalDAVAccountRefreshActor *)self context];
    v16 = [v15 error];

    if (!v16)
    {
      result = 1;
      goto LABEL_8;
    }

    v10 = DALoggingwithCategory();
    v17 = *(v4 + 4);
    if (os_log_type_enabled(v10, v17))
    {
      v18 = [(MobileCalDAVAccountRefreshActor *)self context];
      v19 = [v18 error];
      v20 = 138412290;
      v21 = v19;
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
    v6 = [(MobileCalDAVAccountRefreshActor *)self state];
    v7 = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
    v8 = [v7 count];
    v9 = [(MobileCalDAVAccountRefreshActor *)self outstandingTasks];
    *buf = 67109632;
    v19 = v6;
    v20 = 2048;
    v21 = v8;
    v22 = 2048;
    v23 = [v9 count];
    _os_log_impl(&dword_2484B2000, v4, v5, "Waiting to make state transition from state %d with %lu outstanding task groups and %lu outstanding tasks", buf, 0x1Cu);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __58__MobileCalDAVAccountRefreshActor__waitForStateTransition__block_invoke;
  v17[3] = &unk_278F177F8;
  v17[4] = self;
  v17[5] = a2;
  v10 = MEMORY[0x24C1D0520](v17);
  v11 = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
  v12 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__MobileCalDAVAccountRefreshActor__waitForStateTransition__block_invoke_2;
  block[3] = &unk_278F17820;
  v16 = v10;
  v13 = v10;
  dispatch_group_notify(v11, v12, block);

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

- (void)refreshWithCompletion:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(MobileCalDAVAccountRefreshActor *)self refreshing])
  {
    [MobileCalDAVAccountRefreshActor refreshWithCompletion:];
  }

  [(MobileCalDAVAccountRefreshActor *)self setRefreshing:1];
  [(MobileCalDAVAccountRefreshActor *)self setCompletionBlock:v4];

  self->_didForceDefaultCalendarRefetch = 0;
  v5 = [(MobileCalDAVAccountRefreshActor *)self account];
  v6 = [v5 shouldFailAllTasks];

  if (v6)
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v7, v8, "Ignoring calendar refresh task because we have no password.", buf, 2u);
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:63 userInfo:0];
    v10 = [(MobileCalDAVAccountRefreshActor *)self context];
    [v10 setError:v9];

    [(MobileCalDAVAccountRefreshActor *)self _sendResultToAccount];
    goto LABEL_28;
  }

  v11 = [(MobileCalDAVAccountRefreshActor *)self context];
  v12 = [v11 isDisabledAccount];

  if (!v12)
  {
    v14 = [(MobileCalDAVAccountRefreshActor *)self context];
    v15 = [v14 isCalendarsOnly];

    if (v15)
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

    v19 = [(MobileCalDAVAccountRefreshActor *)self account];
    if (([v19 needsAccountPropertyRefresh] & 1) == 0)
    {
      v20 = [(MobileCalDAVAccountRefreshActor *)self account];
      v21 = [v20 mainPrincipal];
      if (([v21 needsDefaultTimedAlarmUpdate] & 1) == 0)
      {
        v22 = [(MobileCalDAVAccountRefreshActor *)self account];
        v23 = [v22 mainPrincipal];
        if (([v23 needsDefaultAllDayAlarmUpdate] & 1) == 0)
        {
          v24 = [(MobileCalDAVAccountRefreshActor *)self account];
          v25 = [v24 mainPrincipal];
          v26 = [v25 calendarHomeURL];
          if (v26)
          {
            v27 = v26;
            v28 = [(MobileCalDAVAccountRefreshActor *)self account];
            v39 = [v28 mainPrincipal];
            v38 = [v39 preferredCalendarUserAddresses];
            if ([v38 count])
            {
              v36 = [(MobileCalDAVAccountRefreshActor *)self account];
              v29 = [v36 searchPropertySet];
              if (v29)
              {
                v34 = v29;
                v33 = [(MobileCalDAVAccountRefreshActor *)self account];
                v32 = [v33 serverVersion];
                [v32 type];
                v30 = v35 = v28;
                v37 = [v30 isEqualToString:*MEMORY[0x277CF70A8]];

                v28 = v35;
                v29 = v34;
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

  v5 = [(MobileCalDAVAccountRefreshActor *)self account];
  v6 = [v5 copyCalStore];

  if (v6)
  {
    v7 = [(MobileCalDAVAccountRefreshActor *)self account];
    v8 = [v7 mainPrincipal];
    [v8 updatePropertiesFromCalStore:v6];

    CFRelease(v6);
  }

  v9 = objc_alloc(MEMORY[0x277CF6FA0]);
  v10 = [(MobileCalDAVAccountRefreshActor *)self account];
  v11 = [v10 mainPrincipal];
  v12 = [v9 initWithPrincipal:v11];

  v13 = [(MobileCalDAVAccountRefreshActor *)self account];
  v14 = [v13 mainPrincipal];
  [v12 setFetchPrincipalSearchProperties:{objc_msgSend(v14, "shouldRefreshPrincipalSearchProperties")}];

  [v12 setDelegate:self];
  v15 = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
  dispatch_group_enter(v15);

  objc_initWeak(buf, v12);
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__MobileCalDAVAccountRefreshActor__refreshAccountProperties__block_invoke;
  v17[3] = &unk_278F17848;
  objc_copyWeak(&v18, &location);
  objc_copyWeak(&v19, buf);
  [v12 setCompletionBlock:v17];
  v16 = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
  [v16 addObject:v12];

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

- (void)propertyRefreshForPrincipal:(id)a3 completedWithError:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = DALoggingwithCategory();
  v9 = v8;
  if (v7)
  {
    v10 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v8, v10))
    {
      v20 = 138412290;
      v21 = v7;
      _os_log_impl(&dword_2484B2000, v9, v10, "Error refreshing properties for principal: %@", &v20, 0xCu);
    }

    v11 = [(MobileCalDAVAccountRefreshActor *)self context];
    [v11 setError:v7];
  }

  else
  {
    v12 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v8, v12))
    {
      v13 = [v6 fullName];
      v14 = [v6 account];
      v15 = [v14 accountDescription];
      v16 = [v6 account];
      v17 = [v16 publicDescription];
      v20 = 138412802;
      v21 = v13;
      v22 = 2112;
      v23 = v15;
      v24 = 2114;
      v25 = v17;
      _os_log_impl(&dword_2484B2000, v9, v12, "Properties were refreshed for principal %@ on account %@ (%{public}@)", &v20, 0x20u);
    }

    [v6 setShouldRefreshPrincipalSearchProperties:0];
    v18 = [(MobileCalDAVAccountRefreshActor *)self account];
    [v18 setNeedsAccountPropertyRefresh:0];

    v11 = [(MobileCalDAVAccountRefreshActor *)self context];
    [v11 setShouldSaveAccounts:{objc_msgSend(v6, "isDirty") | objc_msgSend(v11, "shouldSaveAccounts")}];
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

  v6 = [(MobileCalDAVAccountRefreshActor *)self account];
  v7 = [v6 serverVersion];
  v8 = [v7 supportsCalendarProxy];

  if (v8)
  {
    v9 = [CalDAVAccountDelegatesRefreshOperation alloc];
    v10 = [(MobileCalDAVAccountRefreshActor *)self account];
    v11 = [v10 mainPrincipal];
    v12 = [(CalDAVOperation *)v9 initWithPrincipal:v11];

    [(CalDAVAccountDelegatesRefreshOperation *)v12 setMdelegate:self];
    v13 = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
    dispatch_group_enter(v13);

    objc_initWeak(buf, v12);
    objc_initWeak(&location, self);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __68__MobileCalDAVAccountRefreshActor__refreshDelegateAccountProperties__block_invoke;
    v21[3] = &unk_278F17848;
    objc_copyWeak(&v22, &location);
    objc_copyWeak(&v23, buf);
    [(CoreDAVTaskGroup *)v12 setCompletionBlock:v21];
    v14 = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
    [v14 addObject:v12];

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
      v17 = [(MobileCalDAVAccountRefreshActor *)self account];
      v18 = [v17 serverVersion];
      v19 = [v18 type];
      *buf = 138412290;
      v26 = v19;
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

- (void)delegateRefreshForPrincipal:(id)a3 completedWithDelegateUserInfo:(id)a4 error:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = DALoggingwithCategory();
  v12 = v11;
  if (v10)
  {
    v13 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v11, v13))
    {
      v14 = [v8 account];
      v15 = [v14 accountDescription];
      v16 = [v8 account];
      v17 = [v16 publicDescription];
      v24 = 138412802;
      v25 = v15;
      v26 = 2114;
      v27 = v17;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_2484B2000, v12, v13, "Error refreshing delegates for account %@ (%{public}@): %@", &v24, 0x20u);
    }
  }

  else
  {
    v18 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v11, v18))
    {
      v19 = [v8 account];
      v20 = [v19 accountDescription];
      v21 = [v8 account];
      v22 = [v21 publicDescription];
      v24 = 138412546;
      v25 = v20;
      v26 = 2114;
      v27 = v22;
      _os_log_impl(&dword_2484B2000, v12, v18, "Delegates were refreshed for account %@ (%{public}@)", &v24, 0x16u);
    }

    v12 = [(MobileCalDAVAccountRefreshActor *)self account];
    [v12 updateDelegatesWithUserInfo:v9];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_refreshCalendarProperties
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(MobileCalDAVAccountRefreshActor *)self account];
  v4 = [v3 mainPrincipal];
  v5 = [v4 calendarHomeURL];
  v6 = v5 == 0;

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
    v12 = [(MobileCalDAVAccountRefreshActor *)self account];
    v13 = [v12 mainPrincipal];
    v14 = [v11 initWithPrincipal:v13];

    [v14 setDelegate:self];
    v15 = [(MobileCalDAVAccountRefreshActor *)self context];
    LOBYTE(v13) = [v15 isForced];

    if (v13)
    {
      goto LABEL_13;
    }

    v16 = [(MobileCalDAVAccountRefreshActor *)self account];
    v17 = [v16 mainPrincipal];
    v18 = [v17 defaultCalendarURL];
    if (v18)
    {
    }

    else
    {
      v21 = [(MobileCalDAVAccountRefreshActor *)self account];
      v22 = [v21 haveForcedDefaultCalendarRefetch];

      if ((v22 & 1) == 0)
      {
        v28 = DALoggingwithCategory();
        v29 = *(v9 + 5);
        if (os_log_type_enabled(v28, v29))
        {
          v30 = [(MobileCalDAVAccountRefreshActor *)self account];
          *buf = 138412290;
          v36 = v30;
          _os_log_impl(&dword_2484B2000, v28, v29, "Account %@ is missing its default calendar. Will attempt a fuller sync once to fetch it.", buf, 0xCu);
        }

        v23 = 0;
        self->_didForceDefaultCalendarRefetch = 1;
        goto LABEL_12;
      }
    }

    v23 = 1;
LABEL_12:
    v24 = [(MobileCalDAVAccountRefreshActor *)self account];
    [v14 setUseCalendarHomeSyncReport:{v23 & objc_msgSend(v24, "shouldUseCalendarHomeSyncReport")}];

LABEL_13:
    v25 = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
    dispatch_group_enter(v25);

    objc_initWeak(buf, v14);
    objc_initWeak(&location, self);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __61__MobileCalDAVAccountRefreshActor__refreshCalendarProperties__block_invoke;
    v31[3] = &unk_278F17848;
    objc_copyWeak(&v32, &location);
    objc_copyWeak(&v33, buf);
    [v14 setCompletionBlock:v31];
    v26 = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
    [v26 addObject:v14];

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
  v20 = [(MobileCalDAVAccountRefreshActor *)self context];
  [v20 setError:v14];

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

- (BOOL)calendarRefreshShouldRetryMkCalendarForPrincipal:(id)a3 calendar:(id)a4 error:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a5;
  v8 = [v7 domain];
  if (![v8 isEqualToString:*MEMORY[0x277CFDB80]])
  {
LABEL_7:

    goto LABEL_8;
  }

  v9 = [v7 code];

  if (v9 != 403)
  {
LABEL_8:
    if (v7)
    {
      [v6 recordCalendarError:v7 ofType:2];
    }

    else
    {
      [v6 clearCalendarErrorOfType:2];
    }

    v13 = 0;
    goto LABEL_12;
  }

  v8 = [v6 calendarURL];
  v10 = [v8 lastPathComponent];
  if (stringLooksLikeAUUID(v10))
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

  v16 = [v6 guid];
  if (stringLooksLikeAUUID(v16))
  {
    v17 = v16;
  }

  else
  {
    v18 = [MEMORY[0x277CCAD78] UUID];
    v17 = [v18 UUIDString];

    if (!v16 || ![v16 length])
    {
      [v6 setGuid:v17];
    }
  }

  v19 = [v8 CDVURLByDeletingLastPathComponent];
  v20 = [v19 CDVfixedURLByAppendingPathComponent:v17];

  [v6 setCalendarURL:v20];
  v21 = DALoggingwithCategory();
  v22 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = 138412546;
    v24 = v8;
    v25 = 2112;
    v26 = v20;
    _os_log_impl(&dword_2484B2000, v21, v22, "Received 403 performing mkcalendar at %@. Going to retry with new URL of %@", &v23, 0x16u);
  }

  v13 = 1;
LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)calendarRefreshWillSendCalendarDeletes:(id)a3
{
  v5 = a3;
  v6 = [(MobileCalDAVAccountRefreshActor *)self state];
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 6);
  v9 = os_log_type_enabled(v7, v8);
  if (v6 == 3)
  {
    if (v9)
    {
      *v12 = 0;
      _os_log_impl(&dword_2484B2000, v7, v8, "Pausing calendar refresh before sending caledar deletes to send any outstanding moves we have", v12, 2u);
    }

    objc_storeStrong(&self->_pausedPropertyRefreshOperation, a3);
    v10 = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
    [v10 removeObject:v5];

    v11 = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
    dispatch_group_leave(v11);
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_2484B2000, v7, v8, "Sending deletes past the BeginRefreshingPrincipalProperties state. Continuing on as normal.", buf, 2u);
    }

    [v5 continueRefreshFromSendingDeletes];
  }
}

- (void)_sendMoveTasks
{
  v3 = [(MobileCalDAVAccountRefreshActor *)self account];
  v4 = [v3 itemIDsToMoveActions];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(MobileCalDAVAccountRefreshActor *)self account];
    v7 = [v6 itemIDsToMoveActions];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__MobileCalDAVAccountRefreshActor__sendMoveTasks__block_invoke;
    v8[3] = &unk_278F17870;
    v8[4] = self;
    [v7 enumerateKeysAndObjectsUsingBlock:v8];
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

- (void)_clearMoveChange:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v15[0] = 67109120;
    v15[1] = [v4 changeID];
    _os_log_impl(&dword_2484B2000, v5, v6, "Clearing move change at index %d", v15, 8u);
  }

  Mutable = CFArrayCreateMutable(0, 1, 0);
  CFArrayAppendValue(Mutable, [v4 changeID]);
  v8 = [(MobileCalDAVAccountRefreshActor *)self account];
  v9 = [v8 dbHelper];
  v10 = [(MobileCalDAVAccountRefreshActor *)self account];
  v11 = [v10 accountID];
  [v9 calDatabaseForAccountID:v11];
  v12 = [(MobileCalDAVAccountRefreshActor *)self account];
  v13 = [v12 changeTrackingID];
  [v4 objectType];
  CalDatabaseClearIndividualChangeRowIDsForClient();

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_saveMoveChange:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v10[0] = 67109120;
    v10[1] = [v4 changeID];
    _os_log_impl(&dword_2484B2000, v5, v6, "Saving move change for next time at index %d", v10, 8u);
  }

  v7 = [(MobileCalDAVAccountRefreshActor *)self context];
  v8 = [v7 changeTracker];
  [v8 saveChange:objc_msgSend(v4 forEntityType:{"changeID"), objc_msgSend(v4, "objectType")}];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleMoveTaskComplete:(id)a3 moveItem:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MobileCalDAVAccountRefreshActor *)self outstandingTasks];
  [v8 removeObject:v6];

  v9 = [v6 error];

  if (!v9)
  {
    v20 = [v6 responseHeaders];
    v21 = [v20 CDVObjectForKeyCaseInsensitive:*MEMORY[0x277CF6F88]];
    v22 = [v20 CDVObjectForKeyCaseInsensitive:*MEMORY[0x277CFDB30]];
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

      -[MobileCalDAVAccountRefreshActor _finishMoveForItemWithID:withEtag:scheduleTag:](self, "_finishMoveForItemWithID:withEtag:scheduleTag:", [v7 itemID], v22, v21);
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

      -[MobileCalDAVAccountRefreshActor _propFindForNewEtagFollowingMoveOfItem:](self, "_propFindForNewEtagFollowingMoveOfItem:", [v7 itemID]);
    }

    goto LABEL_14;
  }

  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = [v6 url];
    v13 = [v6 destinationURL];
    v14 = [v6 error];
    v28 = 138412802;
    v29 = v12;
    v30 = 2112;
    v31 = v13;
    v32 = 2112;
    v33 = v14;
    _os_log_impl(&dword_2484B2000, v10, v11, "Error moving event from %@ to %@: %@", &v28, 0x20u);
  }

  v15 = [v6 error];
  v16 = [v15 domain];
  v17 = [v16 isEqualToString:*MEMORY[0x277CFDB80]];

  if (v17)
  {
    v18 = [v6 error];
    v19 = [v18 code];

    if ((v19 - 403) <= 9 && ((1 << (v19 + 109)) & 0x241) != 0)
    {
LABEL_14:
      [(MobileCalDAVAccountRefreshActor *)self _clearMoveChange:v7];
      goto LABEL_15;
    }
  }

  [(MobileCalDAVAccountRefreshActor *)self _saveMoveChange:v7];
LABEL_15:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_propFindForNewEtagFollowingMoveOfItem:(int)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = [(MobileCalDAVAccountRefreshActor *)self account];
  v6 = [v5 dbHelper];
  v7 = [(MobileCalDAVAccountRefreshActor *)self account];
  v8 = [v7 accountID];
  [v6 calDatabaseForAccountID:v8];
  v9 = CalDatabaseCopyCalendarItemWithRowID();

  if (v9)
  {
    v10 = CalCalendarItemCopyExternalID();
    if (v10)
    {
      v11 = [(MobileCalDAVAccountRefreshActor *)self account];
      v12 = [v11 mainPrincipal];
      v13 = [v12 calendarHomeURL];
      v14 = [v10 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v13];

      CFRelease(v9);
      if (v14)
      {

        v15 = objc_alloc(MEMORY[0x277CFDBE8]);
        v16 = [v15 initWithNameSpace:*MEMORY[0x277CFDEF8] name:*MEMORY[0x277CFDF20] parseClass:objc_opt_class()];
        v17 = objc_alloc(MEMORY[0x277CFDBE8]);
        v18 = [v17 initWithNameSpace:*MEMORY[0x277CFDDC0] name:*MEMORY[0x277CF7050] parseClass:objc_opt_class()];
        v19 = [MEMORY[0x277CBEB98] setWithObjects:{v16, v18, 0}];
        v20 = [objc_alloc(MEMORY[0x277CFDC68]) initWithPropertiesToFind:v19 atURL:v14 withDepth:2];
        v21 = [(MobileCalDAVAccountRefreshActor *)self account];
        v22 = [v21 mainPrincipal];
        [v20 setAccountInfoProvider:v22];

        objc_initWeak(&location, v20);
        v23 = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
        dispatch_group_enter(v23);

        objc_initWeak(&from, self);
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __74__MobileCalDAVAccountRefreshActor__propFindForNewEtagFollowingMoveOfItem___block_invoke;
        v31[3] = &unk_278F17898;
        objc_copyWeak(&v34, &location);
        v36 = a3;
        v10 = v14;
        v32 = v10;
        v33 = self;
        objc_copyWeak(&v35, &from);
        [v20 setCompletionBlock:v31];
        v24 = [(MobileCalDAVAccountRefreshActor *)self account];
        v25 = [v24 mainPrincipal];
        v26 = [v25 taskManager];
        [v26 submitIndependentCoreDAVTask:v20];

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
      HIDWORD(location) = a3;
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
      HIDWORD(location) = a3;
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

- (void)_finishMoveForItemWithID:(int)a3 withEtag:(id)a4 scheduleTag:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (![v9 length] && !objc_msgSend(v8, "length"))
  {
    v15 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v15, v16))
    {
      v19 = 67109120;
      v20 = a3;
      v17 = "Got neither an etag nor a schedule tag for item with ID %i";
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_11;
  }

  v10 = [(MobileCalDAVAccountRefreshActor *)self account];
  v11 = [v10 dbHelper];
  v12 = [(MobileCalDAVAccountRefreshActor *)self account];
  v13 = [v12 accountID];
  [v11 calDatabaseForAccountID:v13];
  v14 = CalDatabaseCopyCalendarItemWithRowID();

  if (!v14)
  {
    v15 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v15, v16))
    {
      v19 = 67109120;
      v20 = a3;
      v17 = "Couldn't find a moved item in the database with id %d";
LABEL_9:
      _os_log_impl(&dword_2484B2000, v15, v16, v17, &v19, 8u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  [v9 length];
  CalCalendarItemSetExternalScheduleID();
  [v8 length];
  CalCalendarItemSetExternalModificationTag();
  CFRelease(v14);
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_sendMoveForItem:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MobileCalDAVAccountRefreshActor *)self account];
  v6 = [v5 dbHelper];
  v7 = [(MobileCalDAVAccountRefreshActor *)self account];
  v8 = [v7 accountID];
  [v6 calDatabaseForAccountID:v8];
  [v4 itemID];
  v9 = CalDatabaseCopyCalendarItemWithRowID();

  cf = v9;
  if (!v9)
  {
    v29 = DALoggingwithCategory();
    v30 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v29, *(MEMORY[0x277D03988] + 3)))
    {
      *buf = 67109120;
      *v74 = [v4 itemID];
      _os_log_impl(&dword_2484B2000, v29, v30, "Couldn't find a calendar item with uid %d to process a move operation.", buf, 8u);
    }

    v31 = 0;
    goto LABEL_32;
  }

  v10 = [(MobileCalDAVAccountRefreshActor *)self account];
  v11 = [v10 mainPrincipal];
  v65 = [v11 calendarHomeURL];

  v66 = CalCalendarItemCopyExternalID();
  v12 = CalCalendarItemCopyCalendar();
  if (v12)
  {
    v13 = v12;
    v14 = CalCalendarCopyExternalID();
    v15 = v14;
    if (v14)
    {
      v16 = [v14 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v65];
      v17 = [DACalDAViCalItem alloc];
      WeakRetained = objc_loadWeakRetained(&self->_account);
      v19 = [WeakRetained accountID];
      v20 = [(DACalDAViCalItem *)v17 initWithCalRecord:cf inContainer:v16 accountID:v19];

      v64 = v20;
      v21 = [(DACalDAViCalItem *)v20 filename];
      v22 = [v16 URLByAppendingPathComponent:v21];
      [(DACalDAViCalItem *)v20 setServerID:v22];

      v23 = [(DACalDAViCalItem *)v20 serverID];
      v24 = [(MobileCalDAVAccountRefreshActor *)self account];
      v25 = [v24 mainPrincipal];
      v26 = [v25 calendarHomeURL];
      v27 = [v23 da_leastInfoStringRepresentationRelativeToParentURL:v26];

      CalCalendarItemSetExternalID();
      [v4 setUpdatedExternalID:v27];
      v28 = [(MobileCalDAVAccountRefreshActor *)self context];
      [v28 setShouldSave:1];
    }

    else
    {
      v33 = DALoggingwithCategory();
      v34 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v33, v34))
      {
        *buf = 67109120;
        *v74 = [v4 itemID];
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
      *v74 = [v4 itemID];
      _os_log_impl(&dword_2484B2000, v15, v32, "Couldn't find an owning calendar for a moved event (%d).", buf, 8u);
    }

    v64 = 0;
  }

  v35 = [v4 oldExternalID];
  v36 = v35;
  if (v66)
  {
    v37 = DALoggingwithCategory();
    v38 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v37, v38))
    {
      *buf = 138412546;
      *v74 = v66;
      *&v74[8] = 2112;
      v75 = v35;
      _os_log_impl(&dword_2484B2000, v37, v38, "Moving an event that has an external id set. Preferring that external ID (%@) to the one tombstoned on the move record (%@)", buf, 0x16u);
    }

    v36 = v66;
  }

  v39 = v36;
  v40 = [v39 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v65];
  v41 = [v40 da_urlBySettingUsername:0];

  v42 = [(DACalDAViCalItem *)v64 serverID];
  v43 = [v42 da_urlBySettingUsername:0];

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
  v55 = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
  dispatch_group_enter(v55);

  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __52__MobileCalDAVAccountRefreshActor__sendMoveForItem___block_invoke;
  v68[3] = &unk_278F178C0;
  objc_copyWeak(&v70, &location);
  objc_copyWeak(&v71, buf);
  v69 = v4;
  [v46 setCompletionBlock:v68];
  v56 = [(MobileCalDAVAccountRefreshActor *)self outstandingTasks];
  [v56 addObject:v46];

  v57 = [(MobileCalDAVAccountRefreshActor *)self account];
  v58 = [v57 mainPrincipal];
  [v46 setAccountInfoProvider:v58];

  v59 = [(MobileCalDAVAccountRefreshActor *)self account];
  v60 = [v59 mainPrincipal];
  v61 = [v60 taskManager];
  [v61 submitIndependentCoreDAVTask:v46];

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
    [(MobileCalDAVAccountRefreshActor *)self _saveMoveChange:v4];
    goto LABEL_34;
  }

LABEL_32:
  [(MobileCalDAVAccountRefreshActor *)self _clearMoveChange:v4, v64];
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
    v5 = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
    dispatch_group_enter(v5);

    v6 = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
    [v6 addObject:v3];

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

- (void)calendarRefreshFoundUpdatedContainerWithIgnoredEntityType:(id)a3
{
  if ([a3 isTaskContainer])
  {

    [(MobileCalDAVAccountRefreshActor *)self setRefreshFoundUpdatedTaskContainer:1];
  }
}

- (void)calendarRefreshFoundUpdatedSpecialContainer:(id)a3
{
  if ([a3 isNotification])
  {

    [(MobileCalDAVAccountRefreshActor *)self setRefreshFoundUpdatedSpecialCalendar:1];
  }
}

- (void)calendarRefreshForPrincipal:(id)a3 completedWithNewCTags:(id)a4 newSyncTokens:(id)a5 calendarHomeSyncToken:(id)a6 updatedCalendars:(id)a7 error:(id)a8
{
  v95 = *MEMORY[0x277D85DE8];
  v76 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (v18)
  {
    v19 = [(MobileCalDAVAccountRefreshActor *)self context];
    v20 = [v19 error];

    v21 = self;
    if (!v20)
    {
      v22 = [(MobileCalDAVAccountRefreshActor *)self context];
      [v22 setError:v18];
    }

    v23 = DALoggingwithCategory();
    v24 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = [(MobileCalDAVAccountRefreshActor *)v21 account];
      v26 = [v25 publicDescription];
      *buf = 138543618;
      v92 = v26;
      v93 = 2112;
      v94 = v18;
      _os_log_impl(&dword_2484B2000, v23, v24, "Error refreshing calendar properties for account %{public}@ error %@", buf, 0x16u);
    }

LABEL_32:

    goto LABEL_33;
  }

  if (![(MobileCalDAVAccountRefreshActor *)self shouldCancel])
  {
    v27 = self;
    v28 = DALoggingwithCategory();
    type = *(MEMORY[0x277D03988] + 6);
    v75 = self;
    if (os_log_type_enabled(v28, type))
    {
      v29 = [(MobileCalDAVAccountRefreshActor *)self account];
      v30 = [v29 accountDescription];
      v31 = [(MobileCalDAVAccountRefreshActor *)self account];
      v32 = [v31 publicDescription];
      *buf = 138412546;
      v92 = v30;
      v93 = 2114;
      v94 = v32;
      _os_log_impl(&dword_2484B2000, v28, type, "Calendars properties were refreshed for account %@ (%{public}@)", buf, 0x16u);

      v27 = self;
      v18 = 0;
    }

    v33 = [(MobileCalDAVAccountRefreshActor *)v27 context];
    v34 = [(MobileCalDAVAccountRefreshActor *)v27 account];
    v35 = [v34 mainPrincipal];
    [v33 setShouldSaveAccounts:{objc_msgSend(v35, "isDirty") | objc_msgSend(v33, "shouldSaveAccounts")}];

    v36 = [(MobileCalDAVAccountRefreshActor *)self account];
    v37 = [v36 mainPrincipal];
    LODWORD(v35) = [v37 isDirty];

    if (v35)
    {
      v38 = [(MobileCalDAVAccountRefreshActor *)self account];
      v39 = [v38 updateCalendarStoreWithAlreadyOpenDBShouldCreate:0 syncingThisAccount:1];
    }

    else
    {
      v39 = 0;
    }

    v40 = [(MobileCalDAVAccountRefreshActor *)self account];
    v41 = [v40 mainPrincipal];
    v42 = [v41 calendarsAreDirty];

    if (v42)
    {
      v43 = [(MobileCalDAVAccountRefreshActor *)self account];
      v44 = [v43 mainPrincipal];
      [v44 setCalendarsAreDirty:0];

      v45 = self;
    }

    else
    {
      v45 = self;
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

    v47 = [(MobileCalDAVAccountRefreshActor *)v45 account];
    v48 = [v47 dbHelper];
    v49 = [(MobileCalDAVAccountRefreshActor *)v45 account];
    v50 = [v49 accountID];
    [v48 calSaveDatabaseForAccountID:v50];

    v45 = self;
LABEL_18:
    v51 = [(MobileCalDAVAccountRefreshActor *)v45 context];
    v52 = [v51 isCalendarsOnly];

    if ((v52 & 1) == 0)
    {
      v71 = v18;
      [(MobileCalDAVAccountRefreshActor *)v45 setCalendarHomeSyncToken:v16];
      v74 = v14;
      v53 = [v14 copy];
      [(MobileCalDAVAccountRefreshActor *)v45 setPathsToCTags:v53];

      v73 = v15;
      v54 = [v15 copy];
      [(MobileCalDAVAccountRefreshActor *)v45 setPathsToSyncTokens:v54];

      v72 = v17;
      v55 = [v17 mutableCopy];
      v56 = [(MobileCalDAVAccountRefreshActor *)v45 outstandingOperationGroup];
      dispatch_group_enter(v56);

      v23 = dispatch_group_create();
      [(MobileCalDAVAccountRefreshActor *)v45 _cleanUpDuplicateCalendars];
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v57 = [(MobileCalDAVAccountRefreshActor *)v45 account];
      v58 = [v57 calendars];

      v59 = [v58 countByEnumeratingWithState:&v86 objects:v90 count:16];
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
              objc_enumerationMutation(v58);
            }

            v63 = *(*(&v86 + 1) + 8 * i);
            if (([v63 isEventContainer] & 1) != 0 || CalShouldSyncReminders())
            {
              v64 = DALoggingwithCategory();
              if (os_log_type_enabled(v64, type))
              {
                v65 = [v63 title];
                *buf = 138412290;
                v92 = v65;
                _os_log_impl(&dword_2484B2000, v64, type, "Preparing sync actions for calendar %@", buf, 0xCu);

                v45 = v75;
              }

              dispatch_group_enter(v23);
              v82[0] = MEMORY[0x277D85DD0];
              v82[1] = 3221225472;
              v82[2] = __144__MobileCalDAVAccountRefreshActor_calendarRefreshForPrincipal_completedWithNewCTags_newSyncTokens_calendarHomeSyncToken_updatedCalendars_error___block_invoke;
              v82[3] = &unk_278F178E8;
              v82[4] = v45;
              v83 = v55;
              v84 = v76;
              v85 = v23;
              [v63 prepareSyncActionsWithCompletionBlock:v82];
            }
          }

          v60 = [v58 countByEnumeratingWithState:&v86 objects:v90 count:16];
        }

        while (v60);
      }

      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __144__MobileCalDAVAccountRefreshActor_calendarRefreshForPrincipal_completedWithNewCTags_newSyncTokens_calendarHomeSyncToken_updatedCalendars_error___block_invoke_75;
      v80[3] = &unk_278F17910;
      v80[4] = v45;
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

      v15 = v73;
      v14 = v74;
      v17 = v72;
      v18 = v71;
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
  v3 = [(MobileCalDAVAccountRefreshActor *)self account];
  v4 = [v3 duplicateCalendars];

  if ([v4 count])
  {
    v5 = [(MobileCalDAVAccountRefreshActor *)self account];
    v6 = [v5 dbHelper];
    v7 = [(MobileCalDAVAccountRefreshActor *)self account];
    v8 = [v7 accountID];
    v9 = [(MobileCalDAVAccountRefreshActor *)self account];
    v10 = [v9 changeTrackingID];
    [v6 calOpenDatabaseForAccountID:v8 clientID:v10];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = v4;
    v11 = v4;
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

    v22 = [(MobileCalDAVAccountRefreshActor *)self account];
    v23 = [v22 dbHelper];
    v24 = [(MobileCalDAVAccountRefreshActor *)self account];
    v25 = [v24 accountID];
    [v23 calCloseDatabaseForAccountID:v25 save:v14 & 1];

    v4 = v27;
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)_cleanUpDuplicateCalendar:(id)a3 ofCalendar:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 calCalendar];
  v9 = [v6 calCalendar];
  v10 = v9;
  if (!v8)
  {
    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v19, *(MEMORY[0x277D03988] + 3)))
    {
      v21 = [v7 title];
      v22 = [v7 calendarURLString];
      v32 = 138412546;
      *v33 = v21;
      *&v33[8] = 2112;
      *&v33[10] = v22;
      _os_log_impl(&dword_2484B2000, v19, v20, "Calendar ref is NULL for original calendar %@ with URL %@. Will not attempt to remove duplicate.", &v32, 0x16u);
    }

    if (v10)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (!v9)
  {
LABEL_10:
    v23 = DALoggingwithCategory();
    v24 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = [v6 title];
      v26 = [v6 calendarURLString];
      v32 = 138412546;
      *v33 = v25;
      *&v33[8] = 2112;
      *&v33[10] = v26;
      _os_log_impl(&dword_2484B2000, v23, v24, "Calendar ref is NULL for duplicate calendar %@ with URL %@. Will not attempt to remove duplicate.", &v32, 0x16u);
    }

    goto LABEL_16;
  }

  v11 = [(MobileCalDAVAccountRefreshActor *)self account];
  v12 = [v11 copyCalStore];

  v13 = DALoggingwithCategory();
  v14 = *(MEMORY[0x277D03988] + 3);
  v15 = os_log_type_enabled(v13, v14);
  if (!v12)
  {
    if (v15)
    {
      UID = CalCalendarGetUID();
      v28 = [v6 title];
      v29 = [v6 calendarURLString];
      v32 = 67109634;
      *v33 = UID;
      *&v33[4] = 2112;
      *&v33[6] = v28;
      *&v33[14] = 2112;
      *&v33[16] = v29;
      _os_log_impl(&dword_2484B2000, v13, v14, "No store when removing duplicate calendar with UID %i (%@ with URL %@). Will not attempt to remove duplicate.", &v32, 0x1Cu);
    }

LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (v15)
  {
    v16 = CalCalendarGetUID();
    v17 = [v6 title];
    v32 = 67109378;
    *v33 = v16;
    *&v33[4] = 2112;
    *&v33[6] = v17;
    _os_log_impl(&dword_2484B2000, v13, v14, "Removing duplicate calendar with rowid %i and title %@; clearing ctag and synctoken for original calendar", &v32, 0x12u);
  }

  CalStoreRemoveCalendar();
  CFRelease(v12);
  v18 = 1;
  [v7 setNeedsResync:1];
  [v7 setSyncToken:0];
  [v7 setCtag:0];
LABEL_17:

  v30 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)_amendChangeRecordAndCleanUpAfterDeletedEventWithID:(int)a3 externalID:(id)a4 database:(CalDatabase *)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v8, v9))
  {
    v19 = 67109378;
    *v20 = a3;
    *&v20[4] = 2112;
    *&v20[6] = v7;
    _os_log_impl(&dword_2484B2000, v8, v9, "Event put to server during this sync appears to have been deleted. Original row id = %i. external_id = %@", &v19, 0x12u);
  }

  CalDatabaseAmendDeleteForCalendarItemWithExternalID();
  v10 = [(MobileCalDAVAccountRefreshActor *)self account];
  v11 = [v10 copyCalStore];

  if (v11)
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
        *v20 = v7;
        *&v20[8] = 1024;
        *&v20[10] = RowID;
        v21 = 1024;
        v22 = a3;
        _os_log_impl(&dword_2484B2000, v15, v9, "Removing event with external_id %@ and row id %i because it has the same external ID as an event that was put and subsequently deleted during this sync. (Original row id = %i)", &v19, 0x18u);
      }

      CalRemoveEvent();
      CFRelease(v14);
    }

    CFRelease(v11);
  }

  else
  {
    v13 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_checkForNewOrMovedItemsDeletedSinceSyncStartedInCalendars:(id)a3 database:(CalDatabase *)a4 moves:(id)a5
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v35 = a5;
  obj = v6;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v38 = [v6 countByEnumeratingWithState:&v51 objects:v63 count:16];
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
        v10 = [v9 newlyAddedItems];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v47 objects:v62 count:16];
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
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v47 + 1) + 8 * i);
              [v15 calItem];
              if ((CalCalendarItemStillExists() & 1) == 0)
              {
                v16 = [v15 serverID];
                v17 = [v9 calendarURL];
                v18 = [v16 da_leastInfoStringRepresentationRelativeToParentURL:v17];

                v7 |= [(MobileCalDAVAccountRefreshActor *)self _amendChangeRecordAndCleanUpAfterDeletedEventWithID:CalCalendarItemGetRowID() externalID:v18 database:a4];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v47 objects:v62 count:16];
          }

          while (v12);
        }

        if (v10)
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
  v19 = v35;
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
        v25 = [v24 intValue];
        v26 = CalDatabaseCopyCalendarItemWithRowID();
        if (v26)
        {
          CFRelease(v26);
        }

        else
        {
          v27 = [v19 objectForKeyedSubscript:v24];
          v28 = [v27 updatedExternalID];
          if (v28)
          {
            v7 |= [(MobileCalDAVAccountRefreshActor *)self _amendChangeRecordAndCleanUpAfterDeletedEventWithID:v25 externalID:v28 database:a4];
          }

          else
          {
            v29 = DALoggingwithCategory();
            if (os_log_type_enabled(v29, typea))
            {
              v30 = [v27 uniqueIdentifier];
              v31 = [v27 oldExternalID];
              *buf = 67109634;
              v56 = v25;
              v57 = 2112;
              v58 = v30;
              v59 = 2112;
              v60 = v31;
              v32 = v31;
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
  v3 = [(MobileCalDAVAccountRefreshActor *)self calendarsToRefresh];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
        objc_enumerationMutation(v3);
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

    v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
    v14 = [(MobileCalDAVAccountRefreshActor *)self account];
    v15 = [v14 serverVersion];
    v16 = [v15 supportsAutoSchedule];

    if (v16)
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
    v5 = [(MobileCalDAVAccountRefreshActor *)self calendarsToRefresh];
    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&dword_2484B2000, v3, v4, "Syncing calendars: %@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(MobileCalDAVAccountRefreshActor *)self calendarsToRefresh];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (([v11 isScheduleInbox] & 1) == 0 && (objc_msgSend(v11, "isNotification") & 1) == 0)
        {
          [(MobileCalDAVAccountRefreshActor *)self _syncCalendar:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(MobileCalDAVAccountRefreshActor *)self _waitForStateTransition];
  v12 = *MEMORY[0x277D85DE8];
}

- (id)_refreshedCtagForCalendar:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVAccountRefreshActor *)self context];
  v6 = [v5 isForced];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 calendarURL];
    v9 = [v8 absoluteString];
    v10 = [v9 da_appendSlashIfNeeded];

    v11 = [(MobileCalDAVAccountRefreshActor *)self pathsToCTags];
    v7 = [v11 objectForKeyedSubscript:v10];
  }

  return v7;
}

- (id)_refreshedSyncTokenForCalendar:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVAccountRefreshActor *)self context];
  v6 = [v5 isForced];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 calendarURL];
    v9 = [v8 absoluteString];
    v10 = [v9 da_appendSlashIfNeeded];

    v11 = [(MobileCalDAVAccountRefreshActor *)self pathsToSyncTokens];
    v7 = [v11 objectForKeyedSubscript:v10];
  }

  return v7;
}

- (void)_syncCalendar:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 isManagedByServer])
  {
    v6 = [(MobileCalDAVAccountRefreshActor *)self account];
    v7 = [v6 serverVersion];
    if (([v7 supportsAutoSchedule] & 1) == 0 && (objc_msgSend(v5, "isScheduleInbox") & 1) != 0 || objc_msgSend(v5, "isScheduleOutbox"))
    {
    }

    else
    {
      v8 = [v5 isPoll];

      if ((v8 & 1) == 0)
      {
        [v5 setNumUploadedElements:0];
        [v5 setNumDownloadedElements:0];
        v9 = [(MobileCalDAVAccountRefreshActor *)self context];
        v10 = [v9 changeTracker];
        [v5 setChangeTracker:v10];

        v11 = DALoggingwithCategory();
        v12 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v11, v12))
        {
          v13 = [v5 title];
          *buf = 138412290;
          v28 = v13;
          _os_log_impl(&dword_2484B2000, v11, v12, "Starting a calendar sync for %@", buf, 0xCu);
        }

        v14 = objc_alloc(MEMORY[0x277CF6FE8]);
        v15 = [(MobileCalDAVAccountRefreshActor *)self account];
        v16 = [v15 mainPrincipal];
        v17 = [(MobileCalDAVAccountRefreshActor *)self _refreshedCtagForCalendar:v5];
        v18 = [(MobileCalDAVAccountRefreshActor *)self _refreshedSyncTokenForCalendar:v5];
        v19 = [v14 initWithPrincipal:v16 calendar:v5 nextCtag:v17 nextSyncToken:v18];

        [v19 setDelegate:self];
        v20 = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
        dispatch_group_enter(v20);

        objc_initWeak(buf, v19);
        objc_initWeak(&location, self);
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __49__MobileCalDAVAccountRefreshActor__syncCalendar___block_invoke;
        v23[3] = &unk_278F17848;
        objc_copyWeak(&v24, &location);
        objc_copyWeak(&v25, buf);
        [v19 setCompletionBlock:v23];
        v21 = [(MobileCalDAVAccountRefreshActor *)self outstandingTaskGroups];
        [v21 addObject:v19];

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
  v4 = [(MobileCalDAVAccountRefreshActor *)self account];
  v5 = [v4 accountID];

  if (v5)
  {
    v6 = [v4 accountID];
    [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x277D03868]];
  }

  v7 = [v4 accountDescription];

  if (v7)
  {
    v8 = [v4 accountDescription];
    [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x277D03870]];
  }

  if (objc_opt_class())
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x277D03860]];
  }

  return v3;
}

- (void)calendarSyncForPrincipal:(id)a3 calendar:(id)a4 completedWithError:(id)a5
{
  v64 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = v7;
  v10 = [(MobileCalDAVAccountRefreshActor *)self context];
  [v10 setShouldSave:{objc_msgSend(v9, "isDirty") | objc_msgSend(v10, "shouldSave")}];

  v11 = [(MobileCalDAVAccountRefreshActor *)self context];
  [v11 setNumDownloadedElements:{objc_msgSend(v11, "numDownloadedElements") + objc_msgSend(v9, "numDownloadedElements")}];

  v12 = [(MobileCalDAVAccountRefreshActor *)self context];
  [v12 setNumUploadedElements:{objc_msgSend(v12, "numUploadedElements") + objc_msgSend(v9, "numUploadedElements")}];

  [v9 setChangeTracker:0];
  if (v8)
  {
    v13 = DALoggingwithCategory();
    v14 = MEMORY[0x277D03988];
    v15 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v13, v15))
    {
      v16 = [v9 calendarURL];
      *buf = 138412546;
      v61 = v16;
      v62 = 2112;
      v63 = v8;
      _os_log_impl(&dword_2484B2000, v13, v15, "Error refreshing the calendar at %@: %@", buf, 0x16u);
    }

    v17 = [(MobileCalDAVAccountRefreshActor *)self context];
    [v17 addCalendarSyncFailure:v8];

    v18 = [v8 domain];
    if (![v18 isEqualToString:*MEMORY[0x277CF6F80]])
    {
      goto LABEL_11;
    }

    v19 = [v8 code];

    if (v19 != 1)
    {
      goto LABEL_13;
    }

    if ([v9 didResync])
    {
      v20 = [(MobileCalDAVAccountRefreshActor *)self context];
      [v20 setRetryTime:{objc_msgSend(v20, "retryTime") + 30}];

      v21 = [(MobileCalDAVAccountRefreshActor *)self context];
      v22 = [v21 retryTime];

      v23 = DALoggingwithCategory();
      v24 = *(v14 + 4);
      v25 = os_log_type_enabled(v23, v24);
      if (v22 <= 240)
      {
        if (v25)
        {
          *buf = 0;
          _os_log_impl(&dword_2484B2000, v23, v24, "Hit a precondition error on our second bulk upload attempt. Waiting a bit before retrying again", buf, 2u);
        }

        v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:75 userInfo:0];
        v27 = [(MobileCalDAVAccountRefreshActor *)self context];
        [v27 setError:v26];

        v18 = [(MobileCalDAVAccountRefreshActor *)self context];
        [v18 setShouldRetry:1];
LABEL_11:

        goto LABEL_13;
      }

      if (v25)
      {
        *buf = 0;
        _os_log_impl(&dword_2484B2000, v23, v24, "We've backed off for too long. We're just giving up for now.", buf, 2u);
      }

      v55 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:75 userInfo:0];
      v56 = [(MobileCalDAVAccountRefreshActor *)self context];
      [v56 setError:v55];

      v57 = [(MobileCalDAVAccountRefreshActor *)self context];
      [v57 setShouldRetry:0];

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
    v31 = [(MobileCalDAVAccountRefreshActor *)self _powerLogInfoDictionary];
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "numDownloadedElements")}];
    v33 = *v30;
    [v31 setObject:v32 forKeyedSubscript:*v30];

    v34 = [v9 calendarURL];
    v35 = [v34 absoluteString];

    if (v35)
    {
      v36 = [v9 calendarURL];
      v37 = [v36 absoluteString];
      [v31 setObject:v37 forKeyedSubscript:*MEMORY[0x277D03850]];
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
    v40 = [(MobileCalDAVAccountRefreshActor *)self _powerLogInfoDictionary];
    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "numUploadedElements")}];
    v42 = *v30;
    [v40 setObject:v41 forKeyedSubscript:*v30];

    v43 = [v9 calendarURL];
    v44 = [v43 absoluteString];

    if (v44)
    {
      v45 = [v9 calendarURL];
      v46 = [v45 absoluteString];
      [v40 setObject:v46 forKeyedSubscript:*MEMORY[0x277D03850]];
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
      v50 = [v9 title];
      *buf = 138412290;
      v61 = v50;
      _os_log_impl(&dword_2484B2000, v48, v49, "Calendar %@ requested a resync, so we're going to sync it again", buf, 0xCu);
    }

    [(MobileCalDAVAccountRefreshActor *)self _syncCalendar:v9];
    [v9 setDidResync:1];
  }

  if (RecordCalendarDiagnostics())
  {
    v51 = [(MobileCalDAVAccountRefreshActor *)self accountSyncDiagnostics];
    [v9 recordDiagnosticsForAccountSync:v51];
  }

  v52 = *MEMORY[0x277D85DE8];
}

- (void)_gatherAttachmentChanges
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [(MobileCalDAVAccountRefreshActor *)self account];
  v5 = [v4 copyCalStore];

  if (v5)
  {
    v6 = [(MobileCalDAVAccountRefreshActor *)self account];
    v7 = [v6 dbHelper];
    v8 = [(MobileCalDAVAccountRefreshActor *)self account];
    v9 = [v8 accountID];
    [v7 calDatabaseForAccountID:v9];
    CalDatabaseCopyAttachmentChangesInStore();

    CFRelease(v5);
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
  v3 = [(MobileCalDAVAccountRefreshActor *)self _prepareAttachmentsForUpload];
  if (v3)
  {
    [(MobileCalDAVAccountRefreshActor *)self _uploadAttachments:v3];
  }

  [(MobileCalDAVAccountRefreshActor *)self _waitForStateTransition];
}

- (id)_prepareAttachmentsForUpload
{
  v113 = *MEMORY[0x277D85DE8];
  v3 = [(MobileCalDAVAccountRefreshActor *)self eventUIDsWithAttachmentChanges];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(MobileCalDAVAccountRefreshActor *)self calendarsToRefresh];
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v7 = v5;
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
    v14 = [(MobileCalDAVAccountRefreshActor *)self account];
    v15 = [v14 dbHelper];
    v16 = [(MobileCalDAVAccountRefreshActor *)self account];
    v17 = [v16 accountID];
    [v15 calDatabaseForAccountID:v17];

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v72 = self;
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

          v20 = [*(*(&v97 + 1) + 8 * v19) intValue];
          v21 = CalDatabaseCopyCalendarItemWithRowID();
          if (!v21)
          {
            v25 = DALoggingwithCategory();
            if (os_log_type_enabled(v25, v18))
            {
              *buf = 67109120;
              v107 = v20;
              _os_log_impl(&dword_2484B2000, v25, v18, "Couldn't find event with UID %i even though it had attachment changes. Maybe it was deleted?", buf, 8u);
            }

            goto LABEL_66;
          }

          v22 = v21;
          v84 = v20;
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
                v40 = [v38 calendarURL];
                WeakRetained = objc_loadWeakRetained(&v72->_account);
                v42 = [WeakRetained accountID];
                v43 = [(DACalDAViCalItem *)v39 initWithCalRecord:v22 inContainer:v40 accountID:v42];

                v44 = [(DACalDAViCalItem *)v43 serverID];
                p_super = &v43->super;
                if (v44)
                {
                  v45 = v44;
                  goto LABEL_48;
                }

                v50 = [v38 calendarURL];
                v51 = [(DACalDAViCalItem *)v43 filename];
                v45 = [v50 URLByAppendingPathComponent:v51];

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
                    v64 = [p_super scheduleTag];
                    [v63 setScheduleTag:v64];

                    v65 = [p_super syncKey];
                    [v63 setSyncKey:v65];

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

- (void)_uploadAttachments:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 calAttachmentsToUpload];
        v11 = [v9 itemURL];
        v12 = [v9 syncKey];
        v13 = [v9 scheduleTag];
        [(MobileCalDAVAccountRefreshActor *)self _uploadAttachments:v10 forOwnerURL:v11 syncKey:v12 scheduleTag:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_uploadAttachments:(id)a3 forOwnerURL:(id)a4 syncKey:(id)a5 scheduleTag:(id)a6
{
  v67 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v45 = a4;
  v46 = a5;
  v47 = a6;
  v10 = [v9 count];
  v11 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v11, v12))
  {
    *buf = 134218754;
    *v66 = v10;
    *&v66[8] = 2114;
    *&v66[10] = v45;
    *&v66[18] = 2114;
    *&v66[20] = v46;
    *&v66[28] = 2114;
    *&v66[30] = v47;
    _os_log_impl(&dword_2484B2000, v11, v12, "Uploading (%ld) attachments, owner url = %{public}@, sync key = %{public}@, schedule tag = %{public}@", buf, 0x2Au);
  }

  v51 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v10];
  v50 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v10];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v9;
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
                v21 = v17;
                v17 = v22 = @"application/zipx-mac-auto-archive=yes";;
              }

              else
              {
                v21 = [v18 pathExtension];
                PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(inTagClass, v21, 0);
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
    v31 = [(MobileCalDAVAccountRefreshActor *)self account];
    v32 = [v31 mainPrincipal];
    v33 = [(MobileCalDAVAccountRefreshActor *)self account];
    v34 = [v33 mainPrincipal];
    v35 = [v34 taskManager];
    v36 = [v30 initWithAccountInfoProvider:v32 resourceURL:v45 attachments:v51 contentTypes:v50 taskManager:v35];

    [v36 setDelegate:self];
    if (v46 && [v46 length])
    {
      [v36 setPreviousETag:v46];
    }

    if (v47 && [v47 length])
    {
      [v36 setPreviousScheduleTag:v47];
    }

    v37 = [(MobileCalDAVAccountRefreshActor *)self outstandingOperationGroup];
    dispatch_group_enter(v37);

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
    v38 = [vala outstandingTaskGroups];
    [v38 addObject:v36];

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

- (void)_handleAttachmentUploadsComplete:(id)a3 attachments:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v37 = v5;
  v7 = [v5 error];
  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v8, v9))
  {
    *buf = 134218498;
    v43 = v37;
    v44 = 2048;
    v45 = [v6 count];
    v46 = 2112;
    v47 = v7;
    _os_log_impl(&dword_2484B2000, v8, v9, "Attachment upload %p complete for %lu attachments with error = %@", buf, 0x20u);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = v6;
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
          v21 = [v37 filenamesToServerLocation];
          v22 = [v21 objectForKeyedSubscript:v19];

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

      v27 = [v7 domain];
      v24 = v35;
      if ([v27 isEqualToString:*MEMORY[0x277CFDB80]])
      {
        v28 = [v7 code];

        if (v28 != 507)
        {
LABEL_30:
          v25 = [v37 updatedETag];
          v30 = [v37 updatedScheduleTag];
          if (v25)
          {
            v31 = CalCalendarItemCopyExternalID();
            CalCalendarItemSetExternalModificationTag();
            if (v30)
            {
              CalCalendarItemSetExternalScheduleID();
            }

            v32 = DALoggingwithCategory();
            if (os_log_type_enabled(v32, v24))
            {
              *buf = 134218754;
              v43 = v37;
              v44 = 2114;
              v45 = v25;
              v46 = 2114;
              v47 = v30;
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
              v45 = v30;
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
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];

        CalCalendarItemSetErrorCodeAndUserInfo();
      }

      goto LABEL_30;
    }
  }

  else
  {
  }

  v25 = DALoggingwithCategory();
  v26 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v25, v26))
  {
    *buf = 134217984;
    v43 = v37;
    _os_log_impl(&dword_2484B2000, v25, v26, "Could not get an event for completed attachment upload %p.", buf, 0xCu);
  }

LABEL_39:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_downloadAttachments
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(MobileCalDAVAccountRefreshActor *)self account];
  v4 = [v3 serverVersion];
  v5 = [v4 requiresOpeningAttachmentAsLink];

  if (v5)
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = [(MobileCalDAVAccountRefreshActor *)self account];
      v9 = [(MobileCalDAVAccountRefreshActor *)self account];
      v10 = [v9 serverVersion];
      v12 = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = v10;
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
  v3 = [(MobileCalDAVAccountRefreshActor *)self account];
  v4 = [v3 copyCalStore];

  if (v4)
  {
    v5 = [(MobileCalDAVAccountRefreshActor *)self account];
    v6 = [v5 dbHelper];
    v7 = [(MobileCalDAVAccountRefreshActor *)self account];
    v8 = [v7 accountID];
    [v6 calDatabaseForAccountID:v8];
    v9 = CalDatabaseCopyOfAllAttachmentFilesInStoreWithoutLocalFilesAndDownloadAttemptsBelow();

    if (v9)
    {
      cf = v4;
      Count = CFArrayGetCount(v9);
      v11 = [(MobileCalDAVAccountRefreshActor *)self account];
      v12 = [v11 backingAccount];
      v32 = [v12 principalURL];

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
            v19 = [MEMORY[0x277CF7768] attachmentURL:v18 matchesServerURL:v32];
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

              v22 = [[MobileCalDAVAccountRefreshActorAttachmentDownloadDelegate alloc] initWithAttachmentUUID:v14];
              [(MobileCalDAVAccountRefreshActorAttachmentDownloadDelegate *)v22 beginDownload];
              v23 = [(MobileCalDAVAccountRefreshActor *)self account];
              v24 = [v23 backingAccount];
              v25 = [v24 beginDownloadingAttachmentWithUUID:v14 consumer:v22];
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
              v22 = [(MobileCalDAVAccountRefreshActor *)self context];
              [(MobileCalDAVAccountRefreshActorAttachmentDownloadDelegate *)v22 setShouldSave:1];
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

      CFRelease(v4);
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
    v5 = [(MobileCalDAVAccountRefreshActor *)self account];
    v6 = [v5 accountDescription];
    v7 = [(MobileCalDAVAccountRefreshActor *)self account];
    v8 = [v7 publicDescription];
    v24 = 138412546;
    v25 = v6;
    v26 = 2114;
    v27 = v8;
    _os_log_impl(&dword_2484B2000, v3, v4, "Calendar collections were refreshed for account %@ (%{public}@)", &v24, 0x16u);
  }

  v9 = [(MobileCalDAVAccountRefreshActor *)self account];
  v10 = [v9 mainPrincipal];
  v11 = [v10 supportsSyncToken];

  if (v11)
  {
    v12 = [(MobileCalDAVAccountRefreshActor *)self account];
    v13 = [v12 mainPrincipal];
    v14 = [v13 eventFilterStartDate];

    if (v14)
    {
      v15 = objc_alloc(MEMORY[0x277CBEA80]);
      v16 = [v15 initWithCalendarIdentifier:*MEMORY[0x277CBE650]];
      v17 = [MEMORY[0x277CBEBB0] localTimeZone];
      [v16 setTimeZone:v17];

      v18 = [v16 dateFromComponents:v14];
      v19 = [(MobileCalDAVAccountRefreshActor *)self account];
      v20 = [v19 copyCalStore];

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
      if (v20)
      {
        CFRelease(v20);
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
  v4 = [(MobileCalDAVAccountRefreshActor *)self account];
  v5 = [v4 mainPrincipal];

  v6 = [v5 calendarUserAddressesPerCalendar];
  if ([v6 count])
  {
    v18 = v3;
    v7 = [(MobileCalDAVAccountRefreshActor *)self _guidsOfExistingCalendars];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v17 = v6;
    v8 = v6;
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
          if (([v7 containsObject:{v14, v17}] & 1) == 0)
          {
            [v5 removePreferredCalendarUserAddressesForCalendarWithIdentifier:v14];
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

    v6 = v17;
    v3 = v18;
  }

  objc_autoreleasePoolPop(v3);
  v16 = *MEMORY[0x277D85DE8];
}

- (id)_guidsOfExistingCalendars
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(MobileCalDAVAccountRefreshActor *)self account];
  v4 = [v3 copyCalStore];

  if (v4)
  {
    v5 = [(MobileCalDAVAccountRefreshActor *)self account];
    v6 = [v5 dbHelper];
    v7 = [(MobileCalDAVAccountRefreshActor *)self account];
    v8 = [v7 accountID];
    [v6 calDatabaseForAccountID:v8];

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

    CFRelease(v4);
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
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateDefaultCalendarIfNeededWithDatabase:(CalDatabase *)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = [(MobileCalDAVAccountRefreshActor *)self account];
  v5 = [v4 mainPrincipal];

  v6 = [v5 defaultCalendarURL];
  if (v6)
  {
    v7 = [(MobileCalDAVAccountRefreshActor *)self account];
    v8 = [v7 copyCalStore];

    if (v8)
    {
      v9 = [v6 path];
      v10 = [v9 da_appendSlashIfNeeded];

      v11 = CalDatabaseCopyCalendarWithExternalIDInStore();
      if (!v11)
      {
LABEL_6:
        CFRelease(v8);

        goto LABEL_17;
      }

      v12 = v11;
      if (CalCalendarIsDefaultCalendarForStore())
      {
        CFRelease(v12);
        goto LABEL_6;
      }

      v25 = v10;
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
      CFRelease(v8);

      v19 = [(MobileCalDAVAccountRefreshActor *)self context];
      [v19 setShouldSave:1];
    }
  }

LABEL_17:
  if (self->_didForceDefaultCalendarRefetch || (-[MobileCalDAVAccountRefreshActor account](self, "account"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 haveForcedDefaultCalendarRefetch], v20, v6) && (v21 & 1) == 0)
  {
    v22 = [(MobileCalDAVAccountRefreshActor *)self account];
    [v22 setHaveForcedDefaultCalendarRefetch:1];

    v23 = [(MobileCalDAVAccountRefreshActor *)self context];
    [v23 setShouldSaveAccounts:1];
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