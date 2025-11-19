@interface JavaTextDecimalFormat
+ (void)initialize;
- (BOOL)isDecimalSeparatorAlwaysShown;
- (BOOL)isEqual:(id)a3;
- (BOOL)isGroupingUsed;
- (BOOL)isParseBigDecimal;
- (BOOL)isParseIntegerOnly;
- (JavaTextDecimalFormat)formatWithDouble:(double)a3 withJavaLangStringBuffer:(id)a4 withJavaTextFieldPosition:(id)a5;
- (JavaTextDecimalFormat)formatWithId:(id)a3 withJavaLangStringBuffer:(id)a4 withJavaTextFieldPosition:(id)a5;
- (JavaTextDecimalFormat)formatWithLong:(int64_t)a3 withJavaLangStringBuffer:(id)a4 withJavaTextFieldPosition:(id)a5;
- (JavaTextDecimalFormat)initWithNSString:(id)a3;
- (id)clone;
- (id)formatToCharacterIteratorWithId:(id)a3;
- (id)getCurrency;
- (id)getDecimalFormatSymbols;
- (id)getNegativePrefix;
- (id)getNegativeSuffix;
- (id)getPositivePrefix;
- (id)getPositiveSuffix;
- (id)parseWithNSString:(id)a3 withJavaTextParsePosition:(id)a4;
- (id)toLocalizedPattern;
- (id)toPattern;
- (int)getGroupingSize;
- (int)getMultiplier;
- (unint64_t)hash;
- (void)applyLocalizedPatternWithNSString:(id)a3;
- (void)applyPatternWithNSString:(id)a3;
- (void)dealloc;
- (void)initNativeWithNSString:(id)a3;
- (void)setCurrencyWithJavaUtilCurrency:(id)a3;
- (void)setDecimalFormatSymbolsWithJavaTextDecimalFormatSymbols:(id)a3;
- (void)setNegativePrefixWithNSString:(id)a3;
- (void)setNegativeSuffixWithNSString:(id)a3;
- (void)setPositivePrefixWithNSString:(id)a3;
- (void)setPositiveSuffixWithNSString:(id)a3;
- (void)setRoundingModeWithJavaMathRoundingModeEnum:(id)a3;
@end

@implementation JavaTextDecimalFormat

- (JavaTextDecimalFormat)initWithNSString:(id)a3
{
  Default = JavaUtilLocale_getDefault();
  JavaTextDecimalFormat_initWithNSString_withJavaUtilLocale_(self, a3, Default);
  return self;
}

- (void)initNativeWithNSString:(id)a3
{
  v4 = new_LibcoreIcuNativeDecimalFormat_initWithNSString_withJavaTextDecimalFormatSymbols_(a3, *(&self->super.minimumFractionDigits_ + 1));
  JreStrongAssignAndConsume((&self->symbols_ + 4), v4);
  v5 = *(&self->symbols_ + 4);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v12.receiver = self;
  v12.super_class = JavaTextDecimalFormat;
  -[JavaTextNumberFormat setMaximumFractionDigitsWithInt:](&v12, "setMaximumFractionDigitsWithInt:", [v5 getMaximumFractionDigits]);
  v6 = [*(&self->symbols_ + 4) getMaximumIntegerDigits];
  v11.receiver = self;
  v11.super_class = JavaTextDecimalFormat;
  [(JavaTextNumberFormat *)&v11 setMaximumIntegerDigitsWithInt:v6];
  v7 = [*(&self->symbols_ + 4) getMinimumFractionDigits];
  v10.receiver = self;
  v10.super_class = JavaTextDecimalFormat;
  [(JavaTextNumberFormat *)&v10 setMinimumFractionDigitsWithInt:v7];
  v8 = [*(&self->symbols_ + 4) getMinimumIntegerDigits];
  v9.receiver = self;
  v9.super_class = JavaTextDecimalFormat;
  [(JavaTextNumberFormat *)&v9 setMinimumIntegerDigitsWithInt:v8];
}

- (void)applyLocalizedPatternWithNSString:(id)a3
{
  v4 = *(&self->symbols_ + 4);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [v4 applyLocalizedPatternWithNSString:a3];
}

- (void)applyPatternWithNSString:(id)a3
{
  v4 = *(&self->symbols_ + 4);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [v4 applyPatternWithNSString:a3];
}

