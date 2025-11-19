@interface MobileCalDAVDaemonAccount
+ (int)convertToMobileCalDAVRefreshReason:(int)a3;
+ (int)extractDARefreshReasonFromContext:(id)a3;
- (BOOL)APSTopicHasValidPrefix:(id)a3;
- (BOOL)_hasSubscribedCalendars;
- (BOOL)_shouldRefreshInResponseToDBChange:(BOOL *)a3;
- (BOOL)_shouldRegisterAPS;
- (BOOL)monitorFoldersWithIDs:(id)a3;
- (CalDAVAgent)consumer;
- (MobileCalDAVDaemonAccount)initWithBackingAccountInfo:(id)a3;
- (id)_rd_hashedAccountPersonIDWithSalt:(id)a3;
- (id)_rd_replacementHostnameForAccountPersonID;
- (id)_rem_account;
- (id)_rem_store;
- (id)beginDownloadingAttachmentWithUUID:(id)a3 consumer:(id)a4;
- (id)performCalendarDirectorySearchForTerms:(id)a3 recordTypes:(id)a4 resultLimit:(unint64_t)a5 consumer:(id)a6;
- (id)reportShareRequestAsJunkForCalendar:(id)a3 consumer:(id)a4;
- (id)respondToShareRequestForCalendar:(id)a3 withResponse:(int64_t)a4 consumer:(id)a5;
- (id)serverTokenRegistrationURL;
- (void)_attachmentDownloadDidFinish:(id)a3;
- (void)_cancelOptionsTimer;
- (void)_continueRefresh;
- (void)_probeAndSync;
- (void)_rd_resetAccountPersonIDWithError:(id)a3 changeSource:(id)a4;
- (void)_rd_saveAccountPersonIDHashedWithSalt:(id)a3 changeSource:(id)a4;
- (void)_reallyPerformSearchQuery:(id)a3;
- (void)_refresh;
- (void)_refreshSubscribedCalendarChildAccounts;
- (void)_removeRefreshDidCompleteObserver;
- (void)_serverProbeTimedOut;
- (void)_updateWatchedCollections;
- (void)bumpRefreshReason:(int)a3;
- (void)calendarDirectorySearchIsGoingAway:(id)a3;
- (void)cancelAllAttachmentDownloads;
- (void)cancelAllCalendarDirectorySearches;
- (void)cancelAllSharingRequests;
- (void)cancelCalendarDirectorySearchWithID:(id)a3;
- (void)cancelDownloadingInstance:(id)a3 error:(id)a4;
- (void)cancelRefreshWithCompletion:(id)a3;
- (void)cancelShareResponseInstance:(id)a3 error:(id)a4;
- (void)dealloc;
- (void)discoverInitialPropertiesWithConsumer:(id)a3;
- (void)rd_observePrimaryCloudKitAccountPersonIDSaltChanges;
- (void)rd_unobservePrimaryCloudKitAccountPersonIDSaltChanges;
- (void)refreshActor:(id)a3 didCompleteWithError:(id)a4;
- (void)setSafeToRefresh:(BOOL)a3;
- (void)shareResponseIsGoingAway:(id)a3;
@end

@implementation MobileCalDAVDaemonAccount

- (id)beginDownloadingAttachmentWithUUID:(id)a3 consumer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = DALoggingwithCategory();
  v9 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v8, v9))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_0, v8, v9, "XXXXXXXXX: ERROR: Should not enter! No attachment support in Reminders.", &v19, 2u);
  }

  if (!v6)
  {
    sub_10158();
  }

  if (!v7)
  {
    sub_101B4();
  }

  v10 = [MobileCalDAVDownloadContext contextWithAttachmentUUID:v6 consumer:v7];
  v11 = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  objc_sync_enter(v11);
  v12 = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  v13 = [v12 objectForKeyedSubscript:v6];

  v14 = v13;
  if (!v13)
  {
    v14 = [[MobileCalDAVAttachmentDownloader alloc] initWithAttachmentUUID:v6 forAccount:self];
    v15 = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
    [v15 setObject:v14 forKeyedSubscript:v6];
  }

  [(MobileCalDAVAttachmentDownloader *)v14 addConsumer:v7];
  objc_sync_exit(v11);

  if (!v13)
  {
    v16 = DALoggingwithCategory();
    v17 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v16, v17))
    {
      v19 = 134218242;
      v20 = v7;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_0, v16, v17, "Starting new attachment download for consumer %p and attachment UUID %@", &v19, 0x16u);
    }

    [(MobileCalDAVAttachmentDownloader *)v14 beginDownload];
  }

  return v10;
}

- (void)cancelDownloadingInstance:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    sub_10210();
  }

  v8 = v6;
  v9 = [v8 consumer];
  [v9 downloadFinishedError:v7];

  v10 = [v8 attachmentUUID];
  if (!v10)
  {
    sub_1027C();
  }

  v11 = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  objc_sync_enter(v11);
  v12 = DALoggingwithCategory();
  v13 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v12, v13))
  {
    v14 = [v8 consumer];
    v18 = 134218242;
    v19 = v14;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_0, v12, v13, "Cancelling new attachment download for consumer %p and attachment UUID %@", &v18, 0x16u);
  }

  v15 = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  v16 = [v15 objectForKeyedSubscript:v10];
  v17 = [v8 consumer];
  [v16 removeConsumer:v17];

  objc_sync_exit(v11);
}

- (void)_attachmentDownloadDidFinish:(id)a3
{
  v7 = a3;
  v4 = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  objc_sync_enter(v4);
  v5 = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  v6 = [v7 attachmentUUID];
  [v5 removeObjectForKey:v6];

  objc_sync_exit(v4);
}

- (void)cancelAllAttachmentDownloads
{
  obj = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  objc_sync_enter(obj);
  v2 = DALoggingwithCategory();
  v3 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v2, v3))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, v3, "Cancelling All attachment downloads", buf, 2u);
  }

  v4 = [NSError errorWithDomain:DAErrorDomain code:-1 userInfo:0];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v6)
  {
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = [v9 consumers];
        v11 = [v10 countByEnumeratingWithState:&v17 objects:v26 count:16];
        if (v11)
        {
          v12 = *v18;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v17 + 1) + 8 * j) downloadFinishedError:v4];
            }

            v11 = [v10 countByEnumeratingWithState:&v17 objects:v26 count:16];
          }

          while (v11);
        }

        [v9 cancelDownload];
      }

      v6 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v6);
  }

  v14 = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  [v14 removeAllObjects];

  objc_sync_exit(obj);
}

- (id)performCalendarDirectorySearchForTerms:(id)a3 recordTypes:(id)a4 resultLimit:(unint64_t)a5 consumer:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [[MobileCalDAVDirectorySearch alloc] initWithTerms:v10 recordTypes:v11 resultLimit:a5 consumer:v12 account:self];
  v14 = [(MobileCalDAVDirectorySearch *)v13 searchID];
  v15 = [(MobileCalDAVDaemonAccount *)self directorySearches];
  objc_sync_enter(v15);
  v16 = [(MobileCalDAVDaemonAccount *)self directorySearches];
  [v16 setObject:v13 forKeyedSubscript:v14];

  objc_sync_exit(v15);
  [(MobileCalDAVDirectorySearch *)v13 performSearch];

  return v14;
}

- (void)cancelCalendarDirectorySearchWithID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = [(MobileCalDAVDaemonAccount *)self directorySearches];
    objc_sync_enter(v5);
    v6 = [(MobileCalDAVDaemonAccount *)self directorySearches];
    v7 = [v6 objectForKey:v8];

    objc_sync_exit(v5);
    [v7 cancel];

    v4 = v8;
  }
}

- (void)cancelAllCalendarDirectorySearches
{
  v3 = [(MobileCalDAVDaemonAccount *)self directorySearches];
  objc_sync_enter(v3);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(MobileCalDAVDaemonAccount *)self directorySearches];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v7) cancel];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = [(MobileCalDAVDaemonAccount *)self directorySearches];
  [v8 removeAllObjects];

  objc_sync_exit(v3);
}

- (void)calendarDirectorySearchIsGoingAway:(id)a3
{
  v4 = a3;
  v5 = dataaccess_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7238;
  block[3] = &unk_205B8;
  v6 = v4;
  v11 = v6;
  dispatch_async(v5, block);

  v7 = [v6 searchID];
  v8 = [(MobileCalDAVDaemonAccount *)self directorySearches];
  objc_sync_enter(v8);
  v9 = [(MobileCalDAVDaemonAccount *)self directorySearches];
  [v9 removeObjectForKey:v7];

  objc_sync_exit(v8);
}

