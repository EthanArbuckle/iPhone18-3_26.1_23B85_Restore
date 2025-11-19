@interface BDSServiceNotificationStore
- (BDSServiceNotificationStore)init;
- (void)_q_save:(id)a3;
- (void)enqueueNotificationName:(id)a3 withCompletion:(id)a4;
- (void)fetchNotificationNamesAfterToken:(id)a3 withCompletion:(id)a4;
- (void)q_enqueueNotificationName:(id)a3 withCompletion:(id)a4;
- (void)q_fetchNotificationNamesAfterToken:(id)a3 withCompletion:(id)a4;
- (void)q_load;
- (void)q_save;
- (void)q_updateNotificationInfoWithName:(id)a3 changeToken:(int64_t)a4;
@end

@implementation BDSServiceNotificationStore

- (BDSServiceNotificationStore)init
{
  v14.receiver = self;
  v14.super_class = BDSServiceNotificationStore;
  v2 = [(BDSServiceNotificationStore *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("BDSServiceNotificationStore.dispatchQueue", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v2->_currentChangeToken = 0;
    v6 = objc_alloc_init(NSMutableDictionary);
    notificationInfosByName = v2->_notificationInfosByName;
    v2->_notificationInfosByName = v6;

    if (sub_10000CE34())
    {
      v8 = +[BDSServiceNotificationStoreDataFile sharedInstance];
      dataFile = v2->_dataFile;
      v2->_dataFile = v8;
    }

    v10 = v2->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100062AA8;
    block[3] = &unk_10023F6B0;
    v13 = v2;
    dispatch_async(v10, block);
  }

  return v2;
}

- (void)fetchNotificationNamesAfterToken:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100002614();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "fetchNotificationNamesAfterToken: %{public}@", buf, 0xCu);
  }

  v9 = [[BDSOSTransaction alloc] initWithTransactionName:"BDSServiceNotificationStoreFetchNotificationNamesAfterToken"];
  dispatchQueue = self->_dispatchQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100062C20;
  v14[3] = &unk_100241970;
  v14[4] = self;
  v15 = v6;
  v16 = v9;
  v17 = v7;
  v11 = v9;
  v12 = v7;
  v13 = v6;
  dispatch_async(dispatchQueue, v14);
}

- (void)enqueueNotificationName:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100002614();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "enqueueNotificationName: %{public}@", buf, 0xCu);
  }

  v9 = [[BDSOSTransaction alloc] initWithTransactionName:"BDSServiceNotificationStoreEnqueueNotificationName"];
  dispatchQueue = self->_dispatchQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100062EC4;
  v14[3] = &unk_100241970;
  v14[4] = self;
  v15 = v6;
  v16 = v9;
  v17 = v7;
  v11 = v9;
  v12 = v7;
  v13 = v6;
  dispatch_async(dispatchQueue, v14);
}

- (void)q_fetchNotificationNamesAfterToken:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (v6)
  {
    v20 = v7;
    v8 = [v6 integerValue];
    v9 = objc_alloc_init(NSMutableArray);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [(BDSServiceNotificationStore *)self notificationInfosByName];
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * v14);
          v16 = [(BDSServiceNotificationStore *)self notificationInfosByName];
          v17 = [v16 objectForKeyedSubscript:v15];

          if ([v17 changeToken] > v8)
          {
            [v9 addObject:v17];
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    [v9 sortUsingComparator:&stru_1002419D8];
    v18 = [v9 valueForKey:@"name"];

    v7 = v20;
  }

  else
  {
    v18 = objc_alloc_init(NSArray);
  }

  v19 = objc_retainBlock(v7);
  if (v19)
  {
    v19[2](v19, v18, [(BDSServiceNotificationStore *)self currentChangeToken]);
  }
}

- (void)q_enqueueNotificationName:(id)a3 withCompletion:(id)a4
{
  dispatchQueue = self->_dispatchQueue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  v9 = [(BDSServiceNotificationStore *)self currentChangeToken];
  [(BDSServiceNotificationStore *)self setCurrentChangeToken:v9 + 1];
  [(BDSServiceNotificationStore *)self q_updateNotificationInfoWithName:v8 changeToken:v9 + 1];

  [(BDSServiceNotificationStore *)self q_save];
  v11 = objc_retainBlock(v7);

  v10 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, v9 + 1);
    v10 = v11;
  }
}

- (void)q_updateNotificationInfoWithName:(id)a3 changeToken:(int64_t)a4
{
  v9 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v6 = [(BDSServiceNotificationStore *)self notificationInfosByName];
  v7 = [v6 objectForKeyedSubscript:v9];

  if (v7)
  {
    [(BDSServiceNotificationInfo *)v7 setChangeToken:a4];
  }

  else
  {
    v7 = [[BDSServiceNotificationInfo alloc] initWithName:v9 changeToken:a4];
    v8 = [(BDSServiceNotificationStore *)self notificationInfosByName];
    [v8 setObject:v7 forKeyedSubscript:v9];
  }
}

- (void)q_load
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = [(BDSServiceNotificationStore *)self dataFile];
  v4 = [v3 load];

  if (v4)
  {
    -[BDSServiceNotificationStore setCurrentChangeToken:](self, "setCurrentChangeToken:", [v4 changeToken]);
    v5 = [(BDSServiceNotificationStore *)self notificationInfosByName];
    [v5 removeAllObjects];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v4 notificationInfos];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          v12 = [(BDSServiceNotificationStore *)self notificationInfosByName];
          v13 = [v11 name];
          [v12 setObject:v11 forKeyedSubscript:v13];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (void)q_save
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = [(BDSServiceNotificationStore *)self dataFile];

  if (v3)
  {
    v4 = [(BDSServiceNotificationStore *)self dataFile];
    [(BDSServiceNotificationStore *)self _q_save:v4];
  }
}

- (void)_q_save:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  v6 = [(BDSServiceNotificationStore *)self currentChangeToken];
  v7 = [(BDSServiceNotificationStore *)self notificationInfosByName];
  v9 = [v7 allValues];

  v8 = [[BDSServiceNotificationStoreData alloc] initWithNotificationInfos:v9 changeToken:v6];
  [v5 save:v8];
}

@end