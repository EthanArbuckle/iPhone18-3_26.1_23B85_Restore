@interface NTKEmptyCircularSmallComplicationView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NTKEmptyCircularSmallComplicationView)initWithFrame:(CGRect)a3;
@end

@implementation NTKEmptyCircularSmallComplicationView

- (NTKEmptyCircularSmallComplicationView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = NTKEmptyCircularSmallComplicationView;
  v3 = [(NTKCircularComplicationView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(NTKEmptyCircularSmallComplicationView *)v3 setHidden:1];
    [(NTKCircularComplicationView *)v4 setWantsPlatter:0];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(NTKCircularComplicationView *)self _layoutConstants:0];
  v3 = 0.0;
  v4 = 0.0;
  result.height = v4;
  result.width = v3;
  return result;
}

@end