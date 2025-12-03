@interface MobileCalDAVDaemonAccount
+ (int)convertToMobileCalDAVRefreshReason:(int)reason;
+ (int)extractDARefreshReasonFromContext:(id)context;
- (BOOL)APSTopicHasValidPrefix:(id)prefix;
- (BOOL)_hasSubscribedCalendars;
- (BOOL)_shouldRefreshInResponseToDBChange:(BOOL *)change;
- (BOOL)_shouldRegisterAPS;
- (BOOL)monitorFoldersWithIDs:(id)ds;
- (CalDAVAgent)consumer;
- (MobileCalDAVDaemonAccount)initWithBackingAccountInfo:(id)info;
- (id)_rd_hashedAccountPersonIDWithSalt:(id)salt;
- (id)_rd_replacementHostnameForAccountPersonID;
- (id)_rem_account;
- (id)_rem_store;
- (id)beginDownloadingAttachmentWithUUID:(id)d consumer:(id)consumer;
- (id)performCalendarDirectorySearchForTerms:(id)terms recordTypes:(id)types resultLimit:(unint64_t)limit consumer:(id)consumer;
- (id)reportShareRequestAsJunkForCalendar:(id)calendar consumer:(id)consumer;
- (id)respondToShareRequestForCalendar:(id)calendar withResponse:(int64_t)response consumer:(id)consumer;
- (id)serverTokenRegistrationURL;
- (void)_attachmentDownloadDidFinish:(id)finish;
- (void)_cancelOptionsTimer;
- (void)_continueRefresh;
- (void)_probeAndSync;
- (void)_rd_resetAccountPersonIDWithError:(id)error changeSource:(id)source;
- (void)_rd_saveAccountPersonIDHashedWithSalt:(id)salt changeSource:(id)source;
- (void)_reallyPerformSearchQuery:(id)query;
- (void)_refresh;
- (void)_refreshSubscribedCalendarChildAccounts;
- (void)_removeRefreshDidCompleteObserver;
- (void)_serverProbeTimedOut;
- (void)_updateWatchedCollections;
- (void)bumpRefreshReason:(int)reason;
- (void)calendarDirectorySearchIsGoingAway:(id)away;
- (void)cancelAllAttachmentDownloads;
- (void)cancelAllCalendarDirectorySearches;
- (void)cancelAllSharingRequests;
- (void)cancelCalendarDirectorySearchWithID:(id)d;
- (void)cancelDownloadingInstance:(id)instance error:(id)error;
- (void)cancelRefreshWithCompletion:(id)completion;
- (void)cancelShareResponseInstance:(id)instance error:(id)error;
- (void)dealloc;
- (void)discoverInitialPropertiesWithConsumer:(id)consumer;
- (void)rd_observePrimaryCloudKitAccountPersonIDSaltChanges;
- (void)rd_unobservePrimaryCloudKitAccountPersonIDSaltChanges;
- (void)refreshActor:(id)actor didCompleteWithError:(id)error;
- (void)setSafeToRefresh:(BOOL)refresh;
- (void)shareResponseIsGoingAway:(id)away;
@end

@implementation MobileCalDAVDaemonAccount

- (id)beginDownloadingAttachmentWithUUID:(id)d consumer:(id)consumer
{
  dCopy = d;
  consumerCopy = consumer;
  v8 = DALoggingwithCategory();
  v9 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v8, v9))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_0, v8, v9, "XXXXXXXXX: ERROR: Should not enter! No attachment support in Reminders.", &v19, 2u);
  }

  if (!dCopy)
  {
    sub_10158();
  }

  if (!consumerCopy)
  {
    sub_101B4();
  }

  v10 = [MobileCalDAVDownloadContext contextWithAttachmentUUID:dCopy consumer:consumerCopy];
  attachmentDownloadsByAttachmentUUID = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  objc_sync_enter(attachmentDownloadsByAttachmentUUID);
  attachmentDownloadsByAttachmentUUID2 = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  v13 = [attachmentDownloadsByAttachmentUUID2 objectForKeyedSubscript:dCopy];

  v14 = v13;
  if (!v13)
  {
    v14 = [[MobileCalDAVAttachmentDownloader alloc] initWithAttachmentUUID:dCopy forAccount:self];
    attachmentDownloadsByAttachmentUUID3 = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
    [attachmentDownloadsByAttachmentUUID3 setObject:v14 forKeyedSubscript:dCopy];
  }

  [(MobileCalDAVAttachmentDownloader *)v14 addConsumer:consumerCopy];
  objc_sync_exit(attachmentDownloadsByAttachmentUUID);

  if (!v13)
  {
    v16 = DALoggingwithCategory();
    v17 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v16, v17))
    {
      v19 = 134218242;
      v20 = consumerCopy;
      v21 = 2112;
      v22 = dCopy;
      _os_log_impl(&dword_0, v16, v17, "Starting new attachment download for consumer %p and attachment UUID %@", &v19, 0x16u);
    }

    [(MobileCalDAVAttachmentDownloader *)v14 beginDownload];
  }

  return v10;
}

- (void)cancelDownloadingInstance:(id)instance error:(id)error
{
  instanceCopy = instance;
  errorCopy = error;
  if (!instanceCopy)
  {
    sub_10210();
  }

  v8 = instanceCopy;
  consumer = [v8 consumer];
  [consumer downloadFinishedError:errorCopy];

  attachmentUUID = [v8 attachmentUUID];
  if (!attachmentUUID)
  {
    sub_1027C();
  }

  attachmentDownloadsByAttachmentUUID = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  objc_sync_enter(attachmentDownloadsByAttachmentUUID);
  v12 = DALoggingwithCategory();
  v13 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v12, v13))
  {
    consumer2 = [v8 consumer];
    v18 = 134218242;
    v19 = consumer2;
    v20 = 2112;
    v21 = attachmentUUID;
    _os_log_impl(&dword_0, v12, v13, "Cancelling new attachment download for consumer %p and attachment UUID %@", &v18, 0x16u);
  }

  attachmentDownloadsByAttachmentUUID2 = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  v16 = [attachmentDownloadsByAttachmentUUID2 objectForKeyedSubscript:attachmentUUID];
  consumer3 = [v8 consumer];
  [v16 removeConsumer:consumer3];

  objc_sync_exit(attachmentDownloadsByAttachmentUUID);
}

