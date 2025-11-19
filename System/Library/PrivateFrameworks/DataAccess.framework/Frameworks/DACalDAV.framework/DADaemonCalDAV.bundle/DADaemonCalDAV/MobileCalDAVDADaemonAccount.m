@interface MobileCalDAVDADaemonAccount
- (BOOL)isDisabled;
- (MobileCalDAVDADaemonAccount)initWithBackingAccountInfo:(id)a3;
- (id)_startOfficeHoursRequestWithConsumer:(id)a3 error:(id *)a4 startRequestBlock:(id)a5;
- (id)beginDownloadingAttachmentWithUUID:(id)a3 consumer:(id)a4;
- (id)childAccountWithIdentifier:(id)a3;
- (id)childAccountsWithAccountTypeIdentifier:(id)a3;
- (id)createChildAccountWithAccountTypeIdentifier:(id)a3;
- (id)performCalendarDirectorySearchForTerms:(id)a3 recordTypes:(id)a4 resultLimit:(unint64_t)a5 consumer:(id)a6;
- (id)reportShareRequestAsJunkForCalendar:(id)a3 consumer:(id)a4;
- (id)requestCalendarAvailabilityForStartDate:(id)a3 endDate:(id)a4 ignoredEventID:(id)a5 addresses:(id)a6 consumer:(id)a7;
- (id)requestGrantedDelegatesListWithConsumer:(id)a3;
- (id)respondToShareRequestForCalendar:(id)a3 withResponse:(int64_t)a4 consumer:(id)a5;
- (id)setOfficeHours:(id)a3 withConsumer:(id)a4 error:(id *)a5;
- (id)stateString;
- (id)updateGrantedDelegatePermission:(id)a3 consumer:(id)a4;
- (void)calendarAvailabilityRequestIsGoingAway:(id)a3;
- (void)calendarDirectorySearchIsGoingAway:(id)a3;
- (void)cancelAllCalendarAvailabilityRequests;
- (void)cancelAllCalendarDirectorySearches;
- (void)cancelAllGrantedDelegatesListRequests;
- (void)cancelAllGroupExpansions;
- (void)cancelAllSharingRequests;
- (void)cancelAllUpdateGrantedDelegatePermissionRequests;
- (void)cancelCalendarAvailabilityRequestWithID:(id)a3;
- (void)cancelCalendarDirectorySearchWithID:(id)a3;
- (void)cancelDownloadingInstance:(id)a3 error:(id)a4;
- (void)cancelGrantedDelegatesListRequestWithID:(id)a3;
- (void)cancelOfficeHoursRequestWithID:(id)a3;
- (void)cancelShareResponseInstance:(id)a3 error:(id)a4;
- (void)cancelUpdateGrantedDelegatePermissionRequestWithID:(id)a3;
- (void)dealloc;
- (void)grantedDelegatesListRequestIsGoingAway:(id)a3;
- (void)officeHoursRequestWithIDFinished:(id)a3;
- (void)performGroupExpansionForPrincipalPath:(id)a3 consumer:(id)a4;
- (void)removeAccount:(id)a3;
- (void)updateGrantedDelegatePermissionRequestIsGoingAway:(id)a3;
@end

@implementation MobileCalDAVDADaemonAccount

- (id)requestGrantedDelegatesListWithConsumer:(id)a3
{
  v4 = a3;
  v5 = [[MobileCalDAVGrantedDelegatesListRequest alloc] initWithConsumer:v4 account:self];
  v6 = [(MobileCalDAVGrantedDelegatesListRequest *)v5 requestID];
  v7 = [(MobileCalDAVDADaemonAccount *)self grantedDelegatesListRequests];
  objc_sync_enter(v7);
  v8 = [(MobileCalDAVDADaemonAccount *)self grantedDelegatesListRequests];
  [v8 setObject:v5 forKeyedSubscript:v6];

  objc_sync_exit(v7);
  [(MobileCalDAVGrantedDelegatesListRequest *)v5 performRequest];

  return v6;
}

