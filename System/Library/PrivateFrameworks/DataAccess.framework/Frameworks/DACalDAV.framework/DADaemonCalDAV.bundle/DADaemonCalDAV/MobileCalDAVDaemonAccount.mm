@interface MobileCalDAVDaemonAccount
+ (int)convertToMobileCalDAVRefreshReason:(int)a3;
+ (int)extractDARefreshReasonFromContext:(id)a3;
- (BOOL)APSTopicHasValidPrefix:(id)a3;
- (BOOL)_hasChangesInStore:(void *)a3 forChangesCall:(void *)a4;
- (BOOL)_isEnabled;
- (BOOL)_shouldRefreshInResponseToDBChange;
- (BOOL)monitorFoldersWithIDs:(id)a3;
- (CalDAVAgent)consumer;
- (DATrustHandler)trustHandler;
- (MobileCalDAVDaemonAccount)initWithBackingAccount:(id)a3;
- (NSString)onBehalfOfBundleIdentifier;
- (NSString)scheduleIdentifier;
- (id)beginDownloadingAttachmentWithUUID:(id)a3 consumer:(id)a4;
- (id)serverTokenRegistrationURL;
- (void)_attachmentDownloadDidFinish:(id)a3;
- (void)_cancelOptionsTimer;
- (void)_continueRefresh;
- (void)_probeAndSync;
- (void)_reallyPerformSearchQuery:(id)a3;
- (void)_refresh;
- (void)_serverProbeTimedOut;
- (void)_updateWatchedCollections;
- (void)cancelAllAttachmentDownloads;
- (void)cancelDownloadingInstance:(id)a3 error:(id)a4;
- (void)cancelRefreshWithCompletion:(id)a3;
- (void)dealloc;
- (void)discoverInitialPropertiesWithConsumer:(id)a3;
- (void)discoveryTask:(id)a3 gotAccountInfo:(id)a4 error:(id)a5;
- (void)promptUserForNewCoreDAVPasswordWithCompletionBlock:(id)a3;
- (void)refreshActor:(id)a3 didCompleteWithError:(id)a4;
- (void)saveXpcActivity:(id)a3;
- (void)setSafeToRefresh:(BOOL)a3;
@end

@implementation MobileCalDAVDaemonAccount

- (id)beginDownloadingAttachmentWithUUID:(id)a3 consumer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    sub_15E30();
  }

  if (!v7)
  {
    sub_15E9C();
  }

  v8 = [MobileCalDAVDownloadContext contextWithAttachmentUUID:v6 consumer:v7];
  v9 = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  objc_sync_enter(v9);
  v10 = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  v11 = [v10 objectForKeyedSubscript:v6];

  v12 = v11;
  if (!v11)
  {
    v12 = [[MobileCalDAVAttachmentDownloader alloc] initWithAttachmentUUID:v6 forAccount:self];
    v13 = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
    [v13 setObject:v12 forKeyedSubscript:v6];
  }

  [(MobileCalDAVAttachmentDownloader *)v12 addConsumer:v7];
  objc_sync_exit(v9);

  if (!v11)
  {
    v14 = DALoggingwithCategory();
    v15 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v14, v15))
    {
      v17 = 134218242;
      v18 = v7;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_0, v14, v15, "Starting new attachment download for consumer %p and attachment UUID %@", &v17, 0x16u);
    }

    [(MobileCalDAVAttachmentDownloader *)v12 beginDownload];
  }

  return v8;
}

- (void)cancelDownloadingInstance:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    sub_15F08();
  }

  v8 = v6;
  v9 = [v8 attachmentUUID];
  if (!v9)
  {
    sub_15F74();
  }

  v10 = [v8 consumer];
  [v10 downloadFinishedError:v7];

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
    v21 = v9;
    _os_log_impl(&dword_0, v12, v13, "Cancelling new attachment download for consumer %p and attachment UUID %@", &v18, 0x16u);
  }

  v15 = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  v16 = [v15 objectForKeyedSubscript:v9];
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
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v7)
  {
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = [v10 consumers];
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v27 count:16];
        if (v12)
        {
          v13 = *v19;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v11);
              }

              [*(*(&v18 + 1) + 8 * j) downloadFinishedError:v4];
            }

            v12 = [v11 countByEnumeratingWithState:&v18 objects:v27 count:16];
          }

          while (v12);
        }

        [v10 cancelDownload];
      }

      v7 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v7);
  }

  v15 = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  [v15 removeAllObjects];

  objc_sync_exit(obj);
}

- (MobileCalDAVDaemonAccount)initWithBackingAccount:(id)a3
{
  v11.receiver = self;
  v11.super_class = MobileCalDAVDaemonAccount;
  v3 = [(MobileCalDAVDaemonAccount *)&v11 initWithBackingAccount:a3];
  if (v3)
  {
    v4 = DALoggingwithCategory();
    v5 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v4, v5))
    {
      *buf = 134217984;
      v13 = v3;
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
    watchedCollections = v3->_watchedCollections;
    v3->_watchedCollections = v8;
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
  v4 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 134217984;
    v7 = self;
    _os_log_impl(&dword_0, v3, v4, "MobileCalDAVDaemonAccount %p going away", buf, 0xCu);
  }

  [(MobileCalDAVDaemonAccount *)self cancelAllAttachmentDownloads];
  [(MobileCalDAVDaemonAccount *)self _cancelOptionsTimer];
  v5.receiver = self;
  v5.super_class = MobileCalDAVDaemonAccount;
  [(MobileCalDAVDaemonAccount *)&v5 dealloc];
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

