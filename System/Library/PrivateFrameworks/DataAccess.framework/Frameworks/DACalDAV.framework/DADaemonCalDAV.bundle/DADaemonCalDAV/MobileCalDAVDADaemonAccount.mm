@interface MobileCalDAVDADaemonAccount
- (BOOL)isDisabled;
- (MobileCalDAVDADaemonAccount)initWithBackingAccountInfo:(id)info;
- (id)_startOfficeHoursRequestWithConsumer:(id)consumer error:(id *)error startRequestBlock:(id)block;
- (id)beginDownloadingAttachmentWithUUID:(id)d consumer:(id)consumer;
- (id)childAccountWithIdentifier:(id)identifier;
- (id)childAccountsWithAccountTypeIdentifier:(id)identifier;
- (id)createChildAccountWithAccountTypeIdentifier:(id)identifier;
- (id)performCalendarDirectorySearchForTerms:(id)terms recordTypes:(id)types resultLimit:(unint64_t)limit consumer:(id)consumer;
- (id)reportShareRequestAsJunkForCalendar:(id)calendar consumer:(id)consumer;
- (id)requestCalendarAvailabilityForStartDate:(id)date endDate:(id)endDate ignoredEventID:(id)d addresses:(id)addresses consumer:(id)consumer;
- (id)requestGrantedDelegatesListWithConsumer:(id)consumer;
- (id)respondToShareRequestForCalendar:(id)calendar withResponse:(int64_t)response consumer:(id)consumer;
- (id)setOfficeHours:(id)hours withConsumer:(id)consumer error:(id *)error;
- (id)stateString;
- (id)updateGrantedDelegatePermission:(id)permission consumer:(id)consumer;
- (void)calendarAvailabilityRequestIsGoingAway:(id)away;
- (void)calendarDirectorySearchIsGoingAway:(id)away;
- (void)cancelAllCalendarAvailabilityRequests;
- (void)cancelAllCalendarDirectorySearches;
- (void)cancelAllGrantedDelegatesListRequests;
- (void)cancelAllGroupExpansions;
- (void)cancelAllSharingRequests;
- (void)cancelAllUpdateGrantedDelegatePermissionRequests;
- (void)cancelCalendarAvailabilityRequestWithID:(id)d;
- (void)cancelCalendarDirectorySearchWithID:(id)d;
- (void)cancelDownloadingInstance:(id)instance error:(id)error;
- (void)cancelGrantedDelegatesListRequestWithID:(id)d;
- (void)cancelOfficeHoursRequestWithID:(id)d;
- (void)cancelShareResponseInstance:(id)instance error:(id)error;
- (void)cancelUpdateGrantedDelegatePermissionRequestWithID:(id)d;
- (void)dealloc;
- (void)grantedDelegatesListRequestIsGoingAway:(id)away;
- (void)officeHoursRequestWithIDFinished:(id)finished;
- (void)performGroupExpansionForPrincipalPath:(id)path consumer:(id)consumer;
- (void)removeAccount:(id)account;
- (void)updateGrantedDelegatePermissionRequestIsGoingAway:(id)away;
@end

@implementation MobileCalDAVDADaemonAccount

- (id)requestGrantedDelegatesListWithConsumer:(id)consumer
{
  consumerCopy = consumer;
  v5 = [[MobileCalDAVGrantedDelegatesListRequest alloc] initWithConsumer:consumerCopy account:self];
  requestID = [(MobileCalDAVGrantedDelegatesListRequest *)v5 requestID];
  grantedDelegatesListRequests = [(MobileCalDAVDADaemonAccount *)self grantedDelegatesListRequests];
  objc_sync_enter(grantedDelegatesListRequests);
  grantedDelegatesListRequests2 = [(MobileCalDAVDADaemonAccount *)self grantedDelegatesListRequests];
  [grantedDelegatesListRequests2 setObject:v5 forKeyedSubscript:requestID];

  objc_sync_exit(grantedDelegatesListRequests);
  [(MobileCalDAVGrantedDelegatesListRequest *)v5 performRequest];

  return requestID;
}

- (void)cancelGrantedDelegatesListRequestWithID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v8 = dCopy;
    grantedDelegatesListRequests = [(MobileCalDAVDADaemonAccount *)self grantedDelegatesListRequests];
    objc_sync_enter(grantedDelegatesListRequests);
    grantedDelegatesListRequests2 = [(MobileCalDAVDADaemonAccount *)self grantedDelegatesListRequests];
    v7 = [grantedDelegatesListRequests2 objectForKey:v8];

    objc_sync_exit(grantedDelegatesListRequests);
    [v7 cancel];

    dCopy = v8;
  }
}

