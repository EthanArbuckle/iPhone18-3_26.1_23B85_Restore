@interface MobileCalDAVDaemonAccount
+ (int)convertToMobileCalDAVRefreshReason:(int)reason;
+ (int)extractDARefreshReasonFromContext:(id)context;
- (BOOL)APSTopicHasValidPrefix:(id)prefix;
- (BOOL)_hasChangesInStore:(void *)store forChangesCall:(void *)call;
- (BOOL)_isEnabled;
- (BOOL)_shouldRefreshInResponseToDBChange;
- (BOOL)monitorFoldersWithIDs:(id)ds;
- (CalDAVAgent)consumer;
- (DATrustHandler)trustHandler;
- (MobileCalDAVDaemonAccount)initWithBackingAccount:(id)account;
- (NSString)onBehalfOfBundleIdentifier;
- (NSString)scheduleIdentifier;
- (id)beginDownloadingAttachmentWithUUID:(id)d consumer:(id)consumer;
- (id)serverTokenRegistrationURL;
- (void)_attachmentDownloadDidFinish:(id)finish;
- (void)_cancelOptionsTimer;
- (void)_continueRefresh;
- (void)_probeAndSync;
- (void)_reallyPerformSearchQuery:(id)query;
- (void)_refresh;
- (void)_serverProbeTimedOut;
- (void)_updateWatchedCollections;
- (void)cancelAllAttachmentDownloads;
- (void)cancelDownloadingInstance:(id)instance error:(id)error;
- (void)cancelRefreshWithCompletion:(id)completion;
- (void)dealloc;
- (void)discoverInitialPropertiesWithConsumer:(id)consumer;
- (void)discoveryTask:(id)task gotAccountInfo:(id)info error:(id)error;
- (void)promptUserForNewCoreDAVPasswordWithCompletionBlock:(id)block;
- (void)refreshActor:(id)actor didCompleteWithError:(id)error;
- (void)saveXpcActivity:(id)activity;
- (void)setSafeToRefresh:(BOOL)refresh;
@end

@implementation MobileCalDAVDaemonAccount

- (id)beginDownloadingAttachmentWithUUID:(id)d consumer:(id)consumer
{
  dCopy = d;
  consumerCopy = consumer;
  if (!dCopy)
  {
    sub_15E30();
  }

  if (!consumerCopy)
  {
    sub_15E9C();
  }

  v8 = [MobileCalDAVDownloadContext contextWithAttachmentUUID:dCopy consumer:consumerCopy];
  attachmentDownloadsByAttachmentUUID = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  objc_sync_enter(attachmentDownloadsByAttachmentUUID);
  attachmentDownloadsByAttachmentUUID2 = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  v11 = [attachmentDownloadsByAttachmentUUID2 objectForKeyedSubscript:dCopy];

  v12 = v11;
  if (!v11)
  {
    v12 = [[MobileCalDAVAttachmentDownloader alloc] initWithAttachmentUUID:dCopy forAccount:self];
    attachmentDownloadsByAttachmentUUID3 = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
    [attachmentDownloadsByAttachmentUUID3 setObject:v12 forKeyedSubscript:dCopy];
  }

  [(MobileCalDAVAttachmentDownloader *)v12 addConsumer:consumerCopy];
  objc_sync_exit(attachmentDownloadsByAttachmentUUID);

  if (!v11)
  {
    v14 = DALoggingwithCategory();
    v15 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v14, v15))
    {
      v17 = 134218242;
      v18 = consumerCopy;
      v19 = 2112;
      v20 = dCopy;
      _os_log_impl(&dword_0, v14, v15, "Starting new attachment download for consumer %p and attachment UUID %@", &v17, 0x16u);
    }

    [(MobileCalDAVAttachmentDownloader *)v12 beginDownload];
  }

  return v8;
}

