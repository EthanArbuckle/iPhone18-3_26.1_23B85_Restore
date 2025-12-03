@interface BDSBookWidgetReadingHistoryManager
- (BDSBookWidgetReadingHistoryData)lastState;
- (BDSBookWidgetReadingHistoryManager)initWithBookWidgetDataUpdater:(id)updater transactionProvider:(id)provider;
- (BDSReadingHistoryStateInfo)currentViewStateInfo;
- (void)_processViewStateChange:(id)change;
@end

@implementation BDSBookWidgetReadingHistoryManager

- (BDSBookWidgetReadingHistoryManager)initWithBookWidgetDataUpdater:(id)updater transactionProvider:(id)provider
{
  updaterCopy = updater;
  providerCopy = provider;
  v19.receiver = self;
  v19.super_class = BDSBookWidgetReadingHistoryManager;
  v8 = [(BDSBookWidgetReadingHistoryManager *)&v19 init];
  v9 = v8;
  if (v8)
  {
    [(BDSBookWidgetReadingHistoryManager *)v8 setBookWidgetDataUpdater:updaterCopy];
    v9->_accessLock._os_unfair_lock_opaque = 0;
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.iBooks.BDSBookWidgetReadingHistoryManager.saveQueue", v10);
    saveQueue = v9->_saveQueue;
    v9->_saveQueue = v11;

    objc_storeStrong(&v9->_transactionProvider, provider);
    v13 = +[BDSBookWidgetReadingHistoryDataFile sharedInstance];
    dataFile = v9->_dataFile;
    v9->_dataFile = v13;

    dataFile = [(BDSBookWidgetReadingHistoryManager *)v9 dataFile];
    load = [dataFile load];
    lastState = v9->_lastState;
    v9->_lastState = load;
  }

  return v9;
}

- (BDSReadingHistoryStateInfo)currentViewStateInfo
{
  lastState = [(BDSBookWidgetReadingHistoryManager *)self lastState];
  v3 = sub_10000DE28();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = lastState;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BDSBookWidgetReadingHistoryManager - current: %@", &v6, 0xCu);
  }

  stateInfo = [lastState stateInfo];

  return stateInfo;
}

- (BDSBookWidgetReadingHistoryData)lastState
{
  os_unfair_lock_lock(&self->_accessLock);
  v3 = self->_lastState;
  os_unfair_lock_unlock(&self->_accessLock);

  return v3;
}

- (void)_processViewStateChange:(id)change
{
  changeCopy = change;
  transactionProvider = [(BDSBookWidgetReadingHistoryManager *)self transactionProvider];
  v6 = [transactionProvider createTransactionWithName:"BDSBookWidgetReadingHistoryManager._processViewStateChange"];

  v7 = +[BUAppGroup books];
  userDefaults = [v7 userDefaults];
  v9 = [userDefaults BOOLForKey:@"BKReadingGoalsUserDefaultsKey"];

  lastState = [(BDSBookWidgetReadingHistoryManager *)self lastState];
  if (changeCopy)
  {
    v11 = [[BDSBookWidgetReadingHistoryData alloc] initWithStateInfo:changeCopy readingGoalsEnabled:v9];
    v12 = v11;
    if (!lastState && v11)
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
        v28 = lastState;
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
      selfCopy = self;
      v12 = v12;
      v26 = v12;
      dispatch_async(saveQueue, block);
      os_unfair_lock_unlock(&self->_accessLock);
      if (!v9)
      {
        goto LABEL_26;
      }

      v18 = v12;
      stateInfo = [(BDSBookWidgetReadingHistoryData *)lastState stateInfo];
      stateInfo2 = [(BDSBookWidgetReadingHistoryData *)v18 stateInfo];

      if (!stateInfo && ([stateInfo2 isEmptyState] & 1) != 0)
      {
        goto LABEL_22;
      }

      v21 = [stateInfo isEmptyState] ^ 1;
      if (!stateInfo)
      {
        LOBYTE(v21) = 0;
      }

      if ((v21 & 1) != 0 || stateInfo2)
      {
        v22 = [stateInfo isEqual:stateInfo2];

        if (v22)
        {
LABEL_26:

          v13 = v24;
          goto LABEL_27;
        }

        stateInfo = [(BDSBookWidgetReadingHistoryManager *)self bookWidgetDataUpdater];
        [stateInfo reloadWidgetTimelines];
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

  if (![(BDSBookWidgetReadingHistoryData *)lastState isEqual:v12])
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