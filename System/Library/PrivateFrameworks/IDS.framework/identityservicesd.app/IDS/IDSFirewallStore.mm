@interface IDSFirewallStore
+ (id)sharedInstance;
- (BOOL)addEntries:(id)a3 forImpactedServices:(id)a4 category:(unsigned int)a5 isDonated:(BOOL)a6;
- (BOOL)isAllowed:(id)a3 category:(unsigned int)a4;
- (BOOL)isAllowed:(id)a3 category:(unsigned int)a4 isDonated:(BOOL)a5;
- (BOOL)removeAllEntries:(id)a3 forImpactedServices:(id)a4 category:(unsigned int)a5;
- (BOOL)removeAllEntriesWithCategory:(unsigned int)a3;
- (BOOL)removeEntries:(id)a3 forImpactedServices:(id)a4 category:(unsigned int)a5 isDonated:(BOOL)a6;
- (BOOL)removeEntriesWithCategory:(unsigned int)a3 isDonated:(BOOL)a4;
- (IDSFirewallStore)initWithFilePath:(id)a3;
- (id)_createFirewallRecordsFromSQLRecords:(__CFArray *)a3;
- (id)blockedEntriesForCategory:(unsigned int)a3;
- (id)getAllAllowedEntriesForCategory:(unsigned int)a3;
- (id)getDonatedAllowedEntriesForCategory:(unsigned int)a3;
- (unint64_t)_currentLocalTime;
- (void)_registerSysdiagnoseBlock;
- (void)_runCleanupWithExpirationInterval:(double)a3;
- (void)_setDatabaseCloseTimerOnIvarQueue;
- (void)_startCleanupTimer;
- (void)addToBlockedList:(id)a3 forCategory:(unsigned int)a4;
- (void)closeDatabase;
@end

@implementation IDSFirewallStore

- (void)closeDatabase
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Closing database.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100015A44;
  v4[3] = &unk_100BD6ED0;
  v4[4] = self;
  sub_1000157D8(v4, self->_filePath);
}

+ (id)sharedInstance
{
  if (qword_100CBF538 != -1)
  {
    sub_100931D80();
  }

  v3 = qword_100CBF540;

  return v3;
}

- (IDSFirewallStore)initWithFilePath:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = IDSFirewallStore;
  v5 = [(IDSFirewallStore *)&v17 init];
  v6 = v5;
  if (v5)
  {
    [(IDSFirewallStore *)v5 setFilePath:v4];
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IDS Firewall System Starting Up", v16, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_UTILITY, 0);

    v10 = dispatch_queue_create("IDSFirewallStore", v9);
    ivarQueue = v6->_ivarQueue;
    v6->_ivarQueue = v10;

    v6->_initialProcessTime = mach_continuous_time();
    [IMWeakLinkClass() serverTime];
    v6->_initialServerTime = v12;
    v13 = objc_alloc_init(NSMutableDictionary);
    recentlyBlockedHandles = v6->_recentlyBlockedHandles;
    v6->_recentlyBlockedHandles = v13;

    [(IDSFirewallStore *)v6 _performInitialHousekeeping];
    [(IDSFirewallStore *)v6 _startCleanupTimer];
    [(IDSFirewallStore *)v6 _registerSysdiagnoseBlock];
  }

  return v6;
}

- (BOOL)addEntries:(id)a3 forImpactedServices:(id)a4 category:(unsigned int)a5 isDonated:(BOOL)a6
{
  v6 = a6;
  v7 = *&a5;
  v10 = a3;
  v17 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        if ([(IDSFirewallStore *)self isAllowed:v15 category:v7 isDonated:v6])
        {
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_1006C0A18;
          v23[3] = &unk_100BE5428;
          v23[4] = self;
          v23[5] = v15;
          v24 = v7;
          v25 = v6;
          sub_1000157D8(v23, self->_filePath);
        }

        else
        {
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_1006C0AD0;
          v18[3] = &unk_100BE5450;
          v18[4] = self;
          v19 = v17;
          v20 = v15;
          v21 = v7;
          v22 = v6;
          sub_1000157D8(v18, self->_filePath);
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  return 1;
}

- (BOOL)removeEntries:(id)a3 forImpactedServices:(id)a4 category:(unsigned int)a5 isDonated:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  if (v10 && [v10 count])
  {
    v28 = a5;
    v29 = self;
    v30 = a6;
    v31 = v11;
    v12 = objc_alloc_init(NSMutableSet);
    v13 = objc_alloc_init(NSMutableSet);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v38;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v37 + 1) + 8 * i);
          v20 = [v19 uri];
          v21 = [v20 prefixedURI];

          if (v21)
          {
            [v12 addObject:v21];
          }

          v22 = [v19 mergeID];

          if (v22)
          {
            v23 = [v19 mergeID];
            [v13 addObject:v23];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v16);
    }

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1006C0EAC;
    v32[3] = &unk_100BE5428;
    v35 = v28;
    v36 = v30;
    v33 = v12;
    v34 = v13;
    filePath = v29->_filePath;
    v25 = v13;
    v26 = v12;
    sub_1000157D8(v32, filePath);

    v11 = v31;
  }

  return 1;
}

