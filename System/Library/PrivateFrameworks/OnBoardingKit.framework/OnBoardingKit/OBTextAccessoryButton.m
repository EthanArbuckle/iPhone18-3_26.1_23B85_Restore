@interface OBTextAccessoryButton
+ (id)accessoryButtonWithTextStyle:(id)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation OBTextAccessoryButton

+ (id)accessoryButtonWithTextStyle:(id)a3
{
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___OBTextAccessoryButton;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v11, sel_buttonWithType_, 1);
  v5 = [MEMORY[0x1E69DC888] systemBlueColor];
  [v4 setTitleColor:v5 forState:0];

  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v3];
  v7 = [v4 titleLabel];
  [v7 setFont:v6];

  v8 = [v4 titleLabel];
  [v8 setTextAlignment:4];

  [v4 setTextStyle:v3];
  [v4 setContentHorizontalAlignment:3];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v9 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [v9 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
    [v4 setConfiguration:v9];
  }

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = OBTextAccessoryButton;
  [(OBTextAccessoryButton *)&v8 traitCollectionDidChange:a3];
  v4 = MEMORY[0x1E69DB878];
  v5 = [(OBTextAccessoryButton *)self textStyle];
  v6 = [v4 preferredFontForTextStyle:v5];
  v7 = [(OBTextAccessoryButton *)self titleLabel];
  [v7 setFont:v6];
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = OBTextAccessoryButton;
  [(OBTextAccessoryButton *)&v4 tintColorDidChange];
  v3 = [(OBTextAccessoryButton *)self tintColor];
  [(OBTextAccessoryButton *)self setTitleColor:v3 forState:0];
}

@end