@interface BRBaseWorkingSetEnumerator
- (BRBaseWorkingSetEnumerator)initWithFileProviderManager:(id)manager;
- (void)currentSyncAnchorWithCompletionHandler:(id)handler;
- (void)enumerateChangesForObserver:(id)observer fromSyncAnchor:(id)anchor;
- (void)enumerateItemsForObserver:(id)observer startingAtPage:(id)page;
@end

@implementation BRBaseWorkingSetEnumerator

- (BRBaseWorkingSetEnumerator)initWithFileProviderManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = BRBaseWorkingSetEnumerator;
  v6 = [(BRBaseWorkingSetEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileProviderManager, manager);
  }

  return v7;
}

- (void)enumerateItemsForObserver:(id)observer startingAtPage:(id)page
{
  observerCopy = observer;
  v6 = +[BRDaemonConnection defaultConnection];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100026404;
  v13[3] = &unk_100044728;
  v7 = observerCopy;
  v14 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v13];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100026410;
  v10[3] = &unk_1000455F0;
  v11 = v7;
  selfCopy = self;
  v9 = v7;
  [v8 currentNotifRankWithReply:v10];
}

- (void)enumerateChangesForObserver:(id)observer fromSyncAnchor:(id)anchor
{
  observerCopy = observer;
  anchorCopy = anchor;
  suggestedBatchSize = [observerCopy suggestedBatchSize];
  if (suggestedBatchSize >= 0xC8)
  {
    v8 = 200;
  }

  else
  {
    v8 = suggestedBatchSize;
  }

  v9 = +[BRDaemonConnection defaultConnection];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000266D0;
  v19[3] = &unk_100044728;
  v10 = observerCopy;
  v20 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v19];
  initialSyncAnchor = [objc_opt_class() initialSyncAnchor];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000266DC;
  v16[3] = &unk_100045618;
  if ([anchorCopy isEqualToData:initialSyncAnchor])
  {
    v13 = 0;
  }

  else
  {
    v13 = anchorCopy;
  }

  v17 = v10;
  v18 = anchorCopy;
  v14 = anchorCopy;
  v15 = v10;
  [v11 enumerateWorkingSetChangesFromChangeToken:v13 limit:v8 completion:v16];
}

- (void)currentSyncAnchorWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  initialSyncAnchor = [objc_opt_class() initialSyncAnchor];
  (*(handler + 2))(handlerCopy, initialSyncAnchor);
}

@end