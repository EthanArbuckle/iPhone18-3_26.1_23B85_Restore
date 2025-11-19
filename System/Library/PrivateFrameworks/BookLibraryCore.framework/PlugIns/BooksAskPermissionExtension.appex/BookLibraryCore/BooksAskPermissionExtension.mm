@interface BooksAskPermissionExtension
- (void)_finish;
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)checkDownloadQueue;
- (void)requestUpdatedWithResult:(id)a3 completion:(id)a4;
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

- (void)requestUpdatedWithResult:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = BLBooksAskPermissionExtensionLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 compile];
    *buf = 138412290;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BooksAskPermissionExtension: Request updated. Result: %@", buf, 0xCu);
  }

  v9 = [v5 buyParams];
  v10 = [v5 itemIdentifier];
  v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 longLongValue]);
  v12 = [BLPurchaseRequest requestWithBuyParameters:v9 storeIdentifier:v11];

  v13 = +[BLDownloadQueueNonUI sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001080;
  v15[3] = &unk_100004180;
  v16 = v6;
  v14 = v6;
  [v13 purchaseWithRequest:v12 completion:v15];
}

- (void)_finish
{
  v2 = [(BooksAskPermissionExtension *)self extensionContext];
  [v2 completeRequestReturningItems:0 completionHandler:&stru_1000041C0];
}

- (void)beginRequestWithExtensionContext:(id)a3
{
  v4 = a3;
  [(BooksAskPermissionExtension *)self setExtensionContext:v4];
  v5 = [v4 inputItems];
  v6 = [v5 firstObject];

  v7 = [v6 userInfo];
  v8 = BLBooksAskPermissionExtensionLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BooksAskPermissionExtension: Begining extension. User info: %@", &buf, 0xCu);
  }

  v9 = [v7 objectForKeyedSubscript:@"checkDownloadQueue"];
  v10 = [v9 BOOLValue];

  if (v10)
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
    v14 = [v7 objectForKeyedSubscript:@"result"];
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