@interface DACalDAVOfficeHoursRequest
- (DACalDAVOfficeHoursRequest)initWithAccount:(id)account consumer:(id)consumer;
- (DAEventsOfficeHoursRequestResponseConsumer)consumer;
- (MobileCalDAVDADaemonAccount)account;
- (void)_doRequestWithTaskGroupCreationBlock:(id)block taskGroupCompletionBlock:(id)completionBlock;
- (void)_finishWithError:(id)error;
- (void)cancel;
- (void)startFetchOfficeHoursRequest;
- (void)startSetOfficeHoursRequest:(id)request;
@end

@implementation DACalDAVOfficeHoursRequest

- (DACalDAVOfficeHoursRequest)initWithAccount:(id)account consumer:(id)consumer
{
  accountCopy = account;
  consumerCopy = consumer;
  v17.receiver = self;
  v17.super_class = DACalDAVOfficeHoursRequest;
  v8 = [(DACalDAVOfficeHoursRequest *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_account, accountCopy);
    objc_storeWeak(&v9->_consumer, consumerCopy);
    v10 = +[NSString da_newGUID];
    requestID = v9->_requestID;
    v9->_requestID = v10;

    v12 = [DACoreDAVTaskManager alloc];
    WeakRetained = objc_loadWeakRetained(&v9->_account);
    v14 = [v12 initWithAccount:WeakRetained];
    taskManager = v9->_taskManager;
    v9->_taskManager = v14;
  }

  return v9;
}

- (void)_doRequestWithTaskGroupCreationBlock:(id)block taskGroupCompletionBlock:(id)completionBlock
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  account = [(DACalDAVOfficeHoursRequest *)self account];
  mobileCalDAVAccount = [account mobileCalDAVAccount];
  mainPrincipal = [mobileCalDAVAccount mainPrincipal];

  v11 = mainPrincipal;
  inboxURL = [v11 inboxURL];
  v26 = 0;
  v13 = blockCopy[2](blockCopy, v11, inboxURL, &v26);
  v14 = v26;
  taskGroup = self->_taskGroup;
  self->_taskGroup = v13;

  v16 = self->_taskGroup;
  if (v16)
  {
    objc_initWeak(&location, v16);
    objc_initWeak(&from, self);
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_C804;
    v20 = &unk_28A08;
    objc_copyWeak(&v22, &location);
    objc_copyWeak(&v23, &from);
    v21 = completionBlockCopy;
    [(CoreDAVTaskGroup *)self->_taskGroup setCompletionBlock:&v17];
    [(CoreDAVTaskGroup *)self->_taskGroup startTaskGroup:v17];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    if (!v14)
    {
      v14 = [NSError errorWithDomain:DAErrorDomain code:89 userInfo:0];
    }

    [(DACalDAVOfficeHoursRequest *)self _finishWithError:v14];
  }
}

- (void)startFetchOfficeHoursRequest
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_C974;
  v3[3] = &unk_28A30;
  v3[4] = self;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_CA0C;
  v2[3] = &unk_28A58;
  v2[4] = self;
  [(DACalDAVOfficeHoursRequest *)self _doRequestWithTaskGroupCreationBlock:v3 taskGroupCompletionBlock:v2];
}

- (void)startSetOfficeHoursRequest:(id)request
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_CC50;
  v5[3] = &unk_28A80;
  requestCopy = request;
  selfCopy = self;
  v4 = requestCopy;
  [(DACalDAVOfficeHoursRequest *)self _doRequestWithTaskGroupCreationBlock:v5 taskGroupCompletionBlock:0];
}

- (void)cancel
{
  if (!self->_finished)
  {
    [(CoreDAVTaskGroup *)self->_taskGroup cancelTaskGroup];
    taskManager = [(DACalDAVOfficeHoursRequest *)self taskManager];
    [taskManager cancelAllTasks];

    v5 = [NSError errorWithDomain:DAErrorDomain code:-1 userInfo:0];
    [(DACalDAVOfficeHoursRequest *)self _finishWithError:v5];
  }
}

- (void)_finishWithError:(id)error
{
  errorCopy = error;
  if (!self->_finished)
  {
    self->_finished = 1;
    fetchedOfficeHours = self->_fetchedOfficeHours;
    consumer = [(DACalDAVOfficeHoursRequest *)self consumer];
    requestID = [(DACalDAVOfficeHoursRequest *)self requestID];
    if (fetchedOfficeHours)
    {
      [consumer officeHoursRequestWithID:requestID finishedWithOfficeHours:self->_fetchedOfficeHours error:errorCopy];
    }

    else
    {
      [consumer officeHoursRequestWithID:requestID finishedWithError:errorCopy];
    }

    taskManager = [(DACalDAVOfficeHoursRequest *)self taskManager];
    [taskManager shutdown];

    v9 = dataaccess_get_global_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_CF18;
    block[3] = &unk_28790;
    block[4] = self;
    dispatch_async(v9, block);
  }
}

- (DAEventsOfficeHoursRequestResponseConsumer)consumer
{
  WeakRetained = objc_loadWeakRetained(&self->_consumer);

  return WeakRetained;
}

- (MobileCalDAVDADaemonAccount)account
{
  WeakRetained = objc_loadWeakRetained(&self->_account);

  return WeakRetained;
}

@end