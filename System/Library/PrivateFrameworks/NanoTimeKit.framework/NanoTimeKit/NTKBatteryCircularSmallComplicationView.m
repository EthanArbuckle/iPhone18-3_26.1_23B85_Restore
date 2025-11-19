@interface NTKBatteryCircularSmallComplicationView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (void)_updateForTemplateChange;
@end

@implementation NTKBatteryCircularSmallComplicationView

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 isCompatibleWithFamily:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateForTemplateChange
{
  v9 = [(NTKCircularComplicationView *)self complicationTemplate];
  v3 = [NTKRing alloc];
  [v9 level];
  v4 = [(NTKRing *)v3 initWithFillFraction:0 style:?];
  [(NTKCircularSmallRingComplicationView *)self updateRingWithRingDescription:v4];
  if ([v9 charging])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [v9 level];
  *&v6 = v6;
  v7 = [NTKBatteryUtilities colorForLevel:v5 andState:v6];
  [(NTKCircularSmallRingComplicationView *)self updateRingWithOverrideColor:v7];
  v8 = [v9 textProvider];
  [(NTKCircularSmallRingTextComplicationView *)self _updateLabelWithTextProvider:v8];
}

@end