@interface SubCalRefreshTask
- (BOOL)shouldForceHTTPS;
- (NSString)waiterID;
- (SubCalRefreshTask)init;
- (id)_initializeCalendarDatabase;
- (id)subscriptionURLToUse;
- (void)_acquireGatekeeperLockAndPerformBlock:(id)a3;
- (void)_dropGateKeeperAndUpdateSubscribedCalendarWithDataFromNetwork;
- (void)_finishWithErrorAfterLoadingURL:(id)a3;
- (void)_lockedPrepareToPerformBlock:(id)a3;
- (void)_makeBackgroundActor;
- (void)_processICSData:(id)a3;
- (void)_processICSDataFromFile:(id)a3;
- (void)_processICSDataHoldingGatekeeperLock:(id)a3;
- (void)_syncEndedWithError:(id)a3;
- (void)_syncStarted;
- (void)_updateSubscribedCalendarWithTmpICSData:(id)a3;
- (void)dealloc;
- (void)handleTrustChallenge:(id)a3 forSubCalURLRequest:(id)a4;
- (void)handleTrustChallenge:(id)a3 forSubCalURLRequest:(id)a4 completionHandler:(id)a5;
- (void)performDelegateCallbackWithError:(id)a3;
- (void)performTask;
- (void)subCalICSDataActor:(id)a3 completedWithError:(id)a4;
- (void)subCalURLRequest:(id)a3 didRedirectToURL:(id)a4;
- (void)subCalURLRequest:(id)a3 finishedWithData:(id)a4 error:(id)a5;
- (void)subCalURLRequestNeedsUsernameAndPasswordForHost:(id)a3 continuation:(id)a4;
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
  v4 = [(SubCalRefreshTask *)self backgroundActor];

  if (v4)
  {
    sub_D6B8(a2, self);
  }

  v5 = [SubCalICSDataActor alloc];
  v14 = [(SubCalRefreshTask *)self sourceExternalId];
  v6 = [(SubCalRefreshTask *)self calendarExternalId];
  v7 = [(SubCalRefreshTask *)self migrateCalendarExternalID];
  v8 = [(SubCalRefreshTask *)self changeTrackingId];
  v9 = [(SubCalRefreshTask *)self removeAlarms];
  v10 = [(SubCalRefreshTask *)self removeAttachments];
  v11 = [(SubCalRefreshTask *)self forceRefresh];
  BYTE1(v13) = [(SubCalRefreshTask *)self clearChanges];
  LOBYTE(v13) = v11;
  v12 = [(SubCalICSDataActor *)v5 initWithSourceId:v14 calendarId:v6 migrateCalendarExternalID:v7 changeTrackingID:v8 removeAlarms:v9 removeAttachments:v10 forcedRefresh:v13 clearChanges:self callbackTarget:?];
  [(SubCalRefreshTask *)self setBackgroundActor:v12];
}

