@interface BDSServiceNotificationStore
- (BDSServiceNotificationStore)init;
- (void)_q_save:(id)_q_save;
- (void)enqueueNotificationName:(id)name withCompletion:(id)completion;
- (void)fetchNotificationNamesAfterToken:(id)token withCompletion:(id)completion;
- (void)q_enqueueNotificationName:(id)name withCompletion:(id)completion;
- (void)q_fetchNotificationNamesAfterToken:(id)token withCompletion:(id)completion;
- (void)q_load;
- (void)q_save;
- (void)q_updateNotificationInfoWithName:(id)name changeToken:(int64_t)token;
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

- (void)fetchNotificationNamesAfterToken:(id)token withCompletion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  v8 = sub_100002614();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "fetchNotificationNamesAfterToken: %{public}@", buf, 0xCu);
  }

  v9 = [[BDSOSTransaction alloc] initWithTransactionName:"BDSServiceNotificationStoreFetchNotificationNamesAfterToken"];
  dispatchQueue = self->_dispatchQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100062C20;
  v14[3] = &unk_100241970;
  v14[4] = self;
  v15 = tokenCopy;
  v16 = v9;
  v17 = completionCopy;
  v11 = v9;
  v12 = completionCopy;
  v13 = tokenCopy;
  dispatch_async(dispatchQueue, v14);
}

- (void)enqueueNotificationName:(id)name withCompletion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v8 = sub_100002614();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = nameCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "enqueueNotificationName: %{public}@", buf, 0xCu);
  }

  v9 = [[BDSOSTransaction alloc] initWithTransactionName:"BDSServiceNotificationStoreEnqueueNotificationName"];
  dispatchQueue = self->_dispatchQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100062EC4;
  v14[3] = &unk_100241970;
  v14[4] = self;
  v15 = nameCopy;
  v16 = v9;
  v17 = completionCopy;
  v11 = v9;
  v12 = completionCopy;
  v13 = nameCopy;
  dispatch_async(dispatchQueue, v14);
}

- (void)q_fetchNotificationNamesAfterToken:(id)token withCompletion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (tokenCopy)
  {
    v20 = completionCopy;
    integerValue = [tokenCopy integerValue];
    v9 = objc_alloc_init(NSMutableArray);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    notificationInfosByName = [(BDSServiceNotificationStore *)self notificationInfosByName];
    v11 = [notificationInfosByName countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(notificationInfosByName);
          }

          v15 = *(*(&v21 + 1) + 8 * v14);
          notificationInfosByName2 = [(BDSServiceNotificationStore *)self notificationInfosByName];
          v17 = [notificationInfosByName2 objectForKeyedSubscript:v15];

          if ([v17 changeToken] > integerValue)
          {
            [v9 addObject:v17];
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [notificationInfosByName countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    [v9 sortUsingComparator:&stru_1002419D8];
    v18 = [v9 valueForKey:@"name"];

    completionCopy = v20;
  }

  else
  {
    v18 = objc_alloc_init(NSArray);
  }

  v19 = objc_retainBlock(completionCopy);
  if (v19)
  {
    v19[2](v19, v18, [(BDSServiceNotificationStore *)self currentChangeToken]);
  }
}

- (void)q_enqueueNotificationName:(id)name withCompletion:(id)completion
{
  dispatchQueue = self->_dispatchQueue;
  completionCopy = completion;
  nameCopy = name;
  dispatch_assert_queue_V2(dispatchQueue);
  currentChangeToken = [(BDSServiceNotificationStore *)self currentChangeToken];
  [(BDSServiceNotificationStore *)self setCurrentChangeToken:currentChangeToken + 1];
  [(BDSServiceNotificationStore *)self q_updateNotificationInfoWithName:nameCopy changeToken:currentChangeToken + 1];

  [(BDSServiceNotificationStore *)self q_save];
  v11 = objc_retainBlock(completionCopy);

  v10 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, currentChangeToken + 1);
    v10 = v11;
  }
}

- (void)q_updateNotificationInfoWithName:(id)name changeToken:(int64_t)token
{
  nameCopy = name;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  notificationInfosByName = [(BDSServiceNotificationStore *)self notificationInfosByName];
  v7 = [notificationInfosByName objectForKeyedSubscript:nameCopy];

  if (v7)
  {
    [(BDSServiceNotificationInfo *)v7 setChangeToken:token];
  }

  else
  {
    v7 = [[BDSServiceNotificationInfo alloc] initWithName:nameCopy changeToken:token];
    notificationInfosByName2 = [(BDSServiceNotificationStore *)self notificationInfosByName];
    [notificationInfosByName2 setObject:v7 forKeyedSubscript:nameCopy];
  }
}

- (void)q_load
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  dataFile = [(BDSServiceNotificationStore *)self dataFile];
  load = [dataFile load];

  if (load)
  {
    -[BDSServiceNotificationStore setCurrentChangeToken:](self, "setCurrentChangeToken:", [load changeToken]);
    notificationInfosByName = [(BDSServiceNotificationStore *)self notificationInfosByName];
    [notificationInfosByName removeAllObjects];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    notificationInfos = [load notificationInfos];
    v7 = [notificationInfos countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(notificationInfos);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          notificationInfosByName2 = [(BDSServiceNotificationStore *)self notificationInfosByName];
          name = [v11 name];
          [notificationInfosByName2 setObject:v11 forKeyedSubscript:name];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [notificationInfos countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (void)q_save
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  dataFile = [(BDSServiceNotificationStore *)self dataFile];

  if (dataFile)
  {
    dataFile2 = [(BDSServiceNotificationStore *)self dataFile];
    [(BDSServiceNotificationStore *)self _q_save:dataFile2];
  }
}

- (void)_q_save:(id)_q_save
{
  dispatchQueue = self->_dispatchQueue;
  _q_saveCopy = _q_save;
  dispatch_assert_queue_V2(dispatchQueue);
  currentChangeToken = [(BDSServiceNotificationStore *)self currentChangeToken];
  notificationInfosByName = [(BDSServiceNotificationStore *)self notificationInfosByName];
  allValues = [notificationInfosByName allValues];

  v8 = [[BDSServiceNotificationStoreData alloc] initWithNotificationInfos:allValues changeToken:currentChangeToken];
  [_q_saveCopy save:v8];
}

@end