- (void)cancelGrantedDelegatesListRequestWithID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = [(MobileCalDAVDADaemonAccount *)self grantedDelegatesListRequests];
    objc_sync_enter(v5);
    v6 = [(MobileCalDAVDADaemonAccount *)self grantedDelegatesListRequests];
    v7 = [v6 objectForKey:v8];

    objc_sync_exit(v5);
    [v7 cancel];

    v4 = v8;
  }
}

- (void)cancelAllGrantedDelegatesListRequests
{
  v3 = [(MobileCalDAVDADaemonAccount *)self grantedDelegatesListRequests];
  objc_sync_enter(v3);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(MobileCalDAVDADaemonAccount *)self grantedDelegatesListRequests];
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

  v8 = [(MobileCalDAVDADaemonAccount *)self grantedDelegatesListRequests];
  [v8 removeAllObjects];

  objc_sync_exit(v3);
}

- (void)grantedDelegatesListRequestIsGoingAway:(id)a3
{
  v4 = a3;
  v5 = dataaccess_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = nullsub_1;
  block[3] = &unk_28790;
  v6 = v4;
  v11 = v6;
  dispatch_async(v5, block);

  v7 = [(MobileCalDAVDADaemonAccount *)self grantedDelegatesListRequests];
  objc_sync_enter(v7);
  v8 = [v6 requestID];
  v9 = [(MobileCalDAVDADaemonAccount *)self grantedDelegatesListRequests];
  [v9 removeObjectForKey:v8];

  objc_sync_exit(v7);
}

- (id)requestCalendarAvailabilityForStartDate:(id)a3 endDate:(id)a4 ignoredEventID:(id)a5 addresses:(id)a6 consumer:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [[MobileCalDAVCalendarAvailabilityRequest alloc] initWithStartDate:v12 endDate:v13 ignoredEventID:v14 addresses:v15 consumer:v16 account:self];
  v18 = [(MobileCalDAVCalendarAvailabilityRequest *)v17 requestID];
  v19 = [(MobileCalDAVDADaemonAccount *)self calendarAvailabilityRequests];
  objc_sync_enter(v19);
  v20 = [(MobileCalDAVDADaemonAccount *)self calendarAvailabilityRequests];
  [v20 setObject:v17 forKeyedSubscript:v18];

  objc_sync_exit(v19);
  [(MobileCalDAVCalendarAvailabilityRequest *)v17 performRequest];

  return v18;
}

- (void)cancelCalendarAvailabilityRequestWithID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = [(MobileCalDAVDADaemonAccount *)self calendarAvailabilityRequests];
    objc_sync_enter(v5);
    v6 = [(MobileCalDAVDADaemonAccount *)self calendarAvailabilityRequests];
    v7 = [v6 objectForKey:v8];

    objc_sync_exit(v5);
    [v7 cancel];

    v4 = v8;
  }
}

- (void)cancelAllCalendarAvailabilityRequests
{
  v3 = [(MobileCalDAVDADaemonAccount *)self calendarAvailabilityRequests];
  objc_sync_enter(v3);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(MobileCalDAVDADaemonAccount *)self calendarAvailabilityRequests];
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

  v8 = [(MobileCalDAVDADaemonAccount *)self calendarAvailabilityRequests];
  [v8 removeAllObjects];

  objc_sync_exit(v3);
}

- (void)calendarAvailabilityRequestIsGoingAway:(id)a3
{
  v4 = a3;
  v5 = dataaccess_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_384C;
  block[3] = &unk_28790;
  v6 = v4;
  v11 = v6;
  dispatch_async(v5, block);

  v7 = [(MobileCalDAVDADaemonAccount *)self calendarAvailabilityRequests];
  objc_sync_enter(v7);
  v8 = [v6 requestID];
  v9 = [(MobileCalDAVDADaemonAccount *)self calendarAvailabilityRequests];
  [v9 removeObjectForKey:v8];

  objc_sync_exit(v7);
}

