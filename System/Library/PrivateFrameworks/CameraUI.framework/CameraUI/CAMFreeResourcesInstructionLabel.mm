@interface CAMFreeResourcesInstructionLabel
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CAMFreeResourcesInstructionLabel)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)_textInsets;
- (double)_backgroundAlpha;
- (id)_symbolSuffixName;
- (id)_textColor;
- (void)_updateText;
- (void)setFreeResourceInstructionState:(unint64_t)state;
@end

@implementation CAMFreeResourcesInstructionLabel

- (CAMFreeResourcesInstructionLabel)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CAMFreeResourcesInstructionLabel;
  v3 = [(CAMInstructionLabel *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMFreeResourcesInstructionLabel *)v3 _updateText];
  }

  return v4;
}

- (void)setFreeResourceInstructionState:(unint64_t)state
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_freeResourceInstructionState != state)
  {
    self->_freeResourceInstructionState = state;
    [(CAMFreeResourcesInstructionLabel *)self _updateText];
    v5 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (state > 4)
      {
        v6 = &stru_1F1660A30;
      }

      else
      {
        v6 = off_1E76F84F0[state];
      }

      text = [(CAMInstructionLabel *)self text];
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = text;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "FreeResourcesInstructionState: %{public}@ (%{public}@)", &v8, 0x16u);
    }

    [(CAMFreeResourcesInstructionLabel *)self setNeedsLayout];
    [(CAMFreeResourcesInstructionLabel *)self layoutIfNeeded];
  }
}

- (void)_updateText
{
  freeResourceInstructionState = [(CAMFreeResourcesInstructionLabel *)self freeResourceInstructionState];
  if (freeResourceInstructionState > 4)
  {
    v4 = &stru_1F1660A30;
  }

  else
  {
    v4 = CAMLocalizedFrameworkString(off_1E76F8518[freeResourceInstructionState], 0);
  }

  v5 = v4;
  [(CAMInstructionLabel *)self setText:v4];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(CAMFreeResourcesInstructionLabel *)self bounds];
  v11 = CGRectInset(v10, -11.0, -11.0);
  v6 = x;
  v7 = y;

  return CGRectContainsPoint(v11, *&v6);
}

- (UIEdgeInsets)_textInsets
{
  v2 = CAMPixelWidthForView(self);
  v3 = v2 * 2.0 + 2.0;
  v4 = 5.0;
  v5 = 5.0;
  v6 = v2 + 2.0;
  result.right = v5;
  result.bottom = v3;
  result.left = v4;
  result.top = v6;
  return result;
}

- (id)_textColor
{
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  freeResourceInstructionState = [(CAMFreeResourcesInstructionLabel *)self freeResourceInstructionState];
  if (freeResourceInstructionState == 3 || !freeResourceInstructionState)
  {
    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];

    whiteColor = systemYellowColor;
  }

  return whiteColor;
}

- (double)_backgroundAlpha
{
  freeResourceInstructionState = [(CAMFreeResourcesInstructionLabel *)self freeResourceInstructionState];
  result = 0.5;
  if (freeResourceInstructionState == 2)
  {
    return 1.0;
  }

  return result;
}

- (id)_symbolSuffixName
{
  freeResourceInstructionState = [(CAMFreeResourcesInstructionLabel *)self freeResourceInstructionState];
  if (freeResourceInstructionState > 3)
  {
    return &stru_1F1660A30;
  }

  else
  {
    return off_1E76F8540[freeResourceInstructionState];
  }
}

@end