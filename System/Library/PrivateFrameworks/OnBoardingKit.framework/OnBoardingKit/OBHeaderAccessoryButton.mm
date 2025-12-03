@interface OBHeaderAccessoryButton
+ (OBHeaderAccessoryButton)buttonWithType:(int64_t)type;
+ (id)accessoryButton;
- (void)_updateText;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation OBHeaderAccessoryButton

+ (OBHeaderAccessoryButton)buttonWithType:(int64_t)type
{
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___OBHeaderAccessoryButton;
  v3 = objc_msgSendSuper2(&v11, sel_buttonWithType_, type);
  v4 = MEMORY[0x1E69DB878];
  _fontTextStyle = [v3 _fontTextStyle];
  v6 = [v4 preferredFontForTextStyle:_fontTextStyle];
  titleLabel = [v3 titleLabel];
  [titleLabel setFont:v6];

  [v3 setDisplayInfoIcon:1];
  titleLabel2 = [v3 titleLabel];
  [titleLabel2 setNumberOfLines:1];

  titleLabel3 = [v3 titleLabel];
  [titleLabel3 setTextAlignment:1];

  return v3;
}

+ (id)accessoryButton
{
  v2 = [self buttonWithType:1];
  titleLabel = [v2 titleLabel];
  [titleLabel setAdjustsFontSizeToFitWidth:1];

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 _updateText];

  return v2;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = OBHeaderAccessoryButton;
  [(OBHeaderAccessoryButton *)&v9 traitCollectionDidChange:changeCopy];
  if (!changeCopy)
  {
    goto LABEL_3;
  }

  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];
  traitCollection = [(OBHeaderAccessoryButton *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];
  v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

  if ((v8 & 1) == 0)
  {
LABEL_3:
    [(OBHeaderAccessoryButton *)self _updateText];
  }
}

- (void)_updateText
{
  v3 = MEMORY[0x1E69DB878];
  _fontTextStyle = [(OBHeaderAccessoryButton *)self _fontTextStyle];
  v5 = [v3 preferredFontForTextStyle:_fontTextStyle];
  titleLabel = [(OBHeaderAccessoryButton *)self titleLabel];
  [titleLabel setFont:v5];

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
  titleLabel2 = [(OBHeaderAccessoryButton *)self titleLabel];
  [titleLabel2 setMinimumScaleFactor:v9];
}

- (void)tintColorDidChange
{
  v10.receiver = self;
  v10.super_class = OBHeaderAccessoryButton;
  [(OBHeaderAccessoryButton *)&v10 tintColorDidChange];
  underlineLinks = [(OBHeaderAccessoryButton *)self underlineLinks];
  titleLabel = [(OBHeaderAccessoryButton *)self titleLabel];
  attributedText = [titleLabel attributedText];
  v6 = [attributedText mutableCopy];

  v7 = *MEMORY[0x1E69DB758];
  v8 = [v6 length];
  if (underlineLinks)
  {
    [v6 addAttribute:v7 value:&unk_1F2CF85E8 range:{0, v8}];
  }

  else
  {
    [v6 removeAttribute:v7 range:{0, v8}];
  }

  titleLabel2 = [(OBHeaderAccessoryButton *)self titleLabel];
  [titleLabel2 setAttributedText:v6];
}

@end