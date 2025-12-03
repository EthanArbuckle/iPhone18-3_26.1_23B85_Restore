@interface NTKBatteryCircularMediumComplicationView
+ (BOOL)handlesComplicationTemplate:(id)template;
@end

@implementation NTKBatteryCircularMediumComplicationView

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [templateCopy isCompatibleWithFamily:*MEMORY[0x277CBB668]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end