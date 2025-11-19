@interface NTPBPersonalizationAggregateDelta(FCBugFixSwizzle)
+ (void)fc_swizzleFor24117796;
@end

@implementation NTPBPersonalizationAggregateDelta(FCBugFixSwizzle)

+ (void)fc_swizzleFor24117796
{
  if (fc_swizzleFor24117796_onceToken != -1)
  {
    dispatch_once(&fc_swizzleFor24117796_onceToken, &__block_literal_global_43);
  }
}

@end