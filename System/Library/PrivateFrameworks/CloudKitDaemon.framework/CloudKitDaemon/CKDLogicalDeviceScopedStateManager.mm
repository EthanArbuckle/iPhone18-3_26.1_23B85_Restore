@interface CKDLogicalDeviceScopedStateManager
- (CKDLogicalDeviceScopedStateManager)initWithDeviceContext:(id)context;
- (void)addClouddThrottle:(id)throttle;
- (void)allClouddThrottlesWithCompletionHandler:(id)handler;
- (void)clearAllClouddThrottles;
- (void)postClouddWalrusUpdateNotification;
@end

@implementation CKDLogicalDeviceScopedStateManager

- (CKDLogicalDeviceScopedStateManager)initWithDeviceContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = CKDLogicalDeviceScopedStateManager;
  v6 = [(CKDLogicalDeviceScopedStateManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deviceContext, context);
  }

  return v7;
}

- (void)clearAllClouddThrottles
{
  v8 = objc_msgSend_deviceContext(self, a2, v2);
  v5 = objc_msgSend_throttleManager(v8, v3, v4);
  objc_msgSend_resetThrottles(v5, v6, v7);
}

- (void)allClouddThrottlesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v14 = objc_msgSend_deviceContext(self, v6, v7);
  v10 = objc_msgSend_throttleManager(v14, v8, v9);
  v13 = objc_msgSend_allThrottles(v10, v11, v12);
  (*(handler + 2))(handlerCopy, v13);
}

- (void)addClouddThrottle:(id)throttle
{
  throttleCopy = throttle;
  v11 = objc_msgSend_deviceContext(self, v5, v6);
  v9 = objc_msgSend_throttleManager(v11, v7, v8);
  objc_msgSend_addThrottle_(v9, v10, throttleCopy);
}

- (void)postClouddWalrusUpdateNotification
{
  v8 = objc_msgSend_deviceContext(self, a2, v2);
  v5 = objc_msgSend_accountDataSecurityObserver(v8, v3, v4);
  objc_msgSend_postClouddWalrusUpdateNotification(v5, v6, v7);
}

@end