@interface CRAccNavManeuver
- (ACCNavigationManeuverUpdateInfo)maneuver;
@end

@implementation CRAccNavManeuver

- (ACCNavigationManeuverUpdateInfo)maneuver
{
  [objc_opt_class() ACCNavigationInfoClass];
  v3 = [(CRAccNavInfo *)self accNavInfo];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end