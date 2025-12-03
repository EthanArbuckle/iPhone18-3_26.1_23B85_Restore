@interface JavaTextDecimalFormat
+ (void)initialize;
- (BOOL)isDecimalSeparatorAlwaysShown;
- (BOOL)isEqual:(id)equal;
- (BOOL)isGroupingUsed;
- (BOOL)isParseBigDecimal;
- (BOOL)isParseIntegerOnly;
- (JavaTextDecimalFormat)formatWithDouble:(double)double withJavaLangStringBuffer:(id)buffer withJavaTextFieldPosition:(id)position;
- (JavaTextDecimalFormat)formatWithId:(id)id withJavaLangStringBuffer:(id)buffer withJavaTextFieldPosition:(id)position;
- (JavaTextDecimalFormat)formatWithLong:(int64_t)long withJavaLangStringBuffer:(id)buffer withJavaTextFieldPosition:(id)position;
- (JavaTextDecimalFormat)initWithNSString:(id)string;
- (id)clone;
- (id)formatToCharacterIteratorWithId:(id)id;
- (id)getCurrency;
- (id)getDecimalFormatSymbols;
- (id)getNegativePrefix;
- (id)getNegativeSuffix;
- (id)getPositivePrefix;
- (id)getPositiveSuffix;
- (id)parseWithNSString:(id)string withJavaTextParsePosition:(id)position;
- (id)toLocalizedPattern;
- (id)toPattern;
- (int)getGroupingSize;
- (int)getMultiplier;
- (unint64_t)hash;
- (void)applyLocalizedPatternWithNSString:(id)string;
- (void)applyPatternWithNSString:(id)string;
- (void)dealloc;
- (void)initNativeWithNSString:(id)string;
- (void)setCurrencyWithJavaUtilCurrency:(id)currency;
- (void)setDecimalFormatSymbolsWithJavaTextDecimalFormatSymbols:(id)symbols;
- (void)setNegativePrefixWithNSString:(id)string;
- (void)setNegativeSuffixWithNSString:(id)string;
- (void)setPositivePrefixWithNSString:(id)string;
- (void)setPositiveSuffixWithNSString:(id)string;
- (void)setRoundingModeWithJavaMathRoundingModeEnum:(id)enum;
@end

@implementation JavaTextDecimalFormat

- (JavaTextDecimalFormat)initWithNSString:(id)string
{
  Default = JavaUtilLocale_getDefault();
  JavaTextDecimalFormat_initWithNSString_withJavaUtilLocale_(self, string, Default);
  return self;
}

- (void)initNativeWithNSString:(id)string
{
  v4 = new_LibcoreIcuNativeDecimalFormat_initWithNSString_withJavaTextDecimalFormatSymbols_(string, *(&self->super.minimumFractionDigits_ + 1));
  JreStrongAssignAndConsume((&self->symbols_ + 4), v4);
  v5 = *(&self->symbols_ + 4);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v12.receiver = self;
  v12.super_class = JavaTextDecimalFormat;
  -[JavaTextNumberFormat setMaximumFractionDigitsWithInt:](&v12, "setMaximumFractionDigitsWithInt:", [v5 getMaximumFractionDigits]);
  getMaximumIntegerDigits = [*(&self->symbols_ + 4) getMaximumIntegerDigits];
  v11.receiver = self;
  v11.super_class = JavaTextDecimalFormat;
  [(JavaTextNumberFormat *)&v11 setMaximumIntegerDigitsWithInt:getMaximumIntegerDigits];
  getMinimumFractionDigits = [*(&self->symbols_ + 4) getMinimumFractionDigits];
  v10.receiver = self;
  v10.super_class = JavaTextDecimalFormat;
  [(JavaTextNumberFormat *)&v10 setMinimumFractionDigitsWithInt:getMinimumFractionDigits];
  getMinimumIntegerDigits = [*(&self->symbols_ + 4) getMinimumIntegerDigits];
  v9.receiver = self;
  v9.super_class = JavaTextDecimalFormat;
  [(JavaTextNumberFormat *)&v9 setMinimumIntegerDigitsWithInt:getMinimumIntegerDigits];
}

