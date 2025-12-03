@interface SFBadgeMaskView
- (CGRect)badgeRect;
- (SFBadgeMaskView)initWithFrame:(CGRect)frame;
- (void)_updateShape;
- (void)layoutSubviews;
- (void)setBadgeRect:(CGRect)rect;
@end

@implementation SFBadgeMaskView

- (SFBadgeMaskView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = SFBadgeMaskView;
  v3 = [(SFBadgeMaskView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    cGColor = [blackColor CGColor];
    shapeLayer = [(SFBadgeMaskView *)v3 shapeLayer];
    [shapeLayer setFillColor:cGColor];

    v7 = v3;
  }

  return v3;
}

- (void)layoutSubviews
{
  shapeLayer = [(SFBadgeMaskView *)self shapeLayer];
  BoundingBox = CGPathGetBoundingBox([shapeLayer path]);
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

- (void)setBadgeRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_badgeRect = &self->_badgeRect;
  if (!CGRectEqualToRect(rect, self->_badgeRect))
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
  bezierPathByReversingPath = [v5 bezierPathByReversingPath];
  [v10 appendPath:bezierPathByReversingPath];

  v7 = v10;
  cGPath = [v10 CGPath];
  shapeLayer = [(SFBadgeMaskView *)self shapeLayer];
  [shapeLayer setPath:cGPath];
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