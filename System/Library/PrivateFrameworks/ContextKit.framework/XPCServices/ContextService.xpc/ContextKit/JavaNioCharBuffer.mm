@interface JavaNioCharBuffer
+ (id)wrapWithCharArray:(id)array;
+ (id)wrapWithJavaLangCharSequence:(id)sequence;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)appendWithJavaLangCharSequence:(id)sequence;
- (id)getWithCharArray:(id)array;
- (id)getWithCharArray:(id)array withInt:(int)int withInt:(int)withInt;
- (id)putWithCharArray:(id)array;
- (id)putWithCharArray:(id)array withInt:(int)int withInt:(int)withInt;
- (id)putWithJavaNioCharBuffer:(id)buffer;
- (id)putWithNSString:(id)string;
- (int)compareToWithId:(id)id;
- (int)readWithJavaNioCharBuffer:(id)buffer;
- (unint64_t)hash;
- (unsigned)charAtWithInt:(int)int;
@end

@implementation JavaNioCharBuffer

+ (id)wrapWithCharArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v5 = *(array + 2);

  return JavaNioCharBuffer_wrapWithCharArray_withInt_withInt_(array, 0, v5);
}

+ (id)wrapWithJavaLangCharSequence:(id)sequence
{
  v3 = new_JavaNioCharSequenceAdapter_initWithJavaLangCharSequence_(sequence);

  return v3;
}

- (unsigned)charAtWithInt:(int)int
{
  if (int < 0 || [(JavaNioBuffer *)self remaining]<= int)
  {
    [(JavaNioBuffer *)self remaining];
    v14 = JreStrcat("$I$I", v7, v8, v9, v10, v11, v12, v13, @"index=");
    v15 = new_JavaLangIndexOutOfBoundsException_initWithNSString_(v14);
    objc_exception_throw(v15);
  }

  v5 = (self->super.position_ + int);

  return [(JavaNioCharBuffer *)self getWithInt:v5];
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
      v11 = [(JavaNioCharBuffer *)self getWithInt:position];
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
    v11 = [(JavaNioCharBuffer *)self getWithInt:?];
    v12 = [equal getWithInt:v7];
    v7 = (v7 + 1);
    position = v10;
  }

  while (v11 == v12);
  return v9;
}

- (id)getWithCharArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);

  return [(JavaNioCharBuffer *)self getWithCharArray:array withInt:0 withInt:v4];
}

- (id)getWithCharArray:(id)array withInt:(int)int withInt:(int)withInt
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
    v10 = array + 2 * int;
    do
    {
      v11 = [(JavaNioCharBuffer *)self get];
      v12 = *(array + 2);
      if (intCopy < 0 || intCopy >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, intCopy);
      }

      *(v10 + 6) = v11;
      ++intCopy;
      v10 += 2;
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
    v4 += [(JavaNioCharBuffer *)self getWithInt:?];
    position = v5;
  }

  while (v5 < self->super.limit_);
  return v4;
}

- (id)putWithCharArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);

  return [(JavaNioCharBuffer *)self putWithCharArray:array withInt:0 withInt:v4];
}

- (id)putWithCharArray:(id)array withInt:(int)int withInt:(int)withInt
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
    v10 = array + 2 * int;
    do
    {
      v11 = *(array + 2);
      if (intCopy < 0 || intCopy >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, intCopy);
      }

      [(JavaNioCharBuffer *)self putWithChar:*(v10 + 6)];
      ++intCopy;
      v10 += 2;
      --withIntCopy;
    }

    while (withIntCopy);
  }

  return self;
}

- (id)putWithJavaNioCharBuffer:(id)buffer
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

  v6 = +[IOSCharArray arrayWithLength:](IOSCharArray, "arrayWithLength:", [buffer remaining]);
  [buffer getWithCharArray:v6];
  if (!v6)
  {
LABEL_7:
    JreThrowNullPointerException();
  }

  [(JavaNioCharBuffer *)self putWithCharArray:v6 withInt:0 withInt:v6->super.size_];
  return self;
}

- (id)putWithNSString:(id)string
{
  if (!string)
  {
    JreThrowNullPointerException();
  }

  v5 = [string length];

  return [(JavaNioCharBuffer *)self putWithNSString:string withInt:0 withInt:v5];
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

- (id)appendWithJavaLangCharSequence:(id)sequence
{
  if (sequence)
  {
    v4 = [sequence description];
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

- (int)readWithJavaNioCharBuffer:(id)buffer
{
  remaining = [(JavaNioBuffer *)self remaining];
  if (buffer == self)
  {
    if (remaining)
    {
      v9 = new_JavaLangIllegalArgumentException_initWithNSString_(@"target == this");
      objc_exception_throw(v9);
    }

    return -1;
  }

  if (!remaining)
  {
    if (self->super.limit_ >= 1)
    {
      if (!buffer)
      {
        goto LABEL_15;
      }

      if ([buffer remaining])
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

  if (!buffer)
  {
    goto LABEL_15;
  }

  v6 = JavaLangMath_minWithInt_withInt_([buffer remaining], remaining);
  if (v6 >= 1)
  {
    v7 = [IOSCharArray arrayWithLength:v6];
    [(JavaNioCharBuffer *)self getWithCharArray:v7];
    if (v7)
    {
      [buffer putWithCharArray:v7 withInt:0 withInt:v7->super.size_];
      return v6;
    }

LABEL_15:
    JreThrowNullPointerException();
  }

  return v6;
}

@end