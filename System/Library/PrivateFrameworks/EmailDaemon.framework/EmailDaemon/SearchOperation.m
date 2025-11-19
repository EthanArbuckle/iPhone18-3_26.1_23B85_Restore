@interface SearchOperation
- (SearchOperation)initWithDelegate:(id)a3 mailboxes:(id)a4 searchContext:(id)a5;
- (SearchOperationDelegate)delegate;
- (id)_orderedEnumeratorForMailboxes:(id)a3 withAccount:(id)a4;
- (id)_orderedMailboxesForAccount:(id)a3;
- (id)_performRemoteSearchesForAccount:(id)a3;
- (id)_performRemoteSearchesWithMailboxes:(id)a3 accountID:(id)a4;
- (id)_searchableMailboxesByAccount;
- (id)accounts;
- (void)_performRemoteSearchForAccount:(id)a3 coordinator:(id)a4;
- (void)accountsChanged:(id)a3;
- (void)cancel;
- (void)main;
- (void)performRemoteSearches;
- (void)updateWithAccounts:(id)a3;
@end

@implementation SearchOperation

- (SearchOperation)initWithDelegate:(id)a3 mailboxes:(id)a4 searchContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v41.receiver = self;
  v41.super_class = SearchOperation;
  v11 = [(SearchOperation *)&v41 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v8);
    v13 = [v9 copy];
    mailboxes = v12->_mailboxes;
    v12->_mailboxes = v13;

    v15 = [v10 copy];
    searchContext = v12->_searchContext;
    v12->_searchContext = v15;

    v17 = [v10 criterion];
    v18 = [v17 mailServerSideCriterion];

    if (v18)
    {
      v19 = [SourceSearchContext alloc];
      v20 = [v10 query];
      v21 = [v10 delegate];
      v22 = [v10 offset];
      v23 = -[SourceSearchContext initWithQuery:criterion:delegate:offset:sessionID:](v19, "initWithQuery:criterion:delegate:offset:sessionID:", v20, v18, v21, v22, [v10 sessionID]);

      serverSearchContext = v12->_serverSearchContext;
      v12->_serverSearchContext = v23;

      v12->_accountsLock._os_unfair_lock_opaque = 0;
      v25 = +[MailAccount activeAccounts];
      [(SearchOperation *)v12 updateWithAccounts:v25];

      v26 = [NSProgress discreteProgressWithTotalUnitCount:1];
      progress = v12->_progress;
      v12->_progress = v26;

      objc_initWeak(&location, v12);
      v28 = v12->_progress;
      v35 = _NSConcreteStackBlock;
      v36 = 3221225472;
      v37 = sub_1000B5D60;
      v38 = &unk_1001567F0;
      objc_copyWeak(&v39, &location);
      [(NSProgress *)v28 setCancellationHandler:&v35];
      v12->_remoteSearchCoordinatorsByAccountIdentifierLock._os_unfair_lock_opaque = 0;
      v29 = objc_opt_new();
      remoteSearchCoordinatorsByAccountIdentifier = v12->_remoteSearchCoordinatorsByAccountIdentifier;
      v12->_remoteSearchCoordinatorsByAccountIdentifier = v29;

      v31 = [NSNotificationCenter defaultCenter:v35];
      v32 = sub_100027C70();
      [v31 addObserver:v12 selector:"accountsChanged:" name:ECMailAccountsDidChangeNotification object:v32];

      v33 = v12;
      objc_destroyWeak(&v39);
      objc_destroyWeak(&location);
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_remoteSearchCoordinatorsByAccountIdentifierLock);
  [(NSMutableDictionary *)self->_remoteSearchCoordinatorsByAccountIdentifier enumerateKeysAndObjectsUsingBlock:&stru_10015A768];
  os_unfair_lock_unlock(&self->_remoteSearchCoordinatorsByAccountIdentifierLock);
  v3.receiver = self;
  v3.super_class = SearchOperation;
  [(SearchOperation *)&v3 cancel];
}

- (void)main
{
  v3 = [(SearchOperation *)self identifier];
  v4 = [(SearchOperation *)self isCancelled];
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(SearchOperation *)self serverSearchContext];
    v11 = 138543874;
    v12 = v3;
    v13 = 1024;
    v14 = v4;
    v15 = 1024;
    v16 = v6 != 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#search-manager SearchOperation [%{public}@] cancelled:%{BOOL}d hasServerSearchContext:%{BOOL}d", &v11, 0x18u);
  }

  if ((v4 & 1) == 0)
  {
    [(SearchOperation *)self performRemoteSearches];
  }

  v7 = [(SearchOperation *)self delegate];
  [v7 searchOperationDidFinish:self];

  if (([(SearchOperation *)self isCancelled]& 1) == 0)
  {
    v8 = [(SearchOperation *)self progress];
    v9 = [v8 totalUnitCount];
    v10 = [(SearchOperation *)self progress];
    [v10 setCompletedUnitCount:v9];
  }
}

