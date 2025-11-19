@interface CAMDepthEffectSuggestionButton
- (CAMDepthEffectSuggestionButton)initWithFrame:(CGRect)a3;
- (double)activeTintAlphaForCurrentState;
- (void)setMode:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation CAMDepthEffectSuggestionButton

- (CAMDepthEffectSuggestionButton)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CAMDepthEffectSuggestionButton;
  v3 = [(CAMCircleButton *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v2 = [(CAMDepthEffectSuggestionButton *)self mode];
  result = 1.0;
  if ((v2 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return 0.5;
  }

  return result;
}

- (void)setMode:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_mode != a3)
  {
    v5 = a4;
    self->_mode = a3;
    [(CAMCircleButton *)self updateImage];
    [(CAMCircleButton *)self updateTintColors];

    [(CAMCircleButton *)self updateSlashAnimated:v5];
  }
}

@end