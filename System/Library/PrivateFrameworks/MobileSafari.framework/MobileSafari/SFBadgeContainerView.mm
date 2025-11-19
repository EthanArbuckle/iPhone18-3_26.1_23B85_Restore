@interface SFBadgeContainerView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
- (void)pulse;
- (void)setBadgeTintColor:(id)a3;
- (void)setContentView:(id)a3;
- (void)setShowsBadge:(BOOL)a3;
@end

@implementation SFBadgeContainerView

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = SFBadgeContainerView;
  [(SFBadgeContainerView *)&v31 layoutSubviews];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  contentView = self->_contentView;
  if (isKindOfClass)
  {
    v5 = [(UIView *)contentView imageView];
  }

  else
  {
    v5 = contentView;
  }

  v6 = v5;
  [(UIView *)v5 bounds];
  [(UIView *)v6 alignmentRectForFrame:?];
  [(SFBadgeContainerView *)self convertRect:v6 fromView:?];
  v29 = v8;
  v30 = v7;
  v27 = v10;
  v28 = v9;
  [(SFBadgeContainerView *)self bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (self->_positionsBadgeRelativeToLayoutMargins)
  {
    [(SFBadgeContainerView *)self layoutMargins];
    v12 = v12 + v19;
    v14 = v14 + v20;
    v16 = v16 - (v19 + v21);
    v18 = v18 - (v20 + v22);
  }

  rect = v16;
  v32.origin.x = v12;
  v32.origin.y = v14;
  v32.size.width = v16;
  v32.size.height = v18;
  v23 = CGRectGetMaxX(v32) + -6.0 + -1.0;
  v33.origin.x = v30;
  v33.origin.y = v29;
  v33.size.width = v28;
  v33.size.height = v27;
  v26 = fmax(v23, CGRectGetMaxX(v33) + -6.0);
  v34.origin.x = v12;
  v34.origin.y = v14;
  v34.size.width = rect;
  v34.size.height = v18;
  v24 = CGRectGetMinY(v34) + 1.0;
  v35.origin.x = v30;
  v35.origin.y = v29;
  v35.size.width = v28;
  v35.size.height = v27;
  [(SFBadge *)self->_badge setFrame:v26, fmax(v24, CGRectGetMinY(v35)), 6.0, 6.0];
  [(UIView *)self->_contentView bounds];
  [(SFBadgeMaskView *)self->_badgeMask setFrame:?];
  [(SFBadge *)self->_badge frame];
  [(SFBadgeMaskView *)self->_badgeMask setBadgeRect:?];
}

- (void)setShowsBadge:(BOOL)a3
{
  if (self->_showsBadge != a3)
  {
    self->_showsBadge = a3;
    if (a3)
    {
      v4 = objc_alloc_init(SFBadge);
      badge = self->_badge;
      self->_badge = v4;

      [(SFBadge *)self->_badge setUserInteractionEnabled:0];
      [(SFBadge *)self->_badge setTintColor:self->_badgeTintColor];
      [(SFBadgeContainerView *)self addSubview:self->_badge];
      v6 = [SFBadgeMaskView alloc];
      [(UIView *)self->_contentView bounds];
      v7 = [(SFBadgeMaskView *)v6 initWithFrame:?];
      badgeMask = self->_badgeMask;
      self->_badgeMask = v7;

      [(SFBadgeMaskView *)self->_badgeMask setAutoresizingMask:18];
      [(UIView *)self->_contentView bounds];
      [(SFBadgeMaskView *)self->_badgeMask setFrame:?];
      v9 = self->_badgeMask;
      contentView = self->_contentView;

      [(UIView *)contentView setMaskView:v9];
    }

    else
    {
      [(SFBadge *)self->_badge removeFromSuperview];
      v11 = self->_badge;
      self->_badge = 0;

      [(UIView *)self->_contentView setMaskView:0];
      v12 = self->_badgeMask;
      self->_badgeMask = 0;
    }
  }
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  v8 = v5;
  if (contentView != v5)
  {
    [(UIView *)contentView removeFromSuperview];
    [(UIView *)self->_contentView setMaskView:0];
    objc_storeStrong(&self->_contentView, a3);
    v7 = self->_contentView;
    if (v7)
    {
      [(UIView *)v7 setTranslatesAutoresizingMaskIntoConstraints:1];
      [(UIView *)self->_contentView setAutoresizingMask:18];
      [(SFBadgeContainerView *)self bounds];
      [(UIView *)self->_contentView setFrame:?];
      [(UIView *)self->_contentView bounds];
      [(SFBadgeMaskView *)self->_badgeMask setFrame:?];
      [(UIView *)self->_contentView setMaskView:self->_badgeMask];
      [(SFBadgeContainerView *)self insertSubview:self->_contentView atIndex:0];
    }
  }
}

- (void)setBadgeTintColor:(id)a3
{
  objc_storeStrong(&self->_badgeTintColor, a3);
  v5 = a3;
  [(SFBadge *)self->_badge setTintColor:v5];
}

- (void)pulse
{
  v3 = self->_contentView;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(UIView *)v3 progressStyle]== 2)
  {
    [(UIView *)v3 setNeedsPulseOnView:self];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  contentView = self->_contentView;
  v8 = a4;
  [(UIView *)contentView convertPoint:v6 fromView:x, y];
  LOBYTE(v6) = [(UIView *)contentView pointInside:v8 withEvent:?];

  return v6;
}

- (CGSize)intrinsicContentSize
{
  [(UIView *)self->_contentView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

@end