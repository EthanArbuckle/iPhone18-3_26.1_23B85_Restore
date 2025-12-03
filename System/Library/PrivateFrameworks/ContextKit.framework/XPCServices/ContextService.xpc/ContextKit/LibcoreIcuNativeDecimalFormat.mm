@interface LibcoreIcuNativeDecimalFormat
+ (id)openWithNSString:(id)string withNSString:(id)sString withChar:(unsigned __int16)char withChar:(unsigned __int16)withChar withNSString:(id)nSString withChar:(unsigned __int16)a8 withNSString:(id)withNSString withNSString:(id)self0 withChar:(unsigned __int16)self1 withChar:(unsigned __int16)self2 withNSString:(id)self3 withChar:(unsigned __int16)self4 withChar:(unsigned __int16)self5 withChar:(unsigned __int16)self6 withChar:(unsigned __int16)self7;
- (BOOL)isEqual:(id)equal;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formatBigDecimalWithJavaMathBigDecimal:(id)decimal withJavaTextFieldPosition:(id)position;
- (id)formatBigIntegerWithJavaMathBigInteger:(id)integer withJavaTextFieldPosition:(id)position;
- (id)formatDoubleWithDouble:(double)double withJavaTextFieldPosition:(id)position;
- (id)formatLongWithLong:(int64_t)long withJavaTextFieldPosition:(id)position;
- (id)formatToCharacterIteratorWithId:(id)id;
- (int)getMultiplier;
- (void)applyLocalizedPatternWithNSString:(id)string;
- (void)applyPatternWithNSString:(id)string;
- (void)close;
- (void)dealloc;
- (void)setCurrencyWithJavaUtilCurrency:(id)currency;
- (void)setDecimalFormatSymbolsWithJavaTextDecimalFormatSymbols:(id)symbols;
- (void)setDecimalFormatSymbolsWithLibcoreIcuLocaleData:(id)data;
- (void)setMultiplierWithInt:(int)int;
- (void)setNegativePrefixWithNSString:(id)string;
- (void)setNegativeSuffixWithNSString:(id)string;
- (void)setPositivePrefixWithNSString:(id)string;
- (void)setPositiveSuffixWithNSString:(id)string;
- (void)setRoundingModeWithJavaMathRoundingModeEnum:(id)enum withDouble:(double)double;
@end

@implementation LibcoreIcuNativeDecimalFormat

- (void)close
{
  objc_sync_enter(self);
  if (self->nsFormatter_)
  {
    JreStrongAssign(&self->nsFormatter_, 0);
  }

  objc_sync_exit(self);
}

- (void)dealloc
{
  [(LibcoreIcuNativeDecimalFormat *)self close];

  v3.receiver = self;
  v3.super_class = LibcoreIcuNativeDecimalFormat;
  [(LibcoreIcuNativeDecimalFormat *)&v3 dealloc];
}

