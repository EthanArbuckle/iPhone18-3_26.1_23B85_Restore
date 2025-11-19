@interface JavaNioCharArrayBuffer
- (id)compact;
- (id)description;
- (id)protectedArray;
- (id)putWithChar:(unsigned __int16)a3;
- (id)putWithInt:(int)a3 withChar:(unsigned __int16)a4;
- (id)slice;
- (id)subSequenceFrom:(int)a3 to:(int)a4;
- (int)protectedArrayOffset;
- (unsigned)get;
- (unsigned)getWithInt:(int)a3;
- (void)dealloc;
@end

@implementation JavaNioCharArrayBuffer

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
  v2 = sub_10020E950([(JavaNioBuffer *)self remaining], self->backingArray_, self->super.super.position_ + self->arrayOffset_, self->isReadOnly_);

  return v2;
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

- (unsigned)get
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

  return *(&backingArray->super.size_ + v6 + 2);
}

- (unsigned)getWithInt:(int)a3
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

  return *(&backingArray->super.size_ + v7 + 2);
}

- (id)subSequenceFrom:(int)a3 to:(int)a4
{
  [JavaNioBuffer checkStartEndRemainingWithInt:"checkStartEndRemainingWithInt:withInt:" withInt:?];
  v7 = [(JavaNioCharArrayBuffer *)self duplicate];
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  v8 = v7;
  [v7 limitWithInt:(self->super.super.position_ + a4)];
  [v8 positionWithInt:(self->super.super.position_ + a3)];
  return v8;
}

- (id)putWithChar:(unsigned __int16)a3
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

  *(&backingArray->super.size_ + v8 + 2) = a3;
  return self;
}

- (id)putWithInt:(int)a3 withChar:(unsigned __int16)a4
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

  *(&backingArray->super.size_ + v9 + 2) = a4;
  return self;
}

- (id)description
{
  backingArray = self->backingArray_;
  arrayOffset = self->arrayOffset_;
  position = self->super.super.position_;
  v5 = [(JavaNioBuffer *)self remaining];

  return NSString_valueOfChars_offset_count_(backingArray, (position + arrayOffset), v5);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioCharArrayBuffer;
  [(JavaNioCharArrayBuffer *)&v3 dealloc];
}

@end