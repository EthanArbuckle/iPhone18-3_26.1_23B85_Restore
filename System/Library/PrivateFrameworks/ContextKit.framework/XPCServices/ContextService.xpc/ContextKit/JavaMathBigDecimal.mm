@interface JavaMathBigDecimal
+ (int)longCompareToWithLong:(int64_t)a3 withLong:(int64_t)a4;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (JavaMathBigDecimal)initWithCharArray:(id)a3;
- (JavaMathBigDecimal)initWithDouble:(double)a3 withJavaMathMathContext:(id)a4;
- (JavaMathBigDecimal)initWithInt:(int)a3 withJavaMathMathContext:(id)a4;
- (JavaMathBigDecimal)initWithJavaMathBigInteger:(id)a3 withInt:(int)a4 withJavaMathMathContext:(id)a5;
- (JavaMathBigDecimal)initWithJavaMathBigInteger:(id)a3 withJavaMathMathContext:(id)a4;
- (JavaMathBigDecimal)initWithLong:(int64_t)a3 withJavaMathMathContext:(id)a4;
- (NSString)description;
- (double)doubleValue;
- (float)floatValue;
- (id)abs;
- (id)absWithJavaMathMathContext:(id)a3;
- (id)addWithJavaMathBigDecimal:(id)a3;
- (id)addWithJavaMathBigDecimal:(id)a3 withJavaMathMathContext:(id)a4;
- (id)divideAndRemainderWithJavaMathBigDecimal:(id)a3;
- (id)divideAndRemainderWithJavaMathBigDecimal:(id)a3 withJavaMathMathContext:(id)a4;
- (id)divideToIntegralValueWithJavaMathBigDecimal:(id)a3;
- (id)divideToIntegralValueWithJavaMathBigDecimal:(id)a3 withJavaMathMathContext:(id)a4;
- (id)divideWithJavaMathBigDecimal:(id)a3;
- (id)divideWithJavaMathBigDecimal:(id)a3 withInt:(int)a4;
- (id)divideWithJavaMathBigDecimal:(id)a3 withInt:(int)a4 withJavaMathRoundingModeEnum:(id)a5;
- (id)divideWithJavaMathBigDecimal:(id)a3 withJavaMathMathContext:(id)a4;
- (id)maxWithJavaMathBigDecimal:(id)a3;
- (id)minWithJavaMathBigDecimal:(id)a3;
- (id)multiplyWithJavaMathBigDecimal:(id)a3;
- (id)multiplyWithJavaMathBigDecimal:(id)a3 withJavaMathMathContext:(id)a4;
- (id)negate;
- (id)negateWithJavaMathMathContext:(id)a3;
- (id)remainderWithJavaMathBigDecimal:(id)a3;
- (id)remainderWithJavaMathBigDecimal:(id)a3 withJavaMathMathContext:(id)a4;
- (id)roundWithJavaMathMathContext:(id)a3;
- (id)scaleByPowerOfTenWithInt:(int)a3;
- (id)setScaleWithInt:(int)a3 withJavaMathRoundingModeEnum:(id)a4;
- (id)stripTrailingZeros;
- (id)subtractWithJavaMathBigDecimal:(id)a3;
- (id)subtractWithJavaMathBigDecimal:(id)a3 withJavaMathMathContext:(id)a4;
- (id)toBigInteger;
- (id)toBigIntegerExact;
- (id)toEngineeringString;
- (id)toPlainString;
- (int)aproxPrecision;
- (int)compareToWithId:(id)a3;
- (int)intValue;
- (int)precision;
- (int)signum;
- (int64_t)longLongValue;
- (uint64_t)unscaledValue;
- (unint64_t)hash;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)a3;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaMathBigDecimal

- (JavaMathBigDecimal)initWithCharArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  JavaMathBigDecimal_initWithCharArray_withInt_withInt_(self, a3, 0, *(a3 + 2));
  return self;
}

- (JavaMathBigDecimal)initWithDouble:(double)a3 withJavaMathMathContext:(id)a4
{
  JavaMathBigDecimal_initWithDouble_(self, a3);
  sub_10015FC44(self, a4);
  return self;
}

- (JavaMathBigDecimal)initWithJavaMathBigInteger:(id)a3 withJavaMathMathContext:(id)a4
{
  JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_(self, a3, 0);
  sub_10015FC44(self, a4);
  return self;
}

- (JavaMathBigDecimal)initWithJavaMathBigInteger:(id)a3 withInt:(int)a4 withJavaMathMathContext:(id)a5
{
  JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_(self, a3, a4);
  sub_10015FC44(self, a5);
  return self;
}

- (JavaMathBigDecimal)initWithInt:(int)a3 withJavaMathMathContext:(id)a4
{
  sub_10015DB2C(self, a3, 0);
  sub_10015FC44(self, a4);
  return self;
}

- (JavaMathBigDecimal)initWithLong:(int64_t)a3 withJavaMathMathContext:(id)a4
{
  sub_10015DA74(self, a3, 0);
  sub_10015FC44(self, a4);
  return self;
}

- (id)addWithJavaMathBigDecimal:(id)a3
{
  if (!a3)
  {
    goto LABEL_28;
  }

  v3 = a3;
  scale = self->scale__;
  v6 = *(a3 + 12);
  v7 = (scale - v6);
  bitLength = self->bitLength_;
  if (!bitLength && self->smallValue_ != -1)
  {
    if (v7 < 1)
    {
      return v3;
    }

    v9 = v3->bitLength_;
    if (v9)
    {
      goto LABEL_4;
    }

    if (v3->smallValue_ == -1)
    {
      v9 = 0;
      goto LABEL_4;
    }

    return self;
  }

  v9 = v3->bitLength_;
  if (!v9 && v3->smallValue_ != -1 && (v7 & 0x80000000) == 0)
  {
    return self;
  }

LABEL_4:
  if (scale == v6)
  {
    if ((JavaLangMath_maxWithInt_withInt_(bitLength, v9) + 1) <= 63)
    {
      v10 = self->scale__;
      v11 = v3->smallValue_ + self->smallValue_;

      return JavaMathBigDecimal_valueOfWithLong_withInt_(v11, v10);
    }

    v15 = [JavaMathBigDecimal unscaledValue]_0(self);
    if (v15)
    {
      v16 = [v15 addWithJavaMathBigInteger:-[JavaMathBigDecimal unscaledValue]_0(v3)];
      v17 = self->scale__;
      v18 = [JavaMathBigDecimal alloc];
      JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_(v18, v16, v17);

      return v18;
    }

LABEL_28:
    JreThrowNullPointerException();
  }

  if (v7 < 1)
  {
    v7 = (v6 - scale);
    v13 = v3;
    v14 = self;
  }

  else
  {
    v13 = self;
    v14 = v3;
  }

  return sub_10015EEA4(v13, v14, v7);
}

- (uint64_t)unscaledValue
{
  result = *(a1 + 24);
  if (!result)
  {
    v3 = JavaMathBigInteger_valueOfWithLong_(*(a1 + 40));
    JreStrongAssign((a1 + 24), v3);
    return *(a1 + 24);
  }

  return result;
}

- (id)addWithJavaMathBigDecimal:(id)a3 withJavaMathMathContext:(id)a4
{
  if (!a3)
  {
    goto LABEL_44;
  }

  scale = self->scale__;
  v8 = *(a3 + 12);
  if (!*(a3 + 8) && *(a3 + 5) != -1 || !self->bitLength_ && self->smallValue_ != -1)
  {
    goto LABEL_36;
  }

  if (!a4)
  {
    goto LABEL_44;
  }

  if (![a4 getPrecision])
  {
    goto LABEL_36;
  }

  v9 = scale - v8;
  precision = self->precision_;
  if (precision <= 0)
  {
    v11 = (self->bitLength_ - 1) * 0.301029996;
    v12 = v11;
    if (v11 < 0.0)
    {
      v13 = 0x80000000;
    }

    else
    {
      v13 = 0x7FFFFFFF;
    }

    if (v12 == 0x80000000)
    {
      v12 = v13;
    }

    precision = v12 + 1;
  }

  v14 = a3;
  v15 = self;
  if (v9 - 1 <= precision)
  {
    v16 = *(a3 + 13);
    if (v16 <= 0)
    {
      v17 = (*(a3 + 8) - 1) * 0.301029996;
      v18 = v17;
      if (v17 < 0.0)
      {
        v19 = 0x80000000;
      }

      else
      {
        v19 = 0x7FFFFFFF;
      }

      if (v18 == 0x80000000)
      {
        v18 = v19;
      }

      v16 = v18 + 1;
    }

    v14 = self;
    v15 = a3;
    if (v16 >= ~v9)
    {
      goto LABEL_36;
    }
  }

  v20 = [a4 getPrecision];
  v21 = v14[13];
  if (v21 <= 0)
  {
    v22 = (v14[8] - 1) * 0.301029996;
    v23 = v22;
    if (v22 < 0.0)
    {
      v24 = 0x80000000;
    }

    else
    {
      v24 = 0x7FFFFFFF;
    }

    if (v23 == 0x80000000)
    {
      v23 = v24;
    }

    v21 = v23 + 1;
  }

  if (v20 >= v21)
  {
LABEL_36:
    v30 = [(JavaMathBigDecimal *)self addWithJavaMathBigDecimal:a3];
    if (v30)
    {
      goto LABEL_37;
    }

    goto LABEL_44;
  }

  v25 = [v14 signum];
  v26 = [v15 signum];
  v27 = [JavaMathBigDecimal unscaledValue]_0(v14);
  if (v25 != v26)
  {
    if (v27)
    {
      v32 = [v27 subtractWithJavaMathBigInteger:JavaMathBigInteger_valueOfWithLong_(v25)];
      v33 = JavaMathMultiplication_multiplyByPositiveIntWithJavaMathBigInteger_withInt_(v32, 0xAu);
      if (v33)
      {
        v29 = v33;
        v25 *= 9;
        goto LABEL_43;
      }
    }

LABEL_44:
    JreThrowNullPointerException();
  }

  v28 = JavaMathMultiplication_multiplyByPositiveIntWithJavaMathBigInteger_withInt_(v27, 0xAu);
  if (!v28)
  {
    goto LABEL_44;
  }

  v29 = v28;
LABEL_43:
  v34 = [(JavaMathBigInteger *)v29 addWithJavaMathBigInteger:JavaMathBigInteger_valueOfWithLong_(v25)];
  v35 = v14[12];
  v36 = [JavaMathBigDecimal alloc];
  JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_(v36, v34, v35 + 1);
  v30 = v36;
LABEL_37:

  return [(JavaMathBigDecimal *)v30 roundWithJavaMathMathContext:a4];
}