- (id)clone
{
  v9.receiver = self;
  v9.super_class = JavaTextDecimalFormat;
  v3 = [(JavaTextNumberFormat *)&v9 clone];
  objc_opt_class();
  if (!v3)
  {
    goto LABEL_11;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  v4 = *(&self->symbols_ + 4);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = [v4 clone];
  objc_opt_class();
  if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    JreThrowClassCastException();
  }

  JreStrongAssign((v3 + 36), v5);
  v6 = *(&self->super.minimumFractionDigits_ + 1);
  if (!v6)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  v7 = [v6 clone];
  objc_opt_class();
  if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  JreStrongAssign((v3 + 28), v7);
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v7) = 1;
    return v7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if (!a3)
  {
    goto LABEL_17;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = *(&self->symbols_ + 4);
  v6 = *(a3 + 36);
  if (!v5)
  {
    if (!v6)
    {
      goto LABEL_12;
    }

LABEL_10:
    LOBYTE(v7) = 0;
    return v7;
  }

  v7 = [v5 isEqual:v6];
  if (!v7)
  {
    return v7;
  }

LABEL_12:
  v8 = [(JavaTextDecimalFormat *)self getDecimalFormatSymbols];
  if (!v8)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v9 = v8;
  v10 = [a3 getDecimalFormatSymbols];

  LOBYTE(v7) = [v9 isEqual:v10];
  return v7;
}

- (id)formatToCharacterIteratorWithId:(id)a3
{
  if (!a3)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"object == null");
    objc_exception_throw(v5);
  }

  v3 = *(&self->symbols_ + 4);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 formatToCharacterIteratorWithId:?];
}

