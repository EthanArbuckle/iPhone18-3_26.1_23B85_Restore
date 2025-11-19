@interface MobileCalDAVSharingResponse
+ (id)responseWithCalendarID:(id)a3 consumer:(id)a4 account:(id)a5;
- (DAEventsCalendarSharingResponseConsumer)consumer;
- (MobileCalDAVSharingResponse)initWithCalendarID:(id)a3 consumer:(id)a4 account:(id)a5;
- (id)_createReplyGroupForShareInviteResponse:(int64_t)a3 toCalendar:(id)a4;
- (id)_remAccount;
- (void)_deleteSharingInvitationWithUID:(id)a3;
- (void)_doSharingRequestResponseWithCreateReplyGroupBlock:(id)a3;
- (void)_reallyRespondToSharingRequestWithCreateReplyGroupBlock:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)finishWithError:(id)a3;
- (void)respondToSharingRequestWithResponse:(int64_t)a3;
@end

@implementation MobileCalDAVSharingResponse

+ (id)responseWithCalendarID:(id)a3 consumer:(id)a4 account:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[MobileCalDAVSharingResponse alloc] initWithCalendarID:v9 consumer:v8 account:v7];

  return v10;
}

- (MobileCalDAVSharingResponse)initWithCalendarID:(id)a3 consumer:(id)a4 account:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = MobileCalDAVSharingResponse;
  v12 = [(MobileCalDAVSharingResponse *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_calendarID, a3);
    objc_storeWeak(&v13->_consumer, v10);
    objc_storeStrong(&v13->_account, a5);
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
    sub_1035C();
  }

  [(CoreDAVTaskGroup *)self->_currentOperation cancelTaskGroup];
  [(DACoreDAVTaskManager *)self->_taskManager shutdown];
  v3.receiver = self;
  v3.super_class = MobileCalDAVSharingResponse;
  [(MobileCalDAVSharingResponse *)&v3 dealloc];
}

- (void)_deleteSharingInvitationWithUID:(id)a3
{
  v5 = a3;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = sub_7FBC;
  v90 = sub_7FCC;
  v91 = 0;
  v6 = [(MobileCalDAVSharingResponse *)self _remAccount];
  v85 = 0;
  v7 = [v6 fetchListsIncludingSpecialContainersWithError:&v85];
  v8 = v85;
  v84[0] = _NSConcreteStackBlock;
  v84[1] = 3221225472;
  v84[2] = sub_7FD4;
  v84[3] = &unk_206D0;
  v84[4] = &v86;
  [v7 enumerateObjectsUsingBlock:v84];

  if (v8)
  {
    v9 = DALoggingwithCategory();
    v10 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v9, v10))
    {
      v11 = [(MobileCalDAVDaemonAccount *)self->_account accountID];
      responseID = self->_responseID;
      v13 = [v8 localizedDescription];
      *buf = 138413058;
      v93 = v11;
      v94 = 2112;
      v95 = v5;
      v96 = 2112;
      v97 = responseID;
      v98 = 2112;
      v99 = v13;
      _os_log_impl(&dword_0, v9, v10, "MobileCalDAVSharingResponse: ERROR: Failed to fetch lists in account for _deleteSharingInvitationWithUID {accountID: %@, uid: %@, responseID: %@, error: %@}", buf, 0x2Au);
    }

LABEL_4:

    _Block_object_dispose(&v86, 8);
