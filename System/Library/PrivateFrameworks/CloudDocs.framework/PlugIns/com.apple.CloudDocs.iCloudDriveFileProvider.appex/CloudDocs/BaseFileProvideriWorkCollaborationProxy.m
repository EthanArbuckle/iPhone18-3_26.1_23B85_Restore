@interface BaseFileProvideriWorkCollaborationProxy
- (BaseFileProvideriWorkCollaborationProxy)initWithItemIdentifier:(id)a3 operationQueue:(id)a4;
- (id)fetchCollaborationTokenWithCompletionHandler:(id)a3;
- (id)fetchFolderSharingStateWithCompletionHandler:(id)a3;
- (id)fetchLatestRevisionWithCompletionHandler:(id)a3;
- (id)fetchSharedFolderInfoWithCompletionHandler:(id)a3;
- (id)newProgressWithCancellationHandler:(id)a3;
- (id)refreshSharingStateWithCompletionHandler:(id)a3;
- (void)calculateCollaborationVersionWithCompletionHandler:(id)a3;
- (void)fetchAccountIdentifierWithCompletionHandler:(id)a3;
@end

@implementation BaseFileProvideriWorkCollaborationProxy

- (BaseFileProvideriWorkCollaborationProxy)initWithItemIdentifier:(id)a3 operationQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BaseFileProvideriWorkCollaborationProxy;
  v9 = [(BaseFileProvideriWorkCollaborationProxy *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemIdentifier, a3);
    objc_storeStrong(&v10->_operationQueue, a4);
  }

  return v10;
}

- (id)fetchCollaborationTokenWithCompletionHandler:(id)a3
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_100026A54();
  }

  return 0;
}

- (id)fetchLatestRevisionWithCompletionHandler:(id)a3
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    sub_100026A54();
  }

  return 0;
}

- (id)refreshSharingStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = self->_itemIdentifier;
  v6 = +[BRDaemonConnection defaultConnection];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100015944;
  v17[3] = &unk_100044598;
  v7 = v4;
  v18 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v17];

  itemIdentifier = self->_itemIdentifier;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100015954;
  v14[3] = &unk_1000448A8;
  v15 = v5;
  v16 = v7;
  v10 = v7;
  v11 = v5;
  [v8 refreshSharingStateForItemIdentifier:itemIdentifier reply:v14];
  v12 = [NSProgress progressWithTotalUnitCount:0];

  return v12;
}

- (id)fetchFolderSharingStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[BRDaemonConnection defaultConnection];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100015C18;
  v13[3] = &unk_100044598;
  v6 = v4;
  v14 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v13];

  itemIdentifier = self->_itemIdentifier;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100015C30;
  v11[3] = &unk_100044EF0;
  v12 = v6;
  v9 = v6;
  [v7 getShareOptionsOfItemIdentifier:itemIdentifier reply:v11];

  return 0;
}

- (id)fetchSharedFolderInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[BRDaemonConnection defaultConnection];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100015D7C;
  v13[3] = &unk_100044598;
  v6 = v4;
  v14 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v13];

  itemIdentifier = self->_itemIdentifier;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100015D98;
  v11[3] = &unk_100044EF0;
  v12 = v6;
  v9 = v6;
  [v7 getShareOptionsOfItemIdentifier:itemIdentifier reply:v11];

  return 0;
}

- (id)newProgressWithCancellationHandler:(id)a3
{
  v3 = a3;
  v4 = [NSProgress progressWithTotalUnitCount:0];
  [v4 setCancellationHandler:v3];

  return v4;
}

- (void)fetchAccountIdentifierWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[ACAccountStore defaultStore];
  v5 = [v4 br_accountForCurrentPersona];
  v6 = [v5 identifier];
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100028038();
  }

  if (v6)
  {
    v3[2](v3, v6, 0);
  }

  else
  {
    v9 = +[NSError brc_errorLoggedOut];
    (v3)[2](v3, 0, v9);
  }
}

- (void)calculateCollaborationVersionWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[BRDaemonConnection defaultConnection];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001605C;
    v11[3] = &unk_100044598;
    v6 = v4;
    v12 = v6;
    v7 = [v5 remoteObjectProxyWithErrorHandler:v11];

    v8 = [(BaseFileProvideriWorkCollaborationProxy *)self itemIdentifier];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100016074;
    v9[3] = &unk_1000445C0;
    v10 = v6;
    [v7 calculateSignatureForItemIdentifier:v8 reply:v9];
  }
}

@end