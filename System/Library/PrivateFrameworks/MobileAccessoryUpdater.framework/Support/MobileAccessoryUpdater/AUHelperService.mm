@interface AUHelperService
- (AUHelperService)initWithQueue:(id)queue;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)xpcConnectionHasEntitlement:(id)entitlement;
- (void)userPreferenceObjectForSuite:(unint64_t)suite withKey:(id)key withReply:(id)reply;
- (void)userPreferenceSetObject:(id)object forSuite:(unint64_t)suite withKey:(id)key;
- (void)userPreferenceUpdateAccessorySettings:(id)settings withKey:(id)key;
@end

@implementation AUHelperService

- (AUHelperService)initWithQueue:(id)queue
{
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = AUHelperService;
  v6 = [(AUHelperService *)&v14 init];
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = os_log_create("com.apple.accessoryupdater.auhelper", "AUHelper");
  v8 = *(v6 + 1);
  *(v6 + 1) = v7;

  objc_storeStrong(v6 + 3, queue);
  v9 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.accessoryupdater.launchauhelper"];
  v10 = *(v6 + 2);
  *(v6 + 2) = v9;

  v11 = *(v6 + 2);
  if (v11)
  {
    [v11 setDelegate:v6];
    [*(v6 + 2) resume];
LABEL_4:
    v12 = v6;
    goto LABEL_8;
  }

  if (os_log_type_enabled(*(v6 + 1), OS_LOG_TYPE_ERROR))
  {
    sub_10004A758();
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  listenerQueue = self->_listenerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010C14;
  block[3] = &unk_1000815F0;
  v10 = connectionCopy;
  v11 = &v12;
  block[4] = self;
  v7 = connectionCopy;
  dispatch_sync(listenerQueue, block);
  LOBYTE(listenerQueue) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return listenerQueue;
}

- (BOOL)xpcConnectionHasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v5 = [entitlementCopy valueForEntitlement:@"com.apple.accessoryupdater.launchauhelper.entitled"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 BOOLValue])
  {
    v6 = 1;
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10004A810(log, entitlementCopy);
    }

    v6 = 0;
  }

  return v6;
}

- (void)userPreferenceObjectForSuite:(unint64_t)suite withKey:(id)key withReply:(id)reply
{
  keyCopy = key;
  replyCopy = reply;
  v10 = sub_100006788(suite);
  if (v10)
  {
    v11 = [[NSUserDefaults alloc] initWithSuiteName:v10];
    v12 = [v11 objectForKey:keyCopy];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315906;
      v15 = "[AUHelperService userPreferenceObjectForSuite:withKey:withReply:]";
      v16 = 2112;
      v17 = keyCopy;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v10;
      _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, " %s: Read out %@: %@ for %@", &v14, 0x2Au);
    }

    replyCopy[2](replyCopy, v12);

    replyCopy = v11;
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10004A8AC();
    }

    replyCopy[2](replyCopy, 0);
  }
}

- (void)userPreferenceSetObject:(id)object forSuite:(unint64_t)suite withKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v10 = sub_100006788(suite);
  log = self->_log;
  if (v10)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v13 = 136315906;
      v14 = "[AUHelperService userPreferenceSetObject:forSuite:withKey:]";
      v15 = 2112;
      v16 = keyCopy;
      v17 = 2112;
      v18 = objectCopy;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, " %s: Write %@: %@ to %@", &v13, 0x2Au);
    }

    v12 = [[NSUserDefaults alloc] initWithSuiteName:v10];
    [v12 setObject:objectCopy forKey:keyCopy];
  }

  else if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_10004A928();
  }
}

- (void)userPreferenceUpdateAccessorySettings:(id)settings withKey:(id)key
{
  settingsCopy = settings;
  keyCopy = key;
  v8 = sub_100006788(1);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v19 = "[AUHelperService userPreferenceUpdateAccessorySettings:withKey:]";
    v20 = 2112;
    v21 = keyCopy;
    v22 = 2112;
    v23 = settingsCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, " %s: Write Accessory Settings changes %@ / %@", buf, 0x20u);
  }

  v10 = [[NSUserDefaults alloc] initWithSuiteName:v8];
  v11 = [v10 objectForKey:@"accessories"];
  v12 = [v11 mutableCopy];

  if (!v12)
  {
    v12 = objc_opt_new();
  }

  v13 = [v12 objectForKeyedSubscript:keyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v13 mutableCopy];
  }

  else
  {
    v14 = objc_opt_new();
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100011410;
  v16[3] = &unk_100081618;
  v17 = v14;
  v15 = v14;
  [settingsCopy enumerateKeysAndObjectsUsingBlock:v16];
  [v12 setObject:v15 forKeyedSubscript:keyCopy];
  [v10 setObject:v12 forKey:@"accessories"];
}

@end