- (id)subtractWithJavaMathBigDecimal:(id)a3
{
  if (!a3)
  {
    goto LABEL_50;
  }

  scale = self->scale__;
  v6 = *(a3 + 12);
  v7 = (scale - v6);
  bitLength = self->bitLength_;
  if (bitLength || self->smallValue_ == -1)
  {
    v9 = *(a3 + 8);
    if (v9 || *(a3 + 5) == -1 || (v7 & 0x80000000) != 0)
    {
LABEL_4:
      if (scale == v6)
      {
        if ((JavaLangMath_maxWithInt_withInt_(bitLength, v9) + 1) <= 63)
        {
          v10 = self->smallValue_ - *(a3 + 5);
LABEL_20:
          v14 = self->scale__;
LABEL_21:

          return JavaMathBigDecimal_valueOfWithLong_withInt_(v10, v14);
        }

        v16 = [JavaMathBigDecimal unscaledValue]_0(self);
        if (v16)
        {
          v17 = v16;
          v18 = [JavaMathBigDecimal unscaledValue]_0(a3);
          v19 = v17;
LABEL_31:
          v23 = [v19 subtractWithJavaMathBigInteger:v18];
          v24 = self->scale__;
          v25 = [JavaMathBigDecimal alloc];
          v26 = v25;
          v27 = v23;
          v28 = v24;
LABEL_47:
          JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_(v25, v27, v28);

          return v26;
        }
      }

      else if (v7 < 1)
      {
        if (!qword_100554A50)
        {
          goto LABEL_50;
        }

        v29 = (v6 - scale);
        if (*(qword_100554A50 + 8) <= v29)
        {
          v30 = v29;
        }

        else
        {
          if (!qword_100554A58)
          {
            goto LABEL_50;
          }

          v30 = v29;
          v31 = *(qword_100554A58 + 8);
          if ((v29 & 0x80000000) != 0 || v31 <= v29)
          {
            IOSArray_throwOutOfBoundsWithMsg(v31, v29);
          }

          if ((JavaLangMath_maxWithInt_withInt_((*(qword_100554A58 + 12 + 4 * v29) + bitLength), v9) + 1) <= 63)
          {
            smallValue = self->smallValue_;
            v33 = *(qword_100554A50 + 8);
            if ((v29 & 0x80000000) != 0 || v33 <= v29)
            {
              IOSArray_throwOutOfBoundsWithMsg(v33, v29);
            }

            v10 = *(qword_100554A50 + 16 + 8 * v29) * smallValue - *(a3 + 5);
            v14 = *(a3 + 12);
            goto LABEL_21;
          }
        }

        v34 = [JavaMathBigDecimal unscaledValue]_0(self);
        v35 = JavaMathMultiplication_multiplyByTenPowWithJavaMathBigInteger_withLong_(v34, v30);
        if (v35)
        {
          v36 = [(JavaMathBigInteger *)v35 subtractWithJavaMathBigInteger:[JavaMathBigDecimal unscaledValue]_0(a3)];
          v37 = *(a3 + 12);
          v25 = [JavaMathBigDecimal alloc];
          v26 = v25;
          v27 = v36;
          v28 = v37;
          goto LABEL_47;
        }
      }

      else
      {
        if (!qword_100554A50)
        {
          goto LABEL_50;
        }

        if (v7 < *(qword_100554A50 + 8))
        {
          if (!qword_100554A58)
          {
            goto LABEL_50;
          }

          v11 = *(qword_100554A58 + 8);
          if (v7 >= v11)
          {
            IOSArray_throwOutOfBoundsWithMsg(v11, v7);
          }

          if ((JavaLangMath_maxWithInt_withInt_(bitLength, *(qword_100554A58 + 12 + 4 * v7) + v9) + 1) <= 63)
          {
            v12 = *(a3 + 5);
            v13 = *(qword_100554A50 + 8);
            if (v7 >= v13)
            {
              IOSArray_throwOutOfBoundsWithMsg(v13, v7);
            }

            v10 = self->smallValue_ - *(qword_100554A50 + 16 + 8 * v7) * v12;
            goto LABEL_20;
          }
        }

        v20 = [JavaMathBigDecimal unscaledValue]_0(self);
        if (v20)
        {
          v21 = v20;
          v22 = [JavaMathBigDecimal unscaledValue]_0(a3);
          v18 = JavaMathMultiplication_multiplyByTenPowWithJavaMathBigInteger_withLong_(v22, v7);
          v19 = v21;
          goto LABEL_31;
        }
      }

LABEL_50:
      JreThrowNullPointerException();
    }

    return self;
  }

  if (v7 > 0)
  {
    v9 = *(a3 + 8);
    if (v9)
    {
      goto LABEL_4;
    }

    if (*(a3 + 5) == -1)
    {
      v9 = 0;
      goto LABEL_4;
    }

    return self;
  }

  return [a3 negate];
}

- (id)subtractWithJavaMathBigDecimal:(id)a3 withJavaMathMathContext:(id)a4
{
  if (!a3)
  {
    goto LABEL_36;
  }

  v7 = *(a3 + 12);
  scale = self->scale__;
  if (!*(a3 + 8) && *(a3 + 5) != -1 || !self->bitLength_ && self->smallValue_ != -1)
  {
    goto LABEL_29;
  }

  if (!a4)
  {
    goto LABEL_36;
  }

  if (![a4 getPrecision])
  {
    goto LABEL_29;
  }

  v9 = *(a3 + 13);
  if (v9 <= 0)
  {
    v10 = (*(a3 + 8) - 1) * 0.301029996;
    v11 = v10;
    if (v10 < 0.0)
    {
      v12 = 0x80000000;
    }

    else
    {
      v12 = 0x7FFFFFFF;
    }

    if (v11 == 0x80000000)
    {
      v11 = v12;
    }

    v9 = v11 + 1;
  }

  if (v7 + ~scale <= v9)
  {
    goto LABEL_29;
  }

  v13 = [a4 getPrecision];
  precision = self->precision_;
  if (precision <= 0)
  {
    v15 = (self->bitLength_ - 1) * 0.301029996;
    v16 = v15;
    if (v15 < 0.0)
    {
      v17 = 0x80000000;
    }

    else
    {
      v17 = 0x7FFFFFFF;
    }

    if (v16 == 0x80000000)
    {
      v16 = v17;
    }

    precision = v16 + 1;
  }

  if (v13 >= precision)
  {
LABEL_29:
    v24 = [(JavaMathBigDecimal *)self subtractWithJavaMathBigDecimal:a3];
    if (v24)
    {
      goto LABEL_30;
    }

    goto LABEL_36;
  }

  v18 = [(JavaMathBigDecimal *)self signum];
  v19 = [a3 signum];
  v20 = [JavaMathBigDecimal unscaledValue]_0(self);
  if (v18 != v19)
  {
    v26 = JavaMathMultiplication_multiplyByPositiveIntWithJavaMathBigInteger_withInt_(v20, 0xAu);
    if (v26)
    {
      v23 = v26;
      goto LABEL_35;
    }

LABEL_36:
    JreThrowNullPointerException();
  }

  if (!v20)
  {
    goto LABEL_36;
  }

  v21 = [v20 subtractWithJavaMathBigInteger:JavaMathBigInteger_valueOfWithLong_(v18)];
  v22 = JavaMathMultiplication_multiplyByPositiveIntWithJavaMathBigInteger_withInt_(v21, 0xAu);
  if (!v22)
  {
    goto LABEL_36;
  }

  v23 = v22;
  v18 *= 9;
LABEL_35:
  v27 = [(JavaMathBigInteger *)v23 addWithJavaMathBigInteger:JavaMathBigInteger_valueOfWithLong_(v18)];
  v28 = self->scale__;
  v29 = [JavaMathBigDecimal alloc];
  JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_(v29, v27, v28 + 1);
  v24 = v29;
LABEL_30:

  return [(JavaMathBigDecimal *)v24 roundWithJavaMathMathContext:a4];
}

- (id)multiplyWithJavaMathBigDecimal:(id)a3
{
  if (!a3)
  {
    goto LABEL_18;
  }

  scale = self->scale__;
  v5 = *(a3 + 12);
  bitLength = self->bitLength_;
  if (!bitLength && self->smallValue_ != -1 || (v7 = *(a3 + 8)) == 0 && *(a3 + 5) != -1)
  {

    return sub_10015FAF4(v5 + scale);
  }

  if (v7 + bitLength <= 63)
  {
    v8 = *(a3 + 5) * self->smallValue_;
    v9 = sub_10015FB94(v5 + scale);

    return JavaMathBigDecimal_valueOfWithLong_withInt_(v8, v9);
  }

  v11 = [JavaMathBigDecimal unscaledValue]_0(self);
  if (!v11)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  v12 = [v11 multiplyWithJavaMathBigInteger:-[JavaMathBigDecimal unscaledValue]_0(a3)];
  v13 = sub_10015FB94(v5 + scale);
  v14 = [JavaMathBigDecimal alloc];
  JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_(v14, v12, v13);

  return v14;
}

- (id)multiplyWithJavaMathBigDecimal:(id)a3 withJavaMathMathContext:(id)a4
{
  v5 = [(JavaMathBigDecimal *)self multiplyWithJavaMathBigDecimal:a3];
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  sub_10015FC44(v5, a4);
  return v6;
}

- (id)divideWithJavaMathBigDecimal:(id)a3 withInt:(int)a4 withJavaMathRoundingModeEnum:(id)a5
{
  if (!a5)
  {
    v26 = new_JavaLangNullPointerException_init();
    goto LABEL_42;
  }

  if (!a3)
  {
    goto LABEL_35;
  }

  v8 = *(a3 + 8);
  if (!v8 && *(a3 + 5) != -1)
  {
    v26 = new_JavaLangArithmeticException_initWithNSString_(@"Division by zero");
LABEL_42:
    objc_exception_throw(v26);
  }

  scale = self->scale__;
  v10 = *(a3 + 12) + a4;
  v11 = scale - v10;
  if (v8 > 63)
  {
    goto LABEL_28;
  }

  bitLength = self->bitLength_;
  if (bitLength > 63)
  {
    goto LABEL_28;
  }

  if (scale == v10)
  {
    smallValue = self->smallValue_;
LABEL_9:
    v14 = *(a3 + 5);
LABEL_10:

    return sub_1001603C4(smallValue, v14, a4, a5);
  }

  if (v11 >= 1)
  {
    if (qword_100554A50)
    {
      if (v11 >= *(qword_100554A50 + 8))
      {
        goto LABEL_28;
      }

      if (qword_100554A58)
      {
        v16 = *(qword_100554A58 + 8);
        if (v16 <= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, v11);
        }

        if (*(qword_100554A58 + 12 + 4 * v11) + v8 <= 63)
        {
          v17 = self->smallValue_;
          v18 = *(qword_100554A50 + 8);
          if (v18 <= v11)
          {
            IOSArray_throwOutOfBoundsWithMsg(v18, v11);
          }

          v14 = *(qword_100554A50 + 16 + 8 * v11) * *(a3 + 5);
          smallValue = v17;
          goto LABEL_10;
        }

        goto LABEL_28;
      }
    }

LABEL_35:
    JreThrowNullPointerException();
  }

  if (!qword_100554A50)
  {
    goto LABEL_35;
  }

  v19 = v10 - scale;
  if (v10 - scale >= *(qword_100554A50 + 8))
  {
    goto LABEL_28;
  }

  if (!qword_100554A58)
  {
    goto LABEL_35;
  }

  v20 = *(qword_100554A58 + 8);
  if (v20 <= v19)
  {
    IOSArray_throwOutOfBoundsWithMsg(v20, v10 - scale);
  }

  if (*(qword_100554A58 + 12 - 4 * v11) + bitLength <= 63)
  {
    v21 = self->smallValue_;
    v22 = *(qword_100554A50 + 8);
    if (v22 <= v19)
    {
      IOSArray_throwOutOfBoundsWithMsg(v22, v19);
    }

    smallValue = *(qword_100554A50 + 16 - 8 * v11) * v21;
    goto LABEL_9;
  }

