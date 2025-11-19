@interface FARemotePresenter
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)_callCompletionWithResponse:(id)a3;
- (void)dealloc;
- (void)presentRemoteUserInterfaceWithOptions:(id)a3 completion:(id)a4;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation FARemotePresenter

- (void)presentRemoteUserInterfaceWithOptions:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSXPCListener anonymousListener];
  remoteListener = self->_remoteListener;
  self->_remoteListener = v8;

  [(NSXPCListener *)self->_remoteListener setDelegate:self];
  [(NSXPCListener *)self->_remoteListener resume];
  [(FARemotePresenter *)self setPresentationCompletion:v6];

  v10 = [SBSRemoteAlertDefinition alloc];
  v11 = [v10 initWithServiceName:FARemoteServiceName viewControllerClassName:FARemoteAlertServiceViewControllerClassName];
  v12 = objc_opt_new();
  [v12 setUserInfo:v7];

  v13 = [(NSXPCListener *)self->_remoteListener endpoint];
  v14 = [v13 _endpoint];
  [v12 setXpcEndpoint:v14];

  v15 = [SBSRemoteAlertHandle newHandleWithDefinition:v11 configurationContext:v12];
  [v15 addObserver:self];
  v16 = _FALogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Activating handle: %@", &v18, 0xCu);
  }

  v17 = objc_opt_new();
  [v15 activateWithContext:v17];
}

- (void)_callCompletionWithResponse:(id)a3
{
  v6 = a3;
  v4 = [(FARemotePresenter *)self presentationCompletion];

  if (v4)
  {
    v5 = [(FARemotePresenter *)self presentationCompletion];
    (v5)[2](v5, v6);

    [(FARemotePresenter *)self setPresentationCompletion:0];
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = +[FAFamilyPresenterHostInterface XPCInterface];
  [v5 setExportedInterface:v6];

  [v5 setExportedObject:self];
  [v5 resume];

  return 1;
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v3 = a3;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Alert handle activated: %@", &v5, 0xCu);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Alert handle deactivated %@", &v8, 0xCu);
  }

  v6 = [NSError errorWithDomain:FAErrorDomain code:-1005 userInfo:0];
  v7 = [[FACircleStateResponse alloc] initWithLoadSuccess:0 error:v6 userInfo:0];
  [(FARemotePresenter *)self _callCompletionWithResponse:v7];
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Alert handler interrupted!: %@ %@", &v10, 0x16u);
  }

  if (v7)
  {
    v9 = [[FACircleStateResponse alloc] initWithLoadSuccess:0 error:v7 userInfo:0];
    [(FARemotePresenter *)self _callCompletionWithResponse:v9];
  }
}

- (void)dealloc
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100079944(self, v3);
  }

  v4.receiver = self;
  v4.super_class = FARemotePresenter;
  [(FARemotePresenter *)&v4 dealloc];
}

@end