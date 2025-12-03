@interface CAMFilterNameBadge
- (CAMFilterNameBadge)initWithFrame:(CGRect)frame;
- (void)_updateText;
- (void)setFilterType:(int64_t)type;
@end

@implementation CAMFilterNameBadge

- (CAMFilterNameBadge)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CAMFilterNameBadge;
  v3 = [(CEKBadgeTextView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(CEKBadgeView *)v3 _setFillColor:whiteColor];

    [(CAMFilterNameBadge *)v3 _updateText];
    v5 = v3;
  }

  return v3;
}

- (void)setFilterType:(int64_t)type
{
  if (self->_filterType != type)
  {
    self->_filterType = type;
    [(CAMFilterNameBadge *)self _updateText];
  }
}

- (void)_updateText
{
  v4 = [CAMEffectFilterManager displayNameForType:self->_filterType];
  cam_uppercaseStringWithPreferredLocale = [v4 cam_uppercaseStringWithPreferredLocale];
  [(CEKBadgeTextView *)self _setText:cam_uppercaseStringWithPreferredLocale];
}

@end