@interface DACalDAVOfficeHoursRequest
- (DACalDAVOfficeHoursRequest)initWithAccount:(id)a3 consumer:(id)a4;
- (DAEventsOfficeHoursRequestResponseConsumer)consumer;
- (MobileCalDAVDADaemonAccount)account;
- (void)_doRequestWithTaskGroupCreationBlock:(id)a3 taskGroupCompletionBlock:(id)a4;
- (void)_finishWithError:(id)a3;
- (void)cancel;
- (void)startFetchOfficeHoursRequest;
- (void)startSetOfficeHoursRequest:(id)a3;
@end

@implementation DACalDAVOfficeHoursRequest

- (DACalDAVOfficeHoursRequest)initWithAccount:(id)a3 consumer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = DACalDAVOfficeHoursRequest;
  v8 = [(DACalDAVOfficeHoursRequest *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_account, v6);
    objc_storeWeak(&v9->_consumer, v7);
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

- (void)_doRequestWithTaskGroupCreationBlock:(id)a3 taskGroupCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DACalDAVOfficeHoursRequest *)self account];
  v9 = [v8 mobileCalDAVAccount];
  v10 = [v9 mainPrincipal];

  v11 = v10;
  v12 = [v11 inboxURL];
  v26 = 0;
  v13 = v6[2](v6, v11, v12, &v26);
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
    v21 = v7;
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

- (void)startSetOfficeHoursRequest:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_CC50;
  v5[3] = &unk_28A80;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(DACalDAVOfficeHoursRequest *)self _doRequestWithTaskGroupCreationBlock:v5 taskGroupCompletionBlock:0];
}

- (void)cancel
{
  if (!self->_finished)
  {
    [(CoreDAVTaskGroup *)self->_taskGroup cancelTaskGroup];
    v4 = [(DACalDAVOfficeHoursRequest *)self taskManager];
    [v4 cancelAllTasks];

    v5 = [NSError errorWithDomain:DAErrorDomain code:-1 userInfo:0];
    [(DACalDAVOfficeHoursRequest *)self _finishWithError:v5];
  }
}

- (void)_finishWithError:(id)a3
{
  v4 = a3;
  if (!self->_finished)
  {
    self->_finished = 1;
    fetchedOfficeHours = self->_fetchedOfficeHours;
    v6 = [(DACalDAVOfficeHoursRequest *)self consumer];
    v7 = [(DACalDAVOfficeHoursRequest *)self requestID];
    if (fetchedOfficeHours)
    {
      [v6 officeHoursRequestWithID:v7 finishedWithOfficeHours:self->_fetchedOfficeHours error:v4];
    }

    else
    {
      [v6 officeHoursRequestWithID:v7 finishedWithError:v4];
    }

    v8 = [(DACalDAVOfficeHoursRequest *)self taskManager];
    [v8 shutdown];

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