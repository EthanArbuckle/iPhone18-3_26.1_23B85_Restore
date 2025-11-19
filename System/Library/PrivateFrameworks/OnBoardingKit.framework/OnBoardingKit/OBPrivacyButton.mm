@interface OBPrivacyButton
+ (id)buttonWithType:(int64_t)a3;
- (void)tintColorDidChange;
@end

@implementation OBPrivacyButton

+ (id)buttonWithType:(int64_t)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___OBPrivacyButton;
  v3 = objc_msgSendSuper2(&v5, sel_buttonWithType_, a3);

  return v3;
}

- (void)tintColorDidChange
{
  v10.receiver = self;
  v10.super_class = OBPrivacyButton;
  [(OBPrivacyButton *)&v10 tintColorDidChange];
  v3 = [(OBPrivacyButton *)self underlineLinks];
  v4 = [(OBPrivacyButton *)self titleLabel];
  v5 = [v4 attributedText];
  v6 = [v5 mutableCopy];

  v7 = *MEMORY[0x1E69DB758];
  v8 = [v6 length];
  if (v3)
  {
    [v6 addAttribute:v7 value:&unk_1F2CF8558 range:{0, v8}];
  }

  else
  {
    [v6 removeAttribute:v7 range:{0, v8}];
  }

  v9 = [(OBPrivacyButton *)self titleLabel];
  [v9 setAttributedText:v6];
}

@end