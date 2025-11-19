@interface JavaMathBigInteger
+ (void)initialize;
- (BOOL)equalsArraysWithIntArray:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOne;
- (BOOL)isProbablePrimeWithInt:(int)a3;
- (BOOL)testBitWithInt:(int)a3;
- (JavaMathBigInteger)initWithInt:(int)a3 withInt:(int)a4 withIntArray:(id)a5;
- (id)abs;
- (id)clearBitWithInt:(int)a3;
- (id)copy__;
- (id)divideAndRemainderWithJavaMathBigInteger:(id)a3;
- (id)divideWithJavaMathBigInteger:(id)a3;
- (id)flipBitWithInt:(int)a3;
- (id)gcdWithJavaMathBigInteger:(id)a3;
- (id)maxWithJavaMathBigInteger:(id)a3;
- (id)minWithJavaMathBigInteger:(id)a3;
- (id)modInverseWithJavaMathBigInteger:(id)a3;
- (id)modPowWithJavaMathBigInteger:(id)a3 withJavaMathBigInteger:(id)a4;
- (id)modWithJavaMathBigInteger:(id)a3;
- (id)multiplyWithJavaMathBigInteger:(id)a3;
- (id)negate;
- (id)nextProbablePrime;
- (id)remainderWithJavaMathBigInteger:(id)a3;
- (id)setBitWithInt:(int)a3;
- (id)shiftLeftOneBit;
- (id)shiftLeftWithInt:(int)a3;
- (id)shiftRightWithInt:(int)a3;
- (id)toByteArray;
- (int)compareToWithId:(id)a3;
- (int)getFirstNonzeroDigit;
- (int)getLowestSetBit;
- (int)intValue;
- (int64_t)longLongValue;
- (uint64_t)cutOffLeadingZeroes;
- (unint64_t)hash;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)a3;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaMathBigInteger

- (JavaMathBigInteger)initWithInt:(int)a3 withInt:(int)a4 withIntArray:(id)a5
{
  self->firstNonzeroDigit_ = -2;
  self->hashCode_ = 0;
  self->sign_ = a3;
  self->numberLength_ = a4;
  JreStrongAssign(&self->digits_, a5);
  return self;
}

- (id)toByteArray
{
  if (self->sign_)
  {
    v3 = [(JavaMathBigInteger *)self bitLength];
    v4 = [(JavaMathBigInteger *)self getFirstNonzeroDigit];
    v5 = v3 >> 3;
    v6 = v5 + 1;
    v7 = [IOSByteArray arrayWithLength:(v3 >> 3) + 1];
    v8 = v7;
    if (v5 + 1 - 4 * self->numberLength_ == 1)
    {
      size = v7->super.size_;
      if (size <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, 0);
      }

      *(&v8->super.size_ + 4) = self->sign_ >> 31;
      v10 = 4;
      v11 = 1;
    }

    else
    {
      v11 = 0;
      if ((v6 & 3) != 0)
      {
        v10 = v6 & 3;
      }

      else
      {
        v10 = 4;
      }
    }

    if (self->sign_ < 0)
    {
      digits = self->digits_;
      if (!digits)
      {
        goto LABEL_56;
      }

      v21 = v5;
      v22 = digits->super.size_;
      if ((v4 & 0x80000000) != 0 || v4 >= v22)
      {
        IOSArray_throwOutOfBoundsWithMsg(v22, v4);
      }

      v23 = -*(&digits->super.size_ + v4 + 1);
      v24 = v4 + 1;
      if (v4 + 1 == self->numberLength_)
      {
        v25 = v10;
      }

      else
      {
        v25 = 4;
      }

      if (v25 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }

      v27 = v21 - 4 * v4;
      do
      {
        v28 = v8->super.size_;
        if (v27 < 0 || v27 >= v28)
        {
          IOSArray_throwOutOfBoundsWithMsg(v28, v27);
        }

        *(&v8->super.size_ + v27 + 4) = v23;
        v23 >>= 8;
        --v27;
        --v26;
      }

      while (v26);
      LODWORD(v29) = v27 + 1;
      while (v29 > v11)
      {
        v30 = self->digits_;
        v31 = v24;
        v32 = v30->super.size_;
        if (v24 < 0 || v24 >= v32)
        {
          IOSArray_throwOutOfBoundsWithMsg(v32, v24);
        }

        ++v24;
        if (v31 + 1 == self->numberLength_)
        {
          v25 = v10;
        }

        if (v25 >= 1)
        {
          v33 = ~*(&v30->super.size_ + v31 + 1);
          v34 = v25;
          do
          {
            v35 = v8->super.size_;
            v29 = (v29 - 1);
            if (v29 < 0 || v29 >= v35)
            {
              IOSArray_throwOutOfBoundsWithMsg(v35, v29);
            }

            *(&v8->super.size_ + v29 + 4) = v33;
            v33 >>= 8;
            --v34;
          }

          while (v34);
        }
      }
    }

    else
    {
      LODWORD(v12) = v6 - 4 * v4;
      if (v12 > v11)
      {
        v13 = 4;
        while (1)
        {
          v14 = self->digits_;
          if (!v14)
          {
            break;
          }

          v15 = v14->super.size_;
          if ((v4 & 0x80000000) != 0 || v4 >= v15)
          {
            IOSArray_throwOutOfBoundsWithMsg(v15, v4);
          }

          v16 = (v4 + 1);
          if (v16 == self->numberLength_)
          {
            v13 = v10;
          }

          if (v13 >= 1)
          {
            v17 = *(&v14->super.size_ + v4 + 1);
            v18 = v13;
            do
            {
              v19 = v8->super.size_;
              v12 = (v12 - 1);
              if (v12 < 0 || v12 >= v19)
              {
                IOSArray_throwOutOfBoundsWithMsg(v19, v12);
              }

              *(&v8->super.size_ + v12 + 4) = v17;
              v17 >>= 8;
              --v18;
            }

            while (v18);
          }

          v4 = v16;
          if (v12 <= v11)
          {
            return v8;
          }
        }

LABEL_56:
        JreThrowNullPointerException();
      }
    }
  }

  else
  {
    v37 = 0;
    return [IOSByteArray arrayWithBytes:&v37 count:1];
  }

  return v8;
}