- (void)cancelRefreshWithCompletion:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, v6, "Cancelling CalDAV refresh.", buf, 2u);
  }

  self->_safeToRefresh = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_107E8;
  v14 = &unk_28B70;
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
          v24 = 2112;
          v25 = v16;
          _os_log_impl(&dword_0, v14, v4, "Push key for calendar %@ is %@", buf, 0x16u);
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

  v90 = _NSConcreteStackBlock;
  v91 = 3221225472;
  v92 = sub_115A8;
  v93 = &unk_28B98;
  v11 = v7;
  v94 = v11;
  AnalyticsSendEventLazy();
  [(MobileCalDAVDaemonAccount *)self _updateWatchedCollections];
  WeakRetained = objc_loadWeakRetained(&self->_consumer);

  if (WeakRetained)
  {
    v13 = DALoggingwithCategory();
    if (os_log_type_enabled(v13, v10))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v13, v10, "Notifying consumer about our refresh completion", buf, 2u);
    }

    v14 = objc_loadWeakRetained(&self->_consumer);
    [v14 refreshDidCompleteWithError:v11];
  }

  v15 = [v11 domain];
  v16 = &CalIsReminderBridgeEnabled_ptr;
  if ([v15 isEqualToString:DAErrorDomain])
  {
    v17 = [v11 code];

    if (v17 == &dword_4 + 2)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  shouldRegisterWithRefreshManager = self->_shouldRegisterWithRefreshManager;
  if (shouldRegisterWithRefreshManager)
  {
    self->_shouldRegisterWithRefreshManager = 0;
    v19 = +[DARefreshManager sharedManager];
    [v19 registerDelegate:self];
  }

  v20 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
  v21 = [v20 shouldUpdatePushDelegate];

  if ((v21 & 1) != 0 || shouldRegisterWithRefreshManager)
  {
    v22 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
    v23 = [v22 APSTopic];

    if (v23)
    {
      v24 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
      v25 = [v24 APSTopic];
      v26 = [(MobileCalDAVDaemonAccount *)self APSTopicHasValidPrefix:v25];

      if (v26)
      {
        v27 = +[DARefreshManager sharedManager];
        v28 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
        v29 = [v28 APSTopic];
        v30 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
        v31 = [v30 APSEnv];
        [v27 registerTopic:v29 forDelegate:self inEnvironment:v31];

        v16 = &CalIsReminderBridgeEnabled_ptr;
      }

      else
      {
        v27 = DALoggingwithCategory();
        v32 = _CPLog_to_os_log_type[4];
        if (os_log_type_enabled(v27, v32))
        {
          v33 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
          v34 = [v33 APSTopic];
          *buf = 138412290;
          v96 = v34;
          _os_log_impl(&dword_0, v27, v32, "Refusing to register for the topic %@ because it has an invalid prefix.", buf, 0xCu);

          v16 = &CalIsReminderBridgeEnabled_ptr;
        }
      }
    }

    else
    {
      v27 = +[DARefreshManager sharedManager];
      [v27 unregisterTopic:0 forDelegate:self inEnvironment:0];
    }
  }

  v35 = [v16[166] sharedManager];
  [v35 delegateDidCompleteRefresh:self];

LABEL_23:
  v89.receiver = self;
  v89.super_class = MobileCalDAVDaemonAccount;
  [(MobileCalDAVDaemonAccount *)&v89 refreshActor:v6 didCompleteWithError:v11];
  if (v11)
  {
    goto LABEL_31;
  }

  v36 = [(MobileCalDAVDaemonAccount *)self backingAccount];
  v37 = [v36 accountInfo];
  if ([v37 supportsAuthentication])
  {
    v38 = [(MobileCalDAVDaemonAccount *)self backingAccount];
    v39 = [v38 accountInfo];
    v40 = [v39 isAuthenticated];

    if (v40)
    {
      goto LABEL_31;
    }

    v41 = DALoggingwithCategory();
    v42 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v41, v42))
    {
      *buf = 138412290;
      v96 = self;
      _os_log_impl(&dword_0, v41, v42, "Received a success response from server while account is not marked as authenticated. Set isAuthenticated flag and save account %@", buf, 0xCu);
    }

    v43 = [(MobileCalDAVDaemonAccount *)self backingAccount];
    v44 = [v43 accountInfo];
    [v44 setAuthenticated:1];

    v45 = [(MobileCalDAVDaemonAccount *)self backingAccount];
    [v45 setObject:0 forKeyedSubscript:kDAAccountIgnoreAuthenticatedProperty];

    v46 = [(MobileCalDAVDaemonAccount *)self backingAccount];
    [v46 saveAccountProperties];

    v36 = +[DARefreshManager sharedManager];
    [v36 delegateDidSuccessfullyRecoverFromBeingUnauthenticated:self];
  }

  else
  {
  }

LABEL_31:
  if (self->_holdingGatekeeperLock)
  {
    self->_holdingGatekeeperLock = 0;
    v47 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v47 relinquishLocksForWaiter:self dataclasses:20 moreComing:0];
  }

  v48 = +[DABabysitter sharedBabysitter];
  [v48 unregisterAccount:self forOperationWithName:@"CalDAVRefresh"];

  v49 = [v11 domain];
  v50 = [v49 isEqualToString:CoreDAVHTTPStatusErrorDomain];
  if (!v50)
  {
    v53 = 0;
    goto LABEL_37;
  }

  v51 = [v11 code];

  if (v51 == &stru_1A8.reserved3 + 3)
  {
    v49 = [v11 userInfo];
    v52 = [v49 objectForKeyedSubscript:CoreDAVHTTPHeaders];
    v53 = [v52 DAObjectForKeyCaseInsensitive:@"retry-after"];

LABEL_37:
    goto LABEL_39;
  }

  v53 = 0;
  v50 = 0;
