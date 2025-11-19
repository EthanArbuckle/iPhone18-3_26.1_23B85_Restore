@interface CRAccNavRouteGuidance
+ (id)resetForComponent:(id)a3;
- (ACCNavigationRouteGuidanceUpdateInfo)routeGuidance;
- (BOOL)hasCurrentLaneGuidanceIndex;
- (NSArray)currentManeuverIndexes;
@end

@implementation CRAccNavRouteGuidance

- (ACCNavigationRouteGuidanceUpdateInfo)routeGuidance
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

- (NSArray)currentManeuverIndexes
{
  v2 = [(CRAccNavInfo *)self valueForInfoType:13];
  objc_opt_class();
  v3 = v2;
  if (!v3 || (v4 = v3, (objc_opt_isKindOfClass() & 1) == 0))
  {

    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (BOOL)hasCurrentLaneGuidanceIndex
{
  v2 = [(CRAccNavInfo *)self valueForInfoType:16];
  v3 = v2 != 0;

  return v3;
}

+ (id)resetForComponent:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setInfo:1 data:&unk_283821E58];
  v6 = [[a1 alloc] initWithComponent:v4 accNavInfo:v5];

  return v6;
}

@end