@interface ICDataStoreServer
+ (BOOL)storeNeedsMigrationAtURL:(id)a3;
+ (void)migrateStoreAtURL:(id)a3;
- (ICDataStoreServer)init;
- (id)dataStoreServiceShouldAbortNotification:(id)a3;
- (void)dealloc;
- (void)setupEnvironment;
- (void)startListening;
@end

@implementation ICDataStoreServer

- (ICDataStoreServer)init
{
  v5.receiver = self;
  v5.super_class = ICDataStoreServer;
  v2 = [(ICDataStoreServer *)&v5 init];
  if (v2)
  {
    v3 = +[NSDistributedNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"dataStoreServiceShouldAbortNotification:" name:@"Dear Notes data store service object:{would you mind aborting?", 0}];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICDataStoreServer;
  [(ICDataStoreServer *)&v4 dealloc];
}

- (void)startListening
{
  v3 = objc_autoreleasePoolPush();
  v4 = os_log_create("com.apple.notes", "DataStoreServer");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100001774();
  }

  [(ICDataStoreServer *)self setupEnvironment];
  v5 = +[ICPaths managedObjectModelURL];
  v6 = +[ICPaths persistentStoreURL];
  if (!v6)
  {
    v12 = os_log_create("com.apple.notes", "DataStoreServer");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000017B0();
    }

    exit(22);
  }

  v7 = v6;
  v8 = os_transaction_create();
  if ([ICDataStoreServer storeNeedsMigrationAtURL:v7])
  {
    [ICDataStoreServer migrateStoreAtURL:v7];
  }

  v9 = objc_alloc_init(ICDataStoreServerRequestHandlingPolicy);
  v13[0] = NSXPCStorePostUpdateNotificationsKey;
  v13[1] = NSPersistentHistoryTrackingKey;
  v14[0] = &__kCFBooleanTrue;
  v14[1] = &__kCFBooleanTrue;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v11 = [[NSXPCStoreServer alloc] initForStoreWithURL:v7 usingModelAtURL:v5 options:v10 policy:v9];

  objc_autoreleasePoolPop(v3);
  [v11 startListening];
}

- (void)setupEnvironment
{
  if (qword_1000082D0 != -1)
  {
    sub_1000017EC();
  }
}

+ (BOOL)storeNeedsMigrationAtURL:(id)a3
{
  v3 = a3;
  v4 = +[ICPersistentContainer standardStoreOptions];
  v12 = 0;
  v5 = [NSPersistentStoreCoordinator metadataForPersistentStoreOfType:NSSQLiteStoreType URL:v3 options:v4 error:&v12];

  v6 = v12;
  if (v5)
  {
    v7 = +[ICPersistentContainer managedObjectModel];
    v8 = [v7 entityVersionHashesByName];
    v9 = [v5 objectForKey:NSStoreModelVersionHashesKey];
    v10 = [v8 isEqual:v9] ^ 1;
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "DataStoreServer");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100001AA4();
    }

    LOBYTE(v10) = 1;
  }

  return v10;
}

+ (void)migrateStoreAtURL:(id)a3
{
  v3 = a3;
  if (!dlopen("/System/Library/Frameworks/CloudKit.framework/CloudKit", 2))
  {
    v4 = os_log_create("com.apple.notes", "DataStoreServer");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100001B14();
    }
  }

  if (!dlopen("/System/Library/Frameworks/CoreLocation.framework/CoreLocation", 2))
  {
    v5 = os_log_create("com.apple.notes", "DataStoreServer");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100001B94();
    }
  }

  if (!dlopen("/System/Library/Frameworks/MapKit.framework/MapKit", 2))
  {
    v6 = os_log_create("com.apple.notes", "DataStoreServer");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100001C14();
    }
  }

  v7 = +[ICPersistentContainer standardStoreOptions];
  v8 = [[ICPersistentContainer alloc] initWithStoreURL:v3 storeType:NSSQLiteStoreType options:v7 mergePolicy:0];

  v13 = 0;
  v9 = [v8 loadPersistentStore:&v13];
  v10 = v13;
  v11 = os_log_create("com.apple.notes", "DataStoreServer");
  v12 = v11;
  if (v9)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100001D04();
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100001C94();
  }
}

- (id)dataStoreServiceShouldAbortNotification:(id)a3
{
  v3 = a3;
  v4 = os_log_create("com.apple.notes", "DataStoreServer");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Data store received a notification that it should abort. Good bye, world.", v5, 2u);
  }

  exit(0);
}

@end