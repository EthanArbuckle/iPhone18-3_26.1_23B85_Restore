@interface JavaNioByteArrayBuffer
- (JavaNioByteArrayBuffer)initWithByteArray:(id)a3;
- (char)get;
- (char)getWithInt:(int)a3;
- (double)getDouble;
- (float)getFloat;
- (id)compact;
- (id)protectedArray;
- (id)putCharWithChar:(unsigned __int16)a3;
- (id)putDoubleWithDouble:(double)a3;
- (id)putFloatWithFloat:(float)a3;
- (id)putIntWithInt:(int)a3;
- (id)putLongWithLong:(int64_t)a3;
- (id)putShortWithShort:(signed __int16)a3;
- (id)putWithByte:(char)a3;
- (id)putWithInt:(int)a3 withByte:(char)a4;
- (id)slice;
- (int)protectedArrayOffset;
- (signed)getShort;
- (uint64_t)getInt;
- (unint64_t)getLong;
- (unsigned)getChar;
- (void)dealloc;
@end

@implementation JavaNioByteArrayBuffer

- (JavaNioByteArrayBuffer)initWithByteArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  sub_1002102C0(self, *(a3 + 2), a3, 0, 0, v3, v4, v5);
  return self;
}

- (id)compact
{
  if (self->isReadOnly_)
  {
    v4 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v4);
  }

  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->backingArray_, (self->arrayOffset_ + self->super.super.position_), self->backingArray_, self->arrayOffset_, [(JavaNioBuffer *)self remaining]);
  self->super.super.position_ = self->super.super.limit_ - self->super.super.position_;
  self->super.super.limit_ = self->super.super.capacity_;
  self->super.super.mark_ = -1;
  return self;
}

- (id)slice
{
  v3 = [(JavaNioBuffer *)self remaining];
  backingArray = self->backingArray_;
  arrayOffset = self->arrayOffset_;
  position = self->super.super.position_;
  isReadOnly = self->isReadOnly_;
  v8 = [JavaNioByteArrayBuffer alloc];
  sub_1002102C0(v8, v3, backingArray, (position + arrayOffset), isReadOnly, v9, v10, v11);

  return v8;
}

- (id)protectedArray
{
  if (self->isReadOnly_)
  {
    v3 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v3);
  }

  return self->backingArray_;
}

- (int)protectedArrayOffset
{
  if (self->isReadOnly_)
  {
    v3 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v3);
  }

  return self->arrayOffset_;
}

- (char)get
{
  position = self->super.super.position_;
  if (position == self->super.super.limit_)
  {
    v8 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v8);
  }

  backingArray = self->backingArray_;
  if (!backingArray)
  {
    JreThrowNullPointerException();
  }

  arrayOffset = self->arrayOffset_;
  self->super.super.position_ = position + 1;
  size = backingArray->super.size_;
  v6 = arrayOffset + position;
  if (arrayOffset + position < 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (arrayOffset + position));
  }

  return *(&backingArray->super.size_ + v6 + 4);
}

- (char)getWithInt:(int)a3
{
  [(JavaNioBuffer *)self checkIndexWithInt:?];
  backingArray = self->backingArray_;
  if (!backingArray)
  {
    JreThrowNullPointerException();
  }

  size = backingArray->super.size_;
  v7 = (self->arrayOffset_ + a3);
  if (v7 < 0 || v7 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v7);
  }

  return *(&backingArray->super.size_ + v7 + 4);
}

- (unsigned)getChar
{
  position = self->super.super.position_;
  v3 = position + 2;
  if (position + 2 > self->super.super.limit_)
  {
    v6 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v6);
  }

  result = LibcoreIoMemory_peekShortWithByteArray_withInt_withJavaNioByteOrder_(self->backingArray_, (self->arrayOffset_ + position), self->super.order_);
  self->super.super.position_ = v3;
  return result;
}

- (double)getDouble
{
  v2 = [JavaNioByteArrayBuffer getLong]_0(self);

  return JavaLangDouble_longBitsToDoubleWithLong_(v2);
}

- (unint64_t)getLong
{
  v1 = *(a1 + 20);
  v2 = v1 + 8;
  if (v1 + 8 > *(a1 + 12))
  {
    v5 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v5);
  }

  result = LibcoreIoMemory_peekLongWithByteArray_withInt_withJavaNioByteOrder_(*(a1 + 48), (*(a1 + 56) + v1), *(a1 + 40));
  *(a1 + 20) = v2;
  return result;
}

- (float)getFloat
{
  v2 = [JavaNioByteArrayBuffer getInt]_0(self);

  return JavaLangFloat_intBitsToFloatWithInt_(v2);
}