LABEL_39:
  v54 = [v6 context];
  v55 = [v54 shouldRetry];

  if (v55)
  {
    v56 = DALoggingwithCategory();
    v57 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v56, v57))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v56, v57, "The server returned precondition failure to our bulk upload. Retrying in a bit.", buf, 2u);
    }

    goto LABEL_43;
  }

  v72 = [v11 domain];
  if (([v72 isEqualToString:NSURLErrorDomain] & 1) == 0)
  {

    if (v50)
    {
LABEL_43:
      v58 = 480.0;
      goto LABEL_44;
    }

LABEL_66:
    v83 = 0;
    v84 = 0;
    self->_lastRetryTimeout = 0.0;
    goto LABEL_70;
  }

  v73 = [v11 code];

  if (v73 == -1001)
  {
    v58 = 120.0;
  }

  else
  {
    v58 = 480.0;
  }

  if (v73 == -1001)
  {
    v74 = 1;
  }

  else
  {
    v74 = v50;
  }

  if (v74 != 1)
  {
    goto LABEL_66;
  }

LABEL_44:
  if (v53)
  {
    v59 = objc_opt_class();
    v60 = [v6 context];
    v61 = [v59 extractDARefreshReasonFromContext:v60];

    [v53 doubleValue];
    v63 = v62;
    v64 = DALoggingwithCategory();
    v65 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v64, v65))
    {
      *buf = 134217984;
      v96 = v63;
      _os_log_impl(&dword_0, v64, v65, "The server returned a 503 error and told us to try again in %f seconds", buf, 0xCu);
    }

    v66 = +[DARefreshManager sharedManager];
    v67 = [(MobileCalDAVDaemonAccount *)self watchedCollections];
    v68 = v66;
    v69 = self;
    v70 = v67;
    v71 = *&v63;
LABEL_64:
    [v68 retryRefreshForDelegate:v69 withCollections:v70 after:v61 originalRefreshReason:v71];

    v83 = 0;
    v84 = 1;
    goto LABEL_70;
  }

  lastRetryTimeout = self->_lastRetryTimeout;
  if (lastRetryTimeout == 0.0)
  {
    v76 = 60.0;
  }

  else
  {
    v76 = lastRetryTimeout + lastRetryTimeout;
  }

  self->_lastRetryTimeout = v76;
  v77 = DALoggingwithCategory();
  v78 = _CPLog_to_os_log_type[5];
  v79 = os_log_type_enabled(v77, v78);
  if (v76 < v58)
  {
    if (v79)
    {
      v80 = self->_lastRetryTimeout;
      *buf = 134217984;
      v96 = *&v80;
      _os_log_impl(&dword_0, v77, v78, "We'll retry again after %f seconds", buf, 0xCu);
    }

    v81 = objc_opt_class();
    v82 = [v6 context];
    v61 = [v81 extractDARefreshReasonFromContext:v82];

    v66 = +[DARefreshManager sharedManager];
    v67 = [(MobileCalDAVDaemonAccount *)self watchedCollections];
    v71 = self->_lastRetryTimeout;
    v68 = v66;
    v69 = self;
    v70 = v67;
    goto LABEL_64;
  }

  if (v79)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v77, v78, "We've already backed off for 7 minutes. Giving up and retrying again at our regularly scheduled time", buf, 2u);
  }

  v84 = 0;
  v83 = 1;
LABEL_70:
  if ([(MobileCalDAVDaemonAccount *)self subscribedCalendarsChanged]&& [(MobileCalDAVDaemonAccount *)self safeToRefresh])
  {
    [(MobileCalDAVDaemonAccount *)self setSubscribedCalendarsChanged:0];
    Main = CFRunLoopGetMain();
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_11698;
    v88[3] = &unk_28790;
    v88[4] = self;
    CFRunLoopPerformBlock(Main, kCFRunLoopCommonModes, v88);
  }

  if (RecordCalendarDiagnostics())
  {
    v86 = [v6 accountSyncDiagnostics];
    v87 = [v6 context];
    [(MobileCalDAVDaemonAccount *)self _persistAccountSyncDiagnostics:v86 withContext:v87 completionTime:v8 willAttemptToRetry:v84 hitInternalRefreshTimeout:v83 error:v11];
  }
}

- (BOOL)_isEnabled
{
  v3 = [(MobileCalDAVDaemonAccount *)self dbHelper];
  v4 = [(MobileCalDAVDaemonAccount *)self accountID];
  [v3 calOpenDatabaseAsGenericClientForAccountID:v4];

  v5 = [(MobileCalDAVDaemonAccount *)self copyCalStore];
  if (v5)
  {
    v6 = v5;
    IsEnabled = CalStoreIsEnabled();
    CFRelease(v6);
  }

  else
  {
    IsEnabled = 0;
  }

  v8 = [(MobileCalDAVDaemonAccount *)self dbHelper];
  v9 = [(MobileCalDAVDaemonAccount *)self accountID];
  [v8 calCloseDatabaseForAccountID:v9 save:0];

  return IsEnabled;
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

- (BOOL)_hasChangesInStore:(void *)a3 forChangesCall:(void *)a4
{
  v7 = [(MobileCalDAVDaemonAccount *)self lastSyncedSequenceNumber];
  theDict = 0;
  v8 = [(MobileCalDAVDaemonAccount *)self dbHelper];
  v9 = [(MobileCalDAVDaemonAccount *)self accountID];
  (a4)([v8 calDatabaseForAccountID:v9], a3, &theDict);

  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, kCalCalendarItemChangesSequenceNumberKey);
  if (Value && (v11 = Value, Count = CFArrayGetCount(Value), v13 = Count - 1, Count >= 1))
  {
    v14 = 0;
    v15 = (v7 + 1);
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v11, v14);
      v17 = ValueAtIndex >= v15;
      if (ValueAtIndex >= v15)
      {
        break;
      }
    }

    while (v13 != v14++);
  }

  else
  {
    v17 = 0;
  }

  CFRelease(theDict);
  return v17;
}