- (id)accounts
{
  os_unfair_lock_lock(&self->_accountsLock);
  v3 = self->_accounts;
  os_unfair_lock_unlock(&self->_accountsLock);

  return v3;
}

- (void)updateWithAccounts:(id)a3
{
  v4 = a3;
  +[LocalAccount localAccount];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000B63AC;
  v16 = v24[3] = &unk_100157A08;
  v24[4] = v16;
  v18 = [v4 ef_filter:v24];

  os_unfair_lock_lock(&self->_accountsLock);
  v19 = self->_accounts;
  v5 = [[NSSet alloc] initWithArray:v18];
  accounts = self->_accounts;
  self->_accounts = v5;

  v7 = self->_accounts;
  os_unfair_lock_unlock(&self->_accountsLock);
  v8 = [(NSSet *)v19 mutableCopy];
  v17 = v7;
  [v8 minusSet:v7];
  os_unfair_lock_lock(&self->_remoteSearchCoordinatorsByAccountIdentifierLock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v10)
  {
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v9);
        }

        remoteSearchCoordinatorsByAccountIdentifier = self->_remoteSearchCoordinatorsByAccountIdentifier;
        v14 = [*(*(&v20 + 1) + 8 * v12) uniqueID];
        v15 = [(NSMutableDictionary *)remoteSearchCoordinatorsByAccountIdentifier objectForKeyedSubscript:v14];

        [v15 cancel];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v10);
  }

  os_unfair_lock_unlock(&self->_remoteSearchCoordinatorsByAccountIdentifierLock);
}

- (void)accountsChanged:(id)a3
{
  v4 = +[MailAccount activeAccounts];
  [(SearchOperation *)self updateWithAccounts:?];
}

- (id)_searchableMailboxesByAccount
{
  v3 = +[NSMutableDictionary dictionary];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(SearchOperation *)self mailboxes];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 store];
        v10 = [v9 canFetchSearchResults];

        if (v10)
        {
          v11 = [v8 account];
          v12 = [v11 uniqueID];

          if (!v12)
          {
            v14 = +[NSAssertionHandler currentHandler];
            [v14 handleFailureInMethod:a2 object:self file:@"SearchOperation.m" lineNumber:149 description:@"Need accountID for source"];
          }

          v13 = [v3 objectForKeyedSubscript:v12];
          if (!v13)
          {
            v13 = +[NSMutableArray array];
            [v3 setObject:v13 forKeyedSubscript:v12];
          }

          [v13 addObject:v8];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)performRemoteSearches
{
  v3 = [(SearchOperation *)self progress];
  [v3 becomeCurrentWithPendingUnitCount:1];
  v4 = [(SearchOperation *)self _searchableMailboxesByAccount];
  v5 = [v4 count];
  if (v5)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(SearchOperation *)self identifier];
      *buf = 138543618;
      v27 = v7;
      v28 = 1024;
      v29 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#search-manager [%{public}@] Begin remote searches for %u accounts (A)", buf, 0x12u);
    }

    [NSProgress progressWithTotalUnitCount:v5];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000B6A84;
    v23[3] = &unk_10015A790;
    v24 = v23[4] = self;
    v8 = v24;
    [v4 enumerateKeysAndObjectsUsingBlock:v23];
  }

  else
  {
    v9 = [(SearchOperation *)self mailboxes];
    v10 = [v9 count];

    if (v10)
    {
      goto LABEL_7;
    }

    v11 = [(SearchOperation *)self accounts];
    if ([v11 count])
    {
      v12 = MFLogGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(SearchOperation *)self identifier];
        *buf = 138543618;
        v27 = v13;
        v28 = 1024;
        v29 = [v11 count];
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#search-manager [%{public}@] Begin remote searches for %u accounts (B)", buf, 0x12u);
      }

      v14 = +[NSProgress progressWithTotalUnitCount:](NSProgress, "progressWithTotalUnitCount:", [v11 count]);
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = v11;
      v15 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v15)
      {
        v16 = *v20;
        do
        {
          v17 = 0;
          do
          {
            if (*v20 != v16)
            {
              objc_enumerationMutation(v8);
            }

            v18 = [(SearchOperation *)self _performRemoteSearchesForAccount:*(*(&v19 + 1) + 8 * v17), v19];
            [v14 addChild:v18 withPendingUnitCount:1];

            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
        }

        while (v15);
      }
    }

    else
    {
      v8 = v11;
    }
  }

