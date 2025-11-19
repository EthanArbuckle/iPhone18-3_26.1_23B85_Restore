@interface CAMCleanLensesInstructionLabel
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CAMCleanLensesInstructionLabel)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)_textInsets;
- (void)_updateText;
- (void)labelWasTappedWithTarget:(id)a3 andAction:(SEL)a4;
- (void)setDevicePosition:(int64_t)a3;
@end

@implementation CAMCleanLensesInstructionLabel

- (CAMCleanLensesInstructionLabel)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CAMCleanLensesInstructionLabel;
  v3 = [(CAMInstructionLabel *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_devicePosition = 0;
    [(CAMCleanLensesInstructionLabel *)v3 _updateText];
  }

  return v4;
}

- (void)setDevicePosition:(int64_t)a3
{
  if (self->_devicePosition != a3)
  {
    self->_devicePosition = a3;
    [(CAMCleanLensesInstructionLabel *)self _updateText];

    [(CAMCleanLensesInstructionLabel *)self layoutIfNeeded];
  }
}

- (void)_updateText
{
  v3 = [(CAMCleanLensesInstructionLabel *)self devicePosition];
  if (!v3)
  {
    v4 = @"SMUDGE_DETECTION_BACK_FACING";
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = @"SMUDGE_DETECTION_FRONT_FACING";
LABEL_5:
    v5 = CAMLocalizedFrameworkString(v4, 0);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  v6 = v5;
  [(CAMInstructionLabel *)self setText:v5];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(CAMCleanLensesInstructionLabel *)self bounds];
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

- (void)labelWasTappedWithTarget:(id)a3 andAction:(SEL)a4
{
  v6 = MEMORY[0x1E69DD060];
  v7 = a3;
  v8 = [[v6 alloc] initWithTarget:v7 action:a4];

  [(CAMCleanLensesInstructionLabel *)self addGestureRecognizer:v8];
  [(CAMCleanLensesInstructionLabel *)self setUserInteractionEnabled:1];
}

@end