- (void)applyLocalizedPatternWithNSString:(id)string
{
  v4 = *(&self->symbols_ + 4);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [v4 applyLocalizedPatternWithNSString:string];
}

- (void)applyPatternWithNSString:(id)string
{
  v4 = *(&self->symbols_ + 4);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [v4 applyPatternWithNSString:string];
}

- (id)clone
{
  v9.receiver = self;
  v9.super_class = JavaTextDecimalFormat;
  clone = [(JavaTextNumberFormat *)&v9 clone];
  objc_opt_class();
  if (!clone)
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

  clone2 = [v4 clone];
  objc_opt_class();
  if (clone2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    JreThrowClassCastException();
  }

  JreStrongAssign((clone + 36), clone2);
  v6 = *(&self->super.minimumFractionDigits_ + 1);
  if (!v6)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  clone3 = [v6 clone];
  objc_opt_class();
  if (clone3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  JreStrongAssign((clone + 28), clone3);
  return clone;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
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
  if (!equal)
  {
    goto LABEL_17;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = *(&self->symbols_ + 4);
  v6 = *(equal + 36);
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
  getDecimalFormatSymbols = [(JavaTextDecimalFormat *)self getDecimalFormatSymbols];
  if (!getDecimalFormatSymbols)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v9 = getDecimalFormatSymbols;
  getDecimalFormatSymbols2 = [equal getDecimalFormatSymbols];

  LOBYTE(v7) = [v9 isEqual:getDecimalFormatSymbols2];
  return v7;
}

- (id)formatToCharacterIteratorWithId:(id)id
{
  if (!id)
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

- (JavaTextDecimalFormat)formatWithDouble:(double)double withJavaLangStringBuffer:(id)buffer withJavaTextFieldPosition:(id)position
{
  sub_100265C90(buffer, position);
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
    v11 = [(JavaTextDecimalFormat *)self formatWithDouble:v10 withJavaLangStringBuffer:new_JavaTextFieldPosition_initWithInt_(0) withJavaTextFieldPosition:double];
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
    v14 = [(JavaTextDecimalFormat *)self formatWithDouble:v13 withJavaLangStringBuffer:new_JavaTextFieldPosition_initWithInt_(0) withJavaTextFieldPosition:double];
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

  if (!buffer || (v16 = *(&self->symbols_ + 4)) == 0)
  {
    JreThrowNullPointerException();
  }

  [buffer appendWithCharArray:{objc_msgSend(v16, "formatDoubleWithDouble:withJavaTextFieldPosition:", position, double)}];
  return buffer;
}

- (JavaTextDecimalFormat)formatWithLong:(int64_t)long withJavaLangStringBuffer:(id)buffer withJavaTextFieldPosition:(id)position
{
  sub_100265C90(buffer, position);
  if (!buffer || (v9 = *(&self->symbols_ + 4)) == 0)
  {
    JreThrowNullPointerException();
  }

  [buffer appendWithCharArray:{objc_msgSend(v9, "formatLongWithLong:withJavaTextFieldPosition:", long, position)}];
  return buffer;
}

- (JavaTextDecimalFormat)formatWithId:(id)id withJavaLangStringBuffer:(id)buffer withJavaTextFieldPosition:(id)position
{
  bufferCopy = buffer;
  sub_100265C90(buffer, position);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!id)
    {
      goto LABEL_19;
    }

    if (objc_opt_isKindOfClass())
    {
      bitLength = [id bitLength];
      v10 = *(&self->symbols_ + 4);
      if (bitLength > 63)
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = [v10 formatBigIntegerWithJavaMathBigInteger:id withJavaTextFieldPosition:position];
      }

      else
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = [v10 formatLongWithLong:objc_msgSend(id withJavaTextFieldPosition:{"longLongValue"), position}];
      }

      v13 = v11;
      if (bufferCopy)
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
    if (!bufferCopy)
    {
      goto LABEL_19;
    }

    v12 = *(&self->symbols_ + 4);
    if (!v12)
    {
      goto LABEL_19;
    }

    objc_opt_class();
    if (!id || (objc_opt_isKindOfClass() & 1) != 0)
    {
      v13 = [v12 formatBigDecimalWithJavaMathBigDecimal:id withJavaTextFieldPosition:position];
LABEL_17:
      [(JavaTextDecimalFormat *)bufferCopy appendWithCharArray:v13];
      return bufferCopy;
    }

    goto LABEL_20;
  }

  v15.receiver = self;
  v15.super_class = JavaTextDecimalFormat;
  return [(JavaTextNumberFormat *)&v15 formatWithId:id withJavaLangStringBuffer:bufferCopy withJavaTextFieldPosition:position];
}