- (JavaTextDecimalFormat)formatWithDouble:(double)a3 withJavaLangStringBuffer:(id)a4 withJavaTextFieldPosition:(id)a5
{
  sub_100265C90(a4, a5);
  v9 = *(&self->ndf_ + 4);
  if ((atomic_load_explicit(JavaMathRoundingModeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100164E08();
  }

  if (v9 == qword_100557E48)
  {
    if ((atomic_load_explicit(JavaMathRoundingModeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    [(JavaTextDecimalFormat *)self setRoundingModeWithJavaMathRoundingModeEnum:JavaMathRoundingModeEnum_values_[0]];
    v10 = new_JavaLangStringBuffer_init();
    v11 = [(JavaTextDecimalFormat *)self formatWithDouble:v10 withJavaLangStringBuffer:new_JavaTextFieldPosition_initWithInt_(0) withJavaTextFieldPosition:a3];
    if (!v11)
    {
      JreThrowNullPointerException();
    }

    v12 = [(JavaTextDecimalFormat *)v11 description];
    if ((atomic_load_explicit(JavaMathRoundingModeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    [(JavaTextDecimalFormat *)self setRoundingModeWithJavaMathRoundingModeEnum:qword_100557E18];
    v13 = new_JavaLangStringBuffer_init();
    v14 = [(JavaTextDecimalFormat *)self formatWithDouble:v13 withJavaLangStringBuffer:new_JavaTextFieldPosition_initWithInt_(0) withJavaTextFieldPosition:a3];
    if (!v14 || (v15 = [(JavaTextDecimalFormat *)v14 description], !v12))
    {
      JreThrowNullPointerException();
    }

    if (([v12 isEqual:v15] & 1) == 0)
    {
      v18 = new_JavaLangArithmeticException_initWithNSString_(@"rounding mode UNNECESSARY but rounding required");
      objc_exception_throw(v18);
    }

    if ((atomic_load_explicit(JavaMathRoundingModeEnum__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    [(JavaTextDecimalFormat *)self setRoundingModeWithJavaMathRoundingModeEnum:qword_100557E48];
  }

  if (!a4 || (v16 = *(&self->symbols_ + 4)) == 0)
  {
    JreThrowNullPointerException();
  }

  [a4 appendWithCharArray:{objc_msgSend(v16, "formatDoubleWithDouble:withJavaTextFieldPosition:", a5, a3)}];
  return a4;
}

- (JavaTextDecimalFormat)formatWithLong:(int64_t)a3 withJavaLangStringBuffer:(id)a4 withJavaTextFieldPosition:(id)a5
{
  sub_100265C90(a4, a5);
  if (!a4 || (v9 = *(&self->symbols_ + 4)) == 0)
  {
    JreThrowNullPointerException();
  }

  [a4 appendWithCharArray:{objc_msgSend(v9, "formatLongWithLong:withJavaTextFieldPosition:", a3, a5)}];
  return a4;
}

- (JavaTextDecimalFormat)formatWithId:(id)a3 withJavaLangStringBuffer:(id)a4 withJavaTextFieldPosition:(id)a5
{
  v6 = a4;
  sub_100265C90(a4, a5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!a3)
    {
      goto LABEL_19;
    }

    if (objc_opt_isKindOfClass())
    {
      v9 = [a3 bitLength];
      v10 = *(&self->symbols_ + 4);
      if (v9 > 63)
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = [v10 formatBigIntegerWithJavaMathBigInteger:a3 withJavaTextFieldPosition:a5];
      }

      else
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = [v10 formatLongWithLong:objc_msgSend(a3 withJavaTextFieldPosition:{"longLongValue"), a5}];
      }

      v13 = v11;
      if (v6)
      {
        goto LABEL_17;
      }

LABEL_19:
      JreThrowNullPointerException();
    }

LABEL_20:
    JreThrowClassCastException();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v6)
    {
      goto LABEL_19;
    }

    v12 = *(&self->symbols_ + 4);
    if (!v12)
    {
      goto LABEL_19;
    }

    objc_opt_class();
    if (!a3 || (objc_opt_isKindOfClass() & 1) != 0)
    {
      v13 = [v12 formatBigDecimalWithJavaMathBigDecimal:a3 withJavaTextFieldPosition:a5];
LABEL_17:
      [(JavaTextDecimalFormat *)v6 appendWithCharArray:v13];
      return v6;
    }

    goto LABEL_20;
  }

  v15.receiver = self;
  v15.super_class = JavaTextDecimalFormat;
  return [(JavaTextNumberFormat *)&v15 formatWithId:a3 withJavaLangStringBuffer:v6 withJavaTextFieldPosition:a5];
}

- (id)getDecimalFormatSymbols
{
  v2 = *(&self->super.minimumFractionDigits_ + 1);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = [v2 clone];
  objc_opt_class();
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v3;
}

- (id)getCurrency
{
  v3 = *(&self->super.minimumFractionDigits_ + 1);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 getCurrency];
}

- (int)getGroupingSize
{
  v3 = *(&self->symbols_ + 4);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 getGroupingSize];
}

- (int)getMultiplier
{
  v3 = *(&self->symbols_ + 4);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 getMultiplier];
}

- (id)getNegativePrefix
{
  v3 = *(&self->symbols_ + 4);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 getNegativePrefix];
}

- (id)getNegativeSuffix
{
  v3 = *(&self->symbols_ + 4);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 getNegativeSuffix];
}

- (id)getPositivePrefix
{
  v3 = *(&self->symbols_ + 4);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 getPositivePrefix];
}

- (id)getPositiveSuffix
{
  v3 = *(&self->symbols_ + 4);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 getPositiveSuffix];
}

- (unint64_t)hash
{
  v2 = [(JavaTextDecimalFormat *)self getPositivePrefix];
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return [v2 hash];
}

- (BOOL)isDecimalSeparatorAlwaysShown
{
  v3 = *(&self->symbols_ + 4);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 isDecimalSeparatorAlwaysShown];
}

- (BOOL)isParseBigDecimal
{
  v3 = *(&self->symbols_ + 4);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 isParseBigDecimal];
}

- (BOOL)isParseIntegerOnly
{
  v3 = *(&self->symbols_ + 4);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 isParseIntegerOnly];
}

- (id)parseWithNSString:(id)a3 withJavaTextParsePosition:(id)a4
{
  v5 = *(&self->symbols_ + 4);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = [v5 parseWithNSString:a3 withJavaTextParsePosition:a4];
  if (!v6)
  {
    return v6;
  }

  if ([(JavaTextDecimalFormat *)self isParseBigDecimal])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = new_JavaMathBigDecimal_initWithLong_([v6 longLongValue]);
LABEL_16:

      return v7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_26;
      }

      if (([v6 isInfinite] & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (([v6 isNaN] & 1) == 0)
          {
LABEL_15:
            v7 = new_JavaMathBigDecimal_initWithNSString_([v6 description]);
            goto LABEL_16;
          }

          goto LABEL_14;
        }

LABEL_26:
        JreThrowClassCastException();
      }
    }

