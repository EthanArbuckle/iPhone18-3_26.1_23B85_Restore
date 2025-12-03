@interface FARemotePresenter
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_callCompletionWithResponse:(id)response;
- (void)dealloc;
- (void)presentRemoteUserInterfaceWithOptions:(id)options completion:(id)completion;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation FARemotePresenter

- (void)presentRemoteUserInterfaceWithOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  v8 = +[NSXPCListener anonymousListener];
  remoteListener = self->_remoteListener;
  self->_remoteListener = v8;

  [(NSXPCListener *)self->_remoteListener setDelegate:self];
  [(NSXPCListener *)self->_remoteListener resume];
  [(FARemotePresenter *)self setPresentationCompletion:completionCopy];

  v10 = [SBSRemoteAlertDefinition alloc];
  v11 = [v10 initWithServiceName:FARemoteServiceName viewControllerClassName:FARemoteAlertServiceViewControllerClassName];
  v12 = objc_opt_new();
  [v12 setUserInfo:optionsCopy];

  endpoint = [(NSXPCListener *)self->_remoteListener endpoint];
  _endpoint = [endpoint _endpoint];
  [v12 setXpcEndpoint:_endpoint];

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

- (void)_callCompletionWithResponse:(id)response
{
  responseCopy = response;
  presentationCompletion = [(FARemotePresenter *)self presentationCompletion];

  if (presentationCompletion)
  {
    presentationCompletion2 = [(FARemotePresenter *)self presentationCompletion];
    (presentationCompletion2)[2](presentationCompletion2, responseCopy);

    [(FARemotePresenter *)self setPresentationCompletion:0];
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = +[FAFamilyPresenterHostInterface XPCInterface];
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = activateCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Alert handle activated: %@", &v5, 0xCu);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = deactivateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Alert handle deactivated %@", &v8, 0xCu);
  }

  v6 = [NSError errorWithDomain:FAErrorDomain code:-1005 userInfo:0];
  v7 = [[FACircleStateResponse alloc] initWithLoadSuccess:0 error:v6 userInfo:0];
  [(FARemotePresenter *)self _callCompletionWithResponse:v7];
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  errorCopy = error;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = handleCopy;
    v12 = 2112;
    v13 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Alert handler interrupted!: %@ %@", &v10, 0x16u);
  }

  if (errorCopy)
  {
    v9 = [[FACircleStateResponse alloc] initWithLoadSuccess:0 error:errorCopy userInfo:0];
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