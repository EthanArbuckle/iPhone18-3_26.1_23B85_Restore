@interface CNFRegTableFooterLabel
- (CNFRegTableFooterLabel)initWithSpecifier:(id)a3;
- (int64_t)_labelTextAlignment;
@end

@implementation CNFRegTableFooterLabel

- (CNFRegTableFooterLabel)initWithSpecifier:(id)a3
{
  v9.receiver = self;
  v9.super_class = CNFRegTableFooterLabel;
  v3 = [(CNFRegTableLabel *)&v9 initWithSpecifier:a3];
  if (v3)
  {
    v4 = +[CNFRegAppearanceController globalAppearanceController];
    v5 = [v4 tableFooterFont];

    if (v5)
    {
      [v4 tableFooterFont];
    }

    else
    {
      PreferencesTableViewFooterFont();
    }
    v6 = ;
    [(UILabel *)v3->super._label setFont:v6];

    v7 = [v4 tableFooterTextColor];
    [(UILabel *)v3->super._label setTextColor:v7];

    -[UILabel setTextAlignment:](v3->super._label, "setTextAlignment:", [v4 tableHeaderTextAlignment]);
  }

  return v3;
}

- (int64_t)_labelTextAlignment
{
  v3 = [(PSSpecifier *)self->super._specifier propertyForKey:*MEMORY[0x277D3FF40]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CNFRegTableFooterLabel;
    v5 = [(CNFRegTableLabel *)&v7 _labelTextAlignment];
  }

  return v5;
}

@end