LABEL_28:
  v23 = [JavaMathBigDecimal unscaledValue]_0(self);
  v24 = [JavaMathBigDecimal unscaledValue]_0(a3);
  v25 = v24;
  if (v11 < 1)
  {
    if (v11 < 0)
    {
      v23 = JavaMathMultiplication_multiplyByTenPowWithJavaMathBigInteger_withLong_(v23, -v11);
    }
  }

  else
  {
    v25 = JavaMathMultiplication_multiplyByTenPowWithJavaMathBigInteger_withLong_(v24, v11);
  }

  return sub_1001604AC(v23, v25, a4, a5);
}

- (id)divideWithJavaMathBigDecimal:(id)a3 withInt:(int)a4
{
  scale = self->scale__;
  v7 = JavaMathRoundingModeEnum_valueOfWithInt_(a4);

  return [(JavaMathBigDecimal *)self divideWithJavaMathBigDecimal:a3 withInt:scale withJavaMathRoundingModeEnum:v7];
}

- (id)divideWithJavaMathBigDecimal:(id)a3
{
  v5 = [JavaMathBigDecimal unscaledValue]_0(self);
  if (!a3)
  {
    goto LABEL_45;
  }

  v6 = v5;
  v7 = [JavaMathBigDecimal unscaledValue]_0(a3);
  if (!qword_100554A60)
  {
    goto LABEL_45;
  }

  v8 = v7;
  v9 = *(qword_100554A60 + 8);
  if (!*(a3 + 8) && *(a3 + 5) != -1)
  {
    v39 = @"Division by zero";
    goto LABEL_48;
  }

  if (!v6)
  {
    goto LABEL_45;
  }

  v10 = self->scale__ - *(a3 + 12);
  if ([v6 signum])
  {
    v11 = [v6 gcdWithJavaMathBigInteger:v8];
    v12 = [v6 divideWithJavaMathBigInteger:v11];
    if (!v8)
    {
      goto LABEL_45;
    }

    v13 = v12;
    v14 = [v8 divideWithJavaMathBigInteger:v11];
    if (!v14)
    {
      goto LABEL_45;
    }

    v15 = v14;
    v41 = v13;
    v16 = [v14 getLowestSetBit];
    v17 = [v15 shiftRightWithInt:v16];
    if (!v17)
    {
      goto LABEL_45;
    }

    v18 = v17;
    v19 = 0;
    v20 = v9 - 1;
    for (i = 1; ; i = 1)
    {
      while (1)
      {
        v22 = i;
        v23 = *(qword_100554A60 + 8);
        if (i < 0 || i >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, i);
        }

        v24 = [v18 divideAndRemainderWithJavaMathBigInteger:*(qword_100554A60 + 24 + 8 * i)];
        if (!v24)
        {
          goto LABEL_45;
        }

        v25 = v24;
        v26 = v24[2];
        if (v26 <= 1)
        {
          IOSArray_throwOutOfBoundsWithMsg(v26, 1);
        }

        v27 = *(v25 + 4);
        if (!v27)
        {
          goto LABEL_45;
        }

        if ([v27 signum])
        {
          break;
        }

        if (i < v20)
        {
          ++i;
        }

        v28 = v25[2];
        if (v28 <= 0)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, 0);
        }

        v19 += v22;
        v18 = *(v25 + 3);
        if (!v18)
        {
          goto LABEL_45;
        }
      }

      if (i == 1)
      {
        break;
      }
    }

    v29 = [v18 abs];
    if (!v29)
    {
      goto LABEL_45;
    }

    v30 = v29;
    if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100147554();
    }

    if ([v30 isEqual:JavaMathBigInteger_ONE_])
    {
      if (([v18 signum] & 0x80000000) != 0)
      {
        if (!v41)
        {
          goto LABEL_45;
        }

        v31 = [v41 negate];
      }

      else
      {
        v31 = v41;
      }

      v33 = JavaLangMath_maxWithInt_withInt_(v16, v19);
      v34 = sub_10015FB94(v10 + v33);
      v35 = (v16 - v19);
      if (v35 >= 1)
      {
        v36 = JavaMathMultiplication_multiplyByFivePowWithJavaMathBigInteger_withInt_(v31, v35);
LABEL_42:
        v37 = v36;
        v38 = [JavaMathBigDecimal alloc];
        JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_(v38, v37, v34);

        return v38;
      }

      if (v31)
      {
        v36 = [v31 shiftLeftWithInt:(v19 - v16)];
        goto LABEL_42;
      }

LABEL_45:
      JreThrowNullPointerException();
    }

    v39 = @"Non-terminating decimal expansion; no exact representable decimal result.";
LABEL_48:
    v40 = new_JavaLangArithmeticException_initWithNSString_(v39);
    objc_exception_throw(v40);
  }

  return sub_10015FAF4(v10);
}

- (id)divideWithJavaMathBigDecimal:(id)a3 withJavaMathMathContext:(id)a4
{
  if (!a4)
  {
    goto LABEL_68;
  }

  v7 = [a4 getPrecision];
  if (!a3)
  {
    goto LABEL_68;
  }

  v8 = v7;
  v9 = *(a3 + 13);
  if (v9 <= 0)
  {
    v10 = (*(a3 + 8) - 1) * 0.301029996;
    v11 = v10;
    if (v10 < 0.0)
    {
      v12 = 0x80000000;
    }

    else
    {
      v12 = 0x7FFFFFFF;
    }

    if (v11 == 0x80000000)
    {
      v11 = v12;
    }

    v9 = v11 + 1;
  }

  precision = self->precision_;
  if (precision <= 0)
  {
    v14 = (self->bitLength_ - 1) * 0.301029996;
    v15 = v14;
    if (v14 < 0.0)
    {
      v16 = 0x80000000;
    }

    else
    {
      v16 = 0x7FFFFFFF;
    }

    if (v15 == 0x80000000)
    {
      v15 = v16;
    }

    precision = v15 + 1;
  }

  if (!qword_100554A68)
  {
    goto LABEL_68;
  }

  scale = self->scale__;
  v18 = *(a3 + 12);
  v51 = *(qword_100554A68 + 8);
  v52 = [JavaMathBigDecimal unscaledValue]_0(self);
  v19 = [IOSObjectArray arrayWithObjects:&v52 count:1 type:JavaMathBigInteger_class_()];
  if (![a4 getPrecision] || !self->bitLength_ && self->smallValue_ != -1 || !*(a3 + 8) && *(a3 + 5) != -1)
  {
    return [(JavaMathBigDecimal *)self divideWithJavaMathBigDecimal:a3];
  }

  v20 = v8 + 2 + v9 - precision;
  v21 = scale - v18;
  if (v20 < 1)
  {
    v24 = scale - v18;
  }

  else
  {
    v22 = [JavaMathBigDecimal unscaledValue]_0(self);
    if (!v22)
    {
      goto LABEL_68;
    }

    v23 = [v22 multiplyWithJavaMathBigInteger:JavaMathMultiplication_powerOf10WithLong_(v20)];
    IOSObjectArray_Set(v19, 0, v23);
    v24 = v21 + v20;
  }

  size = v19->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  elementType = v19->elementType_;
  if (!elementType)
  {
    goto LABEL_68;
  }

  v28 = [(IOSClass *)elementType divideAndRemainderWithJavaMathBigInteger:[JavaMathBigDecimal unscaledValue]_0(a3)];
  if (!v28)
  {
    goto LABEL_68;
  }

  v29 = v28;
  v30 = v28[2];
  if (v30 < 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v30, 0);
  }

  v31 = *(v29 + 3);
  if (v30 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v30, 1);
  }

  v32 = *(v29 + 4);
  if (!v32)
  {
LABEL_68:
    JreThrowNullPointerException();
  }

  if (![v32 signum])
  {
    if (v31)
    {
      v43 = 1;
      while (([v31 testBitWithInt:0] & 1) == 0)
      {
        v44 = *(qword_100554A68 + 8);
        if ((v43 & 0x80000000) != 0 || v43 >= v44)
        {
          IOSArray_throwOutOfBoundsWithMsg(v44, v43);
        }

        v45 = [v31 divideAndRemainderWithJavaMathBigInteger:*(qword_100554A68 + 24 + 8 * v43)];
        if (!v45)
        {
          goto LABEL_68;
        }

        v46 = v45;
        v47 = v45[2];
        if (v47 <= 1)
        {
          IOSArray_throwOutOfBoundsWithMsg(v47, 1);
        }

        v48 = *(v46 + 4);
        if (!v48)
        {
          goto LABEL_68;
        }

        if ([v48 signum] || (v49 = v24 - v43, v49 < v21))
        {
          if (v43 == 1)
          {
            goto LABEL_46;
          }

          v43 = 1;
        }

        else
        {
          if (v43 >= v51 - 1)
          {
            v43 = v43;
          }

          else
          {
            v43 = (v43 + 1);
          }

          v50 = v46[2];
          if (v50 <= 0)
          {
            IOSArray_throwOutOfBoundsWithMsg(v50, 0);
          }

          v31 = *(v46 + 3);
          v24 = v49;
          if (!v31)
          {
            goto LABEL_68;
          }
        }
      }

      goto LABEL_46;
    }

    goto LABEL_68;
  }

  v33 = v29[2];
  if (v33 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v33, 1);
  }

  v34 = *(v29 + 4);
  if (!v34)
  {
    goto LABEL_68;
  }

  v35 = [v34 shiftLeftOneBit];
  if (!v35)
  {
    goto LABEL_68;
  }

  v36 = [v35 compareToWithId:-[JavaMathBigDecimal unscaledValue]_0(a3)];
  if (!v31)
  {
    goto LABEL_68;
  }

  v37 = v36;
  if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100164DE8();
  }

  v38 = [v31 multiplyWithJavaMathBigInteger:JavaMathBigInteger_TEN_];
  if (!v38)
  {
    goto LABEL_68;
  }

  v39 = v38;
  v40 = v29[2];
  if (v40 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v40, 0);
  }

  v41 = *(v29 + 3);
  if (!v41)
  {
    goto LABEL_68;
  }

  v31 = [v39 addWithJavaMathBigInteger:{JavaMathBigInteger_valueOfWithLong_((objc_msgSend(v41, "signum") * (v37 + 5)))}];
  ++v24;
