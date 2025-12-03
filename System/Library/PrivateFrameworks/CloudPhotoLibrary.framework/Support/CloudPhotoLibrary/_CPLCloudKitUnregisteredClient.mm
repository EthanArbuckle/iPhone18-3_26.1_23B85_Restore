@interface _CPLCloudKitUnregisteredClient
- (BOOL)isInterestedInZoneID:(id)d forCoordinator:(id)coordinator;
- (_CPLCloudKitUnregisteredClient)initWithCloudKitClientIdentifier:(id)identifier defaultSourceBundleIdentifier:(id)bundleIdentifier;
- (id)interestingZoneIDsForCoordinator:(id)coordinator;
- (void)coordinator:(id)coordinator provideCKAssetWithRecordID:(id)d fieldName:(id)name recordType:(id)type signature:(id)signature completionHandler:(id)handler;
- (void)coordinatorDidReceiveAPushNotification:(id)notification;
@end

@implementation _CPLCloudKitUnregisteredClient

- (_CPLCloudKitUnregisteredClient)initWithCloudKitClientIdentifier:(id)identifier defaultSourceBundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v14.receiver = self;
  v14.super_class = _CPLCloudKitUnregisteredClient;
  v8 = [(_CPLCloudKitUnregisteredClient *)&v14 init];
  if (v8)
  {
    identifierCopy = [[NSString alloc] initWithFormat:@"%@ (unregistered)", identifierCopy];
    cloudKitClientIdentifier = v8->_cloudKitClientIdentifier;
    v8->_cloudKitClientIdentifier = identifierCopy;

    v11 = [bundleIdentifierCopy copy];
    defaultSourceBundleIdentifier = v8->_defaultSourceBundleIdentifier;
    v8->_defaultSourceBundleIdentifier = v11;
  }

  return v8;
}

- (void)coordinator:(id)coordinator provideCKAssetWithRecordID:(id)d fieldName:(id)name recordType:(id)type signature:(id)signature completionHandler:(id)handler
{
  coordinatorCopy = coordinator;
  dCopy = d;
  nameCopy = name;
  typeCopy = type;
  signatureCopy = signature;
  handlerCopy = handler;
  v21 = +[NSAssertionHandler currentHandler];
  v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitCoordinator.m"];
  v23 = objc_opt_class();
  v24 = NSStringFromSelector(a2);
  [v21 handleFailureInMethod:a2 object:self file:v22 lineNumber:790 description:{@"-[%@ %@] should never be called", v23, v24}];

  abort();
}

- (void)coordinatorDidReceiveAPushNotification:(id)notification
{
  notificationCopy = notification;
  v6 = +[NSAssertionHandler currentHandler];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitCoordinator.m"];
  v8 = objc_opt_class();
  v9 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:v7 lineNumber:794 description:{@"-[%@ %@] should never be called", v8, v9}];

  abort();
}

- (id)interestingZoneIDsForCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v6 = +[NSAssertionHandler currentHandler];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitCoordinator.m"];
  v8 = objc_opt_class();
  v9 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:v7 lineNumber:798 description:{@"-[%@ %@] should never be called", v8, v9}];

  abort();
}

- (BOOL)isInterestedInZoneID:(id)d forCoordinator:(id)coordinator
{
  dCopy = d;
  coordinatorCopy = coordinator;
  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitCoordinator.m"];
  v11 = objc_opt_class();
  v12 = NSStringFromSelector(a2);
  [v9 handleFailureInMethod:a2 object:self file:v10 lineNumber:802 description:{@"-[%@ %@] should never be called", v11, v12}];

  abort();
}

@end