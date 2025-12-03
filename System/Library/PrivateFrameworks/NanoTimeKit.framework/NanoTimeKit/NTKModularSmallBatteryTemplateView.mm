@interface NTKModularSmallBatteryTemplateView
+ (BOOL)handlesComplicationTemplate:(id)template;
- (NTKModularSmallBatteryTemplateView)initWithFrame:(CGRect)frame;
- (id)forcedRingColor;
- (id)preferredRingColor;
- (void)_refreshRingImage;
- (void)_update;
- (void)applyColorScheme:(id)scheme;
@end

@implementation NTKModularSmallBatteryTemplateView

+ (BOOL)handlesComplicationTemplate:(id)template
{
  templateCopy = template;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([templateCopy isCompatibleWithFamily:0])
    {
      v4 = 1;
    }

    else
    {
      v4 = [templateCopy isCompatibleWithFamily:7];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NTKModularSmallBatteryTemplateView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = NTKModularSmallBatteryTemplateView;
  v3 = [(NTKModularSmallRingTemplateView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    label = [(NTKModularSmallRingTemplateView *)v3 label];
    [label setHidden:0];
  }

  return v4;
}

- (void)_update
{
  complicationTemplate = [(NTKModularTemplateView *)self complicationTemplate];
  label = [(NTKModularSmallRingTemplateView *)self label];
  textProvider = [complicationTemplate textProvider];
  [label setTextProvider:textProvider];

  v5 = [NTKRing alloc];
  [complicationTemplate level];
  v6 = [(NTKRing *)v5 initWithFillFraction:0 style:?];
  [(NTKModularSmallRingTemplateView *)self _updateRingWithRingDescription:v6];
  forcedRingColor = [(NTKModularSmallBatteryTemplateView *)self forcedRingColor];
  preferredRingColor = [(NTKModularSmallBatteryTemplateView *)self preferredRingColor];
  colorScheme = [(NTKModuleView *)self colorScheme];
  stateRing = [(NTKModularSmallRingTemplateView *)self stateRing];
  v11 = stateRing;
  if (forcedRingColor)
  {
    v12 = forcedRingColor;
LABEL_6:
    [stateRing setColor:v12];
    goto LABEL_7;
  }

  if ([colorScheme containsOverrideFaceColor] && preferredRingColor)
  {
    stateRing = v11;
    v12 = preferredRingColor;
    goto LABEL_6;
  }

  foregroundColor = [colorScheme foregroundColor];
  [v11 setColor:foregroundColor];

LABEL_7:
  contentView = [(NTKModuleView *)self contentView];
  [contentView setNeedsLayout];
}

- (void)_refreshRingImage
{
  complicationTemplate = [(NTKModularTemplateView *)self complicationTemplate];
  v3 = [NTKRing alloc];
  [complicationTemplate level];
  v4 = [(NTKRing *)v3 initWithFillFraction:0 style:?];
  [(NTKModularSmallRingTemplateView *)self _refreshRingImageWithRing:v4];
}

- (void)applyColorScheme:(id)scheme
{
  schemeCopy = scheme;
  v9.receiver = self;
  v9.super_class = NTKModularSmallBatteryTemplateView;
  [(NTKModuleView *)&v9 applyColorScheme:schemeCopy];
  stateRing = [(NTKModularSmallRingTemplateView *)self stateRing];
  forcedRingColor = [(NTKModularSmallBatteryTemplateView *)self forcedRingColor];
  preferredRingColor = [(NTKModularSmallBatteryTemplateView *)self preferredRingColor];
  v8 = forcedRingColor;
  if (forcedRingColor || [schemeCopy containsOverrideFaceColor] && (v8 = preferredRingColor) != 0)
  {
    [stateRing setColor:v8];
  }
}

- (id)forcedRingColor
{
  complicationTemplate = [(NTKModularTemplateView *)self complicationTemplate];
  if ([complicationTemplate charging])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [complicationTemplate level];
  *&v4 = v4;
  v5 = [NTKBatteryUtilities colorForLevel:v3 andState:v4];

  return v5;
}

- (id)preferredRingColor
{
  complicationTemplate = [(NTKModularTemplateView *)self complicationTemplate];
  [complicationTemplate level];
  *&v3 = v3;
  v4 = [NTKBatteryUtilities modularRingColorForLevel:v3];

  return v4;
}

@end