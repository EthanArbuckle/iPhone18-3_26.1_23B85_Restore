@interface SubCalRefreshTask
- (BOOL)shouldForceHTTPS;
- (NSString)waiterID;
- (SubCalRefreshTask)init;
- (id)_initializeCalendarDatabase;
- (id)subscriptionURLToUse;
- (void)_acquireGatekeeperLockAndPerformBlock:(id)block;
- (void)_dropGateKeeperAndUpdateSubscribedCalendarWithDataFromNetwork;
- (void)_finishWithErrorAfterLoadingURL:(id)l;
- (void)_lockedPrepareToPerformBlock:(id)block;
- (void)_makeBackgroundActor;
- (void)_processICSData:(id)data;
- (void)_processICSDataFromFile:(id)file;
- (void)_processICSDataHoldingGatekeeperLock:(id)lock;
- (void)_syncEndedWithError:(id)error;
- (void)_syncStarted;
- (void)_updateSubscribedCalendarWithTmpICSData:(id)data;
- (void)dealloc;
- (void)handleTrustChallenge:(id)challenge forSubCalURLRequest:(id)request;
- (void)handleTrustChallenge:(id)challenge forSubCalURLRequest:(id)request completionHandler:(id)handler;
- (void)performDelegateCallbackWithError:(id)error;
- (void)performTask;
- (void)subCalICSDataActor:(id)actor completedWithError:(id)error;
- (void)subCalURLRequest:(id)request didRedirectToURL:(id)l;
- (void)subCalURLRequest:(id)request finishedWithData:(id)data error:(id)error;
- (void)subCalURLRequestNeedsUsernameAndPasswordForHost:(id)host continuation:(id)continuation;
- (void)updateSubscribedCalendarRefreshDateOnly;
- (void)willFinish;
@end

@implementation SubCalRefreshTask

- (SubCalRefreshTask)init
{
  v5.receiver = self;
  v5.super_class = SubCalRefreshTask;
  v2 = [(SubCalRefreshTask *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SubCalRefreshTask *)v2 setUpdateCalendarProperties:1];
    [(SubCalRefreshTask *)v3 setClearChanges:1];
  }

  return v3;
}

- (void)dealloc
{
  if (self->_isSpinning)
  {
    [(SubCalRefreshTask *)self _setSpinning:0];
  }

  v3.receiver = self;
  v3.super_class = SubCalRefreshTask;
  [(SubCalRefreshTask *)&v3 dealloc];
}

- (void)_makeBackgroundActor
{
  backgroundActor = [(SubCalRefreshTask *)self backgroundActor];

  if (backgroundActor)
  {
    sub_D6B8(a2, self);
  }

  v5 = [SubCalICSDataActor alloc];
  sourceExternalId = [(SubCalRefreshTask *)self sourceExternalId];
  calendarExternalId = [(SubCalRefreshTask *)self calendarExternalId];
  migrateCalendarExternalID = [(SubCalRefreshTask *)self migrateCalendarExternalID];
  changeTrackingId = [(SubCalRefreshTask *)self changeTrackingId];
  removeAlarms = [(SubCalRefreshTask *)self removeAlarms];
  removeAttachments = [(SubCalRefreshTask *)self removeAttachments];
  forceRefresh = [(SubCalRefreshTask *)self forceRefresh];
  BYTE1(v13) = [(SubCalRefreshTask *)self clearChanges];
  LOBYTE(v13) = forceRefresh;
  v12 = [(SubCalICSDataActor *)v5 initWithSourceId:sourceExternalId calendarId:calendarExternalId migrateCalendarExternalID:migrateCalendarExternalID changeTrackingID:changeTrackingId removeAlarms:removeAlarms removeAttachments:removeAttachments forcedRefresh:v13 clearChanges:self callbackTarget:?];
  [(SubCalRefreshTask *)self setBackgroundActor:v12];
}

