void sub_100000E54(id a1)
{
  qword_10000D898 = objc_alloc_init(NotifierDelegate);

  _objc_release_x1();
}

void sub_10000147C(uint64_t a1)
{
  v2 = +[NotificationController sharedController];
  v3 = [*(a1 + 32) clientIdentifier];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001540;
  v4[3] = &unk_1000082A0;
  v5 = *(a1 + 40);
  [v2 pendingNotificationsForClient:v3 withCompletion:v4];
}

void sub_100001670(id a1)
{
  qword_10000D8A8 = objc_alloc_init(NotificationController);

  _objc_release_x1();
}

id sub_1000018D8(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000194C;
  v3[3] = &unk_100008310;
  v3[4] = *(a1 + 32);
  return [a2 enumerateObjectsUsingBlock:v3];
}

void sub_10000194C(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [a2 identifier];
  [v2 tearDownNotificationWithIdentifier:v3];
}

void sub_100001AE8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [NSPredicate predicateWithFormat:@"clientIdentifier == %@", v3];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  v7 = _FALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notifications for %@: %@", buf, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100001D2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSSortDescriptor sortDescriptorWithKey:@"relevanceDate" ascending:0];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6 = [v3 sortedArrayUsingDescriptors:v5];

  (*(*(a1 + 32) + 16))();
}

void sub_1000020B4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NotificationController: XPC Error from client delegate while trying to send an activation callback - %@", &v4, 0xCu);
  }
}

void sub_1000022D8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NotificationController: XPC Error from client delegate while trying to send an activation callback - %@", &v4, 0xCu);
  }
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[NotifierDelegate sharedInstance];
  [v1 start];

  objc_autoreleasePoolPop(v0);
  CFRunLoopRun();
  return 0;
}

void sub_1000026E4(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _FALogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100003604(v2, v3);
    }
  }
}

void sub_100002CE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002DC8;
  v5[3] = &unk_100008428;
  v6 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v4 = v6;
  [v3 enumerateObjectsUsingBlock:v5];

  (*(*(a1 + 32) + 16))();
}

void sub_100002DC8(uint64_t a1, void *a2)
{
  v3 = [a2 request];
  v4 = [v3 content];
  v5 = [v4 userInfo];
  v7 = [v5 objectForKeyedSubscript:@"FAFamilyNotificationAsDictionaryKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[FAFamilyNotification alloc] initWithCacheDictionaryRepresentation:v7];
    [*(a1 + 32) addObject:v6];
  }
}

void sub_100003604(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error posting notification %@", &v2, 0xCu);
}