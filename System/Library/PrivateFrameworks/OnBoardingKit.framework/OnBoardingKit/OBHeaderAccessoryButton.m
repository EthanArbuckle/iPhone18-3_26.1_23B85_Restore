@interface OBHeaderAccessoryButton
+ (OBHeaderAccessoryButton)buttonWithType:(int64_t)a3;
+ (id)accessoryButton;
- (void)_updateText;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation OBHeaderAccessoryButton

+ (OBHeaderAccessoryButton)buttonWithType:(int64_t)a3
{
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___OBHeaderAccessoryButton;
  v3 = objc_msgSendSuper2(&v11, sel_buttonWithType_, a3);
  v4 = MEMORY[0x1E69DB878];
  v5 = [v3 _fontTextStyle];
  v6 = [v4 preferredFontForTextStyle:v5];
  v7 = [v3 titleLabel];
  [v7 setFont:v6];

  [v3 setDisplayInfoIcon:1];
  v8 = [v3 titleLabel];
  [v8 setNumberOfLines:1];

  v9 = [v3 titleLabel];
  [v9 setTextAlignment:1];

  return v3;
}

+ (id)accessoryButton
{
  v2 = [a1 buttonWithType:1];
  v3 = [v2 titleLabel];
  [v3 setAdjustsFontSizeToFitWidth:1];

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 _updateText];

  return v2;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = OBHeaderAccessoryButton;
  [(OBHeaderAccessoryButton *)&v9 traitCollectionDidChange:v4];
  if (!v4)
  {
    goto LABEL_3;
  }

  v5 = [v4 preferredContentSizeCategory];
  v6 = [(OBHeaderAccessoryButton *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  v8 = [v5 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
LABEL_3:
    [(OBHeaderAccessoryButton *)self _updateText];
  }
}

- (void)_updateText
{
  v3 = MEMORY[0x1E69DB878];
  v4 = [(OBHeaderAccessoryButton *)self _fontTextStyle];
  v5 = [v3 preferredFontForTextStyle:v4];
  v6 = [(OBHeaderAccessoryButton *)self titleLabel];
  [v6 setFont:v5];

  v7 = +[OBViewUtilities shouldUseAccessibilityLayout];
  if (v7)
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 0.65;
  }

  [(OBHeaderAccessoryButton *)self setContentHorizontalAlignment:v8];
  v10 = [(OBHeaderAccessoryButton *)self titleLabel];
  [v10 setMinimumScaleFactor:v9];
}

- (void)tintColorDidChange
{
  v10.receiver = self;
  v10.super_class = OBHeaderAccessoryButton;
  [(OBHeaderAccessoryButton *)&v10 tintColorDidChange];
  v3 = [(OBHeaderAccessoryButton *)self underlineLinks];
  v4 = [(OBHeaderAccessoryButton *)self titleLabel];
  v5 = [v4 attributedText];
  v6 = [v5 mutableCopy];

  v7 = *MEMORY[0x1E69DB758];
  v8 = [v6 length];
  if (v3)
  {
    [v6 addAttribute:v7 value:&unk_1F2CF85E8 range:{0, v8}];
  }

  else
  {
    [v6 removeAttribute:v7 range:{0, v8}];
  }

  v9 = [(OBHeaderAccessoryButton *)self titleLabel];
  [v9 setAttributedText:v6];
}

@end