- (id)_initializeCalendarDatabase
{
  v75 = 0;
  v3 = [(SubCalRefreshTask *)self changeTrackingId];
  v4 = [SubCalLocalDBHelper eventStoreWithClientId:v3];

  v74 = 0;
  v5 = [(SubCalRefreshTask *)self sourceExternalId];
  v73 = 0;
  v6 = [SubCalLocalDBHelper initializeSourceWithExternalId:v5 inStore:v4 needsSave:&v74 error:&v73];
  v7 = v73;

  if (!v6)
  {
    v22 = DALoggingwithCategory();
    v23 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v22, v23))
    {
      v24 = [(SubCalRefreshTask *)self sourceExternalId];
      *buf = 138412546;
      v77 = v24;
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
    v16 = [(SubCalRefreshTask *)self calendarExternalId];
    v72 = v7;
    v14 = [SubCalLocalDBHelper initializeCalendarWithExternalId:v16 inSource:v6 needsSave:&v75 error:&v72];
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
    v12 = [(SubCalRefreshTask *)self calendarExternalId];
    v13 = [(SubCalRefreshTask *)self migrateCalendarExternalID];
    *buf = 138412546;
    v77 = v12;
    v78 = 2112;
    v79 = v13;
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
      v20 = [(SubCalRefreshTask *)self calendarExternalId];
      *buf = 138412290;
      v77 = v20;
      _os_log_impl(&dword_0, v18, v19, "Updating calendar properties for calendar with id %@ even though we weren't asked to because we created the calendar.", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v21 = 0;
LABEL_23:
  v30 = [v14 isSyncedHolidayCalendar];
  if (v30 != [(SubCalRefreshTask *)self isSyncedHolidayCalendar])
  {
    [v14 setSyncedHolidayCalendar:{-[SubCalRefreshTask isSyncedHolidayCalendar](self, "isSyncedHolidayCalendar")}];
    v75 = 1;
  }

  v31 = [v14 isChinaHolidayCalendar];
  if (v31 != [(SubCalRefreshTask *)self isChinaHolidayCalendar])
  {
    [v14 setChinaHolidayCalendar:{-[SubCalRefreshTask isChinaHolidayCalendar](self, "isChinaHolidayCalendar")}];
    v75 = 1;
  }

  if (v21)
  {
    v69 = v15;
    v32 = [(SubCalRefreshTask *)self calendarName];
    v33 = [v14 lastSyncTitle];
    if (v32 != v33)
    {
      v34 = [(SubCalRefreshTask *)self calendarName];
      v35 = [v14 lastSyncTitle];
      v36 = [v34 isEqual:v35];

      if (v36)
      {
        goto LABEL_35;
      }

      v37 = [(SubCalRefreshTask *)self calendarName];
      [v14 setLastSyncTitle:v37];

      v75 = 1;
      v32 = [(SubCalRefreshTask *)self calendarName];
      v33 = [v14 unlocalizedTitle];
      if (v32 != v33)
      {
        v38 = [(SubCalRefreshTask *)self calendarName];
        v39 = [v14 unlocalizedTitle];
        v40 = [v38 isEqual:v39];

        if ((v40 & 1) == 0)
        {
          v32 = [(SubCalRefreshTask *)self calendarName];
          [v14 setTitle:v32];
LABEL_34:
        }

LABEL_35:
        v41 = [v14 colorStringRaw];
        v42 = [(SubCalRefreshTask *)self colorString];
        v43 = v42;
        if (v41 == v42)
        {

          v15 = v69;
        }

        else
        {
          v44 = [(SubCalRefreshTask *)self colorString];
          v45 = [v44 isEqualToString:v41];

          v15 = v69;
          if ((v45 & 1) == 0)
          {
            [v14 setColorStringRaw:v41];
            v75 = 1;
          }
        }

        refreshed = subCalRefreshFlagsForCalendar();
        v47 = [(SubCalRefreshTask *)self removeAlarms];
        if (refreshed == 4)
        {
          subCalSetRefreshFlagsOnCalendar();
          v75 = 1;
        }

        else if (v47 != (refreshed & 1))
        {
          [(SubCalRefreshTask *)self setForceRefresh:1];
        }

        v48 = [v14 isSubscribedHolidayCalendar];
        if (v48 != [(SubCalRefreshTask *)self isHolidaySubscribedCalendar])
        {
          [v14 setSubscribedHolidayCalendar:{-[SubCalRefreshTask isHolidaySubscribedCalendar](self, "isHolidaySubscribedCalendar")}];
          v75 = 1;
        }

        v49 = [v14 stripAlarms];
        if (v49 != [(SubCalRefreshTask *)self removeAlarms])
        {
          [v14 setStripAlarms:{-[SubCalRefreshTask removeAlarms](self, "removeAlarms")}];
          v75 = 1;
        }

        v50 = [v14 stripAttachments];
        if (v50 != [(SubCalRefreshTask *)self removeAttachments])
        {
          [v14 setStripAttachments:{-[SubCalRefreshTask removeAttachments](self, "removeAttachments")}];
          v75 = 1;
        }

        v51 = [v14 subcalURL];
        v52 = [(SubCalRefreshTask *)self subscriptionURL];
        v53 = [v52 absoluteString];

        if (([v51 isEqualToString:v53] & 1) == 0)
        {
          [v14 setSubcalURL:v53];
          v75 = 1;
        }

        goto LABEL_52;
      }
    }

    goto LABEL_34;
  }

LABEL_52:
  v54 = [v14 subcalAccountID];
  v55 = [(SubCalRefreshTask *)self accountId];
  v56 = v55;
  if (v54 == v55)
  {
  }

  else
  {
    v57 = [(SubCalRefreshTask *)self accountId];
    v58 = [v57 isEqualToString:v54];

    if ((v58 & 1) == 0)
    {
      v59 = [(SubCalRefreshTask *)self accountId];
      [v14 setSubcalAccountID:v59];

      v75 = 1;
    }
  }

  if (![(SubCalRefreshTask *)self forceRefresh])
  {
    v60 = [v14 externalModificationTag];
    v61 = v60;
    if (v60)
    {
      [v60 doubleValue];
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

- (void)_lockedPrepareToPerformBlock:(id)a3
{
  v4 = a3;
  v5 = [(SubCalRefreshTask *)self _initializeCalendarDatabase];
  if (v5)
  {
    v6 = DALoggingwithCategory();
    v7 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v6, v7))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_0, v6, v7, "Failed to initialize the calendar database: %@", &v8, 0xCu);
    }

    [(SubCalRefreshTask *)self finishWithError:v5];
  }

  else
  {
    v4[2](v4);
  }
}

