@interface BLLoadStoreDownloadQueueOperation
+ (id)operationForAutomaticDownloadQueue;
- (BLLoadStoreDownloadQueueOperation)initWithBagURL:(id)a3 account:(id)a4;
- (BLLoadStoreDownloadQueueOperation)initWithURL:(id)a3;
- (BOOL)_loadDownloadsFromStart:(id)a3 toEnd:(id)a4;
- (id)_account;
- (id)_newURLRequestWithStartIdentifier:(id)a3 endIdentifier:(id)a4 error:(id *)a5;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleEngagementRequest:(id)a5 completion:(id)a6;
- (void)_handleResponse:(id)a3;
- (void)run;
- (void)setUiHostProxy:(id)a3;
@end

@implementation BLLoadStoreDownloadQueueOperation

+ (id)operationForAutomaticDownloadQueue
{
  v2 = [a1 alloc];
  v3 = +[BUBag defaultBag];
  v4 = [v3 automaticDownloadQueueURL];
  v5 = [v2 initWithBagURL:v4];

  return v5;
}

- (BLLoadStoreDownloadQueueOperation)initWithBagURL:(id)a3 account:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BLLoadStoreDownloadQueueOperation;
  v9 = [(BLOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bagURL, a3);
    objc_storeStrong(&v10->_account, a4);
  }

  return v10;
}

- (BLLoadStoreDownloadQueueOperation)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BLLoadStoreDownloadQueueOperation;
  v6 = [(BLOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, a3);
  }

  return v7;
}

- (void)run
{
  URL = self->_URL;
  v4 = BLServiceLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (URL)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = self->_URL;
    account = self->_account;
    *buf = 138412546;
    v20 = v6;
    v21 = 2112;
    v22 = account;
    v8 = "[DownloadQueueOperation] Running load download queue - URL: %@, account: %@";
    v9 = v4;
    v10 = 22;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v11 = self->_account;
    *buf = 138412290;
    v20 = v11;
    v8 = "[DownloadQueueOperation] Running load download queue - account: %@";
    v9 = v4;
    v10 = 12;
  }

  _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_7:

  v12 = [[NSMutableArray alloc] initWithObjects:{&off_100129818, 0}];
  rangesToLoad = self->_rangesToLoad;
  self->_rangesToLoad = v12;

  if ([(NSMutableArray *)self->_rangesToLoad count]>= 2)
  {
    do
    {
      if (([(BLLoadStoreDownloadQueueOperation *)self isCancelled]& 1) != 0)
      {
        break;
      }

      v14 = [(NSMutableArray *)self->_rangesToLoad objectAtIndexedSubscript:0];
      v15 = [(NSMutableArray *)self->_rangesToLoad objectAtIndexedSubscript:1];
      v16 = [(BLLoadStoreDownloadQueueOperation *)self _loadDownloadsFromStart:v14 toEnd:v15];
      v17 = self->_rangesToLoad;
      if (v16)
      {
        [(NSMutableArray *)v17 removeObjectsInRange:0, 2];
        [(BLOperation *)self setSuccess:[(NSMutableArray *)self->_rangesToLoad count]== 0];
      }

      else
      {
        [(NSMutableArray *)v17 removeAllObjects];
      }
    }

    while ([(NSMutableArray *)self->_rangesToLoad count]> 1);
  }

  v18 = self->_rangesToLoad;
  self->_rangesToLoad = 0;
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = [(BLLoadStoreDownloadQueueOperation *)self uiHelper];
  [v10 handleDialogRequest:v9 completion:v8];
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleEngagementRequest:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = [(BLLoadStoreDownloadQueueOperation *)self uiHelper];
  [v10 handleEngagementRequest:v9 completion:v8];
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleAuthenticateRequest:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = [(BLLoadStoreDownloadQueueOperation *)self uiHelper];
  [v10 handleAuthenticateRequest:v9 completion:v8];
}

- (void)setUiHostProxy:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_uiHostProxy, a3);
  v5 = [(BLLoadStoreDownloadQueueOperation *)self uiHelper];

  if (!v5)
  {
    v6 = objc_alloc_init(BLPurchaseUIHelper);
    [(BLLoadStoreDownloadQueueOperation *)self setUiHelper:v6];
  }

  v7 = [(BLLoadStoreDownloadQueueOperation *)self uiHelper];
  [v7 setUiHostProxy:v8];
}

- (id)_account
{
  account = self->_account;
  if (!account)
  {
    v4 = +[BUAccountsProvider sharedProvider];
    v5 = [v4 activeStoreAccount];
    v6 = self->_account;
    self->_account = v5;

    account = self->_account;
  }

  return account;
}

- (void)_handleResponse:(id)a3
{
  v9 = a3;
  v4 = [v9 rangesToLoad];
  if ([v4 count])
  {
    [(NSMutableArray *)self->_rangesToLoad addObjectsFromArray:v4];
  }

  v5 = [v9 downloads];

  if (v5)
  {
    [(BLOperation *)self lock];
    downloads = self->_downloads;
    if (!downloads)
    {
      v7 = objc_alloc_init(NSMutableOrderedSet);
      v8 = self->_downloads;
      self->_downloads = v7;

      downloads = self->_downloads;
    }

    [(NSMutableOrderedSet *)downloads unionOrderedSet:v5];
    [(BLOperation *)self unlock];
  }
}

