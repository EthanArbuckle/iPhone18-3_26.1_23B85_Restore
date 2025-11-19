@interface SFBadge
- (CGSize)intrinsicContentSize;
- (SFBadge)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation SFBadge

- (SFBadge)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = SFBadge;
  v3 = [(SFBadge *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SFBadge *)v3 tintColor];
    [(SFBadge *)v4 setBackgroundColor:v5];

    v6 = *MEMORY[0x1E69796E0];
    v7 = [(SFBadge *)v4 layer];
    [v7 setCornerCurve:v6];

    v8 = v4;
  }

  return v4;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = SFBadge;
  [(SFBadge *)&v4 tintColorDidChange];
  v3 = [(SFBadge *)self tintColor];
  [(SFBadge *)self setBackgroundColor:v3];
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
  v9 = [(SFBadge *)self layer];
  [v9 setCornerRadius:v8];
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