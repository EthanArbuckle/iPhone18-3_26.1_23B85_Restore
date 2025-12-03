@interface CHDataStoreMaintenanceController
- (CHDataStoreMaintenanceController)initWithDataStore:(id)store configuration:(id)configuration;
- (void)removeCalls;
@end

@implementation CHDataStoreMaintenanceController

- (CHDataStoreMaintenanceController)initWithDataStore:(id)store configuration:(id)configuration
{
  storeCopy = store;
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = CHDataStoreMaintenanceController;
  v9 = [(CHDataStoreMaintenanceController *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    objc_storeStrong(&v10->_dataStore, store);
    objc_initWeak(&location, v10);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000255C;
    v12[3] = &unk_100050F50;
    objc_copyWeak(&v13, &location);
    xpc_activity_register("com.apple.callhistory.datastore.maintenance.daily", XPC_ACTIVITY_CHECK_IN, v12);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (void)removeCalls
{
  configuration = [(CHDataStoreMaintenanceController *)self configuration];
  keepCallsTimeIntervalType = [configuration keepCallsTimeIntervalType];

  if (keepCallsTimeIntervalType == 2)
  {
    v5 = objc_alloc_init(NSDateComponents);
    [v5 setDay:-30];
    if (!v5)
    {
      return;
    }

LABEL_6:
    v6 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    v7 = +[NSDate date];
    v8 = [v6 dateByAddingComponents:v5 toDate:v7 options:4096];

    v9 = [CHRecentCall predicateForCallsLessThanDate:v8];
    dataStore = [(CHDataStoreMaintenanceController *)self dataStore];
    v11 = [dataStore deleteCallsWithPredicate:v9];
    if (v11 < 1)
    {
      v14 = 0;
    }

    else
    {
      v19 = 0;
      v12 = [dataStore saveDatabase:&v19];
      v13 = v19;
      v14 = v13;
      if (v11 == 0x7FFFFFFFFFFFFFFFLL || v12 == 0)
      {
        if (!v13)
        {
LABEL_19:

          return;
        }

        v16 = +[CHLogServer sharedInstance];
        v17 = [v16 logHandleForDomain:"CHDataStoreMaintenanceController"];

        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100032828(v14, v17);
        }

LABEL_18:

        goto LABEL_19;
      }
    }

    v18 = +[CHLogServer sharedInstance];
    v17 = [v18 logHandleForDomain:"CHDataStoreMaintenanceController"];

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Data store maintenance removed %ld calls", buf, 0xCu);
    }

    goto LABEL_18;
  }

  if (keepCallsTimeIntervalType == 1)
  {
    v5 = objc_alloc_init(NSDateComponents);
    [v5 setYear:-1];
    if (v5)
    {
      goto LABEL_6;
    }
  }
}

@end