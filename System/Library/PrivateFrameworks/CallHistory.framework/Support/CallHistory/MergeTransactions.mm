@interface MergeTransactions
- (MergeTransactions)initWithDatabase:(id)database andInteractionManager:(id)manager;
- (id)filterRemoteTransactions:(id)transactions withLocalTransactions:(id)localTransactions;
- (id)merge:(id)merge withRemoteTransactions:(id)transactions;
- (id)reconcileTransaction:(unint64_t)transaction withLocalCall:(id)call withRemoteCall:(id)remoteCall;
- (id)unarchiveCallObject:(id)object;
- (void)dealloc;
- (void)parseMergeDictionary:(id)dictionary withSyncSource:(unsigned __int8)source;
- (void)registerForNotifications;
@end

@implementation MergeTransactions

- (MergeTransactions)initWithDatabase:(id)database andInteractionManager:(id)manager
{
  databaseCopy = database;
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = MergeTransactions;
  v9 = [(MergeTransactions *)&v14 initWithDomain:"MergeTransactions"];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, database);
    v11 = [[ApplyLocalTransactions alloc] initWithDatabase:v10->_database andInteractionManager:managerCopy];
    applyLocalTransactions = v10->_applyLocalTransactions;
    v10->_applyLocalTransactions = v11;

    [(MergeTransactions *)v10 registerForNotifications];
  }

  return v10;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self->_observerRemoteTransactions];

  v4.receiver = self;
  v4.super_class = MergeTransactions;
  [(MergeTransactions *)&v4 dealloc];
}

- (void)registerForNotifications
{
  objc_initWeak(&location, self);
  v3 = +[NSNotificationCenter defaultCenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002194C;
  v6[3] = &unk_1000517E0;
  objc_copyWeak(&v7, &location);
  v4 = [v3 addObserverForName:@"kCallHistoryMergeRemoteTransactionsNotification" object:0 queue:0 usingBlock:v6];
  observerRemoteTransactions = self->_observerRemoteTransactions;
  self->_observerRemoteTransactions = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)parseMergeDictionary:(id)dictionary withSyncSource:(unsigned __int8)source
{
  sourceCopy = source;
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"kCHRemoteTransactionsKey"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    logHandle = [(MergeTransactions *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543618;
      v22 = @"kCHRemoteTransactionsKey";
      v23 = 2114;
      v24 = objc_opt_class();
      v14 = v24;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Expected %{public}@ key to be of type %{public}@", &v21, 0x16u);
    }

    goto LABEL_21;
  }

  v8 = +[CHLogServer sharedInstance];
  v9 = [v8 logHandleForDomain:"MergeTransactions"];

  v10 = v9;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 count];
    v12 = sub_10001F5B8(sourceCopy);
    v21 = 134218242;
    v22 = v11;
    v23 = 2114;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%lu remote transactions from %{public}@", &v21, 0x16u);
  }

  if (sourceCopy == 1)
  {
    logHandle = [dictionaryCopy objectForKeyedSubscript:@"kCHChangeTokenKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      logHandle3 = [dictionaryCopy objectForKeyedSubscript:@"kCHMoreTransactionsComingKey"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MergeTransactions *)self handleRemoteTransactionsNotification:v7 withChangeToken:logHandle withMoreComing:logHandle3 withSource:1];
LABEL_20:

LABEL_21:
        goto LABEL_22;
      }

      logHandle2 = [(MergeTransactions *)self logHandle];
      if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        v21 = 138543618;
        v22 = @"kCHMoreTransactionsComingKey";
        v23 = 2114;
        v24 = v19;
        v20 = v19;
        _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Expected %{public}@ key to be of type %{public}@", &v21, 0x16u);
      }
    }

    else
    {
      logHandle3 = [(MergeTransactions *)self logHandle];
      if (!os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v17 = objc_opt_class();
      v21 = 138543618;
      v22 = @"kCHChangeTokenKey";
      v23 = 2114;
      v24 = v17;
      logHandle2 = v17;
      _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_DEFAULT, "Expected %{public}@ key to be of type %{public}@", &v21, 0x16u);
    }

    goto LABEL_20;
  }

  if (sourceCopy == 2)
  {
    [(MergeTransactions *)self handleRemoteTransactionsNotification:v7 withSource:2];
  }

  else
  {
    logHandle4 = [(MergeTransactions *)self logHandle];
    if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_ERROR))
    {
      sub_100034430(sourceCopy, logHandle4);
    }
  }

LABEL_22:
}

