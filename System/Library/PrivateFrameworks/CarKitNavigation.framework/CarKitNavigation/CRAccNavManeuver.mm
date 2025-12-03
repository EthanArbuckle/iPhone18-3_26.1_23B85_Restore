@interface CRAccNavManeuver
- (ACCNavigationManeuverUpdateInfo)maneuver;
@end

@implementation CRAccNavManeuver

- (ACCNavigationManeuverUpdateInfo)maneuver
{
  [objc_opt_class() ACCNavigationInfoClass];
  accNavInfo = [(CRAccNavInfo *)self accNavInfo];
  if (accNavInfo && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = accNavInfo;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end