@interface BLCheckDownloadQueueOperation
- (BLCheckDownloadQueueOperation)initWithDownloadQueueRequest:(id)a3;
- (id)_account;
- (id)_newURLRequestWithError:(id *)a3;
- (int64_t)numberOfAvailableDownloads;
- (void)run;
@end

@implementation BLCheckDownloadQueueOperation

- (BLCheckDownloadQueueOperation)initWithDownloadQueueRequest:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BLCheckDownloadQueueOperation;
  v5 = [(BLOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    request = v5->_request;
    v5->_request = v6;
  }

  return v5;
}

- (int64_t)numberOfAvailableDownloads
{
  [(BLOperation *)self lock];
  numberOfAvailableDownloads = self->_numberOfAvailableDownloads;
  [(BLOperation *)self unlock];
  return numberOfAvailableDownloads;
}

- (void)run
{
  v3 = BLServiceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    request = self->_request;
    v5 = [(BLStoreDownloadQueueRequest *)request queueCountURLBagKey];
    *buf = 138412546;
    v24 = request;
    v25 = 2114;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Running check download queue - request: %@, bagKey: %{public}@", buf, 0x16u);
  }

  v22 = 0;
  v6 = [(BLCheckDownloadQueueOperation *)self _newURLRequestWithError:&v22];
  v7 = v22;
  if (v7)
  {
    v8 = v7;
    v9 = BLServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = self->_request;
      *buf = 138412546;
      v24 = v10;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Check download queue: Create URL request failed - request %@, error:  %@", buf, 0x16u);
    }

    [(BLOperation *)self setError:v8];
  }

  else
  {
    v11 = +[AMSURLSession defaultSession];
    v12 = [v11 dataTaskPromiseWithRequest:v6];
    v21 = 0;
    v13 = [v12 resultWithError:&v21];
    v8 = v21;

    if (v8)
    {
      v14 = BLServiceLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = self->_request;
        *buf = 138412546;
        v24 = v15;
        v25 = 2112;
        v26 = v8;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Check download queue: URL request failed - Request %@, error:  %@", buf, 0x16u);
      }

      [(BLOperation *)self setError:v8];
    }

    else
    {
      objc_opt_class();
      v16 = [v13 object];
      v17 = BUDynamicCast();

      v18 = BLServiceLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Check download queue: Got response: %@", buf, 0xCu);
      }

      v19 = [(BLStoreDownloadQueueRequest *)v17 objectForKey:@"download-queue-item-count"];
      if (objc_opt_respondsToSelector())
      {
        v20 = [v19 intValue];
      }

      else
      {
        v20 = 0;
      }

      [(BLOperation *)self lock];
      self->_numberOfAvailableDownloads = v20;
      [(BLOperation *)self unlock];
      [(BLOperation *)self setSuccess:1];
    }
  }
}

- (id)_account
{
  v2 = [(BLStoreDownloadQueueRequest *)self->_request accountIdentifier];
  if (!v2 || ([ACAccount bu_storeAccountWithDSID:v2], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = +[BUAccountsProvider sharedProvider];
    v3 = [v4 activeStoreAccount];
  }

  return v3;
}

- (id)_newURLRequestWithError:(id *)a3
{
  v5 = [(BLCheckDownloadQueueOperation *)self _account];
  v6 = +[BUBag defaultBag];
  if (!self->_requestEncoder)
  {
    v7 = [[_BLCheckDownloadQueueRequestEncoder alloc] initWithBag:v6];
    requestEncoder = self->_requestEncoder;
    self->_requestEncoder = v7;

    [(AMSURLRequestEncoder *)self->_requestEncoder setAccount:v5];
    [(AMSURLRequestEncoder *)self->_requestEncoder setRequestEncoding:2];
  }

  v9 = +[NSMutableDictionary dictionary];
  v10 = [(BLStoreDownloadQueueRequest *)self->_request queueCountURLBagKey];
  v11 = [v6 URLForKey:v10];

  v12 = [(AMSURLRequestEncoder *)self->_requestEncoder requestWithMethod:4 bagURL:v11 parameters:v9];
  v13 = [v12 resultWithError:a3];

  return v13;
}

@end