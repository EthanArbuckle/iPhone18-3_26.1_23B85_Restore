@interface BRBaseWorkingSetEnumerator
- (BRBaseWorkingSetEnumerator)initWithFileProviderManager:(id)a3;
- (void)currentSyncAnchorWithCompletionHandler:(id)a3;
- (void)enumerateChangesForObserver:(id)a3 fromSyncAnchor:(id)a4;
- (void)enumerateItemsForObserver:(id)a3 startingAtPage:(id)a4;
@end

@implementation BRBaseWorkingSetEnumerator

- (BRBaseWorkingSetEnumerator)initWithFileProviderManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BRBaseWorkingSetEnumerator;
  v6 = [(BRBaseWorkingSetEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileProviderManager, a3);
  }

  return v7;
}

- (void)enumerateItemsForObserver:(id)a3 startingAtPage:(id)a4
{
  v5 = a3;
  v6 = +[BRDaemonConnection defaultConnection];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100026404;
  v13[3] = &unk_100044728;
  v7 = v5;
  v14 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v13];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100026410;
  v10[3] = &unk_1000455F0;
  v11 = v7;
  v12 = self;
  v9 = v7;
  [v8 currentNotifRankWithReply:v10];
}

- (void)enumerateChangesForObserver:(id)a3 fromSyncAnchor:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 suggestedBatchSize];
  if (v7 >= 0xC8)
  {
    v8 = 200;
  }

  else
  {
    v8 = v7;
  }

  v9 = +[BRDaemonConnection defaultConnection];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000266D0;
  v19[3] = &unk_100044728;
  v10 = v5;
  v20 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v19];
  v12 = [objc_opt_class() initialSyncAnchor];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000266DC;
  v16[3] = &unk_100045618;
  if ([v6 isEqualToData:v12])
  {
    v13 = 0;
  }

  else
  {
    v13 = v6;
  }

  v17 = v10;
  v18 = v6;
  v14 = v6;
  v15 = v10;
  [v11 enumerateWorkingSetChangesFromChangeToken:v13 limit:v8 completion:v16];
}

- (void)currentSyncAnchorWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() initialSyncAnchor];
  (*(a3 + 2))(v4, v5);
}

@end