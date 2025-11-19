@interface RemoteSearchOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (BOOL)shouldStartSearchContext:(id)a3;
- (id)followUpContextForSearchContext:(id)a3 searchResult:(id)a4;
- (unint64_t)emitFoundMessagesForResult:(id)a3;
- (void)didFailToGetResultWithError:(id)a3 searchContext:(id)a4;
- (void)didGetResult:(id)a3 searchContext:(id)a4;
- (void)runForSearchContext:(id)a3;
- (void)start;
@end

@implementation RemoteSearchOperation

- (void)start
{
  if ([(RemoteSearchOperation *)self isCancelled])
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v4 = self->_logPrefix;
        mailbox = self->_mailbox;
        v6 = v4;
      }

      else
      {
        v4 = 0;
        v6 = 0;
        mailbox = 0;
      }

      v7 = mailbox;
      v8 = [(MFMailboxUid *)v7 ef_publicDescription];
      v15 = 138543618;
      v16 = v4;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#search-manager [%{public}@] Search on mailbox %{public}@ was cancelled.", &v15, 0x16u);
    }

    sub_1000D5B34(self, 2u);
  }

  else
  {
    sub_1000D5B34(self, 1u);
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v10 = self->_logPrefix;
        v11 = self->_mailbox;
        v12 = v10;
      }

      else
      {
        v10 = 0;
        v12 = 0;
        v11 = 0;
      }

      v13 = v11;
      v14 = [(MFMailboxUid *)v13 ef_publicDescription];
      v15 = 138543618;
      v16 = v10;
      v17 = 2114;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#search-manager [%{public}@] Begin search on mailbox %{public}@", &v15, 0x16u);
    }

    sub_1000D5C4C(v9, self);
  }
}

- (void)runForSearchContext:(id)a3
{
  v4 = a3;
  sub_1000D5BD4(self, 0);
  if (self)
  {
    ++self->_contextCount;
  }

  if ([(RemoteSearchOperation *)self shouldStartSearchContext:v4])
  {
    if (self)
    {
      mailbox = self->_mailbox;
    }

    else
    {
      mailbox = 0;
    }

    v7 = mailbox;
    v8 = [(MFMailboxUid *)v7 store];
    v9 = [v4 query];
    v10 = [v4 criterion];
    v11 = [v4 offset];
    if (self)
    {
      useLocalIndex = self->_useLocalIndex;
    }

    else
    {
      useLocalIndex = 0;
    }

    v13 = [v8 storeSearchResultMatchingQuery:v9 criterion:v10 limit:500 offset:v11 useLocalIndex:useLocalIndex];
    sub_1000D5BD4(self, v13);

    if (self && self->_currentFuture)
    {
      if (self->_contextCount >= 2)
      {
        v14 = MFLogGeneral();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          logPrefix = self->_logPrefix;
          contextCount = self->_contextCount;
          *buf = 138543618;
          *&buf[4] = logPrefix;
          v27 = 1024;
          v28 = contextCount;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#search-manager [%{public}@] context #%u", buf, 0x12u);
        }
      }

      objc_initWeak(buf, self);
      v17 = self->_currentFuture;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000B49D8;
      v23[3] = &unk_10015A6F8;
      objc_copyWeak(&v25, buf);
      v18 = v4;
      v24 = v18;
      [v17 addSuccessBlock:v23];

      v19 = self->_currentFuture;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000B4A50;
      v20[3] = &unk_100157578;
      objc_copyWeak(&v22, buf);
      v21 = v18;
      [v19 addFailureBlock:v20];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&v25);
      objc_destroyWeak(buf);
    }

    else
    {
      [(RemoteSearchOperation *)self didFailToGetResultWithError:0 searchContext:v4];
    }
  }

  else
  {
    v5 = MFLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000D5C90(self == 0, self, v5);
    }

    sub_1000D5B34(self, 2u);
  }
}

- (BOOL)shouldStartSearchContext:(id)a3
{
  if (([(RemoteSearchOperation *)self isCancelled]& 1) == 0)
  {
    if (a3)
    {
      return 1;
    }

    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v7 = self->_logPrefix;
        mailbox = self->_mailbox;
        v9 = v7;
      }

      else
      {
        v7 = 0;
        v9 = 0;
        mailbox = 0;
      }

      v10 = mailbox;
      v11 = [(MFMailboxUid *)v10 ef_publicDescription];
      if (self)
      {
        totalSearchResultCount = self->_totalSearchResultCount;
      }

      else
      {
        totalSearchResultCount = 0;
      }

      v13 = 138544130;
      v14 = v7;
      v15 = 2114;
      v16 = v11;
      v17 = 1024;
      v18 = totalSearchResultCount;
      v19 = 1024;
      v20 = [(RemoteSearchOperation *)self isCancelled];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#search-manager [%{public}@] finished search on mailbox %{public}@: Found %u messages, is cancelled: %{BOOL}d", &v13, 0x22u);
    }

    sub_1000D5D24(v6, self);
  }

  return 0;
}

