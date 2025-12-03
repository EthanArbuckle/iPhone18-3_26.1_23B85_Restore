@interface MobileCalDAVSharingResponse
+ (id)responseWithCalendarID:(id)d consumer:(id)consumer account:(id)account;
- (DAEventsCalendarSharingResponseConsumer)consumer;
- (MobileCalDAVSharingResponse)initWithCalendarID:(id)d consumer:(id)consumer account:(id)account;
- (id)_createReplyGroupForReportingCalendarAsJunk:(void *)junk;
- (id)_createReplyGroupForShareInviteResponse:(int64_t)response toCalendar:(void *)calendar;
- (void)_deleteSharingInvitationWithUID:(id)d;
- (void)_doSharingRequestResponseWithCreateReplyGroupBlock:(id)block;
- (void)_reallyRespondToSharingRequestWithCreateReplyGroupBlock:(id)block;
- (void)_shareResponseIsGoingAway;
- (void)calendarRefreshForPrincipal:(id)principal completedWithNewCTags:(id)tags newSyncTokens:(id)tokens calendarHomeSyncToken:(id)token updatedCalendars:(id)calendars error:(id)error;
- (void)cancel;
- (void)dealloc;
- (void)finishWithError:(id)error;
- (void)reportAsJunk;
- (void)respondToSharingRequestWithResponse:(int64_t)response;
@end

@implementation MobileCalDAVSharingResponse

+ (id)responseWithCalendarID:(id)d consumer:(id)consumer account:(id)account
{
  accountCopy = account;
  consumerCopy = consumer;
  dCopy = d;
  v10 = [[MobileCalDAVSharingResponse alloc] initWithCalendarID:dCopy consumer:consumerCopy account:accountCopy];

  return v10;
}

- (MobileCalDAVSharingResponse)initWithCalendarID:(id)d consumer:(id)consumer account:(id)account
{
  dCopy = d;
  consumerCopy = consumer;
  accountCopy = account;
  v19.receiver = self;
  v19.super_class = MobileCalDAVSharingResponse;
  v12 = [(MobileCalDAVSharingResponse *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_calendarID, d);
    objc_storeWeak(&v13->_consumer, consumerCopy);
    objc_storeStrong(&v13->_account, account);
    v14 = +[NSString da_newGUID];
    responseID = v13->_responseID;
    v13->_responseID = v14;

    v16 = [[DACoreDAVTaskManager alloc] initWithAccount:v13->_account];
    taskManager = v13->_taskManager;
    v13->_taskManager = v16;
  }

  return v13;
}

- (void)dealloc
{
  if (!self->_finished)
  {
    sub_161B0();
  }

  [(CoreDAVTaskGroup *)self->_currentOperation cancelTaskGroup];
  [(DACoreDAVTaskManager *)self->_taskManager shutdown];
  v3.receiver = self;
  v3.super_class = MobileCalDAVSharingResponse;
  [(MobileCalDAVSharingResponse *)&v3 dealloc];
}

- (void)calendarRefreshForPrincipal:(id)principal completedWithNewCTags:(id)tags newSyncTokens:(id)tokens calendarHomeSyncToken:(id)token updatedCalendars:(id)calendars error:(id)error
{
  principalCopy = principal;
  v10 = DALoggingwithCategory();
  v11 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v10, v11))
  {
    *v14 = 0;
    _os_log_impl(&dword_0, v10, v11, "Done refreshing calendars. Saving the database", v14, 2u);
  }

  dbHelper = [(MobileCalDAVDADaemonAccount *)self->_account dbHelper];
  accountID = [principalCopy accountID];

  [dbHelper calCloseDatabaseForAccountID:accountID save:1];
  [(MobileCalDAVSharingResponse *)self finishWithError:0];
}