- (void)cancelAllGrantedDelegatesListRequests
{
  grantedDelegatesListRequests = [(MobileCalDAVDADaemonAccount *)self grantedDelegatesListRequests];
  objc_sync_enter(grantedDelegatesListRequests);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  grantedDelegatesListRequests2 = [(MobileCalDAVDADaemonAccount *)self grantedDelegatesListRequests];
  v5 = [grantedDelegatesListRequests2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(grantedDelegatesListRequests2);
        }

        [*(*(&v9 + 1) + 8 * v7) cancel];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [grantedDelegatesListRequests2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  grantedDelegatesListRequests3 = [(MobileCalDAVDADaemonAccount *)self grantedDelegatesListRequests];
  [grantedDelegatesListRequests3 removeAllObjects];

  objc_sync_exit(grantedDelegatesListRequests);
}

- (void)grantedDelegatesListRequestIsGoingAway:(id)away
{
  awayCopy = away;
  v5 = dataaccess_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = nullsub_1;
  block[3] = &unk_28790;
  v6 = awayCopy;
  v11 = v6;
  dispatch_async(v5, block);

  grantedDelegatesListRequests = [(MobileCalDAVDADaemonAccount *)self grantedDelegatesListRequests];
  objc_sync_enter(grantedDelegatesListRequests);
  requestID = [v6 requestID];
  grantedDelegatesListRequests2 = [(MobileCalDAVDADaemonAccount *)self grantedDelegatesListRequests];
  [grantedDelegatesListRequests2 removeObjectForKey:requestID];

  objc_sync_exit(grantedDelegatesListRequests);
}

- (id)requestCalendarAvailabilityForStartDate:(id)date endDate:(id)endDate ignoredEventID:(id)d addresses:(id)addresses consumer:(id)consumer
{
  dateCopy = date;
  endDateCopy = endDate;
  dCopy = d;
  addressesCopy = addresses;
  consumerCopy = consumer;
  v17 = [[MobileCalDAVCalendarAvailabilityRequest alloc] initWithStartDate:dateCopy endDate:endDateCopy ignoredEventID:dCopy addresses:addressesCopy consumer:consumerCopy account:self];
  requestID = [(MobileCalDAVCalendarAvailabilityRequest *)v17 requestID];
  calendarAvailabilityRequests = [(MobileCalDAVDADaemonAccount *)self calendarAvailabilityRequests];
  objc_sync_enter(calendarAvailabilityRequests);
  calendarAvailabilityRequests2 = [(MobileCalDAVDADaemonAccount *)self calendarAvailabilityRequests];
  [calendarAvailabilityRequests2 setObject:v17 forKeyedSubscript:requestID];

  objc_sync_exit(calendarAvailabilityRequests);
  [(MobileCalDAVCalendarAvailabilityRequest *)v17 performRequest];

  return requestID;
}

- (void)cancelCalendarAvailabilityRequestWithID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v8 = dCopy;
    calendarAvailabilityRequests = [(MobileCalDAVDADaemonAccount *)self calendarAvailabilityRequests];
    objc_sync_enter(calendarAvailabilityRequests);
    calendarAvailabilityRequests2 = [(MobileCalDAVDADaemonAccount *)self calendarAvailabilityRequests];
    v7 = [calendarAvailabilityRequests2 objectForKey:v8];

    objc_sync_exit(calendarAvailabilityRequests);
    [v7 cancel];

    dCopy = v8;
  }
}