- (BOOL)_shouldRefreshInResponseToDBChange
{
  v3 = [(MobileCalDAVDaemonAccount *)self dbHelper];
  v4 = [(MobileCalDAVDaemonAccount *)self accountID];
  v5 = [(MobileCalDAVDaemonAccount *)self changeTrackingID];
  [v3 calOpenDatabaseForAccountID:v4 clientID:v5];

  v6 = [(MobileCalDAVDaemonAccount *)self copyCalStore];
  if (v6)
  {
    if ((CalStoreIsEnabled() & 1) == 0)
    {
      goto LABEL_40;
    }

    if (self->_refreshReason == 1)
    {
      if (CalStoreSyncDefaultAlarms())
      {
        v7 = [(MobileCalDAVDaemonAccount *)self dbHelper];
        v8 = [(MobileCalDAVDaemonAccount *)self accountID];
        [v7 calDatabaseForAccountID:v8];
        CalDatabaseCopyStoreChangesInStore();
      }

      if ([(MobileCalDAVDaemonAccount *)self _hasChangesInStore:v6 forChangesCall:&CalDatabaseCopyEventChangesInStore])
      {
        v12 = DALoggingwithCategory();
        v13 = _CPLog_to_os_log_type[5];
        if (os_log_type_enabled(v12, v13))
        {
          v14 = [(MobileCalDAVDaemonAccount *)self accountDescription];
          v15 = [(MobileCalDAVDaemonAccount *)self publicDescription];
          *buf = 138412546;
          v29 = v14;
          v30 = 2114;
          v31 = v15;
          v16 = "Found event changes for account %@ (%{public}@)";
LABEL_35:
          _os_log_impl(&dword_0, v12, v13, v16, buf, 0x16u);

          goto LABEL_36;
        }

        goto LABEL_36;
      }

      if ([(MobileCalDAVDaemonAccount *)self _hasChangesInStore:v6 forChangesCall:&CalDatabaseCopyAlarmChangesInStore])
      {
        v12 = DALoggingwithCategory();
        v13 = _CPLog_to_os_log_type[5];
        if (os_log_type_enabled(v12, v13))
        {
          v14 = [(MobileCalDAVDaemonAccount *)self accountDescription];
          v15 = [(MobileCalDAVDaemonAccount *)self publicDescription];
          *buf = 138412546;
          v29 = v14;
          v30 = 2114;
          v31 = v15;
          v16 = "Found alarm changes for account %@ (%{public}@)";
          goto LABEL_35;
        }

LABEL_36:

        v9 = 1;
LABEL_41:
        CFRelease(v6);
        goto LABEL_42;
      }

      if ([(MobileCalDAVDaemonAccount *)self _hasChangesInStore:v6 forChangesCall:&CalDatabaseCopyAttendeeChangesInStore])
      {
        v12 = DALoggingwithCategory();
        v13 = _CPLog_to_os_log_type[5];
        if (os_log_type_enabled(v12, v13))
        {
          v14 = [(MobileCalDAVDaemonAccount *)self accountDescription];
          v15 = [(MobileCalDAVDaemonAccount *)self publicDescription];
          *buf = 138412546;
          v29 = v14;
          v30 = 2114;
          v31 = v15;
          v16 = "Found attendee changes for account %@ (%{public}@)";
          goto LABEL_35;
        }

        goto LABEL_36;
      }

      if ([(MobileCalDAVDaemonAccount *)self _hasChangesInStore:v6 forChangesCall:&CalDatabaseCopyAttachmentChangesInStore])
      {
        v12 = DALoggingwithCategory();
        v13 = _CPLog_to_os_log_type[5];
        if (os_log_type_enabled(v12, v13))
        {
          v14 = [(MobileCalDAVDaemonAccount *)self accountDescription];
          v15 = [(MobileCalDAVDaemonAccount *)self publicDescription];
          *buf = 138412546;
          v29 = v14;
          v30 = 2114;
          v31 = v15;
          v16 = "Found attachment changes for account %@ (%{public}@)";
          goto LABEL_35;
        }

        goto LABEL_36;
      }

      if ([(MobileCalDAVDaemonAccount *)self _hasChangesInStore:v6 forChangesCall:&CalDatabaseCopyRecurrenceChangesInStore])
      {
        v12 = DALoggingwithCategory();
        v13 = _CPLog_to_os_log_type[5];
        if (os_log_type_enabled(v12, v13))
        {
          v14 = [(MobileCalDAVDaemonAccount *)self accountDescription];
          v15 = [(MobileCalDAVDaemonAccount *)self publicDescription];
          *buf = 138412546;
          v29 = v14;
          v30 = 2114;
          v31 = v15;
          v16 = "Found recurrence changes for account %@ (%{public}@)";
          goto LABEL_35;
        }

        goto LABEL_36;
      }

      if ([(MobileCalDAVDaemonAccount *)self _hasChangesInStore:v6 forChangesCall:&CalDatabaseCopyCalendarChangesInStore])
      {
        v12 = DALoggingwithCategory();
        v13 = _CPLog_to_os_log_type[5];
        if (os_log_type_enabled(v12, v13))
        {
          v14 = [(MobileCalDAVDaemonAccount *)self accountDescription];
          v15 = [(MobileCalDAVDaemonAccount *)self publicDescription];
          *buf = 138412546;
          v29 = v14;
          v30 = 2114;
          v31 = v15;
          v16 = "Found calendar changes for account %@ (%{public}@)";
          goto LABEL_35;
        }

        goto LABEL_36;
      }

      if ([(MobileCalDAVDaemonAccount *)self _hasChangesInStore:v6 forChangesCall:&CalDatabaseCopyNotificationChangesInStore])
      {
        v12 = DALoggingwithCategory();
        v13 = _CPLog_to_os_log_type[5];
        if (os_log_type_enabled(v12, v13))
        {
          v14 = [(MobileCalDAVDaemonAccount *)self accountDescription];
          v15 = [(MobileCalDAVDaemonAccount *)self publicDescription];
          *buf = 138412546;
          v29 = v14;
          v30 = 2114;
          v31 = v15;
          v16 = "Found notification changes for account %@ (%{public}@)";
          goto LABEL_35;
        }

        goto LABEL_36;
      }

      if ([(MobileCalDAVDaemonAccount *)self _hasChangesInStore:v6 forChangesCall:&CalDatabaseCopyShareeChangesInStore])
      {
        v12 = DALoggingwithCategory();
        v17 = _CPLog_to_os_log_type[5];
        if (os_log_type_enabled(v12, v17))
        {
          v18 = [(MobileCalDAVDaemonAccount *)self accountDescription];
          *buf = 138412290;
          v29 = v18;
          _os_log_impl(&dword_0, v12, v17, "Found sharee changes for account %@", buf, 0xCu);
        }

        goto LABEL_36;
      }

LABEL_40:
      v9 = 0;
      goto LABEL_41;
    }
  }

  else if (self->_refreshReason == 1)
  {
    v9 = 1;
    goto LABEL_42;
  }

  if ([(MobileCalDAVDaemonAccount *)self needsAccountPropertyRefresh])
  {
    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v10, v11))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, v11, "Account Properties Need to Be Refreshed. Allowing Refresh to Continue..", buf, 2u);
    }
  }

  v9 = 1;
  if (v6)
  {
    goto LABEL_41;
  }