- (id)abs
{
  if ((*(self + 5) & 0x80000000) != 0)
  {
    v3 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(1, *(self + 4), *(self + 1));

    return v3;
  }

  return self;
}

- (id)negate
{
  v2 = *(self + 5);
  if (v2)
  {
    v3 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(-v2, *(self + 4), *(self + 1));

    return v3;
  }

  return self;
}

- (id)shiftRightWithInt:(int)a3
{
  if (a3 && *(self + 5))
  {
    if (a3 < 1)
    {
      return JavaMathBitLevel_shiftLeftWithJavaMathBigInteger_withInt_(self, -a3);
    }

    else
    {
      return JavaMathBitLevel_shiftRightWithJavaMathBigInteger_withInt_(self, a3);
    }
  }

  return self;
}

- (id)shiftLeftWithInt:(int)a3
{
  if (a3 && *(self + 5))
  {
    if (a3 < 1)
    {
      return JavaMathBitLevel_shiftRightWithJavaMathBigInteger_withInt_(self, -a3);
    }

    else
    {
      return JavaMathBitLevel_shiftLeftWithJavaMathBigInteger_withInt_(self, a3);
    }
  }

  return self;
}

- (id)shiftLeftOneBit
{
  if (*(self + 5))
  {
    return JavaMathBitLevel_shiftLeftOneBitWithJavaMathBigInteger_(self);
  }

  return self;
}

- (BOOL)testBitWithInt:(int)a3
{
  if (a3)
  {
    v4 = a3;
    if (a3 < 0)
    {
      v13 = new_JavaLangArithmeticException_initWithNSString_(@"Negative bit address");
      objc_exception_throw(v13);
    }

    v5 = a3 >> 5;
    if ((a3 >> 5) >= self->numberLength_)
    {
      return self->sign_ >> 31;
    }

    digits = self->digits_;
    if (digits)
    {
      size = digits->super.size_;
      if (v5 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, a3 >> 5);
      }

      v8 = *(&digits->super.size_ + v5 + 1);
      if ((self->sign_ & 0x80000000) == 0 || ((v9 = [(JavaMathBigInteger *)self getFirstNonzeroDigit], LOBYTE(v10) = 0, v9 != v5) ? (v8 = ~v8) : (v8 = -v8), v5 >= v9))
      {
        LOBYTE(v10) = (v8 & (1 << v4)) != 0;
      }

      return v10;
    }

LABEL_17:
    JreThrowNullPointerException();
  }

  v11 = self->digits_;
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = v11->super.size_;
  if (v12 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, 0);
  }

  LOBYTE(v10) = *(&v11->super.size_ + 1) & 1;
  return v10;
}