LABEL_7:
  [v3 resignCurrent];
}

- (id)_performRemoteSearchesWithMailboxes:(id)a3 accountID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSProgress discreteProgressWithTotalUnitCount:](NSProgress, "discreteProgressWithTotalUnitCount:", [v6 count]);
  v9 = [MailAccount accountWithUniqueId:v7];
  v10 = [(SearchOperation *)self accounts];
  v11 = [v10 containsObject:v9];

  if (v11)
  {
    v12 = [RemoteSearchCoordinator alloc];
    v13 = [(SearchOperation *)self serverSearchContext];
    v14 = [(SearchOperation *)self identifier];
    v15 = [(RemoteSearchCoordinator *)v12 initWithAccount:v9 searchContext:v13 logIdentifier:v14 progress:v8];

    v16 = [(SearchOperation *)self searchContext];
    v17 = [v16 delegate];

    objc_initWeak(&location, v17);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000B6DFC;
    v22[3] = &unk_10015A7B8;
    objc_copyWeak(&v23, &location);
    [(RemoteSearchCoordinator *)v15 setFoundMessagesCompletion:v22];
    [(SearchOperation *)self _orderedEnumeratorForMailboxes:v6 withAccount:v9];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000B6E80;
    v18 = v20[3] = &unk_10015A7E0;
    v21 = v18;
    [(RemoteSearchCoordinator *)v15 setNextSearchableMailbox:v20];
    [(SearchOperation *)self _performRemoteSearchForAccount:v9 coordinator:v15];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    [v8 cancel];
  }

  return v8;
}

- (id)_performRemoteSearchesForAccount:(id)a3
{
  v4 = a3;
  v5 = [NSProgress discreteProgressWithTotalUnitCount:-1];
  v6 = [(SearchOperation *)self accounts];
  v7 = [v6 containsObject:v4];

  if ((v7 & 1) == 0)
  {
    [v5 cancel];
    goto LABEL_9;
  }

  v8 = [RemoteSearchCoordinator alloc];
  v9 = [(SearchOperation *)self serverSearchContext];
  v10 = [(SearchOperation *)self identifier];
  v11 = [(RemoteSearchCoordinator *)v8 initWithAccount:v4 searchContext:v9 logIdentifier:v10 progress:v5];

  v12 = [(SearchOperation *)self searchContext];
  v13 = [v12 delegate];

  objc_initWeak(location, v13);
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1000B7370;
  v41[3] = &unk_10015A7B8;
  objc_copyWeak(&v42, location);
  [(RemoteSearchCoordinator *)v11 setFoundMessagesCompletion:v41];
  v14 = [v4 allMailMailboxUid];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_7;
  }

  v16 = [v14 store];
  v17 = [v16 canFetchSearchResults];

  if (!v17)
  {

LABEL_7:
    v27 = v13;
    v19 = [(SearchOperation *)self _orderedMailboxesForAccount:v4];
    v20 = [v19 objectEnumerator];
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = [v19 count];
    [v5 setTotalUnitCount:v38[3]];
    v21 = [(SearchOperation *)self identifier];
    v22 = [v4 uniqueID];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000B7460;
    v28[3] = &unk_10015A830;
    v23 = v20;
    v29 = v23;
    v30 = v5;
    v33 = &v37;
    v24 = v21;
    v31 = v24;
    v32 = v22;
    v25 = v22;
    [(RemoteSearchCoordinator *)v11 setNextSearchableMailbox:v28];

    _Block_object_dispose(&v37, 8);
    v18 = 0;
    v13 = v27;
    goto LABEL_8;
  }

  [v5 setTotalUnitCount:1];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  LOBYTE(v40) = 1;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000B73F4;
  v34[3] = &unk_10015A808;
  v36 = &v37;
  v18 = v15;
  v35 = v18;
  [(RemoteSearchCoordinator *)v11 setNextSearchableMailbox:v34];

  _Block_object_dispose(&v37, 8);
LABEL_8:
  [(SearchOperation *)self _performRemoteSearchForAccount:v4 coordinator:v11];

  objc_destroyWeak(&v42);
  objc_destroyWeak(location);

LABEL_9:

  return v5;
}

