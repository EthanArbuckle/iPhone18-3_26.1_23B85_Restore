@interface PDSharingChannelHandle_Server
- (PDSharingChannelHandle_Server)initWithConnection:(id)connection queue:(id)queue delegate:(id)delegate dataSource:(id)source;
- (id)_remoteObjectProxy;
- (id)_remoteObjectProxyWithErrorHandler:(id)handler;
- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)configureHandleWithDescriptor:(id)descriptor completion:(id)completion;
- (void)didReceiveMessages:(id)messages;
- (void)didReceiveUpdatedTransportIdentifier:(id)identifier reply:(id)reply;
- (void)invalidateWithRemoteWithCompletion:(id)completion;
- (void)transportIdentifierWithCompletion:(id)completion;
@end

@implementation PDSharingChannelHandle_Server

- (PDSharingChannelHandle_Server)initWithConnection:(id)connection queue:(id)queue delegate:(id)delegate dataSource:(id)source
{
  connectionCopy = connection;
  v11 = [(PDSharingChannelHandle *)self _initWithQueue:queue delegate:delegate dataSource:source];
  v12 = v11;
  if (v11)
  {
    v13 = objc_storeWeak(v11 + 4, connectionCopy);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10019BA3C;
    v19[3] = &unk_10083C470;
    v14 = v12;
    v20 = v14;
    [connectionCopy setInvalidationHandler:v19];

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

- (void)invalidateWithRemoteWithCompletion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10019BB6C;
  v9[3] = &unk_100845A78;
  completionCopy = completion;
  v10 = completionCopy;
  v5 = [(PDSharingChannelHandle_Server *)self _remoteObjectProxyWithErrorHandler:v9];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10019BB84;
  v7[3] = &unk_10083D648;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 invalidateFromRemoteWithReply:v7];
}

- (void)configureHandleWithDescriptor:(id)descriptor completion:(id)completion
{
  completionCopy = completion;
  descriptorCopy = descriptor;
  delegate = [(PDSharingChannelHandle *)self delegate];
  LOBYTE(self) = [delegate configureHandle:self forDescriptor:descriptorCopy];

  if (self)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v8 = PDBasicError();
    (completionCopy)[2](completionCopy, v8);
  }
}

- (void)transportIdentifierWithCompletion:(id)completion
{
  completionCopy = completion;
  transportIdentifier = [(PDSharingChannelHandle *)self transportIdentifier];
  (*(completion + 2))(completionCopy, transportIdentifier);
}

- (void)didReceiveMessages:(id)messages
{
  messagesCopy = messages;
  v5 = [(PDSharingChannelHandle_Server *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  [v5 didReceiveMessages:messagesCopy reply:&stru_10084AEB0];
}

- (void)didReceiveUpdatedTransportIdentifier:(id)identifier reply:(id)reply
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10019BE7C;
  v12[3] = &unk_100845A78;
  replyCopy = reply;
  v13 = replyCopy;
  identifierCopy = identifier;
  v8 = [(PDSharingChannelHandle_Server *)self _remoteObjectProxyWithErrorHandler:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10019BE94;
  v10[3] = &unk_10083D648;
  v11 = replyCopy;
  v9 = replyCopy;
  [v8 didReceiveUpdatedTransportIdentifier:identifierCopy reply:v10];
}

- (id)_remoteObjectProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  remoteObjectProxy = [WeakRetained remoteObjectProxy];

  return remoteObjectProxy;
}

- (id)_remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v6 = [WeakRetained remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v6 = [WeakRetained synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

@end