- (id)_initializeCalendarDatabase
{
  v75 = 0;
  changeTrackingId = [(SubCalRefreshTask *)self changeTrackingId];
  v4 = [SubCalLocalDBHelper eventStoreWithClientId:changeTrackingId];

  v74 = 0;
  sourceExternalId = [(SubCalRefreshTask *)self sourceExternalId];
  v73 = 0;
  v6 = [SubCalLocalDBHelper initializeSourceWithExternalId:sourceExternalId inStore:v4 needsSave:&v74 error:&v73];
  v7 = v73;

  if (!v6)
  {
    v22 = DALoggingwithCategory();
    v23 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v22, v23))
    {
      sourceExternalId2 = [(SubCalRefreshTask *)self sourceExternalId];
      *buf = 138412546;
      v77 = sourceExternalId2;
      v78 = 2112;
      v79 = v7;
      _os_log_impl(&dword_0, v22, v23, "Can't find source with id %@: %@", buf, 0x16u);
    }

    if (!v7)
    {
      v25 = kSubCalRefreshTaskErrorDomain;
      v26 = NSStringFromSubCalRefreshTaskError();
      v27 = [NSDictionary dictionaryWithObject:v26 forKey:@"Error Code"];
      v7 = [NSError errorWithDomain:v25 code:3 userInfo:v27];
    }

    v28 = v7;
    goto LABEL_21;
  }

  if (!self->_migrateCalendarExternalID || ([v6 calendarWithExternalIdentifier:?], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    calendarExternalId = [(SubCalRefreshTask *)self calendarExternalId];
    v72 = v7;
    v14 = [SubCalLocalDBHelper initializeCalendarWithExternalId:calendarExternalId inSource:v6 needsSave:&v75 error:&v72];
    v17 = v72;

    if (v14)
    {
      v15 = 0;
      v7 = v17;
      goto LABEL_9;
    }

    v28 = v17;
LABEL_21:
    v29 = v28;
    goto LABEL_73;
  }

  v9 = v8;
  v10 = DALoggingwithCategory();
  v11 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v10, v11))
  {
    calendarExternalId2 = [(SubCalRefreshTask *)self calendarExternalId];
    migrateCalendarExternalID = [(SubCalRefreshTask *)self migrateCalendarExternalID];
    *buf = 138412546;
    v77 = calendarExternalId2;
    v78 = 2112;
    v79 = migrateCalendarExternalID;
    _os_log_impl(&dword_0, v10, v11, "Migrated calendar already exists when migrating from external ID %@ to external ID %@. Using the existing migrated calendar", buf, 0x16u);
  }

  v14 = v9;
  v15 = v14;
