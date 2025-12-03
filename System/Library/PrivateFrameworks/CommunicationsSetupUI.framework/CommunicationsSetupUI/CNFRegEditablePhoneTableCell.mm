@interface CNFRegEditablePhoneTableCell
- ($2D6F231FED87FA8D411482BD0BBB798B)suggestionsForString:(id)string inputIndex:(unsigned int)index;
- (CNFRegEditablePhoneTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)countryCode;
- (void)dealloc;
- (void)setValueChangedTarget:(id)target action:(SEL)action specifier:(id)specifier;
@end

@implementation CNFRegEditablePhoneTableCell

- (CNFRegEditablePhoneTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CNFRegEditablePhoneTableCell;
  v4 = [(PSEditableTableCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [-[PSEditableTableCell textField](v4 "textField")];
    [objc_msgSend(-[PSEditableTableCell textField](v5 "textField")];
  }

  return v5;
}

- (void)dealloc
{
  [-[PSEditableTableCell textField](self "textField")];

  self->_previousValue = 0;
  v3.receiver = self;
  v3.super_class = CNFRegEditablePhoneTableCell;
  [(CNFRegEditableTableCell *)&v3 dealloc];
}

- (void)setValueChangedTarget:(id)target action:(SEL)action specifier:(id)specifier
{
  v11.receiver = self;
  v11.super_class = CNFRegEditablePhoneTableCell;
  [(CNFRegEditableTableCell *)&v11 setValueChangedTarget:target action:action specifier:?];
  v7 = [specifier propertyForKey:@"cnf-phoneFieldCountryCodeSelector"];
  if (v7)
  {
    v8 = NSSelectorFromString(v7);
    if (v8)
    {
      v9 = v8;
      v10 = *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FBF0]);
      if (objc_opt_respondsToSelector())
      {
        self->_countryCodeSelector = v9;
      }
    }
  }
}

- (id)countryCode
{
  v3 = *(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x277D3FBF0]);
  if (!v3 || (countryCodeSelector = self->_countryCodeSelector) == 0 || (v5 = self->_countryCodeSelector, (v6 = [v3 performSelector:countryCodeSelector]) == 0))
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v6 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];
  }

  return [v6 lowercaseString];
}

- ($2D6F231FED87FA8D411482BD0BBB798B)suggestionsForString:(id)string inputIndex:(unsigned int)index
{
  [(CNFRegEditablePhoneTableCell *)self countryCode];
  previousValue = self->_previousValue;
  v6 = _PNCopyFormattedNumberSuggestionForDigitsWithCountry();
  if (v6)
  {
    v7 = [MEMORY[0x277CBEA60] arrayWithObject:v6];
    v8 = self->_previousValue;
    self->_previousValue = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  v9 = v7;
  v10 = 0;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

@end