- (id)clone
{
  v5.receiver = self;
  v5.super_class = LibcoreIcuNativeDecimalFormat;
  clone = [(LibcoreIcuNativeDecimalFormat *)&v5 clone];
  objc_opt_class();
  if (!clone)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssign(clone + 1, [self->nsFormatter_ copyWithZone:0]);
  JreStrongAssign(clone + 2, self->lastPattern_);
  return clone;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_25;
  }

  objc_opt_class();
  if (!equal)
  {
    goto LABEL_28;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (*(equal + 1) == self->nsFormatter_)
  {
LABEL_24:
    LOBYTE(v6) = 1;
    return v6;
  }

  toPattern = [equal toPattern];
  if (!toPattern)
  {
    goto LABEL_28;
  }

  v6 = [toPattern isEqual:{-[LibcoreIcuNativeDecimalFormat toPattern](self, "toPattern")}];
  if (!v6)
  {
    return v6;
  }

  isDecimalSeparatorAlwaysShown = [equal isDecimalSeparatorAlwaysShown];
  if (isDecimalSeparatorAlwaysShown != -[LibcoreIcuNativeDecimalFormat isDecimalSeparatorAlwaysShown](self, "isDecimalSeparatorAlwaysShown") || (v8 = [equal getGroupingSize], v8 != -[LibcoreIcuNativeDecimalFormat getGroupingSize](self, "getGroupingSize")) || (v9 = objc_msgSend(equal, "getMultiplier"), v9 != -[LibcoreIcuNativeDecimalFormat getMultiplier](self, "getMultiplier")))
  {
LABEL_25:
    LOBYTE(v6) = 0;
    return v6;
  }

  getNegativePrefix = [equal getNegativePrefix];
  if (!getNegativePrefix)
  {
    goto LABEL_28;
  }

  v6 = [getNegativePrefix isEqual:{-[LibcoreIcuNativeDecimalFormat getNegativePrefix](self, "getNegativePrefix")}];
  if (!v6)
  {
    return v6;
  }

  getNegativeSuffix = [equal getNegativeSuffix];
  if (!getNegativeSuffix)
  {
    goto LABEL_28;
  }

  v6 = [getNegativeSuffix isEqual:{-[LibcoreIcuNativeDecimalFormat getNegativeSuffix](self, "getNegativeSuffix")}];
  if (!v6)
  {
    return v6;
  }

  getPositivePrefix = [equal getPositivePrefix];
  if (!getPositivePrefix)
  {
    goto LABEL_28;
  }

  v6 = [getPositivePrefix isEqual:{-[LibcoreIcuNativeDecimalFormat getPositivePrefix](self, "getPositivePrefix")}];
  if (!v6)
  {
    return v6;
  }

  getPositiveSuffix = [equal getPositiveSuffix];
  if (!getPositiveSuffix)
  {
LABEL_28:
    JreThrowNullPointerException();
  }

  v6 = [getPositiveSuffix isEqual:{-[LibcoreIcuNativeDecimalFormat getPositiveSuffix](self, "getPositiveSuffix")}];
  if (!v6)
  {
    return v6;
  }

  getMaximumIntegerDigits = [equal getMaximumIntegerDigits];
  if (getMaximumIntegerDigits != [(LibcoreIcuNativeDecimalFormat *)self getMaximumIntegerDigits])
  {
    goto LABEL_25;
  }

  getMaximumFractionDigits = [equal getMaximumFractionDigits];
  if (getMaximumFractionDigits != [(LibcoreIcuNativeDecimalFormat *)self getMaximumFractionDigits])
  {
    goto LABEL_25;
  }

  getMinimumIntegerDigits = [equal getMinimumIntegerDigits];
  if (getMinimumIntegerDigits != [(LibcoreIcuNativeDecimalFormat *)self getMinimumIntegerDigits])
  {
    goto LABEL_25;
  }

  getMinimumFractionDigits = [equal getMinimumFractionDigits];
  if (getMinimumFractionDigits != [(LibcoreIcuNativeDecimalFormat *)self getMinimumFractionDigits])
  {
    goto LABEL_25;
  }

  isGroupingUsed = [equal isGroupingUsed];
  LOBYTE(v6) = isGroupingUsed ^ [(LibcoreIcuNativeDecimalFormat *)self isGroupingUsed]^ 1;
  return v6;
}

- (void)setDecimalFormatSymbolsWithJavaTextDecimalFormatSymbols:(id)symbols
{
  if (!symbols)
  {
    JreThrowNullPointerException();
  }

  nsFormatter = self->nsFormatter_;
  getCurrencySymbol = [symbols getCurrencySymbol];
  getDecimalSeparator = [symbols getDecimalSeparator];
  [symbols getDigit];
  getExponentSeparator = [symbols getExponentSeparator];
  getGroupingSeparator = [symbols getGroupingSeparator];
  getInfinity = [symbols getInfinity];
  getInternationalCurrencySymbol = [symbols getInternationalCurrencySymbol];
  getMinusSign = [symbols getMinusSign];
  getMonetaryDecimalSeparator = [symbols getMonetaryDecimalSeparator];
  getNaN = [symbols getNaN];
  [symbols getPatternSeparator];
  getPercent = [symbols getPercent];
  getPerMill = [symbols getPerMill];
  WORD2(v14) = [symbols getZeroDigit];
  WORD1(v14) = getPerMill;
  LOWORD(v14) = getPercent;
  LOWORD(v13) = getMonetaryDecimalSeparator;
  sub_1001EEEAC(nsFormatter, getCurrencySymbol, getDecimalSeparator, getExponentSeparator, getGroupingSeparator, getInfinity, getInternationalCurrencySymbol, getMinusSign, v13, getNaN, v14);
}