LABEL_42:
  v19 = [(MobileCalDAVDaemonAccount *)self dbHelper];
  v20 = [(MobileCalDAVDaemonAccount *)self accountID];
  [v19 calCloseDatabaseForAccountID:v20 save:0];

  v21 = DALoggingwithCategory();
  v22 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v21, v22))
  {
    v23 = [(MobileCalDAVDaemonAccount *)self publicDescription];
    v24 = v23;
    v25 = @"Blocking";
    if (v9)
    {
      v25 = @"Starting";
    }

    v26 = @"do not have";
    *buf = 138412802;
    v29 = v23;
    v31 = v25;
    v30 = 2112;
    if (v9)
    {
      v26 = @"have";
    }

    v32 = 2112;
    v33 = v26;
    _os_log_impl(&dword_0, v21, v22, "[account %@] %@ Account Refresh as we %@ local DB changes or account properties need refresh", buf, 0x20u);
  }

  return v9;
}

- (void)_continueRefresh
{
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v3, v4))
  {
    if (self->_fullRefresh)
    {
      v5 = &stru_28C48;
    }

    else
    {
      v5 = @"calendars for ";
    }

    v6 = [(MobileCalDAVDaemonAccount *)self publicDescription];
    refreshReason = self->_refreshReason;
    *buf = 138543874;
    v33 = v5;
    v34 = 2112;
    v35 = v6;
    v36 = 1024;
    v37 = refreshReason;
    _os_log_impl(&dword_0, v3, v4, "Gatekeeper gave us the goahead. Refreshing account %{public}@ with ID %@. Reason: %x", buf, 0x1Cu);
  }

  v8 = [(MobileCalDAVDaemonAccount *)self dbHelper];
  v9 = [(MobileCalDAVDaemonAccount *)self accountID];
  v10 = [(MobileCalDAVDaemonAccount *)self changeTrackingID];
  [v8 calOpenDatabaseForAccountID:v9 clientID:v10];

  if ([(MobileCalDAVDaemonAccount *)self _shouldRefreshInResponseToDBChange])
  {
    WeakRetained = objc_loadWeakRetained(&self->_consumer);
    [WeakRetained refreshWillBegin];

    AnalyticsSendEventLazy();
    v12 = +[CalDAVRefreshContext defaultContext];
    [v12 setIsForced:self->_forcedRefresh];
    [v12 setIsCalendarsOnly:!self->_fullRefresh];
    [v12 setWasUserRequested:(self->_refreshReason >> 3) & 1];
    [v12 setWasDueToPush:(self->_refreshReason >> 1) & 1];
    v13 = [CalDAVDBChangeTrackingHelper alloc];
    v14 = [(MobileCalDAVDaemonAccount *)self dbHelper];
    v15 = [(MobileCalDAVDaemonAccount *)self accountID];
    v16 = [v14 calDatabaseForAccountID:v15];
    v17 = [(MobileCalDAVDaemonAccount *)self changeTrackingID];
    v18 = [v13 initWithDatabase:v16 clientIdentifier:v17];
    [v12 setChangeTracker:v18];

    v19 = [(MobileCalDAVDaemonAccount *)self backingAccount];
    [v19 setShouldUseOpportunisticSockets:0];

    v20 = [v12 wasUserRequested];
    v21 = [(MobileCalDAVDaemonAccount *)self backingAccount];
    [v21 setWasUserInitiated:v20];

    [(MobileCalDAVDaemonAccount *)self refreshWithContext:v12 completion:0];
    v22 = [(MobileCalDAVDaemonAccount *)self dbHelper];
    v23 = [(MobileCalDAVDaemonAccount *)self accountID];
    [v22 calCloseDatabaseForAccountID:v23 save:0];

    self->_forcedRefresh = 0;
    self->_fullRefresh = 0;
    self->_refreshReason = 0;
  }

  else
  {
    v24 = DALoggingwithCategory();
    v25 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v24, v25))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v24, v25, "There's no need for us to refresh right now as there are no changes in our local database", buf, 2u);
    }

    v26 = [(MobileCalDAVDaemonAccount *)self dbHelper];
    v27 = [(MobileCalDAVDaemonAccount *)self accountID];
    [v26 calCloseDatabaseForAccountID:v27 save:0];

    self->_forcedRefresh = 0;
    self->_fullRefresh = 0;
    self->_refreshReason = 0;
    if (self->_holdingGatekeeperLock)
    {
      self->_holdingGatekeeperLock = 0;
      v28 = +[DALocalDBGateKeeper sharedGateKeeper];
      [v28 relinquishLocksForWaiter:self dataclasses:20 moreComing:0];
    }

    v29 = objc_loadWeakRetained(&self->_consumer);

    if (v29)
    {
      v30 = DALoggingwithCategory();
      if (os_log_type_enabled(v30, v25))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v30, v25, "Notifying consumer about our refresh completion", buf, 2u);
      }

      v31 = objc_loadWeakRetained(&self->_consumer);
      [v31 refreshDidCompleteWithError:0];
    }

    v12 = +[DABabysitter sharedBabysitter];
    [v12 unregisterAccount:self forOperationWithName:@"CalDAVRefresh"];
  }
}

