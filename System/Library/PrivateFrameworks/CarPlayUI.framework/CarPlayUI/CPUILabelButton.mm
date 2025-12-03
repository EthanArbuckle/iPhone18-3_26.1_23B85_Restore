@interface CPUILabelButton
- (id)tintColor;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation CPUILabelButton

- (id)tintColor
{
  if (([(CPUILabelButton *)self isEnabled]& 1) != 0)
  {
    [MEMORY[0x277D75348] _carSystemFocusColor];
  }

  else
  {
    [(CPUILabelButton *)self disabledTextColor];
  }
  v3 = ;

  return v3;
}

- (void)setEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = CPUILabelButton;
  [(CPUILabelButton *)&v4 setEnabled:enabled];
  [(CPUILabelButton *)self setNeedsLayout];
}

@end