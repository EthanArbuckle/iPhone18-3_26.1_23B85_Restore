@interface MADSystemXPCStoreContainer
+ (id)sharedContainer;
- (MADSystemXPCStoreContainer)init;
@end

@implementation MADSystemXPCStoreContainer

- (MADSystemXPCStoreContainer)init
{
  v26.receiver = self;
  v26.super_class = MADSystemXPCStoreContainer;
  v2 = [(MADSystemXPCStoreContainer *)&v26 init];
  if (!v2)
  {
    goto LABEL_39;
  }

  v3 = +[MADSystemDataStore modelDefinitionPath];
  if (!v3)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v18 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v18))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[MADSystemXPCStoreContainer] Missing model definition", buf, 2u);
      }
    }

    goto LABEL_29;
  }

  v4 = [NSURL fileURLWithPath:v3];
  if (!v4)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v19 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        *buf = 138412290;
        v28 = v3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[MADSystemXPCStoreContainer] Invalid model definition URL from %@", buf, 0xCu);
      }
    }

    goto LABEL_29;
  }

  v5 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v4];
  if (!v5)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_28;
    }

    v20 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v20))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v21 = "[MADSystemXPCStoreContainer] Failed to load model";
    goto LABEL_27;
  }

  v6 = +[NSXPCListener anonymousListener];
  listener = v2->_listener;
  v2->_listener = v6;

  v8 = v2->_listener;
  if (!v8)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_28;
    }

    v20 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v20))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v21 = "[MADSystemXPCStoreContainer] Failed to create NSXPCListener";
LABEL_27:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v20, v21, buf, 2u);
LABEL_28:

    goto LABEL_29;
  }

  v31[0] = NSXPCStoreAnonymousListenerKey;
  v31[1] = NSMigratePersistentStoresAutomaticallyOption;
  v32[0] = v8;
  v32[1] = &__kCFBooleanTrue;
  v31[2] = NSInferMappingModelAutomaticallyOption;
  v31[3] = NSSQLitePragmasOption;
  v32[2] = &__kCFBooleanTrue;
  v32[3] = &off_100296718;
  v31[4] = NSPersistentStoreFileProtectionKey;
  v31[5] = NSPersistentHistoryTrackingKey;
  v32[4] = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v32[5] = &__kCFBooleanTrue;
  v31[6] = NSXPCStorePostUpdateNotificationsKey;
  v32[6] = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:7];
  v10 = objc_alloc_init(NSXPCStoreServerRequestHandlingPolicy);
  v11 = +[MADSystemDataStore defaultDatabasePath];
  if (!v11)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v23 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[MADSystemXPCStoreContainer] Missing default database path", buf, 2u);
      }
    }

    goto LABEL_29;
  }

  v12 = [NSURL fileURLWithPath:v11];
  if (v12)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v13 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v13))
      {
        *buf = 138412546;
        v28 = v4;
        v29 = 2112;
        v30 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MADSystemXPCStoreContainer] Opening store with model definition (%@) for %@ ...", buf, 0x16u);
      }
    }

    v14 = [[NSXPCStoreServer alloc] initForStoreWithURL:v12 usingModelAtURL:v4 options:v9 policy:v10];
    server = v2->_server;
    v2->_server = v14;

    [(NSXPCListener *)v2->_listener setDelegate:v2->_server];
    [(NSXPCStoreServer *)v2->_server startListening];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v16 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        *buf = 0;
        v17 = "[MADSystemXPCStoreContainer] Successfully opened store";
LABEL_37:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, v17, buf, 2u);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v16 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v16))
    {
      *buf = 0;
      v17 = "[MADSystemXPCStoreContainer] Invalid store URL";
      goto LABEL_37;
    }
  }

  if (v12)
  {
LABEL_39:
    v22 = v2;
    goto LABEL_40;
  }

LABEL_29:
  v22 = 0;
LABEL_40:
  v24 = v22;

  return v24;
}

+ (id)sharedContainer
{
  v3 = [NSString stringWithFormat:@"MADSystemXPCStoreContainer"];
  v4 = +[VCPSharedInstanceManager sharedManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100081570;
  v7[3] = &unk_1002850C8;
  v7[4] = self;
  v5 = [v4 sharedInstanceWithIdentifier:v3 andCreationBlock:v7];

  return v5;
}

@end