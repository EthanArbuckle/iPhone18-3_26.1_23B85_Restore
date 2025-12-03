@interface JavaNioFloatBuffer
+ (id)wrapWithFloatArray:(id)array;
- (BOOL)isEqual:(id)equal;
- (id)getWithFloatArray:(id)array;
- (id)getWithFloatArray:(id)array withInt:(int)int withInt:(int)withInt;
- (id)putWithFloatArray:(id)array;
- (id)putWithFloatArray:(id)array withInt:(int)int withInt:(int)withInt;
- (id)putWithJavaNioFloatBuffer:(id)buffer;
- (int)compareToWithId:(id)id;
- (unint64_t)hash;
@end

@implementation JavaNioFloatBuffer

+ (id)wrapWithFloatArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v5 = *(array + 2);

  return JavaNioFloatBuffer_wrapWithFloatArray_withInt_withInt_(array, 0, v5);
}

- (int)compareToWithId:(id)id
{
  objc_opt_class();
  if (!id)
  {
    [(JavaNioBuffer *)self remaining];
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  remaining = [(JavaNioBuffer *)self remaining];
  if (remaining >= [id remaining])
  {
    selfCopy = id;
  }

  else
  {
    selfCopy = self;
  }

  remaining2 = [selfCopy remaining];
  if (remaining2 < 1)
  {
LABEL_10:
    remaining3 = [(JavaNioBuffer *)self remaining];
    return remaining3 - [id remaining];
  }

  else
  {
    v8 = *(id + 5);
    position = self->super.position_;
    v10 = remaining2 + 1;
    while (1)
    {
      [(JavaNioFloatBuffer *)self getWithInt:position];
      v12 = v11;
      [id getWithInt:v8];
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

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (!equal)
    {
      [(JavaNioBuffer *)self remaining];
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }

    remaining = [(JavaNioBuffer *)self remaining];
    if (remaining == [equal remaining])
    {
      position = self->super.position_;
      if (position >= self->super.limit_)
      {
        return 1;
      }

      v7 = *(equal + 5);
      while (1)
      {
        [(JavaNioFloatBuffer *)self getWithInt:position];
        v9 = v8;
        [equal getWithInt:v7];
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

- (id)getWithFloatArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);

  return [(JavaNioFloatBuffer *)self getWithFloatArray:array withInt:0 withInt:v4];
}

- (id)getWithFloatArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  withIntCopy = withInt;
  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), int, withInt);
  if ([(JavaNioBuffer *)self remaining]< withIntCopy)
  {
    v14 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v14);
  }

  if (withIntCopy + int > int)
  {
    intCopy = int;
    v10 = array + 4 * int;
    do
    {
      [(JavaNioFloatBuffer *)self get];
      v12 = *(array + 2);
      if (intCopy < 0 || intCopy >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, intCopy);
      }

      *(v10 + 3) = v11;
      ++intCopy;
      v10 += 4;
      --withIntCopy;
    }

    while (withIntCopy);
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

- (id)putWithFloatArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);

  return [(JavaNioFloatBuffer *)self putWithFloatArray:array withInt:0 withInt:v4];
}

- (id)putWithFloatArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  withIntCopy = withInt;
  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), int, withInt);
  if ([(JavaNioBuffer *)self remaining]< withIntCopy)
  {
    v14 = new_JavaNioBufferOverflowException_init();
    objc_exception_throw(v14);
  }

  if (withIntCopy + int > int)
  {
    intCopy = int;
    v11 = array + 4 * int;
    do
    {
      v12 = *(array + 2);
      if (intCopy < 0 || intCopy >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, intCopy);
      }

      LODWORD(v9) = *(v11 + 3);
      [(JavaNioFloatBuffer *)self putWithFloat:v9];
      ++intCopy;
      v11 += 4;
      --withIntCopy;
    }

    while (withIntCopy);
  }

  return self;
}

- (id)putWithJavaNioFloatBuffer:(id)buffer
{
  if ([(JavaNioBuffer *)self isReadOnly])
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_11;
  }

  if (buffer == self)
  {
    OnlyBufferException_init = new_JavaLangIllegalArgumentException_initWithNSString_(@"src == this");
    goto LABEL_11;
  }

  if (!buffer)
  {
    goto LABEL_7;
  }

  remaining = [buffer remaining];
  if (remaining > [(JavaNioBuffer *)self remaining])
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_11:
    objc_exception_throw(OnlyBufferException_init);
  }

  v6 = +[IOSFloatArray arrayWithLength:](IOSFloatArray, "arrayWithLength:", [buffer remaining]);
  [buffer getWithFloatArray:v6];
  if (!v6)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  [(JavaNioFloatBuffer *)self putWithFloatArray:v6 withInt:0 withInt:v6->super.size_];
  return self;
}

@end