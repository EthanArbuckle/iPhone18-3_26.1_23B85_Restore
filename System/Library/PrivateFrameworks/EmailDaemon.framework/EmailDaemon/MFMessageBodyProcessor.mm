@interface MFMessageBodyProcessor
+ (id)powernapProcessor;
+ (void)initialize;
- (BOOL)_shouldContinueProcessing;
- (BOOL)runSynchronouslyWithDuration:(int64_t)duration;
- (MFMessageBodyProcessor)initWithName:(id)name accountsProvider:(id)provider deviceStorage:(id)storage condition:(id)condition;
- (NSDate)stopDate;
- (id)_mailboxesToDownload;
- (void)_runSynchronously;
- (void)runWithCompletion:(id)completion;
@end

@implementation MFMessageBodyProcessor

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_alloc_init(NSMutableSet);
    v3 = qword_100185928;
    qword_100185928 = v2;
  }
}

+ (id)powernapProcessor
{
  v2 = objc_alloc_init(MFMailDeviceStorage);
  v3 = [[MFActivityCondition alloc] initWithBuilder:&stru_100158F80];
  v4 = [MFMessageBodyProcessor alloc];
  v5 = sub_100027C70();
  accountsProvider = [v5 accountsProvider];

  v7 = [(MFMessageBodyProcessor *)v4 initWithName:@"com.apple.mobilemail.body.powernap" accountsProvider:accountsProvider deviceStorage:v2 condition:v3];
  [(MFMessageBodyProcessor *)v7 setExcludedMailboxTypes:&off_100163780];
  [(MFMessageBodyProcessor *)v7 setLastFetchDateCutoff:900];
  [(MFMessageBodyProcessor *)v7 setAccountMailboxesBatchSize:4];
  [(MFMessageBodyProcessor *)v7 setMailboxMessagesBatchSize:50];

  return v7;
}

- (MFMessageBodyProcessor)initWithName:(id)name accountsProvider:(id)provider deviceStorage:(id)storage condition:(id)condition
{
  nameCopy = name;
  providerCopy = provider;
  storageCopy = storage;
  conditionCopy = condition;
  v22.receiver = self;
  v22.super_class = MFMessageBodyProcessor;
  v14 = [(MFMessageBodyProcessor *)&v22 init];
  if (v14)
  {
    v15 = [nameCopy copy];
    name = v14->_name;
    v14->_name = v15;

    objc_storeStrong(&v14->_accountsProvider, provider);
    objc_storeStrong(&v14->_deviceStorage, storage);
    if (conditionCopy)
    {
      v17 = conditionCopy;
    }

    else
    {
      v17 = +[MFActivityCondition alwaysSatisfiedCondition];
    }

    condition = v14->_condition;
    v14->_condition = v17;

    v19 = _os_activity_create(&_mh_execute_header, "BodyProcessor", &_os_activity_none, OS_ACTIVITY_FLAG_DEFAULT);
    loggingActivity = v14->_loggingActivity;
    v14->_loggingActivity = v19;
  }

  return v14;
}

- (BOOL)runSynchronouslyWithDuration:(int64_t)duration
{
  if (duration == -1)
  {
    v8 = 0;
  }

  else
  {
    v5 = objc_alloc_init(NSDateComponents);
    [v5 setSecond:duration];
    v6 = +[NSCalendar currentCalendar];
    v7 = +[NSDate date];
    v8 = [v6 dateByAddingComponents:v5 toDate:v7 options:0];
  }

  [(MFMessageBodyProcessor *)self setStopDate:v8];

  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  loggingActivity = [(MFMessageBodyProcessor *)self loggingActivity];
  os_activity_scope_enter(loggingActivity, &state);

  v10 = qword_100185928;
  objc_sync_enter(v10);
  v11 = qword_100185928;
  name = [(MFMessageBodyProcessor *)self name];
  v13 = [v11 containsObject:name];

  if (v13)
  {
    objc_sync_exit(v10);

    v14 = MFLogGeneral();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [(MFMessageBodyProcessor *)self name];
      *buf = 138412290;
      v37 = name2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#MessageBodyProcessor Canceling body-backfill download %@ because one with the same name is currently running", buf, 0xCu);
    }
  }

  else
  {
    v16 = qword_100185928;
    name3 = [(MFMessageBodyProcessor *)self name];
    [v16 addObject:name3];

    objc_sync_exit(v10);
    v18 = MFLogGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      name4 = [(MFMessageBodyProcessor *)self name];
      *buf = 138412290;
      v37 = name4;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#MessageBodyProcessor Starting body-backfill download %@", buf, 0xCu);
    }

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v32 = sub_1000752E4;
    v33 = &unk_100156400;
    selfCopy = self;
    v20 = v31;
    v21 = mach_absolute_time();
    v32(v20);
    v22 = mach_absolute_time();
    if (qword_100185938 != -1)
    {
      sub_1000D49F4();
    }

    v24 = dword_100185930;
    v23 = *algn_100185934;

    v25 = MFLogGeneral();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      name5 = [(MFMessageBodyProcessor *)self name];
      *buf = 138412546;
      v37 = name5;
      v38 = 2048;
      v39 = ((v22 - v21) * v24 / v23) / 1000000000.0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#MessageBodyProcessor Finished body download %@ (Duration: %.2fs)", buf, 0x16u);
    }

    v27 = qword_100185928;
    objc_sync_enter(v27);
    v28 = qword_100185928;
    name6 = [(MFMessageBodyProcessor *)self name];
    [v28 removeObject:name6];

    objc_sync_exit(v27);
    os_activity_scope_leave(&state);
  }

  return v13 ^ 1;
}