LABEL_46:
  v42 = sub_10015FB94(v24);
  return new_JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_withJavaMathMathContext_(v31, v42, a4);
}

- (id)divideToIntegralValueWithJavaMathBigDecimal:(id)a3
{
  v44 = [JavaMathBigDecimal unscaledValue]_0(self);
  [IOSObjectArray arrayWithObjects:&v44 count:1 type:JavaMathBigInteger_class_()];
  if (!a3 || !qword_100554A68)
  {
    goto LABEL_61;
  }

  v5 = *(qword_100554A68 + 8);
  v6 = *(a3 + 8);
  if (!v6 && *(a3 + 5) != -1)
  {
    v43 = new_JavaLangArithmeticException_initWithNSString_(@"Division by zero");
    objc_exception_throw(v43);
  }

  v7 = self->scale__ - *(a3 + 12);
  v8 = *(a3 + 13);
  if (v8 <= 0)
  {
    v9 = (v6 - 1) * 0.301029996;
    v10 = v9;
    if (v9 < 0.0)
    {
      v11 = 0x80000000;
    }

    else
    {
      v11 = 0x7FFFFFFF;
    }

    if (v10 == 0x80000000)
    {
      v10 = v11;
    }

    v8 = v10 + 1;
  }

  precision = self->precision_;
  if (precision <= 0)
  {
    v13 = (self->bitLength_ - 1) * 0.301029996;
    v14 = v13;
    if (v13 < 0.0)
    {
      v15 = 0x80000000;
    }

    else
    {
      v15 = 0x7FFFFFFF;
    }

    if (v14 == 0x80000000)
    {
      v14 = v15;
    }

    precision = v14 + 1;
  }

  if (v7 + v8 > precision + 1 || !self->bitLength_ && self->smallValue_ != -1)
  {
    if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100164DE8();
    }

    v16 = JavaMathBigInteger_ZERO_;
LABEL_23:
    v17 = v7;
    if (v16)
    {
      goto LABEL_24;
    }

LABEL_61:
    JreThrowNullPointerException();
  }

  if (!v7)
  {
    v27 = [JavaMathBigDecimal unscaledValue]_0(self);
    if (!v27)
    {
      goto LABEL_61;
    }

    v28 = v27;
    v29 = [JavaMathBigDecimal unscaledValue]_0(a3);
    v16 = [v28 divideWithJavaMathBigInteger:{v29, v44}];
    v7 = 0;
    goto LABEL_23;
  }

  v21 = self->scale__ != *(a3 + 12);
  if (v7 >= 1)
  {
    v22 = JavaMathMultiplication_powerOf10WithLong_(self->scale__ - *(a3 + 12));
    v23 = [JavaMathBigDecimal unscaledValue]_0(self);
    if (!v23)
    {
      goto LABEL_61;
    }

    v24 = v23;
    v25 = [JavaMathBigDecimal unscaledValue]_0(a3);
    if (!v25)
    {
      goto LABEL_61;
    }

    v26 = [v24 divideWithJavaMathBigInteger:{objc_msgSend(v25, "multiplyWithJavaMathBigInteger:", v22, v44)}];
    if (!v26)
    {
      goto LABEL_61;
    }

    v16 = [v26 multiplyWithJavaMathBigInteger:v22];
    goto LABEL_23;
  }

  v30 = JavaMathMultiplication_powerOf10WithLong_(*(a3 + 12) - self->scale__);
  v31 = [JavaMathBigDecimal unscaledValue]_0(self);
  if (!v31)
  {
    goto LABEL_61;
  }

  v32 = [v31 multiplyWithJavaMathBigInteger:{v30, v44}];
  if (!v32)
  {
    goto LABEL_61;
  }

  v33 = [v32 divideWithJavaMathBigInteger:-[JavaMathBigDecimal unscaledValue]_0(a3)];
  if (!v33)
  {
    goto LABEL_61;
  }

  v16 = v33;
  v17 = 0;
  v34 = v5 - 1;
  v35 = 1;
  while (([v16 testBitWithInt:0] & 1) == 0)
  {
    v36 = *(qword_100554A68 + 8);
    if ((v35 & 0x80000000) != 0 || v35 >= v36)
    {
      IOSArray_throwOutOfBoundsWithMsg(v36, v35);
    }

    v37 = [v16 divideAndRemainderWithJavaMathBigInteger:*(qword_100554A68 + 24 + 8 * v35)];
    if (!v37)
    {
      goto LABEL_61;
    }

    v38 = v37;
    v39 = v37[2];
    if (v39 <= 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v39, 1);
    }

    v40 = *(v38 + 4);
    if (!v40)
    {
      goto LABEL_61;
    }

    if ([v40 signum] || (v41 = v17 - v35, v41 < v7))
    {
      if (v35 == 1)
      {
        break;
      }

      v35 = 1;
    }

    else
    {
      if (v35 >= v34)
      {
        v35 = v35;
      }

      else
      {
        v35 = (v35 + 1);
      }

      v42 = v38[2];
      if (v42 <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v42, 0);
      }

      v16 = *(v38 + 3);
      v17 = v41;
      if (!v16)
      {
        goto LABEL_61;
      }
    }
  }

LABEL_24:
  if (![v16 signum])
  {
    return sub_10015FAF4(v17);
  }

  v18 = sub_10015FB94(v17);
  v19 = [JavaMathBigDecimal alloc];
  JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_(v19, v16, v18);
  return v19;
}

- (id)divideToIntegralValueWithJavaMathBigDecimal:(id)a3 withJavaMathMathContext:(id)a4
{
  if (!a4)
  {
    goto LABEL_78;
  }

  v6 = [a4 getPrecision];
  v7 = [(JavaMathBigDecimal *)self precision];
  if (!a3)
  {
    goto LABEL_78;
  }

  v8 = v7;
  v9 = [a3 precision];
  if (!qword_100554A68)
  {
    goto LABEL_78;
  }

  v10 = v9;
  v11 = *(qword_100554A68 + 8);
  scale = self->scale__;
  v13 = *(a3 + 12);
  v14 = [IOSObjectArray arrayWithLength:2 type:JavaMathBigInteger_class_()];
  if (!v6 || (v15 = v14, !self->bitLength_) && self->smallValue_ != -1 || !*(a3 + 8) && *(a3 + 5) != -1)
  {

    return [(JavaMathBigDecimal *)self divideToIntegralValueWithJavaMathBigDecimal:a3];
  }

  v16 = v8 - v10;
  v17 = scale - v13;
  v18 = v16 - (scale - v13);
  if (v18 < 0)
  {
    if ((atomic_load_explicit(JavaMathBigInteger__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100147554();
    }

    v29 = JavaMathBigInteger_ZERO_;
    v24 = scale - v13;
    goto LABEL_26;
  }

  if (!v17)
  {
    v30 = [JavaMathBigDecimal unscaledValue]_0(self);
    if (!v30)
    {
      goto LABEL_78;
    }

    v29 = [v30 divideWithJavaMathBigInteger:-[JavaMathBigDecimal unscaledValue]_0(a3)];
    v24 = 0;
LABEL_26:
    IOSObjectArray_Set(v15, 0, v29);
    if (!v15)
    {
      goto LABEL_78;
    }

    goto LABEL_27;
  }

  if (v17 < 1)
  {
    v48 = scale - v13;
    v49 = JavaLangMath_maxWithLong_withLong_(v6 - v16, 0);
    v50 = JavaLangMath_minWithLong_withLong_(-v17, v49);
    v51 = [JavaMathBigDecimal unscaledValue]_0(self);
    if (!v51)
    {
      goto LABEL_78;
    }

    v52 = [v51 multiplyWithJavaMathBigInteger:JavaMathMultiplication_powerOf10WithLong_(v50)];
    if (!v52)
    {
      goto LABEL_78;
    }

    v53 = [v52 divideAndRemainderWithJavaMathBigInteger:-[JavaMathBigDecimal unscaledValue]_0(a3)];
    if (!v53)
    {
      goto LABEL_78;
    }

    v15 = v53;
    v54 = v53[2];
    if (v54 <= 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v54, 1);
    }

    v55 = *(v15 + 32);
    if (!v55)
    {
      goto LABEL_78;
    }

    v24 = v50 + v48;
    v17 = v48;
    if ([v55 signum])
    {
      if (-v24 < 1)
      {
        v17 = v48;
      }

      else
      {
        v56 = *(v15 + 8);
        if (v56 <= 1)
        {
          IOSArray_throwOutOfBoundsWithMsg(v56, 1);
        }

        v57 = [new_JavaMathBigDecimal_initWithJavaMathBigInteger_(*(v15 + 32)) precision];
        v58 = v57 - (v24 + [a3 precision]);
        if (v58)
        {
          v17 = v48;
        }

        else
        {
          v59 = *(v15 + 8);
          if (v59 <= 1)
          {
            IOSArray_throwOutOfBoundsWithMsg(v59, 1);
          }

          v60 = *(v15 + 32);
          if (!v60)
          {
            goto LABEL_78;
          }

          v61 = [v60 multiplyWithJavaMathBigInteger:JavaMathMultiplication_powerOf10WithLong_(-v24)];
          if (!v61)
          {
            goto LABEL_78;
          }

          v62 = [v61 divideWithJavaMathBigInteger:-[JavaMathBigDecimal unscaledValue]_0(a3)];
          IOSObjectArray_Set(v15, 1, v62);
          v63 = *(v15 + 8);
          if (v63 <= 1)
          {
            IOSArray_throwOutOfBoundsWithMsg(v63, 1);
          }

          v64 = *(v15 + 32);
          if (!v64)
          {
            goto LABEL_78;
          }

          v17 = v48;
          v58 = JavaLangMath_absWithInt_([v64 signum]);
        }

        if (v58 >= 1)
        {
          goto LABEL_77;
        }
      }
    }
  }

  else
  {
    v19 = [JavaMathBigDecimal unscaledValue]_0(self);
    if (!v19)
    {
      goto LABEL_78;
    }

    v20 = v19;
    v21 = [JavaMathBigDecimal unscaledValue]_0(a3);
    if (!v21)
    {
      goto LABEL_78;
    }

    v22 = [v20 divideWithJavaMathBigInteger:{objc_msgSend(v21, "multiplyWithJavaMathBigInteger:", JavaMathMultiplication_powerOf10WithLong_(v17))}];
    IOSObjectArray_Set(v15, 0, v22);
    v23 = JavaLangMath_maxWithLong_withLong_(v6 - v18, 0);
    v24 = JavaLangMath_minWithLong_withLong_(v17, v23);
    v25 = *(v15 + 8);
    if (v25 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v25, 0);
    }

    v26 = *(v15 + 24);
    if (!v26)
    {
      goto LABEL_78;
    }

    v27 = [v26 multiplyWithJavaMathBigInteger:JavaMathMultiplication_powerOf10WithLong_(v24)];
    IOSObjectArray_Set(v15, 0, v27);
  }

LABEL_27:
  v31 = *(v15 + 8);
  if (v31 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v31, 0);
  }

  v32 = *(v15 + 24);
  if (!v32)
  {
    goto LABEL_78;
  }

  if ([v32 signum])
  {
    v33 = *(v15 + 8);
    v68 = v17;
    if (v33 < 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v33, 0);
    }

    v34 = *(v15 + 24);
    v35 = [JavaMathBigDecimal alloc];
    JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_(v35, v34, 0);
    v66 = v35;
    v36 = [(JavaMathBigDecimal *)v66 precision];
    if (v34)
    {
      v67 = v11 - 1;
      v37 = v36;
      v38 = v6;
      v39 = 1;
      while (([v34 testBitWithInt:0] & 1) == 0)
      {
        v40 = *(qword_100554A68 + 8);
        if ((v39 & 0x80000000) != 0 || v39 >= v40)
        {
          IOSArray_throwOutOfBoundsWithMsg(v40, v39);
        }

        v41 = [v34 divideAndRemainderWithJavaMathBigInteger:*(qword_100554A68 + 24 + 8 * v39)];
        if (v41)
        {
          v42 = v41;
          v43 = v41[2];
          if (v43 <= 1)
          {
            IOSArray_throwOutOfBoundsWithMsg(v43, 1);
          }

          v44 = *(v42 + 4);
          if (v44)
          {
            if ([v44 signum] || (v45 = v37 - v39, v46 = v24 - v39, v45 < v38) && v46 < v68)
            {
              if (v39 == 1)
              {
                break;
              }

              v39 = 1;
            }

            else
            {
              v39 = v39 >= v67 ? v39 : (v39 + 1);
              v47 = v42[2];
              if (v47 <= 0)
              {
                IOSArray_throwOutOfBoundsWithMsg(v47, 0);
              }

              v34 = *(v42 + 3);
              v24 = v46;
              v37 = v45;
            }

            if (v34)
            {
              continue;
            }
          }
        }

        goto LABEL_78;
      }

      if (v37 <= v38)
      {
        v66->scale__ = sub_10015FB94(v24);
        sub_100161B18(v66, v34);
        return v66;
      }

LABEL_77:
      v65 = new_JavaLangArithmeticException_initWithNSString_(@"Division impossible");
      objc_exception_throw(v65);
    }

