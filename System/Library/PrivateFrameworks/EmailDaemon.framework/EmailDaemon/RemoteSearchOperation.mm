@interface RemoteSearchOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (BOOL)shouldStartSearchContext:(id)context;
- (id)followUpContextForSearchContext:(id)context searchResult:(id)result;
- (unint64_t)emitFoundMessagesForResult:(id)result;
- (void)didFailToGetResultWithError:(id)error searchContext:(id)context;
- (void)didGetResult:(id)result searchContext:(id)context;
- (void)runForSearchContext:(id)context;
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
      ef_publicDescription = [(MFMailboxUid *)v7 ef_publicDescription];
      v15 = 138543618;
      v16 = v4;
      v17 = 2114;
      v18 = ef_publicDescription;
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
      ef_publicDescription2 = [(MFMailboxUid *)v13 ef_publicDescription];
      v15 = 138543618;
      v16 = v10;
      v17 = 2114;
      v18 = ef_publicDescription2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#search-manager [%{public}@] Begin search on mailbox %{public}@", &v15, 0x16u);
    }

    sub_1000D5C4C(v9, self);
  }
}

- (void)runForSearchContext:(id)context
{
  contextCopy = context;
  sub_1000D5BD4(self, 0);
  if (self)
  {
    ++self->_contextCount;
  }

  if ([(RemoteSearchOperation *)self shouldStartSearchContext:contextCopy])
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
    store = [(MFMailboxUid *)v7 store];
    query = [contextCopy query];
    criterion = [contextCopy criterion];
    offset = [contextCopy offset];
    if (self)
    {
      useLocalIndex = self->_useLocalIndex;
    }

    else
    {
      useLocalIndex = 0;
    }

    v13 = [store storeSearchResultMatchingQuery:query criterion:criterion limit:500 offset:offset useLocalIndex:useLocalIndex];
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
      v18 = contextCopy;
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
      [(RemoteSearchOperation *)self didFailToGetResultWithError:0 searchContext:contextCopy];
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

- (BOOL)shouldStartSearchContext:(id)context
{
  if (([(RemoteSearchOperation *)self isCancelled]& 1) == 0)
  {
    if (context)
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
      ef_publicDescription = [(MFMailboxUid *)v10 ef_publicDescription];
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
      v16 = ef_publicDescription;
      v17 = 1024;
      v18 = totalSearchResultCount;
      v19 = 1024;
      isCancelled = [(RemoteSearchOperation *)self isCancelled];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#search-manager [%{public}@] finished search on mailbox %{public}@: Found %u messages, is cancelled: %{BOOL}d", &v13, 0x22u);
    }

    sub_1000D5D24(v6, self);
  }

  return 0;
}

- (void)didGetResult:(id)result searchContext:(id)context
{
  resultCopy = result;
  contextCopy = context;
  v7 = [(RemoteSearchOperation *)self emitFoundMessagesForResult:resultCopy];
  if (self)
  {
    self->_totalSearchResultCount += v7;
  }

  v8 = [(RemoteSearchOperation *)self followUpContextForSearchContext:contextCopy searchResult:resultCopy];
  [(RemoteSearchOperation *)self runForSearchContext:v8];
}

- (void)didFailToGetResultWithError:(id)error searchContext:(id)context
{
  errorCopy = error;
  contextCopy = context;
  if (errorCopy)
  {
    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000D5D68(self, errorCopy, v8);
    }
  }

  [(RemoteSearchOperation *)self runForSearchContext:0];
}

- (unint64_t)emitFoundMessagesForResult:(id)result
{
  resultCopy = result;
  v5 = [resultCopy count];
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
    criterion = [(SourceSearchContext *)v8 criterion];
    requiresBody = [criterion requiresBody];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000B4F68;
    v13[3] = &unk_10015A720;
    v14 = requiresBody;
    v13[4] = self;
    v13[5] = &v15;
    [resultCopy enumerateMailboxesAndRemoteIDsUsingBlock:v13];
    v11 = v16[3];
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)followUpContextForSearchContext:(id)context searchResult:(id)result
{
  contextCopy = context;
  resultCopy = result;
  continueOffset = [resultCopy continueOffset];
  isCancelled = [(RemoteSearchOperation *)self isCancelled];
  if (continueOffset)
  {
    v10 = isCancelled;
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) != 0 || self && self->_totalSearchResultCount >= 0x1F4)
  {
    query = MFLogGeneral();
    if (os_log_type_enabled(query, OS_LOG_TYPE_DEFAULT))
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
      ef_publicDescription = [(MFMailboxUid *)v15 ef_publicDescription];
      v17 = ef_publicDescription;
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
      v35 = ef_publicDescription;
      v36 = 1024;
      v37 = totalSearchResultCount;
      _os_log_impl(&_mh_execute_header, query, OS_LOG_TYPE_DEFAULT, "#search-manager [%{public}@] mailbox %{public}@: Found %u messages, will stop", &v32, 0x1Cu);
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
      ef_publicDescription2 = [(MFMailboxUid *)v24 ef_publicDescription];
      v26 = ef_publicDescription2;
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
      v35 = ef_publicDescription2;
      v36 = 1024;
      v37 = v27;
      v38 = 2114;
      v39 = continueOffset;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#search-manager [%{public}@] mailbox %{public}@: Found %u messages, will continue searching with offset %{public}@", &v32, 0x26u);
    }

    v28 = [SourceSearchContext alloc];
    query = [contextCopy query];
    criterion = [contextCopy criterion];
    delegate = [contextCopy delegate];
    v19 = -[SourceSearchContext initWithQuery:criterion:delegate:offset:sessionID:](v28, "initWithQuery:criterion:delegate:offset:sessionID:", query, criterion, delegate, continueOffset, [contextCopy sessionID]);
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