- (id)respondToShareRequestForCalendar:(id)a3 withResponse:(int64_t)a4 consumer:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_103C8();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  sub_10434();
LABEL_3:
  v11 = [MobileCalDAVSharingResponse responseWithCalendarID:v8 consumer:v10 account:self];
  v12 = [(MobileCalDAVDaemonAccount *)self shareResponses];
  v13 = [v11 responseID];
  [v12 setObject:v11 forKeyedSubscript:v13];

  [v11 respondToSharingRequestWithResponse:a4];
  v14 = [v11 responseID];

  return v14;
}

- (id)reportShareRequestAsJunkForCalendar:(id)a3 consumer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_104A0();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  sub_1050C();
LABEL_3:
  v9 = [MobileCalDAVSharingResponse responseWithCalendarID:v6 consumer:v8 account:self];
  v10 = [(MobileCalDAVDaemonAccount *)self shareResponses];
  v11 = [v9 responseID];
  [v10 setObject:v9 forKeyedSubscript:v11];

  [v9 reportAsJunk];
  v12 = [v9 responseID];

  return v12;
}

- (void)shareResponseIsGoingAway:(id)a3
{
  v4 = a3;
  v5 = dataaccess_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_969C;
  block[3] = &unk_205B8;
  v10 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  v7 = [(MobileCalDAVDaemonAccount *)self shareResponses];
  v8 = [v6 responseID];
  [v7 removeObjectForKey:v8];
}

- (void)cancelShareResponseInstance:(id)a3 error:(id)a4
{
  v8 = a3;
  if (!v8)
  {
    sub_10578();
  }

  v5 = [(MobileCalDAVDaemonAccount *)self shareResponses];
  v6 = [v5 objectForKeyedSubscript:v8];

  [v6 cancel];
  v7 = [(MobileCalDAVDaemonAccount *)self shareResponses];
  [v7 removeObjectForKey:v8];
}

- (void)cancelAllSharingRequests
{
  v3 = [(MobileCalDAVDaemonAccount *)self shareResponses];
  objc_sync_enter(v3);
  v4 = [NSError errorWithDomain:DAErrorDomain code:-1 userInfo:0];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(MobileCalDAVDaemonAccount *)self shareResponses];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 consumer];
        [v11 shareResponseFinishedWithError:v4];

        [v10 cancel];
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = [(MobileCalDAVDaemonAccount *)self shareResponses];
  [v12 removeAllObjects];

  objc_sync_exit(v3);
}

- (MobileCalDAVDaemonAccount)initWithBackingAccountInfo:(id)a3
{
  v17.receiver = self;
  v17.super_class = MobileCalDAVDaemonAccount;
  v3 = [(MobileCalDAVDaemonAccount *)&v17 initWithBackingAccountInfo:a3];
  if (v3)
  {
    v4 = DALoggingwithCategory();
    v5 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v4, v5))
    {
      *buf = 134217984;
      v19 = v3;
      _os_log_impl(&dword_0, v4, v5, "MobileCalDAVDaemonAccount %p starting up.", buf, 0xCu);
    }

    v3->_shouldRegisterWithRefreshManager = 1;
    v3->_fullRefresh = 0;
    v3->_forcedRefresh = 0;
    v3->_refreshReason = 0;
    v6 = objc_opt_new();
    attachmentDownloadsByAttachmentUUID = v3->_attachmentDownloadsByAttachmentUUID;
    v3->_attachmentDownloadsByAttachmentUUID = v6;

    v8 = objc_opt_new();
    shareResponses = v3->_shareResponses;
    v3->_shareResponses = v8;

    v10 = objc_opt_new();
    calendarAvailabilityRequests = v3->_calendarAvailabilityRequests;
    v3->_calendarAvailabilityRequests = v10;

    v12 = objc_opt_new();
    directorySearches = v3->_directorySearches;
    v3->_directorySearches = v12;

    v14 = objc_opt_new();
    watchedCollections = v3->_watchedCollections;
    v3->_watchedCollections = v14;

    [(MobileCalDAVDaemonAccount *)v3 rd_observePrimaryCloudKitAccountPersonIDSaltChanges];
  }

  return v3;
}

- (void)_cancelOptionsTimer
{
  v3 = [(MobileCalDAVDaemonAccount *)self optionsTimeoutTimer];
  [v3 invalidate];

  [(MobileCalDAVDaemonAccount *)self setOptionsTimeoutTimer:0];
}

- (void)dealloc
{
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 134217984;
    v7 = self;
    _os_log_impl(&dword_0, v3, v4, "MobileCalDAVDaemonAccount %p going away", buf, 0xCu);
  }

  [(MobileCalDAVDaemonAccount *)self rd_unobservePrimaryCloudKitAccountPersonIDSaltChanges];
  [(MobileCalDAVDaemonAccount *)self cancelAllCalendarDirectorySearches];
  [(MobileCalDAVDaemonAccount *)self cancelAllAttachmentDownloads];
  [(MobileCalDAVDaemonAccount *)self cancelAllSharingRequests];
  [(MobileCalDAVDaemonAccount *)self _cancelOptionsTimer];
  v5.receiver = self;
  v5.super_class = MobileCalDAVDaemonAccount;
  [(MobileCalDAVDaemonAccount *)&v5 dealloc];
}

- (id)_rem_store
{
  v2 = +[DADAgentManager sharedManager];
  v3 = [v2 rem_storeProvider];
  v4 = [v3 rem_storeForDataAccess];

  if (!v4)
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v5, v6))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_0, v5, v6, "Couldn't get an REMStore from %{public}@.", &v10, 0xCu);
    }
  }

  return v4;
}

- (id)_rem_account
{
  v3 = [(MobileCalDAVDaemonAccount *)self _rem_store];
  v4 = [(MobileCalDAVDaemonAccount *)self accountID];
  v12 = 0;
  v5 = [v3 fetchAccountWithExternalIdentifier:v4 error:&v12];
  v6 = v12;

  if (v6)
  {
    v7 = DALoggingwithCategory();
    v8 = _CPLog_to_os_log_type[3];
    if (!os_log_type_enabled(v7, v8))
    {
LABEL_5:

      goto LABEL_7;
    }

    v9 = [(MobileCalDAVDaemonAccount *)self accountID];
    *buf = 138543362;
    v14 = v9;
    v10 = "Error when fetching account from ReminderKit %{public}@.";
LABEL_4:
    _os_log_impl(&dword_0, v7, v8, v10, buf, 0xCu);

    goto LABEL_5;
  }

  if (!v5)
  {
    v7 = DALoggingwithCategory();
    v8 = _CPLog_to_os_log_type[4];
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_5;
    }

    v9 = [(MobileCalDAVDaemonAccount *)self accountID];
    *buf = 138543362;
    v14 = v9;
    v10 = "Could not find account from ReminderKit %{public}@.";
    goto LABEL_4;
  }

LABEL_7:

  return v5;
}

- (BOOL)_shouldRegisterAPS
{
  v2 = [(MobileCalDAVDaemonAccount *)self backingAccountInfo];
  v3 = [v2 isEnabledForDataclass:ACAccountDataclassCalendars];

  return v3 ^ 1;
}

- (BOOL)APSTopicHasValidPrefix:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"com.me."] & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", @"com.apple.calendar."))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 hasPrefix:@"com.icloud."];
  }

  return v4;
}

- (void)bumpRefreshReason:(int)a3
{
  refreshReason = self->_refreshReason;
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[6];
  v8 = os_log_type_enabled(v6, v7);
  if (refreshReason >= a3)
  {
    if (v8)
    {
      v10 = self->_refreshReason;
      v11 = 67109376;
      v12 = v10;
      v13 = 1024;
      v14 = a3;
      _os_log_impl(&dword_0, v6, v7, "Ignoring newRefreshReason because it's lower than _refreshReason {_refreshReason: %d, newRefreshReason: %d}", &v11, 0xEu);
    }
  }

  else
  {
    if (v8)
    {
      v9 = self->_refreshReason;
      v11 = 67109376;
      v12 = v9;
      v13 = 1024;
      v14 = a3;
      _os_log_impl(&dword_0, v6, v7, "Bumping _refreshReason {_refreshReason: %d, newRefreshReason: %d}", &v11, 0xEu);
    }

    self->_refreshReason = a3;
  }
}