- (void)_attachmentDownloadDidFinish:(id)finish
{
  finishCopy = finish;
  attachmentDownloadsByAttachmentUUID = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  objc_sync_enter(attachmentDownloadsByAttachmentUUID);
  attachmentDownloadsByAttachmentUUID2 = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  attachmentUUID = [finishCopy attachmentUUID];
  [attachmentDownloadsByAttachmentUUID2 removeObjectForKey:attachmentUUID];

  objc_sync_exit(attachmentDownloadsByAttachmentUUID);
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
  attachmentDownloadsByAttachmentUUID = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  v6 = [attachmentDownloadsByAttachmentUUID countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v6)
  {
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(attachmentDownloadsByAttachmentUUID);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        consumers = [v9 consumers];
        v11 = [consumers countByEnumeratingWithState:&v17 objects:v26 count:16];
        if (v11)
        {
          v12 = *v18;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(consumers);
              }

              [*(*(&v17 + 1) + 8 * j) downloadFinishedError:v4];
            }

            v11 = [consumers countByEnumeratingWithState:&v17 objects:v26 count:16];
          }

          while (v11);
        }

        [v9 cancelDownload];
      }

      v6 = [attachmentDownloadsByAttachmentUUID countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v6);
  }

  attachmentDownloadsByAttachmentUUID2 = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  [attachmentDownloadsByAttachmentUUID2 removeAllObjects];

  objc_sync_exit(obj);
}

- (id)performCalendarDirectorySearchForTerms:(id)terms recordTypes:(id)types resultLimit:(unint64_t)limit consumer:(id)consumer
{
  termsCopy = terms;
  typesCopy = types;
  consumerCopy = consumer;
  v13 = [[MobileCalDAVDirectorySearch alloc] initWithTerms:termsCopy recordTypes:typesCopy resultLimit:limit consumer:consumerCopy account:self];
  searchID = [(MobileCalDAVDirectorySearch *)v13 searchID];
  directorySearches = [(MobileCalDAVDaemonAccount *)self directorySearches];
  objc_sync_enter(directorySearches);
  directorySearches2 = [(MobileCalDAVDaemonAccount *)self directorySearches];
  [directorySearches2 setObject:v13 forKeyedSubscript:searchID];

  objc_sync_exit(directorySearches);
  [(MobileCalDAVDirectorySearch *)v13 performSearch];

  return searchID;
}

- (void)cancelCalendarDirectorySearchWithID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v8 = dCopy;
    directorySearches = [(MobileCalDAVDaemonAccount *)self directorySearches];
    objc_sync_enter(directorySearches);
    directorySearches2 = [(MobileCalDAVDaemonAccount *)self directorySearches];
    v7 = [directorySearches2 objectForKey:v8];

    objc_sync_exit(directorySearches);
    [v7 cancel];

    dCopy = v8;
  }
}