- (void)_deleteSharingInvitationWithUID:(id)d
{
  dCopy = d;
  dbHelper = [(MobileCalDAVDADaemonAccount *)self->_account dbHelper];
  accountID = [(MobileCalDAVDADaemonAccount *)self->_account accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  mobileCalDAVAccount = [(MobileCalDAVDADaemonAccount *)self->_account mobileCalDAVAccount];
  copyCalStore = [mobileCalDAVAccount copyCalStore];

  if (copyCalStore)
  {
    v9 = CalDatabaseCopyNotificationWithUniqueIdentifierInCalendarOrStore();
    if (v9)
    {
      v10 = v9;
      v11 = CalNotificationCopyExternalID();
      if (v11)
      {
        v12 = v11;
        mobileCalDAVAccount2 = [(MobileCalDAVDADaemonAccount *)self->_account mobileCalDAVAccount];
        mainPrincipal = [mobileCalDAVAccount2 mainPrincipal];
        notificationCollectionURL = [mainPrincipal notificationCollectionURL];
        v16 = [v12 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:notificationCollectionURL];

        v17 = [[CoreDAVDeleteTask alloc] initWithURL:v16];
        objc_initWeak(location, v17);
        mobileCalDAVAccount3 = [(MobileCalDAVDADaemonAccount *)self->_account mobileCalDAVAccount];
        mainPrincipal2 = [mobileCalDAVAccount3 mainPrincipal];
        [v17 setAccountInfoProvider:mainPrincipal2];

        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_EBC8;
        v32[3] = &unk_28AA8;
        v20 = v16;
        v33 = v20;
        objc_copyWeak(&v35, location);
        selfCopy = self;
        [v17 setCompletionBlock:v32];
        taskManager = [(MobileCalDAVSharingResponse *)self taskManager];
        [taskManager submitQueuedCoreDAVTask:v17];

        CalRemoveNotification();
        objc_destroyWeak(&v35);

        objc_destroyWeak(location);
        CFRelease(v10);

        CFRelease(copyCalStore);
        goto LABEL_17;
      }

      v26 = DALoggingwithCategory();
      v27 = _CPLog_to_os_log_type[4];
      if (os_log_type_enabled(v26, v27))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = dCopy;
        _os_log_impl(&dword_0, v26, v27, "Couldn't get an external id from the invite notification with uid %@", location, 0xCu);
      }

      CFRelease(v10);
      CFRelease(copyCalStore);
    }

    else
    {
      v24 = DALoggingwithCategory();
      v25 = _CPLog_to_os_log_type[4];
      if (os_log_type_enabled(v24, v25))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = dCopy;
        _os_log_impl(&dword_0, v24, v25, "Couldn't find a sharing invite notification in the database with uid %@", location, 0xCu);
      }

      CFRelease(copyCalStore);
    }
  }

  else
  {
    v22 = DALoggingwithCategory();
    v23 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v22, v23))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_0, v22, v23, "Couldn't get a calendar store to delete the calendar sharing invitation from", location, 2u);
    }
  }

  dbHelper2 = [(MobileCalDAVDADaemonAccount *)self->_account dbHelper];
  accountID2 = [(MobileCalDAVDADaemonAccount *)self->_account accountID];
  [dbHelper2 calCloseDatabaseForAccountID:accountID2 save:1];

  v30 = DALoggingwithCategory();
  v31 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v30, v31))
  {
    LODWORD(location[0]) = 138412290;
    *(location + 4) = dCopy;
    _os_log_impl(&dword_0, v30, v31, "Didn't send a delete for the sharing invitation with uid %@", location, 0xCu);
  }

  [(MobileCalDAVSharingResponse *)self finishWithError:0];
LABEL_17:
}

- (void)_reallyRespondToSharingRequestWithCreateReplyGroupBlock:(id)block
{
  blockCopy = block;
  dbHelper = [(MobileCalDAVDADaemonAccount *)self->_account dbHelper];
  accountID = [(MobileCalDAVDADaemonAccount *)self->_account accountID];
  changeTrackingID = [(MobileCalDAVDADaemonAccount *)self->_account changeTrackingID];
  [dbHelper calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];

  dbHelper2 = [(MobileCalDAVDADaemonAccount *)self->_account dbHelper];
  accountID2 = [(MobileCalDAVDADaemonAccount *)self->_account accountID];
  [dbHelper2 calDatabaseForAccountID:accountID2];

  calendarID = self->_calendarID;
  v11 = CalDatabaseCopyCalendarWithUUID();
  if (!v11)
  {
    v13 = 0;
LABEL_8:
    dbHelper3 = [(MobileCalDAVDADaemonAccount *)self->_account dbHelper];
    accountID3 = [(MobileCalDAVDADaemonAccount *)self->_account accountID];
    [dbHelper3 calCloseDatabaseForAccountID:accountID3 save:0];

    v14 = [NSError errorWithDomain:DAErrorDomain code:12 userInfo:0];
    [(MobileCalDAVSharingResponse *)self finishWithError:v14];
    goto LABEL_9;
  }

  v12 = v11;
  v13 = CalCalendarCopyExternalIdentificationTag();
  if (v13)
  {
    v14 = blockCopy[2](blockCopy, v12);
  }

  else
  {
    v14 = 0;
  }

  CalRemoveCalendar();
  CFRelease(v12);
  if (!v14)
  {
    goto LABEL_8;
  }

  objc_initWeak(&location, v14);
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_EF8C;
  v20 = &unk_28AD0;
  objc_copyWeak(&v23, &location);
  selfCopy = self;
  v13 = v13;
  v22 = v13;
  [v14 setCompletionBlock:&v17];
  [(MobileCalDAVSharingResponse *)self setCurrentOperation:v14, v17, v18, v19, v20, selfCopy];
  [v14 startTaskGroup];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
LABEL_9:
}