- (void)cancelDownloadingInstance:(id)instance error:(id)error
{
  instanceCopy = instance;
  errorCopy = error;
  if (!instanceCopy)
  {
    sub_15F08();
  }

  v8 = instanceCopy;
  attachmentUUID = [v8 attachmentUUID];
  if (!attachmentUUID)
  {
    sub_15F74();
  }

  consumer = [v8 consumer];
  [consumer downloadFinishedError:errorCopy];

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
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  attachmentDownloadsByAttachmentUUID = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  allValues = [attachmentDownloadsByAttachmentUUID allValues];

  v7 = [allValues countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v7)
  {
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        consumers = [v10 consumers];
        v12 = [consumers countByEnumeratingWithState:&v18 objects:v27 count:16];
        if (v12)
        {
          v13 = *v19;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(consumers);
              }

              [*(*(&v18 + 1) + 8 * j) downloadFinishedError:v4];
            }

            v12 = [consumers countByEnumeratingWithState:&v18 objects:v27 count:16];
          }

          while (v12);
        }

        [v10 cancelDownload];
      }

      v7 = [allValues countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v7);
  }

  attachmentDownloadsByAttachmentUUID2 = [(MobileCalDAVDaemonAccount *)self attachmentDownloadsByAttachmentUUID];
  [attachmentDownloadsByAttachmentUUID2 removeAllObjects];

  objc_sync_exit(obj);
}

- (MobileCalDAVDaemonAccount)initWithBackingAccount:(id)account
{
  v11.receiver = self;
  v11.super_class = MobileCalDAVDaemonAccount;
  v3 = [(MobileCalDAVDaemonAccount *)&v11 initWithBackingAccount:account];
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
  optionsTimeoutTimer = [(MobileCalDAVDaemonAccount *)self optionsTimeoutTimer];
  [optionsTimeoutTimer invalidate];

  [(MobileCalDAVDaemonAccount *)self setOptionsTimeoutTimer:0];
}

- (void)dealloc
{
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, v4, "MobileCalDAVDaemonAccount %p going away", buf, 0xCu);
  }

  [(MobileCalDAVDaemonAccount *)self cancelAllAttachmentDownloads];
  [(MobileCalDAVDaemonAccount *)self _cancelOptionsTimer];
  v5.receiver = self;
  v5.super_class = MobileCalDAVDaemonAccount;
  [(MobileCalDAVDaemonAccount *)&v5 dealloc];
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

