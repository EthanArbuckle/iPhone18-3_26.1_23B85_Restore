@interface IDSRegistrationCacheStateTransportPolicy
+ (BOOL)shouldQueryUpdateOfParams:(id)a3;
@end

@implementation IDSRegistrationCacheStateTransportPolicy

+ (BOOL)shouldQueryUpdateOfParams:(id)a3
{
  v3 = [a3 command];
  v4 = [v3 integerValue] == 101;

  return v4;
}

@end