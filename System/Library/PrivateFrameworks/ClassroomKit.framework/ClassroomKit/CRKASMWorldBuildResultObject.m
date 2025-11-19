@interface CRKASMWorldBuildResultObject
- (CRKASMWorldBuildResultObject)initWithRoster:(id)a3 manageableLocations:(id)a4;
@end

@implementation CRKASMWorldBuildResultObject

- (CRKASMWorldBuildResultObject)initWithRoster:(id)a3 manageableLocations:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CRKASMWorldBuildResultObject;
  v9 = [(CRKASMWorldBuildResultObject *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_roster, a3);
    v11 = [v8 copy];
    manageableLocations = v10->_manageableLocations;
    v10->_manageableLocations = v11;
  }

  return v10;
}

@end