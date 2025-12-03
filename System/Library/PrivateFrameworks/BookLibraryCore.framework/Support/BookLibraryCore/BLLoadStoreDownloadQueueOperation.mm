@interface BLLoadStoreDownloadQueueOperation
+ (id)operationForAutomaticDownloadQueue;
- (BLLoadStoreDownloadQueueOperation)initWithBagURL:(id)l account:(id)account;
- (BLLoadStoreDownloadQueueOperation)initWithURL:(id)l;
- (BOOL)_loadDownloadsFromStart:(id)start toEnd:(id)end;
- (id)_account;
- (id)_newURLRequestWithStartIdentifier:(id)identifier endIdentifier:(id)endIdentifier error:(id *)error;
- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion;
- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion;
- (void)AMSURLSession:(id)session task:(id)task handleEngagementRequest:(id)request completion:(id)completion;
- (void)_handleResponse:(id)response;
- (void)run;
- (void)setUiHostProxy:(id)proxy;
@end

@implementation BLLoadStoreDownloadQueueOperation

+ (id)operationForAutomaticDownloadQueue
{
  v2 = [self alloc];
  v3 = +[BUBag defaultBag];
  automaticDownloadQueueURL = [v3 automaticDownloadQueueURL];
  v5 = [v2 initWithBagURL:automaticDownloadQueueURL];

  return v5;
}

- (BLLoadStoreDownloadQueueOperation)initWithBagURL:(id)l account:(id)account
{
  lCopy = l;
  accountCopy = account;
  v12.receiver = self;
  v12.super_class = BLLoadStoreDownloadQueueOperation;
  v9 = [(BLOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bagURL, l);
    objc_storeStrong(&v10->_account, account);
  }

  return v10;
}

- (BLLoadStoreDownloadQueueOperation)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = BLLoadStoreDownloadQueueOperation;
  v6 = [(BLOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_URL, l);
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

- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  uiHelper = [(BLLoadStoreDownloadQueueOperation *)self uiHelper];
  [uiHelper handleDialogRequest:requestCopy completion:completionCopy];
}

- (void)AMSURLSession:(id)session task:(id)task handleEngagementRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  uiHelper = [(BLLoadStoreDownloadQueueOperation *)self uiHelper];
  [uiHelper handleEngagementRequest:requestCopy completion:completionCopy];
}

- (void)AMSURLSession:(id)session task:(id)task handleAuthenticateRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  uiHelper = [(BLLoadStoreDownloadQueueOperation *)self uiHelper];
  [uiHelper handleAuthenticateRequest:requestCopy completion:completionCopy];
}

- (void)setUiHostProxy:(id)proxy
{
  proxyCopy = proxy;
  objc_storeStrong(&self->_uiHostProxy, proxy);
  uiHelper = [(BLLoadStoreDownloadQueueOperation *)self uiHelper];

  if (!uiHelper)
  {
    v6 = objc_alloc_init(BLPurchaseUIHelper);
    [(BLLoadStoreDownloadQueueOperation *)self setUiHelper:v6];
  }

  uiHelper2 = [(BLLoadStoreDownloadQueueOperation *)self uiHelper];
  [uiHelper2 setUiHostProxy:proxyCopy];
}

- (id)_account
{
  account = self->_account;
  if (!account)
  {
    v4 = +[BUAccountsProvider sharedProvider];
    activeStoreAccount = [v4 activeStoreAccount];
    v6 = self->_account;
    self->_account = activeStoreAccount;

    account = self->_account;
  }

  return account;
}

- (void)_handleResponse:(id)response
{
  responseCopy = response;
  rangesToLoad = [responseCopy rangesToLoad];
  if ([rangesToLoad count])
  {
    [(NSMutableArray *)self->_rangesToLoad addObjectsFromArray:rangesToLoad];
  }

  downloads = [responseCopy downloads];

  if (downloads)
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

    [(NSMutableOrderedSet *)downloads unionOrderedSet:downloads];
    [(BLOperation *)self unlock];
  }
}

