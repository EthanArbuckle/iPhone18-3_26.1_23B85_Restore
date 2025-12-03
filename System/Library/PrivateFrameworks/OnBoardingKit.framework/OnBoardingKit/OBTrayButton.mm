@interface OBTrayButton
+ (double)standardHeight;
+ (id)buttonWithType:(int64_t)type;
- (id)buttonFont;
- (void)hidesBusyIndicator;
- (void)showsBusyIndicator;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation OBTrayButton

+ (id)buttonWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___OBTrayButton;
  v3 = objc_msgSendSuper2(&v5, sel_buttonWithType_, type);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = OBTrayButton;
  [(OBTrayButton *)&v10 traitCollectionDidChange:change];
  v4 = [(OBTrayButton *)self attributedTitleForState:0];
  [(OBTrayButton *)self setAttributedTitle:v4 forState:0];

  v5 = [(OBTrayButton *)self attributedTitleForState:1];
  [(OBTrayButton *)self setAttributedTitle:v5 forState:1];

  v6 = [(OBTrayButton *)self attributedTitleForState:4];
  [(OBTrayButton *)self setAttributedTitle:v6 forState:4];

  v7 = [(OBTrayButton *)self attributedTitleForState:8];
  [(OBTrayButton *)self setAttributedTitle:v7 forState:8];

  v8 = [(OBTrayButton *)self attributedTitleForState:16711680];
  [(OBTrayButton *)self setAttributedTitle:v8 forState:16711680];

  v9 = [(OBTrayButton *)self attributedTitleForState:2];
  [(OBTrayButton *)self setAttributedTitle:v9 forState:2];

  [(OBTrayButton *)self setNeedsUpdateConfiguration];
}

- (void)showsBusyIndicator
{
  configuration = [(OBTrayButton *)self configuration];
  showsActivityIndicator = [configuration showsActivityIndicator];

  if ((showsActivityIndicator & 1) == 0)
  {
    configuration2 = [(OBTrayButton *)self configuration];
    [configuration2 setShowsActivityIndicator:1];
    [(OBTrayButton *)self setConfiguration:configuration2];
    [(OBTrayButton *)self setNeedsUpdateConfiguration];
    v6.receiver = self;
    v6.super_class = OBTrayButton;
    [(OBTrayButton *)&v6 setEnabled:0];
  }
}

- (void)hidesBusyIndicator
{
  configuration = [(OBTrayButton *)self configuration];
  showsActivityIndicator = [configuration showsActivityIndicator];

  if (showsActivityIndicator)
  {
    v6.receiver = self;
    v6.super_class = OBTrayButton;
    [(OBTrayButton *)&v6 setEnabled:1];
    configuration2 = [(OBTrayButton *)self configuration];
    [configuration2 setShowsActivityIndicator:0];
    [(OBTrayButton *)self setConfiguration:configuration2];
    [(OBTrayButton *)self setNeedsUpdateConfiguration];
  }
}

+ (double)standardHeight
{
  v2 = +[OBFeatureFlags isNaturalUIEnabled];
  result = 50.0;
  if (v2)
  {
    return 52.0;
  }

  return result;
}

- (id)buttonFont
{
  _fontTextStyle = [(OBTrayButton *)self _fontTextStyle];
  v4 = [(UIButton *)self fontForStyle:_fontTextStyle maxSizeCategory:*MEMORY[0x1E69DDC28]];

  v5 = MEMORY[0x1E69DB878];
  [v4 pointSize];
  v6 = [v5 boldSystemFontOfSize:?];

  return v6;
}

@end