LABEL_5:
    v14 = DALoggingwithCategory();
    v15 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v14, v15))
    {
      v16 = [(MobileCalDAVDaemonAccount *)self->_account accountID];
      calendarID = self->_calendarID;
      v18 = self->_responseID;
      *buf = 138413058;
      v93 = v5;
      v94 = 2112;
      v95 = v16;
      v96 = 2112;
      v97 = calendarID;
      v98 = 2112;
      v99 = v18;
      _os_log_impl(&dword_0, v14, v15, "MobileCalDAVSharingResponse: Didn't send a delete for the sharing invitation for _deleteSharingInvitationWithUID with {uid: %@, accountID: %@, calendarID: %@, responseID: %@}", buf, 0x2Au);
    }

    [(MobileCalDAVSharingResponse *)self finishWithError:0];
    goto LABEL_8;
  }

  if (!v87[5])
  {
    v9 = DALoggingwithCategory();
    v43 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v9, v43))
    {
      v44 = [(MobileCalDAVDaemonAccount *)self->_account accountID];
      v45 = self->_responseID;
      *buf = 138412802;
      v93 = v44;
      v94 = 2112;
      v95 = v5;
      v96 = 2112;
      v97 = v45;
      _os_log_impl(&dword_0, v9, v43, "MobileCalDAVSharingResponse: LOOKATME: Failed to fetch the notification calendar for _deleteSharingInvitationWithUID {accountID: %@, uid: %@, responseID: %@}", buf, 0x20u);
    }

    goto LABEL_4;
  }

  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = sub_7FBC;
  v82 = sub_7FCC;
  v83 = 0;
  v19 = [v87[5] calDAVNotificationContext];
  v20 = [v19 calDAVNotifications];
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_804C;
  v75[3] = &unk_206F8;
  v66 = v5;
  v76 = v66;
  v77 = &v78;
  [v20 enumerateObjectsUsingBlock:v75];

  if (v79[5])
  {
    v21 = DALoggingwithCategory();
    v22 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v21, v22))
    {
      v23 = [v79[5] objectID];
      v24 = [(MobileCalDAVDaemonAccount *)self->_account accountID];
      v25 = self->_calendarID;
      v26 = self->_responseID;
      *buf = 138413314;
      v93 = v66;
      v94 = 2112;
      v95 = v23;
      v96 = 2112;
      v97 = v24;
      v98 = 2112;
      v99 = v25;
      v100 = 2112;
      v101 = v26;
      _os_log_impl(&dword_0, v21, v22, "MobileCalDAVSharingResponse: Matched invitation notification for _deleteSharingInvitationWithUID with {uid: %@, objectID: %@, accountID: %@, calendarID: %@, responseID: %@}", buf, 0x34u);
    }

    v27 = [v79[5] externalIdentifier];
    v68 = v27 != 0;
    if (v27)
    {
      v28 = [(MobileCalDAVDaemonAccount *)self->_account mainPrincipal];
      v29 = [v28 notificationCollectionURL];
      v30 = [v27 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v29];

      v67 = [[CoreDAVDeleteTask alloc] initWithURL:v30];
      objc_initWeak(&location, v67);
      v31 = [(MobileCalDAVDaemonAccount *)self->_account mainPrincipal];
      [v67 setAccountInfoProvider:v31];

      v70[0] = _NSConcreteStackBlock;
      v70[1] = 3221225472;
      v70[2] = sub_80E4;
      v70[3] = &unk_20720;
      v32 = v30;
      v71 = v32;
      objc_copyWeak(&v73, &location);
      v72 = self;
      [v67 setCompletionBlock:v70];
      v33 = [(MobileCalDAVSharingResponse *)self taskManager];
      [v33 submitQueuedCoreDAVTask:v67];

      v65 = [(MobileCalDAVDaemonAccount *)self->_account rem_saveRequest];
      v64 = [v65 updateList:v87[5]];
      v34 = [v64 calDAVNotificationContext];
      if (!v34)
      {
        v57 = +[NSAssertionHandler currentHandler];
        [v57 handleFailureInMethod:a2 object:self file:@"MobileCalDAVSharingSupport.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"notificationContext"}];
      }

      [v34 removeCalDAVNotication:v79[5]];
      v69 = 0;
      v35 = [v65 saveSynchronouslyWithError:&v69];
      v36 = v69;
      if (v36)
      {
        v37 = 0;
      }

      else
      {
        v37 = v35;
      }

      if (v37)
      {
        v38 = DALoggingwithCategory();
        if (os_log_type_enabled(v38, v22))
        {
          v62 = v32;
          v39 = [v79[5] objectID];
          v40 = [(MobileCalDAVDaemonAccount *)self->_account accountID];
          v41 = self->_calendarID;
          v42 = self->_responseID;
          *buf = 138413314;
          v93 = v39;
          v94 = 2112;
          v95 = v66;
          v96 = 2112;
          v97 = v40;
          v98 = 2112;
          v99 = v41;
          v100 = 2112;
          v101 = v42;
          _os_log_impl(&dword_0, v38, v22, "MobileCalDAVSharingResponse: Successfully removed invite notification at _deleteSharingInvitationWithUID: {objectID: %@, uid: %@, accountID: %@, calendarID: %@, responseID: %@}", buf, 0x34u);

          v32 = v62;
        }
      }

      else
      {
        v38 = DALoggingwithCategory();
        v54 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v38, v54))
        {
          v63 = v32;
          v61 = [v79[5] objectID];
          v60 = [(MobileCalDAVDaemonAccount *)self->_account accountID];
          v55 = self->_calendarID;
          v58 = v55;
          v59 = self->_responseID;
          v56 = [v36 localizedDescription];
          *buf = 138413570;
          v93 = v61;
          v94 = 2112;
          v95 = v66;
          v96 = 2112;
          v97 = v60;
          v98 = 2112;
          v99 = v58;
          v100 = 2112;
          v101 = v59;
          v102 = 2112;
          v103 = v56;
          _os_log_impl(&dword_0, v38, v54, "MobileCalDAVSharingResponse: ERROR: Remove invite notification failed when trying to _deleteSharingInvitationWithUID: {objectID: %@, uid: %@, accountID: %@, calendarID: %@, responseID: %@, error: %@}", buf, 0x3Eu);

          v32 = v63;
        }
      }

      objc_destroyWeak(&v73);
      objc_destroyWeak(&location);
    }

    else
    {
      v32 = DALoggingwithCategory();
      v50 = _CPLog_to_os_log_type[4];
      if (os_log_type_enabled(v32, v50))
      {
        v51 = [(MobileCalDAVDaemonAccount *)self->_account accountID];
        v52 = self->_calendarID;
        v53 = self->_responseID;
        *buf = 138413058;
        v93 = v66;
        v94 = 2112;
        v95 = v51;
        v96 = 2112;
        v97 = v52;
        v98 = 2112;
        v99 = v53;
        _os_log_impl(&dword_0, v32, v50, "MobileCalDAVSharingResponse: LOOKATME: Couldn't get an external ID from the invite notification for _deleteSharingInvitationWithUID with {uid: %@, accountID: %@, calendarID: %@, responseID: %@}", buf, 0x2Au);
      }
    }
  }

  else
  {
    v27 = DALoggingwithCategory();
    v46 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v27, v46))
    {
      v47 = [(MobileCalDAVDaemonAccount *)self->_account accountID];
      v48 = self->_calendarID;
      v49 = self->_responseID;
      *buf = 138413058;
      v93 = v66;
      v94 = 2112;
      v95 = v47;
      v96 = 2112;
      v97 = v48;
      v98 = 2112;
      v99 = v49;
      _os_log_impl(&dword_0, v27, v46, "MobileCalDAVSharingResponse: LOOKATME: Couldn't find a sharing invite notification for _deleteSharingInvitationWithUID with {uid: %@, accountID: %@, calendarID: %@, responseID: %@}", buf, 0x2Au);
    }

    v68 = 0;
  }

  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v86, 8);

  if (!v68)
  {
    goto LABEL_5;
  }