- (void)cancelRefreshWithCompletion:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, v6, "Cancelling CalDAV refresh.", buf, 2u);
  }

  self->_safeToRefresh = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_A2F8;
  v14 = &unk_207C0;
  v15 = self;
  v16 = v4;
  v10.receiver = self;
  v10.super_class = MobileCalDAVDaemonAccount;
  v7 = v4;
  [(MobileCalDAVDaemonAccount *)&v10 cancelRefreshWithCompletion:&v11];
  [(MobileCalDAVDaemonAccount *)self _reallyCancelAllSearchQueries:v10.receiver];
  v8 = [(MobileCalDAVDaemonAccount *)self optionsProbe];
  v9 = [NSError errorWithDomain:CoreDAVErrorDomain code:1 userInfo:0];
  [v8 finishCoreDAVTaskWithError:v9];

  [(MobileCalDAVDaemonAccount *)self _removeRefreshDidCompleteObserver];
}

- (void)_removeRefreshDidCompleteObserver
{
  v3 = [(MobileCalDAVDaemonAccount *)self refreshDidCompleteObserver];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:v3];

    [(MobileCalDAVDaemonAccount *)self setRefreshDidCompleteObserver:0];
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v5, v6))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "MobileCalDAVDaemonAccount(RefreshDidComplete) observer cleaned up", v7, 2u);
    }
  }
}

- (BOOL)_hasSubscribedCalendars
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(MobileCalDAVDaemonAccount *)self calendars];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isSubscribed] && !objc_msgSend(v6, "isManagedByServer"))
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (void)_updateWatchedCollections
{
  [(NSMutableSet *)self->_watchedCollections removeAllObjects];
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v3, v4))
  {
    v5 = [(MobileCalDAVDaemonAccount *)self calendars];
    *buf = 134217984;
    v23 = [v5 count];
    _os_log_impl(&dword_0, v3, v4, "Updating watched collections for %luu calendars", buf, 0xCu);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(MobileCalDAVDaemonAccount *)self calendars];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v19;
    *&v8 = 138412546;
    v17 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 pushKey];
        v14 = DALoggingwithCategory();
        if (os_log_type_enabled(v14, v4))
        {
          v15 = [v12 title];
          v16 = [v12 pushKey];
          *buf = v17;
          v23 = v15;
          v24 = 2114;
          v25 = v16;
          _os_log_impl(&dword_0, v14, v4, "Push key for calendar %@ is %{public}@", buf, 0x16u);
        }

        if (v13)
        {
          [(NSMutableSet *)self->_watchedCollections addObject:v13];
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v9);
  }
}

- (void)_refreshSubscribedCalendarChildAccounts
{
  v2 = DALoggingwithCategory();
  type = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v2, type))
  {
    v3 = [(MobileCalDAVDaemonAccount *)self accountDescription];
    *buf = 138412290;
    v38 = v3;
    _os_log_impl(&dword_0, v2, type, "Kicking off a refresh of subscribed calendars for %@", buf, 0xCu);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = +[DADAgentManager sharedManager];
  v5 = [v4 activeAgents];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v33;
    *&v7 = 138412290;
    v25 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [v11 account];
        if ([v12 enabledForDADataclass:4])
        {
          v28 = v11;
          v13 = [v11 account];
          v14 = [v13 backingAccountInfo];
          [v14 parentAccountIdentifier];
          v16 = v15 = v9;
          v17 = [(MobileCalDAVDaemonAccount *)self backingAccountInfo];
          v18 = [v17 identifier];
          v19 = [v16 isEqualToString:v18];

          v9 = v15;
          if (v19)
          {
            v20 = DALoggingwithCategory();
            if (os_log_type_enabled(v20, type))
            {
              v21 = [v28 account];
              *buf = v25;
              v38 = v21;
              _os_log_impl(&dword_0, v20, type, "Found a child SubCal account: %@", buf, 0xCu);
            }

            v22 = [(MobileCalDAVDaemonAccount *)self refreshContext];
            v23 = [v22 wasUserRequested];

            v24 = dataaccess_get_global_queue();
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_ABD4;
            block[3] = &unk_207E8;
            block[4] = v28;
            v31 = v23;
            dispatch_async(v24, block);
          }
        }

        else
        {
        }
      }

      v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v8);
  }
}

- (void)refreshActor:(id)a3 didCompleteWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSDate date];
  v9 = DALoggingwithCategory();
  v10 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v9, v10))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v9, v10, "Refresh complete. Releasing gatekeeper lock and notifying PersistentConnection", buf, 2u);
  }

  ADClientAddValueForScalarKey();
  if (v7)
  {
    v11 = [v7 domain];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%ld", v11, [v7 code]);
  }

  else
  {
    ADClientAddValueForScalarKey();
    v12 = @"success";
  }

  v13 = [(MobileCalDAVDaemonAccount *)self host];
  [NSString stringWithFormat:@"com.apple.dataaccess.caldav.%@.%@", v13, v12];
  ADClientAddValueForScalarKey();

  [(MobileCalDAVDaemonAccount *)self _updateWatchedCollections];
  WeakRetained = objc_loadWeakRetained(&self->_consumer);

  if (WeakRetained)
  {
    v15 = DALoggingwithCategory();
    if (os_log_type_enabled(v15, v10))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v15, v10, "Notifying consumer about our refresh completion", buf, 2u);
    }

    v16 = objc_loadWeakRetained(&self->_consumer);
    [v16 refreshDidCompleteWithError:v7];
  }

  v17 = [v7 domain];
  v18 = &ADClientAddValueForScalarKey_ptr;
  if ([v17 isEqualToString:DAErrorDomain])
  {
    v19 = [v7 code];

    v20 = v6;
    if (v19 == &dword_4 + 2)
    {
      goto LABEL_26;
    }
  }

  else
  {

    v20 = v6;
  }

  shouldRegisterWithRefreshManager = self->_shouldRegisterWithRefreshManager;
  if (shouldRegisterWithRefreshManager)
  {
    self->_shouldRegisterWithRefreshManager = 0;
    v22 = +[DARefreshManager sharedManager];
    [v22 registerDelegate:self];
  }

  v23 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
  v24 = [v23 shouldUpdatePushDelegate];

  if ((v24 & 1) != 0 || shouldRegisterWithRefreshManager)
  {
    v25 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
    v26 = [v25 APSTopic];
    if (v26)
    {
      v27 = v26;
      v28 = [(MobileCalDAVDaemonAccount *)self _shouldRegisterAPS];

      if (v28)
      {
        v29 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
        v30 = [v29 APSTopic];
        v31 = [(MobileCalDAVDaemonAccount *)self APSTopicHasValidPrefix:v30];

        if (v31)
        {
          v32 = +[DARefreshManager sharedManager];
          v33 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
          v34 = [v33 APSTopic];
          v35 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
          [v35 APSEnv];
          v37 = v36 = v8;
          [v32 registerTopic:v34 forDelegate:self inEnvironment:v37];

          v8 = v36;
          v20 = v6;

          v18 = &ADClientAddValueForScalarKey_ptr;
        }

        else
        {
          v32 = DALoggingwithCategory();
          v86 = _CPLog_to_os_log_type[4];
          if (os_log_type_enabled(v32, v86))
          {
            v87 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
            v88 = [v87 APSTopic];
            *buf = 138543362;
            v92 = v88;
            _os_log_impl(&dword_0, v32, v86, "Refusing to register for the topic %{public}@ because it has an invalid prefix.", buf, 0xCu);

            v18 = &ADClientAddValueForScalarKey_ptr;
          }
        }

        goto LABEL_24;
      }
    }

    else
    {
    }

    v32 = +[DARefreshManager sharedManager];
    [v32 unregisterTopic:0 forDelegate:self inEnvironment:0];
LABEL_24:
  }

  v38 = [v18[103] sharedManager];
  [v38 delegateDidCompleteRefresh:self];

LABEL_26:
  if ([(MobileCalDAVDaemonAccount *)self _hasSubscribedCalendars])
  {
    v39 = [(MobileCalDAVDaemonAccount *)self refreshContext];
    v40 = [v39 isCalendarsOnly];

    if (!v7 && (v40 & 1) == 0)
    {
      [(MobileCalDAVDaemonAccount *)self _refreshSubscribedCalendarChildAccounts];
    }
  }

  v90.receiver = self;
  v90.super_class = MobileCalDAVDaemonAccount;
  [(MobileCalDAVDaemonAccount *)&v90 refreshActor:v20 didCompleteWithError:v7];
  if (self->_holdingGatekeeperLock)
  {
    self->_holdingGatekeeperLock = 0;
    v41 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v41 relinquishLocksForWaiter:self dataclasses:20 moreComing:0];
  }

  v42 = +[DABabysitter sharedBabysitter];
  [v42 unregisterAccount:self forOperationWithName:@"CalDAVRefresh"];

  v43 = [v7 domain];
  v44 = [v43 isEqualToString:CoreDAVHTTPStatusErrorDomain];
  if (!v44)
  {
    v47 = 0;
    goto LABEL_36;
  }

  v45 = [v7 code];

  if (v45 == &stru_1A8.reserved3 + 3)
  {
    v43 = [v7 userInfo];
    v46 = [v43 objectForKeyedSubscript:CoreDAVHTTPHeaders];
    v47 = [v46 DAObjectForKeyCaseInsensitive:@"retry-after"];

LABEL_36:
    goto LABEL_38;
  }

  v47 = 0;
  v44 = 0;