- (void)_doSharingRequestResponseWithCreateReplyGroupBlock:(id)block
{
  blockCopy = block;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v6, v7))
  {
    transactionId = [v5 transactionId];
    *buf = 138543362;
    v17 = transactionId;
    _os_log_impl(&dword_0, v6, v7, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v9 = DALoggingwithCategory();
  if (os_log_type_enabled(v9, v7))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v9, v7, "Waiting on the gatekeeper before responding to a calendar share request", buf, 2u);
  }

  self->_waitingForGatekeeper = 1;
  v10 = +[DALocalDBGateKeeper sharedGateKeeper];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_F348;
  v13[3] = &unk_28AF8;
  v14 = v5;
  v15 = blockCopy;
  v13[4] = self;
  v11 = v5;
  v12 = blockCopy;
  [v10 registerWaiter:self forDataclassLocks:4 completionHandler:v13];
}

- (void)respondToSharingRequestWithResponse:(int64_t)response
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_F48C;
  v3[3] = &unk_28B20;
  v3[4] = self;
  v3[5] = response;
  [(MobileCalDAVSharingResponse *)self _doSharingRequestResponseWithCreateReplyGroupBlock:v3];
}

- (id)_createReplyGroupForShareInviteResponse:(int64_t)response toCalendar:(void *)calendar
{
  v6 = CalCalendarCopyExternalID();
  if (v6)
  {
    mobileCalDAVAccount = [(MobileCalDAVDADaemonAccount *)self->_account mobileCalDAVAccount];
    mainPrincipal = [mobileCalDAVAccount mainPrincipal];
    calendarHomeURL = [mainPrincipal calendarHomeURL];
    v10 = [v6 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarHomeURL];

    relativePath = [v10 relativePath];
    v12 = [NSURL URLWithString:relativePath];
  }

  else
  {
    v12 = 0;
    v10 = 0;
  }

  v13 = CalCalendarCopyExternalIdentificationTag();
  v14 = CalCalendarCopyTitle();
  v15 = v14;
  v16 = 0;
  if (v13 && v12 && v14)
  {
    v37 = v6;
    v38 = v10;
    v17 = [CalDAVCalendarServerInviteNotificationItem alloc];
    mobileCalDAVAccount2 = [(MobileCalDAVDADaemonAccount *)self->_account mobileCalDAVAccount];
    mainPrincipal2 = [mobileCalDAVAccount2 mainPrincipal];
    [mainPrincipal2 calendarUserAddresses];
    v21 = v20 = response;
    anyObject = [v21 anyObject];
    v36 = v12;
    v35 = [v17 initForReplyWithUID:v13 href:anyObject hostURL:v12 summary:v15];

    v23 = DALoggingwithCategory();
    v24 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v23, v24))
    {
      v25 = @"decline";
      *buf = 138413058;
      if (v20 == 1)
      {
        v25 = @"accept";
      }

      v40 = v25;
      v41 = 2112;
      v42 = v15;
      v43 = 2112;
      v44 = v13;
      v45 = 2112;
      v46 = v38;
      _os_log_impl(&dword_0, v23, v24, "Sending shared calendar invite %@ for invite to %@ of with uid %@ at URL %@", buf, 0x2Au);
    }

    v26 = [CalDAVReplyToSharedCalendarInvitationTaskGroup alloc];
    v27 = v20 == 1;
    mobileCalDAVAccount3 = [(MobileCalDAVDADaemonAccount *)self->_account mobileCalDAVAccount];
    mainPrincipal3 = [mobileCalDAVAccount3 mainPrincipal];
    calendarHomeURL2 = [mainPrincipal3 calendarHomeURL];
    mobileCalDAVAccount4 = [(MobileCalDAVDADaemonAccount *)self->_account mobileCalDAVAccount];
    mainPrincipal4 = [mobileCalDAVAccount4 mainPrincipal];
    taskManager = [(MobileCalDAVSharingResponse *)self taskManager];
    v16 = [v26 initWithInvitation:v35 acceptInvitation:v27 atCalendarHomeURL:calendarHomeURL2 accountInfoProvider:mainPrincipal4 taskManager:taskManager];

    v6 = v37;
    v10 = v38;
    v12 = v36;
  }

  return v16;
}