LABEL_8:
}

- (void)_reallyRespondToSharingRequestWithCreateReplyGroupBlock:(id)a3
{
  v29 = a3;
  v4 = [(MobileCalDAVSharingResponse *)self _remAccount];
  calendarID = self->_calendarID;
  v35 = 0;
  v6 = [v4 fetchListIncludingSpecialContainerWithExternalIdentifier:calendarID error:&v35];
  v30 = v35;

  if (v30)
  {
    v7 = DALoggingwithCategory();
    v8 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v7, v8))
    {
      v9 = [(MobileCalDAVDaemonAccount *)self->_account accountID];
      v10 = self->_calendarID;
      responseID = self->_responseID;
      v12 = [v30 localizedDescription];
      *buf = 138413058;
      v37 = v9;
      v38 = 2112;
      v39 = v10;
      v40 = 2112;
      v41 = responseID;
      v42 = 2112;
      v43 = v12;
      _os_log_impl(&dword_0, v7, v8, "MobileCalDAVSharingResponse: ERROR: Failed to fetch an REMList to _reallyRespondToSharingRequestWithCreateReplyGroupBlock {accountID: %@, calendarID: %@, responseID: %@, error: %@}", buf, 0x2Au);
    }
  }

  if (!v6)
  {
    v13 = 0;
LABEL_19:
    v14 = [NSError errorWithDomain:DAErrorDomain code:12 userInfo:0];
    [(MobileCalDAVSharingResponse *)self finishWithError:v14];
    goto LABEL_20;
  }

  v13 = [v6 daExternalIdentificationTag];
  if (v13)
  {
    v14 = v29[2](v29, v6);
  }

  else
  {
    v14 = 0;
  }

  v15 = [(MobileCalDAVDaemonAccount *)self->_account rem_saveRequest];
  v16 = [v15 updateList:v6];
  [v16 removeFromParent];
  v34 = 0;
  v17 = [v15 saveSynchronouslyWithError:&v34];
  v18 = v34;
  if (v18)
  {
    v17 = 0;
  }

  v19 = DALoggingwithCategory();
  v20 = v19;
  if (v17)
  {
    v21 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v19, v21))
    {
      v27 = [v6 objectID];
      v22 = [(MobileCalDAVDaemonAccount *)self->_account accountID];
      v25 = [v30 localizedDescription];
      *buf = 138413058;
      v37 = v27;
      v38 = 2112;
      v39 = v13;
      v40 = 2112;
      v41 = v22;
      v42 = 2112;
      v43 = v25;
      _os_log_impl(&dword_0, v20, v21, "MobileCalDAVSharingResponse: SUCCESS: _reallyRespondToSharingRequestWithCreateReplyGroupBlock: Deleted shared invite-pending calendar {objectID: %@, listGUID: %@, account: %@, error: %@}", buf, 0x2Au);
    }
  }

  else
  {
    v23 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v19, v23))
    {
      v28 = [v6 objectID];
      v24 = [(MobileCalDAVDaemonAccount *)self->_account accountID];
      v26 = [v30 localizedDescription];
      *buf = 138413058;
      v37 = v28;
      v38 = 2112;
      v39 = v13;
      v40 = 2112;
      v41 = v24;
      v42 = 2112;
      v43 = v26;
      _os_log_impl(&dword_0, v20, v23, "MobileCalDAVSharingResponse: ERROR: Failed to save delete of the shared invite-pending calendar when _reallyRespondToSharingRequestWithCreateReplyGroupBlock {objectID: %@, listGUID: %@, account: %@, error: %@}", buf, 0x2Au);
    }
  }

  if (!v14)
  {
    goto LABEL_19;
  }

  objc_initWeak(buf, v14);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_8724;
  v31[3] = &unk_20748;
  objc_copyWeak(&v33, buf);
  v31[4] = self;
  v13 = v13;
  v32 = v13;
  [v14 setCompletionBlock:v31];
  [(MobileCalDAVSharingResponse *)self setCurrentOperation:v14];
  [v14 startTaskGroup];

  objc_destroyWeak(&v33);
  objc_destroyWeak(buf);