- (void)cancelAllCalendarAvailabilityRequests
{
  calendarAvailabilityRequests = [(MobileCalDAVDADaemonAccount *)self calendarAvailabilityRequests];
  objc_sync_enter(calendarAvailabilityRequests);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  calendarAvailabilityRequests2 = [(MobileCalDAVDADaemonAccount *)self calendarAvailabilityRequests];
  v5 = [calendarAvailabilityRequests2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(calendarAvailabilityRequests2);
        }

        [*(*(&v9 + 1) + 8 * v7) cancel];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [calendarAvailabilityRequests2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  calendarAvailabilityRequests3 = [(MobileCalDAVDADaemonAccount *)self calendarAvailabilityRequests];
  [calendarAvailabilityRequests3 removeAllObjects];

  objc_sync_exit(calendarAvailabilityRequests);
}

- (void)calendarAvailabilityRequestIsGoingAway:(id)away
{
  awayCopy = away;
  v5 = dataaccess_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_384C;
  block[3] = &unk_28790;
  v6 = awayCopy;
  v11 = v6;
  dispatch_async(v5, block);

  calendarAvailabilityRequests = [(MobileCalDAVDADaemonAccount *)self calendarAvailabilityRequests];
  objc_sync_enter(calendarAvailabilityRequests);
  requestID = [v6 requestID];
  calendarAvailabilityRequests2 = [(MobileCalDAVDADaemonAccount *)self calendarAvailabilityRequests];
  [calendarAvailabilityRequests2 removeObjectForKey:requestID];

  objc_sync_exit(calendarAvailabilityRequests);
}

- (MobileCalDAVDADaemonAccount)initWithBackingAccountInfo:(id)info
{
  v19.receiver = self;
  v19.super_class = MobileCalDAVDADaemonAccount;
  v3 = [(MobileCalDAVDADaemonAccount *)&v19 initWithBackingAccountInfo:info];
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
    selfCopy = self;
    _os_log_impl(&dword_0, v3, v4, "MobileCalDAVDADaemonAccount %p going away", buf, 0xCu);
  }

  [(MobileCalDAVDADaemonAccount *)self cancelAllCalendarDirectorySearches];
  [(MobileCalDAVDADaemonAccount *)self cancelAllGroupExpansions];
  [(MobileCalDAVDADaemonAccount *)self cancelAllCalendarAvailabilityRequests];
  mobileCalDAVAccount = [(MobileCalDAVDADaemonAccount *)self mobileCalDAVAccount];
  [mobileCalDAVAccount cancelAllAttachmentDownloads];

  [(MobileCalDAVDADaemonAccount *)self cancelAllSharingRequests];
  [(MobileCalDAVDADaemonAccount *)self cancelAllGrantedDelegatesListRequests];
  [(MobileCalDAVDADaemonAccount *)self cancelAllUpdateGrantedDelegatePermissionRequests];
  v6.receiver = self;
  v6.super_class = MobileCalDAVDADaemonAccount;
  [(MobileCalDAVDADaemonAccount *)&v6 dealloc];
}

- (id)childAccountsWithAccountTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  backingAccountInfo = [(MobileCalDAVDADaemonAccount *)self backingAccountInfo];
  v6 = [backingAccountInfo childAccountsWithAccountTypeIdentifier:identifierCopy];

  return v6;
}

- (id)childAccountWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[DADAgentManager sharedManager];
  v6 = [v5 accountWithAccountID:identifierCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  backingAccountInfo = [v6 backingAccountInfo];
  parentAccount = [backingAccountInfo parentAccount];
  identifier = [parentAccount identifier];
  backingAccountInfo2 = [(MobileCalDAVDADaemonAccount *)self backingAccountInfo];
  identifier2 = [backingAccountInfo2 identifier];
  v12 = [identifier isEqualToString:identifier2];

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

- (id)createChildAccountWithAccountTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = sharedDAAccountStore();
  v6 = [ACAccount alloc];
  v7 = [v5 accountTypeWithAccountTypeIdentifier:identifierCopy];

  v8 = [v6 initWithAccountType:v7];
  [v8 setActive:1];
  backingAccountInfo = [(MobileCalDAVDADaemonAccount *)self backingAccountInfo];
  [v8 setParentAccount:backingAccountInfo];

  [v8 setAuthenticationType:kAccountAuthenticationTypeParent];
  v10 = [objc_alloc(objc_opt_class()) initWithBackingAccountInfo:v8];
  host = [(MobileCalDAVDADaemonAccount *)self host];
  [v10 setHost:host];

  return v10;
}

- (void)removeAccount:(id)account
{
  accountCopy = account;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_15DBC(a2, self);
  }

  v6 = accountCopy;
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

  taskManager = [(MobileCalDAVDADaemonAccount *)self taskManager];

  v4 = +[DABabysitter sharedBabysitter];
  mobileCalDAVAccount = [(MobileCalDAVDADaemonAccount *)self mobileCalDAVAccount];
  v6 = [v4 accountShouldContinue:mobileCalDAVAccount];

  if (taskManager)
  {
    goto LABEL_5;
  }

  if (v6)
  {
    stateString = 0;
  }

  else
  {
LABEL_5:
    v9.receiver = self;
    v9.super_class = MobileCalDAVDADaemonAccount;
    stateString = [(MobileCalDAVDADaemonAccount *)&v9 stateString];
  }

  return stateString;
}

