@interface _ShortcutCountObserverWrapper
- (_ShortcutCountObserverWrapper)initWithFavoriteItem:(id)a3 messagePersistence:(id)a4 hookRegistry:(id)a5 countDidChange:(id)a6;
- (void)cancel;
- (void)countDidChange:(int64_t)a3 acknowledgementToken:(id)a4;
@end

@implementation _ShortcutCountObserverWrapper

- (_ShortcutCountObserverWrapper)initWithFavoriteItem:(id)a3 messagePersistence:(id)a4 hookRegistry:(id)a5 countDidChange:(id)a6
{
  v11 = a3;
  v31 = a4;
  v32 = a5;
  v12 = a6;
  v36.receiver = self;
  v36.super_class = _ShortcutCountObserverWrapper;
  v13 = [(_ShortcutCountObserverWrapper *)&v36 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_favoriteItem, a3);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000500FC;
    v33[3] = &unk_100157E10;
    v15 = v11;
    v34 = v15;
    v35 = v12;
    v16 = objc_retainBlock(v33);
    v17 = [EFDebouncer alloc];
    v18 = +[EFScheduler mainThreadScheduler];
    v19 = [v17 initWithTimeInterval:v18 scheduler:1 startAfter:v16 block:0.1];
    badgeCountDebouncer = v14->_badgeCountDebouncer;
    v14->_badgeCountDebouncer = v19;

    v21 = [v15 countQueryPredicate];
    if (v21)
    {
      v22 = [NSString alloc];
      v23 = [v15 displayName];
      v24 = [v22 initWithFormat:@"Application Shortcut Count Query %@", v23];

      v25 = [[EMQuery alloc] initWithTargetClass:objc_opt_class() predicate:v21 sortDescriptors:&__NSArray0__struct queryOptions:0 label:v24];
      v26 = [v15 serverCountMailboxScope];
      v27 = +[MFApplicationShortcutProvider log];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v25 predicate];
        *buf = 138412546;
        v38 = v28;
        v39 = 2112;
        v40 = v26;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Starting count query for predicate: %@ mailboxScope: %@", buf, 0x16u);
      }

      v29 = [[EDMessageCountQueryHandler alloc] initWithQuery:v25 serverCountMailboxScope:v26 messagePersistence:v31 hookRegistry:v32 observer:v14];
      [(_ShortcutCountObserverWrapper *)v14 setQueryHandler:v29];
    }

    else
    {
      v24 = +[MFApplicationShortcutProvider log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1000D3B88(v15, v24);
      }
    }
  }

  return v14;
}

- (void)countDidChange:(int64_t)a3 acknowledgementToken:(id)a4
{
  v8 = a4;
  [v8 invoke];
  v6 = [(_ShortcutCountObserverWrapper *)self badgeCountDebouncer];
  v7 = [NSNumber numberWithInteger:a3];
  [v6 debounceResult:v7];
}

- (void)cancel
{
  v2 = [(_ShortcutCountObserverWrapper *)self queryHandler];
  [v2 cancel];
}

@end