LABEL_20:
}

- (void)_doSharingRequestResponseWithCreateReplyGroupBlock:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v6, v7))
  {
    v8 = [v5 transactionId];
    *buf = 138412290;
    v19 = v8;
    _os_log_impl(&dword_0, v6, v7, "MobileCalDAVSharingResponse: DATransaction starting, ID: %@", buf, 0xCu);
  }

  v9 = DALoggingwithCategory();
  v10 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v9, v10))
  {
    WeakRetained = objc_loadWeakRetained(&self->_consumer);
    *buf = 138412290;
    v19 = WeakRetained;
    _os_log_impl(&dword_0, v9, v10, "MobileCalDAVSharingResponse: Waiting on the gatekeeper before responding to a calendar share request {consumer: %@}", buf, 0xCu);
  }

  self->_waitingForGatekeeper = 1;
  v12 = +[DALocalDBGateKeeper sharedGateKeeper];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_8A88;
  v15[3] = &unk_20770;
  v16 = v5;
  v17 = v4;
  v15[4] = self;
  v13 = v5;
  v14 = v4;
  [v12 registerWaiter:self forDataclassLocks:4 completionHandler:v15];
}

- (void)respondToSharingRequestWithResponse:(int64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_8BCC;
  v3[3] = &unk_20798;
  v3[4] = self;
  v3[5] = a3;
  [(MobileCalDAVSharingResponse *)self _doSharingRequestResponseWithCreateReplyGroupBlock:v3];
}

