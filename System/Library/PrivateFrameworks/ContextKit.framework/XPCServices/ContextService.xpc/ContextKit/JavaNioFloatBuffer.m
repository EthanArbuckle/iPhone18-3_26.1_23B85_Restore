@interface JavaNioFloatBuffer
+ (id)wrapWithFloatArray:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)getWithFloatArray:(id)a3;
- (id)getWithFloatArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (id)putWithFloatArray:(id)a3;
- (id)putWithFloatArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (id)putWithJavaNioFloatBuffer:(id)a3;
- (int)compareToWithId:(id)a3;
- (unint64_t)hash;
@end

@implementation JavaNioFloatBuffer

+ (id)wrapWithFloatArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = *(a3 + 2);

  return JavaNioFloatBuffer_wrapWithFloatArray_withInt_withInt_(a3, 0, v5);
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
    v14 = [(JavaNioBuffer *)self remaining];
    return v14 - [a3 remaining];
  }

  else
  {
    v8 = *(a3 + 5);
    position = self->super.position_;
    v10 = v7 + 1;
    while (1)
    {
      [(JavaNioFloatBuffer *)self getWithInt:position];
      v12 = v11;
      [a3 getWithInt:v8];
      if (v12 != v13)
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

    if (v12 >= v13)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
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
    if (v5 == [a3 remaining])
    {
      position = self->super.position_;
      if (position >= self->super.limit_)
      {
        return 1;
      }

      v7 = *(a3 + 5);
      while (1)
      {
        [(JavaNioFloatBuffer *)self getWithInt:position];
        v9 = v8;
        [a3 getWithInt:v7];
        if (v9 != v10)
        {
          break;
        }

        position = (position + 1);
        v7 = (v7 + 1);
        if (position >= self->super.limit_)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

- (id)getWithFloatArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);

  return [(JavaNioFloatBuffer *)self getWithFloatArray:a3 withInt:0 withInt:v4];
}

- (id)getWithFloatArray:(id)a3 withInt:(int)a4 withInt:(int)a5
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
    v10 = a3 + 4 * a4;
    do
    {
      [(JavaNioFloatBuffer *)self get];
      v12 = *(a3 + 2);
      if (v9 < 0 || v9 >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, v9);
      }

      *(v10 + 3) = v11;
      ++v9;
      v10 += 4;
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
    [(JavaNioFloatBuffer *)self getWithInt:?];
    v4 += JavaLangFloat_floatToIntBitsWithFloat_(v6);
    position = v5;
  }

  while (v5 < self->super.limit_);
  return v4;
}

- (id)putWithFloatArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);

  return [(JavaNioFloatBuffer *)self putWithFloatArray:a3 withInt:0 withInt:v4];
}

- (id)putWithFloatArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = a5;
  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a3 + 2), a4, a5);
  if ([(JavaNioBuffer *)self remaining]< v5)
  {
    v14 = new_JavaNioBufferOverflowException_init();
    objc_exception_throw(v14);
  }

  if (v5 + a4 > a4)
  {
    v10 = a4;
    v11 = a3 + 4 * a4;
    do
    {
      v12 = *(a3 + 2);
      if (v10 < 0 || v10 >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, v10);
      }

      LODWORD(v9) = *(v11 + 3);
      [(JavaNioFloatBuffer *)self putWithFloat:v9];
      ++v10;
      v11 += 4;
      --v5;
    }

    while (v5);
  }

  return self;
}

- (id)putWithJavaNioFloatBuffer:(id)a3
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

  v6 = +[IOSFloatArray arrayWithLength:](IOSFloatArray, "arrayWithLength:", [a3 remaining]);
  [a3 getWithFloatArray:v6];
  if (!v6)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  [(JavaNioFloatBuffer *)self putWithFloatArray:v6 withInt:0 withInt:v6->super.size_];
  return self;
}

@end