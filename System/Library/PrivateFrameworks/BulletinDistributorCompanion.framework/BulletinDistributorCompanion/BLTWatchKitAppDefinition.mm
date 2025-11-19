@interface BLTWatchKitAppDefinition
- (BLTWatchKitAppDefinition)initWithContainerBundleID:(id)a3 watchKitAppBundleID:(id)a4 isInstalled:(BOOL)a5 runsIndependently:(BOOL)a6;
@end

@implementation BLTWatchKitAppDefinition

- (BLTWatchKitAppDefinition)initWithContainerBundleID:(id)a3 watchKitAppBundleID:(id)a4 isInstalled:(BOOL)a5 runsIndependently:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v18.receiver = self;
  v18.super_class = BLTWatchKitAppDefinition;
  v12 = [(BLTWatchKitAppDefinition *)&v18 init];
  if (v12)
  {
    v13 = [v10 copy];
    containerBundleID = v12->_containerBundleID;
    v12->_containerBundleID = v13;

    v15 = [v11 copy];
    watchKitAppBundleID = v12->_watchKitAppBundleID;
    v12->_watchKitAppBundleID = v15;

    v12->_isInstalled = a5;
    v12->_runsIndependently = a6;
  }

  return v12;
}

@end