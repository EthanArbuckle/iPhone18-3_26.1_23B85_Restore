@interface ACCNavigationRouteGuidanceUpdateInfo(ACCNavigationInfo)
- (id)cr_dictionary;
@end

@implementation ACCNavigationRouteGuidanceUpdateInfo(ACCNavigationInfo)

- (id)cr_dictionary
{
  v2 = objc_opt_new();
  v3 = 0;
  do
  {
    v4 = v3;
    v5 = [self copyInfo:v3];
    if (v5)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v3];
      [v2 setObject:v5 forKeyedSubscript:v6];
    }

    ++v3;
  }

  while (v4 < 0x1A);

  return v2;
}

@end