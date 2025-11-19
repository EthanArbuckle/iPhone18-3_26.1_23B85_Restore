@interface JavaNioIntBuffer
+ (id)wrapWithIntArray:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)getWithIntArray:(id)a3;
- (id)getWithIntArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (id)putWithIntArray:(id)a3;
- (id)putWithIntArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (id)putWithJavaNioIntBuffer:(id)a3;
- (int)compareToWithId:(id)a3;
- (unint64_t)hash;
@end

@implementation JavaNioIntBuffer

+ (id)wrapWithIntArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = *(a3 + 2);

  return JavaNioIntBuffer_wrapWithIntArray_withInt_withInt_(a3, 0, v5);
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
      v11 = [(JavaNioIntBuffer *)self getWithInt:position];
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
    v11 = [(JavaNioIntBuffer *)self getWithInt:?];
    v12 = [a3 getWithInt:v7];
    v7 = (v7 + 1);
    position = v10;
  }

  while (v11 == v12);
  return v9;
}

- (id)getWithIntArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);

  return [(JavaNioIntBuffer *)self getWithIntArray:a3 withInt:0 withInt:v4];
}

- (id)getWithIntArray:(id)a3 withInt:(int)a4 withInt:(int)a5
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
      v11 = [(JavaNioIntBuffer *)self get];
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
    v4 += [(JavaNioIntBuffer *)self getWithInt:?];
    position = v5;
  }

  while (v5 < self->super.limit_);
  return v4;
}

- (id)putWithIntArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);

  return [(JavaNioIntBuffer *)self putWithIntArray:a3 withInt:0 withInt:v4];
}

- (id)putWithIntArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  if ([(JavaNioBuffer *)self isReadOnly])
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_15;
  }

  if (!a3)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a3 + 2), a4, a5);
  if ([(JavaNioBuffer *)self remaining]< a5)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_15:
    objc_exception_throw(OnlyBufferException_init);
  }

  if (a5 + a4 > a4)
  {
    v9 = a4;
    v10 = a3 + 4 * a4;
    do
    {
      v11 = *(a3 + 2);
      if (v9 < 0 || v9 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v9);
      }

      [(JavaNioIntBuffer *)self putWithInt:*(v10 + 3)];
      ++v9;
      v10 += 4;
      --a5;
    }

    while (a5);
  }

  return self;
}

- (id)putWithJavaNioIntBuffer:(id)a3
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

  v6 = +[IOSIntArray arrayWithLength:](IOSIntArray, "arrayWithLength:", [a3 remaining]);
  [a3 getWithIntArray:v6];
  if (!v6)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  [(JavaNioIntBuffer *)self putWithIntArray:v6 withInt:0 withInt:v6->super.size_];
  return self;
}

@end