- (void)_refresh
{
  v3 = [(MobileCalDAVDaemonAccount *)self backingAccount];
  if ([v3 isEnabledForDataclass:kAccountDataclassCalendars])
  {

    goto LABEL_3;
  }

  if (CalIsReminderBridgeEnabled())
  {

    goto LABEL_24;
  }

  v33 = [(MobileCalDAVDaemonAccount *)self backingAccount];
  v34 = [v33 isEnabledForDataclass:kAccountDataclassReminders];

  if ((v34 & 1) == 0)
  {
LABEL_24:
    v35 = DALoggingwithCategory();
    v36 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v35, v36))
    {
      v37 = [(MobileCalDAVDaemonAccount *)self accountDescription];
      v38 = [(MobileCalDAVDaemonAccount *)self publicDescription];
      *buf = 138412546;
      v50 = v37;
      v51 = 2114;
      *v52 = v38;
      _os_log_impl(&dword_0, v35, v36, "Account %@ (%{public}@) was told to refresh, but it is disabled for calendars. Refusing to refresh.", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_consumer);
    if (WeakRetained)
    {
      v40 = DALoggingwithCategory();
      v41 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v40, v41))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v40, v41, "Notifying consumer about our refresh completion", buf, 2u);
      }

      v14 = objc_loadWeakRetained(&self->_consumer);
      v15 = DAErrorDomain;
      v16 = -1;
      goto LABEL_33;
    }

    return;
  }

LABEL_3:
  v4 = [(MobileCalDAVDaemonAccount *)self backingAccount];
  v5 = [v4 needsToVerifyTerms];

  v6 = DALoggingwithCategory();
  v7 = v6;
  if (v5)
  {
    v8 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v6, v8))
    {
      v9 = [(MobileCalDAVDaemonAccount *)self accountDescription];
      v10 = [(MobileCalDAVDaemonAccount *)self publicDescription];
      *buf = 138412546;
      v50 = v9;
      v51 = 2114;
      *v52 = v10;
      _os_log_impl(&dword_0, v7, v8, "Account %@ (%{public}@) was told to refresh, but it has terms and conditions that have not been accepted for account. Skipping refresh.", buf, 0x16u);
    }

    v11 = objc_loadWeakRetained(&self->_consumer);
    if (v11)
    {
      v12 = DALoggingwithCategory();
      v13 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v12, v13))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v12, v13, "Notifying consumer about our refresh completion", buf, 2u);
      }

      v14 = objc_loadWeakRetained(&self->_consumer);
      v15 = DAErrorDomain;
      v16 = 94;
      goto LABEL_33;
    }
  }

  else
  {
    v17 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v6, v17))
    {
      v18 = [(MobileCalDAVDaemonAccount *)self accountID];
      forcedRefresh = self->_forcedRefresh;
      fullRefresh = self->_fullRefresh;
      refreshReason = self->_refreshReason;
      *buf = 138544130;
      v50 = v18;
      v51 = 1024;
      *v52 = forcedRefresh;
      *&v52[4] = 1024;
      *&v52[6] = fullRefresh;
      v53 = 1024;
      v54 = refreshReason;
      _os_log_impl(&dword_0, v7, v17, "_refresh called for account %{public}@. Forced:%d full:%d reason: %x", buf, 0x1Eu);
    }

    if (!self->_waitingForGatekeeper)
    {
      v22 = DALoggingwithCategory();
      if (os_log_type_enabled(v22, v17))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v22, v17, "Refresh fired. Requesting lock from gatekeeper.", buf, 2u);
      }

      v23 = +[DABabysitter sharedBabysitter];
      v24 = [v23 registerAccount:self forOperationWithName:@"CalDAVRefresh"];

      if (v24)
      {
        if (self->_holdingGatekeeperLock && !self->_fullRefresh)
        {
          v45 = DALoggingwithCategory();
          if (os_log_type_enabled(v45, v17))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v45, v17, "Dropping folder refresh request since a full sync is already in progress", buf, 2u);
          }

          self->_refreshReason = 0;
          v14 = +[DABabysitter sharedBabysitter];
          [v14 unregisterAccount:self forOperationWithName:@"CalDAVRefresh"];
        }

        else
        {
          v25 = objc_opt_new();
          v26 = DALoggingwithCategory();
          if (os_log_type_enabled(v26, v17))
          {
            v27 = [v25 transactionId];
            *buf = 138543362;
            v50 = v27;
            _os_log_impl(&dword_0, v26, v17, "DATransaction starting, ID: %{public}@", buf, 0xCu);
          }

          v28 = [DAActivity alloc];
          v29 = [(MobileCalDAVDaemonAccount *)self backingAccount];
          v30 = [v28 initWithAccount:v29];

          self->_waitingForGatekeeper = 1;
          v31 = +[DALocalDBGateKeeper sharedGateKeeper];
          v46[0] = _NSConcreteStackBlock;
          v46[1] = 3221225472;
          v46[2] = sub_13538;
          v46[3] = &unk_28BC0;
          v46[4] = self;
          v47 = v25;
          v48 = v30;
          v32 = v30;
          v14 = v25;
          [v31 registerWaiter:self forDataclassLocks:20 completionHandler:v46];
        }

        goto LABEL_34;
      }

      v42 = DALoggingwithCategory();
      v43 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v42, v43))
      {
        *buf = 138412290;
        v50 = self;
        _os_log_impl(&dword_0, v42, v43, "This account has been put in timeout by the babysitter. Failing this sync. %@", buf, 0xCu);
      }

      self->_refreshReason = 0;
      v14 = objc_loadWeakRetained(&self->_consumer);
      v15 = DAErrorDomain;
      v16 = 6;