- (BOOL)isDisabled
{
  v10.receiver = self;
  v10.super_class = MobileCalDAVDADaemonAccount;
  if (![(MobileCalDAVDADaemonAccount *)&v10 isDisabled])
  {
    backingAccountInfo = [(MobileCalDAVDADaemonAccount *)self backingAccountInfo];
    v4 = [backingAccountInfo isEnabledForDataclass:ACAccountDataclassCalendars];

    if (v4)
    {
      return 0;
    }

    v6 = DALoggingwithCategory();
    v7 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v6, v7))
    {
      backingAccountInfo2 = [(MobileCalDAVDADaemonAccount *)self backingAccountInfo];
      identifier = [backingAccountInfo2 identifier];
      *buf = 138543362;
      v12 = identifier;
      _os_log_impl(&dword_0, v6, v7, "Account %{public}@ is disabled because it is not enabled for the calendar data class", buf, 0xCu);
    }
  }

  return 1;
}

- (id)beginDownloadingAttachmentWithUUID:(id)d consumer:(id)consumer
{
  consumerCopy = consumer;
  dCopy = d;
  mobileCalDAVAccount = [(MobileCalDAVDADaemonAccount *)self mobileCalDAVAccount];
  v9 = [mobileCalDAVAccount beginDownloadingAttachmentWithUUID:dCopy consumer:consumerCopy];

  return v9;
}

- (void)cancelDownloadingInstance:(id)instance error:(id)error
{
  errorCopy = error;
  instanceCopy = instance;
  mobileCalDAVAccount = [(MobileCalDAVDADaemonAccount *)self mobileCalDAVAccount];
  [mobileCalDAVAccount cancelDownloadingInstance:instanceCopy error:errorCopy];
}

- (id)performCalendarDirectorySearchForTerms:(id)terms recordTypes:(id)types resultLimit:(unint64_t)limit consumer:(id)consumer
{
  termsCopy = terms;
  typesCopy = types;
  consumerCopy = consumer;
  v13 = [[MobileCalDAVDirectorySearch alloc] initWithTerms:termsCopy recordTypes:typesCopy resultLimit:limit consumer:consumerCopy account:self];
  searchID = [(MobileCalDAVDirectorySearch *)v13 searchID];
  directorySearches = [(MobileCalDAVDADaemonAccount *)self directorySearches];
  objc_sync_enter(directorySearches);
  directorySearches2 = [(MobileCalDAVDADaemonAccount *)self directorySearches];
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
    directorySearches = [(MobileCalDAVDADaemonAccount *)self directorySearches];
    objc_sync_enter(directorySearches);
    directorySearches2 = [(MobileCalDAVDADaemonAccount *)self directorySearches];
    v7 = [directorySearches2 objectForKey:v8];

    objc_sync_exit(directorySearches);
    [v7 cancel];

    dCopy = v8;
  }
}

- (void)cancelAllCalendarDirectorySearches
{
  directorySearches = [(MobileCalDAVDADaemonAccount *)self directorySearches];
  objc_sync_enter(directorySearches);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  directorySearches2 = [(MobileCalDAVDADaemonAccount *)self directorySearches];
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

  directorySearches3 = [(MobileCalDAVDADaemonAccount *)self directorySearches];
  [directorySearches3 removeAllObjects];

  objc_sync_exit(directorySearches);
}

- (void)calendarDirectorySearchIsGoingAway:(id)away
{
  awayCopy = away;
  v5 = dataaccess_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C19C;
  block[3] = &unk_28790;
  v6 = awayCopy;
  v11 = v6;
  dispatch_async(v5, block);

  searchID = [v6 searchID];
  directorySearches = [(MobileCalDAVDADaemonAccount *)self directorySearches];
  objc_sync_enter(directorySearches);
  directorySearches2 = [(MobileCalDAVDADaemonAccount *)self directorySearches];
  [directorySearches2 removeObjectForKey:searchID];

  objc_sync_exit(directorySearches);
}

- (id)setOfficeHours:(id)hours withConsumer:(id)consumer error:(id *)error
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_C338;
  v11[3] = &unk_289E0;
  hoursCopy = hours;
  v8 = hoursCopy;
  v9 = [(MobileCalDAVDADaemonAccount *)self _startOfficeHoursRequestWithConsumer:consumer error:error startRequestBlock:v11];

  return v9;
}

