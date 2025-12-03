@interface NPDCompanionRemotePaymentPassActionsServiceSession
- (NPDCompanionRemoteInterfacePresenter)remotePassUIServiceInterfacePresenter;
- (NPDCompanionRemotePaymentPassActionsServiceSessionDelegate)delegate;
- (void)presentRemotePassSelectItemViewControllerForRequest:(id)request contact:(id)contact completion:(id)completion;
- (void)presentRemotePassValueEntryViewControllerForRequest:(id)request contact:(id)contact completion:(id)completion;
- (void)remoteInterfacePresenter:(id)presenter handleCompanionItemSelectionRequestDidCancelForRequestIdentifier:(id)identifier;
- (void)remoteInterfacePresenter:(id)presenter handleCompanionItemSelectionRequestDidFinishWithRenewalAmount:(id)amount serviceProviderData:(id)data forRequestIdentifier:(id)identifier;
- (void)remoteInterfacePresenter:(id)presenter handleCompanionValueEntryRequestDidCancelForRequestIdentifier:(id)identifier;
- (void)remoteInterfacePresenter:(id)presenter handleCompanionValueEntryRequestDidFinishWithCurrencyAmount:(id)amount forRequestIdentifier:(id)identifier;
@end

@implementation NPDCompanionRemotePaymentPassActionsServiceSession

- (NPDCompanionRemoteInterfacePresenter)remotePassUIServiceInterfacePresenter
{
  remotePassUIServiceInterfacePresenter = self->_remotePassUIServiceInterfacePresenter;
  if (!remotePassUIServiceInterfacePresenter)
  {
    initForRemotePassUIService = [[NPDCompanionRemoteInterfacePresenter alloc] initForRemotePassUIService];
    v5 = self->_remotePassUIServiceInterfacePresenter;
    self->_remotePassUIServiceInterfacePresenter = initForRemotePassUIService;

    [(NPDCompanionRemoteInterfacePresenter *)self->_remotePassUIServiceInterfacePresenter setDelegate:self];
    remotePassUIServiceInterfacePresenter = self->_remotePassUIServiceInterfacePresenter;
  }

  return remotePassUIServiceInterfacePresenter;
}

- (void)presentRemotePassValueEntryViewControllerForRequest:(id)request contact:(id)contact completion:(id)completion
{
  requestCopy = request;
  contactCopy = contact;
  completionCopy = completion;
  v11 = pk_RemotePassAction_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_retainBlock(completionCopy);
      *buf = 138412802;
      v29 = requestCopy;
      v30 = 2112;
      v31 = contactCopy;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPDCompanionRemotePaymentPassActionsServiceSession: Present remote pass value entry view controller for request: %@ contact: %@ completion: %@", buf, 0x20u);
    }
  }

  if (requestCopy)
  {
    remotePassUIServiceInterfacePresenter = [(NPDCompanionRemotePaymentPassActionsServiceSession *)self remotePassUIServiceInterfacePresenter];
    [remotePassUIServiceInterfacePresenter setViewControllerClassName:@"NPKRemotePassActionCompanionValueEntryAlertViewController"];
    v16 = [NSMutableDictionary alloc];
    v26 = @"request";
    v17 = NPKSecureArchiveObject();
    v27 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v19 = [v16 initWithDictionary:v18];

    if (contactCopy)
    {
      v20 = NPKSecureArchiveObject();
      [v19 setObject:v20 forKey:@"contact"];
    }

    [remotePassUIServiceInterfacePresenter setUserInfo:v19];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100007138;
    v24[3] = &unk_100071078;
    v25 = completionCopy;
    [remotePassUIServiceInterfacePresenter activateWithCompletionHandler:v24];
  }

  else
  {
    v21 = pk_RemotePassAction_log();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

    if (v22)
    {
      v23 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Notice: NPDCompanionRemotePaymentPassActionsServiceSession: Unable to present value entry UI for a nil request: %@", buf, 0xCu);
      }
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)presentRemotePassSelectItemViewControllerForRequest:(id)request contact:(id)contact completion:(id)completion
{
  requestCopy = request;
  contactCopy = contact;
  completionCopy = completion;
  v11 = pk_RemotePassAction_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_retainBlock(completionCopy);
      *buf = 138412802;
      v29 = requestCopy;
      v30 = 2112;
      v31 = contactCopy;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPDCompanionRemotePaymentPassActionsServiceSession: Present remote pass select item view controller for request: %@ contact: %@ completion: %@", buf, 0x20u);
    }
  }

  if (requestCopy)
  {
    remotePassUIServiceInterfacePresenter = [(NPDCompanionRemotePaymentPassActionsServiceSession *)self remotePassUIServiceInterfacePresenter];
    [remotePassUIServiceInterfacePresenter setViewControllerClassName:@"NPKRemotePassActionCompanionItemSelectionAlertViewController"];
    v16 = [NSMutableDictionary alloc];
    v26 = @"request";
    v17 = NPKSecureArchiveObject();
    v27 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v19 = [v16 initWithDictionary:v18];

    if (contactCopy)
    {
      v20 = NPKSecureArchiveObject();
      [v19 setObject:v20 forKey:@"contact"];
    }

    [remotePassUIServiceInterfacePresenter setUserInfo:v19];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000750C;
    v24[3] = &unk_100071078;
    v25 = completionCopy;
    [remotePassUIServiceInterfacePresenter activateWithCompletionHandler:v24];
  }

  else
  {
    v21 = pk_RemotePassAction_log();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

    if (v22)
    {
      v23 = pk_RemotePassAction_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Notice: NPDCompanionRemotePaymentPassActionsServiceSession: Unable to present item selection UI for a nil request: %@", buf, 0xCu);
      }
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)remoteInterfacePresenter:(id)presenter handleCompanionValueEntryRequestDidFinishWithCurrencyAmount:(id)amount forRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  amountCopy = amount;
  delegate = [(NPDCompanionRemotePaymentPassActionsServiceSession *)self delegate];
  [delegate remotePassActionServiceSession:self handleCompanionValueEntryRequestDidFinishWithCurrencyAmount:amountCopy forRequestIdentifier:identifierCopy];
}

- (void)remoteInterfacePresenter:(id)presenter handleCompanionValueEntryRequestDidCancelForRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(NPDCompanionRemotePaymentPassActionsServiceSession *)self delegate];
  [delegate remotePassActionServiceSession:self handleCompanionValueEntryRequestDidCancelForRequestIdentifier:identifierCopy];
}

- (void)remoteInterfacePresenter:(id)presenter handleCompanionItemSelectionRequestDidFinishWithRenewalAmount:(id)amount serviceProviderData:(id)data forRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataCopy = data;
  amountCopy = amount;
  delegate = [(NPDCompanionRemotePaymentPassActionsServiceSession *)self delegate];
  [delegate remotePassActionServiceSession:self handleCompanionItemSelectionRequestDidFinishWithRenewalAmount:amountCopy serviceProviderData:dataCopy forRequestIdentifier:identifierCopy];
}

- (void)remoteInterfacePresenter:(id)presenter handleCompanionItemSelectionRequestDidCancelForRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(NPDCompanionRemotePaymentPassActionsServiceSession *)self delegate];
  [delegate remotePassActionServiceSession:self handleCompanionSelectItemRequestDidCancelForRequestIdentifier:identifierCopy];
}

- (NPDCompanionRemotePaymentPassActionsServiceSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end