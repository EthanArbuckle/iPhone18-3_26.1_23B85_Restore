@interface BDSBookWidgetReadingHistoryManager
- (BDSBookWidgetReadingHistoryData)lastState;
- (BDSBookWidgetReadingHistoryManager)initWithBookWidgetDataUpdater:(id)a3 transactionProvider:(id)a4;
- (BDSReadingHistoryStateInfo)currentViewStateInfo;
- (void)_processViewStateChange:(id)a3;
@end

@implementation BDSBookWidgetReadingHistoryManager

- (BDSBookWidgetReadingHistoryManager)initWithBookWidgetDataUpdater:(id)a3 transactionProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = BDSBookWidgetReadingHistoryManager;
  v8 = [(BDSBookWidgetReadingHistoryManager *)&v19 init];
  v9 = v8;
  if (v8)
  {
    [(BDSBookWidgetReadingHistoryManager *)v8 setBookWidgetDataUpdater:v6];
    v9->_accessLock._os_unfair_lock_opaque = 0;
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.iBooks.BDSBookWidgetReadingHistoryManager.saveQueue", v10);
    saveQueue = v9->_saveQueue;
    v9->_saveQueue = v11;

    objc_storeStrong(&v9->_transactionProvider, a4);
    v13 = +[BDSBookWidgetReadingHistoryDataFile sharedInstance];
    dataFile = v9->_dataFile;
    v9->_dataFile = v13;

    v15 = [(BDSBookWidgetReadingHistoryManager *)v9 dataFile];
    v16 = [v15 load];
    lastState = v9->_lastState;
    v9->_lastState = v16;
  }

  return v9;
}

- (BDSReadingHistoryStateInfo)currentViewStateInfo
{
  v2 = [(BDSBookWidgetReadingHistoryManager *)self lastState];
  v3 = sub_10000DE28();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BDSBookWidgetReadingHistoryManager - current: %@", &v6, 0xCu);
  }

  v4 = [v2 stateInfo];

  return v4;
}

- (BDSBookWidgetReadingHistoryData)lastState
{
  os_unfair_lock_lock(&self->_accessLock);
  v3 = self->_lastState;
  os_unfair_lock_unlock(&self->_accessLock);

  return v3;
}

- (void)_processViewStateChange:(id)a3
{
  v4 = a3;
  v5 = [(BDSBookWidgetReadingHistoryManager *)self transactionProvider];
  v6 = [v5 createTransactionWithName:"BDSBookWidgetReadingHistoryManager._processViewStateChange"];

  v7 = +[BUAppGroup books];
  v8 = [v7 userDefaults];
  v9 = [v8 BOOLForKey:@"BKReadingGoalsUserDefaultsKey"];

  v10 = [(BDSBookWidgetReadingHistoryManager *)self lastState];
  if (v4)
  {
    v11 = [[BDSBookWidgetReadingHistoryData alloc] initWithStateInfo:v4 readingGoalsEnabled:v9];
    v12 = v11;
    if (!v10 && v11)
    {
LABEL_9:
      v14 = sub_10000DE28();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "BDSBookWidgetReadingHistoryManager - detected changes:", buf, 2u);
      }

      v15 = sub_10000DE28();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v10;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "    old = %@", buf, 0xCu);
      }

      v16 = sub_10000DE28();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v12;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "    new = %@", buf, 0xCu);
      }

      os_unfair_lock_lock(&self->_accessLock);
      objc_storeStrong(&self->_lastState, v12);
      saveQueue = self->_saveQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000D410;
      block[3] = &unk_10023F720;
      v24 = v6;
      v25 = self;
      v12 = v12;
      v26 = v12;
      dispatch_async(saveQueue, block);
      os_unfair_lock_unlock(&self->_accessLock);
      if (!v9)
      {
        goto LABEL_26;
      }

      v18 = v12;
      v19 = [(BDSBookWidgetReadingHistoryData *)v10 stateInfo];
      v20 = [(BDSBookWidgetReadingHistoryData *)v18 stateInfo];

      if (!v19 && ([v20 isEmptyState] & 1) != 0)
      {
        goto LABEL_22;
      }

      v21 = [v19 isEmptyState] ^ 1;
      if (!v19)
      {
        LOBYTE(v21) = 0;
      }

      if ((v21 & 1) != 0 || v20)
      {
        v22 = [v19 isEqual:v20];

        if (v22)
        {
LABEL_26:

          v13 = v24;
          goto LABEL_27;
        }

        v19 = [(BDSBookWidgetReadingHistoryManager *)self bookWidgetDataUpdater];
        [v19 reloadWidgetTimelines];
      }

      else
      {
LABEL_22:
      }

      goto LABEL_26;
    }
  }

  else
  {
    v12 = 0;
  }

  if (![(BDSBookWidgetReadingHistoryData *)v10 isEqual:v12])
  {
    goto LABEL_9;
  }

  v13 = sub_10000DE28();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "BDSBookWidgetReadingHistoryManager - no changes", buf, 2u);
  }

LABEL_27:
}

@end