@interface OBPrivacyButton
+ (id)buttonWithType:(int64_t)type;
- (void)tintColorDidChange;
@end

@implementation OBPrivacyButton

+ (id)buttonWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___OBPrivacyButton;
  v3 = objc_msgSendSuper2(&v5, sel_buttonWithType_, type);

  return v3;
}

- (void)tintColorDidChange
{
  v10.receiver = self;
  v10.super_class = OBPrivacyButton;
  [(OBPrivacyButton *)&v10 tintColorDidChange];
  underlineLinks = [(OBPrivacyButton *)self underlineLinks];
  titleLabel = [(OBPrivacyButton *)self titleLabel];
  attributedText = [titleLabel attributedText];
  v6 = [attributedText mutableCopy];

  v7 = *MEMORY[0x1E69DB758];
  v8 = [v6 length];
  if (underlineLinks)
  {
    [v6 addAttribute:v7 value:&unk_1F2CF8558 range:{0, v8}];
  }

  else
  {
    [v6 removeAttribute:v7 range:{0, v8}];
  }

  titleLabel2 = [(OBPrivacyButton *)self titleLabel];
  [titleLabel2 setAttributedText:v6];
}

@end