LABEL_9:
  if ([(SubCalRefreshTask *)self updateCalendarProperties])
  {
LABEL_14:
    v21 = 1;
    goto LABEL_23;
  }

  if (v75 == 1)
  {
    v18 = DALoggingwithCategory();
    v19 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v18, v19))
    {
      calendarExternalId3 = [(SubCalRefreshTask *)self calendarExternalId];
      *buf = 138412290;
      v77 = calendarExternalId3;
      _os_log_impl(&dword_0, v18, v19, "Updating calendar properties for calendar with id %@ even though we weren't asked to because we created the calendar.", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v21 = 0;
LABEL_23:
  isSyncedHolidayCalendar = [v14 isSyncedHolidayCalendar];
  if (isSyncedHolidayCalendar != [(SubCalRefreshTask *)self isSyncedHolidayCalendar])
  {
    [v14 setSyncedHolidayCalendar:{-[SubCalRefreshTask isSyncedHolidayCalendar](self, "isSyncedHolidayCalendar")}];
    v75 = 1;
  }

  isChinaHolidayCalendar = [v14 isChinaHolidayCalendar];
  if (isChinaHolidayCalendar != [(SubCalRefreshTask *)self isChinaHolidayCalendar])
  {
    [v14 setChinaHolidayCalendar:{-[SubCalRefreshTask isChinaHolidayCalendar](self, "isChinaHolidayCalendar")}];
    v75 = 1;
  }

  if (v21)
  {
    v69 = v15;
    calendarName = [(SubCalRefreshTask *)self calendarName];
    lastSyncTitle = [v14 lastSyncTitle];
    if (calendarName != lastSyncTitle)
    {
      calendarName2 = [(SubCalRefreshTask *)self calendarName];
      lastSyncTitle2 = [v14 lastSyncTitle];
      v36 = [calendarName2 isEqual:lastSyncTitle2];

      if (v36)
      {
        goto LABEL_35;
      }

      calendarName3 = [(SubCalRefreshTask *)self calendarName];
      [v14 setLastSyncTitle:calendarName3];

      v75 = 1;
      calendarName = [(SubCalRefreshTask *)self calendarName];
      lastSyncTitle = [v14 unlocalizedTitle];
      if (calendarName != lastSyncTitle)
      {
        calendarName4 = [(SubCalRefreshTask *)self calendarName];
        unlocalizedTitle = [v14 unlocalizedTitle];
        v40 = [calendarName4 isEqual:unlocalizedTitle];

        if ((v40 & 1) == 0)
        {
          calendarName = [(SubCalRefreshTask *)self calendarName];
          [v14 setTitle:calendarName];
LABEL_34:
        }

LABEL_35:
        colorStringRaw = [v14 colorStringRaw];
        colorString = [(SubCalRefreshTask *)self colorString];
        v43 = colorString;
        if (colorStringRaw == colorString)
        {

          v15 = v69;
        }

        else
        {
          colorString2 = [(SubCalRefreshTask *)self colorString];
          v45 = [colorString2 isEqualToString:colorStringRaw];

          v15 = v69;
          if ((v45 & 1) == 0)
          {
            [v14 setColorStringRaw:colorStringRaw];
            v75 = 1;
          }
        }

        refreshed = subCalRefreshFlagsForCalendar();
        removeAlarms = [(SubCalRefreshTask *)self removeAlarms];
        if (refreshed == 4)
        {
          subCalSetRefreshFlagsOnCalendar();
          v75 = 1;
        }

        else if (removeAlarms != (refreshed & 1))
        {
          [(SubCalRefreshTask *)self setForceRefresh:1];
        }

        isSubscribedHolidayCalendar = [v14 isSubscribedHolidayCalendar];
        if (isSubscribedHolidayCalendar != [(SubCalRefreshTask *)self isHolidaySubscribedCalendar])
        {
          [v14 setSubscribedHolidayCalendar:{-[SubCalRefreshTask isHolidaySubscribedCalendar](self, "isHolidaySubscribedCalendar")}];
          v75 = 1;
        }

        stripAlarms = [v14 stripAlarms];
        if (stripAlarms != [(SubCalRefreshTask *)self removeAlarms])
        {
          [v14 setStripAlarms:{-[SubCalRefreshTask removeAlarms](self, "removeAlarms")}];
          v75 = 1;
        }

        stripAttachments = [v14 stripAttachments];
        if (stripAttachments != [(SubCalRefreshTask *)self removeAttachments])
        {
          [v14 setStripAttachments:{-[SubCalRefreshTask removeAttachments](self, "removeAttachments")}];
          v75 = 1;
        }

        subcalURL = [v14 subcalURL];
        subscriptionURL = [(SubCalRefreshTask *)self subscriptionURL];
        absoluteString = [subscriptionURL absoluteString];

        if (([subcalURL isEqualToString:absoluteString] & 1) == 0)
        {
          [v14 setSubcalURL:absoluteString];
          v75 = 1;
        }

        goto LABEL_52;
      }
    }

    goto LABEL_34;
  }

LABEL_52:
  subcalAccountID = [v14 subcalAccountID];
  accountId = [(SubCalRefreshTask *)self accountId];
  v56 = accountId;
  if (subcalAccountID == accountId)
  {
  }

  else
  {
    accountId2 = [(SubCalRefreshTask *)self accountId];
    v58 = [accountId2 isEqualToString:subcalAccountID];

    if ((v58 & 1) == 0)
    {
      accountId3 = [(SubCalRefreshTask *)self accountId];
      [v14 setSubcalAccountID:accountId3];

      v75 = 1;
    }
  }

  if (![(SubCalRefreshTask *)self forceRefresh])
  {
    externalModificationTag = [v14 externalModificationTag];
    v61 = externalModificationTag;
    if (externalModificationTag)
    {
      [externalModificationTag doubleValue];
      [(SubCalRefreshTask *)self setTimestamp:?];
    }
  }

  if (v74 == 1)
  {
    v71 = v7;
    v62 = [v4 saveSource:v6 commit:0 error:&v71];
    v63 = v71;

    if ((v62 & 1) == 0)
    {
      v65 = DALoggingwithCategory();
      v66 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v65, v66))
      {
        *buf = 138412290;
        v77 = v63;
        v67 = "Failed to save source to event store with error: %@";
        goto LABEL_69;
      }

LABEL_70:

      goto LABEL_71;
    }

    v7 = v63;
  }

  if (v75 == 1)
  {
    v70 = v7;
    v64 = [v4 saveCalendar:v14 commit:1 error:&v70];
    v63 = v70;

    if (v64)
    {
LABEL_71:
      v7 = v63;
      goto LABEL_72;
    }

    v65 = DALoggingwithCategory();
    v66 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v65, v66))
    {
      *buf = 138412290;
      v77 = v63;
      v67 = "Failed to save calendar to event store with error: %@";
LABEL_69:
      _os_log_impl(&dword_0, v65, v66, v67, buf, 0xCu);
      goto LABEL_70;
    }

    goto LABEL_70;
  }

