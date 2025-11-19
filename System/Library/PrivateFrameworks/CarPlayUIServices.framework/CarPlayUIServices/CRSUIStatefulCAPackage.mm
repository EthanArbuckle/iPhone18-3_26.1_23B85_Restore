@interface CRSUIStatefulCAPackage
- (CRSUIStatefulCAPackage)initWithPackage:(id)a3 lightModeState:(id)a4 darkModeState:(id)a5 hasDynamicState:(BOOL)a6;
@end

@implementation CRSUIStatefulCAPackage

- (CRSUIStatefulCAPackage)initWithPackage:(id)a3 lightModeState:(id)a4 darkModeState:(id)a5 hasDynamicState:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v21.receiver = self;
  v21.super_class = CRSUIStatefulCAPackage;
  v14 = [(CRSUIStatefulCAPackage *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_package, a3);
    v16 = [v12 copy];
    lightModeState = v15->_lightModeState;
    v15->_lightModeState = v16;

    v18 = [v13 copy];
    darkModeState = v15->_darkModeState;
    v15->_darkModeState = v18;

    v15->_hasDynamicState = a6;
  }

  return v15;
}

@end