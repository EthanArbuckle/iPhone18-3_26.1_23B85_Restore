@interface CAMSemanticStyleMaskedBadge
- (CAMSemanticStyleMaskedBadge)initWithFrame:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)_handleBadgeUpdateLockoutTimerFired:(id)a3;
- (void)_requestTextUpdateDelayIfNeeded:(BOOL)a3;
- (void)layoutSubviews;
- (void)setBadgeLeftInset:(double)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setSemanticStyle:(id)a3 delayIfNeeded:(BOOL)a4;
@end

@implementation CAMSemanticStyleMaskedBadge

- (CAMSemanticStyleMaskedBadge)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = CAMSemanticStyleMaskedBadge;
  v3 = [(CAMSemanticStyleMaskedBadge *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMSemanticStyleMaskedBadge *)v3 setClipsToBounds:1];
    [(CAMSemanticStyleMaskedBadge *)v4 setUserInteractionEnabled:0];
    v5 = +[CAMSemanticStyle standardStyle];
    semanticStyle = v4->_semanticStyle;
    v4->_semanticStyle = v5;

    v7 = objc_alloc_init(MEMORY[0x1E6993830]);
    badgeView = v4->_badgeView;
    v4->_badgeView = v7;

    [(CAMSemanticStyleMaskedBadge *)v4 addSubview:v4->_badgeView];
    [(CAMSemanticStyleMaskedBadge *)v4 _requestTextUpdateDelayIfNeeded:0];
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  v2 = [(CAMSemanticStyleMaskedBadge *)self badgeView];
  [v2 intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(CAMSemanticStyleMaskedBadge *)self badgeView];
  [v5 sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v3 = [(CAMSemanticStyleMaskedBadge *)self badgeView];
  [v3 intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  v8 = [(CAMSemanticStyleMaskedBadge *)self orientation];
  if ((v8 - 3) >= 2)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if ((v8 - 3) < 2)
  {
    v5 = v7;
  }

  [(CAMSemanticStyleMaskedBadge *)self badgeLeftInset];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = [(CAMSemanticStyleMaskedBadge *)self badgeView:CAMViewGeometryForOrientedFrame([(CAMSemanticStyleMaskedBadge *)self orientation]];
  v12[2] = v15;
  v12[3] = v16;
  v12[4] = v17;
  v12[5] = v18;
  v12[0] = v13;
  v12[1] = v14;
  CAMApplyAnimationSensitiveGeometryToView(v12, v11);
}

- (void)setSemanticStyle:(id)a3 delayIfNeeded:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (([v7 isEqual:self->_semanticStyle] & 1) == 0)
  {
    objc_storeStrong(&self->_semanticStyle, a3);
    [(CAMSemanticStyleMaskedBadge *)self _requestTextUpdateDelayIfNeeded:v4];
  }
}

- (void)setBadgeLeftInset:(double)a3
{
  if (self->_badgeLeftInset != a3)
  {
    self->_badgeLeftInset = a3;
    [(CAMSemanticStyleMaskedBadge *)self setNeedsLayout];
  }
}

- (void)setOrientation:(int64_t)a3
{
  if (self->_orientation != a3)
  {
    self->_orientation = a3;
    [(CAMSemanticStyleMaskedBadge *)self setNeedsLayout];
  }
}

- (void)_requestTextUpdateDelayIfNeeded:(BOOL)a3
{
  v14 = [(CAMSemanticStyleMaskedBadge *)self semanticStyle];
  v5 = [v14 displayName];
  v6 = [v5 cam_uppercaseStringWithPreferredLocale];

  v7 = [(CAMSemanticStyleMaskedBadge *)self _cachedText];
  if (([v6 isEqualToString:v7] & 1) == 0)
  {
    [(CAMSemanticStyleMaskedBadge *)self set_cachedText:v6];
    v8 = [(CAMSemanticStyleMaskedBadge *)self _badgeUpdateLockoutTimer];

    if (!v8 || !a3)
    {
      v9 = [(CAMSemanticStyleMaskedBadge *)self badgeView];
      [v9 _setText:v6];

      v10 = [(CAMSemanticStyleMaskedBadge *)self _badgeUpdateLockoutTimer];
      [v10 invalidate];

      v11 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__handleBadgeUpdateLockoutTimerFired_ selector:0 userInfo:0 repeats:0.3];
      [(CAMSemanticStyleMaskedBadge *)self set_badgeUpdateLockoutTimer:v11];

      v12 = [MEMORY[0x1E695DFD0] currentRunLoop];
      v13 = [(CAMSemanticStyleMaskedBadge *)self _badgeUpdateLockoutTimer];
      [v12 addTimer:v13 forMode:*MEMORY[0x1E695DA28]];
    }

    [(CAMSemanticStyleMaskedBadge *)self setNeedsLayout];
  }
}

- (void)_handleBadgeUpdateLockoutTimerFired:(id)a3
{
  v4 = [(CAMSemanticStyleMaskedBadge *)self _badgeUpdateLockoutTimer];
  [v4 invalidate];

  [(CAMSemanticStyleMaskedBadge *)self set_badgeUpdateLockoutTimer:0];
  v6 = [(CAMSemanticStyleMaskedBadge *)self _cachedText];
  v5 = [(CAMSemanticStyleMaskedBadge *)self badgeView];
  [v5 _setText:v6];
}

@end