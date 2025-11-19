@interface NTKUtilityBatteryComplicationView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (void)_updateForTemplateChange;
- (void)updateRingWithRingDescription:(id)a3 backgroundRingAlpha:(double)a4;
@end

@implementation NTKUtilityBatteryComplicationView

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 isCompatibleWithFamily:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateForTemplateChange
{
  v3 = [(NTKUtilityComplicationView *)self complicationTemplate];
  v4 = [v3 tintColor];
  [(NTKUtilityComplicationView *)self setOverrideColor:v4];

  v9 = [(NTKUtilityComplicationView *)self complicationTemplate];
  v5 = [NTKRing alloc];
  [v9 level];
  v6 = [(NTKRing *)v5 initWithFillFraction:0 style:?];
  [(NTKUtilitySmallRingComplicationView *)self updateRingWithRingDescription:v6];
  v7 = [(NTKUtilitySmallRingTextComplicationView *)self label];
  v8 = [v9 textProvider];
  [v7 setTextProvider:v8];
}

- (void)updateRingWithRingDescription:(id)a3 backgroundRingAlpha:(double)a4
{
  v12.receiver = self;
  v12.super_class = NTKUtilityBatteryComplicationView;
  [(NTKUtilitySmallRingComplicationView *)&v12 updateRingWithRingDescription:a3 backgroundRingAlpha:a4];
  v5 = [(NTKUtilityComplicationView *)self complicationTemplate];
  if ([v5 charging])
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [v5 level];
  *&v7 = v7;
  v8 = [NTKBatteryUtilities colorForLevel:v6 andState:v7];
  v9 = [(NTKUtilitySmallRingComplicationView *)self fillFractionRing];
  v10 = v9;
  if (v8)
  {
    [v9 setColor:v8];
  }

  else
  {
    v11 = [(NTKUtilityComplicationView *)self _computedForegroundColor];
    [v10 setColor:v11];
  }
}

@end