- (MobileCalDAVDADaemonAccount)initWithBackingAccountInfo:(id)a3
{
  v19.receiver = self;
  v19.super_class = MobileCalDAVDADaemonAccount;
  v3 = [(MobileCalDAVDADaemonAccount *)&v19 initWithBackingAccountInfo:a3];
  if (v3)
  {
    v4 = objc_opt_new();
    shareResponses = v3->_shareResponses;
    v3->_shareResponses = v4;

    v6 = objc_opt_new();
    calendarAvailabilityRequests = v3->_calendarAvailabilityRequests;
    v3->_calendarAvailabilityRequests = v6;

    v8 = objc_opt_new();
    directorySearches = v3->_directorySearches;
    v3->_directorySearches = v8;

    v10 = objc_opt_new();
    groupExpansions = v3->_groupExpansions;
    v3->_groupExpansions = v10;

    v12 = objc_opt_new();
    grantedDelegatesListRequests = v3->_grantedDelegatesListRequests;
    v3->_grantedDelegatesListRequests = v12;

    v14 = objc_opt_new();
    updateGrantedDelegatePermissionRequests = v3->_updateGrantedDelegatePermissionRequests;
    v3->_updateGrantedDelegatePermissionRequests = v14;

    v16 = objc_opt_new();
    officeHoursRequests = v3->_officeHoursRequests;
    v3->_officeHoursRequests = v16;
  }

  return v3;
}

- (void)dealloc
{
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 134217984;
    v8 = self;
    _os_log_impl(&dword_0, v3, v4, "MobileCalDAVDADaemonAccount %p going away", buf, 0xCu);
  }

  [(MobileCalDAVDADaemonAccount *)self cancelAllCalendarDirectorySearches];
  [(MobileCalDAVDADaemonAccount *)self cancelAllGroupExpansions];
  [(MobileCalDAVDADaemonAccount *)self cancelAllCalendarAvailabilityRequests];
  v5 = [(MobileCalDAVDADaemonAccount *)self mobileCalDAVAccount];
  [v5 cancelAllAttachmentDownloads];

  [(MobileCalDAVDADaemonAccount *)self cancelAllSharingRequests];
  [(MobileCalDAVDADaemonAccount *)self cancelAllGrantedDelegatesListRequests];
  [(MobileCalDAVDADaemonAccount *)self cancelAllUpdateGrantedDelegatePermissionRequests];
  v6.receiver = self;
  v6.super_class = MobileCalDAVDADaemonAccount;
  [(MobileCalDAVDADaemonAccount *)&v6 dealloc];
}

- (id)childAccountsWithAccountTypeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVDADaemonAccount *)self backingAccountInfo];
  v6 = [v5 childAccountsWithAccountTypeIdentifier:v4];

  return v6;
}

- (id)childAccountWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[DADAgentManager sharedManager];
  v6 = [v5 accountWithAccountID:v4];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v7 = [v6 backingAccountInfo];
  v8 = [v7 parentAccount];
  v9 = [v8 identifier];
  v10 = [(MobileCalDAVDADaemonAccount *)self backingAccountInfo];
  v11 = [v10 identifier];
  v12 = [v9 isEqualToString:v11];

  if (v12)
  {
    v13 = v6;
  }

  else
  {
LABEL_4:
    v13 = 0;
  }

  return v13;
}

- (id)createChildAccountWithAccountTypeIdentifier:(id)a3
{
  v4 = a3;
  v5 = sharedDAAccountStore();
  v6 = [ACAccount alloc];
  v7 = [v5 accountTypeWithAccountTypeIdentifier:v4];

  v8 = [v6 initWithAccountType:v7];
  [v8 setActive:1];
  v9 = [(MobileCalDAVDADaemonAccount *)self backingAccountInfo];
  [v8 setParentAccount:v9];

  [v8 setAuthenticationType:kAccountAuthenticationTypeParent];
  v10 = [objc_alloc(objc_opt_class()) initWithBackingAccountInfo:v8];
  v11 = [(MobileCalDAVDADaemonAccount *)self host];
  [v10 setHost:v11];

  return v10;
}

