@interface CAMAutoMacroButton
- (CAMAutoMacroButton)initWithFrame:(CGRect)a3;
- (void)setActive:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation CAMAutoMacroButton

- (CAMAutoMacroButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CAMAutoMacroButton;
  v3 = [(CAMCircleButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_active = 1;
    [(CAMCircleButton *)v3 updateTintColors];
  }

  return v4;
}

- (void)setActive:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_active != a3)
  {
    v5 = a4;
    self->_active = a3;
    [(CAMCircleButton *)self updateTintColors];

    [(CAMCircleButton *)self updateSlashAnimated:v5];
  }
}

@end