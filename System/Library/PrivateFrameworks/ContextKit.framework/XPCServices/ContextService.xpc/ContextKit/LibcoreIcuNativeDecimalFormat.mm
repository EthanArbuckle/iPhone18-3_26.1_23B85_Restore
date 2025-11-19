@interface LibcoreIcuNativeDecimalFormat
+ (id)openWithNSString:(id)a3 withNSString:(id)a4 withChar:(unsigned __int16)a5 withChar:(unsigned __int16)a6 withNSString:(id)a7 withChar:(unsigned __int16)a8 withNSString:(id)a9 withNSString:(id)a10 withChar:(unsigned __int16)a11 withChar:(unsigned __int16)a12 withNSString:(id)a13 withChar:(unsigned __int16)a14 withChar:(unsigned __int16)a15 withChar:(unsigned __int16)a16 withChar:(unsigned __int16)a17;
- (BOOL)isEqual:(id)a3;
- (id)clone;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formatBigDecimalWithJavaMathBigDecimal:(id)a3 withJavaTextFieldPosition:(id)a4;
- (id)formatBigIntegerWithJavaMathBigInteger:(id)a3 withJavaTextFieldPosition:(id)a4;
- (id)formatDoubleWithDouble:(double)a3 withJavaTextFieldPosition:(id)a4;
- (id)formatLongWithLong:(int64_t)a3 withJavaTextFieldPosition:(id)a4;
- (id)formatToCharacterIteratorWithId:(id)a3;
- (int)getMultiplier;
- (void)applyLocalizedPatternWithNSString:(id)a3;
- (void)applyPatternWithNSString:(id)a3;
- (void)close;
- (void)dealloc;
- (void)setCurrencyWithJavaUtilCurrency:(id)a3;
- (void)setDecimalFormatSymbolsWithJavaTextDecimalFormatSymbols:(id)a3;
- (void)setDecimalFormatSymbolsWithLibcoreIcuLocaleData:(id)a3;
- (void)setMultiplierWithInt:(int)a3;
- (void)setNegativePrefixWithNSString:(id)a3;
- (void)setNegativeSuffixWithNSString:(id)a3;
- (void)setPositivePrefixWithNSString:(id)a3;
- (void)setPositiveSuffixWithNSString:(id)a3;
- (void)setRoundingModeWithJavaMathRoundingModeEnum:(id)a3 withDouble:(double)a4;
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
  v3 = [(LibcoreIcuNativeDecimalFormat *)&v5 clone];
  objc_opt_class();
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssign(v3 + 1, [self->nsFormatter_ copyWithZone:0]);
  JreStrongAssign(v3 + 2, self->lastPattern_);
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_25;
  }

  objc_opt_class();
  if (!a3)
  {
    goto LABEL_28;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (*(a3 + 1) == self->nsFormatter_)
  {
LABEL_24:
    LOBYTE(v6) = 1;
    return v6;
  }

  v5 = [a3 toPattern];
  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = [v5 isEqual:{-[LibcoreIcuNativeDecimalFormat toPattern](self, "toPattern")}];
  if (!v6)
  {
    return v6;
  }

  v7 = [a3 isDecimalSeparatorAlwaysShown];
  if (v7 != -[LibcoreIcuNativeDecimalFormat isDecimalSeparatorAlwaysShown](self, "isDecimalSeparatorAlwaysShown") || (v8 = [a3 getGroupingSize], v8 != -[LibcoreIcuNativeDecimalFormat getGroupingSize](self, "getGroupingSize")) || (v9 = objc_msgSend(a3, "getMultiplier"), v9 != -[LibcoreIcuNativeDecimalFormat getMultiplier](self, "getMultiplier")))
  {
LABEL_25:
    LOBYTE(v6) = 0;
    return v6;
  }

  v10 = [a3 getNegativePrefix];
  if (!v10)
  {
    goto LABEL_28;
  }

  v6 = [v10 isEqual:{-[LibcoreIcuNativeDecimalFormat getNegativePrefix](self, "getNegativePrefix")}];
  if (!v6)
  {
    return v6;
  }

  v11 = [a3 getNegativeSuffix];
  if (!v11)
  {
    goto LABEL_28;
  }

  v6 = [v11 isEqual:{-[LibcoreIcuNativeDecimalFormat getNegativeSuffix](self, "getNegativeSuffix")}];
  if (!v6)
  {
    return v6;
  }

  v12 = [a3 getPositivePrefix];
  if (!v12)
  {
    goto LABEL_28;
  }

  v6 = [v12 isEqual:{-[LibcoreIcuNativeDecimalFormat getPositivePrefix](self, "getPositivePrefix")}];
  if (!v6)
  {
    return v6;
  }

  v13 = [a3 getPositiveSuffix];
  if (!v13)
  {
LABEL_28:
    JreThrowNullPointerException();
  }

  v6 = [v13 isEqual:{-[LibcoreIcuNativeDecimalFormat getPositiveSuffix](self, "getPositiveSuffix")}];
  if (!v6)
  {
    return v6;
  }

  v14 = [a3 getMaximumIntegerDigits];
  if (v14 != [(LibcoreIcuNativeDecimalFormat *)self getMaximumIntegerDigits])
  {
    goto LABEL_25;
  }

  v15 = [a3 getMaximumFractionDigits];
  if (v15 != [(LibcoreIcuNativeDecimalFormat *)self getMaximumFractionDigits])
  {
    goto LABEL_25;
  }

  v16 = [a3 getMinimumIntegerDigits];
  if (v16 != [(LibcoreIcuNativeDecimalFormat *)self getMinimumIntegerDigits])
  {
    goto LABEL_25;
  }

  v17 = [a3 getMinimumFractionDigits];
  if (v17 != [(LibcoreIcuNativeDecimalFormat *)self getMinimumFractionDigits])
  {
    goto LABEL_25;
  }

  v18 = [a3 isGroupingUsed];
  LOBYTE(v6) = v18 ^ [(LibcoreIcuNativeDecimalFormat *)self isGroupingUsed]^ 1;
  return v6;
}

