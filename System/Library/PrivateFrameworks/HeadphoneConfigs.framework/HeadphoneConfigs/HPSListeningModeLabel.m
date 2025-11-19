@interface HPSListeningModeLabel
- (HPSListeningModeLabel)initWithText:(id)a3;
@end

@implementation HPSListeningModeLabel

- (HPSListeningModeLabel)initWithText:(id)a3
{
  v13.receiver = self;
  v13.super_class = HPSListeningModeLabel;
  v3 = a3;
  v4 = [(HPSListeningModeLabel *)&v13 init];
  [(HPSListeningModeLabel *)v4 setText:v3, v13.receiver, v13.super_class];

  [(HPSListeningModeLabel *)v4 setTextAlignment:1];
  v5 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76938] maximumContentSizeCategory:*MEMORY[0x277D76820]];
  v6 = MEMORY[0x277D74300];
  [v5 pointSize];
  v7 = [v6 boldSystemFontOfSize:?];
  [(HPSListeningModeLabel *)v4 setFont:v7];

  [(HPSListeningModeLabel *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HPSListeningModeLabel *)v4 setNumberOfLines:0];
  v8 = [MEMORY[0x277CBEAF8] currentLocale];
  v9 = [v8 objectForKey:*MEMORY[0x277CBE6C8]];
  v10 = [v9 lowercaseString];

  if (([v10 isEqualToString:@"de"] & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"uk") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"ru") & 1) == 0)
  {
    LODWORD(v11) = 1036831949;
    [(HPSListeningModeLabel *)v4 _setHyphenationFactor:v11];
  }

  return v4;
}

@end