- (void)didGetResult:(id)a3 searchContext:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(RemoteSearchOperation *)self emitFoundMessagesForResult:v9];
  if (self)
  {
    self->_totalSearchResultCount += v7;
  }

  v8 = [(RemoteSearchOperation *)self followUpContextForSearchContext:v6 searchResult:v9];
  [(RemoteSearchOperation *)self runForSearchContext:v8];
}

- (void)didFailToGetResultWithError:(id)a3 searchContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000D5D68(self, v6, v8);
    }
  }

  [(RemoteSearchOperation *)self runForSearchContext:0];
}

- (unint64_t)emitFoundMessagesForResult:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  v6 = sub_1000D5BEC(&self->super.super.isa);
  [v6 remoteSearchOperation:self didFindResults:v5 != 0];

  if (v5)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    if (self)
    {
      searchContext = self->_searchContext;
    }

    else
    {
      searchContext = 0;
    }

    v8 = searchContext;
    v9 = [(SourceSearchContext *)v8 criterion];
    v10 = [v9 requiresBody];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000B4F68;
    v13[3] = &unk_10015A720;
    v14 = v10;
    v13[4] = self;
    v13[5] = &v15;
    [v4 enumerateMailboxesAndRemoteIDsUsingBlock:v13];
    v11 = v16[3];
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)followUpContextForSearchContext:(id)a3 searchResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 continueOffset];
  v9 = [(RemoteSearchOperation *)self isCancelled];
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) != 0 || self && self->_totalSearchResultCount >= 0x1F4)
  {
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v12 = self->_logPrefix;
        mailbox = self->_mailbox;
        v14 = v12;
      }

      else
      {
        v12 = 0;
        v14 = 0;
        mailbox = 0;
      }

      v15 = mailbox;
      v16 = [(MFMailboxUid *)v15 ef_publicDescription];
      v17 = v16;
      if (self)
      {
        totalSearchResultCount = self->_totalSearchResultCount;
      }

      else
      {
        totalSearchResultCount = 0;
      }

      v32 = 138543874;
      v33 = v12;
      v34 = 2114;
      v35 = v16;
      v36 = 1024;
      v37 = totalSearchResultCount;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#search-manager [%{public}@] mailbox %{public}@: Found %u messages, will stop", &v32, 0x1Cu);
    }

    v19 = 0;
  }

  else
  {
    v20 = MFLogGeneral();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v21 = self->_logPrefix;
        v22 = self->_mailbox;
        v23 = v21;
      }

      else
      {
        v21 = 0;
        v23 = 0;
        v22 = 0;
      }

      v24 = v22;
      v25 = [(MFMailboxUid *)v24 ef_publicDescription];
      v26 = v25;
      if (self)
      {
        v27 = self->_totalSearchResultCount;
      }

      else
      {
        v27 = 0;
      }

      v32 = 138544130;
      v33 = v21;
      v34 = 2114;
      v35 = v25;
      v36 = 1024;
      v37 = v27;
      v38 = 2114;
      v39 = v8;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#search-manager [%{public}@] mailbox %{public}@: Found %u messages, will continue searching with offset %{public}@", &v32, 0x26u);
    }

    v28 = [SourceSearchContext alloc];
    v11 = [v6 query];
    v29 = [v6 criterion];
    v30 = [v6 delegate];
    v19 = -[SourceSearchContext initWithQuery:criterion:delegate:offset:sessionID:](v28, "initWithQuery:criterion:delegate:offset:sessionID:", v11, v29, v30, v8, [v6 sessionID]);
  }

  return v19;
}

- (BOOL)isExecuting
{
  if (self)
  {
    v2 = atomic_load(&self->_state);
    LOBYTE(self) = v2 == 1;
  }

  return self;
}

- (BOOL)isFinished
{
  if (self)
  {
    v2 = atomic_load(&self->_state);
    LOBYTE(self) = v2 == 2;
  }

  return self;
}

@end