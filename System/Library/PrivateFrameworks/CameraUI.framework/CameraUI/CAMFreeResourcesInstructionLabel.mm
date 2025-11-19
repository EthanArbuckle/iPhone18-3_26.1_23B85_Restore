@interface CAMFreeResourcesInstructionLabel
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CAMFreeResourcesInstructionLabel)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)_textInsets;
- (double)_backgroundAlpha;
- (id)_symbolSuffixName;
- (id)_textColor;
- (void)_updateText;
- (void)setFreeResourceInstructionState:(unint64_t)a3;
@end

@implementation CAMFreeResourcesInstructionLabel

- (CAMFreeResourcesInstructionLabel)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CAMFreeResourcesInstructionLabel;
  v3 = [(CAMInstructionLabel *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMFreeResourcesInstructionLabel *)v3 _updateText];
  }

  return v4;
}

- (void)setFreeResourceInstructionState:(unint64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_freeResourceInstructionState != a3)
  {
    self->_freeResourceInstructionState = a3;
    [(CAMFreeResourcesInstructionLabel *)self _updateText];
    v5 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (a3 > 4)
      {
        v6 = &stru_1F1660A30;
      }

      else
      {
        v6 = off_1E76F84F0[a3];
      }

      v7 = [(CAMInstructionLabel *)self text];
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v7;
      _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "FreeResourcesInstructionState: %{public}@ (%{public}@)", &v8, 0x16u);
    }

    [(CAMFreeResourcesInstructionLabel *)self setNeedsLayout];
    [(CAMFreeResourcesInstructionLabel *)self layoutIfNeeded];
  }
}

- (void)_updateText
{
  v3 = [(CAMFreeResourcesInstructionLabel *)self freeResourceInstructionState];
  if (v3 > 4)
  {
    v4 = &stru_1F1660A30;
  }

  else
  {
    v4 = CAMLocalizedFrameworkString(off_1E76F8518[v3], 0);
  }

  v5 = v4;
  [(CAMInstructionLabel *)self setText:v4];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
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
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  v4 = [(CAMFreeResourcesInstructionLabel *)self freeResourceInstructionState];
  if (v4 == 3 || !v4)
  {
    v5 = [MEMORY[0x1E69DC888] systemYellowColor];

    v3 = v5;
  }

  return v3;
}

- (double)_backgroundAlpha
{
  v2 = [(CAMFreeResourcesInstructionLabel *)self freeResourceInstructionState];
  result = 0.5;
  if (v2 == 2)
  {
    return 1.0;
  }

  return result;
}

- (id)_symbolSuffixName
{
  v2 = [(CAMFreeResourcesInstructionLabel *)self freeResourceInstructionState];
  if (v2 > 3)
  {
    return &stru_1F1660A30;
  }

  else
  {
    return off_1E76F8540[v2];
  }
}

@end