- (id)_startOfficeHoursRequestWithConsumer:(id)consumer error:(id *)error startRequestBlock:(id)block
{
  blockCopy = block;
  consumerCopy = consumer;
  v9 = [[DACalDAVOfficeHoursRequest alloc] initWithAccount:self consumer:consumerCopy];

  blockCopy[2](blockCopy, v9);
  officeHoursRequests = [(MobileCalDAVDADaemonAccount *)self officeHoursRequests];
  requestID = [(DACalDAVOfficeHoursRequest *)v9 requestID];
  [officeHoursRequests setObject:v9 forKeyedSubscript:requestID];

  requestID2 = [(DACalDAVOfficeHoursRequest *)v9 requestID];

  return requestID2;
}

- (void)cancelOfficeHoursRequestWithID:(id)d
{
  dCopy = d;
  officeHoursRequests = [(MobileCalDAVDADaemonAccount *)self officeHoursRequests];
  v6 = [officeHoursRequests objectForKeyedSubscript:dCopy];

  [v6 cancel];
  [(MobileCalDAVDADaemonAccount *)self officeHoursRequestWithIDFinished:dCopy];
}

- (void)officeHoursRequestWithIDFinished:(id)finished
{
  finishedCopy = finished;
  officeHoursRequests = [(MobileCalDAVDADaemonAccount *)self officeHoursRequests];
  [officeHoursRequests removeObjectForKey:finishedCopy];
}

- (void)performGroupExpansionForPrincipalPath:(id)path consumer:(id)consumer
{
  pathCopy = path;
  consumerCopy = consumer;
  v7 = [[MobileCalDAVGroupExpansion alloc] initWithPrincipalPath:pathCopy consumer:consumerCopy account:self];
  groupExpansions = [(MobileCalDAVDADaemonAccount *)self groupExpansions];
  objc_sync_enter(groupExpansions);
  groupExpansions2 = [(MobileCalDAVDADaemonAccount *)self groupExpansions];
  [groupExpansions2 addObject:v7];

  objc_sync_exit(groupExpansions);
  [(MobileCalDAVGroupExpansion *)v7 perform];
}

