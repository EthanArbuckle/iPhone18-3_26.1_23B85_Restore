@interface _SBMaskingContainerView
- (_SBMaskingContainerView)initWithFrame:(CGRect)frame;
@end

@implementation _SBMaskingContainerView

- (_SBMaskingContainerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _SBMaskingContainerView;
  v3 = [(_SBMaskingContainerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_SBMaskingContainerView *)v3 setOpaque:0];
  }

  return v4;
}

@end