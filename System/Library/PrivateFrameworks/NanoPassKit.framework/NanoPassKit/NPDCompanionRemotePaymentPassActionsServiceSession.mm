@interface NPDCompanionRemotePaymentPassActionsServiceSession
- (NPDCompanionRemoteInterfacePresenter)remotePassUIServiceInterfacePresenter;
- (NPDCompanionRemotePaymentPassActionsServiceSessionDelegate)delegate;
- (void)presentRemotePassSelectItemViewControllerForRequest:(id)a3 contact:(id)a4 completion:(id)a5;
- (void)presentRemotePassValueEntryViewControllerForRequest:(id)a3 contact:(id)a4 completion:(id)a5;
- (void)remoteInterfacePresenter:(id)a3 handleCompanionItemSelectionRequestDidCancelForRequestIdentifier:(id)a4;
- (void)remoteInterfacePresenter:(id)a3 handleCompanionItemSelectionRequestDidFinishWithRenewalAmount:(id)a4 serviceProviderData:(id)a5 forRequestIdentifier:(id)a6;
- (void)remoteInterfacePresenter:(id)a3 handleCompanionValueEntryRequestDidCancelForRequestIdentifier:(id)a4;
- (void)remoteInterfacePresenter:(id)a3 handleCompanionValueEntryRequestDidFinishWithCurrencyAmount:(id)a4 forRequestIdentifier:(id)a5;
@end

@implementation NPDCompanionRemotePaymentPassActionsServiceSession

- (NPDCompanionRemoteInterfacePresenter)remotePassUIServiceInterfacePresenter
{
  remotePassUIServiceInterfacePresenter = self->_remotePassUIServiceInterfacePresenter;
  if (!remotePassUIServiceInterfacePresenter)
  {
    v4 = [[NPDCompanionRemoteInterfacePresenter alloc] initForRemotePassUIService];
    v5 = self->_remotePassUIServiceInterfacePresenter;
    self->_remotePassUIServiceInterfacePresenter = v4;

    [(NPDCompanionRemoteInterfacePresenter *)self->_remotePassUIServiceInterfacePresenter setDelegate:self];
    remotePassUIServiceInterfacePresenter = self->_remotePassUIServiceInterfacePresenter;
  }

  return remotePassUIServiceInterfacePresenter;
}

- (void)presentRemotePassValueEntryViewControllerForRequest:(id)a3 contact:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pk_RemotePassAction_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_retainBlock(v10);
      *buf = 138412802;
      v29 = v8;
      v30 = 2112;
      v31 = v9;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPDCompanionRemotePaymentPassActionsServiceSession: Present remote pass value entry view controller for request: %@ contact: %@ completion: %@", buf, 0x20u);
    }
  }

  if (v8)
  {
    v15 = [(NPDCompanionRemotePaymentPassActionsServiceSession *)self remotePassUIServiceInterfacePresenter];
    [v15 setViewControllerClassName:@"NPKRemotePassActionCompanionValueEntryAlertViewController"];
    v16 = [NSMutableDictionary alloc];
    v26 = @"request";
    v17 = NPKSecureArchiveObject();
    v27 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v19 = [v16 initWithDictionary:v18];

    if (v9)
    {
      v20 = NPKSecureArchiveObject();
      [v19 setObject:v20 forKey:@"contact"];
    }

    [v15 setUserInfo:v19];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100007138;
    v24[3] = &unk_100071078;
    v25 = v10;
    [v15 activateWithCompletionHandler:v24];
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

    if (v10)
    {
      (*(v10 + 2))(v10, 0);
    }
  }
}

- (void)presentRemotePassSelectItemViewControllerForRequest:(id)a3 contact:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pk_RemotePassAction_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_RemotePassAction_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_retainBlock(v10);
      *buf = 138412802;
      v29 = v8;
      v30 = 2112;
      v31 = v9;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notice: NPDCompanionRemotePaymentPassActionsServiceSession: Present remote pass select item view controller for request: %@ contact: %@ completion: %@", buf, 0x20u);
    }
  }

  if (v8)
  {
    v15 = [(NPDCompanionRemotePaymentPassActionsServiceSession *)self remotePassUIServiceInterfacePresenter];
    [v15 setViewControllerClassName:@"NPKRemotePassActionCompanionItemSelectionAlertViewController"];
    v16 = [NSMutableDictionary alloc];
    v26 = @"request";
    v17 = NPKSecureArchiveObject();
    v27 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v19 = [v16 initWithDictionary:v18];

    if (v9)
    {
      v20 = NPKSecureArchiveObject();
      [v19 setObject:v20 forKey:@"contact"];
    }

    [v15 setUserInfo:v19];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000750C;
    v24[3] = &unk_100071078;
    v25 = v10;
    [v15 activateWithCompletionHandler:v24];
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

    if (v10)
    {
      (*(v10 + 2))(v10, 0);
    }
  }
}

- (void)remoteInterfacePresenter:(id)a3 handleCompanionValueEntryRequestDidFinishWithCurrencyAmount:(id)a4 forRequestIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(NPDCompanionRemotePaymentPassActionsServiceSession *)self delegate];
  [v9 remotePassActionServiceSession:self handleCompanionValueEntryRequestDidFinishWithCurrencyAmount:v8 forRequestIdentifier:v7];
}

- (void)remoteInterfacePresenter:(id)a3 handleCompanionValueEntryRequestDidCancelForRequestIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(NPDCompanionRemotePaymentPassActionsServiceSession *)self delegate];
  [v6 remotePassActionServiceSession:self handleCompanionValueEntryRequestDidCancelForRequestIdentifier:v5];
}

- (void)remoteInterfacePresenter:(id)a3 handleCompanionItemSelectionRequestDidFinishWithRenewalAmount:(id)a4 serviceProviderData:(id)a5 forRequestIdentifier:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(NPDCompanionRemotePaymentPassActionsServiceSession *)self delegate];
  [v12 remotePassActionServiceSession:self handleCompanionItemSelectionRequestDidFinishWithRenewalAmount:v11 serviceProviderData:v10 forRequestIdentifier:v9];
}

- (void)remoteInterfacePresenter:(id)a3 handleCompanionItemSelectionRequestDidCancelForRequestIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(NPDCompanionRemotePaymentPassActionsServiceSession *)self delegate];
  [v6 remotePassActionServiceSession:self handleCompanionSelectItemRequestDidCancelForRequestIdentifier:v5];
}

- (NPDCompanionRemotePaymentPassActionsServiceSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end