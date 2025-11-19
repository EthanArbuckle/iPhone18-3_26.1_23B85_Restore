@interface _SBMaskingContainerView
- (_SBMaskingContainerView)initWithFrame:(CGRect)a3;
@end

@implementation _SBMaskingContainerView

- (_SBMaskingContainerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _SBMaskingContainerView;
  v3 = [(_SBMaskingContainerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_SBMaskingContainerView *)v3 setOpaque:0];
  }

  return v4;
}

@end