@interface SFWebFormAccessoryViewWrapper
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SFWebFormAccessoryViewWrapper)initWithWebFormAccessoryView:(id)view bottomBarHeight:(double)height;
- (void)layoutSubviews;
- (void)setBottomBarHeight:(double)height;
@end

@implementation SFWebFormAccessoryViewWrapper

- (SFWebFormAccessoryViewWrapper)initWithWebFormAccessoryView:(id)view bottomBarHeight:(double)height
{
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = SFWebFormAccessoryViewWrapper;
  v8 = [(SFWebFormAccessoryViewWrapper *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_bottomBarHeight = height;
    objc_storeStrong(&v8->_webFormAccessoryView, view);
    [(SFWebFormAccessoryViewWrapper *)v9 addSubview:viewCopy];
    [(SFWebFormAccessoryViewWrapper *)v9 sizeToFit];
    v10 = v9;
  }

  return v9;
}

- (void)setBottomBarHeight:(double)height
{
  if (self->_bottomBarHeight != height)
  {
    self->_bottomBarHeight = height;
    [(SFWebFormAccessoryViewWrapper *)self sizeToFit];

    [(SFWebFormAccessoryViewWrapper *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  *&rect.origin.y = self;
  *&rect.size.width = SFWebFormAccessoryViewWrapper;
  [(CGFloat *)&rect.origin.y layoutSubviews];
  [(SFWebFormAccessoryViewWrapper *)self bounds];
  v4 = v3;
  rect.origin.x = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_webFormAccessoryView frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v22.origin.x = v4;
  v22.origin.y = v6;
  v22.size.width = v8;
  v22.size.height = v10;
  Height = CGRectGetHeight(v22);
  v23.origin.x = v12;
  v23.origin.y = v14;
  v23.size.width = v16;
  v23.size.height = v18;
  v20 = Height - CGRectGetHeight(v23);
  v24.origin.x = rect.origin.x;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  [(UIView *)self->_webFormAccessoryView setFrame:v12, v20, CGRectGetWidth(v24), v18];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  bottomBarHeight = self->_bottomBarHeight;
  [(UIView *)self->_webFormAccessoryView bounds:fits.width];
  v5 = bottomBarHeight + CGRectGetHeight(v8);
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(UIView *)self->_webFormAccessoryView frame];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

@end