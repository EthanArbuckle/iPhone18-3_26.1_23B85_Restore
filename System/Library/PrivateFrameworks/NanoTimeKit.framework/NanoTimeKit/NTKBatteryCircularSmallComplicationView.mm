@interface NTKBatteryCircularSmallComplicationView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (void)_updateForTemplateChange;
@end

@implementation NTKBatteryCircularSmallComplicationView

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [templateCopy isCompatibleWithFamily:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateForTemplateChange
{
  complicationTemplate = [(NTKCircularComplicationView *)self complicationTemplate];
  v3 = [NTKRing alloc];
  [complicationTemplate level];
  v4 = [(NTKRing *)v3 initWithFillFraction:0 style:?];
  [(NTKCircularSmallRingComplicationView *)self updateRingWithRingDescription:v4];
  if ([complicationTemplate charging])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [complicationTemplate level];
  *&v6 = v6;
  v7 = [NTKBatteryUtilities colorForLevel:v5 andState:v6];
  [(NTKCircularSmallRingComplicationView *)self updateRingWithOverrideColor:v7];
  textProvider = [complicationTemplate textProvider];
  [(NTKCircularSmallRingTextComplicationView *)self _updateLabelWithTextProvider:textProvider];
}

@end