- (BOOL)removeAllEntries:(id)a3 forImpactedServices:(id)a4 category:(unsigned int)a5
{
  v8 = a3;
  v9 = a4;
  if (v8 && [v8 count])
  {
    v26 = a5;
    v27 = self;
    v28 = v9;
    v10 = objc_alloc_init(NSMutableSet);
    v11 = objc_alloc_init(NSMutableSet);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v33 + 1) + 8 * i);
          v18 = [v17 uri];
          v19 = [v18 prefixedURI];

          if (v19)
          {
            [v10 addObject:v19];
          }

          v20 = [v17 mergeID];

          if (v20)
          {
            v21 = [v17 mergeID];
            [v11 addObject:v21];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v14);
    }

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1006C1164;
    v29[3] = &unk_100BD9B68;
    v32 = v26;
    v30 = v10;
    v31 = v11;
    filePath = v27->_filePath;
    v23 = v11;
    v24 = v10;
    sub_1000157D8(v29, filePath);

    v9 = v28;
  }

  return 1;
}

- (BOOL)removeAllEntriesWithCategory:(unsigned int)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006C123C;
  v4[3] = &unk_100BDA538;
  v5 = a3;
  sub_1000157D8(v4, self->_filePath);
  return 1;
}

- (BOOL)removeEntriesWithCategory:(unsigned int)a3 isDonated:(BOOL)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006C12BC;
  v5[3] = &unk_100BE5470;
  v6 = a3;
  v7 = a4;
  sub_1000157D8(v5, self->_filePath);
  return 1;
}

- (BOOL)isAllowed:(id)a3 category:(unsigned int)a4 isDonated:(BOOL)a5
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1006C1458;
  v17[3] = &unk_100BE5498;
  v19 = &v22;
  v8 = a3;
  v18 = v8;
  v20 = a4;
  v21 = a5;
  sub_1000157D8(v17, self->_filePath);
  if ((v23[3] & 1) == 0)
  {
    v9 = [v8 mergeID];

    if (v9)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1006C14C0;
      v12[3] = &unk_100BE5498;
      v14 = &v22;
      v13 = v8;
      v15 = a4;
      v16 = a5;
      sub_1000157D8(v12, self->_filePath);
    }
  }

  v10 = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return v10;
}

- (BOOL)isAllowed:(id)a3 category:(unsigned int)a4
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1006C1680;
  v14[3] = &unk_100BE54C0;
  v16 = &v18;
  v6 = a3;
  v15 = v6;
  v17 = a4;
  sub_1000157D8(v14, self->_filePath);
  if ((v19[3] & 1) == 0)
  {
    v7 = [v6 mergeID];

    if (v7)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1006C16E4;
      v10[3] = &unk_100BE54C0;
      v12 = &v18;
      v11 = v6;
      v13 = a4;
      sub_1000157D8(v10, self->_filePath);
    }
  }

  v8 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v8;
}

- (id)getAllAllowedEntriesForCategory:(unsigned int)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000AB04;
  v11 = sub_10000BCF4;
  v12 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006C1828;
  v5[3] = &unk_100BE54C0;
  v6 = a3;
  v5[4] = self;
  v5[5] = &v7;
  sub_1000157D8(v5, self->_filePath);
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

- (id)getDonatedAllowedEntriesForCategory:(unsigned int)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000AB04;
  v11 = sub_10000BCF4;
  v12 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006C1988;
  v5[3] = &unk_100BE54C0;
  v6 = a3;
  v5[4] = self;
  v5[5] = &v7;
  sub_1000157D8(v5, self->_filePath);
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