- (id)_createReplyGroupForShareInviteResponse:(int64_t)a3 toCalendar:(id)a4
{
  v6 = a4;
  v7 = [v6 externalIdentifier];
  if (v7)
  {
    v8 = [(MobileCalDAVDaemonAccount *)self->_account mainPrincipal];
    v9 = [v8 calendarHomeURL];
    v10 = [v7 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v9];

    v11 = [v10 relativePath];
    v12 = [NSURL URLWithString:v11];
  }

  else
  {
    v12 = 0;
    v10 = 0;
  }

  v13 = [v6 daExternalIdentificationTag];
  v14 = [v6 name];

  v15 = 0;
  if (v13 && v12 && v14)
  {
    v31 = v7;
    v32 = a3;
    v16 = [CalDAVCalendarServerInviteNotificationItem alloc];
    v17 = [(MobileCalDAVDaemonAccount *)self->_account mainPrincipal];
    v18 = [v17 calendarUserAddresses];
    v19 = [v18 anyObject];
    v30 = [v16 initForReplyWithUID:v13 href:v19 hostURL:v12 summary:v14];

    v20 = DALoggingwithCategory();
    v21 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v20, v21))
    {
      v22 = @"decline";
      *buf = 138413058;
      if (v32 == 1)
      {
        v22 = @"accept";
      }

      v34 = v22;
      v35 = 2112;
      v36 = v14;
      v37 = 2112;
      v38 = v13;
      v39 = 2112;
      v40 = v10;
      _os_log_impl(&dword_0, v20, v21, "MobileCalDAVSharingResponse: Sending shared calendar invite %@ for invite to %@ of with uid %@ at URL %@", buf, 0x2Au);
    }

    v23 = [CalDAVReplyToSharedCalendarInvitationTaskGroup alloc];
    v24 = [(MobileCalDAVDaemonAccount *)self->_account mainPrincipal];
    v25 = [v24 calendarHomeURL];
    [(MobileCalDAVDaemonAccount *)self->_account mainPrincipal];
    v27 = v26 = v10;
    v28 = [(MobileCalDAVSharingResponse *)self taskManager];
    v15 = [v23 initWithInvitation:v30 acceptInvitation:v32 == 1 atCalendarHomeURL:v25 accountInfoProvider:v27 taskManager:v28];

    v10 = v26;
    v7 = v31;
  }

  return v15;
}

- (void)finishWithError:(id)a3
{
  v4 = a3;
  if (self->_holdingGatekeeperLock)
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v5, v6))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_0, v5, v6, "MobileCalDAVSharingResponse: Releasing gatekeeper lock", &v12, 2u);
    }

    v7 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v7 relinquishLocksForWaiter:self dataclasses:4 moreComing:0];

    self->_holdingGatekeeperLock = 0;
  }

  if (!self->_finished)
  {
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v8, v9))
    {
      WeakRetained = objc_loadWeakRetained(&self->_consumer);
      v12 = 134218498;
      v13 = self;
      v14 = 2112;
      v15 = v4;
      v16 = 2112;
      v17 = WeakRetained;
      _os_log_impl(&dword_0, v8, v9, "MobileCalDAVSharingResponse finished with {%p, error: %@, consumer: %@}", &v12, 0x20u);
    }

    self->_finished = 1;
    v11 = objc_loadWeakRetained(&self->_consumer);
    [v11 shareResponseFinishedWithError:v4];

    [(MobileCalDAVDaemonAccount *)self->_account shareResponseIsGoingAway:self];
  }
}

- (void)cancel
{
  v3 = [(MobileCalDAVSharingResponse *)self currentOperation];
  [v3 cancelTaskGroup];

  v4 = [(MobileCalDAVSharingResponse *)self taskManager];
  [v4 cancelAllTasks];

  v5 = [NSError errorWithDomain:DAErrorDomain code:-1 userInfo:0];
  [(MobileCalDAVSharingResponse *)self finishWithError:v5];
}

- (id)_remAccount
{
  v3 = self->_remAccountCache;
  if (!v3)
  {
    v4 = [(MobileCalDAVDaemonAccount *)self->_account rem_store];
    v5 = [(MobileCalDAVDaemonAccount *)self->_account accountID];
    v14 = 0;
    v3 = [v4 fetchAccountWithExternalIdentifier:v5 error:&v14];
    v6 = v14;

    if (v6)
    {
      v7 = DALoggingwithCategory();
      v8 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v7, v8))
      {
        v9 = [(MobileCalDAVDaemonAccount *)self->_account accountID];
        calendarID = self->_calendarID;
        responseID = self->_responseID;
        v12 = [v6 localizedDescription];
        *buf = 138413058;
        v16 = v9;
        v17 = 2112;
        v18 = calendarID;
        v19 = 2112;
        v20 = responseID;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&dword_0, v7, v8, "MobileCalDAVSharingResponse: ERROR: Failed to fetch an REMAccount for MobileCalDAVSharingResponse {accountID: %@, calendarID: %@, responseID: %@, error: %@}", buf, 0x2Au);
      }
    }
  }

  return v3;
}

- (DAEventsCalendarSharingResponseConsumer)consumer
{
  WeakRetained = objc_loadWeakRetained(&self->_consumer);

  return WeakRetained;
}

@end