LABEL_38:
  v48 = [v20 context];
  v49 = [v48 shouldRetry];

  if (v49)
  {
    v50 = DALoggingwithCategory();
    v51 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v50, v51))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v50, v51, "The server returned precondition failure to our bulk upload. Retrying in a bit.", buf, 2u);
    }

    goto LABEL_42;
  }

  v64 = [v7 domain];
  if (([v64 isEqualToString:NSURLErrorDomain] & 1) == 0)
  {

    if (v44)
    {
LABEL_42:
      v52 = 480.0;
      goto LABEL_43;
    }

LABEL_65:
    v6 = v20;
    v62 = 0;
    v63 = 0;
    self->_lastRetryTimeout = 0.0;
    if (v7)
    {
      goto LABEL_77;
    }

    goto LABEL_71;
  }

  v65 = [v7 code];

  if (v65 == -1001)
  {
    v52 = 120.0;
  }

  else
  {
    v52 = 480.0;
  }

  if (v65 == -1001)
  {
    v66 = 1;
  }

  else
  {
    v66 = v44;
  }

  if (v66 != 1)
  {
    goto LABEL_65;
  }

LABEL_43:
  if (v47)
  {
    v53 = objc_opt_class();
    v54 = [v20 context];
    v55 = [v53 extractDARefreshReasonFromContext:v54];

    [v47 doubleValue];
    v57 = v56;
    v58 = DALoggingwithCategory();
    v59 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v58, v59))
    {
      *buf = 134217984;
      v92 = *&v57;
      _os_log_impl(&dword_0, v58, v59, "The server returned a 503 error and told us to try again in %f seconds", buf, 0xCu);
    }

    v6 = v20;

    v60 = +[DARefreshManager sharedManager];
    v61 = [(MobileCalDAVDaemonAccount *)self watchedCollections];
    [v60 retryRefreshForDelegate:self withCollections:v61 after:v55 originalRefreshReason:v57];

    v62 = 0;
    v63 = 1;
    if (!v7)
    {
LABEL_71:
      v78 = [(MobileCalDAVDaemonAccount *)self backingAccountInfo];
      if ([v78 supportsAuthentication])
      {
        [(MobileCalDAVDaemonAccount *)self backingAccountInfo];
        v79 = v89 = v8;
        v80 = [v79 isAuthenticated];

        v8 = v89;
        if ((v80 & 1) == 0)
        {
          v81 = DALoggingwithCategory();
          v82 = _CPLog_to_os_log_type[4];
          if (os_log_type_enabled(v81, v82))
          {
            *buf = 138412290;
            v92 = self;
            _os_log_impl(&dword_0, v81, v82, "Received a success response from server while account is not marked as authenticated. Set isAuthenticated flag and save account %@", buf, 0xCu);
          }

          v83 = [(MobileCalDAVDaemonAccount *)self backingAccountInfo];
          [v83 setAuthenticated:1];

          [(MobileCalDAVDaemonAccount *)self saveAccountProperties];
          v8 = v89;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    lastRetryTimeout = self->_lastRetryTimeout;
    if (lastRetryTimeout == 0.0)
    {
      v68 = 60.0;
    }

    else
    {
      v68 = lastRetryTimeout + lastRetryTimeout;
    }

    self->_lastRetryTimeout = v68;
    v69 = DALoggingwithCategory();
    v70 = _CPLog_to_os_log_type[5];
    v71 = os_log_type_enabled(v69, v70);
    if (v68 >= v52)
    {
      if (v71)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v69, v70, "We've already backed off for 7 minutes. Giving up and retrying again at our regularly scheduled time", buf, 2u);
      }

      v63 = 0;
      v62 = 1;
    }

    else
    {
      if (v71)
      {
        v72 = self->_lastRetryTimeout;
        *buf = 134217984;
        v92 = *&v72;
        _os_log_impl(&dword_0, v69, v70, "We'll retry again after %f seconds", buf, 0xCu);
      }

      v73 = objc_opt_class();
      v74 = [v6 context];
      v75 = [v73 extractDARefreshReasonFromContext:v74];

      v76 = +[DARefreshManager sharedManager];
      v77 = [(MobileCalDAVDaemonAccount *)self watchedCollections];
      [v76 retryRefreshForDelegate:self withCollections:v77 after:v75 originalRefreshReason:self->_lastRetryTimeout];

      v62 = 0;
      v63 = 1;
    }

    if (!v7)
    {
      goto LABEL_71;
    }
  }

LABEL_77:
  if (RecordCalendarDiagnostics())
  {
    v84 = [v6 accountSyncDiagnostics];
    v85 = [v6 context];
    [(MobileCalDAVDaemonAccount *)self _persistAccountSyncDiagnostics:v84 withContext:v85 completionTime:v8 willAttemptToRetry:v63 hitInternalRefreshTimeout:v62 error:v7];
  }
}

- (void)_reallyPerformSearchQuery:(id)a3
{
  v4 = a3;
  if ([(MobileCalDAVDaemonAccount *)self safeToRefresh])
  {
    v10.receiver = self;
    v10.super_class = MobileCalDAVDaemonAccount;
    [(MobileCalDAVDaemonAccount *)&v10 _reallyPerformSearchQuery:v4];
  }

  else
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v5, v6))
    {
      v7 = [v4 searchString];
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_0, v5, v6, "Dropping search query %@ because the agent is shut(ting) down.", buf, 0xCu);
    }

    v8 = [v4 consumer];
    v9 = [NSError errorWithDomain:DAErrorDomain code:68 userInfo:0];
    [v8 searchQuery:v4 finishedWithError:v9];
  }
}

- (BOOL)_shouldRefreshInResponseToDBChange:(BOOL *)a3
{
  refreshReason = self->_refreshReason;
  if (refreshReason == 1)
  {
    v6 = DALoggingwithCategory();
    v15 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v6, v15))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, v15, "Do not refresh on daemon launch, we have RDSyncPoller does this.", buf, 2u);
    }

    v16 = 0;
    goto LABEL_18;
  }

  if (refreshReason == 2)
  {
    v6 = +[DADAgentManager sharedManager];
    v7 = [v6 rem_storeProvider];
    v8 = [v7 rem_storeForDataAccess];

    v9 = [REMDAChangeTrackingHelper alloc];
    v10 = [(MobileCalDAVDaemonAccount *)self rem_provideAccountInfo];
    v11 = [v9 initWithREMDAAccount:v10 clientName:DADREMDAChangeTrackingHelperClientName withREMStore:v8];

    v12 = [v11 fetchChangesSinceLastConsumed];
    v13 = v12;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v35) = 0;
    if (v12)
    {
      v14 = [v12 error];
      if (v14)
      {
      }

      else if (![v13 isTruncated])
      {
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_BD00;
        v33[3] = &unk_20810;
        v33[4] = buf;
        [v13 enumerateChanges:7 forModelsOfClass:objc_opt_class() withBlock:v33];
        if (*(*&buf[8] + 24) == 1)
        {
          v25 = DALoggingwithCategory();
          v26 = _CPLog_to_os_log_type[6];
          if (os_log_type_enabled(v25, v26))
          {
            v27 = [(MobileCalDAVDaemonAccount *)self accountDescription];
            LODWORD(v40) = 138412290;
            *(&v40 + 4) = v27;
            _os_log_impl(&dword_0, v25, v26, "Found calendar changes for account %@", &v40, 0xCu);
          }

          v16 = 1;
        }

        else
        {
          *&v40 = 0;
          *(&v40 + 1) = &v40;
          v41 = 0x2020000000;
          v42 = 0;
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_BD14;
          v32[3] = &unk_20810;
          v32[4] = &v40;
          [v13 enumerateChanges:7 forModelsOfClass:objc_opt_class() withBlock:v32];
          v16 = *(*(&v40 + 1) + 24);
          if (v16 == 1)
          {
            v28 = DALoggingwithCategory();
            v29 = _CPLog_to_os_log_type[6];
            if (os_log_type_enabled(v28, v29))
            {
              v30 = [(MobileCalDAVDaemonAccount *)self accountDescription];
              *v38 = 138412290;
              v39 = v30;
              v31 = v30;
              _os_log_impl(&dword_0, v28, v29, "Found task changes for account %@", v38, 0xCu);
            }
          }

          _Block_object_dispose(&v40, 8);
        }

        goto LABEL_17;
      }
    }

    v16 = 1;
    if (a3)
    {
      *a3 = 1;
    }

