@interface Categories_Service
+ (id)_AppStoreIDToDHIDCategoriesMap;
+ (id)_macAppStoreIDToDHIDCategoriesMap;
+ (void)_lookupAppStoreUsing:(id)a3 platform:(id)a4 clientApplication:(id)a5 withCompletionHandler:(id)a6;
+ (void)_lookupGenreIDAndCounterpartIdentifiersInPlist:(id)a3 withCompletionHandler:(id)a4;
- (Categories_Service)init;
- (void)dealloc;
- (void)genreIDsAndCounterpartIdentifiersForInstalledBundleIDs:(id)a3 replyHandler:(id)a4;
- (void)lookupAppStoreForBundleIDs:(id)a3 platform:(id)a4 replyHandler:(id)a5;
@end

@implementation Categories_Service

- (Categories_Service)init
{
  v10.receiver = self;
  v10.super_class = Categories_Service;
  v2 = [(Categories_Service *)&v10 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.ctcategories.service", "service");
    v4 = qword_100010DC0;
    qword_100010DC0 = v3;

    v5 = qword_100010DC0;
    if (os_log_type_enabled(qword_100010DC0, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "[Categories_Service init]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.ctcategories.service", v6);
    queue = v2->_queue;
    v2->_queue = v7;

    +[NSXPCListener enableTransactions];
  }

  return v2;
}

- (void)dealloc
{
  v3 = qword_100010DC0;
  if (os_log_type_enabled(qword_100010DC0, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v6 = "[Categories_Service dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = Categories_Service;
  [(Categories_Service *)&v4 dealloc];
}

- (void)genreIDsAndCounterpartIdentifiersForInstalledBundleIDs:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSXPCConnection currentConnection];
  v9 = [v8 valueForEntitlement:@"application-identifier"];

  v10 = qword_100010DC0;
  if (os_log_type_enabled(qword_100010DC0, OS_LOG_TYPE_INFO))
  {
    *buf = 138412803;
    v20 = v9;
    v21 = 2080;
    v22 = "[Categories_Service genreIDsAndCounterpartIdentifiersForInstalledBundleIDs:replyHandler:]";
    v23 = 2113;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "<%@>::%s = %{private}@", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001760;
  block[3] = &unk_10000C410;
  v16 = v6;
  v17 = v9;
  v18 = v7;
  v12 = v7;
  v13 = v9;
  v14 = v6;
  dispatch_async(queue, block);
}

- (void)lookupAppStoreForBundleIDs:(id)a3 platform:(id)a4 replyHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[NSXPCConnection currentConnection];
  v12 = [v11 valueForEntitlement:@"application-identifier"];

  v13 = qword_100010DC0;
  if (os_log_type_enabled(qword_100010DC0, OS_LOG_TYPE_INFO))
  {
    *buf = 138412803;
    v25 = v12;
    v26 = 2080;
    v27 = "[Categories_Service lookupAppStoreForBundleIDs:platform:replyHandler:]";
    v28 = 2113;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "<%@>::%s = %{private}@", buf, 0x20u);
  }

  queue = self->_queue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100001B80;
  v19[3] = &unk_10000C438;
  v20 = v8;
  v21 = v9;
  v22 = v12;
  v23 = v10;
  v15 = v10;
  v16 = v12;
  v17 = v9;
  v18 = v8;
  dispatch_async(queue, v19);
}

+ (id)_AppStoreIDToDHIDCategoriesMap
{
  if (qword_100010DD0 != -1)
  {
    sub_1000057C0();
  }

  v3 = qword_100010DC8;

  return v3;
}

+ (id)_macAppStoreIDToDHIDCategoriesMap
{
  if (qword_100010DE0 != -1)
  {
    sub_1000057D4();
  }

  v3 = qword_100010DD8;

  return v3;
}

+ (void)_lookupGenreIDAndCounterpartIdentifiersInPlist:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000023E4;
  v9[3] = &unk_10000C4C0;
  v11 = v13;
  v12 = a1;
  v8 = objc_alloc_init(NSMutableDictionary);
  v10 = v8;
  [v6 enumerateObjectsUsingBlock:v9];
  v7[2](v7, 0, v8);

  _Block_object_dispose(v13, 8);
}

+ (void)_lookupAppStoreUsing:(id)a3 platform:(id)a4 clientApplication:(id)a5 withCompletionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100002A98;
  v40 = sub_100002AA8;
  v41 = 0;
  if (+[CTNetworkReachability networkReachable])
  {
    v13 = objc_alloc_init(NSMutableDictionary);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100002AB0;
    v31[3] = &unk_10000C4E8;
    v14 = v9;
    v32 = v14;
    v15 = v13;
    v33 = v15;
    v35 = &v36;
    v34 = v12;
    v16 = objc_retainBlock(v31);
    v17 = [[CTAppStoreSearch alloc] initWithCallingProcess:v11];
    if ([v10 isEqualToString:CTOSPlatformmacOS])
    {
      v18 = 1;
    }

    else if ([v10 isEqualToString:CTOSPlatformiOS] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", CTOSPlatformwatchOS) & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", CTOSPlatformvisionOS))
    {
      v18 = 6;
    }

    else if ([v10 isEqualToString:CTOSPlatformtvOS])
    {
      v18 = 8;
    }

    else
    {
      v18 = 15;
    }

    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = sub_100002A98;
    v29[4] = sub_100002AA8;
    v30 = [NSMutableSet setWithArray:v14];
    v22 = [v14 componentsJoinedByString:{@", "}];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100002EF0;
    v25[3] = &unk_10000C560;
    v28 = v29;
    v23 = v16;
    v27 = v23;
    v24 = v17;
    v26 = v24;
    [(CTAppStoreSearch *)v24 lookupAppWithBundleIDs:v22 deviceFamily:v18 completionHandler:v25];

    _Block_object_dispose(v29, 8);
  }

  else
  {
    v19 = qword_100010DC0;
    if (os_log_type_enabled(qword_100010DC0, OS_LOG_TYPE_ERROR))
    {
      sub_1000057E8(v9, v19);
    }

    v42 = @"FailedLookupBundleIDs";
    v43 = v9;
    v15 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v20 = [NSError errorWithDomain:CTErrorDomain code:-3001 userInfo:v15];
    v21 = v37[5];
    v37[5] = v20;

    (*(v12 + 2))(v12, v37[5], 0);
  }

  _Block_object_dispose(&v36, 8);
}

@end