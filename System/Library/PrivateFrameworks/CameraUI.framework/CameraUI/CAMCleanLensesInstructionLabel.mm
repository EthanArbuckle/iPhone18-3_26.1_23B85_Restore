@interface CAMCleanLensesInstructionLabel
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CAMCleanLensesInstructionLabel)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)_textInsets;
- (void)_updateText;
- (void)labelWasTappedWithTarget:(id)target andAction:(SEL)action;
- (void)setDevicePosition:(int64_t)position;
@end

@implementation CAMCleanLensesInstructionLabel

- (CAMCleanLensesInstructionLabel)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CAMCleanLensesInstructionLabel;
  v3 = [(CAMInstructionLabel *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_devicePosition = 0;
    [(CAMCleanLensesInstructionLabel *)v3 _updateText];
  }

  return v4;
}

- (void)setDevicePosition:(int64_t)position
{
  if (self->_devicePosition != position)
  {
    self->_devicePosition = position;
    [(CAMCleanLensesInstructionLabel *)self _updateText];

    [(CAMCleanLensesInstructionLabel *)self layoutIfNeeded];
  }
}

- (void)_updateText
{
  devicePosition = [(CAMCleanLensesInstructionLabel *)self devicePosition];
  if (!devicePosition)
  {
    v4 = @"SMUDGE_DETECTION_BACK_FACING";
    goto LABEL_5;
  }

  if (devicePosition == 1)
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

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
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

- (void)labelWasTappedWithTarget:(id)target andAction:(SEL)action
{
  v6 = MEMORY[0x1E69DD060];
  targetCopy = target;
  v8 = [[v6 alloc] initWithTarget:targetCopy action:action];

  [(CAMCleanLensesInstructionLabel *)self addGestureRecognizer:v8];
  [(CAMCleanLensesInstructionLabel *)self setUserInteractionEnabled:1];
}

@end