@interface BRFileVersionsEnumerator
- (void)currentSyncAnchorWithCompletionHandler:(id)handler;
- (void)enumerateChangesForObserver:(id)observer fromSyncAnchor:(id)anchor;
- (void)enumerateChangesForVersionObserver:(id)observer fromSyncAnchor:(id)anchor;
- (void)enumerateItemsForObserver:(id)observer startingAtPage:(id)page;
@end

@implementation BRFileVersionsEnumerator

- (void)currentSyncAnchorWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [NSData br_changeTokenFromRank:0 uuid:self->super._uuid];
  (*(handler + 2))(handlerCopy, v6);
}

- (void)enumerateItemsForObserver:(id)observer startingAtPage:(id)page
{
  observerCopy = observer;
  v6 = +[BRDaemonConnection defaultConnection];
  newFPFSSyncProxy = [v6 newFPFSSyncProxy];

  itemIdentifier = self->super._itemIdentifier;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000685C;
  v10[3] = &unk_100044858;
  v11 = observerCopy;
  v9 = observerCopy;
  [newFPFSSyncProxy listNonLocalVersionsWithItemIdentifier:itemIdentifier reply:v10];
}

- (void)enumerateChangesForObserver:(id)observer fromSyncAnchor:(id)anchor
{
  observerCopy = observer;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    sub_100026C1C(v6, v7);
  }

  [observerCopy didUpdateItems:&__NSArray0__struct];
  [observerCopy didDeleteItemsWithIdentifiers:&__NSArray0__struct];
  v8 = [NSData br_changeTokenFromRank:0 uuid:self->super._uuid];
  [observerCopy finishEnumeratingChangesUpToSyncAnchor:v8 moreComing:0];
}

- (void)enumerateChangesForVersionObserver:(id)observer fromSyncAnchor:(id)anchor
{
  observerCopy = observer;
  [observerCopy didUpdateItems:&__NSArray0__struct];
  [observerCopy didDeleteItemsWithVersions:&__NSArray0__struct];
  v6 = [NSData br_changeTokenFromRank:0 uuid:self->super._uuid];
  [observerCopy finishEnumeratingChangesUpToSyncAnchor:v6 moreComing:0];
}

@end