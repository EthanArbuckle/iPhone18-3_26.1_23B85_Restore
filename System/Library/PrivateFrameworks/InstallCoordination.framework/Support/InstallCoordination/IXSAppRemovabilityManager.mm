@interface IXSAppRemovabilityManager
+ (id)sharedInstance;
+ (id)stringForRemovability:(unint64_t)removability;
- (BOOL)_onQueue_writeRemovabilityWithError:(id *)error;
- (BOOL)clearRemovabilityStateForIdentity:(id)identity error:(id *)error;
- (BOOL)setRemovability:(unint64_t)removability forAppWithIdentity:(id)identity byClient:(unint64_t)client error:(id *)error;
- (IXSAppRemovabilityManager)init;
- (NSURL)removabilityURL;
- (id)removabilityDataWithChangeClock:(id *)clock;
- (id)removabilityInfoForAllIdentities;
- (id)removabilityMetadataForAppWithIdentity:(id)identity;
- (unint64_t)removabilityForAppWithIdentity:(id)identity client:(unint64_t)client;
- (void)_enumerateRemovability:(id)removability;
- (void)_onQueue_handleStateChangeForIdentity:(id)identity updatedRemovability:(unint64_t)removability;
- (void)_onQueue_removeLegacyRemovabilityFiles;
@end

@implementation IXSAppRemovabilityManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008F5AC;
  block[3] = &unk_100100D40;
  block[4] = self;
  if (qword_100121E78 != -1)
  {
    dispatch_once(&qword_100121E78, block);
  }

  v2 = qword_100121E80;

  return v2;
}

- (IXSAppRemovabilityManager)init
{
  v21.receiver = self;
  v21.super_class = IXSAppRemovabilityManager;
  v2 = [(IXSAppRemovabilityManager *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.installcoordinationd.IXSAppRemovabilityManager.queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v20 = 0;
    v19 = 0;
    v6 = sub_100037514(&v19, &v20);
    v7 = v19;
    v8 = [v6 mutableCopy];
    allAppRemovability = v2->_allAppRemovability;
    v2->_allAppRemovability = v8;

    removabilityChangeClock = v2->_removabilityChangeClock;
    v2->_removabilityChangeClock = v7;
    v11 = v7;

    v12 = [v6 count];
    v13 = v2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008F740;
    block[3] = &unk_1001038D0;
    v17 = v12;
    v18 = v20;
    v16 = v2;
    dispatch_sync(v13, block);
  }

  return v2;
}

+ (id)stringForRemovability:(unint64_t)removability
{
  if (removability - 1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1001039B8 + removability - 1);
  }
}

- (void)_onQueue_handleStateChangeForIdentity:(id)identity updatedRemovability:(unint64_t)removability
{
  identityCopy = identity;
  queue = [(IXSAppRemovabilityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  bundleID = [identityCopy bundleID];
  v9 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "[IXSAppRemovabilityManager _onQueue_handleStateChangeForIdentity:updatedRemovability:]";
    v22 = 2112;
    v23 = @"com.apple.installcoordination.AppRemovabilityChanged";
    v24 = 2112;
    v25 = identityCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Posting distributed notification %@ because removability for %@ has changed", buf, 0x20u);
  }

  v10 = +[NSDistributedNotificationCenter defaultCenter];
  v19[0] = bundleID;
  v11 = [(IXSAppRemovabilityManager *)self removabilityChangeClock:kCFBundleIdentifierKey];
  notificationDictionary = [v11 notificationDictionary];
  v19[1] = notificationDictionary;
  v18[2] = @"RemovabilityVal";
  v13 = [NSNumber numberWithUnsignedInteger:removability];
  v19[2] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];

  if (([identityCopy isPersonalPersonaPlaceholder] & 1) == 0)
  {
    v15 = [v14 mutableCopy];
    personaUniqueString = [identityCopy personaUniqueString];
    [v15 setObject:personaUniqueString forKeyedSubscript:@"PersonaUniqueString"];

    v17 = [v15 copy];
    v14 = v17;
  }

  [v10 postNotificationName:@"com.apple.installcoordination.AppRemovabilityChanged" object:0 userInfo:v14 deliverImmediately:1];
}

