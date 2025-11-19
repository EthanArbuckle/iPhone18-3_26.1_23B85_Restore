@interface SFBadgeMaskView
- (CGRect)badgeRect;
- (SFBadgeMaskView)initWithFrame:(CGRect)a3;
- (void)_updateShape;
- (void)layoutSubviews;
- (void)setBadgeRect:(CGRect)a3;
@end

@implementation SFBadgeMaskView

- (SFBadgeMaskView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = SFBadgeMaskView;
  v3 = [(SFBadgeMaskView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] blackColor];
    v5 = [v4 CGColor];
    v6 = [(SFBadgeMaskView *)v3 shapeLayer];
    [v6 setFillColor:v5];

    v7 = v3;
  }

  return v3;
}

- (void)layoutSubviews
{
  v3 = [(SFBadgeMaskView *)self shapeLayer];
  BoundingBox = CGPathGetBoundingBox([v3 path]);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  [(SFBadgeMaskView *)self bounds];
  v16.origin.x = v8;
  v16.origin.y = v9;
  v16.size.width = v10;
  v16.size.height = v11;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v12 = CGRectEqualToRect(v15, v16);

  if (!v12)
  {

    [(SFBadgeMaskView *)self _updateShape];
  }
}

- (void)setBadgeRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_badgeRect = &self->_badgeRect;
  if (!CGRectEqualToRect(a3, self->_badgeRect))
  {
    p_badgeRect->origin.x = x;
    p_badgeRect->origin.y = y;
    p_badgeRect->size.width = width;
    p_badgeRect->size.height = height;

    [(SFBadgeMaskView *)self _updateShape];
  }
}

- (void)_updateShape
{
  v3 = MEMORY[0x1E69DC728];
  [(SFBadgeMaskView *)self bounds];
  v10 = [v3 bezierPathWithRect:?];
  v4 = MEMORY[0x1E69DC728];
  v12 = CGRectInset(self->_badgeRect, -2.0, -2.0);
  v5 = [v4 bezierPathWithOvalInRect:{v12.origin.x, v12.origin.y, v12.size.width, v12.size.height}];
  v6 = [v5 bezierPathByReversingPath];
  [v10 appendPath:v6];

  v7 = v10;
  v8 = [v10 CGPath];
  v9 = [(SFBadgeMaskView *)self shapeLayer];
  [v9 setPath:v8];
}

- (CGRect)badgeRect
{
  x = self->_badgeRect.origin.x;
  y = self->_badgeRect.origin.y;
  width = self->_badgeRect.size.width;
  height = self->_badgeRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end