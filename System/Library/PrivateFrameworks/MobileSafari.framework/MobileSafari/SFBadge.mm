@interface SFBadge
- (CGSize)intrinsicContentSize;
- (SFBadge)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation SFBadge

- (SFBadge)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = SFBadge;
  v3 = [(SFBadge *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    tintColor = [(SFBadge *)v3 tintColor];
    [(SFBadge *)v4 setBackgroundColor:tintColor];

    v6 = *MEMORY[0x1E69796E0];
    layer = [(SFBadge *)v4 layer];
    [layer setCornerCurve:v6];

    v8 = v4;
  }

  return v4;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = SFBadge;
  [(SFBadge *)&v4 tintColorDidChange];
  tintColor = [(SFBadge *)self tintColor];
  [(SFBadge *)self setBackgroundColor:tintColor];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = SFBadge;
  [(SFBadge *)&v10 layoutSubviews];
  [(SFBadge *)self bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  v7 = CGRectGetWidth(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v8 = fmin(v7, CGRectGetHeight(v12)) * 0.5;
  layer = [(SFBadge *)self layer];
  [layer setCornerRadius:v8];
}

- (CGSize)intrinsicContentSize
{
  v2 = 6.0;
  v3 = 6.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end