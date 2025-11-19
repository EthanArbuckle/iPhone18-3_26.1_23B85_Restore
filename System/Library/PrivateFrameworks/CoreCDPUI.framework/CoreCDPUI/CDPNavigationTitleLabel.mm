@interface CDPNavigationTitleLabel
- (CDPNavigationTitleLabel)initWithTitle:(id)a3;
@end

@implementation CDPNavigationTitleLabel

- (CDPNavigationTitleLabel)initWithTitle:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CDPNavigationTitleLabel;
  v5 = [(CDPNavigationTitleLabel *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(CDPNavigationTitleLabel *)v5 setText:v4];
    [(CDPNavigationTitleLabel *)v6 setNumberOfLines:2];
    [(CDPNavigationTitleLabel *)v6 setTextAlignment:1];
    [(CDPNavigationTitleLabel *)v6 setLineBreakMode:4];
    v7 = MEMORY[0x277D74300];
    v8 = *MEMORY[0x277D76A20];
    v9 = [MEMORY[0x277D759A0] mainScreen];
    v10 = [v9 traitCollection];
    v11 = [v7 preferredFontForTextStyle:v8 compatibleWithTraitCollection:v10];
    [(CDPNavigationTitleLabel *)v6 setFont:v11];

    [(CDPNavigationTitleLabel *)v6 setAdjustsFontSizeToFitWidth:1];
    [(CDPNavigationTitleLabel *)v6 setMinimumScaleFactor:0.7];
  }

  return v6;
}

@end