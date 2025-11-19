@interface JavaNioCharBuffer
+ (id)wrapWithCharArray:(id)a3;
+ (id)wrapWithJavaLangCharSequence:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)appendWithJavaLangCharSequence:(id)a3;
- (id)getWithCharArray:(id)a3;
- (id)getWithCharArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (id)putWithCharArray:(id)a3;
- (id)putWithCharArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (id)putWithJavaNioCharBuffer:(id)a3;
- (id)putWithNSString:(id)a3;
- (int)compareToWithId:(id)a3;
- (int)readWithJavaNioCharBuffer:(id)a3;
- (unint64_t)hash;
- (unsigned)charAtWithInt:(int)a3;
@end

@implementation JavaNioCharBuffer

+ (id)wrapWithCharArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = *(a3 + 2);

  return JavaNioCharBuffer_wrapWithCharArray_withInt_withInt_(a3, 0, v5);
}

+ (id)wrapWithJavaLangCharSequence:(id)a3
{
  v3 = new_JavaNioCharSequenceAdapter_initWithJavaLangCharSequence_(a3);

  return v3;
}

- (unsigned)charAtWithInt:(int)a3
{
  if (a3 < 0 || [(JavaNioBuffer *)self remaining]<= a3)
  {
    [(JavaNioBuffer *)self remaining];
    v14 = JreStrcat("$I$I", v7, v8, v9, v10, v11, v12, v13, @"index=");
    v15 = new_JavaLangIndexOutOfBoundsException_initWithNSString_(v14);
    objc_exception_throw(v15);
  }

  v5 = (self->super.position_ + a3);

  return [(JavaNioCharBuffer *)self getWithInt:v5];
}

- (int)compareToWithId:(id)a3
{
  objc_opt_class();
  if (!a3)
  {
    [(JavaNioBuffer *)self remaining];
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = [(JavaNioBuffer *)self remaining];
  if (v5 >= [a3 remaining])
  {
    v6 = a3;
  }

  else
  {
    v6 = self;
  }

  v7 = [v6 remaining];
  if (v7 < 1)
  {
LABEL_10:
    v13 = [(JavaNioBuffer *)self remaining];
    return v13 - [a3 remaining];
  }

  else
  {
    v8 = *(a3 + 5);
    position = self->super.position_;
    v10 = v7 + 1;
    while (1)
    {
      v11 = [(JavaNioCharBuffer *)self getWithInt:position];
      v12 = [a3 getWithInt:v8];
      if (v11 != v12)
      {
        break;
      }

      position = (position + 1);
      v8 = (v8 + 1);
      if (--v10 <= 1)
      {
        goto LABEL_10;
      }
    }

    if (v11 < v12)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!a3)
  {
    [(JavaNioBuffer *)self remaining];
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = [(JavaNioBuffer *)self remaining];
  if (v5 != [a3 remaining])
  {
    return 0;
  }

  position = self->super.position_;
  v7 = *(a3 + 5);
  do
  {
    limit = self->super.limit_;
    v9 = position >= limit;
    if (position >= limit)
    {
      break;
    }

    v10 = position + 1;
    v11 = [(JavaNioCharBuffer *)self getWithInt:?];
    v12 = [a3 getWithInt:v7];
    v7 = (v7 + 1);
    position = v10;
  }

  while (v11 == v12);
  return v9;
}

- (id)getWithCharArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);

  return [(JavaNioCharBuffer *)self getWithCharArray:a3 withInt:0 withInt:v4];
}

- (id)getWithCharArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = a5;
  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a3 + 2), a4, a5);
  if ([(JavaNioBuffer *)self remaining]< v5)
  {
    v14 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v14);
  }

  if (v5 + a4 > a4)
  {
    v9 = a4;
    v10 = a3 + 2 * a4;
    do
    {
      v11 = [(JavaNioCharBuffer *)self get];
      v12 = *(a3 + 2);
      if (v9 < 0 || v9 >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, v9);
      }

      *(v10 + 6) = v11;
      ++v9;
      v10 += 2;
      --v5;
    }

    while (v5);
  }

  return self;
}

