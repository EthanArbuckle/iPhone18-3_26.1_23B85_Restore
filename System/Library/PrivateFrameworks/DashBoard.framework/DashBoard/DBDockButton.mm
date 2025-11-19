@interface DBDockButton
+ (id)buttonWithType:(int64_t)a3;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation DBDockButton

+ (id)buttonWithType:(int64_t)a3
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___DBDockButton;
  v3 = objc_msgSendSuper2(&v6, sel_buttonWithType_, a3);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [MEMORY[0x277D75348] _carSystemFocusColor];
  [v3 setFocusHighlightColor:v4];

  return v3;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = DBDockButton;
  v6 = a3;
  [(DBDockButton *)&v9 touchesBegan:v6 withEvent:a4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___DBTouchesContainsTouchType_block_invoke_0;
  v10[3] = &__block_descriptor_40_e21_B24__0__UITouch_8_B16l;
  v10[4] = 0;
  v7 = [v6 objectsPassingTest:v10];

  v8 = [v7 count];
  if (v8)
  {
    if ([(DBDockButton *)self fadeOpacityOnSelection])
    {
      [(DBDockButton *)self setAlpha:0.3];
    }
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = DBDockButton;
  [(DBDockButton *)&v5 touchesEnded:a3 withEvent:a4];
  if ([(DBDockButton *)self fadeOpacityOnSelection])
  {
    [(DBDockButton *)self setAlpha:1.0];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = DBDockButton;
  [(DBDockButton *)&v5 touchesCancelled:a3 withEvent:a4];
  if ([(DBDockButton *)self fadeOpacityOnSelection])
  {
    [(DBDockButton *)self setAlpha:1.0];
  }
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = DBDockButton;
  v6 = a3;
  [(DBDockButton *)&v9 pressesBegan:v6 withEvent:a4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___DBPressesContainsPressType_block_invoke_2;
  v10[3] = &__block_descriptor_40_e21_B24__0__UIPress_8_B16l;
  v10[4] = 4;
  v7 = [v6 objectsPassingTest:v10];

  v8 = [v7 count];
  if (v8)
  {
    if ([(DBDockButton *)self fadeOpacityOnSelection])
    {
      [(DBDockButton *)self setAlpha:0.3];
    }
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = DBDockButton;
  [(DBDockButton *)&v5 pressesEnded:a3 withEvent:a4];
  if ([(DBDockButton *)self fadeOpacityOnSelection])
  {
    [(DBDockButton *)self setAlpha:1.0];
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = DBDockButton;
  [(DBDockButton *)&v5 pressesCancelled:a3 withEvent:a4];
  if ([(DBDockButton *)self fadeOpacityOnSelection])
  {
    [(DBDockButton *)self setAlpha:1.0];
  }
}

@end