- (void)setDecimalFormatSymbolsWithJavaTextDecimalFormatSymbols:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  nsFormatter = self->nsFormatter_;
  v16 = [a3 getCurrencySymbol];
  v15 = [a3 getDecimalSeparator];
  [a3 getDigit];
  v4 = [a3 getExponentSeparator];
  v5 = [a3 getGroupingSeparator];
  v6 = [a3 getInfinity];
  v7 = [a3 getInternationalCurrencySymbol];
  v8 = [a3 getMinusSign];
  v9 = [a3 getMonetaryDecimalSeparator];
  v10 = [a3 getNaN];
  [a3 getPatternSeparator];
  v11 = [a3 getPercent];
  v12 = [a3 getPerMill];
  WORD2(v14) = [a3 getZeroDigit];
  WORD1(v14) = v12;
  LOWORD(v14) = v11;
  LOWORD(v13) = v9;
  sub_1001EEEAC(nsFormatter, v16, v15, v4, v5, v6, v7, v8, v13, v10, v14);
}

- (void)setDecimalFormatSymbolsWithLibcoreIcuLocaleData:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  WORD2(v4) = *(a3 + 112);
  LODWORD(v4) = *(a3 + 58);
  LOWORD(v3) = *(a3 + 118);
  sub_1001EEEAC(self->nsFormatter_, *(a3 + 33), *(a3 + 113), *(a3 + 30), *(a3 + 114), *(a3 + 31), *(a3 + 34), *(a3 + 119), v3, *(a3 + 32), v4);
}

- (id)formatBigDecimalWithJavaMathBigDecimal:(id)a3 withJavaTextFieldPosition:(id)a4
{
  if (atomic_load_explicit(LibcoreIcuNativeDecimalFormat_FieldPositionIterator__initialized, memory_order_acquire))
  {
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1001F08BC();
    if (!a3)
    {
LABEL_8:
      JreThrowNullPointerException();
    }
  }

  v5 = [a3 toPlainString];
  if (!v5)
  {
    goto LABEL_8;
  }

  return [v5 toCharArray];
}

- (id)formatBigIntegerWithJavaMathBigInteger:(id)a3 withJavaTextFieldPosition:(id)a4
{
  if (atomic_load_explicit(LibcoreIcuNativeDecimalFormat_FieldPositionIterator__initialized, memory_order_acquire))
  {
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1001F08BC();
    if (!a3)
    {
LABEL_8:
      JreThrowNullPointerException();
    }
  }

  v5 = [a3 description];
  if (!v5)
  {
    goto LABEL_8;
  }

  return [v5 toCharArray];
}

