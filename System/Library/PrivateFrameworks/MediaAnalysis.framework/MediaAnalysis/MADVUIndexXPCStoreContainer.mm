@interface MADVUIndexXPCStoreContainer
+ (id)sharedContainerWithPhotoLibrary:(id)library;
- (MADVUIndexXPCStoreContainer)initWithPhotoLibrary:(id)library;
@end

@implementation MADVUIndexXPCStoreContainer

- (MADVUIndexXPCStoreContainer)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v30.receiver = self;
  v30.super_class = MADVUIndexXPCStoreContainer;
  v5 = [(MADVUIndexXPCStoreContainer *)&v30 init];
  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = [NSBundle bundleWithIdentifier:@"com.apple.VisualUnderstanding"];
  v7 = v6;
  if (!v6)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v22 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v22))
      {
        *buf = 138412290;
        v32 = @"com.apple.VisualUnderstanding";
        _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[MADVUIndexXPCStoreContainer] Failed to load bundle from %@", buf, 0xCu);
      }
    }

    goto LABEL_29;
  }

  v8 = [v6 pathForResource:@"VUIndexModel" ofType:@"momd"];
  if (!v8)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v23 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        *buf = 138412290;
        v32 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[MADVUIndexXPCStoreContainer] Missing model definition (%@)", buf, 0xCu);
      }
    }

    goto LABEL_29;
  }

  v9 = [NSURL fileURLWithPath:v8];
  v10 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v9];
  if (!v10)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v24 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v24))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "[MADVUIndexXPCStoreContainer] Failed to load model", buf, 2u);
      }
    }

    goto LABEL_29;
  }

  v36[0] = NSMigratePersistentStoresAutomaticallyOption;
  v36[1] = NSInferMappingModelAutomaticallyOption;
  v37[0] = &__kCFBooleanTrue;
  v37[1] = &__kCFBooleanTrue;
  v36[2] = NSPersistentStoreFileProtectionKey;
  v36[3] = NSPersistentHistoryTrackingKey;
  v37[2] = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v37[3] = &__kCFBooleanTrue;
  v36[4] = NSXPCStoreServiceNameKey;
  v36[5] = NSXPCStoreDaemonizeKey;
  v37[4] = kXPCStoreServiceName;
  v37[5] = &__kCFBooleanTrue;
  v37[6] = &__kCFBooleanTrue;
  v36[6] = NSXPCStorePostUpdateNotificationsKey;
  v36[7] = NSXPCStoreEntitlementNamesKey;
  v35 = kEntitlementName;
  v11 = [NSArray arrayWithObjects:&v35 count:1];
  v36[8] = NSReadOnlyPersistentStoreOption;
  v37[7] = v11;
  v37[8] = &__kCFBooleanTrue;
  v29 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:9];

  v12 = objc_alloc_init(NSXPCStoreServerRequestHandlingPolicy);
  vcp_visionCacheStorageDirectoryURL = [libraryCopy vcp_visionCacheStorageDirectoryURL];
  v14 = [vcp_visionCacheStorageDirectoryURL URLByAppendingPathComponent:@"VUIndex.sqlite"];
  if (v14)
  {
    v15 = [[NSXPCStoreServer alloc] initForStoreWithURL:v14 usingModelAtURL:v9 options:v29 policy:v12];
    server = v5->_server;
    v5->_server = v15;

    [(NSXPCStoreServer *)v5->_server startListening];
    if (MediaAnalysisLogLevel() >= 6)
    {
      v17 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v17))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v17, "[MADVUIndexXPCStoreContainer] Successfully opened store", buf, 2u);
      }
    }

    if (MediaAnalysisLogLevel() >= 7)
    {
      v18 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v18))
      {
        *buf = 138412546;
        v32 = v9;
        v33 = 2112;
        v34 = v14;
        v19 = "[MADVUIndexXPCStoreContainer] Model Definition - %@, VUIndex - %@";
        v20 = v18;
        v21 = 22;
LABEL_26:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, v19, buf, v21);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v25 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v25))
    {
      *buf = 0;
      v19 = "[MADVUIndexXPCStoreContainer] Failed to determine database URL";
      v20 = v25;
      v21 = 2;
      goto LABEL_26;
    }
  }

  if (!v14)
  {
LABEL_29:
    v26 = 0;
    goto LABEL_30;
  }

LABEL_28:
  v26 = v5;
LABEL_30:
  v27 = v26;

  return v27;
}

+ (id)sharedContainerWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  photoLibraryURL = [libraryCopy photoLibraryURL];
  v6 = [NSString stringWithFormat:@"MADVUIndexXPCStoreContainer-%@", photoLibraryURL];

  v7 = +[VCPSharedInstanceManager sharedManager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001B5340;
  v11[3] = &unk_100288800;
  selfCopy = self;
  v8 = libraryCopy;
  v12 = v8;
  v9 = [v7 sharedInstanceWithIdentifier:v6 andCreationBlock:v11];

  return v9;
}

@end