- (void)setDecimalFormatSymbolsWithLibcoreIcuLocaleData:(id)data
{
  if (!data)
  {
    JreThrowNullPointerException();
  }

  WORD2(v4) = *(data + 112);
  LODWORD(v4) = *(data + 58);
  LOWORD(v3) = *(data + 118);
  sub_1001EEEAC(self->nsFormatter_, *(data + 33), *(data + 113), *(data + 30), *(data + 114), *(data + 31), *(data + 34), *(data + 119), v3, *(data + 32), v4);
}

- (id)formatBigDecimalWithJavaMathBigDecimal:(id)decimal withJavaTextFieldPosition:(id)position
{
  if (atomic_load_explicit(LibcoreIcuNativeDecimalFormat_FieldPositionIterator__initialized, memory_order_acquire))
  {
    if (!decimal)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1001F08BC();
    if (!decimal)
    {
LABEL_8:
      JreThrowNullPointerException();
    }
  }

  toPlainString = [decimal toPlainString];
  if (!toPlainString)
  {
    goto LABEL_8;
  }

  return [toPlainString toCharArray];
}

- (id)formatBigIntegerWithJavaMathBigInteger:(id)integer withJavaTextFieldPosition:(id)position
{
  if (atomic_load_explicit(LibcoreIcuNativeDecimalFormat_FieldPositionIterator__initialized, memory_order_acquire))
  {
    if (!integer)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1001F08BC();
    if (!integer)
    {
LABEL_8:
      JreThrowNullPointerException();
    }
  }

  v5 = [integer description];
  if (!v5)
  {
    goto LABEL_8;
  }

  return [v5 toCharArray];
}

- (id)formatLongWithLong:(int64_t)long withJavaTextFieldPosition:(id)position
{
  if ((atomic_load_explicit(LibcoreIcuNativeDecimalFormat_FieldPositionIterator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001F08BC();
  }

  nsFormatter = self->nsFormatter_;

  return sub_1001EF224(nsFormatter, long);
}

- (id)formatDoubleWithDouble:(double)double withJavaTextFieldPosition:(id)position
{
  if ((atomic_load_explicit(LibcoreIcuNativeDecimalFormat_FieldPositionIterator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001F08BC();
  }

  nsFormatter = self->nsFormatter_;

  return sub_1001EF39C(nsFormatter, double);
}

- (void)applyLocalizedPatternWithNSString:(id)string
{
  sub_1001EF4F4(self->nsFormatter_, string);

  JreStrongAssign(&self->lastPattern_, 0);
}

- (void)applyPatternWithNSString:(id)string
{
  p_lastPattern = &self->lastPattern_;
  if (!self->lastPattern_)
  {
    goto LABEL_4;
  }

  if (!string)
  {
    JreThrowNullPointerException();
  }

  if (([string isEqual:?] & 1) == 0)
  {
LABEL_4:
    sub_1001EF4F4(self->nsFormatter_, string);

    JreStrongAssign(p_lastPattern, string);
  }
}

- (id)formatToCharacterIteratorWithId:(id)id
{
  if (!id)
  {
    v14 = new_JavaLangNullPointerException_initWithNSString_(@"object == null");
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [id getClass];
    v22 = JreStrcat("$@", v15, v16, v17, v18, v19, v20, v21, @"object not a Number: ");
    v14 = new_JavaLangIllegalArgumentException_initWithNSString_(v22);
LABEL_24:
    objc_exception_throw(v14);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_21;
  }

  v5 = [LibcoreIcuNativeDecimalFormat_FieldPositionIterator alloc];
  v5->pos_ = -3;
  v6 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(LibcoreIcuNativeDecimalFormat *)self formatBigIntegerWithJavaMathBigInteger:id withJavaTextFieldPosition:0];
LABEL_10:
      v8 = v7;
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(LibcoreIcuNativeDecimalFormat *)self formatBigDecimalWithJavaMathBigDecimal:id withJavaTextFieldPosition:0];
      goto LABEL_10;
    }

LABEL_21:
    JreThrowClassCastException();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [id doubleValue];
    v10 = sub_1001EF39C(self->nsFormatter_, v9);
  }

  else
  {
    v10 = sub_1001EF224(self->nsFormatter_, [id longLongValue]);
  }

  v8 = v10;
LABEL_16:
  v11 = new_JavaTextAttributedString_initWithNSString_([NSString stringWithCharacters:v8]);
  if ([(LibcoreIcuNativeDecimalFormat_FieldPositionIterator *)v6 next])
  {
    do
    {
      field = [(LibcoreIcuNativeDecimalFormat_FieldPositionIterator *)v6 field];
      [(JavaTextAttributedString *)v11 addAttributeWithJavaTextAttributedCharacterIterator_Attribute:field withId:field withInt:[(LibcoreIcuNativeDecimalFormat_FieldPositionIterator *)v6 start] withInt:[(LibcoreIcuNativeDecimalFormat_FieldPositionIterator *)v6 limit]];
    }

    while ([(LibcoreIcuNativeDecimalFormat_FieldPositionIterator *)v6 next]);
  }

  return [(JavaTextAttributedString *)v11 getIterator];
}