- (void)removeAccount:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_15DBC(a2, self);
  }

  v6 = v5;
  v7 = sharedDAAccountStore();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_4F9C;
  v9[3] = &unk_28820;
  v10 = v6;
  v8 = v6;
  [v7 removeAccount:v8 withDeleteSync:0 completion:v9];
}

- (id)stateString
{
  if (![(MobileCalDAVDADaemonAccount *)self isDelegateAccount])
  {
    goto LABEL_5;
  }

  v3 = [(MobileCalDAVDADaemonAccount *)self taskManager];

  v4 = +[DABabysitter sharedBabysitter];
  v5 = [(MobileCalDAVDADaemonAccount *)self mobileCalDAVAccount];
  v6 = [v4 accountShouldContinue:v5];

  if (v3)
  {
    goto LABEL_5;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
LABEL_5:
    v9.receiver = self;
    v9.super_class = MobileCalDAVDADaemonAccount;
    v7 = [(MobileCalDAVDADaemonAccount *)&v9 stateString];
  }

  return v7;
}

- (BOOL)isDisabled
{
  v10.receiver = self;
  v10.super_class = MobileCalDAVDADaemonAccount;
  if (![(MobileCalDAVDADaemonAccount *)&v10 isDisabled])
  {
    v3 = [(MobileCalDAVDADaemonAccount *)self backingAccountInfo];
    v4 = [v3 isEnabledForDataclass:ACAccountDataclassCalendars];

    if (v4)
    {
      return 0;
    }

    v6 = DALoggingwithCategory();
    v7 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v6, v7))
    {
      v8 = [(MobileCalDAVDADaemonAccount *)self backingAccountInfo];
      v9 = [v8 identifier];
      *buf = 138543362;
      v12 = v9;
      _os_log_impl(&dword_0, v6, v7, "Account %{public}@ is disabled because it is not enabled for the calendar data class", buf, 0xCu);
    }
  }

  return 1;
}

- (id)beginDownloadingAttachmentWithUUID:(id)a3 consumer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MobileCalDAVDADaemonAccount *)self mobileCalDAVAccount];
  v9 = [v8 beginDownloadingAttachmentWithUUID:v7 consumer:v6];

  return v9;
}

- (void)cancelDownloadingInstance:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MobileCalDAVDADaemonAccount *)self mobileCalDAVAccount];
  [v8 cancelDownloadingInstance:v7 error:v6];
}

- (id)performCalendarDirectorySearchForTerms:(id)a3 recordTypes:(id)a4 resultLimit:(unint64_t)a5 consumer:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [[MobileCalDAVDirectorySearch alloc] initWithTerms:v10 recordTypes:v11 resultLimit:a5 consumer:v12 account:self];
  v14 = [(MobileCalDAVDirectorySearch *)v13 searchID];
  v15 = [(MobileCalDAVDADaemonAccount *)self directorySearches];
  objc_sync_enter(v15);
  v16 = [(MobileCalDAVDADaemonAccount *)self directorySearches];
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
    v5 = [(MobileCalDAVDADaemonAccount *)self directorySearches];
    objc_sync_enter(v5);
    v6 = [(MobileCalDAVDADaemonAccount *)self directorySearches];
    v7 = [v6 objectForKey:v8];

    objc_sync_exit(v5);
    [v7 cancel];

    v4 = v8;
  }
}

- (void)cancelAllCalendarDirectorySearches
{
  v3 = [(MobileCalDAVDADaemonAccount *)self directorySearches];
  objc_sync_enter(v3);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(MobileCalDAVDADaemonAccount *)self directorySearches];
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

  v8 = [(MobileCalDAVDADaemonAccount *)self directorySearches];
  [v8 removeAllObjects];

  objc_sync_exit(v3);
}