- (void)cancelAllCalendarDirectorySearches
{
  directorySearches = [(MobileCalDAVDaemonAccount *)self directorySearches];
  objc_sync_enter(directorySearches);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  directorySearches2 = [(MobileCalDAVDaemonAccount *)self directorySearches];
  v5 = [directorySearches2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(directorySearches2);
        }

        [*(*(&v9 + 1) + 8 * v7) cancel];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [directorySearches2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  directorySearches3 = [(MobileCalDAVDaemonAccount *)self directorySearches];
  [directorySearches3 removeAllObjects];

  objc_sync_exit(directorySearches);
}

- (void)calendarDirectorySearchIsGoingAway:(id)away
{
  awayCopy = away;
  v5 = dataaccess_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7238;
  block[3] = &unk_205B8;
  v6 = awayCopy;
  v11 = v6;
  dispatch_async(v5, block);

  searchID = [v6 searchID];
  directorySearches = [(MobileCalDAVDaemonAccount *)self directorySearches];
  objc_sync_enter(directorySearches);
  directorySearches2 = [(MobileCalDAVDaemonAccount *)self directorySearches];
  [directorySearches2 removeObjectForKey:searchID];

  objc_sync_exit(directorySearches);
}

- (id)respondToShareRequestForCalendar:(id)calendar withResponse:(int64_t)response consumer:(id)consumer
{
  calendarCopy = calendar;
  consumerCopy = consumer;
  v10 = consumerCopy;
  if (calendarCopy)
  {
    if (consumerCopy)
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
  v11 = [MobileCalDAVSharingResponse responseWithCalendarID:calendarCopy consumer:v10 account:self];
  shareResponses = [(MobileCalDAVDaemonAccount *)self shareResponses];
  responseID = [v11 responseID];
  [shareResponses setObject:v11 forKeyedSubscript:responseID];

  [v11 respondToSharingRequestWithResponse:response];
  responseID2 = [v11 responseID];

  return responseID2;
}

- (id)reportShareRequestAsJunkForCalendar:(id)calendar consumer:(id)consumer
{
  calendarCopy = calendar;
  consumerCopy = consumer;
  v8 = consumerCopy;
  if (calendarCopy)
  {
    if (consumerCopy)
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
  v9 = [MobileCalDAVSharingResponse responseWithCalendarID:calendarCopy consumer:v8 account:self];
  shareResponses = [(MobileCalDAVDaemonAccount *)self shareResponses];
  responseID = [v9 responseID];
  [shareResponses setObject:v9 forKeyedSubscript:responseID];

  [v9 reportAsJunk];
  responseID2 = [v9 responseID];

  return responseID2;
}

- (void)shareResponseIsGoingAway:(id)away
{
  awayCopy = away;
  v5 = dataaccess_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_969C;
  block[3] = &unk_205B8;
  v10 = awayCopy;
  v6 = awayCopy;
  dispatch_async(v5, block);

  shareResponses = [(MobileCalDAVDaemonAccount *)self shareResponses];
  responseID = [v6 responseID];
  [shareResponses removeObjectForKey:responseID];
}

- (void)cancelShareResponseInstance:(id)instance error:(id)error
{
  instanceCopy = instance;
  if (!instanceCopy)
  {
    sub_10578();
  }

  shareResponses = [(MobileCalDAVDaemonAccount *)self shareResponses];
  v6 = [shareResponses objectForKeyedSubscript:instanceCopy];

  [v6 cancel];
  shareResponses2 = [(MobileCalDAVDaemonAccount *)self shareResponses];
  [shareResponses2 removeObjectForKey:instanceCopy];
}

- (void)cancelAllSharingRequests
{
  shareResponses = [(MobileCalDAVDaemonAccount *)self shareResponses];
  objc_sync_enter(shareResponses);
  v4 = [NSError errorWithDomain:DAErrorDomain code:-1 userInfo:0];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  shareResponses2 = [(MobileCalDAVDaemonAccount *)self shareResponses];
  allValues = [shareResponses2 allValues];

  v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        consumer = [v10 consumer];
        [consumer shareResponseFinishedWithError:v4];

        [v10 cancel];
      }

      v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  shareResponses3 = [(MobileCalDAVDaemonAccount *)self shareResponses];
  [shareResponses3 removeAllObjects];

  objc_sync_exit(shareResponses);
}

- (MobileCalDAVDaemonAccount)initWithBackingAccountInfo:(id)info
{
  v17.receiver = self;
  v17.super_class = MobileCalDAVDaemonAccount;
  v3 = [(MobileCalDAVDaemonAccount *)&v17 initWithBackingAccountInfo:info];
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
  optionsTimeoutTimer = [(MobileCalDAVDaemonAccount *)self optionsTimeoutTimer];
  [optionsTimeoutTimer invalidate];

  [(MobileCalDAVDaemonAccount *)self setOptionsTimeoutTimer:0];
}

- (void)dealloc
{
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 134217984;
    selfCopy = self;
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
  rem_storeProvider = [v2 rem_storeProvider];
  rem_storeForDataAccess = [rem_storeProvider rem_storeForDataAccess];

  if (!rem_storeForDataAccess)
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

  return rem_storeForDataAccess;
}

- (id)_rem_account
{
  _rem_store = [(MobileCalDAVDaemonAccount *)self _rem_store];
  accountID = [(MobileCalDAVDaemonAccount *)self accountID];
  v12 = 0;
  v5 = [_rem_store fetchAccountWithExternalIdentifier:accountID error:&v12];
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

    accountID2 = [(MobileCalDAVDaemonAccount *)self accountID];
    *buf = 138543362;
    v14 = accountID2;
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

    accountID2 = [(MobileCalDAVDaemonAccount *)self accountID];
    *buf = 138543362;
    v14 = accountID2;
    v10 = "Could not find account from ReminderKit %{public}@.";
    goto LABEL_4;
  }

LABEL_7:

  return v5;
}

- (BOOL)_shouldRegisterAPS
{
  backingAccountInfo = [(MobileCalDAVDaemonAccount *)self backingAccountInfo];
  v3 = [backingAccountInfo isEnabledForDataclass:ACAccountDataclassCalendars];

  return v3 ^ 1;
}

- (BOOL)APSTopicHasValidPrefix:(id)prefix
{
  prefixCopy = prefix;
  if ([prefixCopy hasPrefix:@"com.me."] & 1) != 0 || (objc_msgSend(prefixCopy, "hasPrefix:", @"com.apple.calendar."))
  {
    v4 = 1;
  }

  else
  {
    v4 = [prefixCopy hasPrefix:@"com.icloud."];
  }

  return v4;
}

- (void)bumpRefreshReason:(int)reason
{
  refreshReason = self->_refreshReason;
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[6];
  v8 = os_log_type_enabled(v6, v7);
  if (refreshReason >= reason)
  {
    if (v8)
    {
      v10 = self->_refreshReason;
      v11 = 67109376;
      v12 = v10;
      v13 = 1024;
      reasonCopy2 = reason;
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
      reasonCopy2 = reason;
      _os_log_impl(&dword_0, v6, v7, "Bumping _refreshReason {_refreshReason: %d, newRefreshReason: %d}", &v11, 0xEu);
    }

    self->_refreshReason = reason;
  }
}

- (void)cancelRefreshWithCompletion:(id)completion
{
  completionCopy = completion;
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
  selfCopy = self;
  v16 = completionCopy;
  v10.receiver = self;
  v10.super_class = MobileCalDAVDaemonAccount;
  v7 = completionCopy;
  [(MobileCalDAVDaemonAccount *)&v10 cancelRefreshWithCompletion:&v11];
  [(MobileCalDAVDaemonAccount *)self _reallyCancelAllSearchQueries:v10.receiver];
  optionsProbe = [(MobileCalDAVDaemonAccount *)self optionsProbe];
  v9 = [NSError errorWithDomain:CoreDAVErrorDomain code:1 userInfo:0];
  [optionsProbe finishCoreDAVTaskWithError:v9];

  [(MobileCalDAVDaemonAccount *)self _removeRefreshDidCompleteObserver];
}

- (void)_removeRefreshDidCompleteObserver
{
  refreshDidCompleteObserver = [(MobileCalDAVDaemonAccount *)self refreshDidCompleteObserver];
  if (refreshDidCompleteObserver)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:refreshDidCompleteObserver];

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
  calendars = [(MobileCalDAVDaemonAccount *)self calendars];
  v3 = [calendars countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(calendars);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isSubscribed] && !objc_msgSend(v6, "isManagedByServer"))
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [calendars countByEnumeratingWithState:&v8 objects:v12 count:16];
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
    calendars = [(MobileCalDAVDaemonAccount *)self calendars];
    *buf = 134217984;
    v23 = [calendars count];
    _os_log_impl(&dword_0, v3, v4, "Updating watched collections for %luu calendars", buf, 0xCu);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  calendars2 = [(MobileCalDAVDaemonAccount *)self calendars];
  v7 = [calendars2 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
          objc_enumerationMutation(calendars2);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        pushKey = [v12 pushKey];
        v14 = DALoggingwithCategory();
        if (os_log_type_enabled(v14, v4))
        {
          title = [v12 title];
          pushKey2 = [v12 pushKey];
          *buf = v17;
          v23 = title;
          v24 = 2114;
          v25 = pushKey2;
          _os_log_impl(&dword_0, v14, v4, "Push key for calendar %@ is %{public}@", buf, 0x16u);
        }

        if (pushKey)
        {
          [(NSMutableSet *)self->_watchedCollections addObject:pushKey];
        }
      }

      v9 = [calendars2 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
    accountDescription = [(MobileCalDAVDaemonAccount *)self accountDescription];
    *buf = 138412290;
    v38 = accountDescription;
    _os_log_impl(&dword_0, v2, type, "Kicking off a refresh of subscribed calendars for %@", buf, 0xCu);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = +[DADAgentManager sharedManager];
  activeAgents = [v4 activeAgents];

  obj = activeAgents;
  v6 = [activeAgents countByEnumeratingWithState:&v32 objects:v36 count:16];
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
        account = [v11 account];
        if ([account enabledForDADataclass:4])
        {
          v28 = v11;
          account2 = [v11 account];
          backingAccountInfo = [account2 backingAccountInfo];
          [backingAccountInfo parentAccountIdentifier];
          v16 = v15 = v9;
          backingAccountInfo2 = [(MobileCalDAVDaemonAccount *)self backingAccountInfo];
          identifier = [backingAccountInfo2 identifier];
          v19 = [v16 isEqualToString:identifier];

          v9 = v15;
          if (v19)
          {
            v20 = DALoggingwithCategory();
            if (os_log_type_enabled(v20, type))
            {
              account3 = [v28 account];
              *buf = v25;
              v38 = account3;
              _os_log_impl(&dword_0, v20, type, "Found a child SubCal account: %@", buf, 0xCu);
            }

            refreshContext = [(MobileCalDAVDaemonAccount *)self refreshContext];
            wasUserRequested = [refreshContext wasUserRequested];

            v24 = dataaccess_get_global_queue();
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_ABD4;
            block[3] = &unk_207E8;
            block[4] = v28;
            v31 = wasUserRequested;
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

- (void)refreshActor:(id)actor didCompleteWithError:(id)error
{
  actorCopy = actor;
  errorCopy = error;
  v8 = +[NSDate date];
  v9 = DALoggingwithCategory();
  v10 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v9, v10))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v9, v10, "Refresh complete. Releasing gatekeeper lock and notifying PersistentConnection", buf, 2u);
  }

  ADClientAddValueForScalarKey();
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%ld", domain, [errorCopy code]);
  }

  else
  {
    ADClientAddValueForScalarKey();
    v12 = @"success";
  }

  host = [(MobileCalDAVDaemonAccount *)self host];
  [NSString stringWithFormat:@"com.apple.dataaccess.caldav.%@.%@", host, v12];
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
    [v16 refreshDidCompleteWithError:errorCopy];
  }

  domain2 = [errorCopy domain];
  v18 = &ADClientAddValueForScalarKey_ptr;
  if ([domain2 isEqualToString:DAErrorDomain])
  {
    code = [errorCopy code];

    v20 = actorCopy;
    if (code == &dword_4 + 2)
    {
      goto LABEL_26;
    }
  }

  else
  {

    v20 = actorCopy;
  }

  shouldRegisterWithRefreshManager = self->_shouldRegisterWithRefreshManager;
  if (shouldRegisterWithRefreshManager)
  {
    self->_shouldRegisterWithRefreshManager = 0;
    v22 = +[DARefreshManager sharedManager];
    [v22 registerDelegate:self];
  }

  mainPrincipal = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
  shouldUpdatePushDelegate = [mainPrincipal shouldUpdatePushDelegate];

  if ((shouldUpdatePushDelegate & 1) != 0 || shouldRegisterWithRefreshManager)
  {
    mainPrincipal2 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
    aPSTopic = [mainPrincipal2 APSTopic];
    if (aPSTopic)
    {
      v27 = aPSTopic;
      _shouldRegisterAPS = [(MobileCalDAVDaemonAccount *)self _shouldRegisterAPS];

      if (_shouldRegisterAPS)
      {
        mainPrincipal3 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
        aPSTopic2 = [mainPrincipal3 APSTopic];
        v31 = [(MobileCalDAVDaemonAccount *)self APSTopicHasValidPrefix:aPSTopic2];

        if (v31)
        {
          v32 = +[DARefreshManager sharedManager];
          mainPrincipal4 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
          aPSTopic3 = [mainPrincipal4 APSTopic];
          mainPrincipal5 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
          [mainPrincipal5 APSEnv];
          v37 = v36 = v8;
          [v32 registerTopic:aPSTopic3 forDelegate:self inEnvironment:v37];

          v8 = v36;
          v20 = actorCopy;

          v18 = &ADClientAddValueForScalarKey_ptr;
        }

        else
        {
          v32 = DALoggingwithCategory();
          v86 = _CPLog_to_os_log_type[4];
          if (os_log_type_enabled(v32, v86))
          {
            mainPrincipal6 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
            aPSTopic4 = [mainPrincipal6 APSTopic];
            *buf = 138543362;
            selfCopy = aPSTopic4;
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

  sharedManager = [v18[103] sharedManager];
  [sharedManager delegateDidCompleteRefresh:self];

LABEL_26:
  if ([(MobileCalDAVDaemonAccount *)self _hasSubscribedCalendars])
  {
    refreshContext = [(MobileCalDAVDaemonAccount *)self refreshContext];
    isCalendarsOnly = [refreshContext isCalendarsOnly];

    if (!errorCopy && (isCalendarsOnly & 1) == 0)
    {
      [(MobileCalDAVDaemonAccount *)self _refreshSubscribedCalendarChildAccounts];
    }
  }

  v90.receiver = self;
  v90.super_class = MobileCalDAVDaemonAccount;
  [(MobileCalDAVDaemonAccount *)&v90 refreshActor:v20 didCompleteWithError:errorCopy];
  if (self->_holdingGatekeeperLock)
  {
    self->_holdingGatekeeperLock = 0;
    v41 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v41 relinquishLocksForWaiter:self dataclasses:20 moreComing:0];
  }

  v42 = +[DABabysitter sharedBabysitter];
  [v42 unregisterAccount:self forOperationWithName:@"CalDAVRefresh"];

  domain3 = [errorCopy domain];
  v44 = [domain3 isEqualToString:CoreDAVHTTPStatusErrorDomain];
  if (!v44)
  {
    v47 = 0;
    goto LABEL_36;
  }

  code2 = [errorCopy code];

  if (code2 == &stru_1A8.reserved3 + 3)
  {
    domain3 = [errorCopy userInfo];
    v46 = [domain3 objectForKeyedSubscript:CoreDAVHTTPHeaders];
    v47 = [v46 DAObjectForKeyCaseInsensitive:@"retry-after"];

LABEL_36:
    goto LABEL_38;
  }

  v47 = 0;
  v44 = 0;
LABEL_38:
  context = [v20 context];
  shouldRetry = [context shouldRetry];

  if (shouldRetry)
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

  domain4 = [errorCopy domain];
  if (([domain4 isEqualToString:NSURLErrorDomain] & 1) == 0)
  {

    if (v44)
    {
LABEL_42:
      v52 = 480.0;
      goto LABEL_43;
    }

LABEL_65:
    actorCopy = v20;
    v62 = 0;
    v63 = 0;
    self->_lastRetryTimeout = 0.0;
    if (errorCopy)
    {
      goto LABEL_77;
    }

    goto LABEL_71;
  }

  code3 = [errorCopy code];

  if (code3 == -1001)
  {
    v52 = 120.0;
  }

  else
  {
    v52 = 480.0;
  }

  if (code3 == -1001)
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
    context2 = [v20 context];
    v55 = [v53 extractDARefreshReasonFromContext:context2];

    [v47 doubleValue];
    v57 = v56;
    v58 = DALoggingwithCategory();
    v59 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v58, v59))
    {
      *buf = 134217984;
      selfCopy = *&v57;
      _os_log_impl(&dword_0, v58, v59, "The server returned a 503 error and told us to try again in %f seconds", buf, 0xCu);
    }

    actorCopy = v20;

    v60 = +[DARefreshManager sharedManager];
    watchedCollections = [(MobileCalDAVDaemonAccount *)self watchedCollections];
    [v60 retryRefreshForDelegate:self withCollections:watchedCollections after:v55 originalRefreshReason:v57];

    v62 = 0;
    v63 = 1;
    if (!errorCopy)
    {
LABEL_71:
      backingAccountInfo = [(MobileCalDAVDaemonAccount *)self backingAccountInfo];
      if ([backingAccountInfo supportsAuthentication])
      {
        [(MobileCalDAVDaemonAccount *)self backingAccountInfo];
        v79 = v89 = v8;
        isAuthenticated = [v79 isAuthenticated];

        v8 = v89;
        if ((isAuthenticated & 1) == 0)
        {
          v81 = DALoggingwithCategory();
          v82 = _CPLog_to_os_log_type[4];
          if (os_log_type_enabled(v81, v82))
          {
            *buf = 138412290;
            selfCopy = self;
            _os_log_impl(&dword_0, v81, v82, "Received a success response from server while account is not marked as authenticated. Set isAuthenticated flag and save account %@", buf, 0xCu);
          }

          backingAccountInfo2 = [(MobileCalDAVDaemonAccount *)self backingAccountInfo];
          [backingAccountInfo2 setAuthenticated:1];

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
        selfCopy = *&v72;
        _os_log_impl(&dword_0, v69, v70, "We'll retry again after %f seconds", buf, 0xCu);
      }

      v73 = objc_opt_class();
      context3 = [actorCopy context];
      v75 = [v73 extractDARefreshReasonFromContext:context3];

      v76 = +[DARefreshManager sharedManager];
      watchedCollections2 = [(MobileCalDAVDaemonAccount *)self watchedCollections];
      [v76 retryRefreshForDelegate:self withCollections:watchedCollections2 after:v75 originalRefreshReason:self->_lastRetryTimeout];

      v62 = 0;
      v63 = 1;
    }

    if (!errorCopy)
    {
      goto LABEL_71;
    }
  }

LABEL_77:
  if (RecordCalendarDiagnostics())
  {
    accountSyncDiagnostics = [actorCopy accountSyncDiagnostics];
    context4 = [actorCopy context];
    [(MobileCalDAVDaemonAccount *)self _persistAccountSyncDiagnostics:accountSyncDiagnostics withContext:context4 completionTime:v8 willAttemptToRetry:v63 hitInternalRefreshTimeout:v62 error:errorCopy];
  }
}

- (void)_reallyPerformSearchQuery:(id)query
{
  queryCopy = query;
  if ([(MobileCalDAVDaemonAccount *)self safeToRefresh])
  {
    v10.receiver = self;
    v10.super_class = MobileCalDAVDaemonAccount;
    [(MobileCalDAVDaemonAccount *)&v10 _reallyPerformSearchQuery:queryCopy];
  }

  else
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v5, v6))
    {
      searchString = [queryCopy searchString];
      *buf = 138412290;
      v12 = searchString;
      _os_log_impl(&dword_0, v5, v6, "Dropping search query %@ because the agent is shut(ting) down.", buf, 0xCu);
    }

    consumer = [queryCopy consumer];
    v9 = [NSError errorWithDomain:DAErrorDomain code:68 userInfo:0];
    [consumer searchQuery:queryCopy finishedWithError:v9];
  }
}