LABEL_17:
    _Block_object_dispose(buf, 8);

    goto LABEL_18;
  }

  if (![(MobileCalDAVDaemonAccount *)self needsAccountPropertyRefresh])
  {
    v16 = 1;
    goto LABEL_19;
  }

  v6 = DALoggingwithCategory();
  v17 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v6, v17))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v6, v17, "Account Properties Need to Be Refreshed. Allowing Refresh to Continue..", buf, 2u);
  }

  v16 = 1;
LABEL_18:

LABEL_19:
  v18 = DALoggingwithCategory();
  v19 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v18, v19))
  {
    v20 = [(MobileCalDAVDaemonAccount *)self accountID];
    if (v16)
    {
      v21 = @"Starting";
    }

    else
    {
      v21 = @"Blocking";
    }

    if (v16)
    {
      v22 = @"have";
    }

    else
    {
      v22 = @"do not have";
    }

    v23 = [NSNumber numberWithUnsignedInt:self->_refreshReason];
    *buf = 138544130;
    *&buf[4] = v20;
    *&buf[12] = 2114;
    *&buf[14] = v21;
    *&buf[22] = 2114;
    v35 = v22;
    v36 = 2114;
    v37 = v23;
    _os_log_impl(&dword_0, v18, v19, "[CalDAVAccountID %{public}@] %{public}@ Account Refresh as we %{public}@ local DB changes or account properties need refresh or suppressed on daemon launch {_refreshReason: %{public}@}", buf, 0x2Au);
  }

  return v16;
}

- (void)_continueRefresh
{
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v3, v4))
  {
    if (self->_fullRefresh)
    {
      v5 = &stru_20990;
    }

    else
    {
      v5 = @"calendars for ";
    }

    v6 = [(MobileCalDAVDaemonAccount *)self accountID];
    refreshReason = self->_refreshReason;
    *buf = 138543874;
    v42 = v5;
    v43 = 2114;
    v44 = v6;
    v45 = 1024;
    v46 = refreshReason;
    _os_log_impl(&dword_0, v3, v4, "Gatekeeper gave us the goahead. Refreshing CalDAV %{public}@account with ID %{public}@. Reason: %x", buf, 0x1Cu);
  }

  if (self->_waitingForDiscoveryGatekeeper || self->_holdingDiscoveryGatekeeperLock)
  {
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v8, v9))
    {
      v10 = [(MobileCalDAVDaemonAccount *)self accountID];
      v11 = self->_refreshReason;
      *buf = 138543618;
      v42 = v10;
      v43 = 1024;
      LODWORD(v44) = v11;
      _os_log_impl(&dword_0, v8, v9, "We shouldn't be entering _continueRefresh when doing account prop discovery {accountID: %{public}@, refresh reason: %x}", buf, 0x12u);
    }
  }

  v40 = 0;
  if ([(MobileCalDAVDaemonAccount *)self _shouldRefreshInResponseToDBChange:&v40])
  {
    v12 = [(MobileCalDAVDaemonAccount *)self host];
    [NSString stringWithFormat:@"com.apple.dataaccess.caldav.%@.syncattempt", v12];
    ADClientAddValueForScalarKey();

    ADClientAddValueForScalarKey();
    v13 = +[CalDAVRefreshContext defaultContext];
    [v13 setIsForced:(self->_forcedRefresh | v40) & 1];
    [v13 setIsCalendarsOnly:!self->_fullRefresh];
    [v13 setWasUserRequested:(self->_refreshReason >> 4) & 1];
    [v13 setWasDueToPush:(self->_refreshReason >> 2) & 1];
    [(MobileCalDAVDaemonAccount *)self setShouldUseOpportunisticSockets:0];
    -[MobileCalDAVDaemonAccount setWasUserInitiated:](self, "setWasUserInitiated:", [v13 wasUserRequested]);
    [(MobileCalDAVDaemonAccount *)self refreshWithContext:v13];
    self->_forcedRefresh = 0;
    self->_fullRefresh = 0;
    self->_refreshReason = 0;
    goto LABEL_34;
  }

  v14 = DALoggingwithCategory();
  if (os_log_type_enabled(v14, v4))
  {
    v15 = [NSNumber numberWithUnsignedInt:self->_refreshReason];
    *buf = 138412290;
    v42 = v15;
    _os_log_impl(&dword_0, v14, v4, "There's no need for us to refresh right now as there are no changes in our local database %@", buf, 0xCu);
  }

  if (self->_refreshReason == 1)
  {
    [(MobileCalDAVDaemonAccount *)self _updateWatchedCollections];
    if (self->_shouldRegisterWithRefreshManager)
    {
      self->_shouldRegisterWithRefreshManager = 0;
      v16 = +[DARefreshManager sharedManager];
      [v16 registerDelegate:self];

      v17 = DALoggingwithCategory();
      if (os_log_type_enabled(v17, v4))
      {
        v18 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
        v19 = [v18 APSTopic];
        v20 = [(MobileCalDAVDaemonAccount *)self accountID];
        *buf = 138543618;
        v42 = v19;
        v43 = 2114;
        v44 = v20;
        _os_log_impl(&dword_0, v17, v4, "Manually register APS topic since we rejected normal refreshing on daemon launch {APSTopic: %{public}@, accountID: %{public}@}", buf, 0x16u);
      }

      v21 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
      v22 = [v21 APSTopic];
      if (v22)
      {
        v23 = v22;
        v24 = [(MobileCalDAVDaemonAccount *)self _shouldRegisterAPS];

        if (!v24)
        {
LABEL_26:
          v35 = +[DARefreshManager sharedManager];
          [v35 delegateDidCompleteRefresh:self];

          goto LABEL_27;
        }

        v25 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
        v26 = [v25 APSTopic];
        v27 = [(MobileCalDAVDaemonAccount *)self APSTopicHasValidPrefix:v26];

        if (v27)
        {
          v21 = +[DARefreshManager sharedManager];
          v28 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
          v29 = [v28 APSTopic];
          v30 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
          v31 = [v30 APSEnv];
          [v21 registerTopic:v29 forDelegate:self inEnvironment:v31];
        }

        else
        {
          v21 = DALoggingwithCategory();
          v32 = _CPLog_to_os_log_type[4];
          if (os_log_type_enabled(v21, v32))
          {
            v33 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
            v34 = [v33 APSTopic];
            *buf = 138543362;
            v42 = v34;
            _os_log_impl(&dword_0, v21, v32, "Refusing to register for the topic %{public}@ because it has an invalid prefix.", buf, 0xCu);
          }
        }
      }

      goto LABEL_26;
    }
  }

LABEL_27:
  self->_forcedRefresh = 0;
  self->_fullRefresh = 0;
  self->_refreshReason = 0;
  if (self->_holdingGatekeeperLock)
  {
    self->_holdingGatekeeperLock = 0;
    v36 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v36 relinquishLocksForWaiter:self dataclasses:20 moreComing:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_consumer);

  if (WeakRetained)
  {
    v38 = DALoggingwithCategory();
    if (os_log_type_enabled(v38, v4))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v38, v4, "Notifying consumer about our refresh completion", buf, 2u);
    }

    v39 = objc_loadWeakRetained(&self->_consumer);
    [v39 refreshDidCompleteWithError:0];
  }

  v13 = +[DABabysitter sharedBabysitter];
  [v13 unregisterAccount:self forOperationWithName:@"CalDAVRefresh"];
LABEL_34:
}

