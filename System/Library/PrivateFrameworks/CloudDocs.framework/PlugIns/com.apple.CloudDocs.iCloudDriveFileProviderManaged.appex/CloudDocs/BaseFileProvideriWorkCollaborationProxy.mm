@interface BaseFileProvideriWorkCollaborationProxy
- (BaseFileProvideriWorkCollaborationProxy)initWithItemIdentifier:(id)identifier operationQueue:(id)queue;
- (id)fetchCollaborationTokenWithCompletionHandler:(id)handler;
- (id)fetchFolderSharingStateWithCompletionHandler:(id)handler;
- (id)fetchLatestRevisionWithCompletionHandler:(id)handler;
- (id)fetchSharedFolderInfoWithCompletionHandler:(id)handler;
- (id)newProgressWithCancellationHandler:(id)handler;
- (id)refreshSharingStateWithCompletionHandler:(id)handler;
- (void)calculateCollaborationVersionWithCompletionHandler:(id)handler;
- (void)fetchAccountIdentifierWithCompletionHandler:(id)handler;
@end

@implementation BaseFileProvideriWorkCollaborationProxy

- (BaseFileProvideriWorkCollaborationProxy)initWithItemIdentifier:(id)identifier operationQueue:(id)queue
{
  identifierCopy = identifier;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = BaseFileProvideriWorkCollaborationProxy;
  v9 = [(BaseFileProvideriWorkCollaborationProxy *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemIdentifier, identifier);
    objc_storeStrong(&v10->_operationQueue, queue);
  }

  return v10;
}

- (id)fetchCollaborationTokenWithCompletionHandler:(id)handler
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_100027F9C();
  }

  return 0;
}

- (id)fetchLatestRevisionWithCompletionHandler:(id)handler
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_100027F9C();
  }

  return 0;
}

- (id)refreshSharingStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = self->_itemIdentifier;
  v6 = +[BRDaemonConnection defaultConnection];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100017B3C;
  v17[3] = &unk_100044598;
  v7 = handlerCopy;
  v18 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v17];

  itemIdentifier = self->_itemIdentifier;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100017B4C;
  v14[3] = &unk_1000447C8;
  v15 = v5;
  v16 = v7;
  v10 = v7;
  v11 = v5;
  [v8 refreshSharingStateForItemIdentifier:itemIdentifier reply:v14];
  v12 = [NSProgress progressWithTotalUnitCount:0];

  return v12;
}

- (id)fetchFolderSharingStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[BRDaemonConnection defaultConnection];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100017E10;
  v13[3] = &unk_100044598;
  v6 = handlerCopy;
  v14 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v13];

  itemIdentifier = self->_itemIdentifier;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100017E28;
  v11[3] = &unk_100045098;
  v12 = v6;
  v9 = v6;
  [v7 getShareOptionsOfItemIdentifier:itemIdentifier reply:v11];

  return 0;
}

- (id)fetchSharedFolderInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[BRDaemonConnection defaultConnection];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100017F74;
  v13[3] = &unk_100044598;
  v6 = handlerCopy;
  v14 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v13];

  itemIdentifier = self->_itemIdentifier;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100017F90;
  v11[3] = &unk_100045098;
  v12 = v6;
  v9 = v6;
  [v7 getShareOptionsOfItemIdentifier:itemIdentifier reply:v11];

  return 0;
}

- (id)newProgressWithCancellationHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [NSProgress progressWithTotalUnitCount:0];
  [v4 setCancellationHandler:handlerCopy];

  return v4;
}

- (void)fetchAccountIdentifierWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[ACAccountStore defaultStore];
  br_accountForCurrentPersona = [v4 br_accountForCurrentPersona];
  identifier = [br_accountForCurrentPersona identifier];
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100028080();
  }

  if (identifier)
  {
    handlerCopy[2](handlerCopy, identifier, 0);
  }

  else
  {
    v9 = +[NSError brc_errorLoggedOut];
    (handlerCopy)[2](handlerCopy, 0, v9);
  }
}

- (void)calculateCollaborationVersionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v5 = +[BRDaemonConnection defaultConnection];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100018254;
    v11[3] = &unk_100044598;
    v6 = handlerCopy;
    v12 = v6;
    v7 = [v5 remoteObjectProxyWithErrorHandler:v11];

    itemIdentifier = [(BaseFileProvideriWorkCollaborationProxy *)self itemIdentifier];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001826C;
    v9[3] = &unk_1000445C0;
    v10 = v6;
    [v7 calculateSignatureForItemIdentifier:itemIdentifier reply:v9];
  }
}

@end