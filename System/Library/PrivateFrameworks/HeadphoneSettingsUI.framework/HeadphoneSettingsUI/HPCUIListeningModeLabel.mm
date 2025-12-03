@interface HPCUIListeningModeLabel
- (HPCUIListeningModeLabel)initWithText:(id)text;
@end

@implementation HPCUIListeningModeLabel

- (HPCUIListeningModeLabel)initWithText:(id)text
{
  v13.receiver = self;
  v13.super_class = HPCUIListeningModeLabel;
  textCopy = text;
  v4 = [(HPCUIListeningModeLabel *)&v13 init];
  [(HPCUIListeningModeLabel *)v4 setText:textCopy, v13.receiver, v13.super_class];

  [(HPCUIListeningModeLabel *)v4 setTextAlignment:1];
  v5 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD08] maximumContentSizeCategory:*MEMORY[0x1E69DDC58]];
  v6 = MEMORY[0x1E69DB878];
  [v5 pointSize];
  v7 = [v6 boldSystemFontOfSize:?];
  [(HPCUIListeningModeLabel *)v4 setFont:v7];

  [(HPCUIListeningModeLabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HPCUIListeningModeLabel *)v4 setNumberOfLines:0];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v9 = [currentLocale objectForKey:*MEMORY[0x1E695D9B0]];
  lowercaseString = [v9 lowercaseString];

  if (([lowercaseString isEqualToString:@"de"] & 1) == 0 && (objc_msgSend(lowercaseString, "isEqualToString:", @"uk") & 1) == 0 && (objc_msgSend(lowercaseString, "isEqualToString:", @"ru") & 1) == 0)
  {
    LODWORD(v11) = 1036831949;
    [(HPCUIListeningModeLabel *)v4 _setHyphenationFactor:v11];
  }

  return v4;
}

@end