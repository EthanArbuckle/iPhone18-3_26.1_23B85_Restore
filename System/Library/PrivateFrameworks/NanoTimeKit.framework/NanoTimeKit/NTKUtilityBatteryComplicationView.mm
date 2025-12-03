@interface NTKUtilityBatteryComplicationView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (void)_updateForTemplateChange;
- (void)updateRingWithRingDescription:(id)description backgroundRingAlpha:(double)alpha;
@end

@implementation NTKUtilityBatteryComplicationView

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [templateCopy isCompatibleWithFamily:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateForTemplateChange
{
  complicationTemplate = [(NTKUtilityComplicationView *)self complicationTemplate];
  tintColor = [complicationTemplate tintColor];
  [(NTKUtilityComplicationView *)self setOverrideColor:tintColor];

  complicationTemplate2 = [(NTKUtilityComplicationView *)self complicationTemplate];
  v5 = [NTKRing alloc];
  [complicationTemplate2 level];
  v6 = [(NTKRing *)v5 initWithFillFraction:0 style:?];
  [(NTKUtilitySmallRingComplicationView *)self updateRingWithRingDescription:v6];
  label = [(NTKUtilitySmallRingTextComplicationView *)self label];
  textProvider = [complicationTemplate2 textProvider];
  [label setTextProvider:textProvider];
}

- (void)updateRingWithRingDescription:(id)description backgroundRingAlpha:(double)alpha
{
  v12.receiver = self;
  v12.super_class = NTKUtilityBatteryComplicationView;
  [(NTKUtilitySmallRingComplicationView *)&v12 updateRingWithRingDescription:description backgroundRingAlpha:alpha];
  complicationTemplate = [(NTKUtilityComplicationView *)self complicationTemplate];
  if ([complicationTemplate charging])
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [complicationTemplate level];
  *&v7 = v7;
  v8 = [NTKBatteryUtilities colorForLevel:v6 andState:v7];
  fillFractionRing = [(NTKUtilitySmallRingComplicationView *)self fillFractionRing];
  v10 = fillFractionRing;
  if (v8)
  {
    [fillFractionRing setColor:v8];
  }

  else
  {
    _computedForegroundColor = [(NTKUtilityComplicationView *)self _computedForegroundColor];
    [v10 setColor:_computedForegroundColor];
  }
}

@end