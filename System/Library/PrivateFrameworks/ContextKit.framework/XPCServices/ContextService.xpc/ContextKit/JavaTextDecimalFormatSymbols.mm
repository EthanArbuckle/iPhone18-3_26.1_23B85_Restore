@interface JavaTextDecimalFormatSymbols
+ (id)getInstance;
- (BOOL)isEqual:(id)equal;
- (JavaTextDecimalFormatSymbols)init;
- (NSString)description;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
- (void)setCurrencyWithJavaUtilCurrency:(id)currency;
- (void)setExponentSeparatorWithNSString:(id)string;
- (void)setInternationalCurrencySymbolWithNSString:(id)string;
@end

@implementation JavaTextDecimalFormatSymbols

- (JavaTextDecimalFormatSymbols)init
{
  Default = JavaUtilLocale_getDefault();
  JavaTextDecimalFormatSymbols_initWithJavaUtilLocale_(self, Default);
  return self;
}

+ (id)getInstance
{
  Default = JavaUtilLocale_getDefault();

  return JavaTextDecimalFormatSymbols_getInstanceWithJavaUtilLocale_(Default);
}

- (id)clone
{
  v3.receiver = self;
  v3.super_class = JavaTextDecimalFormatSymbols;
  return [(JavaTextDecimalFormatSymbols *)&v3 clone];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  objc_opt_class();
  if (!equal)
  {
    currency = self->currency_;
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = self->currency_;
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = [(JavaUtilCurrency *)v5 isEqual:*(equal + 8)];
  if (!v6)
  {
    return v6;
  }

  currencySymbol = self->currencySymbol_;
  if (!currencySymbol)
  {
    goto LABEL_29;
  }

  v6 = [(NSString *)currencySymbol isEqual:*(equal + 6)];
  if (!v6)
  {
    return v6;
  }

  if (self->decimalSeparator_ != *(equal + 6) || self->digit_ != *(equal + 5))
  {
    goto LABEL_26;
  }

  exponentSeparator = self->exponentSeparator_;
  if (!exponentSeparator)
  {
    goto LABEL_29;
  }

  v6 = [(NSString *)exponentSeparator isEqual:*(equal + 10)];
  if (!v6)
  {
    return v6;
  }

  if (self->groupingSeparator_ != *(equal + 7))
  {
    goto LABEL_26;
  }

  infinity = self->infinity_;
  if (!infinity)
  {
    goto LABEL_29;
  }

  v6 = [(NSString *)infinity isEqual:*(equal + 4)];
  if (!v6)
  {
    return v6;
  }

  intlCurrencySymbol = self->intlCurrencySymbol_;
  if (!intlCurrencySymbol)
  {
    goto LABEL_29;
  }

  v6 = [(NSString *)intlCurrencySymbol isEqual:*(equal + 7)];
  if (!v6)
  {
    return v6;
  }

  if (self->minusSign_ != *(equal + 12) || self->monetarySeparator_ != *(equal + 11))
  {
    goto LABEL_26;
  }

  NaN = self->NaN_;
  if (!NaN)
  {
LABEL_29:
    JreThrowNullPointerException();
  }

  v6 = [(NSString *)NaN isEqual:*(equal + 5)];
  if (!v6)
  {
    return v6;
  }

  if (self->patternSeparator_ != *(equal + 8) || self->perMill_ != *(equal + 10) || self->percent_ != *(equal + 9))
  {
LABEL_26:
    LOBYTE(v6) = 0;
    return v6;
  }

  LOBYTE(v6) = self->zeroDigit_ == *(equal + 4);
  return v6;
}

- (NSString)description
{
  v3 = [-[JavaTextDecimalFormatSymbols getClass](self "getClass")];
  zeroDigit = self->zeroDigit_;
  percent = self->percent_;
  patternSeparator = self->patternSeparator_;
  NaN = self->NaN_;
  monetarySeparator = self->monetarySeparator_;
  minusSign = self->minusSign_;
  intlCurrencySymbol = self->intlCurrencySymbol_;
  infinity = self->infinity_;
  groupingSeparator = self->groupingSeparator_;
  exponentSeparator = self->exponentSeparator_;
  digit = self->digit_;
  decimalSeparator = self->decimalSeparator_;
  currencySymbol = self->currencySymbol_;
  currency = self->currency_;
  return JreStrcat("$$@$$$C$C$$$C$$$$$C$C$$$C$C$C$CC", @",NaN=", @",monetarySeparator=", self->perMill_, @",percent=", @",perMill=", 93, v4, v3);
}

- (unint64_t)hash
{
  exponentSeparator = self->exponentSeparator_;
  if (!exponentSeparator)
  {
    goto LABEL_7;
  }

  zeroDigit = self->zeroDigit_;
  digit = self->digit_;
  decimalSeparator = self->decimalSeparator_;
  groupingSeparator = self->groupingSeparator_;
  patternSeparator = self->patternSeparator_;
  percent = self->percent_;
  perMill = self->perMill_;
  monetarySeparator = self->monetarySeparator_;
  minusSign = self->minusSign_;
  v12 = [(NSString *)exponentSeparator hash];
  infinity = self->infinity_;
  if (!infinity)
  {
    goto LABEL_7;
  }

  v14 = [(NSString *)infinity hash];
  NaN = self->NaN_;
  if (!NaN || (v27 = v12, v28 = v14, v16 = [(NSString *)NaN hash], (currencySymbol = self->currencySymbol_) == 0) || (v18 = [(NSString *)currencySymbol hash], (intlCurrencySymbol = self->intlCurrencySymbol_) == 0))
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  v20 = decimalSeparator - (digit - zeroDigit + 32 * zeroDigit) + 32 * (digit - zeroDigit + 32 * zeroDigit);
  v21 = patternSeparator - (groupingSeparator - v20 + 32 * v20) + 32 * (groupingSeparator - v20 + 32 * v20);
  v22 = perMill - (percent - v21 + 32 * v21) + 32 * (percent - v21 + 32 * v21);
  v23 = minusSign - (monetarySeparator - v22 + 32 * v22) + 32 * (monetarySeparator - v22 + 32 * v22);
  v24 = v28 - (v27 - v23 + 32 * v23) + 32 * (v27 - v23 + 32 * v23);
  v25 = v18 - (v16 - v24 + 32 * v24) + 32 * (v16 - v24 + 32 * v24);
  return ([(NSString *)intlCurrencySymbol hash]- v25 + 32 * v25 - 141423023);
}

- (void)setCurrencyWithJavaUtilCurrency:(id)currency
{
  if (!currency)
  {
    v8 = new_JavaLangNullPointerException_initWithNSString_(@"currency == null");
    objc_exception_throw(v8);
  }

  currency = self->currency_;
  p_currency = &self->currency_;
  if (currency != currency)
  {
    JreStrongAssign(p_currency, currency);
    JreStrongAssign(&self->intlCurrencySymbol_, [currency getCurrencyCode]);
    v7 = [currency getSymbolWithJavaUtilLocale:self->locale_];

    JreStrongAssign(&self->currencySymbol_, v7);
  }
}

- (void)setInternationalCurrencySymbolWithNSString:(id)string
{
  if (string)
  {
    if ([string isEqual:self->intlCurrencySymbol_])
    {
      return;
    }

    InstanceWithNSString = JavaUtilCurrency_getInstanceWithNSString_(string);
    JreStrongAssign(&self->currency_, InstanceWithNSString);
    currency = self->currency_;
    if (!currency)
    {
      JreThrowNullPointerException();
    }

    JreStrongAssign(&self->currencySymbol_, [(JavaUtilCurrency *)currency getSymbolWithJavaUtilLocale:self->locale_]);
    p_intlCurrencySymbol = &self->intlCurrencySymbol_;
    stringCopy = string;
  }

  else
  {
    JreStrongAssign(&self->currency_, 0);
    p_intlCurrencySymbol = &self->intlCurrencySymbol_;
    stringCopy = 0;
  }

  JreStrongAssign(p_intlCurrencySymbol, stringCopy);
}

- (void)setExponentSeparatorWithNSString:(id)string
{
  if (!string)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"value == null");
    objc_exception_throw(v5);
  }

  p_exponentSeparator = &self->exponentSeparator_;

  JreStrongAssign(p_exponentSeparator, string);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaTextDecimalFormatSymbols;
  [(JavaTextDecimalFormatSymbols *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(JavaTextDecimalFormatSymbols *)self clone];

  return clone;
}

@end