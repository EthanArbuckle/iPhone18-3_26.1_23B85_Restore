@interface MergeTransactions
- (MergeTransactions)initWithDatabase:(id)a3 andInteractionManager:(id)a4;
- (id)filterRemoteTransactions:(id)a3 withLocalTransactions:(id)a4;
- (id)merge:(id)a3 withRemoteTransactions:(id)a4;
- (id)reconcileTransaction:(unint64_t)a3 withLocalCall:(id)a4 withRemoteCall:(id)a5;
- (id)unarchiveCallObject:(id)a3;
- (void)dealloc;
- (void)parseMergeDictionary:(id)a3 withSyncSource:(unsigned __int8)a4;
- (void)registerForNotifications;
@end

@implementation MergeTransactions

- (MergeTransactions)initWithDatabase:(id)a3 andInteractionManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MergeTransactions;
  v9 = [(MergeTransactions *)&v14 initWithDomain:"MergeTransactions"];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, a3);
    v11 = [[ApplyLocalTransactions alloc] initWithDatabase:v10->_database andInteractionManager:v8];
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

- (void)parseMergeDictionary:(id)a3 withSyncSource:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"kCHRemoteTransactionsKey"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [(MergeTransactions *)self logHandle];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543618;
      v22 = @"kCHRemoteTransactionsKey";
      v23 = 2114;
      v24 = objc_opt_class();
      v14 = v24;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Expected %{public}@ key to be of type %{public}@", &v21, 0x16u);
    }

    goto LABEL_21;
  }

  v8 = +[CHLogServer sharedInstance];
  v9 = [v8 logHandleForDomain:"MergeTransactions"];

  v10 = v9;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 count];
    v12 = sub_10001F5B8(v4);
    v21 = 134218242;
    v22 = v11;
    v23 = 2114;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%lu remote transactions from %{public}@", &v21, 0x16u);
  }

  if (v4 == 1)
  {
    v13 = [v6 objectForKeyedSubscript:@"kCHChangeTokenKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v6 objectForKeyedSubscript:@"kCHMoreTransactionsComingKey"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MergeTransactions *)self handleRemoteTransactionsNotification:v7 withChangeToken:v13 withMoreComing:v15 withSource:1];
LABEL_20:

LABEL_21:
        goto LABEL_22;
      }

      v18 = [(MergeTransactions *)self logHandle];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        v21 = 138543618;
        v22 = @"kCHMoreTransactionsComingKey";
        v23 = 2114;
        v24 = v19;
        v20 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Expected %{public}@ key to be of type %{public}@", &v21, 0x16u);
      }
    }

    else
    {
      v15 = [(MergeTransactions *)self logHandle];
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v17 = objc_opt_class();
      v21 = 138543618;
      v22 = @"kCHChangeTokenKey";
      v23 = 2114;
      v24 = v17;
      v18 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Expected %{public}@ key to be of type %{public}@", &v21, 0x16u);
    }

    goto LABEL_20;
  }

  if (v4 == 2)
  {
    [(MergeTransactions *)self handleRemoteTransactionsNotification:v7 withSource:2];
  }

  else
  {
    v16 = [(MergeTransactions *)self logHandle];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100034430(v4, v16);
    }
  }

LABEL_22:
}

- (id)merge:(id)a3 withRemoteTransactions:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = [(MergeTransactions *)self filterRemoteTransactions:v7 withLocalTransactions:v6];
    v9 = [(MergeTransactions *)self logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v40 = [v8 count];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Applying %ld remote transactions", buf, 0xCu);
    }

    v31 = v7;
    v32 = v6;

    [(ApplyLocalTransactions *)self->_applyLocalTransactions apply:v8];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v47 count:16];
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
            objc_enumerationMutation(v10);
          }

          v19 = [*(*(&v33 + 1) + 8 * i) transactionType];
          if (v19 > 1)
          {
            if (v19 == 2)
            {
              ++v13;
            }

            else if (v19 == 3)
            {
              ++v14;
            }
          }

          else if (v19)
          {
            if (v19 == 1)
            {
              ++v15;
            }
          }

          else
          {
            ++v16;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v33 objects:v47 count:16];
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

    v21 = [(MergeTransactions *)self logHandle];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218752;
      v40 = v16;
      v41 = 2048;
      v42 = v15;
      v43 = 2048;
      v44 = v13;
      v45 = 2048;
      v46 = v14;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Applied %lu insert %lu update %lu delete %lu batch delete transactions", buf, 0x2Au);
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

    v7 = v31;
    v6 = v32;
  }

  else
  {
    v10 = [(MergeTransactions *)self logHandle];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No remote transactions", buf, 2u);
    }

    v20 = 0;
  }

  return v20;
}

- (id)filterRemoteTransactions:(id)a3 withLocalTransactions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MergeTransactions *)self logHandle];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19 = [v6 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Filtering %lu remote transactions with local data store", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002271C;
  v15[3] = &unk_1000518D0;
  v15[4] = self;
  v16 = v7;
  v9 = objc_opt_new();
  v17 = v9;
  v10 = v7;
  v11 = [NSPredicate predicateWithBlock:v15];
  v12 = [v6 filteredArrayUsingPredicate:v11];

  [v9 addObjectsFromArray:v12];
  v13 = v9;

  return v9;
}

- (id)unarchiveCallObject:(id)a3
{
  v3 = a3;
  v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v3 error:0];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
  [v4 finishDecoding];

  v6 = v5;

  return v6;
}

- (id)reconcileTransaction:(unint64_t)a3 withLocalCall:(id)a4 withRemoteCall:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [CHCallFingerprint shouldCall:v9 updateMatchingCall:v8];
  v11 = 0;
  if (!a3 && v10)
  {
    v12 = [(MergeTransactions *)self logHandle];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Reconciling %@", buf, 0xCu);
    }

    v13 = [(MergeTransactions *)self logHandle];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "With remote call %@", buf, 0xCu);
    }

    v14 = [CHCallFingerprint updateCall:v9 withFingerprintedCall:v8 areBothCallsLocal:0];
    v15 = [v8 uniqueId];
    [v14 setUniqueId:v15];

    v16 = [(MergeTransactions *)self logHandle];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Generated reconciled call %@", buf, 0xCu);
    }

    v19 = 0;
    v17 = [v14 archivedDataWithError:&v19];
    v11 = [[CHTransaction alloc] initWithType:1 andRecord:v17];
  }

  return v11;
}

@end