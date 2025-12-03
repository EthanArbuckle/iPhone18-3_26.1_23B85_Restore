@interface NADaemon
+ (id)sharedDaemon;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NADaemon)init;
- (void)migrateFixedLibraryPathIfNeeded;
- (void)setup;
- (void)startSyncControllerIfNeeded;
@end

@implementation NADaemon

+ (id)sharedDaemon
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000085F4;
  block[3] = &unk_100018668;
  block[4] = self;
  if (qword_100020BB8 != -1)
  {
    dispatch_once(&qword_100020BB8, block);
  }

  v2 = qword_100020BB0;

  return v2;
}

- (NADaemon)init
{
  v6.receiver = self;
  v6.super_class = NADaemon;
  v2 = [(NADaemon *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.nanoappregistry.eventqueue", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)setup
{
  v3 = nar_workspace_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Setup NADaemon", v8, 2u);
  }

  [(NADaemon *)self registerForLaunchEvents];
  [(NADaemon *)self migrateFixedLibraryPathIfNeeded];
  v4 = +[NADApplicationStore defaultStore];
  applicationStore = self->_applicationStore;
  self->_applicationStore = v4;

  v6 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.nanoappregistry.workspace"];
  workspaceListener = self->_workspaceListener;
  self->_workspaceListener = v6;

  [(NSXPCListener *)self->_workspaceListener setDelegate:self];
  [(NADaemon *)self startSyncControllerIfNeeded];
}

- (void)startSyncControllerIfNeeded
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000087F4;
  block[3] = &unk_100018578;
  block[4] = self;
  if (qword_100020BC0 != -1)
  {
    dispatch_once(&qword_100020BC0, block);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  workspaceListener = self->_workspaceListener;
  if (workspaceListener == listener)
  {
    connectionCopy = connection;
    v8 = NARWorkspaceServiceInterface();
    [connectionCopy setExportedInterface:v8];

    v9 = [[NADWorkspaceConnection alloc] initWithApplicationStore:self->_applicationStore];
    [connectionCopy setExportedObject:v9];

    [connectionCopy resume];
  }

  return workspaceListener == listener;
}

- (void)migrateFixedLibraryPathIfNeeded
{
  v2 = [NADLibraryPathMigrator alloc];
  v3 = +[NADApplicationStore legacyDefaultURL];
  v4 = +[NADApplicationStore defaultURL];
  v5 = [(NADLibraryPathMigrator *)v2 initWithSourceURL:v3 destinationURL:v4];

  [(NADLibraryPathMigrator *)v5 migrate];
}

@end