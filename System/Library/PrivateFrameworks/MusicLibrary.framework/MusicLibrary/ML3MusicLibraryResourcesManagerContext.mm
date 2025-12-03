@interface ML3MusicLibraryResourcesManagerContext
+ (id)contextForAutoupdatingSharedLibrary;
+ (id)contextForMultiUserDaemonLibraryWithAccountInfo:(id)info accountChangeObserver:(id)observer;
+ (id)contextForMultiUserFrameworkLibraryWithService:(id)service;
+ (id)contextForSingleUserLibraryWithAccountInfo:(id)info;
+ (id)contextForSingleUserLibraryWithLibraryContainerIdentifier:(id)identifier;
- (id)_initWithResourcesService:(id)service accountInfo:(id)info libraryContainerIdentifier:(id)identifier accountChangeObserver:(id)observer supportsMultiUsers:(BOOL)users runningInDaemon:(BOOL)daemon;
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
  v11 = [[self alloc] _initWithResourcesService:v10 accountInfo:v8 libraryContainerIdentifier:0 accountChangeObserver:v9 supportsMultiUsers:v4 runningInDaemon:v5 != 0];

  return v11;
}

- (id)_initWithResourcesService:(id)service accountInfo:(id)info libraryContainerIdentifier:(id)identifier accountChangeObserver:(id)observer supportsMultiUsers:(BOOL)users runningInDaemon:(BOOL)daemon
{
  serviceCopy = service;
  infoCopy = info;
  identifierCopy = identifier;
  observerCopy = observer;
  v24.receiver = self;
  v24.super_class = ML3MusicLibraryResourcesManagerContext;
  v19 = [(ML3MusicLibraryResourcesManagerContext *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_resourcesService, service);
    objc_storeStrong(&v20->_accountInfo, info);
    objc_storeStrong(&v20->_accountChangeObserver, observer);
    v20->_multiUserSupported = users;
    v20->_runningInDaemon = daemon;
    v21 = [identifierCopy copy];
    libraryContainerIdentifier = v20->_libraryContainerIdentifier;
    v20->_libraryContainerIdentifier = v21;
  }

  return v20;
}

+ (id)contextForMultiUserDaemonLibraryWithAccountInfo:(id)info accountChangeObserver:(id)observer
{
  observerCopy = observer;
  infoCopy = info;
  v8 = [[self alloc] _initWithResourcesService:0 accountInfo:infoCopy libraryContainerIdentifier:0 accountChangeObserver:observerCopy supportsMultiUsers:1 runningInDaemon:1];

  return v8;
}

+ (id)contextForMultiUserFrameworkLibraryWithService:(id)service
{
  serviceCopy = service;
  v5 = [[self alloc] _initWithResourcesService:serviceCopy accountInfo:0 libraryContainerIdentifier:0 accountChangeObserver:0 supportsMultiUsers:1 runningInDaemon:0];

  return v5;
}

+ (id)contextForSingleUserLibraryWithLibraryContainerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] _initWithResourcesService:0 accountInfo:0 libraryContainerIdentifier:identifierCopy accountChangeObserver:0 supportsMultiUsers:0 runningInDaemon:0];

  return v5;
}

+ (id)contextForSingleUserLibraryWithAccountInfo:(id)info
{
  infoCopy = info;
  v5 = [[self alloc] _initWithResourcesService:0 accountInfo:infoCopy libraryContainerIdentifier:0 accountChangeObserver:0 supportsMultiUsers:0 runningInDaemon:0];

  return v5;
}

@end