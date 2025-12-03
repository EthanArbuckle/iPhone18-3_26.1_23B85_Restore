@interface JavaNioByteBufferAsCharBuffer
- (BOOL)isDirect;
- (BOOL)isReadOnly;
- (id)asReadOnlyBuffer;
- (id)compact;
- (id)duplicate;
- (id)order;
- (id)slice;
- (id)subSequenceFrom:(int)from to:(int)to;
- (unsigned)get;
- (unsigned)getWithInt:(int)int;
- (void)dealloc;
@end

@implementation JavaNioByteBufferAsCharBuffer

- (id)asReadOnlyBuffer
{
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  asReadOnlyBuffer = [(JavaNioByteBuffer *)byteBuffer asReadOnlyBuffer];
  v5 = [JavaNioByteBufferAsCharBuffer alloc];
  sub_10020C348(v5, asReadOnlyBuffer);
  v6 = v5;
  v6->super.super.limit_ = self->super.super.limit_;
  v6->super.super.position_ = self->super.super.position_;
  v6->super.super.mark_ = self->super.super.mark_;
  JreStrongAssign(&v6->byteBuffer_->order_, self->byteBuffer_->order_);
  return v6;
}

- (id)compact
{
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  if ([(JavaNioBuffer *)byteBuffer isReadOnly])
  {
    v5 = new_JavaNioReadOnlyBufferException_init();
    objc_exception_throw(v5);
  }

  [(JavaNioBuffer *)self->byteBuffer_ limitWithInt:(2 * self->super.super.limit_)];
  [(JavaNioBuffer *)self->byteBuffer_ positionWithInt:(2 * self->super.super.position_)];
  [(JavaNioByteBuffer *)self->byteBuffer_ compact];
  [(JavaNioBuffer *)self->byteBuffer_ clear];
  self->super.super.position_ = self->super.super.limit_ - self->super.super.position_;
  self->super.super.limit_ = self->super.super.capacity_;
  self->super.super.mark_ = -1;
  return self;
}

- (id)duplicate
{
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer || (v4 = [(JavaNioByteBuffer *)byteBuffer duplicate]) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = [v4 orderWithJavaNioByteOrder:{-[JavaNioByteBuffer order](self->byteBuffer_, "order")}];
  v6 = [JavaNioByteBufferAsCharBuffer alloc];
  sub_10020C348(v6, v5);
  result = v6;
  *(result + 3) = self->super.super.limit_;
  *(result + 5) = self->super.super.position_;
  *(result + 4) = self->super.super.mark_;
  return result;
}

- (unsigned)get
{
  position = self->super.super.position_;
  if (position == self->super.super.limit_)
  {
    v4 = new_JavaNioBufferUnderflowException_init();
    objc_exception_throw(v4);
  }

  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  self->super.super.position_ = position + 1;

  return [(JavaNioByteBuffer *)byteBuffer getCharWithInt:(2 * position)];
}

- (unsigned)getWithInt:(int)int
{
  [(JavaNioBuffer *)self checkIndexWithInt:?];
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNioByteBuffer *)byteBuffer getCharWithInt:(2 * int)];
}

- (BOOL)isDirect
{
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNioByteBuffer *)byteBuffer isDirect];
}

- (BOOL)isReadOnly
{
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNioBuffer *)byteBuffer isReadOnly];
}

- (id)order
{
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer)
  {
    JreThrowNullPointerException();
  }

  return [(JavaNioByteBuffer *)byteBuffer order];
}

- (id)slice
{
  byteBuffer = self->byteBuffer_;
  if (!byteBuffer || ([(JavaNioBuffer *)byteBuffer limitWithInt:(2 * self->super.super.limit_)], [(JavaNioBuffer *)self->byteBuffer_ positionWithInt:(2 * self->super.super.position_)], (v4 = [(JavaNioByteBuffer *)self->byteBuffer_ slice]) == 0))
  {
    JreThrowNullPointerException();
  }

  v5 = [v4 orderWithJavaNioByteOrder:{-[JavaNioByteBuffer order](self->byteBuffer_, "order")}];
  v6 = [JavaNioByteBufferAsCharBuffer alloc];
  sub_10020C348(v6, v5);
  v7 = v6;
  [(JavaNioBuffer *)self->byteBuffer_ clear];
  return v7;
}

- (id)subSequenceFrom:(int)from to:(int)to
{
  [JavaNioBuffer checkStartEndRemainingWithInt:"checkStartEndRemainingWithInt:withInt:" withInt:?];
  duplicate = [(JavaNioByteBufferAsCharBuffer *)self duplicate];
  if (!duplicate)
  {
    JreThrowNullPointerException();
  }

  v8 = duplicate;
  [duplicate limitWithInt:(self->super.super.position_ + to)];
  [v8 positionWithInt:(self->super.super.position_ + from)];
  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioByteBufferAsCharBuffer;
  [(JavaNioByteBufferAsCharBuffer *)&v3 dealloc];
}

@end