- (void)cancelAllGroupExpansions
{
  groupExpansions = [(MobileCalDAVDADaemonAccount *)self groupExpansions];
  objc_sync_enter(groupExpansions);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  groupExpansions2 = [(MobileCalDAVDADaemonAccount *)self groupExpansions];
  v5 = [groupExpansions2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(groupExpansions2);
        }

        [*(*(&v9 + 1) + 8 * v7) cancel];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [groupExpansions2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  groupExpansions3 = [(MobileCalDAVDADaemonAccount *)self groupExpansions];
  [groupExpansions3 removeAllObjects];

  objc_sync_exit(groupExpansions);
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
    sub_1621C();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  sub_16288();
LABEL_3:
  v11 = [MobileCalDAVSharingResponse responseWithCalendarID:calendarCopy consumer:v10 account:self];
  shareResponses = [(MobileCalDAVDADaemonAccount *)self shareResponses];
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
    sub_162F4();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  sub_16360();
LABEL_3:
  v9 = [MobileCalDAVSharingResponse responseWithCalendarID:calendarCopy consumer:v8 account:self];
  shareResponses = [(MobileCalDAVDADaemonAccount *)self shareResponses];
  responseID = [v9 responseID];
  [shareResponses setObject:v9 forKeyedSubscript:responseID];

  [v9 reportAsJunk];
  responseID2 = [v9 responseID];

  return responseID2;
}

- (void)cancelShareResponseInstance:(id)instance error:(id)error
{
  instanceCopy = instance;
  if (!instanceCopy)
  {
    sub_163CC();
  }

  shareResponses = [(MobileCalDAVDADaemonAccount *)self shareResponses];
  v6 = [shareResponses objectForKeyedSubscript:instanceCopy];

  [v6 cancel];
  shareResponses2 = [(MobileCalDAVDADaemonAccount *)self shareResponses];
  [shareResponses2 removeObjectForKey:instanceCopy];
}

- (void)cancelAllSharingRequests
{
  shareResponses = [(MobileCalDAVDADaemonAccount *)self shareResponses];
  objc_sync_enter(shareResponses);
  v4 = [NSError errorWithDomain:DAErrorDomain code:-1 userInfo:0];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  shareResponses2 = [(MobileCalDAVDADaemonAccount *)self shareResponses];
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

  shareResponses3 = [(MobileCalDAVDADaemonAccount *)self shareResponses];
  [shareResponses3 removeAllObjects];

  objc_sync_exit(shareResponses);
}

- (id)updateGrantedDelegatePermission:(id)permission consumer:(id)consumer
{
  permissionCopy = permission;
  consumerCopy = consumer;
  v8 = [[MobileCalDAVUpdateGrantedDelegatePermissionRequest alloc] initWithGrantedDelegate:permissionCopy consumer:consumerCopy account:self];
  requestID = [(MobileCalDAVUpdateGrantedDelegatePermissionRequest *)v8 requestID];
  updateGrantedDelegatePermissionRequests = [(MobileCalDAVDADaemonAccount *)self updateGrantedDelegatePermissionRequests];
  objc_sync_enter(updateGrantedDelegatePermissionRequests);
  updateGrantedDelegatePermissionRequests2 = [(MobileCalDAVDADaemonAccount *)self updateGrantedDelegatePermissionRequests];
  [updateGrantedDelegatePermissionRequests2 addObject:v8];

  updateGrantedDelegatePermissionRequests3 = [(MobileCalDAVDADaemonAccount *)self updateGrantedDelegatePermissionRequests];
  v13 = [updateGrantedDelegatePermissionRequests3 count];

  objc_sync_exit(updateGrantedDelegatePermissionRequests);
  if (v13 == &dword_0 + 1)
  {
    [(MobileCalDAVUpdateGrantedDelegatePermissionRequest *)v8 performRequest];
  }

  return requestID;
}

- (void)cancelUpdateGrantedDelegatePermissionRequestWithID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    updateGrantedDelegatePermissionRequests = [(MobileCalDAVDADaemonAccount *)self updateGrantedDelegatePermissionRequests];
    objc_sync_enter(updateGrantedDelegatePermissionRequests);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    updateGrantedDelegatePermissionRequests2 = [(MobileCalDAVDADaemonAccount *)self updateGrantedDelegatePermissionRequests];
    v7 = [updateGrantedDelegatePermissionRequests2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(updateGrantedDelegatePermissionRequests2);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          requestID = [v10 requestID];
          v12 = [dCopy isEqualToString:requestID];

          if (v12)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [updateGrantedDelegatePermissionRequests2 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    objc_sync_exit(updateGrantedDelegatePermissionRequests);
    [v7 cancel];
  }
}

- (void)cancelAllUpdateGrantedDelegatePermissionRequests
{
  updateGrantedDelegatePermissionRequests = [(MobileCalDAVDADaemonAccount *)self updateGrantedDelegatePermissionRequests];
  objc_sync_enter(updateGrantedDelegatePermissionRequests);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  updateGrantedDelegatePermissionRequests2 = [(MobileCalDAVDADaemonAccount *)self updateGrantedDelegatePermissionRequests];
  v5 = [updateGrantedDelegatePermissionRequests2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(updateGrantedDelegatePermissionRequests2);
        }

        [*(*(&v9 + 1) + 8 * v7) cancel];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [updateGrantedDelegatePermissionRequests2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  updateGrantedDelegatePermissionRequests3 = [(MobileCalDAVDADaemonAccount *)self updateGrantedDelegatePermissionRequests];
  [updateGrantedDelegatePermissionRequests3 removeAllObjects];

  objc_sync_exit(updateGrantedDelegatePermissionRequests);
}

- (void)updateGrantedDelegatePermissionRequestIsGoingAway:(id)away
{
  awayCopy = away;
  v5 = dataaccess_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = nullsub_2;
  block[3] = &unk_28790;
  v6 = awayCopy;
  v14 = v6;
  dispatch_async(v5, block);

  updateGrantedDelegatePermissionRequests = [(MobileCalDAVDADaemonAccount *)self updateGrantedDelegatePermissionRequests];
  objc_sync_enter(updateGrantedDelegatePermissionRequests);
  updateGrantedDelegatePermissionRequests2 = [(MobileCalDAVDADaemonAccount *)self updateGrantedDelegatePermissionRequests];
  [updateGrantedDelegatePermissionRequests2 removeObject:v6];

  updateGrantedDelegatePermissionRequests3 = [(MobileCalDAVDADaemonAccount *)self updateGrantedDelegatePermissionRequests];
  v10 = [updateGrantedDelegatePermissionRequests3 count];

  if (v10)
  {
    updateGrantedDelegatePermissionRequests4 = [(MobileCalDAVDADaemonAccount *)self updateGrantedDelegatePermissionRequests];
    firstObject = [updateGrantedDelegatePermissionRequests4 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  objc_sync_exit(updateGrantedDelegatePermissionRequests);

  if (firstObject)
  {
    [firstObject performRequest];
  }
}

@end