- (void)reportAsJunk
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_F830;
  v2[3] = &unk_28B48;
  v2[4] = self;
  [(MobileCalDAVSharingResponse *)self _doSharingRequestResponseWithCreateReplyGroupBlock:v2];
}

- (id)_createReplyGroupForReportingCalendarAsJunk:(void *)junk
{
  dbHelper = [(MobileCalDAVDADaemonAccount *)self->_account dbHelper];
  accountID = [(MobileCalDAVDADaemonAccount *)self->_account accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  mobileCalDAVAccount = [(MobileCalDAVDADaemonAccount *)self->_account mobileCalDAVAccount];
  copyCalStore = [mobileCalDAVAccount copyCalStore];

  if (!copyCalStore)
  {
    v16 = 0;
    goto LABEL_12;
  }

  v8 = CalCalendarCopyExternalIdentificationTag();
  v9 = CalDatabaseCopyNotificationWithUniqueIdentifierInCalendarOrStore();
  if (!v9)
  {
    v15 = 0;
LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  v10 = v9;
  v11 = CalNotificationCopyExternalID();
  if (v11)
  {
    mobileCalDAVAccount2 = [(MobileCalDAVDADaemonAccount *)self->_account mobileCalDAVAccount];
    mainPrincipal = [mobileCalDAVAccount2 mainPrincipal];
    notificationCollectionURL = [mainPrincipal notificationCollectionURL];
    v15 = [v11 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:notificationCollectionURL];
  }

  else
  {
    v15 = 0;
  }

  CFRelease(v10);

  if (!v15)
  {
    goto LABEL_10;
  }

  v17 = [[CalDAVReportJunkAction alloc] initWithResourceURL:v15];
  v18 = [CalDAVReportJunkTaskGroup alloc];
  v24 = v17;
  v19 = [NSArray arrayWithObjects:&v24 count:1];
  mobileCalDAVAccount3 = [(MobileCalDAVDADaemonAccount *)self->_account mobileCalDAVAccount];
  mainPrincipal2 = [mobileCalDAVAccount3 mainPrincipal];
  taskManager = [(MobileCalDAVSharingResponse *)self taskManager];
  v16 = [v18 initWithReportJunkActions:v19 accountInfoProvider:mainPrincipal2 taskManager:taskManager];

LABEL_11:
  CFRelease(copyCalStore);

LABEL_12:

  return v16;
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  if (self->_holdingGatekeeperLock)
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v5, v6))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_0, v5, v6, "Releasing gatekeeper lock", &v11, 2u);
    }

    v7 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v7 relinquishLocksForWaiter:self dataclasses:4 moreComing:0];

    self->_holdingGatekeeperLock = 0;
  }

  if (!self->_finished)
  {
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v8, v9))
    {
      v11 = 134218242;
      selfCopy = self;
      v13 = 2112;
      v14 = errorCopy;
      _os_log_impl(&dword_0, v8, v9, "MobileCalDAVSharingResponse %p finished with error %@", &v11, 0x16u);
    }

    self->_finished = 1;
    WeakRetained = objc_loadWeakRetained(&self->_consumer);
    [WeakRetained shareResponseFinishedWithError:errorCopy];

    [(MobileCalDAVSharingResponse *)self _shareResponseIsGoingAway];
  }
}

- (void)_shareResponseIsGoingAway
{
  v3 = dataaccess_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_FCCC;
  block[3] = &unk_28790;
  block[4] = self;
  dispatch_async(v3, block);

  shareResponses = [(MobileCalDAVDADaemonAccount *)self->_account shareResponses];
  responseID = [(MobileCalDAVSharingResponse *)self responseID];
  [shareResponses removeObjectForKey:responseID];
}

- (void)cancel
{
  currentOperation = [(MobileCalDAVSharingResponse *)self currentOperation];
  [currentOperation cancelTaskGroup];

  taskManager = [(MobileCalDAVSharingResponse *)self taskManager];
  [taskManager cancelAllTasks];

  v5 = [NSError errorWithDomain:DAErrorDomain code:-1 userInfo:0];
  [(MobileCalDAVSharingResponse *)self finishWithError:v5];
}

- (DAEventsCalendarSharingResponseConsumer)consumer
{
  WeakRetained = objc_loadWeakRetained(&self->_consumer);

  return WeakRetained;
}

@end