- (id)setBitWithInt:(int)a3
{
  if ([(JavaMathBigInteger *)self testBitWithInt:?])
  {
    return self;
  }

  return JavaMathBitLevel_flipBitWithJavaMathBigInteger_withInt_(self, a3);
}

- (id)clearBitWithInt:(int)a3
{
  if (![(JavaMathBigInteger *)self testBitWithInt:?])
  {
    return self;
  }

  return JavaMathBitLevel_flipBitWithJavaMathBigInteger_withInt_(self, a3);
}

- (id)flipBitWithInt:(int)a3
{
  if (a3 < 0)
  {
    v5 = new_JavaLangArithmeticException_initWithNSString_(@"Negative bit address");
    objc_exception_throw(v5);
  }

  return JavaMathBitLevel_flipBitWithJavaMathBigInteger_withInt_(self, a3);
}

- (int)getLowestSetBit
{
  if (!self->sign_)
  {
    return -1;
  }

  v3 = [(JavaMathBigInteger *)self getFirstNonzeroDigit];
  digits = self->digits_;
  if (!digits)
  {
    JreThrowNullPointerException();
  }

  v5 = v3;
  v6 = 32 * v3;
  size = digits->super.size_;
  if ((v5 & 0x80000000) != 0 || v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v5);
  }

  return JavaLangInteger_numberOfTrailingZerosWithInt_(*(&digits->super.size_ + v5 + 1)) + v6;
}

- (int)intValue
{
  digits = self->digits_;
  if (!digits)
  {
    JreThrowNullPointerException();
  }

  sign = self->sign_;
  size = digits->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  return *(&digits->super.size_ + 1) * sign;
}

- (int64_t)longLongValue
{
  digits = self->digits_;
  if (self->numberLength_ >= 2)
  {
    if (digits)
    {
      sub_10019A284(self->digits_, &self->digits_, &v7);
      v5 = v7;
      return v5 * self->sign_;
    }

LABEL_8:
    JreThrowNullPointerException();
  }

  if (!digits)
  {
    goto LABEL_8;
  }

  size = digits->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  v5 = *(&digits->super.size_ + 1);
  return v5 * self->sign_;
}

- (int)compareToWithId:(id)a3
{
  objc_opt_class();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  sign = self->sign_;
  v6 = *(a3 + 5);
  if (sign > v6)
  {
    return 1;
  }

  if (sign < v6)
  {
    return -1;
  }

  numberLength = self->numberLength_;
  v8 = *(a3 + 4);
  if (numberLength <= v8)
  {
    if (numberLength < v8)
    {
      return -v6;
    }

    else
    {
      sign *= JavaMathElementary_compareArraysWithIntArray_withIntArray_withInt_(self->digits_, *(a3 + 1), numberLength);
    }
  }

  return sign;
}

- (id)minWithJavaMathBigInteger:(id)a3
{
  if ([(JavaMathBigInteger *)self compareToWithId:?]== -1)
  {
    return self;
  }

  else
  {
    return a3;
  }
}

- (id)maxWithJavaMathBigInteger:(id)a3
{
  if ([(JavaMathBigInteger *)self compareToWithId:?]== 1)
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
    digits = self->digits_;
    if (!digits)
    {
LABEL_6:
      JreThrowNullPointerException();
    }

    v4 = 0;
    v5 = 0;
    while (v5 < digits->super.size_)
    {
      v4 = *(&digits->super.size_ + v5 + 1) + 33 * v4;
      self->hashCode_ = v4;
      ++v5;
      digits = self->digits_;
      if (!digits)
      {
        goto LABEL_6;
      }
    }

    hashCode = self->sign_ * v4;
    self->hashCode_ = hashCode;
  }

  return hashCode;
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
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (self->sign_ != *(a3 + 5) || self->numberLength_ != *(a3 + 4))
  {
    return 0;
  }

  v5 = *(a3 + 1);

  return [(JavaMathBigInteger *)self equalsArraysWithIntArray:v5];
}