LABEL_78:
    JreThrowNullPointerException();
  }

  return sub_10015FAF4(v17);
}

- (id)remainderWithJavaMathBigDecimal:(id)a3
{
  v3 = [(JavaMathBigDecimal *)self divideAndRemainderWithJavaMathBigDecimal:a3];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  v4 = v3;
  v5 = v3[2];
  if (v5 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, 1);
  }

  return *(v4 + 4);
}

- (id)remainderWithJavaMathBigDecimal:(id)a3 withJavaMathMathContext:(id)a4
{
  v4 = [(JavaMathBigDecimal *)self divideAndRemainderWithJavaMathBigDecimal:a3 withJavaMathMathContext:a4];
  if (!v4)
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  v6 = v4[2];
  if (v6 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, 1);
  }

  return *(v5 + 4);
}

- (id)divideAndRemainderWithJavaMathBigDecimal:(id)a3
{
  v5 = [IOSObjectArray arrayWithLength:2 type:JavaMathBigDecimal_class_()];
  IOSObjectArray_Set(v5, 0, [(JavaMathBigDecimal *)self divideToIntegralValueWithJavaMathBigDecimal:a3]);
  size = v5->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  elementType = v5->elementType_;
  if (!elementType)
  {
    JreThrowNullPointerException();
  }

  IOSObjectArray_Set(v5, 1, [(JavaMathBigDecimal *)self subtractWithJavaMathBigDecimal:[(IOSClass *)elementType multiplyWithJavaMathBigDecimal:a3]]);
  return v5;
}

- (id)divideAndRemainderWithJavaMathBigDecimal:(id)a3 withJavaMathMathContext:(id)a4
{
  v7 = [IOSObjectArray arrayWithLength:2 type:JavaMathBigDecimal_class_()];
  IOSObjectArray_Set(v7, 0, [(JavaMathBigDecimal *)self divideToIntegralValueWithJavaMathBigDecimal:a3 withJavaMathMathContext:a4]);
  size = v7->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  elementType = v7->elementType_;
  if (!elementType)
  {
    JreThrowNullPointerException();
  }

  IOSObjectArray_Set(v7, 1, [(JavaMathBigDecimal *)self subtractWithJavaMathBigDecimal:[(IOSClass *)elementType multiplyWithJavaMathBigDecimal:a3]]);
  return v7;
}

- (id)abs
{
  if (([(JavaMathBigDecimal *)self signum]& 0x80000000) == 0)
  {
    return self;
  }

  return [(JavaMathBigDecimal *)self negate];
}

- (id)absWithJavaMathMathContext:(id)a3
{
  v3 = [(JavaMathBigDecimal *)self roundWithJavaMathMathContext:a3];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 abs];
}

- (id)negate
{
  bitLength = self->bitLength_;
  if (bitLength <= 62)
  {
    smallValue = self->smallValue_;
    goto LABEL_3;
  }

  if (bitLength == 63)
  {
    smallValue = self->smallValue_;
    if (smallValue != 0x8000000000000000)
    {
LABEL_3:
      scale = self->scale__;

      return JavaMathBigDecimal_valueOfWithLong_withInt_(-smallValue, scale);
    }
  }

  v7 = [JavaMathBigDecimal unscaledValue]_0(self);
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  v8 = [v7 negate];
  v9 = self->scale__;
  v10 = [JavaMathBigDecimal alloc];
  JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_(v10, v8, v9);

  return v10;
}

- (id)negateWithJavaMathMathContext:(id)a3
{
  v3 = [(JavaMathBigDecimal *)self roundWithJavaMathMathContext:a3];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 negate];
}

- (int)signum
{
  if (self->bitLength_ > 63)
  {
    v4 = [JavaMathBigDecimal unscaledValue]_0(self);
    if (!v4)
    {
      JreThrowNullPointerException();
    }

    return [v4 signum];
  }

  else
  {
    smallValue = self->smallValue_;

    return JavaLangLong_signumWithLong_(smallValue);
  }
}

- (int)precision
{
  result = self->precision_;
  if (result <= 0)
  {
    bitLength = self->bitLength_;
    if (bitLength > 1023)
    {
      v7 = ((bitLength - 1) * 0.301029996 + 1.0);
      if (v7 == 0x80000000)
      {
        v8 = 0x7FFFFFFF;
      }

      else
      {
        v8 = v7;
      }

      v9 = [JavaMathBigDecimal unscaledValue]_0(self);
      if (v9)
      {
        v10 = [v9 divideWithJavaMathBigInteger:JavaMathMultiplication_powerOf10WithLong_(v8)];
        if (v10)
        {
          if ([v10 signum])
          {
            result = v8 + 1;
          }

          else
          {
            result = v8;
          }

LABEL_23:
          self->precision_ = result;
          return result;
        }
      }
    }

    else
    {
      if (bitLength < 64)
      {
        if (bitLength < 1)
        {
          smallValue = 1.0;
        }

        else
        {
          smallValue = self->smallValue_;
        }

LABEL_17:
        v11 = JavaLangMath_absWithDouble_(smallValue);
        v12 = JavaLangMath_log10WithDouble_(v11) + 1.0;
        if (v12 < 0.0)
        {
          v13 = 0x80000000;
        }

        else
        {
          v13 = 0x7FFFFFFF;
        }

        if (v12 == 0x80000000)
        {
          result = v13;
        }

        else
        {
          result = v12;
        }

        goto LABEL_23;
      }

      v5 = [JavaMathBigDecimal unscaledValue]_0(self);
      if (v5)
      {
        [v5 doubleValue];
        goto LABEL_17;
      }
    }

    JreThrowNullPointerException();
  }

  return result;
}

- (id)roundWithJavaMathMathContext:(id)a3
{
  v4 = self;
  v5 = [JavaMathBigDecimal unscaledValue]_0(self);
  LODWORD(v4) = v4->scale__;
  v6 = [JavaMathBigDecimal alloc];
  JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_(v6, v5, v4);
  v7 = v6;
  sub_10015FC44(v7, a3);
  return v7;
}

- (id)setScaleWithInt:(int)a3 withJavaMathRoundingModeEnum:(id)a4
{
  if (!a4)
  {
    v21 = new_JavaLangNullPointerException_init();
    objc_exception_throw(v21);
  }

  v5 = *(self + 12);
  if (v5 != a3)
  {
    v6 = a3 - v5;
    if (v6 >= 1)
    {
      if (qword_100554A50)
      {
        if (v6 >= *(qword_100554A50 + 8))
        {
LABEL_13:
          v11 = [JavaMathBigDecimal unscaledValue]_0(self);
          v12 = JavaMathMultiplication_multiplyByTenPowWithJavaMathBigInteger_withLong_(v11, v6);
          v13 = [JavaMathBigDecimal alloc];
          JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_(v13, v12, a3);

          return v13;
        }

        if (qword_100554A58)
        {
          v7 = *(qword_100554A58 + 8);
          if (v7 <= v6)
          {
            v22 = *(self + 8);
            IOSArray_throwOutOfBoundsWithMsg(v7, v6);
          }

          if (*(qword_100554A58 + 12 + 4 * v6) + *(self + 8) <= 63)
          {
            v8 = *(self + 5);
            v9 = *(qword_100554A50 + 8);
            if (v9 <= v6)
            {
              IOSArray_throwOutOfBoundsWithMsg(v9, v6);
            }

            v10 = *(qword_100554A50 + 16 + 8 * v6) * v8;

            return JavaMathBigDecimal_valueOfWithLong_withInt_(v10, a3);
          }

          goto LABEL_13;
        }
      }

LABEL_26:
      JreThrowNullPointerException();
    }

    v15 = v5 - a3;
    if (*(self + 8) > 63)
    {
      goto LABEL_23;
    }

    if (!qword_100554A50)
    {
      goto LABEL_26;
    }

    v16 = *(qword_100554A50 + 8);
    if (v15 >= v16)
    {
LABEL_23:
      v19 = [JavaMathBigDecimal unscaledValue]_0(self);
      v20 = JavaMathMultiplication_powerOf10WithLong_(v15);

      return sub_1001604AC(v19, v20, a3, a4);
    }

    else
    {
      v17 = *(self + 5);
      if (v16 <= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v16, v15);
      }

      v18 = *(qword_100554A50 + 16 + 8 * v15);

      return sub_1001603C4(v17, v18, a3, a4);
    }
  }

  return self;
}

