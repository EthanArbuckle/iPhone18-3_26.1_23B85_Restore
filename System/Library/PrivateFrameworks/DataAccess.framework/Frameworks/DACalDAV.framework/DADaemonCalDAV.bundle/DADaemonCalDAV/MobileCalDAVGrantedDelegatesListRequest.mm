@interface MobileCalDAVGrantedDelegatesListRequest
+ (id)_grantedDelegateFromCalDAVDetails:(id)details allowWrite:(BOOL)write;
- (MobileCalDAVGrantedDelegatesListRequest)initWithConsumer:(id)consumer account:(id)account;
- (void)_finishedWithResults:(id)results error:(id)error;
- (void)cancel;
- (void)dealloc;
- (void)performRequest;
@end

@implementation MobileCalDAVGrantedDelegatesListRequest

- (MobileCalDAVGrantedDelegatesListRequest)initWithConsumer:(id)consumer account:(id)account
{
  consumerCopy = consumer;
  accountCopy = account;
  v16.receiver = self;
  v16.super_class = MobileCalDAVGrantedDelegatesListRequest;
  v9 = [(MobileCalDAVGrantedDelegatesListRequest *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_consumer, consumer);
    objc_storeStrong(&v10->_account, account);
    v11 = +[NSString da_newGUID];
    requestID = v10->_requestID;
    v10->_requestID = v11;

    v13 = [[DACoreDAVTaskManager alloc] initWithAccount:v10->_account];
    taskManager = v10->_taskManager;
    v10->_taskManager = v13;
  }

  return v10;
}

- (void)dealloc
{
  if (!self->_finished)
  {
    sub_15D34(a2, self);
  }

  [(DACoreDAVTaskManager *)self->_taskManager shutdown];
  v3.receiver = self;
  v3.super_class = MobileCalDAVGrantedDelegatesListRequest;
  [(MobileCalDAVGrantedDelegatesListRequest *)&v3 dealloc];
}

- (void)performRequest
{
  mobileCalDAVAccount = [(MobileCalDAVDADaemonAccount *)self->_account mobileCalDAVAccount];
  mainPrincipal = [mobileCalDAVAccount mainPrincipal];

  v5 = [CalDAVGetGrantedDelegatesTaskGroup alloc];
  principalURL = [mainPrincipal principalURL];
  v7 = [v5 initWithAccountInfoProvider:mainPrincipal principalURL:principalURL taskManager:self->_taskManager];
  taskGroup = self->_taskGroup;
  self->_taskGroup = v7;

  -[CalDAVGetGrantedDelegatesTaskGroup setServerSupportsExpandPropertyReport:](self->_taskGroup, "setServerSupportsExpandPropertyReport:", [mainPrincipal isExpandPropertyReportSupported]);
  [(CalDAVGetGrantedDelegatesTaskGroup *)self->_taskGroup setFetchPrincipalDetails:1];
  objc_initWeak(&location, self);
  objc_initWeak(&from, self->_taskGroup);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_3C7C;
  v15 = &unk_287B8;
  objc_copyWeak(&v16, &location);
  objc_copyWeak(&v17, &from);
  [(CalDAVGetGrantedDelegatesTaskGroup *)self->_taskGroup setCompletionBlock:&v12];
  v9 = DALoggingwithCategory();
  v10 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v9, v10))
  {
    v11 = self->_taskGroup;
    *buf = 138412290;
    v21 = v11;
    _os_log_impl(&dword_0, v9, v10, "Starting GetGrantedDelegatesTaskGroup: [%@]", buf, 0xCu);
  }

  [(CalDAVGetGrantedDelegatesTaskGroup *)self->_taskGroup startTaskGroup:v12];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)cancel
{
  [(DACoreDAVTaskManager *)self->_taskManager cancelAllTasks];
  v3 = [NSError errorWithDomain:DAErrorDomain code:-1 userInfo:0];
  [(MobileCalDAVGrantedDelegatesListRequest *)self _finishedWithResults:0 error:v3];
}

- (void)_finishedWithResults:(id)results error:(id)error
{
  errorCopy = error;
  if (!self->_finished)
  {
    resultsCopy = results;
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v8, v9))
    {
      v10 = 138412546;
      selfCopy = self;
      v12 = 2112;
      v13 = errorCopy;
      _os_log_impl(&dword_0, v8, v9, "[%@] finished with error %@", &v10, 0x16u);
    }

    self->_finished = 1;
    [(DAEventsGrantedDelegatesListResponseConsumer *)self->_consumer grantedDelegatesListRequestFinishedWithResults:resultsCopy error:errorCopy];

    [(MobileCalDAVDADaemonAccount *)self->_account grantedDelegatesListRequestIsGoingAway:self];
  }
}

+ (id)_grantedDelegateFromCalDAVDetails:(id)details allowWrite:(BOOL)write
{
  writeCopy = write;
  detailsCopy = details;
  v6 = objc_opt_new();
  principalURL = [detailsCopy principalURL];
  cDVRawPath = [principalURL CDVRawPath];
  [v6 setUri:cDVRawPath];

  displayName = [detailsCopy displayName];
  [v6 setDisplayName:displayName];

  addresses = [detailsCopy addresses];
  v11 = [addresses count];

  if (v11)
  {
    preferredAddresses = [detailsCopy preferredAddresses];
    v13 = [CalDAVCalendarUserAddress preferredAddress:preferredAddresses];
    [v6 setPreferredUserAddress:v13];
  }

  if (writeCopy)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  [v6 setPermission:v14];

  return v6;
}

@end