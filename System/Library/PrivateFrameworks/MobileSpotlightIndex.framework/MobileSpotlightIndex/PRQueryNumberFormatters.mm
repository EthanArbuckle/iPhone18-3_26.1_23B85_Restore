@interface PRQueryNumberFormatters
- (PRQueryNumberFormatters)initWithLocale:(id)locale;
- (void)dealloc;
@end

@implementation PRQueryNumberFormatters

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRQueryNumberFormatters;
  [(PRQueryNumberFormatters *)&v3 dealloc];
}

- (PRQueryNumberFormatters)initWithLocale:(id)locale
{
  v10.receiver = self;
  v10.super_class = PRQueryNumberFormatters;
  v4 = [(PRQueryNumberFormatters *)&v10 init];
  if (v4)
  {
    v4->_locale = locale;
    v5 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v4->_numberFormatter = v5;
    [(NSNumberFormatter *)v5 setLocale:locale];
    v6 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v4->_decimalFormatter = v6;
    [(NSNumberFormatter *)v6 setLocale:locale];
    [(NSNumberFormatter *)v4->_decimalFormatter setNumberStyle:1];
    v7 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v4->_currencyFormatter = v7;
    [(NSNumberFormatter *)v7 setLocale:locale];
    [(NSNumberFormatter *)v4->_currencyFormatter setNumberStyle:2];
    [(NSNumberFormatter *)v4->_currencyFormatter setMinimumFractionDigits:0];
    [(NSNumberFormatter *)v4->_currencyFormatter setUsesGroupingSeparator:0];
    [(NSNumberFormatter *)v4->_currencyFormatter setAlwaysShowsDecimalSeparator:0];
    v8 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v4->_currencyDecimalFormatter = v8;
    [(NSNumberFormatter *)v8 setLocale:locale];
    [(NSNumberFormatter *)v4->_currencyDecimalFormatter setNumberStyle:2];
    [(NSNumberFormatter *)v4->_currencyDecimalFormatter setMinimumFractionDigits:0];
    [(NSNumberFormatter *)v4->_currencyDecimalFormatter setAlwaysShowsDecimalSeparator:0];
  }

  return v4;
}

@end