- (NSURL)removabilityURL
{
  v2 = sub_100036BE4();
  if (!v2)
  {
    sub_1000A80EC();
  }

  return v2;
}

- (id)removabilityMetadataForAppWithIdentity:(id)identity
{
  identityCopy = identity;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10008FC94;
  v16 = sub_10008FCA4;
  v17 = 0;
  queue = [(IXSAppRemovabilityManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008FCAC;
  block[3] = &unk_1001012B0;
  v10 = identityCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identityCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (unint64_t)removabilityForAppWithIdentity:(id)identity client:(unint64_t)client
{
  identityCopy = identity;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  queue = [(IXSAppRemovabilityManager *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10008FE30;
  v11[3] = &unk_1001038F8;
  v11[4] = self;
  v12 = identityCopy;
  v13 = &v15;
  clientCopy = client;
  v8 = identityCopy;
  dispatch_sync(queue, v11);

  v9 = v16[3];
  _Block_object_dispose(&v15, 8);
  return v9;
}

- (BOOL)setRemovability:(unint64_t)removability forAppWithIdentity:(id)identity byClient:(unint64_t)client error:(id *)error
{
  identityCopy = identity;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_10008FC94;
  v39 = sub_10008FCA4;
  v40 = 0;
  if (removability - 2 < 2)
  {
    queue = [(IXSAppRemovabilityManager *)self queue];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100090314;
    v23[3] = &unk_100103920;
    v23[4] = self;
    clientCopy = client;
    removabilityCopy = removability;
    v24 = identityCopy;
    v25 = &v41;
    v26 = &v35;
    dispatch_sync(queue, v23);

    v12 = v24;
    goto LABEL_6;
  }

  if (!removability)
  {
    v14 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000A8108();
    }

    v16 = sub_1000405FC("[IXSAppRemovabilityManager setRemovability:forAppWithIdentity:byClient:error:]", 223, @"IXErrorDomain", 4uLL, 0, 0, @"Setting app removability to unknown is not allowed", v15, v22);
    goto LABEL_13;
  }

  if (removability != 1)
  {
    v17 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000A8188();
    }

    v16 = sub_1000405FC("[IXSAppRemovabilityManager setRemovability:forAppWithIdentity:byClient:error:]", 227, @"IXErrorDomain", 4uLL, 0, 0, @"Setting app removability to an unrecognized value (%lu) is not allowed", v18, removability);
LABEL_13:
    v19 = v36[5];
    v36[5] = v16;

    goto LABEL_14;
  }

  queue2 = [(IXSAppRemovabilityManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000901D8;
  block[3] = &unk_100103920;
  block[4] = self;
  clientCopy2 = client;
  v34 = 1;
  v30 = identityCopy;
  v31 = &v41;
  v32 = &v35;
  dispatch_sync(queue2, block);

  v12 = v30;
LABEL_6:

LABEL_14:
  v20 = *(v42 + 24);
  if (error && (v42[3] & 1) == 0)
  {
    *error = v36[5];
    v20 = *(v42 + 24);
  }

  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
  return v20 & 1;
}

- (void)_onQueue_removeLegacyRemovabilityFiles
{
  queue = [(IXSAppRemovabilityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v3 = sub_100036ECC();
  v4 = +[IXFileManager defaultManager];
  v20 = 0;
  v5 = [v4 removeItemAtURL:v3 error:&v20];
  v6 = v20;

  if ((v5 & 1) == 0)
  {
    v7 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000A821C();
    }
  }

  v8 = sub_100036DD4();
  v9 = +[IXFileManager defaultManager];
  v19 = 0;
  v10 = [v9 removeItemAtURL:v8 error:&v19];
  v11 = v19;

  if ((v10 & 1) == 0)
  {
    v12 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000A821C();
    }
  }

  v13 = sub_100036CDC();
  v14 = +[IXFileManager defaultManager];
  v18 = 0;
  v15 = [v14 removeItemAtURL:v13 error:&v18];
  v16 = v18;

  if ((v15 & 1) == 0)
  {
    v17 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1000A821C();
    }
  }
}

- (BOOL)_onQueue_writeRemovabilityWithError:(id *)error
{
  queue = [(IXSAppRemovabilityManager *)self queue];
  dispatch_assert_queue_V2(queue);

  removabilityChangeClock = [(IXSAppRemovabilityManager *)self removabilityChangeClock];
  [removabilityChangeClock increment];
  allAppRemovability = [(IXSAppRemovabilityManager *)self allAppRemovability];
  v8 = sub_100037004(allAppRemovability, removabilityChangeClock);

  if (v8)
  {
    removabilityURL = [(IXSAppRemovabilityManager *)self removabilityURL];
    v21 = 0;
    v10 = [v8 writeToURL:removabilityURL options:268435457 error:&v21];
    v11 = v21;

    if (v10)
    {
      v12 = 0;
      goto LABEL_13;
    }

    v15 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000A82B8();
    }

    removabilityURL2 = [(IXSAppRemovabilityManager *)self removabilityURL];
    v12 = sub_1000405FC("[IXSAppRemovabilityManager _onQueue_writeRemovabilityWithError:]", 289, @"IXErrorDomain", 1uLL, v11, 0, @"Failed to write app removability data to URL %@", v17, removabilityURL2);

    if (error)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000A8354();
    }

    v12 = sub_1000405FC("[IXSAppRemovabilityManager _onQueue_writeRemovabilityWithError:]", 279, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to convert app removability and change clock to data", v14, v20);
    v11 = 0;
    if (error)
    {
LABEL_11:
      if (v12)
      {
        v18 = v12;
        *error = v12;
      }
    }
  }

LABEL_13:

  return v12 == 0;
}

- (void)_enumerateRemovability:(id)removability
{
  removabilityCopy = removability;
  queue = [(IXSAppRemovabilityManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100090900;
  v7[3] = &unk_100101B08;
  v7[4] = self;
  v8 = removabilityCopy;
  v6 = removabilityCopy;
  dispatch_sync(queue, v7);
}

- (id)removabilityInfoForAllIdentities
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100090A94;
  v6[3] = &unk_100103970;
  v7 = objc_opt_new();
  v3 = v7;
  [(IXSAppRemovabilityManager *)self _enumerateRemovability:v6];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)clearRemovabilityStateForIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  queue = [(IXSAppRemovabilityManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100090CA4;
  block[3] = &unk_1001011C8;
  block[4] = self;
  v8 = identityCopy;
  v14 = v8;
  v15 = &v16;
  dispatch_sync(queue, block);

  v9 = *(v17 + 24);
  if (error && (v17[3] & 1) == 0)
  {
    v10 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000A83D4();
    }

    *error = sub_1000405FC("[IXSAppRemovabilityManager clearRemovabilityStateForIdentity:error:]", 358, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to find removability entry for %@", v11, v8);
    v9 = *(v17 + 24);
  }

  _Block_object_dispose(&v16, 8);
  return v9 & 1;
}

- (id)removabilityDataWithChangeClock:(id *)clock
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10008FC94;
  v19 = sub_10008FCA4;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10008FC94;
  v13 = sub_10008FCA4;
  v14 = 0;
  queue = [(IXSAppRemovabilityManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000911B4;
  block[3] = &unk_1001018A8;
  block[4] = self;
  block[5] = &v15;
  block[6] = &v9;
  dispatch_sync(queue, block);

  if (clock)
  {
    *clock = v16[5];
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

@end