LABEL_72:
  v29 = v7;

LABEL_73:

  return v29;
}

- (void)_lockedPrepareToPerformBlock:(id)block
{
  blockCopy = block;
  _initializeCalendarDatabase = [(SubCalRefreshTask *)self _initializeCalendarDatabase];
  if (_initializeCalendarDatabase)
  {
    v6 = DALoggingwithCategory();
    v7 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v6, v7))
    {
      v8 = 138412290;
      v9 = _initializeCalendarDatabase;
      _os_log_impl(&dword_0, v6, v7, "Failed to initialize the calendar database: %@", &v8, 0xCu);
    }

    [(SubCalRefreshTask *)self finishWithError:_initializeCalendarDatabase];
  }

  else
  {
    blockCopy[2](blockCopy);
  }
}

- (void)_acquireGatekeeperLockAndPerformBlock:(id)block
{
  blockCopy = block;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138543362;
    v18 = transactionId;
    _os_log_impl(&dword_0, v6, v7, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v9 = DALoggingwithCategory();
  if (os_log_type_enabled(v9, v7))
  {
    subscriptionURL = [(SubCalRefreshTask *)self subscriptionURL];
    *buf = 138412290;
    v18 = subscriptionURL;
    _os_log_impl(&dword_0, v9, v7, "Grabbing gatekeeper lock before processing the data for the subscribed calendar at %@", buf, 0xCu);
  }

  v11 = +[DALocalDBGateKeeper sharedGateKeeper];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_20DC;
  v14[3] = &unk_1C490;
  v15 = v5;
  v16 = blockCopy;
  v14[4] = self;
  v12 = v5;
  v13 = blockCopy;
  [v11 registerWaiter:self forDataclassLocks:4 completionHandler:v14];

  [(SubCalRefreshTask *)self setWaitingForGateKeeper:1];
}

- (void)_processICSData:(id)data
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_2580;
  v4[3] = &unk_1C4B8;
  selfCopy = self;
  dataCopy = data;
  v3 = dataCopy;
  [(SubCalRefreshTask *)selfCopy _acquireGatekeeperLockAndPerformBlock:v4];
}

