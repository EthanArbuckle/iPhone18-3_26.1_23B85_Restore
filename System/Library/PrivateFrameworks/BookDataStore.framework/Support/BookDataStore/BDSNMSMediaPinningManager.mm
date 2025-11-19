@interface BDSNMSMediaPinningManager
+ (id)sharedManager;
@end

@implementation BDSNMSMediaPinningManager

+ (id)sharedManager
{
  v2 = sub_100077BF0();

  return [v2 sharedManager];
}

@end