- (BOOL)equalsArraysWithIntArray:(id)a3
{
  numberLength = self->numberLength_;
  do
  {
    v5 = numberLength--;
    if ((numberLength & 0x80000000) != 0)
    {
      break;
    }

    digits = self->digits_;
    if (!digits)
    {
      goto LABEL_12;
    }

    size = digits->super.size_;
    if (size <= numberLength)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, numberLength);
    }

    if (!a3)
    {
LABEL_12:
      JreThrowNullPointerException();
    }

    v8 = *(&digits->super.size_ + (numberLength & 0x7FFFFFFF) + 1);
    v9 = *(a3 + 2);
    if (v9 <= numberLength)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, numberLength);
    }
  }

  while (v8 == *(a3 + (numberLength & 0x7FFFFFFF) + 3));
  return (v5 - 1) >> 31;
}

- (id)gcdWithJavaMathBigInteger:(id)a3
{
  v4 = [(JavaMathBigInteger *)self abs];
  if (!a3)
  {
    goto LABEL_24;
  }

  v5 = v4;
  v6 = [a3 abs];
  if (!v5)
  {
    goto LABEL_24;
  }

  v7 = v6;
  if (![v5 signum])
  {
    return v7;
  }

  if (!v7)
  {
    goto LABEL_24;
  }

  if (![v7 signum])
  {
    return v5;
  }

  v8 = *(v5 + 4);
  if (v8 != 1)
  {
    if (v8 != 2)
    {
      goto LABEL_19;
    }

    v9 = *(v5 + 1);
    if (!v9)
    {
      goto LABEL_24;
    }

    v10 = *(v9 + 8);
    if (v10 <= 1)
    {
      v18 = *(v5 + 1);
      IOSArray_throwOutOfBoundsWithMsg(v10, 1);
    }

    if (*(v9 + 16) < 1)
    {
      goto LABEL_19;
    }
  }

  v11 = *(v7 + 4);
  if (v11 == 1)
  {
LABEL_16:
    v14 = JavaMathDivision_gcdBinaryWithLong_withLong_([v5 longLongValue], objc_msgSend(v7, "longLongValue"));

    return JavaMathBigInteger_valueOfWithLong_(v14);
  }

  if (v11 == 2)
  {
    v12 = *(v7 + 1);
    if (v12)
    {
      v13 = *(v12 + 8);
      if (v13 <= 1)
      {
        v19 = *(v7 + 1);
        IOSArray_throwOutOfBoundsWithMsg(v13, 1);
      }

      if (*(v12 + 16) >= 1)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

LABEL_24:
    JreThrowNullPointerException();
  }

LABEL_19:
  v16 = [v5 copy];
  v17 = [v7 copy];

  return JavaMathDivision_gcdBinaryWithJavaMathBigInteger_withJavaMathBigInteger_(v16, v17);
}

- (id)multiplyWithJavaMathBigInteger:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if (!*(a3 + 5) || !self->sign_)
  {
    return JavaMathBigInteger_ZERO_;
  }

  return JavaMathMultiplication_multiplyWithJavaMathBigInteger_withJavaMathBigInteger_(self, a3);
}