- (void)_refresh
{
  if (([(MobileCalDAVDaemonAccount *)self isEnabledForDataclass:kAccountDataclassCalendars]& 1) != 0 || ([(MobileCalDAVDaemonAccount *)self isEnabledForDataclass:kAccountDataclassReminders]& 1) != 0)
  {
    v3 = [(MobileCalDAVDaemonAccount *)self _rem_account];
    if (v3)
    {
      refreshReason = self->_refreshReason;
      if (refreshReason == 1 || refreshReason == 32)
      {
        v5 = DALoggingwithCategory();
        v6 = _CPLog_to_os_log_type[6];
        if (os_log_type_enabled(v5, v6))
        {
          v7 = [(MobileCalDAVDaemonAccount *)self accountID];
          v8 = [(MobileCalDAVDaemonAccount *)self accountDescription];
          *buf = 138543618;
          v58 = v7;
          v59 = 2112;
          *v60 = v8;
          _os_log_impl(&dword_0, v5, v6, "Let's ensure change tracking state exist for account: %{public}@ (%@).", buf, 0x16u);
        }

        v9 = +[DADAgentManager sharedManager];
        v10 = [v9 rem_storeProvider];
        v11 = [v10 rem_storeForDataAccess];

        v12 = [REMDAChangeTrackingHelper alloc];
        v13 = [(MobileCalDAVDaemonAccount *)self rem_provideAccountInfo];
        v14 = [v12 initWithREMDAAccount:v13 clientName:DADREMDAChangeTrackingHelperClientName withREMStore:v11];

        v15 = [v14 fetchAndInitializeChangeTrackingStateIfNeeded];
      }

      else
      {
        v6 = _CPLog_to_os_log_type[6];
      }

      v32 = DALoggingwithCategory();
      if (os_log_type_enabled(v32, v6))
      {
        v33 = [(MobileCalDAVDaemonAccount *)self accountID];
        forcedRefresh = self->_forcedRefresh;
        fullRefresh = self->_fullRefresh;
        v36 = self->_refreshReason;
        *buf = 138544130;
        v58 = v33;
        v59 = 1024;
        *v60 = forcedRefresh;
        *&v60[4] = 1024;
        *&v60[6] = fullRefresh;
        v61 = 1024;
        v62 = v36;
        _os_log_impl(&dword_0, v32, v6, "_refresh called for account %{public}@. Forced:%d full:%d reason: %x", buf, 0x1Eu);
      }

      if (self->_waitingForGatekeeper)
      {
        goto LABEL_36;
      }

      v37 = DALoggingwithCategory();
      if (os_log_type_enabled(v37, v6))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v37, v6, "Refresh fired. Requesting lock from gatekeeper.", buf, 2u);
      }

      v38 = +[DABabysitter sharedBabysitter];
      v39 = [v38 registerAccount:self forOperationWithName:@"CalDAVRefresh"];

      if (v39)
      {
        if (self->_holdingGatekeeperLock && !self->_fullRefresh)
        {
          v50 = DALoggingwithCategory();
          if (os_log_type_enabled(v50, v6))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v50, v6, "Dropping folder refresh request since a full sync is already in progress", buf, 2u);
          }

          self->_refreshReason = 0;
          WeakRetained = +[DABabysitter sharedBabysitter];
          [WeakRetained unregisterAccount:self forOperationWithName:@"CalDAVRefresh"];
        }

        else
        {
          v40 = objc_opt_new();
          v41 = DALoggingwithCategory();
          v42 = _CPLog_to_os_log_type[5];
          if (os_log_type_enabled(v41, v42))
          {
            v43 = [v40 transactionId];
            *buf = 138543362;
            v58 = v43;
            _os_log_impl(&dword_0, v41, v42, "_refresh: DATransaction starting, ID: %{public}@", buf, 0xCu);
          }

          v44 = [[DAActivity alloc] initWithAccount:self];
          self->_waitingForGatekeeper = 1;
          v45 = +[DALocalDBGateKeeper sharedGateKeeper];
          v51[0] = _NSConcreteStackBlock;
          v51[1] = 3221225472;
          v51[2] = sub_CC18;
          v51[3] = &unk_20860;
          v51[4] = self;
          v52 = v40;
          v53 = v44;
          v46 = v44;
          WeakRetained = v40;
          [v45 registerWaiter:self forDataclassLocks:20 completionHandler:v51];
        }
      }

      else
      {
        v47 = DALoggingwithCategory();
        v48 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v47, v48))
        {
          *buf = 138412290;
          v58 = self;
          _os_log_impl(&dword_0, v47, v48, "This account has been put in timeout by the babysitter. Failing this sync. %@", buf, 0xCu);
        }

        WeakRetained = objc_loadWeakRetained(&self->_consumer);
        v49 = [NSError errorWithDomain:DAErrorDomain code:6 userInfo:0];
        [WeakRetained refreshDidCompleteWithError:v49];
      }
    }

    else
    {
      v16 = DALoggingwithCategory();
      v17 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v16, v17))
      {
        v18 = [(MobileCalDAVDaemonAccount *)self accountID];
        *buf = 138543362;
        v58 = v18;
        _os_log_impl(&dword_0, v16, v17, "_refresh: LOOKATME! Couldn't fetch an REM account when trying to sync, perhaps deleted in race conditions? Now disabling and re-enabling the agents... {acctID: %{public}@}.", buf, 0xCu);
      }

      v19 = objc_loadWeakRetained(&self->_consumer);
      if (v19)
      {
        v20 = objc_loadWeakRetained(&self->_consumer);
        v21 = [NSError errorWithDomain:DAErrorDomain code:6 userInfo:0];
        [v20 refreshDidCompleteWithError:v21];
      }

      v22 = +[DADAgentManager sharedManager];
      v23 = [v22 disableMonitoringAgents];
      v24 = dataaccess_get_global_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_CC0C;
      block[3] = &unk_20838;
      v55 = v22;
      v56 = v23;
      WeakRetained = v22;
      dispatch_async(v24, block);
    }

LABEL_35:

LABEL_36:
    return;
  }

  v26 = DALoggingwithCategory();
  v27 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v26, v27))
  {
    v28 = [(MobileCalDAVDaemonAccount *)self accountDescription];
    *buf = 138412290;
    v58 = v28;
    _os_log_impl(&dword_0, v26, v27, "Account %@ was told to refresh, but it is disabled for calendars. Refusing to refresh.", buf, 0xCu);
  }

  v29 = objc_loadWeakRetained(&self->_consumer);
  if (v29)
  {
    v30 = DALoggingwithCategory();
    v31 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v30, v31))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v30, v31, "Notifying consumer about our refresh completion", buf, 2u);
    }

    v3 = objc_loadWeakRetained(&self->_consumer);
    WeakRetained = [NSError errorWithDomain:DAErrorDomain code:6 userInfo:0];
    [v3 refreshDidCompleteWithError:WeakRetained];
    goto LABEL_35;
  }
}

- (void)_serverProbeTimedOut
{
  v3 = [(MobileCalDAVDaemonAccount *)self taskManager];
  v4 = [v3 activeModalTask];

  v5 = DALoggingwithCategory();
  v6 = v5;
  if (v4)
  {
    v7 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v5, v7))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_0, v6, v7, "The options task timer fired, but the task manager is modal. We'll wait until it drops modal before tearing down this task.", &v14, 2u);
    }
  }

  else
  {
    v8 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v5, _CPLog_to_os_log_type[4]))
    {
      v9 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
      v10 = [v9 principalURL];
      +[DABehaviorOptions defaultDAVProbeTimeout];
      v14 = 138412546;
      v15 = v10;
      v16 = 2048;
      v17 = v11;
      _os_log_impl(&dword_0, v6, v8, "We weren't able to reach the server at %@ within %lf seconds. Bailing out of this refresh early.", &v14, 0x16u);
    }

    [(MobileCalDAVDaemonAccount *)self _cancelOptionsTimer];
    v12 = [(MobileCalDAVDaemonAccount *)self optionsProbe];
    v13 = [NSError errorWithDomain:CoreDAVErrorDomain code:1 userInfo:0];
    [v12 finishCoreDAVTaskWithError:v13];

    [(MobileCalDAVDaemonAccount *)self setOptionsProbe:0];
  }
}

- (void)discoverInitialPropertiesWithConsumer:(id)a3
{
  v4 = a3;
  v5 = +[DABabysitter sharedBabysitter];
  v6 = [v5 registerAccount:self forOperationWithName:@"CalDAVValidityCheck"];

  if (v6)
  {
    if (self->_waitingForDiscoveryGatekeeper || self->_holdingDiscoveryGatekeeperLock)
    {
      v7 = DALoggingwithCategory();
      v8 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v7, v8))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, v8, "Already holding (or waiting for) a gatekeeper lock, so skipping this property discovery request", buf, 2u);
      }

      v9 = +[DABabysitter sharedBabysitter];
      [v9 unregisterAccount:self forOperationWithName:@"CalDAVValidityCheck"];
    }

    else
    {
      self->_waitingForDiscoveryGatekeeper = 1;
      v12 = objc_opt_new();
      v13 = DALoggingwithCategory();
      v14 = _CPLog_to_os_log_type[5];
      if (os_log_type_enabled(v13, v14))
      {
        v15 = [v12 transactionId];
        *buf = 138543362;
        v24 = v15;
        _os_log_impl(&dword_0, v13, v14, "discoverInitialPropertiesWithConsumer: DATransaction starting, ID: %{public}@", buf, 0xCu);
      }

      v16 = [[DAActivity alloc] initWithAccount:self];
      v17 = +[DALocalDBGateKeeper sharedGateKeeper];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_D550;
      v19[3] = &unk_20888;
      v19[4] = self;
      v20 = v4;
      v21 = v12;
      v22 = v16;
      v18 = v16;
      v9 = v12;
      [v17 registerWaiter:self forDataclassLocks:20 completionHandler:v19];
    }
  }

  else
  {
    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v10, v11))
    {
      *buf = 138412290;
      v24 = self;
      _os_log_impl(&dword_0, v10, v11, "This account has been put in timeout by the babysitter. Failing this sync. %@", buf, 0xCu);
    }

    v9 = [NSError errorWithDomain:DAErrorDomain code:6 userInfo:0];
    [v4 account:self isValid:0 validationError:v9];
  }
}