- (void)_processICSDataHoldingGatekeeperLock:(id)lock
{
  lockCopy = lock;
  [(SubCalRefreshTask *)self _makeBackgroundActor];
  backgroundActor = [(SubCalRefreshTask *)self backgroundActor];
  [backgroundActor processICSData:lockCopy];
}

- (void)_processICSDataFromFile:(id)file
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_2688;
  v4[3] = &unk_1C4B8;
  selfCopy = self;
  fileCopy = file;
  v3 = fileCopy;
  [(SubCalRefreshTask *)selfCopy _acquireGatekeeperLockAndPerformBlock:v4];
}

- (void)_updateSubscribedCalendarWithTmpICSData:(id)data
{
  dataCopy = data;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "New account! attempting to create calendar from tmp ics data", v7, 2u);
  }

  [(SubCalRefreshTask *)self setUsingTmpICSData:1];
  [(SubCalRefreshTask *)self _processICSDataHoldingGatekeeperLock:dataCopy];

  [(SubCalRefreshTask *)self setTmpICSData:0];
}

- (BOOL)shouldForceHTTPS
{
  if ([(SubCalRefreshTask *)self allowInsecureConnection])
  {
    return 0;
  }

  subscriptionURL = [(SubCalRefreshTask *)self subscriptionURL];
  scheme = [subscriptionURL scheme];
  v3 = [scheme compare:@"https" options:1] != 0;

  return v3;
}

- (id)subscriptionURLToUse
{
  subscriptionURL = [(SubCalRefreshTask *)self subscriptionURL];
  if ([(SubCalRefreshTask *)self shouldForceHTTPS])
  {
    v4 = [NSURLComponents componentsWithURL:subscriptionURL resolvingAgainstBaseURL:0];
    [v4 setScheme:@"https"];
    v5 = [v4 URL];

    subscriptionURL = v5;
  }

  return subscriptionURL;
}

- (void)_dropGateKeeperAndUpdateSubscribedCalendarWithDataFromNetwork
{
  if (self->_request)
  {
    sub_D72C(a2, self);
  }

  [(SubCalRefreshTask *)self setHoldingGateKeeperLock:0];
  v3 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v3 relinquishLocksForWaiter:self dataclasses:4 moreComing:0];

  subscriptionURLToUse = [(SubCalRefreshTask *)self subscriptionURLToUse];
  taskManager = [(SubCalRefreshTask *)self taskManager];
  account = [taskManager account];
  wasUserInitiated = [account wasUserInitiated];

  v7 = [[SubCalURLRequest alloc] initWithURL:subscriptionURLToUse wasUserRequested:wasUserInitiated];
  [(SubCalRefreshTask *)self setRequest:v7];

  request = [(SubCalRefreshTask *)self request];
  statusReport = [(SubCalRefreshTask *)self statusReport];
  [request setStatusReport:statusReport];

  request2 = [(SubCalRefreshTask *)self request];
  [request2 setDelegate:self];

  request3 = [(SubCalRefreshTask *)self request];
  [request3 setUseFileCache:1];

  username = [(SubCalRefreshTask *)self username];

  if (username)
  {
    username2 = [(SubCalRefreshTask *)self username];
    request4 = [(SubCalRefreshTask *)self request];
    [request4 setUsername:username2];
  }

  password = [(SubCalRefreshTask *)self password];

  if (password)
  {
    password2 = [(SubCalRefreshTask *)self password];
    request5 = [(SubCalRefreshTask *)self request];
    [request5 setPassword:password2];
  }

  [(SubCalRefreshTask *)self timestamp];
  if (v18 != 0.0)
  {
    [(SubCalRefreshTask *)self timestamp];
    v20 = v19;
    request6 = [(SubCalRefreshTask *)self request];
    [request6 setTimestamp:v20];
  }

  request7 = [(SubCalRefreshTask *)self request];
  [request7 startConnection];
}