- (unint64_t)hash
{
  position = self->super.position_;
  if (position >= self->super.limit_)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v5 = position + 1;
    v4 += [(JavaNioCharBuffer *)self getWithInt:?];
    position = v5;
  }

  while (v5 < self->super.limit_);
  return v4;
}

- (id)putWithCharArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);

  return [(JavaNioCharBuffer *)self putWithCharArray:a3 withInt:0 withInt:v4];
}

- (id)putWithCharArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = a5;
  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a3 + 2), a4, a5);
  if ([(JavaNioBuffer *)self remaining]< v5)
  {
    v13 = new_JavaNioBufferOverflowException_init();
    objc_exception_throw(v13);
  }

  if (v5 + a4 > a4)
  {
    v9 = a4;
    v10 = a3 + 2 * a4;
    do
    {
      v11 = *(a3 + 2);
      if (v9 < 0 || v9 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v9);
      }

      [(JavaNioCharBuffer *)self putWithChar:*(v10 + 6)];
      ++v9;
      v10 += 2;
      --v5;
    }

    while (v5);
  }

  return self;
}

- (id)putWithJavaNioCharBuffer:(id)a3
{
  if ([(JavaNioBuffer *)self isReadOnly])
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_11;
  }

  if (a3 == self)
  {
    OnlyBufferException_init = new_JavaLangIllegalArgumentException_initWithNSString_(@"src == this");
    goto LABEL_11;
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  v5 = [a3 remaining];
  if (v5 > [(JavaNioBuffer *)self remaining])
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_11:
    objc_exception_throw(OnlyBufferException_init);
  }

  v6 = +[IOSCharArray arrayWithLength:](IOSCharArray, "arrayWithLength:", [a3 remaining]);
  [a3 getWithCharArray:v6];
  if (!v6)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  [(JavaNioCharBuffer *)self putWithCharArray:v6 withInt:0 withInt:v6->super.size_];
  return self;
}

- (id)putWithNSString:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = [a3 length];

  return [(JavaNioCharBuffer *)self putWithNSString:a3 withInt:0 withInt:v5];
}

- (NSString)description
{
  v3 = new_JavaLangStringBuilder_initWithInt_(self->super.limit_ - self->super.position_);
  for (i = self->super.position_; i < self->super.limit_; i = (i + 1))
  {
    [(JavaLangStringBuilder *)v3 appendWithChar:[(JavaNioCharBuffer *)self getWithInt:i]];
  }

  return [(JavaLangStringBuilder *)v3 description];
}

- (id)appendWithJavaLangCharSequence:(id)a3
{
  if (a3)
  {
    v4 = [a3 description];
    if (!v4)
    {
      JreThrowNullPointerException();
    }
  }

  else
  {
    v4 = @"null";
  }

  v5 = [(__CFString *)v4 length];

  return [(JavaNioCharBuffer *)self putWithNSString:v4 withInt:0 withInt:v5];
}

- (int)readWithJavaNioCharBuffer:(id)a3
{
  v5 = [(JavaNioBuffer *)self remaining];
  if (a3 == self)
  {
    if (v5)
    {
      v9 = new_JavaLangIllegalArgumentException_initWithNSString_(@"target == this");
      objc_exception_throw(v9);
    }

    return -1;
  }

  if (!v5)
  {
    if (self->super.limit_ >= 1)
    {
      if (!a3)
      {
        goto LABEL_15;
      }

      if ([a3 remaining])
      {
        return -1;
      }

      else
      {
        return 0;
      }
    }

    return -1;
  }

  if (!a3)
  {
    goto LABEL_15;
  }

  v6 = JavaLangMath_minWithInt_withInt_([a3 remaining], v5);
  if (v6 >= 1)
  {
    v7 = [IOSCharArray arrayWithLength:v6];
    [(JavaNioCharBuffer *)self getWithCharArray:v7];
    if (v7)
    {
      [a3 putWithCharArray:v7 withInt:0 withInt:v7->super.size_];
      return v6;
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  return v6;
}

@end