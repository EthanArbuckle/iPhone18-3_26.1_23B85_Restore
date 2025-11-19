@interface CKDTokenRegistrationSchedulerUnregisterOperation
- (id)createRequest;
@end

@implementation CKDTokenRegistrationSchedulerUnregisterOperation

- (id)createRequest
{
  v4 = objc_msgSend_container(self, a2, v2);
  v5 = [CKDTokenDeletionURLRequest alloc];
  v8 = objc_msgSend_apsToken(self, v6, v7);
  v11 = objc_msgSend_apsEnvironmentString(v4, v9, v10);
  v14 = objc_msgSend_applicationBundleIdentifierForPush(v4, v12, v13);
  v16 = objc_msgSend_initWithOperation_apsToken_apsEnvironmentString_bundleID_(v5, v15, self, v8, v11, v14);

  return v16;
}

@end