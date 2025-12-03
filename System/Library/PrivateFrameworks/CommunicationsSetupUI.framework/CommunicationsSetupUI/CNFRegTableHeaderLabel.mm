@interface CNFRegTableHeaderLabel
- (CNFRegTableHeaderLabel)initWithSpecifier:(id)specifier;
- (double)preferredHeightForWidth:(double)width;
- (int64_t)_labelTextAlignment;
@end

@implementation CNFRegTableHeaderLabel

- (CNFRegTableHeaderLabel)initWithSpecifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = CNFRegTableHeaderLabel;
  v3 = [(CNFRegTableLabel *)&v8 initWithSpecifier:specifier];
  if (v3)
  {
    v4 = +[CNFRegAppearanceController globalAppearanceController];
    tableHeaderFont = [v4 tableHeaderFont];

    if (tableHeaderFont)
    {
      [v4 tableHeaderFont];
    }

    else
    {
      PreferencesTableViewFooterFont();
    }
    v6 = ;
    [(UILabel *)v3->super._label setFont:v6];

    -[UILabel setTextAlignment:](v3->super._label, "setTextAlignment:", [v4 tableHeaderTextAlignment]);
  }

  return v3;
}

- (int64_t)_labelTextAlignment
{
  v3 = [(PSSpecifier *)self->super._specifier propertyForKey:*MEMORY[0x277D3FD78]];
  v4 = v3;
  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CNFRegTableHeaderLabel;
    intValue = [(CNFRegTableLabel *)&v7 _labelTextAlignment];
  }

  return intValue;
}

- (double)preferredHeightForWidth:(double)width
{
  v9.receiver = self;
  v9.super_class = CNFRegTableHeaderLabel;
  [(CNFRegTableLabel *)&v9 preferredHeightForWidth:width];
  v4 = v3;
  if (v3 > 0.0)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v6 = [currentDevice userInterfaceIdiom] == 1 ? 34.0 : 35.0;

    if (v4 < v6)
    {
      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice2 userInterfaceIdiom] == 1)
      {
        v4 = 34.0;
      }

      else
      {
        v4 = 35.0;
      }
    }
  }

  return v4;
}

@end