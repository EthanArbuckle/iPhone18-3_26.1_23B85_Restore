@interface INCExtensionPlugInBundle
- (INCExtensionPlugInBundle)initWithPrincipalClass:(Class)a3 intentsSupported:(id)a4 intentsRestrictedWhileLocked:(id)a5;
@end

@implementation INCExtensionPlugInBundle

- (INCExtensionPlugInBundle)initWithPrincipalClass:(Class)a3 intentsSupported:(id)a4 intentsRestrictedWhileLocked:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = INCExtensionPlugInBundle;
  v10 = [(INCExtensionPlugInBundle *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_principalClass, a3);
    v12 = [v8 copy];
    intentsSupported = v11->_intentsSupported;
    v11->_intentsSupported = v12;

    v14 = [v9 copy];
    intentsRestrictedWhileLocked = v11->_intentsRestrictedWhileLocked;
    v11->_intentsRestrictedWhileLocked = v14;
  }

  return v11;
}

@end