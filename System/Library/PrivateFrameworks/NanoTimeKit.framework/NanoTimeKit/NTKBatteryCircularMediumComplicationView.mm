@interface NTKBatteryCircularMediumComplicationView
+ (BOOL)handlesComplicationTemplate:(id)a3;
@end

@implementation NTKBatteryCircularMediumComplicationView

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 isCompatibleWithFamily:*MEMORY[0x277CBB668]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end