- (uint64_t)getInt
{
  v1 = *(a1 + 20);
  v2 = v1 + 4;
  if (v1 + 4 > *(a1 + 12))
  {
    v5 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v5);
  }

  result = LibcoreIoMemory_peekIntWithByteArray_withInt_withJavaNioByteOrder_(*(a1 + 48), (*(a1 + 56) + v1), *(a1 + 40));
  *(a1 + 20) = v2;
  return result;
}

- (signed)getShort
{
  position = self->super.super.position_;
  v3 = position + 2;
  if (position + 2 > self->super.super.limit_)
  {
    v6 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v6);
  }

  result = LibcoreIoMemory_peekShortWithByteArray_withInt_withJavaNioByteOrder_(self->backingArray_, (self->arrayOffset_ + position), self->super.order_);
  self->super.super.position_ = v3;
  return result;
}

- (id)putWithByte:(char)a3
{
  if (self->isReadOnly_)
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_11;
  }

  position = self->super.super.position_;
  if (position == self->super.super.limit_)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_11:
    objc_exception_throw(OnlyBufferException_init);
  }

  backingArray = self->backingArray_;
  if (!backingArray)
  {
    JreThrowNullPointerException();
  }

  arrayOffset = self->arrayOffset_;
  self->super.super.position_ = position + 1;
  size = backingArray->super.size_;
  v8 = arrayOffset + position;
  if (arrayOffset + position < 0 || v8 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (arrayOffset + position));
  }

  *(&backingArray->super.size_ + v8 + 4) = a3;
  return self;
}

- (id)putWithInt:(int)a3 withByte:(char)a4
{
  if (self->isReadOnly_)
  {
    v11 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v11);
  }

  [(JavaNioBuffer *)self checkIndexWithInt:?];
  backingArray = self->backingArray_;
  if (!backingArray)
  {
    JreThrowNullPointerException();
  }

  size = backingArray->super.size_;
  v9 = (self->arrayOffset_ + a3);
  if (v9 < 0 || v9 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v9);
  }

  *(&backingArray->super.size_ + v9 + 4) = a4;
  return self;
}

- (id)putCharWithChar:(unsigned __int16)a3
{
  if (self->isReadOnly_)
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_6;
  }

  position = self->super.super.position_;
  v5 = position + 2;
  if (position + 2 > self->super.super.limit_)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_6:
    objc_exception_throw(OnlyBufferException_init);
  }

  LibcoreIoMemory_pokeShortWithByteArray_withInt_withShort_withJavaNioByteOrder_(self->backingArray_, (self->arrayOffset_ + position), a3, self->super.order_);
  self->super.super.position_ = v5;
  return self;
}

- (id)putDoubleWithDouble:(double)a3
{
  v4 = JavaLangDouble_doubleToRawLongBitsWithDouble_(a3);

  return [(JavaNioByteArrayBuffer *)self putLongWithLong:v4];
}

- (id)putFloatWithFloat:(float)a3
{
  v4 = JavaLangFloat_floatToRawIntBitsWithFloat_(a3);

  return [(JavaNioByteArrayBuffer *)self putIntWithInt:v4];
}

- (id)putIntWithInt:(int)a3
{
  if (self->isReadOnly_)
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_6;
  }

  position = self->super.super.position_;
  v5 = position + 4;
  if (position + 4 > self->super.super.limit_)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_6:
    objc_exception_throw(OnlyBufferException_init);
  }

  LibcoreIoMemory_pokeIntWithByteArray_withInt_withInt_withJavaNioByteOrder_(self->backingArray_, (self->arrayOffset_ + position), a3, self->super.order_);
  self->super.super.position_ = v5;
  return self;
}

- (id)putLongWithLong:(int64_t)a3
{
  if (self->isReadOnly_)
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_6;
  }

  position = self->super.super.position_;
  v5 = position + 8;
  if (position + 8 > self->super.super.limit_)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_6:
    objc_exception_throw(OnlyBufferException_init);
  }

  LibcoreIoMemory_pokeLongWithByteArray_withInt_withLong_withJavaNioByteOrder_(self->backingArray_, (self->arrayOffset_ + position), a3, self->super.order_);
  self->super.super.position_ = v5;
  return self;
}

- (id)putShortWithShort:(signed __int16)a3
{
  if (self->isReadOnly_)
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_6;
  }

  position = self->super.super.position_;
  v5 = position + 2;
  if (position + 2 > self->super.super.limit_)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_6:
    objc_exception_throw(OnlyBufferException_init);
  }

  LibcoreIoMemory_pokeShortWithByteArray_withInt_withShort_withJavaNioByteOrder_(self->backingArray_, (self->arrayOffset_ + position), a3, self->super.order_);
  self->super.super.position_ = v5;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioByteArrayBuffer;
  [(JavaNioByteBuffer *)&v3 dealloc];
}

@end