- (void)_probeAndSync
{
  if (self->_holdingGatekeeperLock)
  {
    v3 = DALoggingwithCategory();
    v4 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v3, v4))
    {
      v5 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
      v6 = [v5 principalURL];
      *buf = 138412290;
      v30 = v6;
      _os_log_impl(&dword_0, v3, v4, "Ignoring probe request for %@ as we're already in the middle of a refresh", buf, 0xCu);
    }
  }

  else
  {
    v7 = [(MobileCalDAVDaemonAccount *)self optionsProbe];

    if (v7)
    {
      v3 = DALoggingwithCategory();
      v8 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v3, v8))
      {
        v9 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
        v10 = [v9 principalURL];
        *buf = 138412290;
        v30 = v10;
        _os_log_impl(&dword_0, v3, v8, "Ignoring probe request for %@ as we already have one outstanding", buf, 0xCu);
      }
    }

    else
    {
      v11 = +[DABabysitter sharedBabysitter];
      v12 = [v11 registerAccount:self forOperationWithName:@"CalDAVProbe"];

      if (v12)
      {
        v13 = [(MobileCalDAVDaemonAccount *)self host];
        [NSString stringWithFormat:@"com.apple.dataaccess.caldav.%@.probeattempt", v13];
        ADClientAddValueForScalarKey();

        ADClientAddValueForScalarKey();
        v14 = DALoggingwithCategory();
        v15 = _CPLog_to_os_log_type[6];
        if (os_log_type_enabled(v14, v15))
        {
          v16 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
          v17 = [v16 principalURL];
          +[DABehaviorOptions defaultDAVProbeTimeout];
          *buf = 138412546;
          v30 = v17;
          v31 = 2048;
          v32 = v18;
          _os_log_impl(&dword_0, v14, v15, "Probing the host at %@ to see if we have a good enough network connection. We'll wait up to %lf seconds.", buf, 0x16u);
        }

        v19 = [CoreDAVOptionsTask alloc];
        v20 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
        v21 = [v20 principalURL];
        v3 = [v19 initWithURL:v21];

        v22 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
        [v3 setAccountInfoProvider:v22];

        objc_initWeak(buf, self);
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_DAB8;
        v27[3] = &unk_204C0;
        objc_copyWeak(&v28, buf);
        [v3 setCompletionBlock:v27];
        +[DABehaviorOptions defaultDAVProbeTimeout];
        v23 = [NSTimer scheduledTimerWithTimeInterval:self target:"_serverProbeTimedOut" selector:0 userInfo:1 repeats:?];
        [(MobileCalDAVDaemonAccount *)self setOptionsTimeoutTimer:v23];

        [(MobileCalDAVDaemonAccount *)self setOptionsProbe:v3];
        v24 = [(MobileCalDAVDaemonAccount *)self taskManager];
        v25 = [(MobileCalDAVDaemonAccount *)self optionsProbe];
        [v24 submitQueuedCoreDAVTask:v25];

        objc_destroyWeak(&v28);
        objc_destroyWeak(buf);
      }

      else
      {
        v3 = DALoggingwithCategory();
        v26 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v3, v26))
        {
          *buf = 138412290;
          v30 = self;
          _os_log_impl(&dword_0, v3, v26, "This account has been put in timeout by the babysitter. Failing this sync. %@", buf, 0xCu);
        }
      }
    }
  }
}

- (id)serverTokenRegistrationURL
{
  if ((byte_26A80 & 1) == 0)
  {
    byte_26A80 = 1;
    v3 = CFPreferencesCopyAppValue(@"DAAPSTokenURL", kCFPreferencesAnyApplication);
    if (v3)
    {
      v4 = [NSURL URLWithString:v3];
      v5 = qword_26A78;
      qword_26A78 = v4;
    }
  }

  if (qword_26A78)
  {
    v6 = qword_26A78;
  }

  else
  {
    v7 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
    v8 = [v7 APSSubscriptionURL];

    if (v8)
    {
      v9 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
      v6 = [v9 APSSubscriptionURL];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)setSafeToRefresh:(BOOL)a3
{
  self->_safeToRefresh = a3;
  if (a3)
  {
    v4 = DALoggingwithCategory();
    v5 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v4, v5))
    {
      v6 = [(MobileCalDAVDaemonAccount *)self accountDescription];
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_0, v4, v5, "Account %@ was told it is safe to refresh. Kicking off a refresh.", buf, 0xCu);
    }

    [(MobileCalDAVDaemonAccount *)self setFullRefresh:1];
    v7 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
    v8 = [v7 principalURL];
    if (v8)
    {
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_consumer);

      if (WeakRetained)
      {
        v10 = objc_loadWeakRetained(&self->_consumer);
        v11 = objc_opt_respondsToSelector();

        v12 = objc_loadWeakRetained(&self->_consumer);
        if (v11)
        {
          [v12 _validateAndSync:0];
        }

        else
        {
          v13 = [NSString stringWithFormat:@"<rdar://problem/37173724>. Consumer class: [%@]", objc_opt_class()];

          [CalCrashReporter simulateCrashWithMessage:v13];
        }

        return;
      }
    }

    if (([(MobileCalDAVDaemonAccount *)self refreshReason]& 8) != 0 || ![(MobileCalDAVDaemonAccount *)self refreshReason])
    {
      [(MobileCalDAVDaemonAccount *)self _probeAndSync];
    }

    else
    {
      [(MobileCalDAVDaemonAccount *)self _refresh];
    }
  }

  else
  {

    [(MobileCalDAVDaemonAccount *)self cancelRefreshWithCompletion:0];
  }
}

- (BOOL)monitorFoldersWithIDs:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [(MobileCalDAVDaemonAccount *)self accountDescription];
    v13 = 138412546;
    v14 = v7;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_0, v5, v6, "Account %@ is beginning to monitor these folders: %{public}@", &v13, 0x16u);
  }

  [(MobileCalDAVDaemonAccount *)self setFullRefresh:1];
  v8 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
  v9 = [v8 principalURL];
  if (v9)
  {
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_consumer);

    if (WeakRetained)
    {
      v11 = objc_loadWeakRetained(&self->_consumer);
      [v11 _validateAndSync:0];

      goto LABEL_11;
    }
  }

  if (([(MobileCalDAVDaemonAccount *)self refreshReason]& 8) != 0 || ![(MobileCalDAVDaemonAccount *)self refreshReason])
  {
    [(MobileCalDAVDaemonAccount *)self _probeAndSync];
  }

  else
  {
    [(MobileCalDAVDaemonAccount *)self _refresh];
  }

LABEL_11:

  return 1;
}

+ (int)extractDARefreshReasonFromContext:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 wasDueToPush])
    {
      v5 = 2;
    }

    else if ([v4 wasUserRequested])
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (int)convertToMobileCalDAVRefreshReason:(int)a3
{
  if (a3 == 2)
  {
    v3 = 4;
  }

  else
  {
    v3 = 8;
  }

  if (a3 == 3)
  {
    return 16;
  }

  else
  {
    return v3;
  }
}

- (CalDAVAgent)consumer
{
  WeakRetained = objc_loadWeakRetained(&self->_consumer);

  return WeakRetained;
}