- (id)divideAndRemainderWithJavaMathBigInteger:(id)a3
{
  if (!a3)
  {
LABEL_18:
    JreThrowNullPointerException();
  }

  v3 = *(a3 + 5);
  if (!v3)
  {
    v22 = new_JavaLangArithmeticException_initWithNSString_(@"BigInteger divide by zero");
    objc_exception_throw(v22);
  }

  v5 = *(a3 + 4);
  v6 = *(a3 + 1);
  if (v5 != 1)
  {
    digits = self->digits_;
    numberLength = self->numberLength_;
    if (numberLength == v5)
    {
      if ((JavaMathElementary_compareArraysWithIntArray_withIntArray_withInt_(self->digits_, *(a3 + 1), *(a3 + 4)) & 0x80000000) == 0)
      {
LABEL_11:
        sign = self->sign_;
        v14 = numberLength - v5 + 1;
        if (sign == v3)
        {
          v15 = 1;
        }

        else
        {
          v15 = -1;
        }

        v16 = [IOSIntArray arrayWithLength:v14];
        v17 = JavaMathDivision_divideWithIntArray_withInt_withIntArray_withInt_withIntArray_withInt_(v16, v14, digits, numberLength, v6, v5);
        v18 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(v15, v14, v16);
        v19 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(sign, v5, v17);
        [JavaMathBigInteger cutOffLeadingZeroes]_0(v18);
        [JavaMathBigInteger cutOffLeadingZeroes]_0(v19);
        v23[0] = v18;
        v23[1] = v19;
        v20 = JavaMathBigInteger_class_();
        v21 = v23;
        return [IOSObjectArray arrayWithObjects:v21 count:2 type:v20];
      }
    }

    else if (numberLength > v5)
    {
      goto LABEL_11;
    }

    v24[0] = JavaMathBigInteger_ZERO_;
    v24[1] = self;
    v20 = JavaMathBigInteger_class_();
    v21 = v24;
    return [IOSObjectArray arrayWithObjects:v21 count:2 type:v20];
  }

  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6[2];
  if (v7 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, 0);
  }

  v8 = v6[3];
  v9 = *(a3 + 5);

  return JavaMathDivision_divideAndRemainderByIntegerWithJavaMathBigInteger_withInt_withInt_(self, v8, v9);
}

- (uint64_t)cutOffLeadingZeroes
{
  do
  {
    v2 = *(a1 + 16);
    v3 = (v2 - 1);
    if (v2 < 1)
    {
      break;
    }

    v4 = *(a1 + 8);
    if (!v4)
    {
      goto LABEL_13;
    }

    *(a1 + 16) = v3;
    v5 = *(v4 + 8);
    if (v2 > v5)
    {
      IOSArray_throwOutOfBoundsWithMsg(v5, (v2 - 1));
    }
  }

  while (!*(v4 + 12 + 4 * v3));
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_13:
    JreThrowNullPointerException();
  }

  v7 = *(a1 + 16);
  *(a1 + 16) = v7 + 1;
  result = *(v6 + 8);
  if (v7 < 0 || v7 >= result)
  {
    IOSArray_throwOutOfBoundsWithMsg(result, v7);
  }

  if (!*(v6 + 12 + 4 * v7))
  {
    *(a1 + 20) = 0;
  }

  return result;
}

- (id)divideWithJavaMathBigInteger:(id)a3
{
  if (!a3)
  {
    goto LABEL_36;
  }

  v4 = *(a3 + 5);
  if (!v4)
  {
    v25 = new_JavaLangArithmeticException_initWithNSString_(@"BigInteger divide by zero");
    objc_exception_throw(v25);
  }

  if ([a3 isOne])
  {
    if (*(a3 + 5) <= 0)
    {

      return [(JavaMathBigInteger *)self negate];
    }

    return self;
  }

  sign = self->sign_;
  numberLength = self->numberLength_;
  v9 = *(a3 + 4);
  if (v9 + numberLength != 2)
  {
    if (numberLength == v9)
    {
      v16 = JavaMathElementary_compareArraysWithIntArray_withIntArray_withInt_(self->digits_, *(a3 + 1), self->numberLength_);
      if (v16 != -1)
      {
        if (!v16)
        {
          v17 = &JavaMathBigInteger_ONE_;
          if (sign != v4)
          {
            v17 = &JavaMathBigInteger_MINUS_ONE_;
          }

          return *v17;
        }

        goto LABEL_25;
      }
    }

    else if (numberLength > v9)
    {
LABEL_25:
      v18 = numberLength - v9 + 1;
      v19 = [IOSIntArray arrayWithLength:v18];
      v20 = v19;
      if (sign == v4)
      {
        v21 = 1;
      }

      else
      {
        v21 = -1;
      }

      digits = self->digits_;
      v23 = *(a3 + 1);
      if (v9 != 1)
      {
        JavaMathDivision_divideWithIntArray_withInt_withIntArray_withInt_withIntArray_withInt_(v19, v18, digits, numberLength, v23, v9);
LABEL_34:
        self = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(v21, v18, v20);
        [JavaMathBigInteger cutOffLeadingZeroes]_0(self);
        return self;
      }

      if (v23)
      {
        v24 = v23[2];
        if (v24 <= 0)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, 0);
        }

        JavaMathDivision_divideArrayByIntWithIntArray_withIntArray_withInt_withInt_(v20, digits, numberLength, v23[3]);
        goto LABEL_34;
      }

LABEL_36:
      JreThrowNullPointerException();
    }

    return JavaMathBigInteger_ZERO_;
  }

  v10 = self->digits_;
  if (!v10)
  {
    goto LABEL_36;
  }

  size = v10->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  v12 = *(&v10->super.size_ + 1);
  v13 = *(a3 + 1);
  v14 = *(v13 + 8);
  if (v14 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v14, 0);
  }

  if (sign == v4)
  {
    v15 = v12 / *(v13 + 12);
  }

  else
  {
    v15 = -(v12 / *(v13 + 12));
  }

  return JavaMathBigInteger_valueOfWithLong_(v15);
}

