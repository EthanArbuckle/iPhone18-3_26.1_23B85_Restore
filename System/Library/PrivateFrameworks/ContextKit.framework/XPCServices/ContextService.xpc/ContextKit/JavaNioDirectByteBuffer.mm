@interface JavaNioDirectByteBuffer
- (BOOL)protectedHasArray;
- (char)get;
- (double)getDouble;
- (float)getFloat;
- (id)asCharBuffer;
- (id)asDoubleBuffer;
- (id)asFloatBuffer;
- (id)asIntBuffer;
- (id)asLongBuffer;
- (id)asShortBuffer;
- (id)compact;
- (id)protectedArray;
- (id)putCharWithChar:(unsigned __int16)a3;
- (id)putDoubleWithDouble:(double)a3;
- (id)putFloatWithFloat:(float)a3;
- (id)putLongWithLong:(int64_t)a3;
- (id)slice;
- (int)getInt;
- (int64_t)getLong;
- (signed)getShort;
- (uint64_t)checkNotFreed;
- (unsigned)getChar;
- (void)free;
@end

@implementation JavaNioDirectByteBuffer

- (id)compact
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (self->isReadOnly_)
  {
    v4 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v4);
  }

  LibcoreIoMemory_memmoveWithId_withInt_withId_withInt_withLong_(self, 0, self, self->super.super.super.position_, [(JavaNioBuffer *)self remaining]);
  self->super.super.super.position_ = self->super.super.super.limit_ - self->super.super.super.position_;
  self->super.super.super.limit_ = self->super.super.super.capacity_;
  self->super.super.super.mark_ = -1;
  return self;
}

- (uint64_t)checkNotFreed
{
  if (*(result + 68) == 1)
  {
    v1 = new_JavaLangIllegalStateException_initWithNSString_(@"buffer was freed");
    objc_exception_throw(v1);
  }

  return result;
}

- (id)slice
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  block = self->super.block_;
  v4 = [(JavaNioBuffer *)self remaining];
  offset = self->offset_;
  position = self->super.super.super.position_;
  isReadOnly = self->isReadOnly_;
  mapMode = self->super.mapMode_;
  v9 = [JavaNioDirectByteBuffer alloc];
  JavaNioDirectByteBuffer_initWithJavaNioMemoryBlock_withInt_withInt_withBoolean_withJavaNioChannelsFileChannel_MapMode_(v9, block, v4, position + offset, isReadOnly, mapMode);

  return v9;
}

- (id)protectedArray
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (self->isReadOnly_)
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_8;
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaNioMemoryBlock *)block array];
  if (!result)
  {
    OnlyBufferException_init = new_JavaLangUnsupportedOperationException_init();
LABEL_8:
    objc_exception_throw(OnlyBufferException_init);
  }

  return result;
}

- (BOOL)protectedHasArray
{
  if (self->isReadOnly_)
  {
    return 0;
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNioMemoryBlock *)block array]!= 0;
}

- (char)get
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  position = self->super.super.super.position_;
  if (position == self->super.super.super.limit_)
  {
    v6 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v6);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  offset = self->offset_;
  self->super.super.super.position_ = position + 1;

  return [(JavaNioMemoryBlock *)block peekByteWithInt:(offset + position)];
}

- (unsigned)getChar
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  position = self->super.super.super.position_;
  v4 = position + 2;
  if (position + 2 > self->super.super.super.limit_)
  {
    v7 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v7);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaNioMemoryBlock *)block peekShortWithInt:(self->offset_ + position) withJavaNioByteOrder:self->super.super.order_];
  self->super.super.super.position_ = v4;
  return result;
}

- (double)getDouble
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  position = self->super.super.super.position_;
  v4 = position + 8;
  if (position + 8 > self->super.super.super.limit_)
  {
    v7 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v7);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  result = JavaLangDouble_longBitsToDoubleWithLong_([(JavaNioMemoryBlock *)block peekLongWithInt:(self->offset_ + position) withJavaNioByteOrder:self->super.super.order_]);
  self->super.super.super.position_ = v4;
  return result;
}

- (float)getFloat
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  position = self->super.super.super.position_;
  v4 = position + 4;
  if (position + 4 > self->super.super.super.limit_)
  {
    v7 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v7);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  result = JavaLangFloat_intBitsToFloatWithInt_([(JavaNioMemoryBlock *)block peekIntWithInt:(self->offset_ + position) withJavaNioByteOrder:self->super.super.order_]);
  self->super.super.super.position_ = v4;
  return result;
}