- (id)_rd_hashedAccountPersonIDWithSalt:(id)a3
{
  v5 = a3;
  if (![v5 length])
  {
    sub_105E4(a2, self);
  }

  if ([v5 length])
  {
    v6 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
    v7 = [v6 calendarHomeURL];

    v8 = [(MobileCalDAVDaemonAccount *)self _rd_replacementHostnameForAccountPersonID];
    v9 = DALoggingwithCategory();
    v10 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v9, v10))
    {
      v11 = [v7 absoluteString];
      v12 = [(MobileCalDAVDaemonAccount *)self accountID];
      v13 = [(MobileCalDAVDaemonAccount *)self backingAccountInfo];
      v14 = [v13 accountType];
      v15 = [v14 identifier];
      v24 = 138413058;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = v15;
      v30 = 2112;
      v31 = v8;
      _os_log_impl(&dword_0, v9, v10, "[MobileCalDAVDaemonAccount _rd_hashedAccountPersonIDWithSalt:] {calendarHomeURL: %@, account: %@, type: %@, replacementHost: %@}", &v24, 0x2Au);
    }

    if ([v8 length])
    {
      v16 = [v7 da_urlBySettingHost:v8 keepUsername:1];

      v7 = v16;
    }

    v17 = +[REMUserDefaults daemonUserDefaults];
    v18 = [v17 enableHashingUserIdentifiablesWithPersonIDSalt];

    if (v18)
    {
      v19 = +[DADAgentManager sharedManager];
      v20 = [v19 rem_storeProvider];

      v21 = [v7 absoluteString];
      v22 = [v20 rd_base64EncodedHMACStringFromString:v21 usingPersonIDSalt:v5];
    }

    else
    {
      v22 = [v7 absoluteString];
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)_rd_replacementHostnameForAccountPersonID
{
  v2 = [(MobileCalDAVDaemonAccount *)self backingAccountInfo];
  v3 = [v2 displayAccount];
  v4 = [v3 accountType];

  v5 = [v4 identifier];
  LODWORD(v3) = [v5 isEqualToString:ACAccountTypeIdentifierAppleAccount];

  if (v3)
  {
    v6 = [v4 identifier];
    v7 = [v6 stringByAppendingString:@".CalDAV"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_rd_saveAccountPersonIDHashedWithSalt:(id)a3 changeSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (![v7 length])
  {
    sub_10660(a2, self);
  }

  if ([v7 length])
  {
    v9 = [(MobileCalDAVDaemonAccount *)self _rem_store];
    v10 = [(MobileCalDAVDaemonAccount *)self _rem_account];
    if (v10)
    {
      v11 = [[REMSaveRequest alloc] initWithStore:v9];
      [v11 setAuthor:DADREMAccountSetPersonIDAuthorKey];
      v12 = [v11 updateAccount:v10];
      v13 = [v12 personID];
      v14 = [(MobileCalDAVDaemonAccount *)self _rd_hashedAccountPersonIDWithSalt:v7];
      if (([v13 isEqual:v14] & 1) == 0)
      {
        if ([v14 length])
        {
          [v12 setPersonID:v14];
          v15 = dataaccess_get_global_queue();
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_EFBC;
          v23[3] = &unk_208B0;
          v24 = v10;
          v25 = v8;
          v26 = v14;
          v27 = v13;
          v28 = v7;
          [v11 saveWithQueue:v15 completion:v23];

          v16 = v24;
        }

        else
        {
          v16 = DALoggingwithCategory();
          v19 = _CPLog_to_os_log_type[3];
          if (os_log_type_enabled(v16, v19))
          {
            [v10 remObjectID];
            v21 = type = v19;
            [v7 base64EncodedStringWithOptions:0];
            *buf = 138543874;
            v30 = v21;
            v31 = 2114;
            v32 = v8;
            v34 = v33 = 2112;
            v20 = v34;
            _os_log_impl(&dword_0, v16, type, "MobileCalDAVDaemonAccount failed generate a hashed personID from the salt {remAccount: %{public}@, changeSource: %{public}@, salt: %@}", buf, 0x20u);
          }
        }
      }
    }

    else
    {
      v11 = DALoggingwithCategory();
      v17 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v11, v17))
      {
        v18 = [(MobileCalDAVDaemonAccount *)self accountID];
        *buf = 138543618;
        v30 = v18;
        v31 = 2114;
        v32 = v8;
        _os_log_impl(&dword_0, v11, v17, "MobileCalDAVDaemonAccount could not get the CalDAV REMAccount to update personID {accountID: %{public}@, changeSource: %{public}@}", buf, 0x16u);
      }
    }
  }
}

- (void)_rd_resetAccountPersonIDWithError:(id)a3 changeSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    sub_106DC(a2, self);
  }

  v9 = [(MobileCalDAVDaemonAccount *)self _rem_store];
  v10 = [(MobileCalDAVDaemonAccount *)self _rem_account];
  if (v10)
  {
    v11 = [[REMSaveRequest alloc] initWithStore:v9];
    [v11 setAuthor:DADREMAccountSetPersonIDAuthorKey];
    v12 = [v11 updateAccount:v10];
    v13 = [v12 personID];
    if (v13)
    {
      [v12 setPersonID:0];
      v14 = dataaccess_get_global_queue();
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_F3C8;
      v16[3] = &unk_208D8;
      v17 = v10;
      v18 = v8;
      v19 = v7;
      v20 = v13;
      [v11 saveWithQueue:v14 completion:v16];
    }

    goto LABEL_9;
  }

  v11 = DALoggingwithCategory();
  v15 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v11, v15))
  {
    v12 = [(MobileCalDAVDaemonAccount *)self accountID];
    *buf = 138543874;
    v22 = v12;
    v23 = 2114;
    v24 = v8;
    v25 = 2114;
    v26 = v7;
    _os_log_impl(&dword_0, v11, v15, "MobileCalDAVDaemonAccount could not get the CalDAV REMAccount to reset personID {accountID: %{public}@, changeSource: %{public}@, saltError: %{public}@}", buf, 0x20u);
LABEL_9:
  }
}

- (void)rd_observePrimaryCloudKitAccountPersonIDSaltChanges
{
  v4 = [(MobileCalDAVDaemonAccount *)self primaryCloudKitAccountPersonIDSaltChangeObserver];

  if (v4)
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v5, v6))
    {
      v7 = [(MobileCalDAVDaemonAccount *)self primaryCloudKitAccountPersonIDSaltChangeObserver];
      v8 = [v7 description];
      *buf = 138543362;
      v38 = v8;
      _os_log_impl(&dword_0, v5, v6, "MobileCalDAVDaemonAccount is already observing personIDSalt changes with RDAccountPersonIDSaltObserver {observer: %{public}@}", buf, 0xCu);
    }
  }

  else
  {
    v5 = +[DADAgentManager sharedManager];
    v9 = [v5 rem_storeProvider];
    objc_initWeak(&location, self);
    v10 = +[NSUUID UUID];
    v11 = [v10 UUIDString];

    v12 = +[NSNotificationCenter defaultCenter];
    objc_initWeak(&from, v12);

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_F938;
    v30[3] = &unk_20928;
    objc_copyWeak(&v33, &location);
    v13 = v11;
    v31 = v13;
    objc_copyWeak(v34, &from);
    v34[1] = a2;
    v32 = self;
    v14 = objc_retainBlock(v30);
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_FE68;
    v26 = &unk_20950;
    objc_copyWeak(&v29, &location);
    v15 = v13;
    v27 = v15;
    v16 = v9;
    v28 = v16;
    v17 = objc_retainBlock(&v23);
    v18 = dataaccess_get_global_queue();
    v19 = [v16 rd_observePrimaryCloudKitAccountPersonIDSaltChangesOnQueue:v18 successHandler:v14 errorHandler:{v17, v23, v24, v25, v26}];

    if (v19)
    {
      v20 = DALoggingwithCategory();
      v21 = _CPLog_to_os_log_type[5];
      if (os_log_type_enabled(v20, v21))
      {
        v22 = [v19 description];
        *buf = 138543362;
        v38 = v22;
        _os_log_impl(&dword_0, v20, v21, "MobileCalDAVDaemonAccount started observing primary CK account personIDSalt changes: %{public}@", buf, 0xCu);
      }

      [(MobileCalDAVDaemonAccount *)self setPrimaryCloudKitAccountPersonIDSaltChangeObserver:v19];
    }

    objc_destroyWeak(&v29);
    objc_destroyWeak(v34);

    objc_destroyWeak(&v33);
    objc_destroyWeak(&from);

    objc_destroyWeak(&location);
  }
}

- (void)rd_unobservePrimaryCloudKitAccountPersonIDSaltChanges
{
  v3 = [(MobileCalDAVDaemonAccount *)self primaryCloudKitAccountPersonIDSaltChangeObserver];
  if (v3)
  {
    v4 = +[DADAgentManager sharedManager];
    v5 = [v4 rem_storeProvider];
    [v5 rd_unobservePrimaryCloudKitAccountPersonIDSaltChanges:v3];

    v6 = DALoggingwithCategory();
    v7 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v6, v7))
    {
      v8 = [v3 description];
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_0, v6, v7, "MobileCalDAVDaemonAccount stopped observing primary CK account personIDSalt changes: %{public}@", &v9, 0xCu);
    }

    [(MobileCalDAVDaemonAccount *)self setPrimaryCloudKitAccountPersonIDSaltChangeObserver:0];
  }

  [(MobileCalDAVDaemonAccount *)self _removeRefreshDidCompleteObserver];
}

@end