- (id)remainderWithJavaMathBigInteger:(id)a3
{
  if (!a3)
  {
    goto LABEL_15;
  }

  if (!*(a3 + 5))
  {
    v14 = new_JavaLangArithmeticException_initWithNSString_(@"BigInteger divide by zero");
    objc_exception_throw(v14);
  }

  v4 = self;
  numberLength = self->numberLength_;
  v6 = *(a3 + 4);
  if (numberLength == v6)
  {
    if (JavaMathElementary_compareArraysWithIntArray_withIntArray_withInt_(self->digits_, *(a3 + 1), numberLength) == -1)
    {
      return v4;
    }

    goto LABEL_7;
  }

  if (numberLength > v6)
  {
LABEL_7:
    v7 = [IOSIntArray arrayWithLength:v6];
    if (v6 != 1)
    {
      v9 = JavaMathDivision_divideWithIntArray_withInt_withIntArray_withInt_withIntArray_withInt_(0, numberLength - v6 + 1, v4->digits_, numberLength, *(a3 + 1), v6);
LABEL_13:
      v4 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(v4->sign_, v6, v9);
      [JavaMathBigInteger cutOffLeadingZeroes]_0(v4);
      return v4;
    }

    v8 = *(a3 + 1);
    if (v8)
    {
      v9 = v7;
      v10 = *(v8 + 8);
      if (v10 <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, 0);
      }

      v11 = JavaMathDivision_remainderArrayByIntWithIntArray_withInt_withInt_(v4->digits_, numberLength, *(v8 + 12));
      v12 = v9[2];
      if (v12 <= 0)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, 0);
      }

      v9[3] = v11;
      goto LABEL_13;
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  return v4;
}

- (id)modInverseWithJavaMathBigInteger:(id)a3
{
  if (!a3)
  {
    goto LABEL_15;
  }

  if (*(a3 + 5) <= 0)
  {
    v9 = @"BigInteger: modulus not positive";
    goto LABEL_18;
  }

  if (!-[JavaMathBigInteger testBitWithInt:](self, "testBitWithInt:", 0) && ([a3 testBitWithInt:0] & 1) == 0)
  {
LABEL_17:
    v9 = @"BigInteger not invertible.";
LABEL_18:
    v10 = new_JavaLangArithmeticException_initWithNSString_(v9);
    objc_exception_throw(v10);
  }

  if ([a3 isOne])
  {
    return JavaMathBigInteger_ZERO_;
  }

  v6 = [(JavaMathBigInteger *)self abs];
  if (!v6 || (v7 = JavaMathDivision_modInverseMontgomeryWithJavaMathBigInteger_withJavaMathBigInteger_([v6 modWithJavaMathBigInteger:a3], a3)) == 0)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  v5 = v7;
  if (!v7->sign_)
  {
    goto LABEL_17;
  }

  if ((self->sign_ & 0x80000000) == 0)
  {
    return v5;
  }

  return [a3 subtractWithJavaMathBigInteger:v7];
}

