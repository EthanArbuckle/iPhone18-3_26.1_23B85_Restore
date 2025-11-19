@interface BLLoadExternalDownloadManifestOperation
- (BLLoadExternalDownloadManifestOperation)initWithRequest:(id)a3 uiHostProxy:(id)a4 downloadBlock:(id)a5;
- (BOOL)_runForPurchaseFormatWithURLRequest:(id)a3 error:(id *)a4;
- (id)URLRequest;
- (void)run;
@end

@implementation BLLoadExternalDownloadManifestOperation

- (BLLoadExternalDownloadManifestOperation)initWithRequest:(id)a3 uiHostProxy:(id)a4 downloadBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = BLLoadExternalDownloadManifestOperation;
  v11 = [(BLOperation *)&v18 init];
  if (v11)
  {
    v12 = [v8 URLRequest];
    v13 = [v12 copy];
    urlRequest = v11->_urlRequest;
    v11->_urlRequest = v13;

    v15 = [v10 copy];
    downloadBlock = v11->_downloadBlock;
    v11->_downloadBlock = v15;

    objc_storeStrong(&v11->_uiHostProxy, a4);
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
  v3 = [(BLLoadExternalDownloadManifestOperation *)self URLRequest];
  v4 = [v3 URL];

  if (v4)
  {
    v11 = 0;
    v5 = [(BLLoadExternalDownloadManifestOperation *)self _runForPurchaseFormatWithURLRequest:v3 error:&v11];
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

- (BOOL)_runForPurchaseFormatWithURLRequest:(id)a3 error:(id *)a4
{
  v6 = [a3 URL];
  v7 = [[BLLoadStoreDownloadQueueOperation alloc] initWithURL:v6];
  v8 = [(BLLoadExternalDownloadManifestOperation *)self uiHostProxy];
  [(BLLoadStoreDownloadQueueOperation *)v7 setUiHostProxy:v8];

  v21 = 0;
  v9 = [(BLOperation *)self runSubOperation:v7 returningError:&v21];
  v10 = v21;
  if (v9)
  {
    v11 = [(BLLoadStoreDownloadQueueOperation *)v7 downloads];
    v12 = [v11 array];

    v13 = [(BLLoadExternalDownloadManifestOperation *)self downloadBlock];
    v14 = v13;
    if (v13)
    {
      (*(v13 + 16))(v13, v12, v10);
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

    v18 = [(BLLoadExternalDownloadManifestOperation *)self downloadBlock];
    v12 = v18;
    if (v18)
    {
      (*(v18 + 16))(v18, 0, v10);
    }
  }

  if (a4)
  {
    v19 = v10;
    *a4 = v10;
  }

  return v9;
}

@end