@interface MobileCalDAVGrantedDelegatesListRequest
+ (id)_grantedDelegateFromCalDAVDetails:(id)a3 allowWrite:(BOOL)a4;
- (MobileCalDAVGrantedDelegatesListRequest)initWithConsumer:(id)a3 account:(id)a4;
- (void)_finishedWithResults:(id)a3 error:(id)a4;
- (void)cancel;
- (void)dealloc;
- (void)performRequest;
@end

@implementation MobileCalDAVGrantedDelegatesListRequest

- (MobileCalDAVGrantedDelegatesListRequest)initWithConsumer:(id)a3 account:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = MobileCalDAVGrantedDelegatesListRequest;
  v9 = [(MobileCalDAVGrantedDelegatesListRequest *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_consumer, a3);
    objc_storeStrong(&v10->_account, a4);
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
  v3 = [(MobileCalDAVDADaemonAccount *)self->_account mobileCalDAVAccount];
  v4 = [v3 mainPrincipal];

  v5 = [CalDAVGetGrantedDelegatesTaskGroup alloc];
  v6 = [v4 principalURL];
  v7 = [v5 initWithAccountInfoProvider:v4 principalURL:v6 taskManager:self->_taskManager];
  taskGroup = self->_taskGroup;
  self->_taskGroup = v7;

  -[CalDAVGetGrantedDelegatesTaskGroup setServerSupportsExpandPropertyReport:](self->_taskGroup, "setServerSupportsExpandPropertyReport:", [v4 isExpandPropertyReportSupported]);
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

- (void)_finishedWithResults:(id)a3 error:(id)a4
{
  v6 = a4;
  if (!self->_finished)
  {
    v7 = a3;
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v8, v9))
    {
      v10 = 138412546;
      v11 = self;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_0, v8, v9, "[%@] finished with error %@", &v10, 0x16u);
    }

    self->_finished = 1;
    [(DAEventsGrantedDelegatesListResponseConsumer *)self->_consumer grantedDelegatesListRequestFinishedWithResults:v7 error:v6];

    [(MobileCalDAVDADaemonAccount *)self->_account grantedDelegatesListRequestIsGoingAway:self];
  }
}

+ (id)_grantedDelegateFromCalDAVDetails:(id)a3 allowWrite:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [v5 principalURL];
  v8 = [v7 CDVRawPath];
  [v6 setUri:v8];

  v9 = [v5 displayName];
  [v6 setDisplayName:v9];

  v10 = [v5 addresses];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [v5 preferredAddresses];
    v13 = [CalDAVCalendarUserAddress preferredAddress:v12];
    [v6 setPreferredUserAddress:v13];
  }

  if (v4)
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