- (void)_performRemoteSearchForAccount:(id)a3 coordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 uniqueID];
  os_unfair_lock_lock(&self->_remoteSearchCoordinatorsByAccountIdentifierLock);
  [(NSMutableDictionary *)self->_remoteSearchCoordinatorsByAccountIdentifier setObject:v7 forKeyedSubscript:v8];
  os_unfair_lock_unlock(&self->_remoteSearchCoordinatorsByAccountIdentifierLock);
  if (([(SearchOperation *)self isCancelled]& 1) == 0)
  {
    v9 = [(SearchOperation *)self accounts];
    v10 = [v9 containsObject:v6];

    if (v10)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000B77B0;
      v11[3] = &unk_100156400;
      v11[4] = self;
      [v7 setStopEarly:v11];
      [v7 performSearch];
    }
  }

  os_unfair_lock_lock(&self->_remoteSearchCoordinatorsByAccountIdentifierLock);
  [(NSMutableDictionary *)self->_remoteSearchCoordinatorsByAccountIdentifier setObject:0 forKeyedSubscript:v8];
  os_unfair_lock_unlock(&self->_remoteSearchCoordinatorsByAccountIdentifierLock);
}

- (id)_orderedEnumeratorForMailboxes:(id)a3 withAccount:(id)a4
{
  v5 = a3;
  v19 = a4;
  v21 = v5;
  if ([v5 count] == 1)
  {
    v6 = [v5 objectEnumerator];
    goto LABEL_31;
  }

  v20 = objc_opt_new();
  v23 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v7)
  {

    v10 = 0;
    v9 = 0;
    v8 = 0;
    goto LABEL_24;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *v25;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v25 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v24 + 1) + 8 * i);
      if (!v8 && [*(*(&v24 + 1) + 8 * i) type] == 7)
      {
        v8 = v13;
LABEL_17:
        v14 = v13;
        continue;
      }

      if (!v9 && ([v13 isSentMailboxUid] & 1) != 0)
      {
        v9 = v13;
        goto LABEL_17;
      }

      if (!v10 && [v13 type] == 5)
      {
        v10 = v13;
        goto LABEL_17;
      }

      [v23 addObject:v13];
    }

    v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v7);

  if (v8)
  {
    [v20 addObject:v8];
  }

LABEL_24:
  if ([v23 count])
  {
    v15 = +[MFMailMessageLibrary defaultInstance];
    v16 = [v15 mailboxFrecencyController];

    v17 = [v16 sortedArrayOfMailboxes:v23];
    [v20 addObjectsFromArray:v17];
  }

  if (v9)
  {
    [v20 addObject:v9];
  }

  if (v10)
  {
    [v20 addObject:v10];
  }

  v6 = [v20 objectEnumerator];

LABEL_31:

  return v6;
}

- (id)_orderedMailboxesForAccount:(id)a3
{
  v22 = a3;
  v23 = +[NSMutableArray array];
  v26 = [v22 primaryMailboxUid];
  v24 = objc_opt_new();
  v3 = [v22 isSyncingNotes];
  v4 = +[MFMailMessageLibrary defaultInstance];
  v5 = [v4 mailboxFrecencyController];

  v20 = v5;
  v21 = [v5 sortedArrayOfMailboxesForAccount:v22];
  v6 = [NSMutableOrderedSet alloc];
  v7 = [NSOrderedSet orderedSetWithArray:v21];
  v8 = [v6 initWithOrderedSet:v7];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v8;
  v9 = 0;
  v10 = 0;
  v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        if (v3)
        {
          v15 = [*(*(&v27 + 1) + 8 * i) isNotesMailboxUid];
          if (v14 == v26)
          {
            v16 = 1;
          }

          else
          {
            v16 = v15;
          }

          if (v16)
          {
            continue;
          }
        }

        else if (v14 == v26)
        {
          continue;
        }

        if (!v10 && ([v14 isSentMailboxUid] & 1) != 0)
        {
          v10 = v14;
LABEL_19:
          v17 = v14;
          continue;
        }

        if (!v9 && (+[MFMailboxUid isDraftsMailboxType:](MFMailboxUid, "isDraftsMailboxType:", [v14 mailboxType]) & 1) != 0)
        {
          v9 = v14;
          goto LABEL_19;
        }

        [v24 addObject:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v11);
  }

  if (v26)
  {
    [v23 addObject:v26];
  }

  if ([v24 count])
  {
    [v23 addObjectsFromArray:v24];
  }

  if (v10)
  {
    [v23 addObject:v10];
  }

  if (v9)
  {
    [v23 addObject:v9];
  }

  v18 = v23;

  return v23;
}

- (SearchOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end