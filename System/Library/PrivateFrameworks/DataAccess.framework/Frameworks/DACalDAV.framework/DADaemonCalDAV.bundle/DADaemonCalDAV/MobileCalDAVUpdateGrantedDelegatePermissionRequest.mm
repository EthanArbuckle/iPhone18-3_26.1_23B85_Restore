@interface MobileCalDAVUpdateGrantedDelegatePermissionRequest
- (MobileCalDAVUpdateGrantedDelegatePermissionRequest)initWithGrantedDelegate:(id)delegate consumer:(id)consumer account:(id)account;
- (void)_finishedWithError:(id)error;
- (void)cancel;
- (void)dealloc;
- (void)performRequest;
@end

@implementation MobileCalDAVUpdateGrantedDelegatePermissionRequest

- (MobileCalDAVUpdateGrantedDelegatePermissionRequest)initWithGrantedDelegate:(id)delegate consumer:(id)consumer account:(id)account
{
  delegateCopy = delegate;
  consumerCopy = consumer;
  accountCopy = account;
  v19.receiver = self;
  v19.super_class = MobileCalDAVUpdateGrantedDelegatePermissionRequest;
  v12 = [(MobileCalDAVUpdateGrantedDelegatePermissionRequest *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_grantedDelegate, delegate);
    objc_storeStrong(&v13->_consumer, consumer);
    objc_storeStrong(&v13->_account, account);
    v14 = +[NSString da_newGUID];
    requestID = v13->_requestID;
    v13->_requestID = v14;

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
    sub_160C8(a2, self);
  }

  [(DACoreDAVTaskManager *)self->_taskManager shutdown];
  v3.receiver = self;
  v3.super_class = MobileCalDAVUpdateGrantedDelegatePermissionRequest;
  [(MobileCalDAVUpdateGrantedDelegatePermissionRequest *)&v3 dealloc];
}

- (void)performRequest
{
  p_account = &self->_account;
  mobileCalDAVAccount = [(MobileCalDAVDADaemonAccount *)self->_account mobileCalDAVAccount];
  mainPrincipal = [mobileCalDAVAccount mainPrincipal];

  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  scheme = [(MobileCalDAVDADaemonAccount *)*p_account scheme];
  host = [(MobileCalDAVDADaemonAccount *)*p_account host];
  v10 = [NSNumber numberWithInteger:[(MobileCalDAVDADaemonAccount *)*p_account port]];
  v11 = [(DAEGrantedDelegate *)self->_grantedDelegate uri];
  v12 = [NSURL CDVURLWithScheme:scheme host:host port:v10 path:v11];

  permission = [(DAEGrantedDelegate *)self->_grantedDelegate permission];
  v14 = v7;
  if ((permission + 1) < 2)
  {
    goto LABEL_6;
  }

  if (permission == &dword_0 + 2)
  {
    v14 = v5;
    goto LABEL_6;
  }

  v14 = v6;
  if (permission == &dword_0 + 1)
  {
LABEL_6:
    [v14 addObject:v12];
  }

  v15 = [[CalDAVUpdateGrantedDelegatesTaskGroup alloc] initWithAccountInfoProvider:mainPrincipal addWriteURLs:v5 addReadURLs:v6 removeURLs:v7 taskManager:self->_taskManager];
  taskGroup = self->_taskGroup;
  self->_taskGroup = v15;

  objc_initWeak(&location, self);
  objc_initWeak(&from, self->_taskGroup);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_BAF8;
  v21[3] = &unk_287B8;
  objc_copyWeak(&v22, &location);
  objc_copyWeak(&v23, &from);
  [(CalDAVUpdateGrantedDelegatesTaskGroup *)self->_taskGroup setCompletionBlock:v21];
  v17 = DALoggingwithCategory();
  v18 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v17, v18))
  {
    v19 = self->_taskGroup;
    *buf = 138412290;
    v27 = v19;
    _os_log_impl(&dword_0, v17, v18, "Starting UpdateGrantedDelegatesTaskGroup: [%@]", buf, 0xCu);
  }

  [(CalDAVUpdateGrantedDelegatesTaskGroup *)self->_taskGroup startTaskGroup];
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)cancel
{
  [(DACoreDAVTaskManager *)self->_taskManager cancelAllTasks];
  v3 = [NSError errorWithDomain:DAErrorDomain code:-1 userInfo:0];
  [(MobileCalDAVUpdateGrantedDelegatePermissionRequest *)self _finishedWithError:v3];
}

- (void)_finishedWithError:(id)error
{
  errorCopy = error;
  if (!self->_finished)
  {
    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v5, v6))
    {
      v7 = 138412546;
      selfCopy = self;
      v9 = 2112;
      v10 = errorCopy;
      _os_log_impl(&dword_0, v5, v6, "[%@] finished with error %@", &v7, 0x16u);
    }

    self->_finished = 1;
    [(DAEventsUpdateGrantedDelegatePermissionResponseConsumer *)self->_consumer updateGrantedDelegatePermissionFinishedWithError:errorCopy];
    [(MobileCalDAVDADaemonAccount *)self->_account updateGrantedDelegatePermissionRequestIsGoingAway:self];
  }
}

@end