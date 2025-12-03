@interface CAMAutoMacroButton
- (CAMAutoMacroButton)initWithFrame:(CGRect)frame;
- (void)setActive:(BOOL)active animated:(BOOL)animated;
@end

@implementation CAMAutoMacroButton

- (CAMAutoMacroButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CAMAutoMacroButton;
  v3 = [(CAMCircleButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_active = 1;
    [(CAMCircleButton *)v3 updateTintColors];
  }

  return v4;
}

- (void)setActive:(BOOL)active animated:(BOOL)animated
{
  if (self->_active != active)
  {
    animatedCopy = animated;
    self->_active = active;
    [(CAMCircleButton *)self updateTintColors];

    [(CAMCircleButton *)self updateSlashAnimated:animatedCopy];
  }
}

@end