- (BOOL)_shouldRefreshInResponseToDBChange:(BOOL *)change
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
    rem_storeProvider = [v6 rem_storeProvider];
    rem_storeForDataAccess = [rem_storeProvider rem_storeForDataAccess];

    v9 = [REMDAChangeTrackingHelper alloc];
    rem_provideAccountInfo = [(MobileCalDAVDaemonAccount *)self rem_provideAccountInfo];
    v11 = [v9 initWithREMDAAccount:rem_provideAccountInfo clientName:DADREMDAChangeTrackingHelperClientName withREMStore:rem_storeForDataAccess];

    fetchChangesSinceLastConsumed = [v11 fetchChangesSinceLastConsumed];
    v13 = fetchChangesSinceLastConsumed;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v35) = 0;
    if (fetchChangesSinceLastConsumed)
    {
      error = [fetchChangesSinceLastConsumed error];
      if (error)
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
            accountDescription = [(MobileCalDAVDaemonAccount *)self accountDescription];
            LODWORD(v40) = 138412290;
            *(&v40 + 4) = accountDescription;
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
              accountDescription2 = [(MobileCalDAVDaemonAccount *)self accountDescription];
              *v38 = 138412290;
              v39 = accountDescription2;
              v31 = accountDescription2;
              _os_log_impl(&dword_0, v28, v29, "Found task changes for account %@", v38, 0xCu);
            }
          }

          _Block_object_dispose(&v40, 8);
        }

        goto LABEL_17;
      }
    }

    v16 = 1;
    if (change)
    {
      *change = 1;
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
    accountID = [(MobileCalDAVDaemonAccount *)self accountID];
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
    *&buf[4] = accountID;
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

    accountID = [(MobileCalDAVDaemonAccount *)self accountID];
    refreshReason = self->_refreshReason;
    *buf = 138543874;
    v42 = v5;
    v43 = 2114;
    v44 = accountID;
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
      accountID2 = [(MobileCalDAVDaemonAccount *)self accountID];
      v11 = self->_refreshReason;
      *buf = 138543618;
      v42 = accountID2;
      v43 = 1024;
      LODWORD(v44) = v11;
      _os_log_impl(&dword_0, v8, v9, "We shouldn't be entering _continueRefresh when doing account prop discovery {accountID: %{public}@, refresh reason: %x}", buf, 0x12u);
    }
  }

  v40 = 0;
  if ([(MobileCalDAVDaemonAccount *)self _shouldRefreshInResponseToDBChange:&v40])
  {
    host = [(MobileCalDAVDaemonAccount *)self host];
    [NSString stringWithFormat:@"com.apple.dataaccess.caldav.%@.syncattempt", host];
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
        mainPrincipal = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
        aPSTopic = [mainPrincipal APSTopic];
        accountID3 = [(MobileCalDAVDaemonAccount *)self accountID];
        *buf = 138543618;
        v42 = aPSTopic;
        v43 = 2114;
        v44 = accountID3;
        _os_log_impl(&dword_0, v17, v4, "Manually register APS topic since we rejected normal refreshing on daemon launch {APSTopic: %{public}@, accountID: %{public}@}", buf, 0x16u);
      }

      mainPrincipal2 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
      aPSTopic2 = [mainPrincipal2 APSTopic];
      if (aPSTopic2)
      {
        v23 = aPSTopic2;
        _shouldRegisterAPS = [(MobileCalDAVDaemonAccount *)self _shouldRegisterAPS];

        if (!_shouldRegisterAPS)
        {
LABEL_26:
          v35 = +[DARefreshManager sharedManager];
          [v35 delegateDidCompleteRefresh:self];

          goto LABEL_27;
        }

        mainPrincipal3 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
        aPSTopic3 = [mainPrincipal3 APSTopic];
        v27 = [(MobileCalDAVDaemonAccount *)self APSTopicHasValidPrefix:aPSTopic3];

        if (v27)
        {
          mainPrincipal2 = +[DARefreshManager sharedManager];
          mainPrincipal4 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
          aPSTopic4 = [mainPrincipal4 APSTopic];
          mainPrincipal5 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
          aPSEnv = [mainPrincipal5 APSEnv];
          [mainPrincipal2 registerTopic:aPSTopic4 forDelegate:self inEnvironment:aPSEnv];
        }

        else
        {
          mainPrincipal2 = DALoggingwithCategory();
          v32 = _CPLog_to_os_log_type[4];
          if (os_log_type_enabled(mainPrincipal2, v32))
          {
            mainPrincipal6 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
            aPSTopic5 = [mainPrincipal6 APSTopic];
            *buf = 138543362;
            v42 = aPSTopic5;
            _os_log_impl(&dword_0, mainPrincipal2, v32, "Refusing to register for the topic %{public}@ because it has an invalid prefix.", buf, 0xCu);
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
    _rem_account = [(MobileCalDAVDaemonAccount *)self _rem_account];
    if (_rem_account)
    {
      refreshReason = self->_refreshReason;
      if (refreshReason == 1 || refreshReason == 32)
      {
        v5 = DALoggingwithCategory();
        v6 = _CPLog_to_os_log_type[6];
        if (os_log_type_enabled(v5, v6))
        {
          accountID = [(MobileCalDAVDaemonAccount *)self accountID];
          accountDescription = [(MobileCalDAVDaemonAccount *)self accountDescription];
          *buf = 138543618;
          selfCopy = accountID;
          v59 = 2112;
          *v60 = accountDescription;
          _os_log_impl(&dword_0, v5, v6, "Let's ensure change tracking state exist for account: %{public}@ (%@).", buf, 0x16u);
        }

        v9 = +[DADAgentManager sharedManager];
        rem_storeProvider = [v9 rem_storeProvider];
        rem_storeForDataAccess = [rem_storeProvider rem_storeForDataAccess];

        v12 = [REMDAChangeTrackingHelper alloc];
        rem_provideAccountInfo = [(MobileCalDAVDaemonAccount *)self rem_provideAccountInfo];
        v14 = [v12 initWithREMDAAccount:rem_provideAccountInfo clientName:DADREMDAChangeTrackingHelperClientName withREMStore:rem_storeForDataAccess];

        fetchAndInitializeChangeTrackingStateIfNeeded = [v14 fetchAndInitializeChangeTrackingStateIfNeeded];
      }

      else
      {
        v6 = _CPLog_to_os_log_type[6];
      }

      v32 = DALoggingwithCategory();
      if (os_log_type_enabled(v32, v6))
      {
        accountID2 = [(MobileCalDAVDaemonAccount *)self accountID];
        forcedRefresh = self->_forcedRefresh;
        fullRefresh = self->_fullRefresh;
        v36 = self->_refreshReason;
        *buf = 138544130;
        selfCopy = accountID2;
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
            transactionId = [v40 transactionId];
            *buf = 138543362;
            selfCopy = transactionId;
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
          selfCopy = self;
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
        accountID3 = [(MobileCalDAVDaemonAccount *)self accountID];
        *buf = 138543362;
        selfCopy = accountID3;
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
      disableMonitoringAgents = [v22 disableMonitoringAgents];
      v24 = dataaccess_get_global_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_CC0C;
      block[3] = &unk_20838;
      v55 = v22;
      v56 = disableMonitoringAgents;
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
    accountDescription2 = [(MobileCalDAVDaemonAccount *)self accountDescription];
    *buf = 138412290;
    selfCopy = accountDescription2;
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

    _rem_account = objc_loadWeakRetained(&self->_consumer);
    WeakRetained = [NSError errorWithDomain:DAErrorDomain code:6 userInfo:0];
    [_rem_account refreshDidCompleteWithError:WeakRetained];
    goto LABEL_35;
  }
}

- (void)_serverProbeTimedOut
{
  taskManager = [(MobileCalDAVDaemonAccount *)self taskManager];
  activeModalTask = [taskManager activeModalTask];

  v5 = DALoggingwithCategory();
  v6 = v5;
  if (activeModalTask)
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
      mainPrincipal = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
      principalURL = [mainPrincipal principalURL];
      +[DABehaviorOptions defaultDAVProbeTimeout];
      v14 = 138412546;
      v15 = principalURL;
      v16 = 2048;
      v17 = v11;
      _os_log_impl(&dword_0, v6, v8, "We weren't able to reach the server at %@ within %lf seconds. Bailing out of this refresh early.", &v14, 0x16u);
    }

    [(MobileCalDAVDaemonAccount *)self _cancelOptionsTimer];
    optionsProbe = [(MobileCalDAVDaemonAccount *)self optionsProbe];
    v13 = [NSError errorWithDomain:CoreDAVErrorDomain code:1 userInfo:0];
    [optionsProbe finishCoreDAVTaskWithError:v13];

    [(MobileCalDAVDaemonAccount *)self setOptionsProbe:0];
  }
}

- (void)discoverInitialPropertiesWithConsumer:(id)consumer
{
  consumerCopy = consumer;
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
        transactionId = [v12 transactionId];
        *buf = 138543362;
        selfCopy = transactionId;
        _os_log_impl(&dword_0, v13, v14, "discoverInitialPropertiesWithConsumer: DATransaction starting, ID: %{public}@", buf, 0xCu);
      }

      v16 = [[DAActivity alloc] initWithAccount:self];
      v17 = +[DALocalDBGateKeeper sharedGateKeeper];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_D550;
      v19[3] = &unk_20888;
      v19[4] = self;
      v20 = consumerCopy;
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
      selfCopy = self;
      _os_log_impl(&dword_0, v10, v11, "This account has been put in timeout by the babysitter. Failing this sync. %@", buf, 0xCu);
    }

    v9 = [NSError errorWithDomain:DAErrorDomain code:6 userInfo:0];
    [consumerCopy account:self isValid:0 validationError:v9];
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
      mainPrincipal = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
      principalURL = [mainPrincipal principalURL];
      *buf = 138412290;
      selfCopy = principalURL;
      _os_log_impl(&dword_0, v3, v4, "Ignoring probe request for %@ as we're already in the middle of a refresh", buf, 0xCu);
    }
  }

  else
  {
    optionsProbe = [(MobileCalDAVDaemonAccount *)self optionsProbe];

    if (optionsProbe)
    {
      v3 = DALoggingwithCategory();
      v8 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v3, v8))
      {
        mainPrincipal2 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
        principalURL2 = [mainPrincipal2 principalURL];
        *buf = 138412290;
        selfCopy = principalURL2;
        _os_log_impl(&dword_0, v3, v8, "Ignoring probe request for %@ as we already have one outstanding", buf, 0xCu);
      }
    }

    else
    {
      v11 = +[DABabysitter sharedBabysitter];
      v12 = [v11 registerAccount:self forOperationWithName:@"CalDAVProbe"];

      if (v12)
      {
        host = [(MobileCalDAVDaemonAccount *)self host];
        [NSString stringWithFormat:@"com.apple.dataaccess.caldav.%@.probeattempt", host];
        ADClientAddValueForScalarKey();

        ADClientAddValueForScalarKey();
        v14 = DALoggingwithCategory();
        v15 = _CPLog_to_os_log_type[6];
        if (os_log_type_enabled(v14, v15))
        {
          mainPrincipal3 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
          principalURL3 = [mainPrincipal3 principalURL];
          +[DABehaviorOptions defaultDAVProbeTimeout];
          *buf = 138412546;
          selfCopy = principalURL3;
          v31 = 2048;
          v32 = v18;
          _os_log_impl(&dword_0, v14, v15, "Probing the host at %@ to see if we have a good enough network connection. We'll wait up to %lf seconds.", buf, 0x16u);
        }

        v19 = [CoreDAVOptionsTask alloc];
        mainPrincipal4 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
        principalURL4 = [mainPrincipal4 principalURL];
        v3 = [v19 initWithURL:principalURL4];

        mainPrincipal5 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
        [v3 setAccountInfoProvider:mainPrincipal5];

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
        taskManager = [(MobileCalDAVDaemonAccount *)self taskManager];
        optionsProbe2 = [(MobileCalDAVDaemonAccount *)self optionsProbe];
        [taskManager submitQueuedCoreDAVTask:optionsProbe2];

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
          selfCopy = self;
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
    aPSSubscriptionURL2 = qword_26A78;
  }

  else
  {
    mainPrincipal = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
    aPSSubscriptionURL = [mainPrincipal APSSubscriptionURL];

    if (aPSSubscriptionURL)
    {
      mainPrincipal2 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
      aPSSubscriptionURL2 = [mainPrincipal2 APSSubscriptionURL];
    }

    else
    {
      aPSSubscriptionURL2 = 0;
    }
  }

  return aPSSubscriptionURL2;
}