- (void)cancelRefreshWithCompletion:(id)completion
{
  completionCopy = completion;
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
          v24 = 2112;
          v25 = pushKey2;
          _os_log_impl(&dword_0, v14, v4, "Push key for calendar %@ is %@", buf, 0x16u);
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

  v90 = _NSConcreteStackBlock;
  v91 = 3221225472;
  v92 = sub_115A8;
  v93 = &unk_28B98;
  v11 = errorCopy;
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

  domain = [v11 domain];
  v16 = &CalIsReminderBridgeEnabled_ptr;
  if ([domain isEqualToString:DAErrorDomain])
  {
    code = [v11 code];

    if (code == &dword_4 + 2)
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

  mainPrincipal = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
  shouldUpdatePushDelegate = [mainPrincipal shouldUpdatePushDelegate];

  if ((shouldUpdatePushDelegate & 1) != 0 || shouldRegisterWithRefreshManager)
  {
    mainPrincipal2 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
    aPSTopic = [mainPrincipal2 APSTopic];

    if (aPSTopic)
    {
      mainPrincipal3 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
      aPSTopic2 = [mainPrincipal3 APSTopic];
      v26 = [(MobileCalDAVDaemonAccount *)self APSTopicHasValidPrefix:aPSTopic2];

      if (v26)
      {
        v27 = +[DARefreshManager sharedManager];
        mainPrincipal4 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
        aPSTopic3 = [mainPrincipal4 APSTopic];
        mainPrincipal5 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
        aPSEnv = [mainPrincipal5 APSEnv];
        [v27 registerTopic:aPSTopic3 forDelegate:self inEnvironment:aPSEnv];

        v16 = &CalIsReminderBridgeEnabled_ptr;
      }

      else
      {
        v27 = DALoggingwithCategory();
        v32 = _CPLog_to_os_log_type[4];
        if (os_log_type_enabled(v27, v32))
        {
          mainPrincipal6 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
          aPSTopic4 = [mainPrincipal6 APSTopic];
          *buf = 138412290;
          selfCopy = aPSTopic4;
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

  sharedManager = [v16[166] sharedManager];
  [sharedManager delegateDidCompleteRefresh:self];

LABEL_23:
  v89.receiver = self;
  v89.super_class = MobileCalDAVDaemonAccount;
  [(MobileCalDAVDaemonAccount *)&v89 refreshActor:actorCopy didCompleteWithError:v11];
  if (v11)
  {
    goto LABEL_31;
  }

  backingAccount = [(MobileCalDAVDaemonAccount *)self backingAccount];
  accountInfo = [backingAccount accountInfo];
  if ([accountInfo supportsAuthentication])
  {
    backingAccount2 = [(MobileCalDAVDaemonAccount *)self backingAccount];
    accountInfo2 = [backingAccount2 accountInfo];
    isAuthenticated = [accountInfo2 isAuthenticated];

    if (isAuthenticated)
    {
      goto LABEL_31;
    }

    v41 = DALoggingwithCategory();
    v42 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v41, v42))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_0, v41, v42, "Received a success response from server while account is not marked as authenticated. Set isAuthenticated flag and save account %@", buf, 0xCu);
    }

    backingAccount3 = [(MobileCalDAVDaemonAccount *)self backingAccount];
    accountInfo3 = [backingAccount3 accountInfo];
    [accountInfo3 setAuthenticated:1];

    backingAccount4 = [(MobileCalDAVDaemonAccount *)self backingAccount];
    [backingAccount4 setObject:0 forKeyedSubscript:kDAAccountIgnoreAuthenticatedProperty];

    backingAccount5 = [(MobileCalDAVDaemonAccount *)self backingAccount];
    [backingAccount5 saveAccountProperties];

    backingAccount = +[DARefreshManager sharedManager];
    [backingAccount delegateDidSuccessfullyRecoverFromBeingUnauthenticated:self];
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

  domain2 = [v11 domain];
  v50 = [domain2 isEqualToString:CoreDAVHTTPStatusErrorDomain];
  if (!v50)
  {
    v53 = 0;
    goto LABEL_37;
  }

  code2 = [v11 code];

  if (code2 == &stru_1A8.reserved3 + 3)
  {
    domain2 = [v11 userInfo];
    v52 = [domain2 objectForKeyedSubscript:CoreDAVHTTPHeaders];
    v53 = [v52 DAObjectForKeyCaseInsensitive:@"retry-after"];

LABEL_37:
    goto LABEL_39;
  }

  v53 = 0;
  v50 = 0;
LABEL_39:
  context = [actorCopy context];
  shouldRetry = [context shouldRetry];

  if (shouldRetry)
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

  domain3 = [v11 domain];
  if (([domain3 isEqualToString:NSURLErrorDomain] & 1) == 0)
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

  code3 = [v11 code];

  if (code3 == -1001)
  {
    v58 = 120.0;
  }

  else
  {
    v58 = 480.0;
  }

  if (code3 == -1001)
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
    context2 = [actorCopy context];
    v61 = [v59 extractDARefreshReasonFromContext:context2];

    [v53 doubleValue];
    v63 = v62;
    v64 = DALoggingwithCategory();
    v65 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v64, v65))
    {
      *buf = 134217984;
      selfCopy = v63;
      _os_log_impl(&dword_0, v64, v65, "The server returned a 503 error and told us to try again in %f seconds", buf, 0xCu);
    }

    v66 = +[DARefreshManager sharedManager];
    watchedCollections = [(MobileCalDAVDaemonAccount *)self watchedCollections];
    v68 = v66;
    selfCopy3 = self;
    v70 = watchedCollections;
    v71 = *&v63;
LABEL_64:
    [v68 retryRefreshForDelegate:selfCopy3 withCollections:v70 after:v61 originalRefreshReason:v71];

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
      selfCopy = *&v80;
      _os_log_impl(&dword_0, v77, v78, "We'll retry again after %f seconds", buf, 0xCu);
    }

    v81 = objc_opt_class();
    context3 = [actorCopy context];
    v61 = [v81 extractDARefreshReasonFromContext:context3];

    v66 = +[DARefreshManager sharedManager];
    watchedCollections = [(MobileCalDAVDaemonAccount *)self watchedCollections];
    v71 = self->_lastRetryTimeout;
    v68 = v66;
    selfCopy3 = self;
    v70 = watchedCollections;
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
    accountSyncDiagnostics = [actorCopy accountSyncDiagnostics];
    context4 = [actorCopy context];
    [(MobileCalDAVDaemonAccount *)self _persistAccountSyncDiagnostics:accountSyncDiagnostics withContext:context4 completionTime:v8 willAttemptToRetry:v84 hitInternalRefreshTimeout:v83 error:v11];
  }
}

