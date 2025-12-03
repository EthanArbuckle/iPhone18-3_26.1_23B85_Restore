@interface INCExtensionPlugInBundle
- (INCExtensionPlugInBundle)initWithPrincipalClass:(Class)class intentsSupported:(id)supported intentsRestrictedWhileLocked:(id)locked;
@end

@implementation INCExtensionPlugInBundle

- (INCExtensionPlugInBundle)initWithPrincipalClass:(Class)class intentsSupported:(id)supported intentsRestrictedWhileLocked:(id)locked
{
  supportedCopy = supported;
  lockedCopy = locked;
  v17.receiver = self;
  v17.super_class = INCExtensionPlugInBundle;
  v10 = [(INCExtensionPlugInBundle *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_principalClass, class);
    v12 = [supportedCopy copy];
    intentsSupported = v11->_intentsSupported;
    v11->_intentsSupported = v12;

    v14 = [lockedCopy copy];
    intentsRestrictedWhileLocked = v11->_intentsRestrictedWhileLocked;
    v11->_intentsRestrictedWhileLocked = v14;
  }

  return v11;
}

@end