- (void)_finishWithErrorAfterLoadingURL:(id)l
{
  lCopy = l;
  if (lCopy && [(SubCalRefreshTask *)self shouldForceHTTPS])
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v5, v6))
    {
      v11 = 138412290;
      v12 = lCopy;
      _os_log_impl(&dword_0, v5, v6, "Refresh failed using https; replacing error %@ with kSubCalInsecureConnectionNotAllowed.", &v11, 0xCu);
    }

    v7 = kSubCalRefreshTaskErrorDomain;
    v8 = NSStringFromSubCalRefreshTaskError();
    v9 = [NSDictionary dictionaryWithObject:v8 forKey:@"Error Code"];
    v10 = [NSError errorWithDomain:v7 code:7 userInfo:v9];

    lCopy = v10;
  }

  [(SubCalRefreshTask *)self finishWithError:lCopy];
}

- (void)updateSubscribedCalendarRefreshDateOnly
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_2CCC;
  v2[3] = &unk_1C4E0;
  v2[4] = self;
  [(SubCalRefreshTask *)self _acquireGatekeeperLockAndPerformBlock:v2];
}

- (void)willFinish
{
  request = [(SubCalRefreshTask *)self request];
  [request cancel];

  [(SubCalRefreshTask *)self setRequest:0];
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, v5, "Waiting for ICS data actor to tear down...", buf, 2u);
  }

  backgroundActor = [(SubCalRefreshTask *)self backgroundActor];
  [backgroundActor synchronouslyCancel];

  v7 = DALoggingwithCategory();
  if (os_log_type_enabled(v7, v5))
  {
    *v10 = 0;
    _os_log_impl(&dword_0, v7, v5, "Data actor queue is clean. Continuing with teardown", v10, 2u);
  }

  v8 = +[DABabysitter sharedBabysitter];
  [v8 unregisterAccount:self forOperationWithName:@"SubCalRefresh"];

  v9 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v9 unregisterWaiterForDataclassLocks:self];
}

- (void)performDelegateCallbackWithError:(id)error
{
  errorCopy = error;
  [(SubCalRefreshTask *)self _syncEndedWithError:errorCopy];
  delegate = [(SubCalRefreshTask *)self delegate];
  [delegate subCalRefreshTask:self finishedWithError:errorCopy];
}

- (void)performTask
{
  subscriptionURL = [(SubCalRefreshTask *)self subscriptionURL];

  if (subscriptionURL)
  {
    v4 = +[DABabysitter sharedBabysitter];
    v5 = [v4 registerAccount:self forOperationWithName:@"SubCalRefresh"];

    if (v5)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_3300;
      v16[3] = &unk_1C4E0;
      v16[4] = self;
      [(SubCalRefreshTask *)self _acquireGatekeeperLockAndPerformBlock:v16];
    }

    else
    {
      v9 = DALoggingwithCategory();
      v10 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v9, v10))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v9, v10, "The babysitter put us in timeout. Failing this sync", buf, 2u);
      }

      v11 = kSubCalRefreshTaskErrorDomain;
      v12 = NSStringFromSubCalRefreshTaskError();
      v13 = [NSDictionary dictionaryWithObject:v12 forKey:@"Error Code"];
      v14 = [NSError errorWithDomain:v11 code:2 userInfo:v13];
      [(SubCalRefreshTask *)self finishWithError:v14];
    }
  }

  else
  {
    v6 = kSubCalRefreshTaskErrorDomain;
    v15 = NSStringFromSubCalRefreshTaskError();
    v7 = [NSDictionary dictionaryWithObject:v15 forKey:@"Error Code"];
    v8 = [NSError errorWithDomain:v6 code:1 userInfo:v7];
    [(SubCalRefreshTask *)self finishWithError:v8];
  }
}

