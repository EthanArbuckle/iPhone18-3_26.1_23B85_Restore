@interface BooksAskPermissionExtension
- (void)_finish;
- (void)beginRequestWithExtensionContext:(id)context;
- (void)checkDownloadQueue;
- (void)requestUpdatedWithResult:(id)result completion:(id)completion;
@end

@implementation BooksAskPermissionExtension

- (void)checkDownloadQueue
{
  v2 = BLBooksAskPermissionExtensionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BooksAskPermissionExtension: Checking download queue", v4, 2u);
  }

  v3 = +[BLDownloadQueueNonUI sharedInstance];
  [v3 reloadFromServerWithCompletion:&stru_100004158];
}

- (void)requestUpdatedWithResult:(id)result completion:(id)completion
{
  resultCopy = result;
  completionCopy = completion;
  v7 = BLBooksAskPermissionExtensionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    compile = [resultCopy compile];
    *buf = 138412290;
    v18 = compile;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BooksAskPermissionExtension: Request updated. Result: %@", buf, 0xCu);
  }

  buyParams = [resultCopy buyParams];
  itemIdentifier = [resultCopy itemIdentifier];
  v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [itemIdentifier longLongValue]);
  v12 = [BLPurchaseRequest requestWithBuyParameters:buyParams storeIdentifier:v11];

  v13 = +[BLDownloadQueueNonUI sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001080;
  v15[3] = &unk_100004180;
  v16 = completionCopy;
  v14 = completionCopy;
  [v13 purchaseWithRequest:v12 completion:v15];
}

- (void)_finish
{
  extensionContext = [(BooksAskPermissionExtension *)self extensionContext];
  [extensionContext completeRequestReturningItems:0 completionHandler:&stru_1000041C0];
}

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  [(BooksAskPermissionExtension *)self setExtensionContext:contextCopy];
  inputItems = [contextCopy inputItems];
  firstObject = [inputItems firstObject];

  userInfo = [firstObject userInfo];
  v8 = BLBooksAskPermissionExtensionLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = userInfo;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BooksAskPermissionExtension: Begining extension. User info: %@", &buf, 0xCu);
  }

  v9 = [userInfo objectForKeyedSubscript:@"checkDownloadQueue"];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    [(BooksAskPermissionExtension *)self checkDownloadQueue];
    [(BooksAskPermissionExtension *)self _finish];
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v11 = qword_1000084A0;
    v23 = qword_1000084A0;
    if (!qword_1000084A0)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v25 = sub_100001690;
      v26 = &unk_100004210;
      v27 = &v20;
      sub_100001690(&buf);
      v11 = v21[3];
    }

    v12 = v11;
    _Block_object_dispose(&v20, 8);
    v13 = [v11 alloc];
    v14 = [userInfo objectForKeyedSubscript:@"result"];
    v15 = [v13 initWithDictionary:v14];

    v16 = BLBooksAskPermissionExtensionLog();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "BooksAskPermissionExtension: Begun extension succesfully. Result: %@", &buf, 0xCu);
      }

      objc_initWeak(&buf, self);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000015F0;
      v18[3] = &unk_1000041E8;
      objc_copyWeak(&v19, &buf);
      [(BooksAskPermissionExtension *)self requestUpdatedWithResult:v15 completion:v18];
      objc_destroyWeak(&v19);
      objc_destroyWeak(&buf);
    }

    else
    {
      if (v17)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "BooksAskPermissionExtension: Context input item doesn't have result", &buf, 2u);
      }

      [(BooksAskPermissionExtension *)self _finish];
    }
  }
}

@end