- (id)scaleByPowerOfTenWithInt:(int)a3
{
  v3 = self->scale__ - a3;
  if (self->bitLength_ > 63)
  {
    v7 = [JavaMathBigDecimal unscaledValue]_0(self);
    v8 = sub_10015FB94(v3);
    v9 = [JavaMathBigDecimal alloc];
    JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_(v9, v7, v8);

    return v9;
  }

  else
  {
    smallValue = self->smallValue_;
    if (smallValue)
    {
      v5 = sub_10015FB94(self->scale__ - a3);

      return JavaMathBigDecimal_valueOfWithLong_withInt_(smallValue, v5);
    }

    else
    {
      v10 = self->scale__ - a3;

      return sub_10015FAF4(v10);
    }
  }
}

- (id)stripTrailingZeros
{
  if (!qword_100554A68)
  {
    goto LABEL_29;
  }

  v2 = *(qword_100554A68 + 8);
  scale = self->scale__;
  if (!self->bitLength_ && self->smallValue_ != -1)
  {
    v16 = [JavaMathBigDecimal alloc];
    JavaMathBigDecimal_initWithCharArray_withInt_withInt_(v16, [@"0" toCharArray], 0, objc_msgSend(@"0", "length"));
    goto LABEL_26;
  }

  v4 = [JavaMathBigDecimal unscaledValue]_0(self);
  if (!v4)
  {
LABEL_29:
    JreThrowNullPointerException();
  }

  v5 = v4;
  v6 = v2 - 1;
  v7 = 1;
  while (([v5 testBitWithInt:0] & 1) == 0)
  {
    v8 = *(qword_100554A68 + 8);
    if ((v7 & 0x80000000) != 0 || v7 >= v8)
    {
      IOSArray_throwOutOfBoundsWithMsg(v8, v7);
    }

    v9 = v7;
    v10 = [v5 divideAndRemainderWithJavaMathBigInteger:*(qword_100554A68 + 24 + 8 * v7)];
    if (!v10)
    {
      goto LABEL_29;
    }

    v11 = v10;
    v12 = v10[2];
    if (v12 <= 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, 1);
    }

    v13 = *(v11 + 4);
    if (!v13)
    {
      goto LABEL_29;
    }

    if ([v13 signum])
    {
      if (v7 == 1)
      {
        break;
      }

      v7 = 1;
    }

    else
    {
      if (v7 >= v6)
      {
        v7 = v7;
      }

      else
      {
        v7 = (v7 + 1);
      }

      v14 = v11[2];
      if (v14 <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, 0);
      }

      scale -= v9;
      v5 = *(v11 + 3);
      if (!v5)
      {
        goto LABEL_29;
      }
    }
  }

  v15 = sub_10015FB94(scale);
  v16 = [JavaMathBigDecimal alloc];
  JavaMathBigDecimal_initWithJavaMathBigInteger_withInt_(v16, v5, v15);
LABEL_26:

  return v16;
}

