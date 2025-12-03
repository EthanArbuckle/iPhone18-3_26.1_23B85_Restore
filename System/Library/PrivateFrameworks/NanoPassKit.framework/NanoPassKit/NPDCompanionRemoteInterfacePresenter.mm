@interface NPDCompanionRemoteInterfacePresenter
+ (id)_errorWithMessage:(id)message;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NPDCompanionRemoteInterfacePresenter)initWithDispatchQueue:(id)queue viewServiceName:(id)name;
- (NPDCompanionRemoteInterfacePresenterDelegate)delegate;
- (void)_queue_activateServiceListener;
- (void)_queue_activateViewServiceHandle;
- (void)_queue_activateWithCompletionHandler:(id)handler;
- (void)_queue_invalidated;
- (void)activateWithCompletionHandler:(id)handler;
- (void)handleCompanionItemSelectionCancelledForRequestIdentifier:(id)identifier;
- (void)handleCompanionItemSelectionFinishedWithRenewalAmount:(id)amount serviceProviderData:(id)data forRequestIdentifier:(id)identifier;
- (void)handleCompanionValueEntryCancelledForRequestIdentifier:(id)identifier;
- (void)handleCompanionValueEntryFinishedWithCurrencyAmount:(id)amount forRequestIdentifier:(id)identifier;
- (void)invalidate;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation NPDCompanionRemoteInterfacePresenter

- (NPDCompanionRemoteInterfacePresenter)initWithDispatchQueue:(id)queue viewServiceName:(id)name
{
  queueCopy = queue;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = NPDCompanionRemoteInterfacePresenter;
  v9 = [(NPDCompanionRemoteInterfacePresenter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dispatchQueue, queue);
    objc_storeStrong(&v10->_viewServiceName, name);
  }

  return v10;
}

- (void)activateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003B29C;
  v7[3] = &unk_100071620;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
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

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = activateCopy;
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

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = deactivateCopy;
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

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B6F0;
  block[3] = &unk_100070FA8;
  v12 = handleCopy;
  v13 = errorCopy;
  selfCopy = self;
  v9 = errorCopy;
  v10 = handleCopy;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  [connectionCopy setExportedObject:self];
  v6 = +[NPKRemotePassActionUIServicePresenterInterface interface];
  [connectionCopy setExportedInterface:v6];

  [connectionCopy resume];
  return 1;
}

- (void)_queue_activateWithCompletionHandler:(id)handler
{
  viewControllerClassName = self->_viewControllerClassName;
  handlerCopy = handler;
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
  handlerCopy[2](handlerCopy);
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
  endpoint = [(NSXPCListener *)self->_serviceListener endpoint];
  _endpoint = [endpoint _endpoint];
  [v3 setXpcEndpoint:_endpoint];

  [v3 setUserInfo:self->_userInfo];
  v6 = [SBSRemoteAlertHandle newHandleWithDefinition:v8 configurationContext:v3];
  viewServiceHandle = self->_viewServiceHandle;
  self->_viewServiceHandle = v6;

  [(SBSRemoteAlertHandle *)self->_viewServiceHandle registerObserver:self];
  [(SBSRemoteAlertHandle *)self->_viewServiceHandle activateWithContext:0];
}

+ (id)_errorWithMessage:(id)message
{
  v3 = NPKErrorDomain;
  v8 = NSLocalizedDescriptionKey;
  messageCopy = message;
  messageCopy2 = message;
  v5 = [NSDictionary dictionaryWithObjects:&messageCopy forKeys:&v8 count:1];
  v6 = [NSError errorWithDomain:v3 code:-1000 userInfo:v5];

  return v6;
}

- (void)handleCompanionValueEntryFinishedWithCurrencyAmount:(id)amount forRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  amountCopy = amount;
  delegate = [(NPDCompanionRemoteInterfacePresenter *)self delegate];
  [delegate remoteInterfacePresenter:self handleCompanionValueEntryRequestDidFinishWithCurrencyAmount:amountCopy forRequestIdentifier:identifierCopy];
}

- (void)handleCompanionValueEntryCancelledForRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(NPDCompanionRemoteInterfacePresenter *)self delegate];
  [delegate remoteInterfacePresenter:self handleCompanionValueEntryRequestDidCancelForRequestIdentifier:identifierCopy];
}

- (void)handleCompanionItemSelectionFinishedWithRenewalAmount:(id)amount serviceProviderData:(id)data forRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataCopy = data;
  amountCopy = amount;
  delegate = [(NPDCompanionRemoteInterfacePresenter *)self delegate];
  [delegate remoteInterfacePresenter:self handleCompanionItemSelectionRequestDidFinishWithRenewalAmount:amountCopy serviceProviderData:dataCopy forRequestIdentifier:identifierCopy];
}

- (void)handleCompanionItemSelectionCancelledForRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(NPDCompanionRemoteInterfacePresenter *)self delegate];
  [delegate remoteInterfacePresenter:self handleCompanionItemSelectionRequestDidCancelForRequestIdentifier:identifierCopy];
}

- (NPDCompanionRemoteInterfacePresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end