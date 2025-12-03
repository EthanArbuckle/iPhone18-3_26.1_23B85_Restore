@interface CRKASMWorldBuildResultObject
- (CRKASMWorldBuildResultObject)initWithRoster:(id)roster manageableLocations:(id)locations;
@end

@implementation CRKASMWorldBuildResultObject

- (CRKASMWorldBuildResultObject)initWithRoster:(id)roster manageableLocations:(id)locations
{
  rosterCopy = roster;
  locationsCopy = locations;
  v14.receiver = self;
  v14.super_class = CRKASMWorldBuildResultObject;
  v9 = [(CRKASMWorldBuildResultObject *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_roster, roster);
    v11 = [locationsCopy copy];
    manageableLocations = v10->_manageableLocations;
    v10->_manageableLocations = v11;
  }

  return v10;
}

@end