- (id)modPowWithJavaMathBigInteger:(id)a3 withJavaMathBigInteger:(id)a4
{
  if (!a4)
  {
    goto LABEL_31;
  }

  if (*(a4 + 5) <= 0)
  {
    v16 = new_JavaLangArithmeticException_initWithNSString_(@"BigInteger: modulus not positive");
    objc_exception_throw(v16);
  }

  v7 = [a4 isOne];
  if (!a3)
  {
    goto LABEL_31;
  }

  v8 = *(a3 + 5);
  if (v8 > 0 && self->sign_ == 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7;
  }

  if (v10 == 1)
  {
    return JavaMathBigInteger_ZERO_;
  }

  if (!v8)
  {
    v13 = JavaMathBigInteger_ONE_;
    if (JavaMathBigInteger_ONE_)
    {
      goto LABEL_27;
    }

    goto LABEL_31;
  }

  if (v8 < 0)
  {
    self = [(JavaMathBigInteger *)self modInverseWithJavaMathBigInteger:a4];
    a3 = [a3 negate];
  }

  if ([a4 testBitWithInt:0])
  {
    if (!self)
    {
      goto LABEL_31;
    }

    v12 = JavaMathDivision_oddModPowWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_([(JavaMathBigInteger *)self abs], a3, a4);
  }

  else
  {
    if (!self)
    {
      goto LABEL_31;
    }

    v12 = JavaMathDivision_evenModPowWithJavaMathBigInteger_withJavaMathBigInteger_withJavaMathBigInteger_([(JavaMathBigInteger *)self abs], a3, a4);
  }

  v11 = v12;
  if ((self->sign_ & 0x80000000) == 0)
  {
    return v11;
  }

  if (!a3)
  {
    goto LABEL_31;
  }

  if (![a3 testBitWithInt:0])
  {
    return v11;
  }

  v14 = [a4 subtractWithJavaMathBigInteger:JavaMathBigInteger_ONE_];
  if (!v14 || (v13 = [v14 multiplyWithJavaMathBigInteger:v11]) == 0)
  {
LABEL_31:
    JreThrowNullPointerException();
  }

LABEL_27:

  return [v13 modWithJavaMathBigInteger:a4];
}

- (id)modWithJavaMathBigInteger:(id)a3
{
  if (!a3)
  {
    goto LABEL_8;
  }

  if (*(a3 + 5) <= 0)
  {
    v5 = new_JavaLangArithmeticException_initWithNSString_(@"BigInteger: modulus not positive");
    objc_exception_throw(v5);
  }

  result = [(JavaMathBigInteger *)self remainderWithJavaMathBigInteger:a3];
  if (!result)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  if ((*(result + 5) & 0x80000000) != 0)
  {

    return [result addWithJavaMathBigInteger:a3];
  }

  return result;
}

- (BOOL)isProbablePrimeWithInt:(int)a3
{
  v4 = [(JavaMathBigInteger *)self abs];

  return JavaMathPrimality_isProbablePrimeWithJavaMathBigInteger_withInt_(v4, a3);
}

- (id)nextProbablePrime
{
  if (self->sign_ < 0)
  {
    [(JavaMathBigInteger *)self description];
    v11 = JreStrcat("$$", v4, v5, v6, v7, v8, v9, v10, @"start < 0: ");
    v12 = new_JavaLangArithmeticException_initWithNSString_(v11);
    objc_exception_throw(v12);
  }

  return JavaMathPrimality_nextProbablePrimeWithJavaMathBigInteger_(self);
}

- (BOOL)isOne
{
  if (self->numberLength_ != 1)
  {
    return 0;
  }

  digits = self->digits_;
  if (!digits)
  {
    JreThrowNullPointerException();
  }

  size = digits->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  return *(&digits->super.size_ + 1) == 1;
}

- (int)getFirstNonzeroDigit
{
  LODWORD(v2) = self->firstNonzeroDigit_;
  if (v2 == -2)
  {
    if (self->sign_)
    {
      digits = self->digits_;
      if (!digits)
      {
LABEL_14:
        JreThrowNullPointerException();
      }

      v2 = 0;
      while (1)
      {
        size = digits->super.size_;
        if ((v2 & 0x80000000) != 0 || v2 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v2);
        }

        if (*(&digits->super.size_ + v2 + 1))
        {
          break;
        }

        v2 = (v2 + 1);
        digits = self->digits_;
        if (!digits)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      LODWORD(v2) = -1;
    }

    self->firstNonzeroDigit_ = v2;
  }

  return v2;
}