- (BOOL)_isEnabled
{
  dbHelper = [(MobileCalDAVDaemonAccount *)self dbHelper];
  accountID = [(MobileCalDAVDaemonAccount *)self accountID];
  [dbHelper calOpenDatabaseAsGenericClientForAccountID:accountID];

  copyCalStore = [(MobileCalDAVDaemonAccount *)self copyCalStore];
  if (copyCalStore)
  {
    v6 = copyCalStore;
    IsEnabled = CalStoreIsEnabled();
    CFRelease(v6);
  }

  else
  {
    IsEnabled = 0;
  }

  dbHelper2 = [(MobileCalDAVDaemonAccount *)self dbHelper];
  accountID2 = [(MobileCalDAVDaemonAccount *)self accountID];
  [dbHelper2 calCloseDatabaseForAccountID:accountID2 save:0];

  return IsEnabled;
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

- (BOOL)_hasChangesInStore:(void *)store forChangesCall:(void *)call
{
  lastSyncedSequenceNumber = [(MobileCalDAVDaemonAccount *)self lastSyncedSequenceNumber];
  theDict = 0;
  dbHelper = [(MobileCalDAVDaemonAccount *)self dbHelper];
  accountID = [(MobileCalDAVDaemonAccount *)self accountID];
  (call)([dbHelper calDatabaseForAccountID:accountID], store, &theDict);

  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, kCalCalendarItemChangesSequenceNumberKey);
  if (Value && (v11 = Value, Count = CFArrayGetCount(Value), v13 = Count - 1, Count >= 1))
  {
    v14 = 0;
    v15 = (lastSyncedSequenceNumber + 1);
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
  dbHelper = [(MobileCalDAVDaemonAccount *)self dbHelper];
  accountID = [(MobileCalDAVDaemonAccount *)self accountID];
  changeTrackingID = [(MobileCalDAVDaemonAccount *)self changeTrackingID];
  [dbHelper calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];

  copyCalStore = [(MobileCalDAVDaemonAccount *)self copyCalStore];
  if (copyCalStore)
  {
    if ((CalStoreIsEnabled() & 1) == 0)
    {
      goto LABEL_40;
    }

    if (self->_refreshReason == 1)
    {
      if (CalStoreSyncDefaultAlarms())
      {
        dbHelper2 = [(MobileCalDAVDaemonAccount *)self dbHelper];
        accountID2 = [(MobileCalDAVDaemonAccount *)self accountID];
        [dbHelper2 calDatabaseForAccountID:accountID2];
        CalDatabaseCopyStoreChangesInStore();
      }

      if ([(MobileCalDAVDaemonAccount *)self _hasChangesInStore:copyCalStore forChangesCall:&CalDatabaseCopyEventChangesInStore])
      {
        v12 = DALoggingwithCategory();
        v13 = _CPLog_to_os_log_type[5];
        if (os_log_type_enabled(v12, v13))
        {
          accountDescription = [(MobileCalDAVDaemonAccount *)self accountDescription];
          publicDescription = [(MobileCalDAVDaemonAccount *)self publicDescription];
          *buf = 138412546;
          v29 = accountDescription;
          v30 = 2114;
          v31 = publicDescription;
          v16 = "Found event changes for account %@ (%{public}@)";
LABEL_35:
          _os_log_impl(&dword_0, v12, v13, v16, buf, 0x16u);

          goto LABEL_36;
        }

        goto LABEL_36;
      }

      if ([(MobileCalDAVDaemonAccount *)self _hasChangesInStore:copyCalStore forChangesCall:&CalDatabaseCopyAlarmChangesInStore])
      {
        v12 = DALoggingwithCategory();
        v13 = _CPLog_to_os_log_type[5];
        if (os_log_type_enabled(v12, v13))
        {
          accountDescription = [(MobileCalDAVDaemonAccount *)self accountDescription];
          publicDescription = [(MobileCalDAVDaemonAccount *)self publicDescription];
          *buf = 138412546;
          v29 = accountDescription;
          v30 = 2114;
          v31 = publicDescription;
          v16 = "Found alarm changes for account %@ (%{public}@)";
          goto LABEL_35;
        }

LABEL_36:

        v9 = 1;
LABEL_41:
        CFRelease(copyCalStore);
        goto LABEL_42;
      }

      if ([(MobileCalDAVDaemonAccount *)self _hasChangesInStore:copyCalStore forChangesCall:&CalDatabaseCopyAttendeeChangesInStore])
      {
        v12 = DALoggingwithCategory();
        v13 = _CPLog_to_os_log_type[5];
        if (os_log_type_enabled(v12, v13))
        {
          accountDescription = [(MobileCalDAVDaemonAccount *)self accountDescription];
          publicDescription = [(MobileCalDAVDaemonAccount *)self publicDescription];
          *buf = 138412546;
          v29 = accountDescription;
          v30 = 2114;
          v31 = publicDescription;
          v16 = "Found attendee changes for account %@ (%{public}@)";
          goto LABEL_35;
        }

        goto LABEL_36;
      }

      if ([(MobileCalDAVDaemonAccount *)self _hasChangesInStore:copyCalStore forChangesCall:&CalDatabaseCopyAttachmentChangesInStore])
      {
        v12 = DALoggingwithCategory();
        v13 = _CPLog_to_os_log_type[5];
        if (os_log_type_enabled(v12, v13))
        {
          accountDescription = [(MobileCalDAVDaemonAccount *)self accountDescription];
          publicDescription = [(MobileCalDAVDaemonAccount *)self publicDescription];
          *buf = 138412546;
          v29 = accountDescription;
          v30 = 2114;
          v31 = publicDescription;
          v16 = "Found attachment changes for account %@ (%{public}@)";
          goto LABEL_35;
        }

        goto LABEL_36;
      }

      if ([(MobileCalDAVDaemonAccount *)self _hasChangesInStore:copyCalStore forChangesCall:&CalDatabaseCopyRecurrenceChangesInStore])
      {
        v12 = DALoggingwithCategory();
        v13 = _CPLog_to_os_log_type[5];
        if (os_log_type_enabled(v12, v13))
        {
          accountDescription = [(MobileCalDAVDaemonAccount *)self accountDescription];
          publicDescription = [(MobileCalDAVDaemonAccount *)self publicDescription];
          *buf = 138412546;
          v29 = accountDescription;
          v30 = 2114;
          v31 = publicDescription;
          v16 = "Found recurrence changes for account %@ (%{public}@)";
          goto LABEL_35;
        }

        goto LABEL_36;
      }

      if ([(MobileCalDAVDaemonAccount *)self _hasChangesInStore:copyCalStore forChangesCall:&CalDatabaseCopyCalendarChangesInStore])
      {
        v12 = DALoggingwithCategory();
        v13 = _CPLog_to_os_log_type[5];
        if (os_log_type_enabled(v12, v13))
        {
          accountDescription = [(MobileCalDAVDaemonAccount *)self accountDescription];
          publicDescription = [(MobileCalDAVDaemonAccount *)self publicDescription];
          *buf = 138412546;
          v29 = accountDescription;
          v30 = 2114;
          v31 = publicDescription;
          v16 = "Found calendar changes for account %@ (%{public}@)";
          goto LABEL_35;
        }

        goto LABEL_36;
      }

      if ([(MobileCalDAVDaemonAccount *)self _hasChangesInStore:copyCalStore forChangesCall:&CalDatabaseCopyNotificationChangesInStore])
      {
        v12 = DALoggingwithCategory();
        v13 = _CPLog_to_os_log_type[5];
        if (os_log_type_enabled(v12, v13))
        {
          accountDescription = [(MobileCalDAVDaemonAccount *)self accountDescription];
          publicDescription = [(MobileCalDAVDaemonAccount *)self publicDescription];
          *buf = 138412546;
          v29 = accountDescription;
          v30 = 2114;
          v31 = publicDescription;
          v16 = "Found notification changes for account %@ (%{public}@)";
          goto LABEL_35;
        }

        goto LABEL_36;
      }

      if ([(MobileCalDAVDaemonAccount *)self _hasChangesInStore:copyCalStore forChangesCall:&CalDatabaseCopyShareeChangesInStore])
      {
        v12 = DALoggingwithCategory();
        v17 = _CPLog_to_os_log_type[5];
        if (os_log_type_enabled(v12, v17))
        {
          accountDescription2 = [(MobileCalDAVDaemonAccount *)self accountDescription];
          *buf = 138412290;
          v29 = accountDescription2;
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
  if (copyCalStore)
  {
    goto LABEL_41;
  }

LABEL_42:
  dbHelper3 = [(MobileCalDAVDaemonAccount *)self dbHelper];
  accountID3 = [(MobileCalDAVDaemonAccount *)self accountID];
  [dbHelper3 calCloseDatabaseForAccountID:accountID3 save:0];

  v21 = DALoggingwithCategory();
  v22 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v21, v22))
  {
    publicDescription2 = [(MobileCalDAVDaemonAccount *)self publicDescription];
    v24 = publicDescription2;
    v25 = @"Blocking";
    if (v9)
    {
      v25 = @"Starting";
    }

    v26 = @"do not have";
    *buf = 138412802;
    v29 = publicDescription2;
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

    publicDescription = [(MobileCalDAVDaemonAccount *)self publicDescription];
    refreshReason = self->_refreshReason;
    *buf = 138543874;
    v33 = v5;
    v34 = 2112;
    v35 = publicDescription;
    v36 = 1024;
    v37 = refreshReason;
    _os_log_impl(&dword_0, v3, v4, "Gatekeeper gave us the goahead. Refreshing account %{public}@ with ID %@. Reason: %x", buf, 0x1Cu);
  }

  dbHelper = [(MobileCalDAVDaemonAccount *)self dbHelper];
  accountID = [(MobileCalDAVDaemonAccount *)self accountID];
  changeTrackingID = [(MobileCalDAVDaemonAccount *)self changeTrackingID];
  [dbHelper calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];

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
    dbHelper2 = [(MobileCalDAVDaemonAccount *)self dbHelper];
    accountID2 = [(MobileCalDAVDaemonAccount *)self accountID];
    v16 = [dbHelper2 calDatabaseForAccountID:accountID2];
    changeTrackingID2 = [(MobileCalDAVDaemonAccount *)self changeTrackingID];
    v18 = [v13 initWithDatabase:v16 clientIdentifier:changeTrackingID2];
    [v12 setChangeTracker:v18];

    backingAccount = [(MobileCalDAVDaemonAccount *)self backingAccount];
    [backingAccount setShouldUseOpportunisticSockets:0];

    wasUserRequested = [v12 wasUserRequested];
    backingAccount2 = [(MobileCalDAVDaemonAccount *)self backingAccount];
    [backingAccount2 setWasUserInitiated:wasUserRequested];

    [(MobileCalDAVDaemonAccount *)self refreshWithContext:v12 completion:0];
    dbHelper3 = [(MobileCalDAVDaemonAccount *)self dbHelper];
    accountID3 = [(MobileCalDAVDaemonAccount *)self accountID];
    [dbHelper3 calCloseDatabaseForAccountID:accountID3 save:0];

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

    dbHelper4 = [(MobileCalDAVDaemonAccount *)self dbHelper];
    accountID4 = [(MobileCalDAVDaemonAccount *)self accountID];
    [dbHelper4 calCloseDatabaseForAccountID:accountID4 save:0];

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
  backingAccount = [(MobileCalDAVDaemonAccount *)self backingAccount];
  if ([backingAccount isEnabledForDataclass:kAccountDataclassCalendars])
  {

    goto LABEL_3;
  }

  if (CalIsReminderBridgeEnabled())
  {

    goto LABEL_24;
  }

  backingAccount2 = [(MobileCalDAVDaemonAccount *)self backingAccount];
  v34 = [backingAccount2 isEnabledForDataclass:kAccountDataclassReminders];

  if ((v34 & 1) == 0)
  {
LABEL_24:
    v35 = DALoggingwithCategory();
    v36 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v35, v36))
    {
      accountDescription = [(MobileCalDAVDaemonAccount *)self accountDescription];
      publicDescription = [(MobileCalDAVDaemonAccount *)self publicDescription];
      *buf = 138412546;
      selfCopy = accountDescription;
      v51 = 2114;
      *v52 = publicDescription;
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
  backingAccount3 = [(MobileCalDAVDaemonAccount *)self backingAccount];
  needsToVerifyTerms = [backingAccount3 needsToVerifyTerms];

  v6 = DALoggingwithCategory();
  v7 = v6;
  if (needsToVerifyTerms)
  {
    v8 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v6, v8))
    {
      accountDescription2 = [(MobileCalDAVDaemonAccount *)self accountDescription];
      publicDescription2 = [(MobileCalDAVDaemonAccount *)self publicDescription];
      *buf = 138412546;
      selfCopy = accountDescription2;
      v51 = 2114;
      *v52 = publicDescription2;
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
      accountID = [(MobileCalDAVDaemonAccount *)self accountID];
      forcedRefresh = self->_forcedRefresh;
      fullRefresh = self->_fullRefresh;
      refreshReason = self->_refreshReason;
      *buf = 138544130;
      selfCopy = accountID;
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
            transactionId = [v25 transactionId];
            *buf = 138543362;
            selfCopy = transactionId;
            _os_log_impl(&dword_0, v26, v17, "DATransaction starting, ID: %{public}@", buf, 0xCu);
          }

          v28 = [DAActivity alloc];
          backingAccount4 = [(MobileCalDAVDaemonAccount *)self backingAccount];
          v30 = [v28 initWithAccount:backingAccount4];

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
        selfCopy = self;
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

  if ((v6 & 1) == 0)
  {
    v17 = DALoggingwithCategory();
    v18 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v17, v18))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_0, v17, v18, "This account has been put in timeout by the babysitter. Failing this sync. %@", buf, 0xCu);
    }

    backingAccount = [(MobileCalDAVDaemonAccount *)self backingAccount];
    v15 = DAErrorDomain;
    v16 = 6;
    goto LABEL_9;
  }

  backingAccount2 = [(MobileCalDAVDaemonAccount *)self backingAccount];
  hostWithoutPath = [backingAccount2 hostWithoutPath];
  v9 = [DAReachability hostLikelyUnreachable:hostWithoutPath];

  if (v9)
  {
    v10 = DALoggingwithCategory();
    v11 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v10, v11))
    {
      backingAccount3 = [(MobileCalDAVDaemonAccount *)self backingAccount];
      hostWithoutPath2 = [backingAccount3 hostWithoutPath];
      *buf = 138412546;
      selfCopy = hostWithoutPath2;
      v26 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_0, v10, v11, "Not even trying to discover properties because the host %@ is probably unreachable. %@", buf, 0x16u);
    }

    backingAccount = [(MobileCalDAVDaemonAccount *)self backingAccount];
    v15 = DAErrorDomain;
    v16 = 0;