- (BOOL)_loadDownloadsFromStart:(id)a3 toEnd:(id)a4
{
  v6 = a3;
  v7 = a4;
  v39 = 0;
  v8 = [(BLLoadStoreDownloadQueueOperation *)self _newURLRequestWithStartIdentifier:v6 endIdentifier:v7 error:&v39];
  v9 = v39;
  if (v8)
  {
    v10 = [(BLLoadStoreDownloadQueueOperation *)self uiHostProxy];

    if (v10)
    {
      v11 = objc_alloc_init(AMSURLSession);
      [v11 setDelegate:self];
    }

    else
    {
      v11 = +[AMSURLSession defaultSession];
    }

    v14 = [v11 dataTaskPromiseWithRequest:v8];
    v38 = v9;
    v15 = [v14 resultWithError:&v38];
    v13 = v38;

    v12 = v15 != 0;
    v16 = BLServiceLog();
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v15 object];
        *buf = 134218242;
        v41 = v8;
        v42 = 2112;
        v43 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[DownloadQueueOperation] Received result from AMSURLRequest %p: %@", buf, 0x16u);
      }

      objc_opt_class();
      v37 = v15;
      v19 = [v15 object];
      v20 = BUDynamicCast();

      v21 = BLServiceLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218754;
        v41 = v8;
        v42 = 2114;
        v43 = v6;
        v44 = 2114;
        v45 = v7;
        v46 = 2112;
        v47 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "[DownloadQueueOperation] load downloads (request=%p, startID=%{public}@, endID=%{public}@), result.object = %@", buf, 0x2Au);
      }

      if (v20)
      {
        v36 = v20;
        v22 = [BLStoreDownloadQueueResponse alloc];
        [(BLLoadStoreDownloadQueueOperation *)self account];
        v35 = v7;
        v23 = v6;
        v25 = v24 = v11;
        [v25 ams_DSID];
        v26 = self;
        v27 = v8;
        v28 = v13;
        v30 = v29 = v12;
        v31 = v22;
        v20 = v36;
        v32 = [(BLStoreDownloadQueueResponse *)v31 initWithDictionary:v36 userIdentifier:v30];

        v12 = v29;
        v13 = v28;
        v8 = v27;

        v11 = v24;
        v6 = v23;
        v7 = v35;
        if (v32)
        {
          v33 = [(BLStoreDownloadQueueResponse *)v32 keybag];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v33 length])
          {
            [AMSKeybag bl_importKeybagData:v33];
          }

          [(BLLoadStoreDownloadQueueOperation *)v26 _handleResponse:v32];

          v20 = v36;
        }
      }

      v15 = v37;
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v41 = v8;
        v42 = 2112;
        v43 = v13;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[DownloadQueueOperation] Received nil result from AMSURLRequest %p. Error:  %@", buf, 0x16u);
      }

      [(BLOperation *)self setError:v13];
    }
  }

  else
  {
    [(BLOperation *)self setError:v9];
    v12 = 0;
    v13 = v9;
  }

  return v12;
}

- (id)_newURLRequestWithStartIdentifier:(id)a3 endIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(BLLoadStoreDownloadQueueOperation *)self _account];
  if (!self->_requestEncoder)
  {
    v11 = [_BLLoadStoreDownloadRequestEncoder alloc];
    v12 = +[BUBag defaultBag];
    v13 = [(_BLLoadStoreDownloadRequestEncoder *)v11 initWithBag:v12];
    requestEncoder = self->_requestEncoder;
    self->_requestEncoder = v13;

    [(AMSURLRequestEncoder *)self->_requestEncoder setAccount:v10];
    [(AMSURLRequestEncoder *)self->_requestEncoder setRequestEncoding:2];
    [(AMSURLRequestEncoder *)self->_requestEncoder setAnisetteType:1];
  }

  v15 = +[NSMutableDictionary dictionary];
  v16 = +[AMSDevice deviceGUID];
  [v15 setObject:v16 forKeyedSubscript:@"guid"];

  v17 = [AMSKeybag bl_keybagSyncDataForAccount:v10 withTransactionType:1];
  [v15 setObject:v17 forKeyedSubscript:@"kbsync"];

  v18 = [v9 unsignedLongLongValue];
  v19 = [v8 unsignedLongLongValue];

  if (v18 - 1 < v19)
  {
    v20 = [NSString stringWithFormat:@"%llu", v18];
    [v15 setObject:v20 forKeyedSubscript:@"startId"];

    v21 = [NSString stringWithFormat:@"%llu", v19];
    [v15 setObject:v21 forKeyedSubscript:@"endId"];
  }

  v22 = [(BLLoadStoreDownloadQueueOperation *)self bagURL];
  v23 = self->_requestEncoder;
  if (v22)
  {
    v24 = [(BLLoadStoreDownloadQueueOperation *)self bagURL];
    [(AMSURLRequestEncoder *)v23 requestWithMethod:4 bagURL:v24 parameters:v15];
  }

  else
  {
    v24 = [(BLLoadStoreDownloadQueueOperation *)self URL];
    [(AMSURLRequestEncoder *)v23 requestWithMethod:4 URL:v24 parameters:v15];
  }
  v25 = ;

  v26 = [v25 resultWithError:a5];

  return v26;
}

@end