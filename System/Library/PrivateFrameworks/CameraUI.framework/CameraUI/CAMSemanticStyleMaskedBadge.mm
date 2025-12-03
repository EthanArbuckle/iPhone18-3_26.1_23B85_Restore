@interface CAMSemanticStyleMaskedBadge
- (CAMSemanticStyleMaskedBadge)initWithFrame:(CGRect)frame;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)_handleBadgeUpdateLockoutTimerFired:(id)fired;
- (void)_requestTextUpdateDelayIfNeeded:(BOOL)needed;
- (void)layoutSubviews;
- (void)setBadgeLeftInset:(double)inset;
- (void)setOrientation:(int64_t)orientation;
- (void)setSemanticStyle:(id)style delayIfNeeded:(BOOL)needed;
@end

@implementation CAMSemanticStyleMaskedBadge

- (CAMSemanticStyleMaskedBadge)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = CAMSemanticStyleMaskedBadge;
  v3 = [(CAMSemanticStyleMaskedBadge *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  badgeView = [(CAMSemanticStyleMaskedBadge *)self badgeView];
  [badgeView intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  badgeView = [(CAMSemanticStyleMaskedBadge *)self badgeView];
  [badgeView sizeThatFits:{width, height}];
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
  badgeView = [(CAMSemanticStyleMaskedBadge *)self badgeView];
  [badgeView intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  orientation = [(CAMSemanticStyleMaskedBadge *)self orientation];
  if ((orientation - 3) >= 2)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if ((orientation - 3) < 2)
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

- (void)setSemanticStyle:(id)style delayIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  styleCopy = style;
  if (([styleCopy isEqual:self->_semanticStyle] & 1) == 0)
  {
    objc_storeStrong(&self->_semanticStyle, style);
    [(CAMSemanticStyleMaskedBadge *)self _requestTextUpdateDelayIfNeeded:neededCopy];
  }
}

- (void)setBadgeLeftInset:(double)inset
{
  if (self->_badgeLeftInset != inset)
  {
    self->_badgeLeftInset = inset;
    [(CAMSemanticStyleMaskedBadge *)self setNeedsLayout];
  }
}

- (void)setOrientation:(int64_t)orientation
{
  if (self->_orientation != orientation)
  {
    self->_orientation = orientation;
    [(CAMSemanticStyleMaskedBadge *)self setNeedsLayout];
  }
}

- (void)_requestTextUpdateDelayIfNeeded:(BOOL)needed
{
  semanticStyle = [(CAMSemanticStyleMaskedBadge *)self semanticStyle];
  displayName = [semanticStyle displayName];
  cam_uppercaseStringWithPreferredLocale = [displayName cam_uppercaseStringWithPreferredLocale];

  _cachedText = [(CAMSemanticStyleMaskedBadge *)self _cachedText];
  if (([cam_uppercaseStringWithPreferredLocale isEqualToString:_cachedText] & 1) == 0)
  {
    [(CAMSemanticStyleMaskedBadge *)self set_cachedText:cam_uppercaseStringWithPreferredLocale];
    _badgeUpdateLockoutTimer = [(CAMSemanticStyleMaskedBadge *)self _badgeUpdateLockoutTimer];

    if (!_badgeUpdateLockoutTimer || !needed)
    {
      badgeView = [(CAMSemanticStyleMaskedBadge *)self badgeView];
      [badgeView _setText:cam_uppercaseStringWithPreferredLocale];

      _badgeUpdateLockoutTimer2 = [(CAMSemanticStyleMaskedBadge *)self _badgeUpdateLockoutTimer];
      [_badgeUpdateLockoutTimer2 invalidate];

      v11 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__handleBadgeUpdateLockoutTimerFired_ selector:0 userInfo:0 repeats:0.3];
      [(CAMSemanticStyleMaskedBadge *)self set_badgeUpdateLockoutTimer:v11];

      currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
      _badgeUpdateLockoutTimer3 = [(CAMSemanticStyleMaskedBadge *)self _badgeUpdateLockoutTimer];
      [currentRunLoop addTimer:_badgeUpdateLockoutTimer3 forMode:*MEMORY[0x1E695DA28]];
    }

    [(CAMSemanticStyleMaskedBadge *)self setNeedsLayout];
  }
}

- (void)_handleBadgeUpdateLockoutTimerFired:(id)fired
{
  _badgeUpdateLockoutTimer = [(CAMSemanticStyleMaskedBadge *)self _badgeUpdateLockoutTimer];
  [_badgeUpdateLockoutTimer invalidate];

  [(CAMSemanticStyleMaskedBadge *)self set_badgeUpdateLockoutTimer:0];
  _cachedText = [(CAMSemanticStyleMaskedBadge *)self _cachedText];
  badgeView = [(CAMSemanticStyleMaskedBadge *)self badgeView];
  [badgeView _setText:_cachedText];
}

@end