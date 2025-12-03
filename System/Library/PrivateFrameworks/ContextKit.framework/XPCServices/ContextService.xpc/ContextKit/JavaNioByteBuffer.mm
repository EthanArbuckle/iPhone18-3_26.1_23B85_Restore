@interface JavaNioByteBuffer
+ (id)wrapWithByteArray:(id)array;
- (BOOL)isEqual:(id)equal;
- (id)getWithByteArray:(id)array;
- (id)getWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (id)orderWithJavaNioByteOrder:(id)order;
- (id)putWithByteArray:(id)array;
- (id)putWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (id)putWithJavaNioByteBuffer:(id)buffer;
- (int)compareToWithId:(id)id;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaNioByteBuffer

+ (id)wrapWithByteArray:(id)array
{
  v3 = new_JavaNioByteArrayBuffer_initWithByteArray_(array);

  return v3;
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
      v11 = [(JavaNioByteBuffer *)self getWithInt:position];
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
    v11 = [(JavaNioByteBuffer *)self getWithInt:?];
    v12 = [equal getWithInt:v7];
    v7 = (v7 + 1);
    position = v10;
  }

  while (v11 == v12);
  return v9;
}

- (id)getWithByteArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);

  return [(JavaNioByteBuffer *)self getWithByteArray:array withInt:0 withInt:v4];
}

- (id)getWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
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
    v10 = array + int;
    do
    {
      v11 = [(JavaNioByteBuffer *)self get];
      v12 = *(array + 2);
      if (intCopy < 0 || intCopy >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, intCopy);
      }

      v10[12] = v11;
      ++intCopy;
      ++v10;
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
    v4 += [(JavaNioByteBuffer *)self getWithInt:?];
    position = v5;
  }

  while (v5 < self->super.limit_);
  return v4;
}

- (id)orderWithJavaNioByteOrder:(id)order
{
  orderCopy = order;
  if (!order)
  {
    if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10014A090();
    }

    orderCopy = JavaNioByteOrder_LITTLE_ENDIAN__;
  }

  JreStrongAssign(&self->order_, orderCopy);
  return self;
}

- (id)putWithByteArray:(id)array
{
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v4 = *(array + 2);

  return [(JavaNioByteBuffer *)self putWithByteArray:array withInt:0 withInt:v4];
}

- (id)putWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
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
    v10 = array + int;
    do
    {
      v11 = *(array + 2);
      if (intCopy < 0 || intCopy >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, intCopy);
      }

      [(JavaNioByteBuffer *)self putWithByte:v10[12]];
      ++intCopy;
      ++v10;
      --withIntCopy;
    }

    while (withIntCopy);
  }

  return self;
}

- (id)putWithJavaNioByteBuffer:(id)buffer
{
  if ([(JavaNioBuffer *)self isReadOnly])
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_18;
  }

  if (buffer == self)
  {
    OnlyBufferException_init = new_JavaLangIllegalArgumentException_initWithNSString_(@"src == this");
    goto LABEL_18;
  }

  if (!buffer)
  {
    JreThrowNullPointerException();
  }

  remaining = [buffer remaining];
  if (remaining > [(JavaNioBuffer *)self remaining])
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_18:
    objc_exception_throw(OnlyBufferException_init);
  }

  bufferCopy = buffer;
  if (([buffer isDirect] & 1) == 0)
  {
    bufferCopy = JavaNioNioUtils_unsafeArrayWithJavaNioByteBuffer_(buffer);
  }

  position = [buffer position];
  if (([buffer isDirect] & 1) == 0)
  {
    position += JavaNioNioUtils_unsafeArrayOffsetWithJavaNioByteBuffer_(buffer);
  }

  selfCopy = self;
  if (![(JavaNioByteBuffer *)self isDirect])
  {
    selfCopy = JavaNioNioUtils_unsafeArrayWithJavaNioByteBuffer_(self);
  }

  position2 = [(JavaNioBuffer *)self position];
  if (![(JavaNioByteBuffer *)self isDirect])
  {
    position2 += JavaNioNioUtils_unsafeArrayOffsetWithJavaNioByteBuffer_(self);
  }

  LibcoreIoMemory_memmoveWithId_withInt_withId_withInt_withLong_(selfCopy, position2, bufferCopy, position, remaining);
  [buffer positionWithInt:{objc_msgSend(buffer, "limit")}];
  [(JavaNioBuffer *)self positionWithInt:[(JavaNioBuffer *)self position]+ remaining];
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioByteBuffer;
  [(JavaNioByteBuffer *)&v3 dealloc];
}

@end