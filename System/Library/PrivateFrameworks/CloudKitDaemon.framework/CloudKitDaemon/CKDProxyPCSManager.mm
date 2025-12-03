@interface CKDProxyPCSManager
- (CKDProxyPCSManager)init;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)weAreNeverEverEverUsingEncryption:(id)encryption;
@end

@implementation CKDProxyPCSManager

- (CKDProxyPCSManager)init
{
  v8.receiver = self;
  v8.super_class = CKDProxyPCSManager;
  v4 = [(CKDProxyPCSManager *)&v8 init];
  if (v4)
  {
    v5 = objc_msgSend_superclass(CKDPCSManager, v2, v3);
    PCSManagerSuperclass = v4->_PCSManagerSuperclass;
    v4->_PCSManagerSuperclass = v5;
  }

  return v4;
}

- (void)weAreNeverEverEverUsingEncryption:(id)encryption
{
  v5 = MEMORY[0x277CCA890];
  encryptionCopy = encryption;
  v14 = objc_msgSend_currentHandler(v5, v7, v8);
  v11 = objc_msgSend_selector(encryptionCopy, v9, v10);

  v12 = NSStringFromSelector(v11);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v13, a2, self, @"CKDProxyPCSManager.m", 29, @"[CKDPCSManager %@] was called in a container that should never ever ever use PCS.", v12);
}

- (id)methodSignatureForSelector:(SEL)selector
{
  if (objc_msgSend_instancesRespondToSelector_(CKDPCSManager, a2, selector) && (objc_msgSend_instancesRespondToSelector_(MEMORY[0x277D82BB8], v4, selector) & 1) == 0)
  {
    v6 = objc_msgSend_instanceMethodSignatureForSelector_(CKDPCSManager, v5, selector);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end