@interface NTKHeartRateComplicationUtilties
+ (id)heartrateTintColor;
@end

@implementation NTKHeartRateComplicationUtilties

+ (id)heartrateTintColor
{
  if (heartrateTintColor_onceToken != -1)
  {
    +[NTKHeartRateComplicationUtilties heartrateTintColor];
  }

  v3 = heartrateTintColor__heartRateColor;

  return v3;
}

void __54__NTKHeartRateComplicationUtilties_heartrateTintColor__block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.219607845 blue:0.0980392173 alpha:255.0];
  v1 = heartrateTintColor__heartRateColor;
  heartrateTintColor__heartRateColor = v0;
}

@end