@interface JavaNioDoubleBuffer
+ (id)wrapWithDoubleArray:(id)array;
- (BOOL)isEqual:(id)equal;
- (id)getWithDoubleArray:(id)array;
- (id)getWithDoubleArray:(id)array withInt:(int)int withInt:(int)withInt;
- (id)putWithDoubleArray:(id)array;
- (id)putWithDoubleArray:(id)array withInt:(int)int withInt:(int)withInt;
- (id)putWithJavaNioDoubleBuffer:(id)buffer;
- (int)compareToWithId:(id)id;
- (unint64_t)hash;
@end

@implementation JavaNioDoubleBuffer

+ (id)wrapWithDoubleArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v5 = *(array + 2);

  return JavaNioDoubleBuffer_wrapWithDoubleArray_withInt_withInt_(array, 0, v5);
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
      [(JavaNioDoubleBuffer *)self getWithInt:position];
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
        [(JavaNioDoubleBuffer *)self getWithInt:position];
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

- (id)getWithDoubleArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);

  return [(JavaNioDoubleBuffer *)self getWithDoubleArray:array withInt:0 withInt:v4];
}

- (id)getWithDoubleArray:(id)array withInt:(int)int withInt:(int)withInt
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
    v10 = array + 8 * int;
    do
    {
      [(JavaNioDoubleBuffer *)self get];
      v12 = *(array + 2);
      if (intCopy < 0 || intCopy >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, intCopy);
      }

      *(v10 + 2) = v11;
      ++intCopy;
      v10 += 8;
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
    [(JavaNioDoubleBuffer *)self getWithInt:?];
    v7 = JavaLangDouble_doubleToLongBitsWithDouble_(v6);
    v4 = (v4 + v7) ^ HIDWORD(v7);
    position = v5;
  }

  while (v5 < self->super.limit_);
  return v4;
}

- (id)putWithDoubleArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);

  return [(JavaNioDoubleBuffer *)self putWithDoubleArray:array withInt:0 withInt:v4];
}

- (id)putWithDoubleArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  withIntCopy = withInt;
  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), int, withInt);
  if ([(JavaNioBuffer *)self remaining]< withIntCopy)
  {
    v13 = new_JavaNioBufferOverflowException_init();
    objc_exception_throw(v13);
  }

  if (withIntCopy + int > int)
  {
    intCopy = int;
    v10 = (array + 8 * int);
    do
    {
      v11 = *(array + 2);
      if (intCopy < 0 || intCopy >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, intCopy);
      }

      [(JavaNioDoubleBuffer *)self putWithDouble:v10[2]];
      ++intCopy;
      ++v10;
      --withIntCopy;
    }

    while (withIntCopy);
  }

  return self;
}

- (id)putWithJavaNioDoubleBuffer:(id)buffer
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

  v6 = +[IOSDoubleArray arrayWithLength:](IOSDoubleArray, "arrayWithLength:", [buffer remaining]);
  [buffer getWithDoubleArray:v6];
  if (!v6)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  [(JavaNioDoubleBuffer *)self putWithDoubleArray:v6 withInt:0 withInt:v6->super.size_];
  return self;
}

@end