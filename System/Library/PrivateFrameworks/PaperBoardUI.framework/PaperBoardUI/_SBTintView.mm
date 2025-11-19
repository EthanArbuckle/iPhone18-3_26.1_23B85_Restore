@interface _SBTintView
- (_SBTintView)initWithFrame:(CGRect)a3;
@end

@implementation _SBTintView

- (_SBTintView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _SBTintView;
  v3 = [(_SBTintView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_SBTintView *)v3 setOpaque:0];
  }

  return v4;
}

@end