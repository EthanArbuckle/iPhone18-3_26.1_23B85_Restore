@interface JavaNioByteBuffer
+ (id)wrapWithByteArray:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)getWithByteArray:(id)a3;
- (id)getWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (id)orderWithJavaNioByteOrder:(id)a3;
- (id)putWithByteArray:(id)a3;
- (id)putWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (id)putWithJavaNioByteBuffer:(id)a3;
- (int)compareToWithId:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaNioByteBuffer

+ (id)wrapWithByteArray:(id)a3
{
  v3 = new_JavaNioByteArrayBuffer_initWithByteArray_(a3);

  return v3;
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
      v11 = [(JavaNioByteBuffer *)self getWithInt:position];
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
    v11 = [(JavaNioByteBuffer *)self getWithInt:?];
    v12 = [a3 getWithInt:v7];
    v7 = (v7 + 1);
    position = v10;
  }

  while (v11 == v12);
  return v9;
}

- (id)getWithByteArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);

  return [(JavaNioByteBuffer *)self getWithByteArray:a3 withInt:0 withInt:v4];
}

- (id)getWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5
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
    v10 = a3 + a4;
    do
    {
      v11 = [(JavaNioByteBuffer *)self get];
      v12 = *(a3 + 2);
      if (v9 < 0 || v9 >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, v9);
      }

      v10[12] = v11;
      ++v9;
      ++v10;
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
    v4 += [(JavaNioByteBuffer *)self getWithInt:?];
    position = v5;
  }

  while (v5 < self->super.limit_);
  return v4;
}

- (id)orderWithJavaNioByteOrder:(id)a3
{
  v3 = a3;
  if (!a3)
  {
    if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10014A090();
    }

    v3 = JavaNioByteOrder_LITTLE_ENDIAN__;
  }

  JreStrongAssign(&self->order_, v3);
  return self;
}

- (id)putWithByteArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);

  return [(JavaNioByteBuffer *)self putWithByteArray:a3 withInt:0 withInt:v4];
}

- (id)putWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5
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
    v10 = a3 + a4;
    do
    {
      v11 = *(a3 + 2);
      if (v9 < 0 || v9 >= v11)
      {
        IOSArray_throwOutOfBoundsWithMsg(v11, v9);
      }

      [(JavaNioByteBuffer *)self putWithByte:v10[12]];
      ++v9;
      ++v10;
      --v5;
    }

    while (v5);
  }

  return self;
}

- (id)putWithJavaNioByteBuffer:(id)a3
{
  if ([(JavaNioBuffer *)self isReadOnly])
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_18;
  }

  if (a3 == self)
  {
    OnlyBufferException_init = new_JavaLangIllegalArgumentException_initWithNSString_(@"src == this");
    goto LABEL_18;
  }

  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = [a3 remaining];
  if (v5 > [(JavaNioBuffer *)self remaining])
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_18:
    objc_exception_throw(OnlyBufferException_init);
  }

  v6 = a3;
  if (([a3 isDirect] & 1) == 0)
  {
    v6 = JavaNioNioUtils_unsafeArrayWithJavaNioByteBuffer_(a3);
  }

  v7 = [a3 position];
  if (([a3 isDirect] & 1) == 0)
  {
    v7 += JavaNioNioUtils_unsafeArrayOffsetWithJavaNioByteBuffer_(a3);
  }

  v8 = self;
  if (![(JavaNioByteBuffer *)self isDirect])
  {
    v8 = JavaNioNioUtils_unsafeArrayWithJavaNioByteBuffer_(self);
  }

  v9 = [(JavaNioBuffer *)self position];
  if (![(JavaNioByteBuffer *)self isDirect])
  {
    v9 += JavaNioNioUtils_unsafeArrayOffsetWithJavaNioByteBuffer_(self);
  }

  LibcoreIoMemory_memmoveWithId_withInt_withId_withInt_withLong_(v8, v9, v6, v7, v5);
  [a3 positionWithInt:{objc_msgSend(a3, "limit")}];
  [(JavaNioBuffer *)self positionWithInt:[(JavaNioBuffer *)self position]+ v5];
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioByteBuffer;
  [(JavaNioByteBuffer *)&v3 dealloc];
}

@end