- (BOOL)_loadDownloadsFromStart:(id)start toEnd:(id)end
{
  startCopy = start;
  endCopy = end;
  v39 = 0;
  v8 = [(BLLoadStoreDownloadQueueOperation *)self _newURLRequestWithStartIdentifier:startCopy endIdentifier:endCopy error:&v39];
  v9 = v39;
  if (v8)
  {
    uiHostProxy = [(BLLoadStoreDownloadQueueOperation *)self uiHostProxy];

    if (uiHostProxy)
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
        object = [v15 object];
        *buf = 134218242;
        v41 = v8;
        v42 = 2112;
        v43 = object;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[DownloadQueueOperation] Received result from AMSURLRequest %p: %@", buf, 0x16u);
      }

      objc_opt_class();
      v37 = v15;
      object2 = [v15 object];
      v20 = BUDynamicCast();

      v21 = BLServiceLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218754;
        v41 = v8;
        v42 = 2114;
        v43 = startCopy;
        v44 = 2114;
        v45 = endCopy;
        v46 = 2112;
        v47 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "[DownloadQueueOperation] load downloads (request=%p, startID=%{public}@, endID=%{public}@), result.object = %@", buf, 0x2Au);
      }

      if (v20)
      {
        v36 = v20;
        v22 = [BLStoreDownloadQueueResponse alloc];
        [(BLLoadStoreDownloadQueueOperation *)self account];
        v35 = endCopy;
        v23 = startCopy;
        v25 = v24 = v11;
        [v25 ams_DSID];
        selfCopy = self;
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
        startCopy = v23;
        endCopy = v35;
        if (v32)
        {
          keybag = [(BLStoreDownloadQueueResponse *)v32 keybag];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [keybag length])
          {
            [AMSKeybag bl_importKeybagData:keybag];
          }

          [(BLLoadStoreDownloadQueueOperation *)selfCopy _handleResponse:v32];

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

- (id)_newURLRequestWithStartIdentifier:(id)identifier endIdentifier:(id)endIdentifier error:(id *)error
{
  endIdentifierCopy = endIdentifier;
  identifierCopy = identifier;
  _account = [(BLLoadStoreDownloadQueueOperation *)self _account];
  if (!self->_requestEncoder)
  {
    v11 = [_BLLoadStoreDownloadRequestEncoder alloc];
    v12 = +[BUBag defaultBag];
    v13 = [(_BLLoadStoreDownloadRequestEncoder *)v11 initWithBag:v12];
    requestEncoder = self->_requestEncoder;
    self->_requestEncoder = v13;

    [(AMSURLRequestEncoder *)self->_requestEncoder setAccount:_account];
    [(AMSURLRequestEncoder *)self->_requestEncoder setRequestEncoding:2];
    [(AMSURLRequestEncoder *)self->_requestEncoder setAnisetteType:1];
  }

  v15 = +[NSMutableDictionary dictionary];
  v16 = +[AMSDevice deviceGUID];
  [v15 setObject:v16 forKeyedSubscript:@"guid"];

  v17 = [AMSKeybag bl_keybagSyncDataForAccount:_account withTransactionType:1];
  [v15 setObject:v17 forKeyedSubscript:@"kbsync"];

  unsignedLongLongValue = [identifierCopy unsignedLongLongValue];
  unsignedLongLongValue2 = [endIdentifierCopy unsignedLongLongValue];

  if (unsignedLongLongValue - 1 < unsignedLongLongValue2)
  {
    v20 = [NSString stringWithFormat:@"%llu", unsignedLongLongValue];
    [v15 setObject:v20 forKeyedSubscript:@"startId"];

    v21 = [NSString stringWithFormat:@"%llu", unsignedLongLongValue2];
    [v15 setObject:v21 forKeyedSubscript:@"endId"];
  }

  bagURL = [(BLLoadStoreDownloadQueueOperation *)self bagURL];
  v23 = self->_requestEncoder;
  if (bagURL)
  {
    bagURL2 = [(BLLoadStoreDownloadQueueOperation *)self bagURL];
    [(AMSURLRequestEncoder *)v23 requestWithMethod:4 bagURL:bagURL2 parameters:v15];
  }

  else
  {
    bagURL2 = [(BLLoadStoreDownloadQueueOperation *)self URL];
    [(AMSURLRequestEncoder *)v23 requestWithMethod:4 URL:bagURL2 parameters:v15];
  }
  v25 = ;

  v26 = [v25 resultWithError:error];

  return v26;
}

@end