- (void)setSafeToRefresh:(BOOL)refresh
{
  self->_safeToRefresh = refresh;
  if (refresh)
  {
    v4 = DALoggingwithCategory();
    v5 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v4, v5))
    {
      accountDescription = [(MobileCalDAVDaemonAccount *)self accountDescription];
      *buf = 138412290;
      v15 = accountDescription;
      _os_log_impl(&dword_0, v4, v5, "Account %@ was told it is safe to refresh. Kicking off a refresh.", buf, 0xCu);
    }

    [(MobileCalDAVDaemonAccount *)self setFullRefresh:1];
    mainPrincipal = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
    principalURL = [mainPrincipal principalURL];
    if (principalURL)
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

- (BOOL)monitorFoldersWithIDs:(id)ds
{
  dsCopy = ds;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    accountDescription = [(MobileCalDAVDaemonAccount *)self accountDescription];
    v13 = 138412546;
    v14 = accountDescription;
    v15 = 2114;
    v16 = dsCopy;
    _os_log_impl(&dword_0, v5, v6, "Account %@ is beginning to monitor these folders: %{public}@", &v13, 0x16u);
  }

  [(MobileCalDAVDaemonAccount *)self setFullRefresh:1];
  mainPrincipal = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
  principalURL = [mainPrincipal principalURL];
  if (principalURL)
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

