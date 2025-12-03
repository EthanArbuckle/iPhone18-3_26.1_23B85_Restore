@interface CRSUIStatefulCAPackage
- (CRSUIStatefulCAPackage)initWithPackage:(id)package lightModeState:(id)state darkModeState:(id)modeState hasDynamicState:(BOOL)dynamicState;
@end

@implementation CRSUIStatefulCAPackage

- (CRSUIStatefulCAPackage)initWithPackage:(id)package lightModeState:(id)state darkModeState:(id)modeState hasDynamicState:(BOOL)dynamicState
{
  packageCopy = package;
  stateCopy = state;
  modeStateCopy = modeState;
  v21.receiver = self;
  v21.super_class = CRSUIStatefulCAPackage;
  v14 = [(CRSUIStatefulCAPackage *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_package, package);
    v16 = [stateCopy copy];
    lightModeState = v15->_lightModeState;
    v15->_lightModeState = v16;

    v18 = [modeStateCopy copy];
    darkModeState = v15->_darkModeState;
    v15->_darkModeState = v18;

    v15->_hasDynamicState = dynamicState;
  }

  return v15;
}

@end