- (id)merge:(id)merge withRemoteTransactions:(id)transactions
{
  mergeCopy = merge;
  transactionsCopy = transactions;
  if ([transactionsCopy count])
  {
    v8 = [(MergeTransactions *)self filterRemoteTransactions:transactionsCopy withLocalTransactions:mergeCopy];
    logHandle = [(MergeTransactions *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v40 = [v8 count];
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Applying %ld remote transactions", buf, 0xCu);
    }

    v31 = transactionsCopy;
    v32 = mergeCopy;

    [(ApplyLocalTransactions *)self->_applyLocalTransactions apply:v8];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    logHandle3 = v8;
    v11 = [logHandle3 countByEnumeratingWithState:&v33 objects:v47 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = *v34;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(logHandle3);
          }

          transactionType = [*(*(&v33 + 1) + 8 * i) transactionType];
          if (transactionType > 1)
          {
            if (transactionType == 2)
            {
              ++v13;
            }

            else if (transactionType == 3)
            {
              ++v14;
            }
          }

          else if (transactionType)
          {
            if (transactionType == 1)
            {
              ++v15;
            }
          }

          else
          {
            ++v16;
          }
        }

        v12 = [logHandle3 countByEnumeratingWithState:&v33 objects:v47 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }

    logHandle2 = [(MergeTransactions *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218752;
      v40 = v16;
      v41 = 2048;
      v42 = v15;
      v43 = 2048;
      v44 = v13;
      v45 = 2048;
      v46 = v14;
      _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "Applied %lu insert %lu update %lu delete %lu batch delete transactions", buf, 0x2Au);
    }

    v22 = [CHTransaction toString:0];
    v37[0] = v22;
    v23 = [NSNumber numberWithLong:v16];
    v38[0] = v23;
    v24 = [CHTransaction toString:1];
    v37[1] = v24;
    v25 = [NSNumber numberWithLong:v15];
    v38[1] = v25;
    v26 = [CHTransaction toString:2];
    v37[2] = v26;
    v27 = [NSNumber numberWithLong:v13];
    v38[2] = v27;
    v28 = [CHTransaction toString:3];
    v37[3] = v28;
    v29 = [NSNumber numberWithLong:v14];
    v38[3] = v29;
    v20 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:4];

    transactionsCopy = v31;
    mergeCopy = v32;
  }

  else
  {
    logHandle3 = [(MergeTransactions *)self logHandle];
    if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_DEFAULT, "No remote transactions", buf, 2u);
    }

    v20 = 0;
  }

  return v20;
}

- (id)filterRemoteTransactions:(id)transactions withLocalTransactions:(id)localTransactions
{
  transactionsCopy = transactions;
  localTransactionsCopy = localTransactions;
  logHandle = [(MergeTransactions *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19 = [transactionsCopy count];
    _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Filtering %lu remote transactions with local data store", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002271C;
  v15[3] = &unk_1000518D0;
  v15[4] = self;
  v16 = localTransactionsCopy;
  v9 = objc_opt_new();
  v17 = v9;
  v10 = localTransactionsCopy;
  v11 = [NSPredicate predicateWithBlock:v15];
  v12 = [transactionsCopy filteredArrayUsingPredicate:v11];

  [v9 addObjectsFromArray:v12];
  v13 = v9;

  return v9;
}

- (id)unarchiveCallObject:(id)object
{
  objectCopy = object;
  v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:objectCopy error:0];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
  [v4 finishDecoding];

  v6 = v5;

  return v6;
}

- (id)reconcileTransaction:(unint64_t)transaction withLocalCall:(id)call withRemoteCall:(id)remoteCall
{
  callCopy = call;
  remoteCallCopy = remoteCall;
  v10 = [CHCallFingerprint shouldCall:remoteCallCopy updateMatchingCall:callCopy];
  v11 = 0;
  if (!transaction && v10)
  {
    logHandle = [(MergeTransactions *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = callCopy;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "Reconciling %@", buf, 0xCu);
    }

    logHandle2 = [(MergeTransactions *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = remoteCallCopy;
      _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "With remote call %@", buf, 0xCu);
    }

    v14 = [CHCallFingerprint updateCall:remoteCallCopy withFingerprintedCall:callCopy areBothCallsLocal:0];
    uniqueId = [callCopy uniqueId];
    [v14 setUniqueId:uniqueId];

    logHandle3 = [(MergeTransactions *)self logHandle];
    if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_DEFAULT, "Generated reconciled call %@", buf, 0xCu);
    }

    v19 = 0;
    v17 = [v14 archivedDataWithError:&v19];
    v11 = [[CHTransaction alloc] initWithType:1 andRecord:v17];
  }

  return v11;
}

@end