- (void)subCalURLRequestNeedsUsernameAndPasswordForHost:(id)host continuation:(id)continuation
{
  hostCopy = host;
  continuationCopy = continuation;
  delegate = [(SubCalRefreshTask *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(SubCalRefreshTask *)self delegate];
    [delegate2 subCalRefreshTask:self needsUsernamePasswordForHost:hostCopy continuation:continuationCopy];
  }

  else
  {
    (*(continuationCopy + 2))(continuationCopy, 0, 0);
  }
}

- (void)handleTrustChallenge:(id)challenge forSubCalURLRequest:(id)request
{
  challengeCopy = challenge;
  delegate = [(SubCalRefreshTask *)self delegate];
  [delegate handleTrustChallenge:challengeCopy forTask:self];
}

- (void)handleTrustChallenge:(id)challenge forSubCalURLRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  challengeCopy = challenge;
  delegate = [(SubCalRefreshTask *)self delegate];
  [delegate handleTrustChallenge:challengeCopy forTask:self completionHandler:handlerCopy];
}

- (void)subCalURLRequest:(id)request didRedirectToURL:(id)l
{
  lCopy = l;
  delegate = [(SubCalRefreshTask *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(SubCalRefreshTask *)self delegate];
    [delegate2 subCalRefreshTask:self didRedirectToURL:lCopy];
  }
}

- (void)subCalURLRequest:(id)request finishedWithData:(id)data error:(id)error
{
  requestCopy = request;
  dataCopy = data;
  errorCopy = error;
  if ([dataCopy length])
  {
    [(SubCalRefreshTask *)self _processICSData:dataCopy];
  }

  else
  {
    filePath = [requestCopy filePath];

    if (filePath)
    {
      filePath2 = [requestCopy filePath];
      [(SubCalRefreshTask *)self _processICSDataFromFile:filePath2];
    }

    else if (errorCopy)
    {
      [(SubCalRefreshTask *)self _finishWithErrorAfterLoadingURL:errorCopy];
    }

    else
    {
      [(SubCalRefreshTask *)self updateSubscribedCalendarRefreshDateOnly];
    }
  }
}

- (void)subCalICSDataActor:(id)actor completedWithError:(id)error
{
  errorCopy = error;
  if (([(SubCalRefreshTask *)self finished]& 1) == 0)
  {
    [(SubCalRefreshTask *)self setBackgroundActor:0];
    if (errorCopy && [(SubCalRefreshTask *)self usingTmpICSData])
    {
      [(SubCalRefreshTask *)self setUsingTmpICSData:0];
      v6 = DALoggingwithCategory();
      v7 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v6, v7))
      {
        v8 = 138412290;
        v9 = errorCopy;
        _os_log_impl(&dword_0, v6, v7, "Error processing tmp ics data %@", &v8, 0xCu);
      }

      [(SubCalRefreshTask *)self _dropGateKeeperAndUpdateSubscribedCalendarWithDataFromNetwork];
    }

    else
    {
      [(SubCalRefreshTask *)self _finishWithErrorAfterLoadingURL:errorCopy];
    }
  }
}

- (NSString)waiterID
{
  taskManager = [(SubCalRefreshTask *)self taskManager];
  account = [taskManager account];
  accountID = [account accountID];

  return accountID;
}

- (void)_syncStarted
{
  [(SubCalRefreshTask *)self _setSpinning:1];
  calendarExternalId = [(SubCalRefreshTask *)self calendarExternalId];
  sourceExternalId = [(SubCalRefreshTask *)self sourceExternalId];
  [DAStoreSyncStatusUpdater syncStartedForCalendarWithExternalID:calendarExternalId sourceExternalID:sourceExternalId];
}

- (void)_syncEndedWithError:(id)error
{
  errorCopy = error;
  [(SubCalRefreshTask *)self _setSpinning:0];
  calendarExternalId = [(SubCalRefreshTask *)self calendarExternalId];
  sourceExternalId = [(SubCalRefreshTask *)self sourceExternalId];
  [DAStoreSyncStatusUpdater syncEndedForCalendarWithExternalID:calendarExternalId sourceExternalID:sourceExternalId withError:errorCopy];
}

@end