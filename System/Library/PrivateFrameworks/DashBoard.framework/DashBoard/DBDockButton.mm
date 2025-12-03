@interface DBDockButton
+ (id)buttonWithType:(int64_t)type;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation DBDockButton

+ (id)buttonWithType:(int64_t)type
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___DBDockButton;
  v3 = objc_msgSendSuper2(&v6, sel_buttonWithType_, type);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  _carSystemFocusColor = [MEMORY[0x277D75348] _carSystemFocusColor];
  [v3 setFocusHighlightColor:_carSystemFocusColor];

  return v3;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = DBDockButton;
  beganCopy = began;
  [(DBDockButton *)&v9 touchesBegan:beganCopy withEvent:event];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___DBTouchesContainsTouchType_block_invoke_0;
  v10[3] = &__block_descriptor_40_e21_B24__0__UITouch_8_B16l;
  v10[4] = 0;
  v7 = [beganCopy objectsPassingTest:v10];

  v8 = [v7 count];
  if (v8)
  {
    if ([(DBDockButton *)self fadeOpacityOnSelection])
    {
      [(DBDockButton *)self setAlpha:0.3];
    }
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = DBDockButton;
  [(DBDockButton *)&v5 touchesEnded:ended withEvent:event];
  if ([(DBDockButton *)self fadeOpacityOnSelection])
  {
    [(DBDockButton *)self setAlpha:1.0];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = DBDockButton;
  [(DBDockButton *)&v5 touchesCancelled:cancelled withEvent:event];
  if ([(DBDockButton *)self fadeOpacityOnSelection])
  {
    [(DBDockButton *)self setAlpha:1.0];
  }
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = DBDockButton;
  beganCopy = began;
  [(DBDockButton *)&v9 pressesBegan:beganCopy withEvent:event];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___DBPressesContainsPressType_block_invoke_2;
  v10[3] = &__block_descriptor_40_e21_B24__0__UIPress_8_B16l;
  v10[4] = 4;
  v7 = [beganCopy objectsPassingTest:v10];

  v8 = [v7 count];
  if (v8)
  {
    if ([(DBDockButton *)self fadeOpacityOnSelection])
    {
      [(DBDockButton *)self setAlpha:0.3];
    }
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = DBDockButton;
  [(DBDockButton *)&v5 pressesEnded:ended withEvent:event];
  if ([(DBDockButton *)self fadeOpacityOnSelection])
  {
    [(DBDockButton *)self setAlpha:1.0];
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = DBDockButton;
  [(DBDockButton *)&v5 pressesCancelled:cancelled withEvent:event];
  if ([(DBDockButton *)self fadeOpacityOnSelection])
  {
    [(DBDockButton *)self setAlpha:1.0];
  }
}

@end