- (id)formatLongWithLong:(int64_t)a3 withJavaTextFieldPosition:(id)a4
{
  if ((atomic_load_explicit(LibcoreIcuNativeDecimalFormat_FieldPositionIterator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001F08BC();
  }

  nsFormatter = self->nsFormatter_;

  return sub_1001EF224(nsFormatter, a3);
}

- (id)formatDoubleWithDouble:(double)a3 withJavaTextFieldPosition:(id)a4
{
  if ((atomic_load_explicit(LibcoreIcuNativeDecimalFormat_FieldPositionIterator__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001F08BC();
  }

  nsFormatter = self->nsFormatter_;

  return sub_1001EF39C(nsFormatter, a3);
}

- (void)applyLocalizedPatternWithNSString:(id)a3
{
  sub_1001EF4F4(self->nsFormatter_, a3);

  JreStrongAssign(&self->lastPattern_, 0);
}

- (void)applyPatternWithNSString:(id)a3
{
  p_lastPattern = &self->lastPattern_;
  if (!self->lastPattern_)
  {
    goto LABEL_4;
  }

  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if (([a3 isEqual:?] & 1) == 0)
  {
LABEL_4:
    sub_1001EF4F4(self->nsFormatter_, a3);

    JreStrongAssign(p_lastPattern, a3);
  }
}

- (id)formatToCharacterIteratorWithId:(id)a3
{
  if (!a3)
  {
    v14 = new_JavaLangNullPointerException_initWithNSString_(@"object == null");
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [a3 getClass];
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
      v7 = [(LibcoreIcuNativeDecimalFormat *)self formatBigIntegerWithJavaMathBigInteger:a3 withJavaTextFieldPosition:0];
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
      v7 = [(LibcoreIcuNativeDecimalFormat *)self formatBigDecimalWithJavaMathBigDecimal:a3 withJavaTextFieldPosition:0];
      goto LABEL_10;
    }

LABEL_21:
    JreThrowClassCastException();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [a3 doubleValue];
    v10 = sub_1001EF39C(self->nsFormatter_, v9);
  }

  else
  {
    v10 = sub_1001EF224(self->nsFormatter_, [a3 longLongValue]);
  }

  v8 = v10;
LABEL_16:
  v11 = new_JavaTextAttributedString_initWithNSString_([NSString stringWithCharacters:v8]);
  if ([(LibcoreIcuNativeDecimalFormat_FieldPositionIterator *)v6 next])
  {
    do
    {
      v12 = [(LibcoreIcuNativeDecimalFormat_FieldPositionIterator *)v6 field];
      [(JavaTextAttributedString *)v11 addAttributeWithJavaTextAttributedCharacterIterator_Attribute:v12 withId:v12 withInt:[(LibcoreIcuNativeDecimalFormat_FieldPositionIterator *)v6 start] withInt:[(LibcoreIcuNativeDecimalFormat_FieldPositionIterator *)v6 limit]];
    }

    while ([(LibcoreIcuNativeDecimalFormat_FieldPositionIterator *)v6 next]);
  }

  return [(JavaTextAttributedString *)v11 getIterator];
}

- (int)getMultiplier
{
  v2 = [self->nsFormatter_ multiplier];

  return [v2 intValue];
}

- (void)setCurrencyWithJavaUtilCurrency:(id)a3
{
  [self->nsFormatter_ setCurrencySymbol:{objc_msgSend(a3, "getSymbol")}];
  nsFormatter = self->nsFormatter_;
  v6 = [a3 getCurrencyCode];

  [nsFormatter setCurrencyCode:v6];
}

- (void)setMultiplierWithInt:(int)a3
{
  [self->nsFormatter_ setMultiplier:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:")}];
  v5 = JavaMathBigDecimal_valueOfWithLong_(a3);

  JreStrongAssign(&self->multiplierBigDecimal_, v5);
}

- (void)setNegativePrefixWithNSString:(id)a3
{
  self->negPrefNull_ = a3 == 0;
  if (a3)
  {
    [self->nsFormatter_ setNegativePrefix:?];
  }
}

- (void)setNegativeSuffixWithNSString:(id)a3
{
  self->negSuffNull_ = a3 == 0;
  if (a3)
  {
    [self->nsFormatter_ setNegativeSuffix:?];
  }
}

- (void)setPositivePrefixWithNSString:(id)a3
{
  self->posPrefNull_ = a3 == 0;
  if (a3)
  {
    [self->nsFormatter_ setPositivePrefix:?];
  }
}

- (void)setPositiveSuffixWithNSString:(id)a3
{
  self->posSuffNull_ = a3 == 0;
  if (a3)
  {
    [self->nsFormatter_ setPositiveSuffix:?];
  }
}

- (void)setRoundingModeWithJavaMathRoundingModeEnum:(id)a3 withDouble:(double)a4
{
  v6 = [a3 ordinal];
  if (v6 >= 7)
  {
    objc_exception_throw(objc_alloc_init(JavaLangAssertionError));
  }

  nsFormatter = self->nsFormatter_;
  [nsFormatter setRoundingMode:qword_100315038[v6]];
  v8 = [NSNumber numberWithDouble:a4];

  [nsFormatter setRoundingIncrement:v8];
}

+ (id)openWithNSString:(id)a3 withNSString:(id)a4 withChar:(unsigned __int16)a5 withChar:(unsigned __int16)a6 withNSString:(id)a7 withChar:(unsigned __int16)a8 withNSString:(id)a9 withNSString:(id)a10 withChar:(unsigned __int16)a11 withChar:(unsigned __int16)a12 withNSString:(id)a13 withChar:(unsigned __int16)a14 withChar:(unsigned __int16)a15 withChar:(unsigned __int16)a16 withChar:(unsigned __int16)a17
{
  LOWORD(v21) = a15;
  HIWORD(v21) = a16;
  return sub_1001EFE78(a3, a4, a5, a7, a8, a9, a10, a11, a12, a13, v21, a17);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(LibcoreIcuNativeDecimalFormat *)self clone];

  return v3;
}

@end