@interface NTKModularSmallBatteryTemplateView
+ (BOOL)handlesComplicationTemplate:(id)a3;
- (NTKModularSmallBatteryTemplateView)initWithFrame:(CGRect)a3;
- (id)forcedRingColor;
- (id)preferredRingColor;
- (void)_refreshRingImage;
- (void)_update;
- (void)applyColorScheme:(id)a3;
@end

@implementation NTKModularSmallBatteryTemplateView

+ (BOOL)handlesComplicationTemplate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v3 isCompatibleWithFamily:0])
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 isCompatibleWithFamily:7];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NTKModularSmallBatteryTemplateView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = NTKModularSmallBatteryTemplateView;
  v3 = [(NTKModularSmallRingTemplateView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(NTKModularSmallRingTemplateView *)v3 label];
    [v5 setHidden:0];
  }

  return v4;
}

- (void)_update
{
  v15 = [(NTKModularTemplateView *)self complicationTemplate];
  v3 = [(NTKModularSmallRingTemplateView *)self label];
  v4 = [v15 textProvider];
  [v3 setTextProvider:v4];

  v5 = [NTKRing alloc];
  [v15 level];
  v6 = [(NTKRing *)v5 initWithFillFraction:0 style:?];
  [(NTKModularSmallRingTemplateView *)self _updateRingWithRingDescription:v6];
  v7 = [(NTKModularSmallBatteryTemplateView *)self forcedRingColor];
  v8 = [(NTKModularSmallBatteryTemplateView *)self preferredRingColor];
  v9 = [(NTKModuleView *)self colorScheme];
  v10 = [(NTKModularSmallRingTemplateView *)self stateRing];
  v11 = v10;
  if (v7)
  {
    v12 = v7;
LABEL_6:
    [v10 setColor:v12];
    goto LABEL_7;
  }

  if ([v9 containsOverrideFaceColor] && v8)
  {
    v10 = v11;
    v12 = v8;
    goto LABEL_6;
  }

  v14 = [v9 foregroundColor];
  [v11 setColor:v14];

LABEL_7:
  v13 = [(NTKModuleView *)self contentView];
  [v13 setNeedsLayout];
}

- (void)_refreshRingImage
{
  v5 = [(NTKModularTemplateView *)self complicationTemplate];
  v3 = [NTKRing alloc];
  [v5 level];
  v4 = [(NTKRing *)v3 initWithFillFraction:0 style:?];
  [(NTKModularSmallRingTemplateView *)self _refreshRingImageWithRing:v4];
}

- (void)applyColorScheme:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NTKModularSmallBatteryTemplateView;
  [(NTKModuleView *)&v9 applyColorScheme:v4];
  v5 = [(NTKModularSmallRingTemplateView *)self stateRing];
  v6 = [(NTKModularSmallBatteryTemplateView *)self forcedRingColor];
  v7 = [(NTKModularSmallBatteryTemplateView *)self preferredRingColor];
  v8 = v6;
  if (v6 || [v4 containsOverrideFaceColor] && (v8 = v7) != 0)
  {
    [v5 setColor:v8];
  }
}

- (id)forcedRingColor
{
  v2 = [(NTKModularTemplateView *)self complicationTemplate];
  if ([v2 charging])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [v2 level];
  *&v4 = v4;
  v5 = [NTKBatteryUtilities colorForLevel:v3 andState:v4];

  return v5;
}

- (id)preferredRingColor
{
  v2 = [(NTKModularTemplateView *)self complicationTemplate];
  [v2 level];
  *&v3 = v3;
  v4 = [NTKBatteryUtilities modularRingColorForLevel:v3];

  return v4;
}

@end