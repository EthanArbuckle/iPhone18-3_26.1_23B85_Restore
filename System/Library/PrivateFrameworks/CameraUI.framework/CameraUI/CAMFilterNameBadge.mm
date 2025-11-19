@interface CAMFilterNameBadge
- (CAMFilterNameBadge)initWithFrame:(CGRect)a3;
- (void)_updateText;
- (void)setFilterType:(int64_t)a3;
@end

@implementation CAMFilterNameBadge

- (CAMFilterNameBadge)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CAMFilterNameBadge;
  v3 = [(CEKBadgeTextView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] whiteColor];
    [(CEKBadgeView *)v3 _setFillColor:v4];

    [(CAMFilterNameBadge *)v3 _updateText];
    v5 = v3;
  }

  return v3;
}

- (void)setFilterType:(int64_t)a3
{
  if (self->_filterType != a3)
  {
    self->_filterType = a3;
    [(CAMFilterNameBadge *)self _updateText];
  }
}

- (void)_updateText
{
  v4 = [CAMEffectFilterManager displayNameForType:self->_filterType];
  v3 = [v4 cam_uppercaseStringWithPreferredLocale];
  [(CEKBadgeTextView *)self _setText:v3];
}

@end