- (void)_acquireGatekeeperLockAndPerformBlock:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v6, v7))
  {
    v8 = [v5 transactionId];
    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&dword_0, v6, v7, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v9 = DALoggingwithCategory();
  if (os_log_type_enabled(v9, v7))
  {
    v10 = [(SubCalRefreshTask *)self subscriptionURL];
    *buf = 138412290;
    v18 = v10;
    _os_log_impl(&dword_0, v9, v7, "Grabbing gatekeeper lock before processing the data for the subscribed calendar at %@", buf, 0xCu);
  }

  v11 = +[DALocalDBGateKeeper sharedGateKeeper];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_20DC;
  v14[3] = &unk_1C490;
  v15 = v5;
  v16 = v4;
  v14[4] = self;
  v12 = v5;
  v13 = v4;
  [v11 registerWaiter:self forDataclassLocks:4 completionHandler:v14];

  [(SubCalRefreshTask *)self setWaitingForGateKeeper:1];
}

- (void)_processICSData:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_2580;
  v4[3] = &unk_1C4B8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(SubCalRefreshTask *)v5 _acquireGatekeeperLockAndPerformBlock:v4];
}

- (void)_processICSDataHoldingGatekeeperLock:(id)a3
{
  v4 = a3;
  [(SubCalRefreshTask *)self _makeBackgroundActor];
  v5 = [(SubCalRefreshTask *)self backgroundActor];
  [v5 processICSData:v4];
}

- (void)_processICSDataFromFile:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_2688;
  v4[3] = &unk_1C4B8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(SubCalRefreshTask *)v5 _acquireGatekeeperLockAndPerformBlock:v4];
}

- (void)_updateSubscribedCalendarWithTmpICSData:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "New account! attempting to create calendar from tmp ics data", v7, 2u);
  }

  [(SubCalRefreshTask *)self setUsingTmpICSData:1];
  [(SubCalRefreshTask *)self _processICSDataHoldingGatekeeperLock:v4];

  [(SubCalRefreshTask *)self setTmpICSData:0];
}

- (BOOL)shouldForceHTTPS
{
  if ([(SubCalRefreshTask *)self allowInsecureConnection])
  {
    return 0;
  }

  v4 = [(SubCalRefreshTask *)self subscriptionURL];
  v5 = [v4 scheme];
  v3 = [v5 compare:@"https" options:1] != 0;

  return v3;
}

- (id)subscriptionURLToUse
{
  v3 = [(SubCalRefreshTask *)self subscriptionURL];
  if ([(SubCalRefreshTask *)self shouldForceHTTPS])
  {
    v4 = [NSURLComponents componentsWithURL:v3 resolvingAgainstBaseURL:0];
    [v4 setScheme:@"https"];
    v5 = [v4 URL];

    v3 = v5;
  }

  return v3;
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

  v23 = [(SubCalRefreshTask *)self subscriptionURLToUse];
  v4 = [(SubCalRefreshTask *)self taskManager];
  v5 = [v4 account];
  v6 = [v5 wasUserInitiated];

  v7 = [[SubCalURLRequest alloc] initWithURL:v23 wasUserRequested:v6];
  [(SubCalRefreshTask *)self setRequest:v7];

  v8 = [(SubCalRefreshTask *)self request];
  v9 = [(SubCalRefreshTask *)self statusReport];
  [v8 setStatusReport:v9];

  v10 = [(SubCalRefreshTask *)self request];
  [v10 setDelegate:self];

  v11 = [(SubCalRefreshTask *)self request];
  [v11 setUseFileCache:1];

  v12 = [(SubCalRefreshTask *)self username];

  if (v12)
  {
    v13 = [(SubCalRefreshTask *)self username];
    v14 = [(SubCalRefreshTask *)self request];
    [v14 setUsername:v13];
  }

  v15 = [(SubCalRefreshTask *)self password];

  if (v15)
  {
    v16 = [(SubCalRefreshTask *)self password];
    v17 = [(SubCalRefreshTask *)self request];
    [v17 setPassword:v16];
  }

  [(SubCalRefreshTask *)self timestamp];
  if (v18 != 0.0)
  {
    [(SubCalRefreshTask *)self timestamp];
    v20 = v19;
    v21 = [(SubCalRefreshTask *)self request];
    [v21 setTimestamp:v20];
  }

  v22 = [(SubCalRefreshTask *)self request];
  [v22 startConnection];
}