- (id)getDecimalFormatSymbols
{
  v2 = *(&self->super.minimumFractionDigits_ + 1);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  clone = [v2 clone];
  objc_opt_class();
  if (clone && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return clone;
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
  getPositivePrefix = [(JavaTextDecimalFormat *)self getPositivePrefix];
  if (!getPositivePrefix)
  {
    JreThrowNullPointerException();
  }

  return [getPositivePrefix hash];
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

- (id)parseWithNSString:(id)string withJavaTextParsePosition:(id)position
{
  v5 = *(&self->symbols_ + 4);
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = [v5 parseWithNSString:string withJavaTextParsePosition:position];
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

- (void)setDecimalFormatSymbolsWithJavaTextDecimalFormatSymbols:(id)symbols
{
  if (symbols)
  {
    clone = [symbols clone];
    objc_opt_class();
    if (clone && (objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    JreStrongAssign((&self->super.minimumFractionDigits_ + 1), clone);
    v5 = *(&self->symbols_ + 4);
    if (!v5)
    {
      JreThrowNullPointerException();
    }

    v6 = *(&self->super.minimumFractionDigits_ + 1);

    [v5 setDecimalFormatSymbolsWithJavaTextDecimalFormatSymbols:v6];
  }
}

- (void)setCurrencyWithJavaUtilCurrency:(id)currency
{
  v3 = *(&self->symbols_ + 4);
  if (!v3 || !currency || ([v3 setCurrencyWithJavaUtilCurrency:{JavaUtilCurrency_getInstanceWithNSString_(objc_msgSend(currency, "getCurrencyCode"))}], (v6 = *(&self->super.minimumFractionDigits_ + 1)) == 0))
  {
    JreThrowNullPointerException();
  }

  [v6 setCurrencyWithJavaUtilCurrency:currency];
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

- (void)setNegativePrefixWithNSString:(id)string
{
  v4 = *(&self->symbols_ + 4);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [v4 setNegativePrefixWithNSString:string];
}

- (void)setNegativeSuffixWithNSString:(id)string
{
  v4 = *(&self->symbols_ + 4);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [v4 setNegativeSuffixWithNSString:string];
}

- (void)setPositivePrefixWithNSString:(id)string
{
  v4 = *(&self->symbols_ + 4);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [v4 setPositivePrefixWithNSString:string];
}

- (void)setPositiveSuffixWithNSString:(id)string
{
  v4 = *(&self->symbols_ + 4);
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  [v4 setPositiveSuffixWithNSString:string];
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

- (void)setRoundingModeWithJavaMathRoundingModeEnum:(id)enum
{
  if (!enum)
  {
    v9 = new_JavaLangNullPointerException_initWithNSString_(@"roundingMode == null");
    objc_exception_throw(v9);
  }

  JreStrongAssign((&self->ndf_ + 4), enum);
  if ((atomic_load_explicit(JavaMathRoundingModeEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100164E08();
  }

  if (qword_100557E48 != enum)
  {
    v5 = JavaLangMath_maxWithInt_withInt_(0, [(JavaTextNumberFormat *)self getMaximumFractionDigits]);
    v6 = JavaLangMath_powWithDouble_withDouble_(10.0, v5);
    v7 = *(&self->symbols_ + 4);
    if (!v7)
    {
      JreThrowNullPointerException();
    }

    v8 = 1.0 / v6;

    [v7 setRoundingModeWithJavaMathRoundingModeEnum:enum withDouble:v8];
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
  if (objc_opt_class() == self)
  {
    v2 = new_JavaLangDouble_initWithDouble_(-0.0);
    JreStrongAssignAndConsume(&qword_1005568B8, v2);
    atomic_store(1u, JavaTextDecimalFormat__initialized);
  }
}

@end