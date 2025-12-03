@interface CAMDepthEffectSuggestionButton
- (CAMDepthEffectSuggestionButton)initWithFrame:(CGRect)frame;
- (double)activeTintAlphaForCurrentState;
- (void)setMode:(int64_t)mode animated:(BOOL)animated;
@end

@implementation CAMDepthEffectSuggestionButton

- (CAMDepthEffectSuggestionButton)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CAMDepthEffectSuggestionButton;
  v3 = [(CAMCircleButton *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMDepthEffectSuggestionButton *)v3 setAccessibilityIdentifier:@"DepthEffectSuggestion"];
    v5 = v4;
  }

  return v4;
}

- (double)activeTintAlphaForCurrentState
{
  mode = [(CAMDepthEffectSuggestionButton *)self mode];
  result = 1.0;
  if ((mode & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return 0.5;
  }

  return result;
}

- (void)setMode:(int64_t)mode animated:(BOOL)animated
{
  if (self->_mode != mode)
  {
    animatedCopy = animated;
    self->_mode = mode;
    [(CAMCircleButton *)self updateImage];
    [(CAMCircleButton *)self updateTintColors];

    [(CAMCircleButton *)self updateSlashAnimated:animatedCopy];
  }
}

@end