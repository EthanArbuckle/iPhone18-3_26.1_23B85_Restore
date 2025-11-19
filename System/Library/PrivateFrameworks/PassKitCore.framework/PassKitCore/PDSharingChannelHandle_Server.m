@interface PDSharingChannelHandle_Server
- (PDSharingChannelHandle_Server)initWithConnection:(id)a3 queue:(id)a4 delegate:(id)a5 dataSource:(id)a6;
- (id)_remoteObjectProxy;
- (id)_remoteObjectProxyWithErrorHandler:(id)a3;
- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (void)configureHandleWithDescriptor:(id)a3 completion:(id)a4;
- (void)didReceiveMessages:(id)a3;
- (void)didReceiveUpdatedTransportIdentifier:(id)a3 reply:(id)a4;
- (void)invalidateWithRemoteWithCompletion:(id)a3;
- (void)transportIdentifierWithCompletion:(id)a3;
@end

@implementation PDSharingChannelHandle_Server

- (PDSharingChannelHandle_Server)initWithConnection:(id)a3 queue:(id)a4 delegate:(id)a5 dataSource:(id)a6
{
  v10 = a3;
  v11 = [(PDSharingChannelHandle *)self _initWithQueue:a4 delegate:a5 dataSource:a6];
  v12 = v11;
  if (v11)
  {
    v13 = objc_storeWeak(v11 + 4, v10);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10019BA3C;
    v19[3] = &unk_10083C470;
    v14 = v12;
    v20 = v14;
    [v10 setInvalidationHandler:v19];

    WeakRetained = objc_loadWeakRetained(&v12->_connection);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10019BA4C;
    v17[3] = &unk_10083C470;
    v18 = v14;
    [WeakRetained setInterruptionHandler:v17];
  }

  return v12;
}

- (void)invalidateWithRemoteWithCompletion:(id)a3
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10019BB6C;
  v9[3] = &unk_100845A78;
  v4 = a3;
  v10 = v4;
  v5 = [(PDSharingChannelHandle_Server *)self _remoteObjectProxyWithErrorHandler:v9];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10019BB84;
  v7[3] = &unk_10083D648;
  v8 = v4;
  v6 = v4;
  [v5 invalidateFromRemoteWithReply:v7];
}

- (void)configureHandleWithDescriptor:(id)a3 completion:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(PDSharingChannelHandle *)self delegate];
  LOBYTE(self) = [v7 configureHandle:self forDescriptor:v6];

  if (self)
  {
    v9[2](v9, 0);
  }

  else
  {
    v8 = PDBasicError();
    (v9)[2](v9, v8);
  }
}

- (void)transportIdentifierWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [(PDSharingChannelHandle *)self transportIdentifier];
  (*(a3 + 2))(v5, v6);
}

- (void)didReceiveMessages:(id)a3
{
  v4 = a3;
  v5 = [(PDSharingChannelHandle_Server *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  [v5 didReceiveMessages:v4 reply:&stru_10084AEB0];
}

- (void)didReceiveUpdatedTransportIdentifier:(id)a3 reply:(id)a4
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10019BE7C;
  v12[3] = &unk_100845A78;
  v6 = a4;
  v13 = v6;
  v7 = a3;
  v8 = [(PDSharingChannelHandle_Server *)self _remoteObjectProxyWithErrorHandler:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10019BE94;
  v10[3] = &unk_10083D648;
  v11 = v6;
  v9 = v6;
  [v8 didReceiveUpdatedTransportIdentifier:v7 reply:v10];
}

- (id)_remoteObjectProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v3 = [WeakRetained remoteObjectProxy];

  return v3;
}

- (id)_remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v6 = [WeakRetained remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v6 = [WeakRetained synchronousRemoteObjectProxyWithErrorHandler:v4];

  return v6;
}

@end