- (void)_finishWithErrorAfterLoadingURL:(id)a3
{
  v4 = a3;
  if (v4 && [(SubCalRefreshTask *)self shouldForceHTTPS])
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v5, v6))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_0, v5, v6, "Refresh failed using https; replacing error %@ with kSubCalInsecureConnectionNotAllowed.", &v11, 0xCu);
    }

    v7 = kSubCalRefreshTaskErrorDomain;
    v8 = NSStringFromSubCalRefreshTaskError();
    v9 = [NSDictionary dictionaryWithObject:v8 forKey:@"Error Code"];
    v10 = [NSError errorWithDomain:v7 code:7 userInfo:v9];

    v4 = v10;
  }

  [(SubCalRefreshTask *)self finishWithError:v4];
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
  v3 = [(SubCalRefreshTask *)self request];
  [v3 cancel];

  [(SubCalRefreshTask *)self setRequest:0];
  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, v5, "Waiting for ICS data actor to tear down...", buf, 2u);
  }

  v6 = [(SubCalRefreshTask *)self backgroundActor];
  [v6 synchronouslyCancel];

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

- (void)performDelegateCallbackWithError:(id)a3
{
  v4 = a3;
  [(SubCalRefreshTask *)self _syncEndedWithError:v4];
  v5 = [(SubCalRefreshTask *)self delegate];
  [v5 subCalRefreshTask:self finishedWithError:v4];
}

- (void)performTask
{
  v3 = [(SubCalRefreshTask *)self subscriptionURL];

  if (v3)
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

- (void)subCalURLRequestNeedsUsernameAndPasswordForHost:(id)a3 continuation:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(SubCalRefreshTask *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SubCalRefreshTask *)self delegate];
    [v9 subCalRefreshTask:self needsUsernamePasswordForHost:v10 continuation:v6];
  }

  else
  {
    (*(v6 + 2))(v6, 0, 0);
  }
}

- (void)handleTrustChallenge:(id)a3 forSubCalURLRequest:(id)a4
{
  v5 = a3;
  v6 = [(SubCalRefreshTask *)self delegate];
  [v6 handleTrustChallenge:v5 forTask:self];
}

- (void)handleTrustChallenge:(id)a3 forSubCalURLRequest:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(SubCalRefreshTask *)self delegate];
  [v9 handleTrustChallenge:v8 forTask:self completionHandler:v7];
}

- (void)subCalURLRequest:(id)a3 didRedirectToURL:(id)a4
{
  v8 = a4;
  v5 = [(SubCalRefreshTask *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SubCalRefreshTask *)self delegate];
    [v7 subCalRefreshTask:self didRedirectToURL:v8];
  }
}

- (void)subCalURLRequest:(id)a3 finishedWithData:(id)a4 error:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 length])
  {
    [(SubCalRefreshTask *)self _processICSData:v8];
  }

  else
  {
    v10 = [v12 filePath];

    if (v10)
    {
      v11 = [v12 filePath];
      [(SubCalRefreshTask *)self _processICSDataFromFile:v11];
    }

    else if (v9)
    {
      [(SubCalRefreshTask *)self _finishWithErrorAfterLoadingURL:v9];
    }

    else
    {
      [(SubCalRefreshTask *)self updateSubscribedCalendarRefreshDateOnly];
    }
  }
}

- (void)subCalICSDataActor:(id)a3 completedWithError:(id)a4
{
  v5 = a4;
  if (([(SubCalRefreshTask *)self finished]& 1) == 0)
  {
    [(SubCalRefreshTask *)self setBackgroundActor:0];
    if (v5 && [(SubCalRefreshTask *)self usingTmpICSData])
    {
      [(SubCalRefreshTask *)self setUsingTmpICSData:0];
      v6 = DALoggingwithCategory();
      v7 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v6, v7))
      {
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&dword_0, v6, v7, "Error processing tmp ics data %@", &v8, 0xCu);
      }

      [(SubCalRefreshTask *)self _dropGateKeeperAndUpdateSubscribedCalendarWithDataFromNetwork];
    }

    else
    {
      [(SubCalRefreshTask *)self _finishWithErrorAfterLoadingURL:v5];
    }
  }
}

- (NSString)waiterID
{
  v2 = [(SubCalRefreshTask *)self taskManager];
  v3 = [v2 account];
  v4 = [v3 accountID];

  return v4;
}

- (void)_syncStarted
{
  [(SubCalRefreshTask *)self _setSpinning:1];
  v4 = [(SubCalRefreshTask *)self calendarExternalId];
  v3 = [(SubCalRefreshTask *)self sourceExternalId];
  [DAStoreSyncStatusUpdater syncStartedForCalendarWithExternalID:v4 sourceExternalID:v3];
}

- (void)_syncEndedWithError:(id)a3
{
  v4 = a3;
  [(SubCalRefreshTask *)self _setSpinning:0];
  v6 = [(SubCalRefreshTask *)self calendarExternalId];
  v5 = [(SubCalRefreshTask *)self sourceExternalId];
  [DAStoreSyncStatusUpdater syncEndedForCalendarWithExternalID:v6 sourceExternalID:v5 withError:v4];
}

@end