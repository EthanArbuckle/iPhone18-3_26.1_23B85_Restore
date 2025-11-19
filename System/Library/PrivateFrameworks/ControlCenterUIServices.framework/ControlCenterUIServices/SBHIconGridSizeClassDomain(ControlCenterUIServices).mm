@interface SBHIconGridSizeClassDomain(ControlCenterUIServices)
+ (id)controlCenterDomain;
@end

@implementation SBHIconGridSizeClassDomain(ControlCenterUIServices)

+ (id)controlCenterDomain
{
  if (controlCenterDomain_onceToken != -1)
  {
    +[SBHIconGridSizeClassDomain(ControlCenterUIServices) controlCenterDomain];
  }

  v1 = controlCenterDomain_controlCenterDomain;

  return v1;
}

@end