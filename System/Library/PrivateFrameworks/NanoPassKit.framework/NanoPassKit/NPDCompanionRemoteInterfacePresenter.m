@interface NPDCompanionRemoteInterfacePresenter
+ (id)_errorWithMessage:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NPDCompanionRemoteInterfacePresenter)initWithDispatchQueue:(id)a3 viewServiceName:(id)a4;
- (NPDCompanionRemoteInterfacePresenterDelegate)delegate;
- (void)_queue_activateServiceListener;
- (void)_queue_activateViewServiceHandle;
- (void)_queue_activateWithCompletionHandler:(id)a3;
- (void)_queue_invalidated;
- (void)activateWithCompletionHandler:(id)a3;
- (void)handleCompanionItemSelectionCancelledForRequestIdentifier:(id)a3;
- (void)handleCompanionItemSelectionFinishedWithRenewalAmount:(id)a3 serviceProviderData:(id)a4 forRequestIdentifier:(id)a5;
- (void)handleCompanionValueEntryCancelledForRequestIdentifier:(id)a3;
- (void)handleCompanionValueEntryFinishedWithCurrencyAmount:(id)a3 forRequestIdentifier:(id)a4;
- (void)invalidate;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation NPDCompanionRemoteInterfacePresenter

- (NPDCompanionRemoteInterfacePresenter)initWithDispatchQueue:(id)a3 viewServiceName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NPDCompanionRemoteInterfacePresenter;
  v9 = [(NPDCompanionRemoteInterfacePresenter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dispatchQueue, a3);
    objc_storeStrong(&v10->_viewServiceName, a4);
  }

  return v10;
}

- (void)activateWithCompletionHandler:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003B29C;
  v7[3] = &unk_100071620;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B3B4;
  block[3] = &unk_100071000;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v4 = a3;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: View service activated: %@", buf, 0xCu);
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B4E8;
  block[3] = &unk_100071000;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: View service deactivated: %@", buf, 0xCu);
    }
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B624;
  block[3] = &unk_100071000;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B6F0;
  block[3] = &unk_100070FA8;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  [v5 setExportedObject:self];
  v6 = +[NPKRemotePassActionUIServicePresenterInterface interface];
  [v5 setExportedInterface:v6];

  [v5 resume];
  return 1;
}

- (void)_queue_activateWithCompletionHandler:(id)a3
{
  viewControllerClassName = self->_viewControllerClassName;
  v5 = a3;
  if (viewControllerClassName)
  {
    [(NPDCompanionRemoteInterfacePresenter *)self _queue_activateServiceListener];
    [(NPDCompanionRemoteInterfacePresenter *)self _queue_activateViewServiceHandle];
    v6 = 0;
  }

  else
  {
    v6 = [objc_opt_class() _errorWithMessage:@"Failed to activate alert with nil view controller class name."];
  }

  v7 = v6;
  v5[2](v5);
}

- (void)_queue_invalidated
{
  self->_activated = 0;
  [(NSXPCListener *)self->_serviceListener invalidate];
  serviceListener = self->_serviceListener;
  self->_serviceListener = 0;

  [(SBSRemoteAlertHandle *)self->_viewServiceHandle invalidate];
  viewServiceHandle = self->_viewServiceHandle;
  self->_viewServiceHandle = 0;
}

- (void)_queue_activateServiceListener
{
  v3 = +[NSXPCListener anonymousListener];
  serviceListener = self->_serviceListener;
  self->_serviceListener = v3;

  [(NSXPCListener *)self->_serviceListener _setQueue:self->_dispatchQueue];
  [(NSXPCListener *)self->_serviceListener setDelegate:self];
  v5 = self->_serviceListener;

  [(NSXPCListener *)v5 resume];
}

- (void)_queue_activateViewServiceHandle
{
  v8 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:self->_viewServiceName viewControllerClassName:self->_viewControllerClassName];
  v3 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  v4 = [(NSXPCListener *)self->_serviceListener endpoint];
  v5 = [v4 _endpoint];
  [v3 setXpcEndpoint:v5];

  [v3 setUserInfo:self->_userInfo];
  v6 = [SBSRemoteAlertHandle newHandleWithDefinition:v8 configurationContext:v3];
  viewServiceHandle = self->_viewServiceHandle;
  self->_viewServiceHandle = v6;

  [(SBSRemoteAlertHandle *)self->_viewServiceHandle registerObserver:self];
  [(SBSRemoteAlertHandle *)self->_viewServiceHandle activateWithContext:0];
}

+ (id)_errorWithMessage:(id)a3
{
  v3 = NPKErrorDomain;
  v8 = NSLocalizedDescriptionKey;
  v9 = a3;
  v4 = a3;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [NSError errorWithDomain:v3 code:-1000 userInfo:v5];

  return v6;
}

- (void)handleCompanionValueEntryFinishedWithCurrencyAmount:(id)a3 forRequestIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NPDCompanionRemoteInterfacePresenter *)self delegate];
  [v8 remoteInterfacePresenter:self handleCompanionValueEntryRequestDidFinishWithCurrencyAmount:v7 forRequestIdentifier:v6];
}

- (void)handleCompanionValueEntryCancelledForRequestIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NPDCompanionRemoteInterfacePresenter *)self delegate];
  [v5 remoteInterfacePresenter:self handleCompanionValueEntryRequestDidCancelForRequestIdentifier:v4];
}

- (void)handleCompanionItemSelectionFinishedWithRenewalAmount:(id)a3 serviceProviderData:(id)a4 forRequestIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NPDCompanionRemoteInterfacePresenter *)self delegate];
  [v11 remoteInterfacePresenter:self handleCompanionItemSelectionRequestDidFinishWithRenewalAmount:v10 serviceProviderData:v9 forRequestIdentifier:v8];
}

- (void)handleCompanionItemSelectionCancelledForRequestIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NPDCompanionRemoteInterfacePresenter *)self delegate];
  [v5 remoteInterfacePresenter:self handleCompanionItemSelectionRequestDidCancelForRequestIdentifier:v4];
}

- (NPDCompanionRemoteInterfacePresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end