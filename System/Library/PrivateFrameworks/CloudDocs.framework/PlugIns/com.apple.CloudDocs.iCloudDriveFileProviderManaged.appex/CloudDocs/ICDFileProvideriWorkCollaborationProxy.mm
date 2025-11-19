@interface ICDFileProvideriWorkCollaborationProxy
- (ICDFileProvideriWorkCollaborationProxy)initWithFileProviderExtension:(id)a3 itemIdentifier:(id)a4 operationQueue:(id)a5;
- (id)fetchCollaborationTokenWithCompletionHandler:(id)a3;
- (id)fetchLatestRevisionWithCompletionHandler:(id)a3;
@end

@implementation ICDFileProvideriWorkCollaborationProxy

- (ICDFileProvideriWorkCollaborationProxy)initWithFileProviderExtension:(id)a3 itemIdentifier:(id)a4 operationQueue:(id)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = ICDFileProvideriWorkCollaborationProxy;
  v10 = [(BaseFileProvideriWorkCollaborationProxy *)&v13 initWithItemIdentifier:a4 operationQueue:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_fileProviderExtension, a3);
  }

  return v11;
}

- (id)fetchCollaborationTokenWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[NSDate distantFuture];
  v6 = [BRSharingCopyShareTokenOperation alloc];
  v7 = [(BaseFileProvideriWorkCollaborationProxy *)self itemIdentifier];
  v8 = [v6 initWithItemID:v7];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001E55C;
  v17[3] = &unk_1000452D8;
  v9 = v4;
  v19 = v9;
  v10 = v5;
  v18 = v10;
  [v8 setShareAndBaseTokenCompletionBlock:v17];
  objc_initWeak(&location, v8);
  v11 = [(BaseFileProvideriWorkCollaborationProxy *)self operationQueue];
  [v11 addOperation:v8];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001E61C;
  v14[3] = &unk_1000446D8;
  objc_copyWeak(&v15, &location);
  v12 = [(BaseFileProvideriWorkCollaborationProxy *)self newProgressWithCancellationHandler:v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v12;
}

- (id)fetchLatestRevisionWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100028A7C(self, v5, v6);
    }

    v7 = +[BRDaemonConnection defaultConnection];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001E7FC;
    v14[3] = &unk_100044598;
    v8 = v4;
    v15 = v8;
    v9 = [v7 remoteObjectProxyWithErrorHandler:v14];

    v10 = [(BaseFileProvideriWorkCollaborationProxy *)self itemIdentifier];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001E80C;
    v12[3] = &unk_1000445E8;
    v13 = v8;
    [v9 fetchLatestContentRevisionForItemIdentifier:v10 reply:v12];
  }

  return 0;
}

@end