LABEL_33:
      v44 = [NSError errorWithDomain:v15 code:v16 userInfo:0];
      [v14 refreshDidCompleteWithError:v44];

LABEL_34:
    }
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

  if ((v6 & 1) == 0)
  {
    v17 = DALoggingwithCategory();
    v18 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v17, v18))
    {
      *buf = 138412290;
      v25 = self;
      _os_log_impl(&dword_0, v17, v18, "This account has been put in timeout by the babysitter. Failing this sync. %@", buf, 0xCu);
    }

    v14 = [(MobileCalDAVDaemonAccount *)self backingAccount];
    v15 = DAErrorDomain;
    v16 = 6;
    goto LABEL_9;
  }

  v7 = [(MobileCalDAVDaemonAccount *)self backingAccount];
  v8 = [v7 hostWithoutPath];
  v9 = [DAReachability hostLikelyUnreachable:v8];

  if (v9)
  {
    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v10, v11))
    {
      v12 = [(MobileCalDAVDaemonAccount *)self backingAccount];
      v13 = [v12 hostWithoutPath];
      *buf = 138412546;
      v25 = v13;
      v26 = 2112;
      v27 = self;
      _os_log_impl(&dword_0, v10, v11, "Not even trying to discover properties because the host %@ is probably unreachable. %@", buf, 0x16u);
    }

    v14 = [(MobileCalDAVDaemonAccount *)self backingAccount];
    v15 = DAErrorDomain;
    v16 = 0;
LABEL_9:
    v19 = [NSError errorWithDomain:v15 code:v16 userInfo:0];
    [v4 account:v14 isValid:0 validationError:v19];

    goto LABEL_10;
  }

  if (!self->_waitingForDiscoveryGatekeeper || self->_holdingDiscoveryGatekeeperLock)
  {
    self->_waitingForDiscoveryGatekeeper = 1;
    v20 = +[DALocalDBGateKeeper sharedGateKeeper];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_13D8C;
    v22[3] = &unk_28888;
    v22[4] = self;
    v23 = v4;
    [v20 registerWaiter:self forDataclassLocks:20 completionHandler:v22];

    goto LABEL_11;
  }

  v14 = DALoggingwithCategory();
  v21 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v14, v21))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v14, v21, "Already holding (or waiting for) a gatekeeper lock, so skipping this property discovery request", buf, 2u);
  }

LABEL_10:

LABEL_11:
}

- (void)discoveryTask:(id)a3 gotAccountInfo:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MobileCalDAVDaemonAccount *)self backingAccount];
  v12 = [v11 hostWithoutPath];
  [DAReachability recordError:v8 forHost:v12];

  v13.receiver = self;
  v13.super_class = MobileCalDAVDaemonAccount;
  [(MobileCalDAVDaemonAccount *)&v13 discoveryTask:v10 gotAccountInfo:v9 error:v8];
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
      v33 = v6;
      _os_log_impl(&dword_0, v3, v4, "Ignoring probe request for %@ as we're already in the middle of a refresh", buf, 0xCu);
    }

