@interface BLLoadExternalDownloadManifestOperation
- (BLLoadExternalDownloadManifestOperation)initWithRequest:(id)request uiHostProxy:(id)proxy downloadBlock:(id)block;
- (BOOL)_runForPurchaseFormatWithURLRequest:(id)request error:(id *)error;
- (id)URLRequest;
- (void)run;
@end

@implementation BLLoadExternalDownloadManifestOperation

- (BLLoadExternalDownloadManifestOperation)initWithRequest:(id)request uiHostProxy:(id)proxy downloadBlock:(id)block
{
  requestCopy = request;
  proxyCopy = proxy;
  blockCopy = block;
  v18.receiver = self;
  v18.super_class = BLLoadExternalDownloadManifestOperation;
  v11 = [(BLOperation *)&v18 init];
  if (v11)
  {
    uRLRequest = [requestCopy URLRequest];
    v13 = [uRLRequest copy];
    urlRequest = v11->_urlRequest;
    v11->_urlRequest = v13;

    v15 = [blockCopy copy];
    downloadBlock = v11->_downloadBlock;
    v11->_downloadBlock = v15;

    objc_storeStrong(&v11->_uiHostProxy, proxy);
  }

  return v11;
}

- (id)URLRequest
{
  [(BLOperation *)self lock];
  v3 = self->_urlRequest;
  [(BLOperation *)self unlock];

  return v3;
}

- (void)run
{
  uRLRequest = [(BLLoadExternalDownloadManifestOperation *)self URLRequest];
  v4 = [uRLRequest URL];

  if (v4)
  {
    v11 = 0;
    v5 = [(BLLoadExternalDownloadManifestOperation *)self _runForPurchaseFormatWithURLRequest:uRLRequest error:&v11];
    v6 = v11;
    if (v5)
    {
      v7 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v8 = BLServiceLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = objc_opt_class();
      v9 = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@: Invalid url request", buf, 0xCu);
    }

    v6 = sub_1000A8F44(3, 0, 0);
  }

  if (([v6 bl_isUserCancelError] & 1) == 0)
  {
    v10 = BLServiceLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not load download manifest with error:  %@", buf, 0xCu);
    }
  }

  v7 = 0;
LABEL_12:
  [(BLOperation *)self setSuccess:v7];
  [(BLOperation *)self setError:v6];
}

- (BOOL)_runForPurchaseFormatWithURLRequest:(id)request error:(id *)error
{
  v6 = [request URL];
  v7 = [[BLLoadStoreDownloadQueueOperation alloc] initWithURL:v6];
  uiHostProxy = [(BLLoadExternalDownloadManifestOperation *)self uiHostProxy];
  [(BLLoadStoreDownloadQueueOperation *)v7 setUiHostProxy:uiHostProxy];

  v21 = 0;
  v9 = [(BLOperation *)self runSubOperation:v7 returningError:&v21];
  v10 = v21;
  if (v9)
  {
    downloads = [(BLLoadStoreDownloadQueueOperation *)v7 downloads];
    array = [downloads array];

    downloadBlock = [(BLLoadExternalDownloadManifestOperation *)self downloadBlock];
    v14 = downloadBlock;
    if (downloadBlock)
    {
      (*(downloadBlock + 16))(downloadBlock, array, v10);
    }
  }

  else
  {
    v15 = BLServiceLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      *buf = 138412546;
      v23 = v16;
      v24 = 2112;
      v25 = v10;
      v17 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@: Request failed with error:  %@", buf, 0x16u);
    }

    downloadBlock2 = [(BLLoadExternalDownloadManifestOperation *)self downloadBlock];
    array = downloadBlock2;
    if (downloadBlock2)
    {
      (*(downloadBlock2 + 16))(downloadBlock2, 0, v10);
    }
  }

  if (error)
  {
    v19 = v10;
    *error = v10;
  }

  return v9;
}

@end