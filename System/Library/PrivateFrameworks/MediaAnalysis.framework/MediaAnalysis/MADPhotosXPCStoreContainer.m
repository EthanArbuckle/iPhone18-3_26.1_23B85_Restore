@interface MADPhotosXPCStoreContainer
+ (id)sharedContainerWithPhotoLibrary:(id)a3;
- (MADPhotosXPCStoreContainer)initWithPhotoLibrary:(id)a3;
@end

@implementation MADPhotosXPCStoreContainer

- (MADPhotosXPCStoreContainer)initWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = MADPhotosXPCStoreContainer;
  v5 = [(MADPhotosXPCStoreContainer *)&v29 init];
  if (!v5)
  {
    goto LABEL_39;
  }

  v6 = +[MADPhotosDataStoreClient modelDefinitionPath];
  if (!v6)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v21 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v21))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v21, "[MADPhotosXPCStoreContainer] Missing model definition", buf, 2u);
      }
    }

    goto LABEL_29;
  }

  v7 = [NSURL fileURLWithPath:v6];
  if (!v7)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v22 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v22))
      {
        *buf = 138412290;
        v31 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[MADSystemXPCStoreContainer] Invalid model definition URL from %@", buf, 0xCu);
      }
    }

    goto LABEL_29;
  }

  v8 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v7];
  if (!v8)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_28;
    }

    v23 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v23))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v24 = "[MADPhotosXPCStoreContainer] Failed to load model";
    goto LABEL_27;
  }

  v9 = +[NSXPCListener anonymousListener];
  listener = v5->_listener;
  v5->_listener = v9;

  v11 = v5->_listener;
  if (!v11)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_28;
    }

    v23 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v23))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v24 = "[MADPhotosXPCStoreContainer] Failed to create NSXPCListener";
LABEL_27:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v23, v24, buf, 2u);
LABEL_28:

    goto LABEL_29;
  }

  v34[0] = NSXPCStoreAnonymousListenerKey;
  v34[1] = NSMigratePersistentStoresAutomaticallyOption;
  v35[0] = v11;
  v35[1] = &__kCFBooleanTrue;
  v34[2] = NSInferMappingModelAutomaticallyOption;
  v34[3] = NSSQLitePragmasOption;
  v35[2] = &__kCFBooleanTrue;
  v35[3] = &off_100296768;
  v34[4] = NSPersistentStoreFileProtectionKey;
  v34[5] = NSPersistentHistoryTrackingKey;
  v35[4] = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v35[5] = &__kCFBooleanTrue;
  v34[6] = NSXPCStorePostUpdateNotificationsKey;
  v35[6] = &__kCFBooleanTrue;
  v12 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:7];
  v13 = objc_alloc_init(NSXPCStoreServerRequestHandlingPolicy);
  v14 = [MADPhotosDataStoreClient defaultDatabasePathForPhotoLibrary:v4];
  if (!v14)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v26 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v26))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "[MADPhotosXPCStoreContainer] Missing default database path", buf, 2u);
      }
    }

    goto LABEL_29;
  }

  v15 = [NSURL fileURLWithPath:v14];
  if (v15)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v16 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        *buf = 138412546;
        v31 = v7;
        v32 = 2112;
        v33 = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[MADPhotosXPCStoreContainer] Opening store with model definition (%@) for %@ ...", buf, 0x16u);
      }
    }

    v17 = [[NSXPCStoreServer alloc] initForStoreWithURL:v15 usingModelAtURL:v7 options:v12 policy:v13];
    server = v5->_server;
    v5->_server = v17;

    [(NSXPCListener *)v5->_listener setDelegate:v5->_server];
    [(NSXPCStoreServer *)v5->_server startListening];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v19 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        *buf = 0;
        v20 = "[MADPhotosXPCStoreContainer] Successfully opened store";
LABEL_37:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, v20, buf, 2u);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v19 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v19))
    {
      *buf = 0;
      v20 = "[MADPhotosXPCStoreContainer] Invalid store URL";
      goto LABEL_37;
    }
  }

  if (v15)
  {
LABEL_39:
    v25 = v5;
    goto LABEL_40;
  }

LABEL_29:
  v25 = 0;
LABEL_40:
  v27 = v25;

  return v27;
}

+ (id)sharedContainerWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v5 = [v4 photoLibraryURL];
  v6 = [NSString stringWithFormat:@"MADPhotosXPCStoreContainer-%@", v5];

  v7 = +[VCPSharedInstanceManager sharedManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E51A8;
  v11[3] = &unk_100286030;
  v13 = a1;
  v8 = v4;
  v12 = v8;
  v9 = [v7 sharedInstanceWithIdentifier:v6 andCreationBlock:v11];

  return v9;
}

@end