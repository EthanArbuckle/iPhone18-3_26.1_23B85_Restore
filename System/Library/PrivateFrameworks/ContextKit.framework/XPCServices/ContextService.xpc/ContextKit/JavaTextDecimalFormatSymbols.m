@interface JavaTextDecimalFormatSymbols
+ (id)getInstance;
- (BOOL)isEqual:(id)a3;
- (JavaTextDecimalFormatSymbols)init;
- (NSString)description;
- (id)clone;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)setCurrencyWithJavaUtilCurrency:(id)a3;
- (void)setExponentSeparatorWithNSString:(id)a3;
- (void)setInternationalCurrencySymbolWithNSString:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
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
  if (!a3)
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

  v6 = [(JavaUtilCurrency *)v5 isEqual:*(a3 + 8)];
  if (!v6)
  {
    return v6;
  }

  currencySymbol = self->currencySymbol_;
  if (!currencySymbol)
  {
    goto LABEL_29;
  }

  v6 = [(NSString *)currencySymbol isEqual:*(a3 + 6)];
  if (!v6)
  {
    return v6;
  }

  if (self->decimalSeparator_ != *(a3 + 6) || self->digit_ != *(a3 + 5))
  {
    goto LABEL_26;
  }

  exponentSeparator = self->exponentSeparator_;
  if (!exponentSeparator)
  {
    goto LABEL_29;
  }

  v6 = [(NSString *)exponentSeparator isEqual:*(a3 + 10)];
  if (!v6)
  {
    return v6;
  }

  if (self->groupingSeparator_ != *(a3 + 7))
  {
    goto LABEL_26;
  }

  infinity = self->infinity_;
  if (!infinity)
  {
    goto LABEL_29;
  }

  v6 = [(NSString *)infinity isEqual:*(a3 + 4)];
  if (!v6)
  {
    return v6;
  }

  intlCurrencySymbol = self->intlCurrencySymbol_;
  if (!intlCurrencySymbol)
  {
    goto LABEL_29;
  }

  v6 = [(NSString *)intlCurrencySymbol isEqual:*(a3 + 7)];
  if (!v6)
  {
    return v6;
  }

  if (self->minusSign_ != *(a3 + 12) || self->monetarySeparator_ != *(a3 + 11))
  {
    goto LABEL_26;
  }

  NaN = self->NaN_;
  if (!NaN)
  {
LABEL_29:
    JreThrowNullPointerException();
  }

  v6 = [(NSString *)NaN isEqual:*(a3 + 5)];
  if (!v6)
  {
    return v6;
  }

  if (self->patternSeparator_ != *(a3 + 8) || self->perMill_ != *(a3 + 10) || self->percent_ != *(a3 + 9))
  {
LABEL_26:
    LOBYTE(v6) = 0;
    return v6;
  }

  LOBYTE(v6) = self->zeroDigit_ == *(a3 + 4);
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

- (void)setCurrencyWithJavaUtilCurrency:(id)a3
{
  if (!a3)
  {
    v8 = new_JavaLangNullPointerException_initWithNSString_(@"currency == null");
    objc_exception_throw(v8);
  }

  currency = self->currency_;
  p_currency = &self->currency_;
  if (currency != a3)
  {
    JreStrongAssign(p_currency, a3);
    JreStrongAssign(&self->intlCurrencySymbol_, [a3 getCurrencyCode]);
    v7 = [a3 getSymbolWithJavaUtilLocale:self->locale_];

    JreStrongAssign(&self->currencySymbol_, v7);
  }
}

- (void)setInternationalCurrencySymbolWithNSString:(id)a3
{
  if (a3)
  {
    if ([a3 isEqual:self->intlCurrencySymbol_])
    {
      return;
    }

    InstanceWithNSString = JavaUtilCurrency_getInstanceWithNSString_(a3);
    JreStrongAssign(&self->currency_, InstanceWithNSString);
    currency = self->currency_;
    if (!currency)
    {
      JreThrowNullPointerException();
    }

    JreStrongAssign(&self->currencySymbol_, [(JavaUtilCurrency *)currency getSymbolWithJavaUtilLocale:self->locale_]);
    p_intlCurrencySymbol = &self->intlCurrencySymbol_;
    v6 = a3;
  }

  else
  {
    JreStrongAssign(&self->currency_, 0);
    p_intlCurrencySymbol = &self->intlCurrencySymbol_;
    v6 = 0;
  }

  JreStrongAssign(p_intlCurrencySymbol, v6);
}

- (void)setExponentSeparatorWithNSString:(id)a3
{
  if (!a3)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"value == null");
    objc_exception_throw(v5);
  }

  p_exponentSeparator = &self->exponentSeparator_;

  JreStrongAssign(p_exponentSeparator, a3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaTextDecimalFormatSymbols;
  [(JavaTextDecimalFormatSymbols *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(JavaTextDecimalFormatSymbols *)self clone];

  return v3;
}

@end