+ (int)extractDARefreshReasonFromContext:(id)context
{
  contextCopy = context;
  v4 = contextCopy;
  if (contextCopy)
  {
    if ([contextCopy wasDueToPush])
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

+ (int)convertToMobileCalDAVRefreshReason:(int)reason
{
  if (reason == 2)
  {
    v3 = 4;
  }

  else
  {
    v3 = 8;
  }

  if (reason == 3)
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

- (id)_rd_hashedAccountPersonIDWithSalt:(id)salt
{
  saltCopy = salt;
  if (![saltCopy length])
  {
    sub_105E4(a2, self);
  }

  if ([saltCopy length])
  {
    mainPrincipal = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
    calendarHomeURL = [mainPrincipal calendarHomeURL];

    _rd_replacementHostnameForAccountPersonID = [(MobileCalDAVDaemonAccount *)self _rd_replacementHostnameForAccountPersonID];
    v9 = DALoggingwithCategory();
    v10 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v9, v10))
    {
      absoluteString = [calendarHomeURL absoluteString];
      accountID = [(MobileCalDAVDaemonAccount *)self accountID];
      backingAccountInfo = [(MobileCalDAVDaemonAccount *)self backingAccountInfo];
      accountType = [backingAccountInfo accountType];
      identifier = [accountType identifier];
      v24 = 138413058;
      v25 = absoluteString;
      v26 = 2112;
      v27 = accountID;
      v28 = 2112;
      v29 = identifier;
      v30 = 2112;
      v31 = _rd_replacementHostnameForAccountPersonID;
      _os_log_impl(&dword_0, v9, v10, "[MobileCalDAVDaemonAccount _rd_hashedAccountPersonIDWithSalt:] {calendarHomeURL: %@, account: %@, type: %@, replacementHost: %@}", &v24, 0x2Au);
    }

    if ([_rd_replacementHostnameForAccountPersonID length])
    {
      v16 = [calendarHomeURL da_urlBySettingHost:_rd_replacementHostnameForAccountPersonID keepUsername:1];

      calendarHomeURL = v16;
    }

    v17 = +[REMUserDefaults daemonUserDefaults];
    enableHashingUserIdentifiablesWithPersonIDSalt = [v17 enableHashingUserIdentifiablesWithPersonIDSalt];

    if (enableHashingUserIdentifiablesWithPersonIDSalt)
    {
      v19 = +[DADAgentManager sharedManager];
      rem_storeProvider = [v19 rem_storeProvider];

      absoluteString2 = [calendarHomeURL absoluteString];
      absoluteString3 = [rem_storeProvider rd_base64EncodedHMACStringFromString:absoluteString2 usingPersonIDSalt:saltCopy];
    }

    else
    {
      absoluteString3 = [calendarHomeURL absoluteString];
    }
  }

  else
  {
    absoluteString3 = 0;
  }

  return absoluteString3;
}

- (id)_rd_replacementHostnameForAccountPersonID
{
  backingAccountInfo = [(MobileCalDAVDaemonAccount *)self backingAccountInfo];
  displayAccount = [backingAccountInfo displayAccount];
  accountType = [displayAccount accountType];

  identifier = [accountType identifier];
  LODWORD(displayAccount) = [identifier isEqualToString:ACAccountTypeIdentifierAppleAccount];

  if (displayAccount)
  {
    identifier2 = [accountType identifier];
    v7 = [identifier2 stringByAppendingString:@".CalDAV"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_rd_saveAccountPersonIDHashedWithSalt:(id)salt changeSource:(id)source
{
  saltCopy = salt;
  sourceCopy = source;
  if (![saltCopy length])
  {
    sub_10660(a2, self);
  }

  if ([saltCopy length])
  {
    _rem_store = [(MobileCalDAVDaemonAccount *)self _rem_store];
    _rem_account = [(MobileCalDAVDaemonAccount *)self _rem_account];
    if (_rem_account)
    {
      v11 = [[REMSaveRequest alloc] initWithStore:_rem_store];
      [v11 setAuthor:DADREMAccountSetPersonIDAuthorKey];
      v12 = [v11 updateAccount:_rem_account];
      personID = [v12 personID];
      v14 = [(MobileCalDAVDaemonAccount *)self _rd_hashedAccountPersonIDWithSalt:saltCopy];
      if (([personID isEqual:v14] & 1) == 0)
      {
        if ([v14 length])
        {
          [v12 setPersonID:v14];
          v15 = dataaccess_get_global_queue();
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_EFBC;
          v23[3] = &unk_208B0;
          v24 = _rem_account;
          v25 = sourceCopy;
          v26 = v14;
          v27 = personID;
          v28 = saltCopy;
          [v11 saveWithQueue:v15 completion:v23];

          v16 = v24;
        }

        else
        {
          v16 = DALoggingwithCategory();
          v19 = _CPLog_to_os_log_type[3];
          if (os_log_type_enabled(v16, v19))
          {
            [_rem_account remObjectID];
            v21 = type = v19;
            [saltCopy base64EncodedStringWithOptions:0];
            *buf = 138543874;
            v30 = v21;
            v31 = 2114;
            v32 = sourceCopy;
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
        accountID = [(MobileCalDAVDaemonAccount *)self accountID];
        *buf = 138543618;
        v30 = accountID;
        v31 = 2114;
        v32 = sourceCopy;
        _os_log_impl(&dword_0, v11, v17, "MobileCalDAVDaemonAccount could not get the CalDAV REMAccount to update personID {accountID: %{public}@, changeSource: %{public}@}", buf, 0x16u);
      }
    }
  }
}

- (void)_rd_resetAccountPersonIDWithError:(id)error changeSource:(id)source
{
  errorCopy = error;
  sourceCopy = source;
  if (!errorCopy)
  {
    sub_106DC(a2, self);
  }

  _rem_store = [(MobileCalDAVDaemonAccount *)self _rem_store];
  _rem_account = [(MobileCalDAVDaemonAccount *)self _rem_account];
  if (_rem_account)
  {
    v11 = [[REMSaveRequest alloc] initWithStore:_rem_store];
    [v11 setAuthor:DADREMAccountSetPersonIDAuthorKey];
    accountID = [v11 updateAccount:_rem_account];
    personID = [accountID personID];
    if (personID)
    {
      [accountID setPersonID:0];
      v14 = dataaccess_get_global_queue();
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_F3C8;
      v16[3] = &unk_208D8;
      v17 = _rem_account;
      v18 = sourceCopy;
      v19 = errorCopy;
      v20 = personID;
      [v11 saveWithQueue:v14 completion:v16];
    }

    goto LABEL_9;
  }

  v11 = DALoggingwithCategory();
  v15 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v11, v15))
  {
    accountID = [(MobileCalDAVDaemonAccount *)self accountID];
    *buf = 138543874;
    v22 = accountID;
    v23 = 2114;
    v24 = sourceCopy;
    v25 = 2114;
    v26 = errorCopy;
    _os_log_impl(&dword_0, v11, v15, "MobileCalDAVDaemonAccount could not get the CalDAV REMAccount to reset personID {accountID: %{public}@, changeSource: %{public}@, saltError: %{public}@}", buf, 0x20u);
LABEL_9:
  }
}

- (void)rd_observePrimaryCloudKitAccountPersonIDSaltChanges
{
  primaryCloudKitAccountPersonIDSaltChangeObserver = [(MobileCalDAVDaemonAccount *)self primaryCloudKitAccountPersonIDSaltChangeObserver];

  if (primaryCloudKitAccountPersonIDSaltChangeObserver)
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v5, v6))
    {
      primaryCloudKitAccountPersonIDSaltChangeObserver2 = [(MobileCalDAVDaemonAccount *)self primaryCloudKitAccountPersonIDSaltChangeObserver];
      v8 = [primaryCloudKitAccountPersonIDSaltChangeObserver2 description];
      *buf = 138543362;
      v38 = v8;
      _os_log_impl(&dword_0, v5, v6, "MobileCalDAVDaemonAccount is already observing personIDSalt changes with RDAccountPersonIDSaltObserver {observer: %{public}@}", buf, 0xCu);
    }
  }

  else
  {
    v5 = +[DADAgentManager sharedManager];
    rem_storeProvider = [v5 rem_storeProvider];
    objc_initWeak(&location, self);
    v10 = +[NSUUID UUID];
    uUIDString = [v10 UUIDString];

    v12 = +[NSNotificationCenter defaultCenter];
    objc_initWeak(&from, v12);

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_F938;
    v30[3] = &unk_20928;
    objc_copyWeak(&v33, &location);
    v13 = uUIDString;
    v31 = v13;
    objc_copyWeak(v34, &from);
    v34[1] = a2;
    selfCopy = self;
    v14 = objc_retainBlock(v30);
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_FE68;
    v26 = &unk_20950;
    objc_copyWeak(&v29, &location);
    v15 = v13;
    v27 = v15;
    v16 = rem_storeProvider;
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
  primaryCloudKitAccountPersonIDSaltChangeObserver = [(MobileCalDAVDaemonAccount *)self primaryCloudKitAccountPersonIDSaltChangeObserver];
  if (primaryCloudKitAccountPersonIDSaltChangeObserver)
  {
    v4 = +[DADAgentManager sharedManager];
    rem_storeProvider = [v4 rem_storeProvider];
    [rem_storeProvider rd_unobservePrimaryCloudKitAccountPersonIDSaltChanges:primaryCloudKitAccountPersonIDSaltChangeObserver];

    v6 = DALoggingwithCategory();
    v7 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v6, v7))
    {
      v8 = [primaryCloudKitAccountPersonIDSaltChangeObserver description];
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_0, v6, v7, "MobileCalDAVDaemonAccount stopped observing primary CK account personIDSalt changes: %{public}@", &v9, 0xCu);
    }

    [(MobileCalDAVDaemonAccount *)self setPrimaryCloudKitAccountPersonIDSaltChangeObserver:0];
  }

  [(MobileCalDAVDaemonAccount *)self _removeRefreshDidCompleteObserver];
}

@end