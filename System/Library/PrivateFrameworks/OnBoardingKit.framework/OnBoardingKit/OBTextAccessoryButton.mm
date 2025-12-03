@interface OBTextAccessoryButton
+ (id)accessoryButtonWithTextStyle:(id)style;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation OBTextAccessoryButton

+ (id)accessoryButtonWithTextStyle:(id)style
{
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___OBTextAccessoryButton;
  styleCopy = style;
  v4 = objc_msgSendSuper2(&v11, sel_buttonWithType_, 1);
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [v4 setTitleColor:systemBlueColor forState:0];

  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:styleCopy];
  titleLabel = [v4 titleLabel];
  [titleLabel setFont:v6];

  titleLabel2 = [v4 titleLabel];
  [titleLabel2 setTextAlignment:4];

  [v4 setTextStyle:styleCopy];
  [v4 setContentHorizontalAlignment:3];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [plainButtonConfiguration setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
    [v4 setConfiguration:plainButtonConfiguration];
  }

  return v4;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = OBTextAccessoryButton;
  [(OBTextAccessoryButton *)&v8 traitCollectionDidChange:change];
  v4 = MEMORY[0x1E69DB878];
  textStyle = [(OBTextAccessoryButton *)self textStyle];
  v6 = [v4 preferredFontForTextStyle:textStyle];
  titleLabel = [(OBTextAccessoryButton *)self titleLabel];
  [titleLabel setFont:v6];
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = OBTextAccessoryButton;
  [(OBTextAccessoryButton *)&v4 tintColorDidChange];
  tintColor = [(OBTextAccessoryButton *)self tintColor];
  [(OBTextAccessoryButton *)self setTitleColor:tintColor forState:0];
}

@end