LABEL_9:
    v19 = [NSError errorWithDomain:v15 code:v16 userInfo:0];
    [consumerCopy account:backingAccount isValid:0 validationError:v19];

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
    v23 = consumerCopy;
    [v20 registerWaiter:self forDataclassLocks:20 completionHandler:v22];

    goto LABEL_11;
  }

  backingAccount = DALoggingwithCategory();
  v21 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(backingAccount, v21))
  {
    *buf = 0;
    _os_log_impl(&dword_0, backingAccount, v21, "Already holding (or waiting for) a gatekeeper lock, so skipping this property discovery request", buf, 2u);
  }

LABEL_10:

LABEL_11:
}

- (void)discoveryTask:(id)task gotAccountInfo:(id)info error:(id)error
{
  errorCopy = error;
  infoCopy = info;
  taskCopy = task;
  backingAccount = [(MobileCalDAVDaemonAccount *)self backingAccount];
  hostWithoutPath = [backingAccount hostWithoutPath];
  [DAReachability recordError:errorCopy forHost:hostWithoutPath];

  v13.receiver = self;
  v13.super_class = MobileCalDAVDaemonAccount;
  [(MobileCalDAVDaemonAccount *)&v13 discoveryTask:taskCopy gotAccountInfo:infoCopy error:errorCopy];
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

LABEL_4:

    return;
  }

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
      mainPrincipal3 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
      principalURL3 = [mainPrincipal3 principalURL];
      +[DABehaviorOptions defaultDAVProbeTimeout];
      *buf = 138412546;
      selfCopy = principalURL3;
      v34 = 2048;
      v35 = v17;
      _os_log_impl(&dword_0, v13, v14, "Probing the host at %@ to see if we have a good enough network connection. We'll wait up to %lf seconds.", buf, 0x16u);
    }

    v18 = [CoreDAVOptionsTask alloc];
    mainPrincipal4 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
    principalURL4 = [mainPrincipal4 principalURL];
    v21 = [v18 initWithURL:principalURL4];

    mainPrincipal5 = [(MobileCalDAVDaemonAccount *)self mainPrincipal];
    [v21 setAccountInfoProvider:mainPrincipal5];

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
    taskManager = [(MobileCalDAVDaemonAccount *)self taskManager];
    optionsProbe2 = [(MobileCalDAVDaemonAccount *)self optionsProbe];
    [taskManager submitQueuedCoreDAVTask:optionsProbe2];

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
      selfCopy = self;
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
    aPSSubscriptionURL2 = qword_30C40;
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
    v5 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v4, v5))
    {
      accountDescription = [(MobileCalDAVDaemonAccount *)self accountDescription];
      publicDescription = [(MobileCalDAVDaemonAccount *)self publicDescription];
      *buf = 138412546;
      v16 = accountDescription;
      v17 = 2114;
      v18 = publicDescription;
      _os_log_impl(&dword_0, v4, v5, "Account %@ (%{public}@) was told it is safe to refresh. Kicking off a refresh.", buf, 0x16u);
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

- (BOOL)monitorFoldersWithIDs:(id)ds
{
  dsCopy = ds;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v5, v6))
  {
    accountDescription = [(MobileCalDAVDaemonAccount *)self accountDescription];
    publicDescription = [(MobileCalDAVDaemonAccount *)self publicDescription];
    v14 = 138412802;
    v15 = accountDescription;
    v16 = 2114;
    v17 = publicDescription;
    v18 = 2112;
    v19 = dsCopy;
    _os_log_impl(&dword_0, v5, v6, "Account %@ (%{public}@) is beginning to monitor these folders: %@", &v14, 0x20u);
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
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (reason == 3)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

- (void)promptUserForNewCoreDAVPasswordWithCompletionBlock:(id)block
{
  blockCopy = block;
  backingAccount = [(MobileCalDAVDaemonAccount *)self backingAccount];
  [backingAccount promptUserForNewCoreDAVPasswordWithCompletionBlock:blockCopy];
}

- (DATrustHandler)trustHandler
{
  backingAccount = [(MobileCalDAVDaemonAccount *)self backingAccount];
  daAccount = [backingAccount daAccount];
  trustHandler = [daAccount trustHandler];

  return trustHandler;
}

- (NSString)onBehalfOfBundleIdentifier
{
  backingAccount = [(MobileCalDAVDaemonAccount *)self backingAccount];
  daAccount = [backingAccount daAccount];
  onBehalfOfBundleIdentifier = [daAccount onBehalfOfBundleIdentifier];

  return onBehalfOfBundleIdentifier;
}

- (void)saveXpcActivity:(id)activity
{
  activityCopy = activity;
  backingAccount = [(MobileCalDAVDaemonAccount *)self backingAccount];
  daAccount = [backingAccount daAccount];
  [daAccount saveXpcActivity:activityCopy];
}

- (NSString)scheduleIdentifier
{
  backingAccount = [(MobileCalDAVDaemonAccount *)self backingAccount];
  daAccount = [backingAccount daAccount];
  scheduleIdentifier = [daAccount scheduleIdentifier];

  return scheduleIdentifier;
}

- (CalDAVAgent)consumer
{
  WeakRetained = objc_loadWeakRetained(&self->_consumer);

  return WeakRetained;
}

@end