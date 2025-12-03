@interface JavaNioIntBuffer
+ (id)wrapWithIntArray:(id)array;
- (BOOL)isEqual:(id)equal;
- (id)getWithIntArray:(id)array;
- (id)getWithIntArray:(id)array withInt:(int)int withInt:(int)withInt;
- (id)putWithIntArray:(id)array;
- (id)putWithIntArray:(id)array withInt:(int)int withInt:(int)withInt;
- (id)putWithJavaNioIntBuffer:(id)buffer;
- (int)compareToWithId:(id)id;
- (unint64_t)hash;
@end

@implementation JavaNioIntBuffer

+ (id)wrapWithIntArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v5 = *(array + 2);

  return JavaNioIntBuffer_wrapWithIntArray_withInt_withInt_(array, 0, v5);
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
      v11 = [(JavaNioIntBuffer *)self getWithInt:position];
      v12 = [id getWithInt:v8];
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

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

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
  if (remaining != [equal remaining])
  {
    return 0;
  }

  position = self->super.position_;
  v7 = *(equal + 5);
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
    v12 = [equal getWithInt:v7];
    v7 = (v7 + 1);
    position = v10;
  }

  while (v11 == v12);
  return v9;
}

- (id)getWithIntArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);

  return [(JavaNioIntBuffer *)self getWithIntArray:array withInt:0 withInt:v4];
}

- (id)getWithIntArray:(id)array withInt:(int)int withInt:(int)withInt
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
      v11 = [(JavaNioIntBuffer *)self get];
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
    v4 += [(JavaNioIntBuffer *)self getWithInt:?];
    position = v5;
  }

  while (v5 < self->super.limit_);
  return v4;
}

- (id)putWithIntArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);

  return [(JavaNioIntBuffer *)self putWithIntArray:array withInt:0 withInt:v4];
}

- (id)putWithIntArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if ([(JavaNioBuffer *)self isReadOnly])
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_15;
  }

  if (!array)
  {
    JreThrowNullPointerException();
  }

  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), int, withInt);
  if ([(JavaNioBuffer *)self remaining]< withInt)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_15:
    objc_exception_throw(OnlyBufferException_init);
  }

  if (withInt + int > int)
  {
    intCopy = int;
    v10 = array + 4 * int;
    do
    {
      v11 = *(array + 2);
      if (intCopy < 0 || intCopy >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, intCopy);
      }

      [(JavaNioIntBuffer *)self putWithInt:*(v10 + 3)];
      ++intCopy;
      v10 += 4;
      --withInt;
    }

    while (withInt);
  }

  return self;
}

- (id)putWithJavaNioIntBuffer:(id)buffer
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

  v6 = +[IOSIntArray arrayWithLength:](IOSIntArray, "arrayWithLength:", [buffer remaining]);
  [buffer getWithIntArray:v6];
  if (!v6)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  [(JavaNioIntBuffer *)self putWithIntArray:v6 withInt:0 withInt:v6->super.size_];
  return self;
}

@end