@interface JavaUtilFormatter_FormatToken
- (BOOL)setFlagWithInt:(int)a3;
- (JavaUtilFormatter_FormatToken)init;
- (id)getStrFlags;
- (id)unknownFormatConversionException;
- (void)checkFlagsWithId:(id)a3;
- (void)dealloc;
@end

@implementation JavaUtilFormatter_FormatToken

- (id)getStrFlags
{
  strFlags = self->strFlags_;
  if (strFlags)
  {
    return [(JavaLangStringBuilder *)strFlags description];
  }

  else
  {
    return &stru_100484358;
  }
}

- (BOOL)setFlagWithInt:(int)a3
{
  v3 = a3;
  result = 0;
  if (a3 <= 42)
  {
    switch(a3)
    {
      case ' ':
        flagSpace = self->flagSpace_;
        self->flagSpace_ = 1;
        if (flagSpace)
        {
          goto LABEL_23;
        }

        break;
      case '#':
        flagSharp = self->flagSharp_;
        self->flagSharp_ = 1;
        if (flagSharp)
        {
          goto LABEL_23;
        }

        break;
      case '(':
        flagParenthesis = self->flagParenthesis_;
        self->flagParenthesis_ = 1;
        if (!flagParenthesis)
        {
          break;
        }

        goto LABEL_23;
      default:
        return result;
    }
  }

  else if (a3 > 44)
  {
    if (a3 == 48)
    {
      flagZero = self->flagZero_;
      self->flagZero_ = 1;
      if (flagZero)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (a3 != 45)
      {
        return result;
      }

      flagMinus = self->flagMinus_;
      self->flagMinus_ = 1;
      if (flagMinus)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    if (a3 != 43)
    {
      flagComma = self->flagComma_;
      self->flagComma_ = 1;
      if (flagComma)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    flagPlus = self->flagPlus_;
    self->flagPlus_ = 1;
    if (flagPlus)
    {
LABEL_23:
      v16 = NSString_valueOfInt_(a3);
      v17 = new_JavaUtilDuplicateFormatFlagsException_initWithNSString_(v16);
      objc_exception_throw(v17);
    }
  }

LABEL_16:
  strFlags = self->strFlags_;
  p_strFlags = &self->strFlags_;
  v10 = strFlags;
  if (!strFlags)
  {
    v13 = new_JavaLangStringBuilder_initWithInt_(7u);
    JreStrongAssignAndConsume(p_strFlags, v13);
    v10 = *p_strFlags;
    if (!*p_strFlags)
    {
      JreThrowNullPointerException();
    }
  }

  [(JavaLangStringBuilder *)v10 appendWithChar:v3];
  return 1;
}

- (void)checkFlagsWithId:(id)a3
{
  v9 = self->conversionType_ - 65;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 1;
  v15 = 1;
  v16 = 1;
  v17 = 1;
  v18 = 1;
  switch(v9)
  {
    case 0:
    case 32:
      v10 = 0;
      goto LABEL_8;
    case 1:
    case 7:
    case 33:
    case 39:
      goto LABEL_17;
    case 2:
    case 19:
    case 34:
    case 51:
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      goto LABEL_17;
    case 4:
    case 36:
      v10 = 1;
LABEL_8:
      v11 = 1;
      v12 = 1;
      v13 = 1;
      goto LABEL_17;
    case 6:
    case 38:
      goto LABEL_23;
    case 18:
    case 50:
      v12 = [JavaUtilFormattable_class_() isInstance:a3];
      v10 = 0;
      v11 = 0;
      v13 = 0;
      v14 = 1;
      goto LABEL_16;
    case 23:
    case 46:
      if (a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v10 = 0;
        v11 = 0;
        v14 = 0;
      }

      else
      {
        v14 = 0;
        v10 = 1;
        v11 = 1;
      }

      v12 = 1;
      v13 = 1;
LABEL_16:
      v15 = 1;
LABEL_17:
      if (self->flagComma_)
      {
        v19 = @",";
        goto LABEL_56;
      }

      v16 = 1;
      v17 = v13;
      v18 = v11;
      if ((v10 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    case 35:
      v14 = 0;
      goto LABEL_23;
    case 37:
      goto LABEL_31;
    case 45:
      if (self->flagComma_)
      {
        v19 = @",";
        goto LABEL_57;
      }

      if (self->flagMinus_)
      {
        v19 = @"-";
        goto LABEL_56;
      }

      v15 = 0;
      v16 = 0;
      v14 = 0;
      v13 = 0;
      v12 = 0;
      v11 = 0;
LABEL_19:
      v17 = v13;
      v18 = v11;
      if (self->flagParenthesis_)
      {
        v19 = CFSTR("(");
        goto LABEL_56;
      }

LABEL_20:
      if ((v18 & 1) == 0 && self->flagPlus_)
      {
        v19 = @"+";
        goto LABEL_56;
      }

      if ((v12 & 1) == 0)
      {
LABEL_23:
        if (self->flagSharp_)
        {
          v19 = @"#";
          goto LABEL_56;
        }
      }

      if ((v18 & 1) == 0)
      {
        if (((v17 | self->flagSpace_) & 1) == 0)
        {
          goto LABEL_30;
        }

        if (!self->flagSpace_)
        {
          goto LABEL_31;
        }

        v19 = @" ";
LABEL_56:
        conversionType = self->conversionType_;
        if (conversionType != 110)
        {
          v23 = new_JavaUtilFormatFlagsConversionMismatchException_initWithNSString_withChar_(v19, conversionType);
LABEL_59:
          objc_exception_throw(v23);
        }

LABEL_57:
        v23 = new_JavaUtilIllegalFormatFlagsException_initWithNSString_(v19);
        goto LABEL_59;
      }

      if (v17)
      {
        goto LABEL_31;
      }

LABEL_30:
      if (self->flagZero_)
      {
        v19 = @"0";
        goto LABEL_56;
      }

LABEL_31:
      if ((self->flagMinus_ || self->flagZero_) && self->width_ == -1)
      {
        v25 = self->conversionType_;
        v22 = JreStrcat("CC", a2, a3, v3, v4, v5, v6, v7, 45);
        v23 = new_JavaUtilMissingFormatWidthException_initWithNSString_(v22);
        goto LABEL_59;
      }

      if ((v15 & 1) == 0 && self->argIndex_ != -1)
      {
        v26 = self->conversionType_;
        v19 = JreStrcat("CC$", a2, a3, v3, v4, v5, v6, v7, 37);
        goto LABEL_57;
      }

      if ((v14 & 1) == 0)
      {
        precision = self->precision_;
        if (precision != -1)
        {
          v23 = new_JavaUtilIllegalFormatPrecisionException_initWithInt_(precision);
          goto LABEL_59;
        }
      }

      if ((v16 & 1) == 0)
      {
        width = self->width_;
        if (width != -1)
        {
          v23 = new_JavaUtilIllegalFormatWidthException_initWithInt_(width);
          goto LABEL_59;
        }
      }

      if (self->flagPlus_ && self->flagSpace_)
      {
        v19 = @"the '+' and ' ' flags are incompatible";
        goto LABEL_57;
      }

      if (self->flagMinus_ && self->flagZero_)
      {
        v19 = @"the '-' and '0' flags are incompatible";
        goto LABEL_57;
      }

      return;
    default:
      objc_exception_throw([(JavaUtilFormatter_FormatToken *)self unknownFormatConversionException]);
  }
}

- (id)unknownFormatConversionException
{
  conversionType = self->conversionType_;
  if ((conversionType | 0x20) == 0x74)
  {
    v7[0] = JavaLangCharacter_valueOfWithChar_(conversionType);
    v7[1] = JavaLangCharacter_valueOfWithChar_(self->dateSuffix_);
    v4 = [IOSObjectArray arrayWithObjects:v7 count:2 type:NSObject_class_()];
    v5 = NSString_formatWithNSString_withNSObjectArray_(@"%c%c", v4);
  }

  else
  {
    v5 = NSString_valueOfChar_(conversionType);
  }

  v6 = new_JavaUtilUnknownFormatConversionException_initWithNSString_(v5);
  objc_exception_throw(v6);
}

- (JavaUtilFormatter_FormatToken)init
{
  self->argIndex_ = -1;
  self->conversionType_ = -1;
  *&self->precision_ = -1;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilFormatter_FormatToken;
  [(JavaUtilFormatter_FormatToken *)&v3 dealloc];
}

@end