- (int)compareToWithId:(id)a3
{
  objc_opt_class();
  if (!a3)
  {
    [(JavaMathBigDecimal *)self signum];
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = [(JavaMathBigDecimal *)self signum];
  v6 = [a3 signum];
  if (v5 != v6)
  {
    if (v5 < v6)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  scale = self->scale__;
  v8 = *(a3 + 12);
  if (scale == v8 && self->bitLength_ <= 63 && *(a3 + 8) <= 63)
  {
    smallValue = self->smallValue_;
    v10 = *(a3 + 5);
    v11 = smallValue < v10;
    v12 = smallValue > v10;
    if (v11)
    {
      return -1;
    }

    else
    {
      return v12;
    }
  }

  precision = self->precision_;
  if (precision <= 0)
  {
    v14 = (self->bitLength_ - 1) * 0.301029996;
    v15 = v14;
    if (v14 < 0.0)
    {
      v16 = 0x80000000;
    }

    else
    {
      v16 = 0x7FFFFFFF;
    }

    if (v15 == 0x80000000)
    {
      v15 = v16;
    }

    precision = v15 + 1;
  }

  v17 = scale - v8;
  v18 = *(a3 + 13);
  if (v18 <= 0)
  {
    v19 = (*(a3 + 8) - 1) * 0.301029996;
    v20 = v19;
    if (v19 < 0.0)
    {
      v21 = 0x80000000;
    }

    else
    {
      v21 = 0x7FFFFFFF;
    }

    if (v20 == 0x80000000)
    {
      v20 = v21;
    }

    v18 = v20 + 1;
  }

  v22 = precision - v18;
  if (v17 + 1 < v22)
  {
    return v5;
  }

  if (v17 - 1 > v22)
  {
    return -v5;
  }

  v24 = [JavaMathBigDecimal unscaledValue]_0(self);
  v25 = [JavaMathBigDecimal unscaledValue]_0(a3);
  v26 = v25;
  if (v17 < 0)
  {
    if (!v24)
    {
      goto LABEL_42;
    }

    v24 = [v24 multiplyWithJavaMathBigInteger:JavaMathMultiplication_powerOf10WithLong_(v8 - scale)];
  }

  else if (scale != v8)
  {
    if (!v25)
    {
      goto LABEL_42;
    }

    v26 = [v25 multiplyWithJavaMathBigInteger:JavaMathMultiplication_powerOf10WithLong_(scale - v8)];
  }

  if (!v24)
  {
LABEL_42:
    JreThrowNullPointerException();
  }

  return [v24 compareToWithId:v26];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!a3)
  {
    goto LABEL_15;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (*(a3 + 12) != self->scale__)
  {
    return 0;
  }

  if (self->bitLength_ <= 63)
  {
    return *(a3 + 5) == self->smallValue_;
  }

  intVal = self->intVal_;
  if (!intVal)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  v7 = *(a3 + 3);

  return [(JavaMathBigInteger *)intVal isEqual:v7];
}

- (id)minWithJavaMathBigDecimal:(id)a3
{
  if ([(JavaMathBigDecimal *)self compareToWithId:?]>= 1)
  {
    return a3;
  }

  else
  {
    return self;
  }
}

- (id)maxWithJavaMathBigDecimal:(id)a3
{
  if ([(JavaMathBigDecimal *)self compareToWithId:?]>= 0)
  {
    return self;
  }

  else
  {
    return a3;
  }
}

- (unint64_t)hash
{
  hashCode = self->hashCode_;
  if (!hashCode)
  {
    if (self->bitLength_ > 63)
    {
      intVal = self->intVal_;
      if (!intVal)
      {
        JreThrowNullPointerException();
      }

      v4 = [(JavaMathBigInteger *)intVal hash];
    }

    else
    {
      v4 = 33 * LODWORD(self->smallValue_) + HIDWORD(self->smallValue_);
      self->hashCode_ = v4;
    }

    hashCode = 17 * v4 + self->scale__;
    self->hashCode_ = hashCode;
  }

  return hashCode;
}

- (NSString)description
{
  toStringImage = self->toStringImage_;
  if (!toStringImage)
  {
    if (self->bitLength_ <= 31)
    {
      v4 = JavaMathConversion_toDecimalScaledStringWithLong_withInt_(self->smallValue_, self->scale__);
LABEL_22:
      JreStrongAssign(&self->toStringImage_, v4);
      return self->toStringImage_;
    }

    v5 = [JavaMathBigDecimal unscaledValue]_0(self);
    if (!v5)
    {
LABEL_24:
      JreThrowNullPointerException();
    }

    toStringImage = [v5 description];
    if (self->scale__)
    {
      v6 = [JavaMathBigDecimal unscaledValue]_0(self);
      if (v6)
      {
        v7 = [v6 signum] >= 0 ? 1 : 2;
        if (toStringImage)
        {
          v8 = [(NSString *)toStringImage length];
          v9 = v8 - (self->scale__ + v7);
          v10 = new_JavaLangStringBuilder_init();
          [(JavaLangStringBuilder *)v10 appendWithNSString:toStringImage];
          scale = self->scale__;
          if (scale < 1 || v9 < -6)
          {
            if (v8 - v7 >= 1)
            {
              [(JavaLangStringBuilder *)v10 insertWithInt:v7 withChar:46];
              v8 = (v8 + 1);
            }

            [(JavaLangStringBuilder *)v10 insertWithInt:v8 withChar:69];
            if (v9 >= 1)
            {
              v8 = (v8 + 1);
              [(JavaLangStringBuilder *)v10 insertWithInt:v8 withChar:43];
            }

            [(JavaLangStringBuilder *)v10 insertWithInt:(v8 + 1) withNSString:JavaLangLong_toStringWithLong_(v9)];
          }

          else if (v9 < 0)
          {
            [(JavaLangStringBuilder *)v10 insertWithInt:(v7 - 1) withNSString:@"0."];
            [(JavaLangStringBuilder *)v10 insertWithInt:(v7 + 1) withCharArray:qword_100554A70 withInt:0 withInt:~v9];
          }

          else
          {
            [(JavaLangStringBuilder *)v10 insertWithInt:(v8 - scale) withChar:46];
          }

          v4 = [(JavaLangStringBuilder *)v10 description];
          goto LABEL_22;
        }
      }

      goto LABEL_24;
    }
  }

  return toStringImage;
}

- (id)toEngineeringString
{
  v3 = [JavaMathBigDecimal unscaledValue]_0(self);
  if (!v3)
  {
    goto LABEL_45;
  }

  result = [v3 description];
  v5 = result;
  if (!self->scale__)
  {
    return result;
  }

  v6 = [JavaMathBigDecimal unscaledValue]_0(self);
  if (!v6)
  {
    goto LABEL_45;
  }

  v7 = [v6 signum] >= 0 ? 1 : 2;
  if (!v5)
  {
    goto LABEL_45;
  }

  v8 = [v5 length];
  v9 = v8 - (self->scale__ + v7);
  v10 = new_JavaLangStringBuilder_initWithNSString_(v5);
  v11 = v10;
  scale = self->scale__;
  if (scale < 1 || v9 < -6)
  {
    v14 = v9 % 3;
    if (!(v9 % 3))
    {
      v21 = v7;
LABEL_35:
      if (v8 - v21 >= 1)
      {
        [(JavaLangStringBuilder *)v11 insertWithInt:v21 withChar:46];
        v8 = (v8 + 1);
      }

      if (v9)
      {
        [(JavaLangStringBuilder *)v11 insertWithInt:v8 withChar:69];
        if (v9 >= 1)
        {
          v8 = (v8 + 1);
          [(JavaLangStringBuilder *)v11 insertWithInt:v8 withChar:43];
        }

        [(JavaLangStringBuilder *)v11 insertWithInt:(v8 + 1) withNSString:JavaLangLong_toStringWithLong_(v9)];
      }

      goto LABEL_42;
    }

    v15 = [JavaMathBigDecimal unscaledValue]_0(self);
    if (v15)
    {
      v16 = v8 - v7;
      v17 = [v15 signum];
      v18 = v14 + 3;
      if (v14 < 0)
      {
        v19 = 0;
      }

      else
      {
        v18 = v9 % 3;
        v19 = 3;
      }

      v20 = v19 - v14;
      if (v17)
      {
        v21 = (v18 + v7);
      }

      else
      {
        v21 = v7;
      }

      if (v17)
      {
        v9 -= v18;
      }

      else
      {
        v9 += v20;
      }

      if (!v17)
      {
        v18 = v20;
      }

      if (v16 <= 2 && v18 - v16 >= 1)
      {
        v22 = v7 + v18 - v8 + 1;
        do
        {
          v23 = v8;
          v8 = (v8 + 1);
          [(JavaLangStringBuilder *)v11 insertWithInt:v23 withChar:48];
          --v22;
        }

        while (v22 > 1);
      }

      goto LABEL_35;
    }

LABEL_45:
    JreThrowNullPointerException();
  }

  if (v9 < 0)
  {
    [(JavaLangStringBuilder *)v10 insertWithInt:(v7 - 1) withNSString:@"0."];
    [(JavaLangStringBuilder *)v11 insertWithInt:(v7 + 1) withCharArray:qword_100554A70 withInt:0 withInt:~v9];
  }

  else
  {
    [(JavaLangStringBuilder *)v10 insertWithInt:(v8 - scale) withChar:46];
  }

LABEL_42:

  return [(JavaLangStringBuilder *)v11 description];
}

- (id)toPlainString
{
  v3 = [JavaMathBigDecimal unscaledValue]_0(self);
  if (!v3)
  {
    goto LABEL_27;
  }

  result = [v3 description];
  v5 = result;
  scale = self->scale__;
  if (!scale || !self->bitLength_ && scale < 0 && self->smallValue_ != -1)
  {
    return result;
  }

  v7 = [(JavaMathBigDecimal *)self signum];
  if (!v5)
  {
    goto LABEL_27;
  }

  v8 = v7;
  v9 = v7 >> 31;
  v10 = self->scale__;
  v11 = [v5 length];
  v12 = JavaLangMath_absWithInt_(self->scale__);
  v13 = new_JavaLangStringBuilder_initWithInt_(v11 + v12 + 1);
  v14 = v13;
  if ((v8 & 0x80000000) != 0)
  {
    [(JavaLangStringBuilder *)v13 appendWithChar:45];
  }

  if (self->scale__ >= 1)
  {
    v15 = v9 - [v5 length] + v10;
    if (v15 < 0)
    {
      v20 = (v9 - v15);
      -[JavaLangStringBuilder appendWithNSString:](v14, "appendWithNSString:", [v5 substring:v9 endIndex:v20]);
      [(JavaLangStringBuilder *)v14 appendWithChar:46];
      v17 = v5;
      v18 = v20;
LABEL_23:
      -[JavaLangStringBuilder appendWithNSString:](v14, "appendWithNSString:", [v17 substring:v18]);
      goto LABEL_24;
    }

    [(JavaLangStringBuilder *)v14 appendWithNSString:@"0."];
    if (qword_100554A70)
    {
      for (i = *(qword_100554A70 + 8); v15 > i; v15 -= i)
      {
        [(JavaLangStringBuilder *)v14 appendWithCharArray:?];
        i = *(qword_100554A70 + 8);
      }

      [JavaLangStringBuilder appendWithCharArray:v14 withInt:"appendWithCharArray:withInt:withInt:" withInt:?];
      v17 = v5;
      v18 = v9;
      goto LABEL_23;
    }

LABEL_27:
    JreThrowNullPointerException();
  }

  -[JavaLangStringBuilder appendWithNSString:](v14, "appendWithNSString:", [v5 substring:v9]);
  if (!qword_100554A70)
  {
    goto LABEL_27;
  }

  for (j = *(qword_100554A70 + 8); v10 < -j; v10 += j)
  {
    [(JavaLangStringBuilder *)v14 appendWithCharArray:?];
    j = *(qword_100554A70 + 8);
  }

  [JavaLangStringBuilder appendWithCharArray:v14 withInt:"appendWithCharArray:withInt:withInt:" withInt:?];
LABEL_24:

  return [(JavaLangStringBuilder *)v14 description];
}

- (id)toBigInteger
{
  scale = self->scale__;
  if (!scale || !self->bitLength_ && self->smallValue_ != -1)
  {

    return [JavaMathBigDecimal unscaledValue]_0(self);
  }

  v4 = [JavaMathBigDecimal unscaledValue]_0(self);
  v5 = v4;
  if ((scale & 0x80000000) == 0)
  {
    if (v4)
    {
      v6 = JavaMathMultiplication_powerOf10WithLong_(self->scale__);

      return [v5 divideWithJavaMathBigInteger:v6];
    }

LABEL_16:
    JreThrowNullPointerException();
  }

  if (!v4)
  {
    goto LABEL_16;
  }

  v8 = JavaMathMultiplication_powerOf10WithLong_(-self->scale__);

  return [v5 multiplyWithJavaMathBigInteger:v8];
}

- (id)toBigIntegerExact
{
  scale = self->scale__;
  if (!scale || (bitLength = self->bitLength_) == 0 && self->smallValue_ != -1)
  {

    return [JavaMathBigDecimal unscaledValue]_0(self);
  }

  if ((scale & 0x80000000) == 0)
  {
    precision = self->precision_;
    if (precision <= 0)
    {
      v6 = (bitLength - 1) * 0.301029996;
      v7 = v6;
      if (v6 < 0.0)
      {
        v8 = 0x80000000;
      }

      else
      {
        v8 = 0x7FFFFFFF;
      }

      if (v7 == 0x80000000)
      {
        v7 = v8;
      }

      precision = v7 + 1;
    }

    if (scale > precision)
    {
      goto LABEL_32;
    }

    v9 = [JavaMathBigDecimal unscaledValue]_0(self);
    if (v9)
    {
      if (scale > [v9 getLowestSetBit])
      {
        goto LABEL_32;
      }

      v10 = [JavaMathBigDecimal unscaledValue]_0(self);
      if (v10)
      {
        v11 = [v10 divideAndRemainderWithJavaMathBigInteger:JavaMathMultiplication_powerOf10WithLong_(self->scale__)];
        if (v11)
        {
          v12 = v11;
          v13 = v11[2];
          if (v13 <= 1)
          {
            IOSArray_throwOutOfBoundsWithMsg(v13, 1);
          }

          v14 = *(v12 + 4);
          if (v14)
          {
            if (![v14 signum])
            {
              v15 = v12[2];
              if (v15 <= 0)
              {
                IOSArray_throwOutOfBoundsWithMsg(v15, 0);
              }

              return *(v12 + 3);
            }

LABEL_32:
            v20 = new_JavaLangArithmeticException_initWithNSString_(@"Rounding necessary");
            objc_exception_throw(v20);
          }
        }
      }
    }

LABEL_29:
    JreThrowNullPointerException();
  }

  v17 = [JavaMathBigDecimal unscaledValue]_0(self);
  if (!v17)
  {
    goto LABEL_29;
  }

  v18 = v17;
  v19 = JavaMathMultiplication_powerOf10WithLong_(-self->scale__);

  return [v18 multiplyWithJavaMathBigInteger:v19];
}

- (int64_t)longLongValue
{
  scale = self->scale__;
  if (scale < -63)
  {
    return 0;
  }

  precision = self->precision_;
  if (precision <= 0)
  {
    v4 = (self->bitLength_ - 1) * 0.301029996;
    v5 = v4;
    if (v4 < 0.0)
    {
      v6 = 0x80000000;
    }

    else
    {
      v6 = 0x7FFFFFFF;
    }

    if (v5 == 0x80000000)
    {
      v5 = v6;
    }

    precision = v5 + 1;
  }

  if (scale > precision)
  {
    return 0;
  }

  v8 = [(JavaMathBigDecimal *)self toBigInteger];
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  return [v8 longLongValue];
}

- (int)intValue
{
  scale = self->scale__;
  if (scale < -31)
  {
    return 0;
  }

  precision = self->precision_;
  if (precision <= 0)
  {
    v4 = (self->bitLength_ - 1) * 0.301029996;
    v5 = v4;
    if (v4 < 0.0)
    {
      v6 = 0x80000000;
    }

    else
    {
      v6 = 0x7FFFFFFF;
    }

    if (v5 == 0x80000000)
    {
      v5 = v6;
    }

    precision = v5 + 1;
  }

  if (scale > precision)
  {
    return 0;
  }

  v8 = [(JavaMathBigDecimal *)self toBigInteger];
  if (!v8)
  {
    JreThrowNullPointerException();
  }

  return [v8 intValue];
}

- (float)floatValue
{
  v3 = [(JavaMathBigDecimal *)self signum];
  *v4.i32 = v3;
  *v5.i64 = self->scale__ / 0.301029996;
  v6 = *v5.i64;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (*v5.i64 < 0.0)
  {
    v7 = 0x8000000000000000;
  }

  if (v6 == 0x8000000000000000)
  {
    v6 = v7;
  }

  v8 = self->bitLength_ - v6;
  if (v8 < -149 || v3 == 0)
  {
    v5.i64[0] = 0;
    v10.i64[0] = 0x8000000080000000;
    v10.i64[1] = 0x8000000080000000;
    LODWORD(result) = vbslq_s8(v10, v5, v4).u32[0];
  }

  else if (v8 < 130)
  {
    [(JavaMathBigDecimal *)self doubleValue];
    return v12;
  }

  else
  {
    return *v4.i32 * INFINITY;
  }

  return result;
}

- (double)doubleValue
{
  v3 = [(JavaMathBigDecimal *)self signum];
  v5 = v3;
  bitLength = self->bitLength_;
  *v7.i64 = self->scale__ / 0.301029996;
  v8 = *v7.i64;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (*v7.i64 < 0.0)
  {
    v9 = 0x8000000000000000;
  }

  if (v8 == 0x8000000000000000)
  {
    v8 = v9;
  }

  v10 = bitLength - v8;
  if (bitLength - v8 < -1074 || v3 == 0)
  {
    goto LABEL_10;
  }

  if (v10 >= 1026)
  {
LABEL_43:
    *v7.i64 = (v5 * INFINITY);
    return *v7.i64;
  }

  v13 = [JavaMathBigDecimal unscaledValue]_0(self);
  if (!v13)
  {
    goto LABEL_61;
  }

  v14 = [v13 abs];
  scale = self->scale__;
  if (scale <= 0)
  {
    if (!v14)
    {
      goto LABEL_61;
    }

    v18 = [v14 multiplyWithJavaMathBigInteger:JavaMathMultiplication_powerOf10WithLong_(-scale)];
    v17 = 1076;
  }

  else
  {
    v16 = JavaMathMultiplication_powerOf10WithLong_(scale);
    if (v10 > 99)
    {
      v17 = 1074;
    }

    else
    {
      if (!v14)
      {
        goto LABEL_61;
      }

      v14 = [v14 shiftLeftWithInt:(100 - v10)];
      v17 = v10 + 974;
    }

    if (!v14)
    {
      goto LABEL_61;
    }

    v19 = [v14 divideAndRemainderWithJavaMathBigInteger:v16];
    if (!v19)
    {
      goto LABEL_61;
    }

    v20 = v19;
    v21 = v19[2];
    if (v21 <= 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v21, 1);
    }

    v22 = *(v20 + 4);
    if (!v22)
    {
      goto LABEL_61;
    }

    v23 = [v22 shiftLeftOneBit];
    if (!v23)
    {
      goto LABEL_61;
    }

    v24 = [v23 compareToWithId:v16];
    v25 = v20[2];
    if (v25 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v25, 0);
    }

    v26 = *(v20 + 3);
    if (!v26 || (v27 = [v26 shiftLeftWithInt:2]) == 0)
    {
LABEL_61:
      JreThrowNullPointerException();
    }

    v18 = [v27 addWithJavaMathBigInteger:JavaMathBigInteger_valueOfWithLong_(((v24 + 3) * v24) / 2 + 1)];
  }

  if (!v18)
  {
    goto LABEL_61;
  }

  v28 = [v18 getLowestSetBit];
  v29 = [v18 bitLength];
  v30 = v29 - 54;
  if (v30 >= 1)
  {
    v31 = [v18 shiftRightWithInt:v30];
    if (v31)
    {
      v32 = [v31 longLongValue];
      if ((~v32 & 3) != 0)
      {
        v33 = v32 & (v28 < v30);
      }

      else
      {
        v33 = 1;
      }

      v34 = v32 + 2;
      if (!v33)
      {
        v34 = v32;
      }

      goto LABEL_40;
    }

    goto LABEL_61;
  }

  v32 = [v18 longLongValue] << (54 - v29);
  v34 = v32 + 2;
  if ((~v32 & 3) != 0)
  {
    v34 = v32;
  }

LABEL_40:
  v35 = v29 - 53;
  if ((v34 & 0x40000000000000) == 0)
  {
    v35 = v29 - 54;
  }

  v36 = v35 + v17;
  if (v36 >= 2047)
  {
    goto LABEL_43;
  }

  v37 = 1;
  if ((v34 & 0x40000000000000) != 0)
  {
    v37 = 2;
  }

  if (v36 <= 0)
  {
    if (v36 > -54)
    {
      v39 = v32 >> 1 >> -v36;
      if ((~v39 & 3) == 0 || (v39 & 1) != 0 && (((0xFFFFFFFFFFFFFFFFLL >> (v36 + 63)) & (v32 >> 1)) != 0 ? (v40 = v28 < v30) : (v40 = 0), v40))
      {
        ++v39;
      }

      v36 = 0;
      v38 = v39 >> 1;
      goto LABEL_58;
    }

LABEL_10:
    *v7.i64 = v5;
    v4.i64[0] = 0;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v7.i64[0] = vbslq_s8(vnegq_f64(v12), v4, v7).u64[0];
    return *v7.i64;
  }

  v38 = v34 >> v37;
LABEL_58:

  *v7.i64 = JavaLangDouble_longBitsToDoubleWithLong_(v5 & 0x8000000000000000 | (v36 << 52) | v38 & 0xFFFFFFFFFFFFFLL);
  return *v7.i64;
}

