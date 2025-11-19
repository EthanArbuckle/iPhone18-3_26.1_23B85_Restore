@interface CKRotationLockUtility
- (CKRotationLockUtility)initWithWindow:(id)a3;
- (UIWindow)lockedWindow;
- (void)dealloc;
- (void)releaseRotationLock;
@end

@implementation CKRotationLockUtility

- (CKRotationLockUtility)initWithWindow:(id)a3
{
  v4 = a3;
  v5 = [(CKRotationLockUtility *)self init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_lockedWindow, v4);
    [v4 beginDisablingInterfaceAutorotation];
  }

  return v6;
}

- (void)releaseRotationLock
{
  WeakRetained = objc_loadWeakRetained(&self->_lockedWindow);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_lockedWindow);
    [v4 endDisablingInterfaceAutorotation];

    objc_storeWeak(&self->_lockedWindow, 0);
  }
}

- (void)dealloc
{
  [(CKRotationLockUtility *)self releaseRotationLock];
  v3.receiver = self;
  v3.super_class = CKRotationLockUtility;
  [(CKRotationLockUtility *)&v3 dealloc];
}

- (UIWindow)lockedWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_lockedWindow);

  return WeakRetained;
}

@end