@interface _SBTintView
- (_SBTintView)initWithFrame:(CGRect)frame;
@end

@implementation _SBTintView

- (_SBTintView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _SBTintView;
  v3 = [(_SBTintView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_SBTintView *)v3 setOpaque:0];
  }

  return v4;
}

@end