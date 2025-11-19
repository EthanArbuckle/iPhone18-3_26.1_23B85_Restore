@interface CKDTokenRegistrationSchedulerRegisterOperation
- (id)createRequest;
@end

@implementation CKDTokenRegistrationSchedulerRegisterOperation

- (id)createRequest
{
  v4 = objc_msgSend_container(self, a2, v2);
  v5 = [CKDTokenRegistrationURLRequest alloc];
  v8 = objc_msgSend_apsToken(self, v6, v7);
  v11 = objc_msgSend_apsEnvironmentString(v4, v9, v10);
  v14 = objc_msgSend_applicationBundleIdentifierForPush(v4, v12, v13);
  v17 = objc_msgSend_adopterProcessType(v4, v15, v16) == 3;
  v19 = objc_msgSend_initWithOperation_apsToken_apsEnvironmentString_bundleID_skipBundleIDCheck_(v5, v18, self, v8, v11, v14, v17);

  return v19;
}

@end