LABEL_14:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_15;
    }

    return v6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v6 doubleValue];
    v7 = new_JavaLangDouble_initWithDouble_(v8);
    goto LABEL_16;
  }

  if (!-[JavaTextDecimalFormat isParseIntegerOnly](self, "isParseIntegerOnly") || ![v6 isEqual:qword_1005568B8])
  {
    return v6;
  }

  return JavaLangLong_valueOfWithLong_(0);
}

- (void)setDecimalFormatSymbolsWithJavaTextDecimalFormatSymbols:(id)a3
{
  if (a3)
  {
    v4 = [a3 clone];
    objc_opt_class();
    if (v4 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    JreStrongAssign((&self->super.minimumFractionDigits_ + 1), v4);
    v5 = *(&self->symbols_ + 4);
    if (!v5)
    {
      JreThrowNullPointerException();
    }

    v6 = *(&self->super.minimumFractionDigits_ + 1);

    [v5 setDecimalFormatSymbolsWithJavaTextDecimalFormatSymbols:v6];
  }
}

- (void)setCurrencyWithJavaUtilCurrency:(id)a3
{
  v3 = *(&self->symbols_ + 4);
  if (!v3 || !a3 || ([v3 setCurrencyWithJavaUtilCurrency:{JavaUtilCurrency_getInstanceWithNSString_(objc_msgSend(a3, "getCurrencyCode"))}], (v6 = *(&self->super.minimumFractionDigits_ + 1)) == 0))
  {
    JreThrowNullPointerException();
  }

  [v6 setCurrencyWithJavaUtilCurrency:a3];
}

- (BOOL)isGroupingUsed
{
  v3 = *(&self->symbols_ + 4);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 isGroupingUsed];
}

- (void)setNegativePrefixWithNSString:(id)a3
{
  v4 = *(&self->symbols_ + 4);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [v4 setNegativePrefixWithNSString:a3];
}

- (void)setNegativeSuffixWithNSString:(id)a3
{
  v4 = *(&self->symbols_ + 4);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [v4 setNegativeSuffixWithNSString:a3];
}

- (void)setPositivePrefixWithNSString:(id)a3
{
  v4 = *(&self->symbols_ + 4);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [v4 setPositivePrefixWithNSString:a3];
}

- (void)setPositiveSuffixWithNSString:(id)a3
{
  v4 = *(&self->symbols_ + 4);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [v4 setPositiveSuffixWithNSString:a3];
}

- (id)toLocalizedPattern
{
  v3 = *(&self->symbols_ + 4);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 toLocalizedPattern];
}

- (id)toPattern
{
  v3 = *(&self->symbols_ + 4);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 toPattern];
}

- (void)setRoundingModeWithJavaMathRoundingModeEnum:(id)a3
{
  if (!a3)
  {
    v9 = new_JavaLangNullPointerException_initWithNSString_(@"roundingMode == null");
    objc_exception_throw(v9);
  }

  JreStrongAssign((&self->ndf_ + 4), a3);
  if ((atomic_load_explicit(JavaMathRoundingModeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100164E08();
  }

  if (qword_100557E48 != a3)
  {
    v5 = JavaLangMath_maxWithInt_withInt_(0, [(JavaTextNumberFormat *)self getMaximumFractionDigits]);
    v6 = JavaLangMath_powWithDouble_withDouble_(10.0, v5);
    v7 = *(&self->symbols_ + 4);
    if (!v7)
    {
      JreThrowNullPointerException();
    }

    v8 = 1.0 / v6;

    [v7 setRoundingModeWithJavaMathRoundingModeEnum:a3 withDouble:v8];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaTextDecimalFormat;
  [(JavaTextDecimalFormat *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = new_JavaLangDouble_initWithDouble_(-0.0);
    JreStrongAssignAndConsume(&qword_1005568B8, v2);
    atomic_store(1u, JavaTextDecimalFormat__initialized);
  }
}

@end