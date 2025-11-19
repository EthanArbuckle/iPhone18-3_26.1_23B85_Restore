@interface _CPLCloudKitUnregisteredClient
- (BOOL)isInterestedInZoneID:(id)a3 forCoordinator:(id)a4;
- (_CPLCloudKitUnregisteredClient)initWithCloudKitClientIdentifier:(id)a3 defaultSourceBundleIdentifier:(id)a4;
- (id)interestingZoneIDsForCoordinator:(id)a3;
- (void)coordinator:(id)a3 provideCKAssetWithRecordID:(id)a4 fieldName:(id)a5 recordType:(id)a6 signature:(id)a7 completionHandler:(id)a8;
- (void)coordinatorDidReceiveAPushNotification:(id)a3;
@end

@implementation _CPLCloudKitUnregisteredClient

- (_CPLCloudKitUnregisteredClient)initWithCloudKitClientIdentifier:(id)a3 defaultSourceBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _CPLCloudKitUnregisteredClient;
  v8 = [(_CPLCloudKitUnregisteredClient *)&v14 init];
  if (v8)
  {
    v9 = [[NSString alloc] initWithFormat:@"%@ (unregistered)", v6];
    cloudKitClientIdentifier = v8->_cloudKitClientIdentifier;
    v8->_cloudKitClientIdentifier = v9;

    v11 = [v7 copy];
    defaultSourceBundleIdentifier = v8->_defaultSourceBundleIdentifier;
    v8->_defaultSourceBundleIdentifier = v11;
  }

  return v8;
}

- (void)coordinator:(id)a3 provideCKAssetWithRecordID:(id)a4 fieldName:(id)a5 recordType:(id)a6 signature:(id)a7 completionHandler:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = +[NSAssertionHandler currentHandler];
  v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitCoordinator.m"];
  v23 = objc_opt_class();
  v24 = NSStringFromSelector(a2);
  [v21 handleFailureInMethod:a2 object:self file:v22 lineNumber:790 description:{@"-[%@ %@] should never be called", v23, v24}];

  abort();
}

- (void)coordinatorDidReceiveAPushNotification:(id)a3
{
  v5 = a3;
  v6 = +[NSAssertionHandler currentHandler];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitCoordinator.m"];
  v8 = objc_opt_class();
  v9 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:v7 lineNumber:794 description:{@"-[%@ %@] should never be called", v8, v9}];

  abort();
}

- (id)interestingZoneIDsForCoordinator:(id)a3
{
  v5 = a3;
  v6 = +[NSAssertionHandler currentHandler];
  v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitCoordinator.m"];
  v8 = objc_opt_class();
  v9 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:v7 lineNumber:798 description:{@"-[%@ %@] should never be called", v8, v9}];

  abort();
}

- (BOOL)isInterestedInZoneID:(id)a3 forCoordinator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = +[NSAssertionHandler currentHandler];
  v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCloudKitCoordinator.m"];
  v11 = objc_opt_class();
  v12 = NSStringFromSelector(a2);
  [v9 handleFailureInMethod:a2 object:self file:v10 lineNumber:802 description:{@"-[%@ %@] should never be called", v11, v12}];

  abort();
}

@end