- (int)getMultiplier
{
  multiplier = [self->nsFormatter_ multiplier];

  return [multiplier intValue];
}

- (void)setCurrencyWithJavaUtilCurrency:(id)currency
{
  [self->nsFormatter_ setCurrencySymbol:{objc_msgSend(currency, "getSymbol")}];
  nsFormatter = self->nsFormatter_;
  getCurrencyCode = [currency getCurrencyCode];

  [nsFormatter setCurrencyCode:getCurrencyCode];
}

- (void)setMultiplierWithInt:(int)int
{
  [self->nsFormatter_ setMultiplier:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:")}];
  v5 = JavaMathBigDecimal_valueOfWithLong_(int);

  JreStrongAssign(&self->multiplierBigDecimal_, v5);
}

- (void)setNegativePrefixWithNSString:(id)string
{
  self->negPrefNull_ = string == 0;
  if (string)
  {
    [self->nsFormatter_ setNegativePrefix:?];
  }
}

- (void)setNegativeSuffixWithNSString:(id)string
{
  self->negSuffNull_ = string == 0;
  if (string)
  {
    [self->nsFormatter_ setNegativeSuffix:?];
  }
}

- (void)setPositivePrefixWithNSString:(id)string
{
  self->posPrefNull_ = string == 0;
  if (string)
  {
    [self->nsFormatter_ setPositivePrefix:?];
  }
}

- (void)setPositiveSuffixWithNSString:(id)string
{
  self->posSuffNull_ = string == 0;
  if (string)
  {
    [self->nsFormatter_ setPositiveSuffix:?];
  }
}

- (void)setRoundingModeWithJavaMathRoundingModeEnum:(id)enum withDouble:(double)double
{
  ordinal = [enum ordinal];
  if (ordinal >= 7)
  {
    objc_exception_throw(objc_alloc_init(JavaLangAssertionError));
  }

  nsFormatter = self->nsFormatter_;
  [nsFormatter setRoundingMode:qword_100315038[ordinal]];
  v8 = [NSNumber numberWithDouble:double];

  [nsFormatter setRoundingIncrement:v8];
}

+ (id)openWithNSString:(id)string withNSString:(id)sString withChar:(unsigned __int16)char withChar:(unsigned __int16)withChar withNSString:(id)nSString withChar:(unsigned __int16)a8 withNSString:(id)withNSString withNSString:(id)self0 withChar:(unsigned __int16)self1 withChar:(unsigned __int16)self2 withNSString:(id)self3 withChar:(unsigned __int16)self4 withChar:(unsigned __int16)self5 withChar:(unsigned __int16)self6 withChar:(unsigned __int16)self7
{
  LOWORD(v21) = a15;
  HIWORD(v21) = a16;
  return sub_1001EFE78(string, sString, char, nSString, a8, withNSString, a10, a11, a12, a13, v21, a17);
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(LibcoreIcuNativeDecimalFormat *)self clone];

  return clone;
}

@end