- (id)blockedEntriesForCategory:(unsigned int)a3
{
  recentlyBlockedHandles = self->_recentlyBlockedHandles;
  v4 = [NSNumber numberWithUnsignedInt:*&a3];
  v5 = [(NSMutableDictionary *)recentlyBlockedHandles objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  v8 = v7;

  return v7;
}

- (id)_createFirewallRecordsFromSQLRecords:(__CFArray *)a3
{
  v17 = objc_alloc_init(NSMutableArray);
  if (a3)
  {
    Count = CFArrayGetCount(a3);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v5 = objc_autoreleasePoolPush();
        ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
        v7 = CFArrayGetCount(ValueAtIndex);
        v8 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
        v9 = CFArrayGetValueAtIndex(ValueAtIndex, 1);
        v10 = CFArrayGetValueAtIndex(ValueAtIndex, 2);
        v11 = 0;
        if (v7 == 4)
        {
          v11 = CFArrayGetValueAtIndex(ValueAtIndex, 3);
        }

        v12 = [[IDSURI alloc] initWithPrefixedURI:v8];
        v13 = [IDSFirewallEntry alloc];
        [v9 doubleValue];
        v14 = [NSDate dateWithTimeIntervalSince1970:?];
        v15 = [v13 initWithURI:v12 andLastSeenDate:v14];

        if (v15)
        {
          if (v11)
          {
            [v15 setMergeID:v11];
          }

          [v15 setIsDonated:{objc_msgSend(v10, "BOOLValue", v17)}];
          [v17 addObject:v15];
        }

        objc_autoreleasePoolPop(v5);
      }
    }

    CFRelease(a3);
  }

  return v17;
}

- (void)addToBlockedList:(id)a3 forCategory:(unsigned int)a4
{
  v4 = *&a4;
  v11 = a3;
  recentlyBlockedHandles = self->_recentlyBlockedHandles;
  v7 = [NSNumber numberWithUnsignedInt:v4];
  v8 = [(NSMutableDictionary *)recentlyBlockedHandles objectForKey:v7];

  if (!v8)
  {
    v8 = objc_alloc_init(NSMutableSet);
  }

  [v8 addObject:v11];
  v9 = self->_recentlyBlockedHandles;
  v10 = [NSNumber numberWithUnsignedInt:v4];
  [(NSMutableDictionary *)v9 setObject:v8 forKey:v10];
}

- (unint64_t)_currentLocalTime
{
  info = 0xAAAAAAAAAAAAAAAALL;
  if (mach_timebase_info(&info))
  {
    v3 = +[NSDate date];
    [v3 timeIntervalSince1970];
    v5 = v4;
  }

  else
  {
    v6 = mach_continuous_time();
    v7 = [(IDSFirewallStore *)self initialProcessTime];
    v8 = (v6 - v7) * info.numer / info.denom;
    return [(IDSFirewallStore *)self initialServerTime]+ v8 / 0x3B9ACA00;
  }

  return v5;
}

- (void)_registerSysdiagnoseBlock
{
  objc_initWeak(&location, self);
  if (_os_feature_enabled_impl())
  {
    v2 = +[IDSDiagnosticInfoHandler sharedInstance];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1006C215C;
    v7[3] = &unk_100BDAB58;
    v3 = &v8;
    objc_copyWeak(&v8, &location);
    v4 = im_primary_queue();
    [v2 registerDiagnosticInfoBlock:v7 title:@"IDS-Firewall-DB" queue:v4];
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1006C22A4;
    v5[3] = &unk_100BDAB80;
    v3 = &v6;
    objc_copyWeak(&v6, &location);
    v2 = im_primary_queue();
    sub_1006085C4(v5, @"IDS-Firewall-DB", v2);
  }

  objc_destroyWeak(v3);
  objc_destroyWeak(&location);
}

- (void)_setDatabaseCloseTimerOnIvarQueue
{
  sub_1004A9FAC();
  self->_databaseLastUpdateTime = CFAbsoluteTimeGetCurrent();
  if (!self->_databaseCloseTimer)
  {
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_ivarQueue);
    databaseCloseTimer = self->_databaseCloseTimer;
    self->_databaseCloseTimer = v3;

    v5 = self->_databaseCloseTimer;
    v6 = dispatch_time(0, 0x8BB2C90000);
    dispatch_source_set_timer(v5, v6, 0x7FFFFFFFFFFFFFFFuLL, 0xDF8474CCCuLL);
    v7 = self->_databaseCloseTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100015728;
    handler[3] = &unk_100BD6ED0;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(self->_databaseCloseTimer);
  }
}

- (void)_startCleanupTimer
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Scheduling Cleanup Timer", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_ivarQueue);
  v5 = qword_100CBF548;
  qword_100CBF548 = v4;

  v6 = qword_100CBF548;
  if (qword_100CBF548)
  {
    v7 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v6, v7, 0x14F46B04000uLL, 0x3B9ACA00uLL);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1006C2894;
    handler[3] = &unk_100BD6ED0;
    handler[4] = self;
    dispatch_source_set_event_handler(qword_100CBF548, handler);
    dispatch_resume(qword_100CBF548);
  }
}

- (void)_runCleanupWithExpirationInterval:(double)a3
{
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Scheduling timer called", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006C29D0;
  v6[3] = &unk_100BD7978;
  v6[4] = self;
  *&v6[5] = a3;
  sub_1000157D8(v6, self->_filePath);
}

@end