+ (int)longCompareToWithLong:(int64_t)a3 withLong:(int64_t)a4
{
  if ((atomic_load_explicit(JavaMathBigDecimal__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100164DDC();
  }

  if (a3 >= a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (a3 > a4)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

- (int)aproxPrecision
{
  precision = self->precision_;
  if (precision <= 0)
  {
    v3 = (self->bitLength_ - 1) * 0.301029996;
    v4 = v3;
    if (v3 < 0.0)
    {
      v5 = 0x80000000;
    }

    else
    {
      v5 = 0x7FFFFFFF;
    }

    if (v4 == 0x80000000)
    {
      v4 = v5;
    }

    return v4 + 1;
  }

  return precision;
}

- (void)readObjectWithJavaIoObjectInputStream:(id)a3
{
  if (!a3 || ([a3 defaultReadObject], (intVal = self->intVal_) == 0))
  {
    JreThrowNullPointerException();
  }

  v5 = [(JavaMathBigInteger *)intVal bitLength];
  self->bitLength_ = v5;
  if (v5 <= 63)
  {
    self->smallValue_ = [(JavaMathBigInteger *)self->intVal_ longLongValue];
  }
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  [JavaMathBigDecimal unscaledValue]_0(self);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 defaultWriteObject];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaMathBigDecimal;
  [(JavaMathBigDecimal *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [JavaMathBigDecimal alloc];
    sub_10015DB2C(v2, 0, 0);
    JreStrongAssignAndConsume(&JavaMathBigDecimal_ZERO_, v2);
    v3 = [JavaMathBigDecimal alloc];
    sub_10015DB2C(v3, 1, 0);
    JreStrongAssignAndConsume(&JavaMathBigDecimal_ONE_, v3);
    v4 = [JavaMathBigDecimal alloc];
    sub_10015DB2C(v4, 10, 0);
    JreStrongAssignAndConsume(&JavaMathBigDecimal_TEN_, v4);
    v24[6] = xmmword_100314920;
    v24[7] = unk_100314930;
    v24[8] = xmmword_100314940;
    v25 = 1000000000000000000;
    v24[2] = xmmword_1003148E0;
    v24[3] = unk_1003148F0;
    v24[4] = xmmword_100314900;
    v24[5] = unk_100314910;
    v24[0] = xmmword_1003148C0;
    v24[1] = unk_1003148D0;
    JreStrongAssignAndConsume(&qword_100554A50, [IOSLongArray newArrayWithLongs:v24 count:19]);
    v23[10] = xmmword_1003149F8;
    v23[11] = unk_100314A08;
    v23[12] = xmmword_100314A18;
    v23[13] = unk_100314A28;
    v23[6] = xmmword_1003149B8;
    v23[7] = unk_1003149C8;
    v23[8] = xmmword_1003149D8;
    v23[9] = unk_1003149E8;
    v23[2] = xmmword_100314978;
    v23[3] = unk_100314988;
    v23[4] = xmmword_100314998;
    v23[5] = unk_1003149A8;
    v23[0] = xmmword_100314958;
    v23[1] = unk_100314968;
    JreStrongAssignAndConsume(&qword_100554A78, [IOSLongArray newArrayWithLongs:v23 count:28]);
    JreStrongAssignAndConsume(&qword_100554A80, [IOSIntArray newArrayWithLength:*(qword_100554A78 + 8)]);
    JreStrongAssignAndConsume(&qword_100554A58, [IOSIntArray newArrayWithLength:*(qword_100554A50 + 8)]);
    v5 = [IOSObjectArray newArrayWithLength:11 type:JavaMathBigDecimal_class_()];
    JreStrongAssignAndConsume(&qword_100554A88, v5);
    v6 = [IOSObjectArray newArrayWithLength:11 type:JavaMathBigDecimal_class_()];
    JreStrongAssignAndConsume(&qword_100554A90, v6);
    JreStrongAssignAndConsume(&qword_100554A70, [IOSCharArray newArrayWithLength:100]);
    if (*(qword_100554A90 + 8) < 1)
    {
      LODWORD(v7) = 0;
    }

    else
    {
      v7 = 0;
      do
      {
        v8 = qword_100554A88;
        v9 = [JavaMathBigDecimal alloc];
        sub_10015DB2C(v9, v7, 0);
        IOSObjectArray_SetAndConsume(v8, v7, v9);
        v10 = qword_100554A90;
        v11 = [JavaMathBigDecimal alloc];
        sub_10015DB2C(v11, 0, v7);
        IOSObjectArray_SetAndConsume(v10, v7, v11);
        v12 = *(qword_100554A70 + 8);
        if (v7 >= v12)
        {
          IOSArray_throwOutOfBoundsWithMsg(v12, v7);
        }

        *(qword_100554A70 + 12 + 2 * v7++) = 48;
      }

      while (v7 < *(qword_100554A90 + 8));
    }

    v13 = qword_100554A70;
    if (v7 < *(qword_100554A70 + 8))
    {
      v14 = v7;
      do
      {
        *(v13 + 12 + 2 * v14++) = 48;
        v13 = qword_100554A70;
      }

      while (*(qword_100554A70 + 8) > v14);
    }

    if (*(qword_100554A80 + 8) >= 1)
    {
      v15 = 0;
      do
      {
        v16 = *(qword_100554A78 + 8);
        if (v15 >= v16)
        {
          IOSArray_throwOutOfBoundsWithMsg(v16, v15);
        }

        v17 = sub_10016465C(*(qword_100554A78 + 16 + 8 * v15));
        v18 = *(qword_100554A80 + 8);
        if (v15 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, v15);
        }

        *(qword_100554A80 + 12 + 4 * v15++) = v17;
      }

      while (v15 < *(qword_100554A80 + 8));
    }

    if (*(qword_100554A58 + 8) >= 1)
    {
      v19 = 0;
      do
      {
        v20 = *(qword_100554A50 + 8);
        if (v19 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, v19);
        }

        v21 = sub_10016465C(*(qword_100554A50 + 16 + 8 * v19));
        v22 = *(qword_100554A58 + 8);
        if (v19 >= v22)
        {
          IOSArray_throwOutOfBoundsWithMsg(v22, v19);
        }

        *(qword_100554A58 + 12 + 4 * v19++) = v21;
      }

      while (v19 < *(qword_100554A58 + 8));
    }

    if ((atomic_load_explicit(JavaMathMultiplication__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100164E14();
    }

    JreStrongAssign(&qword_100554A68, JavaMathMultiplication_bigTenPows_);
    if ((atomic_load_explicit(JavaMathMultiplication__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100164E14();
    }

    JreStrongAssign(&qword_100554A60, JavaMathMultiplication_bigFivePows_);
    atomic_store(1u, JavaMathBigDecimal__initialized);
  }
}

@end