- (int)getInt
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  position = self->super.super.super.position_;
  v4 = position + 4;
  if (position + 4 > self->super.super.super.limit_)
  {
    v7 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v7);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaNioMemoryBlock *)block peekIntWithInt:(self->offset_ + position) withJavaNioByteOrder:self->super.super.order_];
  self->super.super.super.position_ = v4;
  return result;
}

- (int64_t)getLong
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  position = self->super.super.super.position_;
  v4 = position + 8;
  if (position + 8 > self->super.super.super.limit_)
  {
    v7 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v7);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaNioMemoryBlock *)block peekLongWithInt:(self->offset_ + position) withJavaNioByteOrder:self->super.super.order_];
  self->super.super.super.position_ = v4;
  return result;
}

- (signed)getShort
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  position = self->super.super.super.position_;
  v4 = position + 2;
  if (position + 2 > self->super.super.super.limit_)
  {
    v7 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v7);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  result = [(JavaNioMemoryBlock *)block peekShortWithInt:(self->offset_ + position) withJavaNioByteOrder:self->super.super.order_];
  self->super.super.super.position_ = v4;
  return result;
}

- (void)free
{
  if (!self->freed_)
  {
    block = self->super.block_;
    if (!block)
    {
      JreThrowNullPointerException();
    }

    [(JavaNioMemoryBlock *)block free];
    self->freed_ = 1;
  }
}

- (id)asCharBuffer
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);

  return JavaNioByteBufferAsCharBuffer_asCharBufferWithJavaNioByteBuffer_(self);
}

- (id)asDoubleBuffer
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);

  return JavaNioByteBufferAsDoubleBuffer_asDoubleBufferWithJavaNioByteBuffer_(self);
}

- (id)asFloatBuffer
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);

  return JavaNioByteBufferAsFloatBuffer_asFloatBufferWithJavaNioByteBuffer_(self);
}

- (id)asIntBuffer
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);

  return JavaNioByteBufferAsIntBuffer_asIntBufferWithJavaNioByteBuffer_(self);
}

- (id)asLongBuffer
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);

  return JavaNioByteBufferAsLongBuffer_asLongBufferWithJavaNioByteBuffer_(self);
}

- (id)asShortBuffer
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);

  return JavaNioByteBufferAsShortBuffer_asShortBufferWithJavaNioByteBuffer_(self);
}

- (id)putCharWithChar:(unsigned __int16)a3
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (self->isReadOnly_)
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_8;
  }

  position = self->super.super.super.position_;
  v6 = position + 2;
  if (position + 2 > self->super.super.super.limit_)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_8:
    objc_exception_throw(OnlyBufferException_init);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block pokeShortWithInt:(self->offset_ + position) withShort:a3 withJavaNioByteOrder:self->super.super.order_];
  self->super.super.super.position_ = v6;
  return self;
}

- (id)putDoubleWithDouble:(double)a3
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (self->isReadOnly_)
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_8;
  }

  position = self->super.super.super.position_;
  if (position + 8 > self->super.super.super.limit_)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_8:
    objc_exception_throw(OnlyBufferException_init);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block pokeLongWithInt:(self->offset_ + position) withLong:JavaLangDouble_doubleToRawLongBitsWithDouble_(a3) withJavaNioByteOrder:self->super.super.order_];
  self->super.super.super.position_ = position + 8;
  return self;
}

- (id)putFloatWithFloat:(float)a3
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (self->isReadOnly_)
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_8;
  }

  position = self->super.super.super.position_;
  if (position + 4 > self->super.super.super.limit_)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_8:
    objc_exception_throw(OnlyBufferException_init);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block pokeIntWithInt:(self->offset_ + position) withInt:JavaLangFloat_floatToRawIntBitsWithFloat_(a3) withJavaNioByteOrder:self->super.super.order_];
  self->super.super.super.position_ = position + 4;
  return self;
}

- (id)putLongWithLong:(int64_t)a3
{
  [JavaNioDirectByteBuffer checkNotFreed]_0(self);
  if (self->isReadOnly_)
  {
    OnlyBufferException_init = new_JavaNioReadOnlyBufferException_init();
    goto LABEL_8;
  }

  position = self->super.super.super.position_;
  v6 = position + 8;
  if (position + 8 > self->super.super.super.limit_)
  {
    OnlyBufferException_init = new_JavaNioBufferOverflowException_init();
LABEL_8:
    objc_exception_throw(OnlyBufferException_init);
  }

  block = self->super.block_;
  if (!block)
  {
    JreThrowNullPointerException();
  }

  [(JavaNioMemoryBlock *)block pokeLongWithInt:(self->offset_ + position) withLong:a3 withJavaNioByteOrder:self->super.super.order_];
  self->super.super.super.position_ = v6;
  return self;
}

@end