- (void)calendarDirectorySearchIsGoingAway:(id)a3
{
  v4 = a3;
  v5 = dataaccess_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C19C;
  block[3] = &unk_28790;
  v6 = v4;
  v11 = v6;
  dispatch_async(v5, block);

  v7 = [v6 searchID];
  v8 = [(MobileCalDAVDADaemonAccount *)self directorySearches];
  objc_sync_enter(v8);
  v9 = [(MobileCalDAVDADaemonAccount *)self directorySearches];
  [v9 removeObjectForKey:v7];

  objc_sync_exit(v8);
}

- (id)setOfficeHours:(id)a3 withConsumer:(id)a4 error:(id *)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_C338;
  v11[3] = &unk_289E0;
  v12 = a3;
  v8 = v12;
  v9 = [(MobileCalDAVDADaemonAccount *)self _startOfficeHoursRequestWithConsumer:a4 error:a5 startRequestBlock:v11];

  return v9;
}

- (id)_startOfficeHoursRequestWithConsumer:(id)a3 error:(id *)a4 startRequestBlock:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[DACalDAVOfficeHoursRequest alloc] initWithAccount:self consumer:v8];

  v7[2](v7, v9);
  v10 = [(MobileCalDAVDADaemonAccount *)self officeHoursRequests];
  v11 = [(DACalDAVOfficeHoursRequest *)v9 requestID];
  [v10 setObject:v9 forKeyedSubscript:v11];

  v12 = [(DACalDAVOfficeHoursRequest *)v9 requestID];

  return v12;
}

- (void)cancelOfficeHoursRequestWithID:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVDADaemonAccount *)self officeHoursRequests];
  v6 = [v5 objectForKeyedSubscript:v4];

  [v6 cancel];
  [(MobileCalDAVDADaemonAccount *)self officeHoursRequestWithIDFinished:v4];
}

- (void)officeHoursRequestWithIDFinished:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVDADaemonAccount *)self officeHoursRequests];
  [v5 removeObjectForKey:v4];
}

- (void)performGroupExpansionForPrincipalPath:(id)a3 consumer:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [[MobileCalDAVGroupExpansion alloc] initWithPrincipalPath:v10 consumer:v6 account:self];
  v8 = [(MobileCalDAVDADaemonAccount *)self groupExpansions];
  objc_sync_enter(v8);
  v9 = [(MobileCalDAVDADaemonAccount *)self groupExpansions];
  [v9 addObject:v7];

  objc_sync_exit(v8);
  [(MobileCalDAVGroupExpansion *)v7 perform];
}

- (void)cancelAllGroupExpansions
{
  v3 = [(MobileCalDAVDADaemonAccount *)self groupExpansions];
  objc_sync_enter(v3);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(MobileCalDAVDADaemonAccount *)self groupExpansions];
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

  v8 = [(MobileCalDAVDADaemonAccount *)self groupExpansions];
  [v8 removeAllObjects];

  objc_sync_exit(v3);
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
    sub_1621C();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  sub_16288();
LABEL_3:
  v11 = [MobileCalDAVSharingResponse responseWithCalendarID:v8 consumer:v10 account:self];
  v12 = [(MobileCalDAVDADaemonAccount *)self shareResponses];
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
    sub_162F4();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  sub_16360();
LABEL_3:
  v9 = [MobileCalDAVSharingResponse responseWithCalendarID:v6 consumer:v8 account:self];
  v10 = [(MobileCalDAVDADaemonAccount *)self shareResponses];
  v11 = [v9 responseID];
  [v10 setObject:v9 forKeyedSubscript:v11];

  [v9 reportAsJunk];
  v12 = [v9 responseID];

  return v12;
}

