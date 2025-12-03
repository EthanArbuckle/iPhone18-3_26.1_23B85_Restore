@interface IDSRegistrationCacheStateTransportPolicy
+ (BOOL)shouldQueryUpdateOfParams:(id)params;
@end

@implementation IDSRegistrationCacheStateTransportPolicy

+ (BOOL)shouldQueryUpdateOfParams:(id)params
{
  command = [params command];
  v4 = [command integerValue] == 101;

  return v4;
}

@end