@interface ML3MusicLibraryResourcesManagerContext
+ (id)contextForAutoupdatingSharedLibrary;
+ (id)contextForMultiUserDaemonLibraryWithAccountInfo:(id)a3 accountChangeObserver:(id)a4;
+ (id)contextForMultiUserFrameworkLibraryWithService:(id)a3;
+ (id)contextForSingleUserLibraryWithAccountInfo:(id)a3;
+ (id)contextForSingleUserLibraryWithLibraryContainerIdentifier:(id)a3;
- (id)_initWithResourcesService:(id)a3 accountInfo:(id)a4 libraryContainerIdentifier:(id)a5 accountChangeObserver:(id)a6 supportsMultiUsers:(BOOL)a7 runningInDaemon:(BOOL)a8;
@end

@implementation ML3MusicLibraryResourcesManagerContext

+ (id)contextForAutoupdatingSharedLibrary
{
  v3 = +[ML3MusicLibrary deviceSupportsMultipleLibraries];
  v4 = v3;
  v5 = __daemonProcessInfo;
  if (v3 && __daemonProcessInfo == 0)
  {
    v10 = +[MLMediaLibraryResourcesServiceClient sharedService];
  }

  else
  {
    if (__daemonProcessInfo)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = +[ML3AccountStore defaultStore];
      v9 = +[ML3MusicLibraryAccountChangeObserverProxy sharedProxy];
      v10 = 0;
      goto LABEL_13;
    }

    v10 = 0;
  }

  v9 = 0;
  v8 = 0;
LABEL_13:
  v11 = [[a1 alloc] _initWithResourcesService:v10 accountInfo:v8 libraryContainerIdentifier:0 accountChangeObserver:v9 supportsMultiUsers:v4 runningInDaemon:v5 != 0];

  return v11;
}

- (id)_initWithResourcesService:(id)a3 accountInfo:(id)a4 libraryContainerIdentifier:(id)a5 accountChangeObserver:(id)a6 supportsMultiUsers:(BOOL)a7 runningInDaemon:(BOOL)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v24.receiver = self;
  v24.super_class = ML3MusicLibraryResourcesManagerContext;
  v19 = [(ML3MusicLibraryResourcesManagerContext *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_resourcesService, a3);
    objc_storeStrong(&v20->_accountInfo, a4);
    objc_storeStrong(&v20->_accountChangeObserver, a6);
    v20->_multiUserSupported = a7;
    v20->_runningInDaemon = a8;
    v21 = [v17 copy];
    libraryContainerIdentifier = v20->_libraryContainerIdentifier;
    v20->_libraryContainerIdentifier = v21;
  }

  return v20;
}

+ (id)contextForMultiUserDaemonLibraryWithAccountInfo:(id)a3 accountChangeObserver:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] _initWithResourcesService:0 accountInfo:v7 libraryContainerIdentifier:0 accountChangeObserver:v6 supportsMultiUsers:1 runningInDaemon:1];

  return v8;
}

+ (id)contextForMultiUserFrameworkLibraryWithService:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithResourcesService:v4 accountInfo:0 libraryContainerIdentifier:0 accountChangeObserver:0 supportsMultiUsers:1 runningInDaemon:0];

  return v5;
}

+ (id)contextForSingleUserLibraryWithLibraryContainerIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithResourcesService:0 accountInfo:0 libraryContainerIdentifier:v4 accountChangeObserver:0 supportsMultiUsers:0 runningInDaemon:0];

  return v5;
}

+ (id)contextForSingleUserLibraryWithAccountInfo:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithResourcesService:0 accountInfo:v4 libraryContainerIdentifier:0 accountChangeObserver:0 supportsMultiUsers:0 runningInDaemon:0];

  return v5;
}

@end