- (void)cancelShareResponseInstance:(id)a3 error:(id)a4
{
  v8 = a3;
  if (!v8)
  {
    sub_163CC();
  }

  v5 = [(MobileCalDAVDADaemonAccount *)self shareResponses];
  v6 = [v5 objectForKeyedSubscript:v8];

  [v6 cancel];
  v7 = [(MobileCalDAVDADaemonAccount *)self shareResponses];
  [v7 removeObjectForKey:v8];
}

- (void)cancelAllSharingRequests
{
  v3 = [(MobileCalDAVDADaemonAccount *)self shareResponses];
  objc_sync_enter(v3);
  v4 = [NSError errorWithDomain:DAErrorDomain code:-1 userInfo:0];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(MobileCalDAVDADaemonAccount *)self shareResponses];
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

  v12 = [(MobileCalDAVDADaemonAccount *)self shareResponses];
  [v12 removeAllObjects];

  objc_sync_exit(v3);
}

- (id)updateGrantedDelegatePermission:(id)a3 consumer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[MobileCalDAVUpdateGrantedDelegatePermissionRequest alloc] initWithGrantedDelegate:v6 consumer:v7 account:self];
  v9 = [(MobileCalDAVUpdateGrantedDelegatePermissionRequest *)v8 requestID];
  v10 = [(MobileCalDAVDADaemonAccount *)self updateGrantedDelegatePermissionRequests];
  objc_sync_enter(v10);
  v11 = [(MobileCalDAVDADaemonAccount *)self updateGrantedDelegatePermissionRequests];
  [v11 addObject:v8];

  v12 = [(MobileCalDAVDADaemonAccount *)self updateGrantedDelegatePermissionRequests];
  v13 = [v12 count];

  objc_sync_exit(v10);
  if (v13 == &dword_0 + 1)
  {
    [(MobileCalDAVUpdateGrantedDelegatePermissionRequest *)v8 performRequest];
  }

  return v9;
}

- (void)cancelUpdateGrantedDelegatePermissionRequestWithID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MobileCalDAVDADaemonAccount *)self updateGrantedDelegatePermissionRequests];
    objc_sync_enter(v5);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(MobileCalDAVDADaemonAccount *)self updateGrantedDelegatePermissionRequests];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [v10 requestID];
          v12 = [v4 isEqualToString:v11];

          if (v12)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    objc_sync_exit(v5);
    [v7 cancel];
  }
}

- (void)cancelAllUpdateGrantedDelegatePermissionRequests
{
  v3 = [(MobileCalDAVDADaemonAccount *)self updateGrantedDelegatePermissionRequests];
  objc_sync_enter(v3);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(MobileCalDAVDADaemonAccount *)self updateGrantedDelegatePermissionRequests];
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

  v8 = [(MobileCalDAVDADaemonAccount *)self updateGrantedDelegatePermissionRequests];
  [v8 removeAllObjects];

  objc_sync_exit(v3);
}

- (void)updateGrantedDelegatePermissionRequestIsGoingAway:(id)a3
{
  v4 = a3;
  v5 = dataaccess_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = nullsub_2;
  block[3] = &unk_28790;
  v6 = v4;
  v14 = v6;
  dispatch_async(v5, block);

  v7 = [(MobileCalDAVDADaemonAccount *)self updateGrantedDelegatePermissionRequests];
  objc_sync_enter(v7);
  v8 = [(MobileCalDAVDADaemonAccount *)self updateGrantedDelegatePermissionRequests];
  [v8 removeObject:v6];

  v9 = [(MobileCalDAVDADaemonAccount *)self updateGrantedDelegatePermissionRequests];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [(MobileCalDAVDADaemonAccount *)self updateGrantedDelegatePermissionRequests];
    v12 = [v11 firstObject];
  }

  else
  {
    v12 = 0;
  }

  objc_sync_exit(v7);

  if (v12)
  {
    [v12 performRequest];
  }
}

@end