- (void)runWithCompletion:(id)completion
{
  completionCopy = completion;
  runSynchronously = [(MFMessageBodyProcessor *)self runSynchronously];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, runSynchronously, 0);
  }
}

- (void)_runSynchronously
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(MFMessageBodyProcessor *)self _mailboxesToDownload];
  v3 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v3)
  {
    v5 = *v20;
    *&v4 = 138412290;
    v17 = v4;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        if (![(MFMessageBodyProcessor *)self _shouldContinueProcessing])
        {
          v16 = MFLogGeneral();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#MessageBodyProcessor Stopping body-backfill download because requirements are no longer met", buf, 2u);
          }

          goto LABEL_15;
        }

        v8 = MFLogGeneral();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = v17;
          v24 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#MessageBodyProcessor Begin processing mailbox: %@", buf, 0xCu);
        }

        v9 = [MFMailboxMessageBodyProcessor alloc];
        mailboxMessagesBatchSize = [(MFMessageBodyProcessor *)self mailboxMessagesBatchSize];
        deviceStorage = [(MFMessageBodyProcessor *)self deviceStorage];
        v12 = [(MFMailboxMessageBodyProcessor *)v9 initWithMailbox:v7 batchSize:mailboxMessagesBatchSize deviceStorage:deviceStorage];

        [(MFMailboxMessageBodyProcessor *)v12 setDelegate:self];
        [(MFMailboxMessageBodyProcessor *)v12 runSynchronously];
        persistentStorage = [(MFMessageBodyProcessor *)self persistentStorage];
        v14 = +[NSDate date];
        uRLString = [v7 URLString];
        [persistentStorage setBodyBackfillDate:v14 forSource:uRLString];
      }

      v3 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

- (BOOL)_shouldContinueProcessing
{
  condition = [(MFMessageBodyProcessor *)self condition];
  isSatisfied = [condition isSatisfied];

  stopDate = [(MFMessageBodyProcessor *)self stopDate];
  if (stopDate)
  {
    v6 = +[NSDate date];
    v7 = [v6 ef_isEarlierThanDate:stopDate];
  }

  else
  {
    v7 = 1;
  }

  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromBOOL();
    v10 = NSStringFromBOOL();
    v12 = 138412802;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = stopDate;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#MessageBodyProcessor Should continue: conditions: %@ | time budget: %@ (stop by %@)", &v12, 0x20u);
  }

  return isSatisfied & v7;
}

- (id)_mailboxesToDownload
{
  v22 = +[NSMutableArray array];
  v3 = [NSDate dateWithTimeIntervalSinceNow:-self->_lastFetchDateCutoff];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  accountsProvider = [(MFMessageBodyProcessor *)self accountsProvider];
  autofetchAccounts = [accountsProvider autofetchAccounts];

  obj = autofetchAccounts;
  v6 = [autofetchAccounts countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        allMailboxUids = [v9 allMailboxUids];
        v11 = [NSMutableSet setWithArray:allMailboxUids];

        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100075B18;
        v23[3] = &unk_100158A10;
        v23[4] = self;
        v23[5] = v9;
        v24 = v3;
        v12 = [v11 objectsPassingTest:v23];
        [v11 minusSet:v12];

        accountMailboxesBatchSize = [(MFMessageBodyProcessor *)self accountMailboxesBatchSize];
        v14 = [v11 count];
        allObjects = [v11 allObjects];
        v16 = allObjects;
        if (accountMailboxesBatchSize >= v14)
        {
          v17 = v14;
        }

        else
        {
          v17 = accountMailboxesBatchSize;
        }

        v18 = [allObjects subarrayWithRange:{0, v17}];

        [v22 addObjectsFromArray:v18];
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  v19 = [v22 sortedArrayUsingComparator:&stru_100158F60];

  return v19;
}

- (NSDate)stopDate
{
  WeakRetained = objc_loadWeakRetained(&self->_stopDate);

  return WeakRetained;
}

@end