- (id)copy__
{
  v3 = [IOSIntArray arrayWithLength:self->numberLength_];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->digits_, 0, v3, 0, self->numberLength_);
  v4 = new_JavaMathBigInteger_initWithInt_withInt_withIntArray_(self->sign_, self->numberLength_, v3);

  return v4;
}

- (void)readObjectWithJavaIoObjectInputStream:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 defaultReadObject];
  self->sign_ = self->signum_;
  sub_100198948(self, self->magnitude_);

  [JavaMathBigInteger cutOffLeadingZeroes]_0(self);
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  self->signum_ = [(JavaMathBigInteger *)self signum];
  v5 = [(JavaMathBigInteger *)self abs];
  if (!v5 || (JreStrongAssign(&self->magnitude_, [v5 toByteArray]), !a3))
  {
    JreThrowNullPointerException();
  }

  [a3 defaultWriteObject];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaMathBigInteger;
  [(JavaMathBigInteger *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [JavaMathBigInteger alloc];
    JavaMathBigInteger_initWithInt_withInt_(v2, 0, 0);
    JreStrongAssignAndConsume(&JavaMathBigInteger_ZERO_, v2);
    v3 = [JavaMathBigInteger alloc];
    JavaMathBigInteger_initWithInt_withInt_(v3, 1, 1);
    JreStrongAssignAndConsume(&JavaMathBigInteger_ONE_, v3);
    v4 = [JavaMathBigInteger alloc];
    JavaMathBigInteger_initWithInt_withInt_(v4, 1, 10);
    JreStrongAssignAndConsume(&JavaMathBigInteger_TEN_, v4);
    v5 = [JavaMathBigInteger alloc];
    JavaMathBigInteger_initWithInt_withInt_(v5, -1, 1);
    JreStrongAssignAndConsume(&JavaMathBigInteger_MINUS_ONE_, v5);
    v19 = JavaMathBigInteger_ZERO_;
    v20 = JavaMathBigInteger_ONE_;
    v6 = [JavaMathBigInteger alloc];
    JavaMathBigInteger_initWithInt_withInt_(v6, 1, 2);
    v21 = v6;
    v7 = [JavaMathBigInteger alloc];
    JavaMathBigInteger_initWithInt_withInt_(v7, 1, 3);
    v22 = v7;
    v8 = [JavaMathBigInteger alloc];
    JavaMathBigInteger_initWithInt_withInt_(v8, 1, 4);
    v23 = v8;
    v9 = [JavaMathBigInteger alloc];
    JavaMathBigInteger_initWithInt_withInt_(v9, 1, 5);
    v24 = v9;
    v10 = [JavaMathBigInteger alloc];
    JavaMathBigInteger_initWithInt_withInt_(v10, 1, 6);
    v25 = v10;
    v11 = [JavaMathBigInteger alloc];
    JavaMathBigInteger_initWithInt_withInt_(v11, 1, 7);
    v26 = v11;
    v12 = [JavaMathBigInteger alloc];
    JavaMathBigInteger_initWithInt_withInt_(v12, 1, 8);
    v27 = v12;
    v13 = [JavaMathBigInteger alloc];
    JavaMathBigInteger_initWithInt_withInt_(v13, 1, 9);
    v28 = v13;
    v29 = JavaMathBigInteger_TEN_;
    v14 = [IOSObjectArray newArrayWithObjects:&v19 count:11 type:JavaMathBigInteger_class_()];
    JreStrongAssignAndConsume(&JavaMathBigInteger_SMALL_VALUES_, v14);
    v15 = [IOSObjectArray newArrayWithLength:32 type:JavaMathBigInteger_class_(), v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29];
    JreStrongAssignAndConsume(&JavaMathBigInteger_TWO_POWS_, v15);
    v16 = JavaMathBigInteger_TWO_POWS_;
    if (*(JavaMathBigInteger_TWO_POWS_ + 8) >= 1)
    {
      v17 = 0;
      do
      {
        v18 = JavaMathBigInteger_valueOfWithLong_(1 << v17);
        IOSObjectArray_Set(v16, v17++, v18);
        v16 = JavaMathBigInteger_TWO_POWS_;
      }

      while (v17 < *(JavaMathBigInteger_TWO_POWS_ + 8));
    }

    atomic_store(1u, JavaMathBigInteger__initialized);
  }
}

@end