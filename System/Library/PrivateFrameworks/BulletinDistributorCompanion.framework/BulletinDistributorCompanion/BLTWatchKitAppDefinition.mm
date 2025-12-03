@interface BLTWatchKitAppDefinition
- (BLTWatchKitAppDefinition)initWithContainerBundleID:(id)d watchKitAppBundleID:(id)iD isInstalled:(BOOL)installed runsIndependently:(BOOL)independently;
@end

@implementation BLTWatchKitAppDefinition

- (BLTWatchKitAppDefinition)initWithContainerBundleID:(id)d watchKitAppBundleID:(id)iD isInstalled:(BOOL)installed runsIndependently:(BOOL)independently
{
  dCopy = d;
  iDCopy = iD;
  v18.receiver = self;
  v18.super_class = BLTWatchKitAppDefinition;
  v12 = [(BLTWatchKitAppDefinition *)&v18 init];
  if (v12)
  {
    v13 = [dCopy copy];
    containerBundleID = v12->_containerBundleID;
    v12->_containerBundleID = v13;

    v15 = [iDCopy copy];
    watchKitAppBundleID = v12->_watchKitAppBundleID;
    v12->_watchKitAppBundleID = v15;

    v12->_isInstalled = installed;
    v12->_runsIndependently = independently;
  }

  return v12;
}

@end