LABEL_4:

    return;
  }

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
      v33 = v10;
      _os_log_impl(&dword_0, v3, v8, "Ignoring probe request for %@ as we already have one outstanding", buf, 0xCu);
    }

    goto LABEL_4;
  }

  v11 = +[DABabysitter sharedBabysitter];
  v12 = [v11 registerAccount:self forOperationWithName:@"CalDAVProbe"];

  if (v12)
  {
    v31[1] = _NSConcreteStackBlock;
    v31[2] = 3221225472;
    v31[3] = sub_1442C;
    v31[4] = &unk_28B98;
    v31[5] = self;
    AnalyticsSendEventLazy();
    v13 = DALoggingwithCategory();
    v14 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v13, v14))
    {
      v15 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
      v16 = [v15 principalURL];
      +[DABehaviorOptions defaultDAVProbeTimeout];
      *buf = 138412546;
      v33 = v16;
      v34 = 2048;
      v35 = v17;
      _os_log_impl(&dword_0, v13, v14, "Probing the host at %@ to see if we have a good enough network connection. We'll wait up to %lf seconds.", buf, 0x16u);
    }

    v18 = [CoreDAVOptionsTask alloc];
    v19 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
    v20 = [v19 principalURL];
    v21 = [v18 initWithURL:v20];

    v22 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
    [v21 setAccountInfoProvider:v22];

    objc_initWeak(buf, self);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_144EC;
    v30[3] = &unk_288D8;
    objc_copyWeak(v31, buf);
    v30[4] = self;
    [v21 setCompletionBlock:v30];
    +[DABehaviorOptions defaultDAVProbeTimeout];
    v23 = [NSTimer scheduledTimerWithTimeInterval:self target:"_serverProbeTimedOut" selector:0 userInfo:1 repeats:?];
    [(MobileCalDAVDaemonAccount *)self setOptionsTimeoutTimer:v23];

    [(MobileCalDAVDaemonAccount *)self setOptionsProbe:v21];
    v24 = [(MobileCalDAVDaemonAccount *)self taskManager];
    v25 = [(MobileCalDAVDaemonAccount *)self optionsProbe];
    [v24 submitQueuedCoreDAVTask:v25];

    objc_destroyWeak(v31);
    objc_destroyWeak(buf);
  }

  else
  {
    v26 = DALoggingwithCategory();
    v27 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v26, v27))
    {
      *buf = 138412290;
      v33 = self;
      _os_log_impl(&dword_0, v26, v27, "This account has been put in timeout by the babysitter. Failing this sync. %@", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_consumer);
    v29 = [NSError errorWithDomain:DAErrorDomain code:6 userInfo:0];
    [WeakRetained refreshDidCompleteWithError:v29];
  }
}

- (id)serverTokenRegistrationURL
{
  if ((byte_30C48 & 1) == 0)
  {
    byte_30C48 = 1;
    v3 = CFPreferencesCopyAppValue(@"DAAPSTokenURL", kCFPreferencesAnyApplication);
    if (v3)
    {
      v4 = [NSURL URLWithString:v3];
      v5 = qword_30C40;
      qword_30C40 = v4;
    }
  }

  if (qword_30C40)
  {
    v6 = qword_30C40;
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
    v5 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v4, v5))
    {
      v6 = [(MobileCalDAVDaemonAccount *)self accountDescription];
      v7 = [(MobileCalDAVDaemonAccount *)self publicDescription];
      *buf = 138412546;
      v16 = v6;
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&dword_0, v4, v5, "Account %@ (%{public}@) was told it is safe to refresh. Kicking off a refresh.", buf, 0x16u);
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
        v12 = objc_opt_respondsToSelector();

        v13 = objc_loadWeakRetained(&self->_consumer);
        if (v12)
        {
          [v13 _validateAndSync:0];
        }

        else
        {
          v14 = [NSString stringWithFormat:@"<rdar://problem/37173724>. Consumer class: [%@]", objc_opt_class()];

          [CalCrashReporter simulateCrashWithMessage:v14];
        }

        return;
      }
    }

    if (([(MobileCalDAVDaemonAccount *)self refreshReason]& 4) != 0 || ![(MobileCalDAVDaemonAccount *)self refreshReason])
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
  v6 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [(MobileCalDAVDaemonAccount *)self accountDescription];
    v8 = [(MobileCalDAVDaemonAccount *)self publicDescription];
    v14 = 138412802;
    v15 = v7;
    v16 = 2114;
    v17 = v8;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_0, v5, v6, "Account %@ (%{public}@) is beginning to monitor these folders: %@", &v14, 0x20u);
  }

  [(MobileCalDAVDaemonAccount *)self setFullRefresh:1];
  v9 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
  v10 = [v9 principalURL];
  if (v10)
  {
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_consumer);

    if (WeakRetained)
    {
      v12 = objc_loadWeakRetained(&self->_consumer);
      [v12 _validateAndSync:0];

      goto LABEL_11;
    }
  }

  if (([(MobileCalDAVDaemonAccount *)self refreshReason]& 4) != 0 || ![(MobileCalDAVDaemonAccount *)self refreshReason])
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
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 == 3)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

- (void)promptUserForNewCoreDAVPasswordWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVDaemonAccount *)self backingAccount];
  [v5 promptUserForNewCoreDAVPasswordWithCompletionBlock:v4];
}

- (DATrustHandler)trustHandler
{
  v2 = [(MobileCalDAVDaemonAccount *)self backingAccount];
  v3 = [v2 daAccount];
  v4 = [v3 trustHandler];

  return v4;
}

- (NSString)onBehalfOfBundleIdentifier
{
  v2 = [(MobileCalDAVDaemonAccount *)self backingAccount];
  v3 = [v2 daAccount];
  v4 = [v3 onBehalfOfBundleIdentifier];

  return v4;
}

- (void)saveXpcActivity:(id)a3
{
  v4 = a3;
  v6 = [(MobileCalDAVDaemonAccount *)self backingAccount];
  v5 = [v6 daAccount];
  [v5 saveXpcActivity:v4];
}

- (NSString)scheduleIdentifier
{
  v2 = [(MobileCalDAVDaemonAccount *)self backingAccount];
  v3 = [v2 daAccount];
  v4 = [v3 scheduleIdentifier];

  return v4;
}

- (CalDAVAgent)consumer
{
  WeakRetained = objc_loadWeakRetained(&self->_consumer);

  return WeakRetained;
}

@end