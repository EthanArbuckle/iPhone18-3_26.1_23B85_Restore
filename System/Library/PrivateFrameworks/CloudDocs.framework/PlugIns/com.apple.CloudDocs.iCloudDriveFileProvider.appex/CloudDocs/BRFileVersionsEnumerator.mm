@interface BRFileVersionsEnumerator
- (void)currentSyncAnchorWithCompletionHandler:(id)a3;
- (void)enumerateChangesForObserver:(id)a3 fromSyncAnchor:(id)a4;
- (void)enumerateChangesForVersionObserver:(id)a3 fromSyncAnchor:(id)a4;
- (void)enumerateItemsForObserver:(id)a3 startingAtPage:(id)a4;
@end

@implementation BRFileVersionsEnumerator

- (void)currentSyncAnchorWithCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = [NSData br_changeTokenFromRank:0 uuid:self->super._uuid];
  (*(a3 + 2))(v5, v6);
}

- (void)enumerateItemsForObserver:(id)a3 startingAtPage:(id)a4
{
  v5 = a3;
  v6 = +[BRDaemonConnection defaultConnection];
  v7 = [v6 newFPFSSyncProxy];

  itemIdentifier = self->super._itemIdentifier;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000685C;
  v10[3] = &unk_100044858;
  v11 = v5;
  v9 = v5;
  [v7 listNonLocalVersionsWithItemIdentifier:itemIdentifier reply:v10];
}

- (void)enumerateChangesForObserver:(id)a3 fromSyncAnchor:(id)a4
{
  v5 = a3;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    sub_100026C1C(v6, v7);
  }

  [v5 didUpdateItems:&__NSArray0__struct];
  [v5 didDeleteItemsWithIdentifiers:&__NSArray0__struct];
  v8 = [NSData br_changeTokenFromRank:0 uuid:self->super._uuid];
  [v5 finishEnumeratingChangesUpToSyncAnchor:v8 moreComing:0];
}

- (void)enumerateChangesForVersionObserver:(id)a3 fromSyncAnchor:(id)a4
{
  v5 = a3;
  [v5 didUpdateItems:&__NSArray0__struct];
  [v5 didDeleteItemsWithVersions:&__NSArray0__struct];
  v6 = [NSData br_changeTokenFromRank:0 uuid:self->super._uuid];
  [v5 finishEnumeratingChangesUpToSyncAnchor:v6 moreComing:0];
}

@end